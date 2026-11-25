#==============================================================================
# ascon_paper_reports.tcl
# All Vivado runs and reports needed for the Ascon-AEAD128 journal paper.
#
# HOW TO RUN
#   1) Edit the USER SETTINGS block below (paths, part, variants).
#   2) In the Vivado Tcl console:   source E:/fyp_revision/kintex7/ascon_paper_reports.tcl
#      (Faster: open "Vivado Tcl Shell" and type the same command. No GUI needed.)
#   3) When it ends, send me the whole OUT_DIR folder (or connect it to this chat).
#
# WHAT IT DOES (non-project flow, out-of-context, same as the reference papers)
#   For every part x variant x strategy:
#     - Fmax sweep: synth + opt + place + phys_opt + route, period tightened
#       each pass to the achieved period. Best run that MEETS timing is kept.
#     - Full reports on the best run (utilization, hierarchy, timing, critical
#       paths, logic levels, power at Fmax and at POWER_FREQ_MHZ, DRC,
#       methodology, control sets, fanout) + post-route netlist for SAIF sim.
#   One CSV with every sweep pass (sweep_all.csv) and one CSV with the best
#   result of every configuration (results_best.csv).
#==============================================================================

#============================ USER SETTINGS ===================================
set OUT_DIR "E:/fyp_revision/kintex7/paper_results"
set TOP     "Ascon_top"

# Parts. Use the same Kintex-7 part as your old paper / Alharbi et al.
# Add more lines for an extra device table (each part adds run time).
set PARTS {
    xc7k325tffg900-2
}
#   xc7a100tcsg324-1     ;# Artix-7  (optional)
#   xc7vx485tffg1761-2   ;# Virtex-7 (optional)

# Variants: { name  {rtl files}  {generics} }
#   final_mask1 : the final core, output pad region zeroed (default)
#   final_mask0 : same core, raw output (OUT_MASK=0)
#   first_core  : the first Ascon-AEAD128 core (baseline for the ablation table)
# Put the real paths. Leave the generic list empty {} if the file has no OUT_MASK.
set VARIANTS {
    {final_mask1 {E:/fyp_revision/kintex7/project_27/project_27.srcs/sources_1/new} {OUT_MASK=1}}
}

# Strategies: { name  synth  opt  place  phys_opt  route }
set STRATEGIES {
    {default Default              Default Default        Default           Default}
    {perf    Default              Explore ExtraTimingOpt AggressiveExplore Explore}
    {area    AreaOptimized_high   Default Default        Default           Default}
}

# reg2reg : only the clock is constrained (same as the reference papers).
# io0     : also set_input_delay/set_output_delay 0 ns, so data_in -> state and
#           data_in -> data_out/tag_match paths are timed too (stricter number).
set IO_MODES {reg2reg io0}

set START_PERIOD   3.000   ;# ns, first guess (333 MHz)
set SWEEP_ITERS    4       ;# passes per configuration
set POWER_FREQ_MHZ 100.0   ;# common frequency for the power comparison table
#==============================================================================


#------------------------------- helpers --------------------------------------
proc ap_grab {re text} {
    if {[regexp -line -- $re $text -> v]} { return $v }
    return NA
}

proc ap_prop {obj name} {
    if {[catch {get_property $name $obj} v]} { return NA }
    return $v
}

proc ap_write_xdc {file period io} {
    set fh [open $file w]
    puts $fh "create_clock -period $period -name clk \[get_ports clk\]"
    puts $fh "set_property HD.CLK_SRC BUFGCTRL_X0Y0 \[get_ports clk\]"
    if {$io eq "io0"} {
        puts $fh "set_input_delay  0.000 -clock clk \[get_ports -filter {DIRECTION == IN && NAME != clk}\]"
        puts $fh "set_output_delay 0.000 -clock clk \[get_ports -filter {DIRECTION == OUT}\]"
    }
    close $fh
}

proc ap_impl {part files gens period strat io xdc} {
    lassign $strat sname sdir odir pdir phdir rdir
    close_project -quiet
    create_project -in_memory -part $part
    # an entry can be a file or a folder (all .v files in it)
    foreach f $files {
        if {[file isdirectory $f]} {
            foreach v [glob -nocomplain -directory $f *.v] { read_verilog $v }
        } else { read_verilog $f }
    }
    ap_write_xdc $xdc $period $io
    read_xdc $xdc
    set g {}
    foreach x $gens { lappend g -generic $x }
    set top $::TOP
    if {$top eq "auto"} { set top [lindex [find_top] 0] }
    synth_design -top $top -part $part -mode out_of_context -directive $sdir {*}$g
    opt_design      -directive $odir
    place_design    -directive $pdir
    phys_opt_design -directive $phdir
    route_design    -directive $rdir
}

proc ap_metrics {period} {
    set u   [report_utilization -return_string]
    set p   [lindex [get_timing_paths -max_paths 1 -nworst 1 -setup] 0]
    set wns [get_property SLACK $p]
    set fmax [format %.2f [expr {1000.0 / ($period - $wns)}]]
    dict create \
        period $period wns $wns fmax $fmax met [expr {$wns >= 0 ? 1 : 0}] \
        lut   [ap_grab {^\|\s*(?:Slice|CLB) LUTs\*?\s*\|\s*(\d+)} $u] \
        ff    [ap_grab {^\|\s*(?:Slice|CLB) Registers\s*\|\s*(\d+)} $u] \
        slice [ap_grab {^\|\s*(?:Slice|CLB)\s+\|\s*(\d+)} $u] \
        carry [ap_grab {^\|\s*CARRY[48]\s*\|\s*(\d+)} $u] \
        f7    [ap_grab {^\|\s*F7 Muxes\s*\|\s*(\d+)} $u] \
        ll    [ap_prop $p LOGIC_LEVELS] \
        dp    [ap_prop $p DATAPATH_DELAY] \
        dpl   [ap_prop $p DATAPATH_LOGIC_DELAY] \
        dpn   [ap_prop $p DATAPATH_NET_DELAY] \
        spin  [ap_prop $p STARTPOINT_PIN] \
        epin  [ap_prop $p ENDPOINT_PIN]
}

proc ap_power {file} {
    report_power -file $file
    set fh [open $file r]; set s [read $fh]; close $fh
    list \
        [ap_grab {Total On-Chip Power \(W\)\s*\|\s*([0-9.]+)} $s] \
        [ap_grab {Dynamic \(W\)\s*\|\s*([0-9.]+)} $s] \
        [ap_grab {Device Static \(W\)\s*\|\s*([0-9.]+)} $s]
}

proc ap_csv {file header row} {
    set new [expr {![file exists $file]}]
    set fh [open $file a]
    if {$new} { puts $fh [join $header ,] }
    puts $fh [join $row ,]
    close $fh
}

#------------------------------- one config -----------------------------------
proc ap_sweep {tag part vname files gens strat io} {
    global OUT_DIR START_PERIOD SWEEP_ITERS POWER_FREQ_MHZ
    set d $OUT_DIR/$tag
    file mkdir $d
    set period $START_PERIOD
    set best_f 0.0
    set best   {}
    set keys {period wns fmax met lut ff slice carry f7 ll dp dpl dpn}

    for {set i 1} {$i <= $SWEEP_ITERS} {incr i} {
        ap_impl $part $files $gens $period $strat $io $d/clk.xdc
        set m [ap_metrics $period]
        set row [list $tag $part $vname [lindex $strat 0] $io $i]
        foreach k $keys { lappend row [dict get $m $k] }
        ap_csv $OUT_DIR/sweep_all.csv [concat {tag part variant strategy io iter} $keys] $row
        write_checkpoint -force $d/last_routed.dcp
        if {[dict get $m met] && [dict get $m fmax] > $best_f} {
            set best_f [dict get $m fmax]
            set best   $m
            file copy -force $d/last_routed.dcp $d/best_routed.dcp
        }
        # next period = achieved period; if met, push 50 ps tighter
        set period [expr {$period - [dict get $m wns]}]
        if {[dict get $m met]} { set period [expr {$period - 0.050}] }
        set period [format %.3f $period]
    }
    if {$best eq ""} {
        puts "WARNING: $tag never met timing. Using last pass."
        file copy -force $d/last_routed.dcp $d/best_routed.dcp
        set best $m
    }

    ap_reports $d $tag $part $vname [lindex $strat 0] $io
}

#------------------- full reports on a routed checkpoint ---------------------
proc ap_reports {d tag part vname sname io} {
    global OUT_DIR POWER_FREQ_MHZ
    set keys {period wns fmax met lut ff slice carry f7 ll dp dpl dpn}
    close_project -quiet
    open_checkpoint $d/best_routed.dcp
    set period [get_property PERIOD [get_clocks clk]]
    set best [ap_metrics $period]
    report_utilization                         -file $d/util.rpt
    report_utilization -hierarchical           -file $d/util_hier.rpt
    report_timing_summary -max_paths 10        -file $d/timing_summary.rpt
    report_timing -max_paths 20 -nworst 1 -input_pins -file $d/crit_paths.rpt
    report_design_analysis -logic_level_distribution  -file $d/logic_levels.rpt
    report_design_analysis -timing -max_paths 10      -file $d/design_analysis.rpt
    catch {report_design_analysis -complexity         -file $d/complexity.rpt}
    report_control_sets -verbose               -file $d/control_sets.rpt
    report_high_fanout_nets -max_nets 20       -file $d/fanout.rpt
    report_drc                                 -file $d/drc.rpt
    catch {report_methodology                  -file $d/methodology.rpt}
    # power at the achieved Fmax (clock set to the achieved period)
    set pa [format %.3f [expr {$period - [dict get $best wns]}]]
    create_clock -period $pa -name clk [get_ports clk]
    set pf [ap_power $d/power_at_fmax.rpt]
    # power at the common frequency
    set pp [format %.3f [expr {1000.0 / $POWER_FREQ_MHZ}]]
    create_clock -period $pp -name clk [get_ports clk]
    set pc [ap_power $d/power_at_[expr {int($POWER_FREQ_MHZ)}]MHz.rpt]
    write_verilog -force -mode funcsim         $d/postroute_funcsim.v
    write_sdf     -force                       $d/postroute.sdf

    set f   [dict get $best fmax]
    set lut [dict get $best lut]
    set tp  [format %.2f [expr {128.0 * $f / 9.0}]]   ;# long-message throughput, 128 bit per 9 cycles
    set eff [expr {$lut eq "NA" ? "NA" : [format %.4f [expr {$tp / $lut}]]}]
    set row [list $tag $part $vname $sname $io]
    foreach k $keys { lappend row [dict get $best $k] }
    lappend row {*}$pf {*}$pc $tp $eff \"[dict get $best spin]\" \"[dict get $best epin]\"
    ap_csv $OUT_DIR/results_best.csv \
        [concat {tag part variant strategy io} $keys \
            {pw_fmax_total pw_fmax_dyn pw_fmax_static pw_fix_total pw_fix_dyn pw_fix_static \
             tp_long_Mbps tp_per_lut crit_start crit_end}] $row
    close_project -quiet
}

#--------------------------------- main ---------------------------------------
# ascon_versions.tcl sets AP_NO_MAIN so it can reuse the procs above.
if {[info exists AP_NO_MAIN]} { return }
file mkdir $OUT_DIR
set t0 [clock seconds]
foreach part $PARTS {
    foreach v $VARIANTS {
        lassign $v vname files gens
        foreach s $STRATEGIES {
            foreach io $IO_MODES {
                set tag "${vname}__[lindex $s 0]__${io}__${part}"
                puts "\n========== $tag =========="
                if {[catch {ap_sweep $tag $part $vname $files $gens $s $io} err]} {
                    puts "ERROR in $tag : $err"
                    ap_csv $OUT_DIR/errors.csv {tag error} [list $tag \"$err\"]
                }
            }
        }
    }
}
set fh [open $OUT_DIR/run_info.txt w]
puts $fh "Vivado: [version -short]"
puts $fh "Runtime (s): [expr {[clock seconds] - $t0}]"
puts $fh "Power: vectorless, Vivado default activity (see SAIF run for the paper table)"
close $fh
puts "\nDONE. Send me the folder: $OUT_DIR"
