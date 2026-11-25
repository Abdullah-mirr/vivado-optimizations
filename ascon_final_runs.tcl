#==============================================================================
# ascon_final_runs.tcl      (Vivado 2018.2, Windows)
#
# ONE script for every FPGA number the paper needs.
#
# VERSION 2 (24 Nov 2026): can be started again at any time. It skips parts that
# already have a line in final_summary.csv, and reuses a kept best_routed.dcp
# (no new place and route) when a run stopped after its sweep. A failed pass no
# longer stops a part: the best pass so far is kept.
#
# HOW TO RUN
#   1) Save this file as  E:/fyp_revision/kintex7/ascon_final_runs.tcl
#   2) Windows Start menu -> "Vivado 2018.2 Tcl Shell" (NOT the GUI), then type:
#        source E:/fyp_revision/kintex7/ascon_final_runs.tcl
#      Keep that window open and do not let the PC sleep until "ALL DONE".
#   3) Leave it running (several hours). Results go to
#        E:/fyp_revision/kintex7/paper_results_final
#      The two files that matter:  final_summary.csv  and  errors.csv
#
# WHAT IT RUNS (all post-route, out-of-context, reg2reg, same flow for all)
#   A) Final core on the four 7-series parts (Kintex-7 is the deep run):
#        Fmax sweep, full reports, post-route simulation of all 1300 vectors,
#        SAIF power at the achieved clock.
#   B) Ablation on the Kintex-7 part: first Ascon-AEAD128 core (commit cb0e1d2)
#      and the 1180-LUT step (commit 7a27093), same flow.
#   C) Baseline on the Kintex-7 part: Ascon team's ascon-verilog, variant V4
#      (1 round per clock, 64-bit bus), same flow. Needs git and internet.
#      Vivado 2018.2 may reject its SystemVerilog; if so the error is logged
#      and the other runs are not affected.
#
# It reuses the procs of ascon_paper_reports.tcl (must be in the same folder).
# Nothing in project_27 is changed. Old commits are read with "git show".
#==============================================================================

#============================ USER SETTINGS ===================================
set R        "E:/fyp_revision/kintex7"
set OUT_DIR  "$R/paper_results_final"
set PROJ     "$R/project_27"                              ;# git repository
set SRC_REL  "project_27.srcs/sources_1/new"              ;# RTL folder inside the repo
set TB_SRC   "$R/paper_results/final_mask1__perf_fine__reg2reg__xc7k325tffg900-2/tb_ascon_postroute.v"

set FINAL_COMMIT 33419b5      ;# final design used in the paper (variant 2)
set V4_COMMIT    cb0e1d2      ;# first Ascon-AEAD128 core
set V5_COMMIT    7a27093      ;# 1180-LUT step

# { part  start_period_ns  passes }     first entry = deep run and comparison part
set PART_RUNS {
    {xc7k480tffg1156-3   2.080 5}
    {xc7vx690tffg1930-3  2.150 4}
    {xc7a100tcsg324-3    3.050 4}
    {xc7s75fgga484-2     3.550 4}
}
set DO_PARTS     1
set DO_ABLATION  0
set DO_BASELINE  0
set AV_COMMIT    20381a4b0a720a53555a6de0ab9bf33ae568f1e9   ;# ascon-verilog commit (21 Nov 2026)

set STRAT {perf_fine Default Explore ExtraTimingOpt AggressiveExplore Explore}
set POWER_FREQ_MHZ 100.0
#==============================================================================

set AP_NO_MAIN 1
source $R/ascon_paper_reports.tcl
unset AP_NO_MAIN
set OUT_DIR "$R/paper_results_final"      ;# ascon_paper_reports.tcl sets its own; restore ours
set TOP     "Ascon_top"
file mkdir $OUT_DIR
file mkdir $OUT_DIR/_src
cd $OUT_DIR                               ;# Vivado temp files (.Xil) go to E:, not C:

proc fr_log {msg} {
    puts $msg
    set fh [open $::OUT_DIR/run_log.txt a]
    puts $fh "[clock format [clock seconds] -format {%Y-%m-%d %H:%M:%S}]  $msg"
    close $fh
}
proc fr_err {tag err} {
    fr_log "ERROR in $tag : $err"
    ap_csv $::OUT_DIR/errors.csv {tag error} [list $tag \"[string map {\" ' \n { }} $err]\"]
}

#----- copy the RTL of one git commit into its own folder (repo is not touched)
proc fr_src_from_git {name commit} {
    global PROJ SRC_REL OUT_DIR
    set d $OUT_DIR/_src/$name
    file mkdir $d
    set names [exec git -C $PROJ ls-tree --name-only $commit $SRC_REL/]
    set n 0
    foreach f [split $names \n] {
        set f [string trim $f]
        if {![string match *.v $f]} { continue }
        set txt [exec git -C $PROJ show $commit:$f]
        set fh [open $d/[file tail $f] w]; puts $fh $txt; close $fh
        incr n
    }
    if {$n == 0} { error "no .v files found in commit $commit" }
    return $d
}

#----- post-route simulation of the routed netlist with all vectors -> SAIF -> power
#      Returns {pass sim_period_ns total_W dynamic_W static_W}
proc fr_saif {d} {
    global TB_SRC
    set NA {NA NA NA NA NA}
    if {![file exists $TB_SRC]} { fr_log "  SAIF skipped: testbench not found ($TB_SRC)"; return $NA }
    if {![info exists ::env(XILINX_VIVADO)]} { fr_log "  SAIF skipped: XILINX_VIVADO not set"; return $NA }
    set xv $::env(XILINX_VIVADO)

    # achieved period of the kept run
    close_project -quiet
    open_checkpoint $d/best_routed.dcp
    set T   [get_property PERIOD [get_clocks clk]]
    set wns [get_property SLACK [lindex [get_timing_paths -max_paths 1 -nworst 1 -setup] 0]]
    set pa [expr {$T - $wns}]                 ;# minimum period of this run
    close_project -quiet
    set half [format %.3f [expr {$pa / 2.0}]]
    set simT [format %.3f [expr {2.0 * $half}]]

    # testbench copy: clock at the achieved period, reset held 200 ns (GSR needs 100 ns)
    set fh [open $TB_SRC r]; set tb [read $fh]; close $fh
    set c1 [regsub {always\s+#5\s+clk} $tb "always #$half clk" tb]
    set c2 [regsub {repeat\s*\(\s*\d+\s*\)\s*@\(negedge clk\);\s*rst\s*=\s*0;} $tb "#200; @(negedge clk); rst = 0;" tb]
    if {$c1 != 1 || $c2 != 1} { fr_log "  SAIF skipped: could not adapt the testbench (clock $c1, reset $c2)"; return $NA }
    set fh [open $d/tb_saif.v w]; puts $fh $tb; close $fh
    set fh [open $d/saif_run.tcl w]
    puts $fh "open_saif core.saif"
    puts $fh "log_saif \[get_objects -r /tb_Ascon_top/dut/*\]"
    puts $fh "run all"
    puts $fh "close_saif"
    puts $fh "quit"
    close $fh
    file delete -force $d/core.saif $d/saif_sim.log

    set here [pwd]
    cd $d
    set bin [file nativename $xv/bin]
    set glbl [file nativename $xv/data/verilog/src/glbl.v]
    catch {exec cmd.exe /c "$bin\\xvlog.bat" postroute_funcsim.v tb_saif.v $glbl > xvlog_saif.log 2>@1}
    catch {exec cmd.exe /c "$bin\\xelab.bat" -debug typical -L unisims_ver -L secureip tb_Ascon_top glbl -s sim_saif > xelab_saif.log 2>@1}
    catch {exec cmd.exe /c "$bin\\xsim.bat" sim_saif -tclbatch saif_run.tcl -log saif_sim.log > xsim_saif.log 2>@1}
    cd $here

    set pass 0
    if {[file exists $d/saif_sim.log]} {
        set fh [open $d/saif_sim.log r]; set s [read $fh]; close $fh
        if {[string match "*RESULT: PASS*" $s]} { set pass 1 }
    }
    if {![file exists $d/core.saif]} { fr_log "  SAIF file was not produced (see xvlog/xelab/xsim logs in $d)"; return [list $pass $simT NA NA NA] }

    open_checkpoint $d/best_routed.dcp
    create_clock -period $simT -name clk [get_ports clk]
    read_saif -strip_path tb_Ascon_top/dut $d/core.saif
    set p [ap_power $d/power_saif_at_fmax.rpt]
    catch {report_switching_activity -file $d/switching_activity.rpt}
    close_project -quiet
    return [concat $pass $simT $p]
}

#----- free disk space of a drive (for the log only)
proc fr_free {drive} {
    if {[catch {exec cmd.exe /c dir /-c $drive\\} s]} { return "unknown" }
    if {[regexp {([0-9]+) bytes free} $s -> b]} { return "[format %.1f [expr {$b / 1.0e9}]] GB free" }
    return "unknown"
}

#----- write a checkpoint, retry once after 10 s (antivirus or indexer can lock files)
proc fr_write_dcp {file} {
    if {![catch {write_checkpoint -force $file} err]} { return 1 }
    fr_log "  write_checkpoint failed once ($err), retrying in 10 s"
    after 10000
    if {![catch {write_checkpoint -force $file} err]} { return 1 }
    fr_log "  write_checkpoint failed again: $err   (disk: [fr_free E:])"
    return 0
}

#----- Fmax sweep. A failed pass ends the sweep but keeps the best pass so far.
proc fr_sweep {tag part vname files gens strat start iters} {
    global OUT_DIR
    set d $OUT_DIR/$tag
    file mkdir $d
    set period $start
    set best_f 0.0
    set keys {period wns fmax met lut ff slice carry f7 ll dp dpl dpn}
    for {set i 1} {$i <= $iters} {incr i} {
        if {[catch {ap_impl $part $files $gens $period $strat reg2reg $d/clk.xdc} err]} {
            fr_err "$tag pass $i" $err; break
        }
        set m [ap_metrics $period]
        set row [list $tag $part $vname [lindex $strat 0] reg2reg $i]
        foreach k $keys { lappend row [dict get $m $k] }
        ap_csv $OUT_DIR/sweep_all.csv [concat {tag part variant strategy io iter} $keys] $row
        fr_log "  pass $i: period $period  WNS [dict get $m wns]  Fmax [dict get $m fmax]  LUT [dict get $m lut]"
        if {[dict get $m met] && [dict get $m fmax] > $best_f} {
            if {[fr_write_dcp $d/best_routed.dcp]} { set best_f [dict get $m fmax] } else { break }
        }
        set period [expr {$period - [dict get $m wns]}]
        if {[dict get $m met]} { set period [expr {$period - 0.050}] }
        set period [format %.3f $period]
    }
    if {![file exists $d/best_routed.dcp]} { error "no pass met timing (see sweep_all.csv)" }
}

#----- one configuration: sweep + reports (+ SAIF) + one line in final_summary.csv
proc fr_run {design part files gens start iters cyc_per_block do_saif} {
    global OUT_DIR STRAT
    set tag "${design}__${part}"
    set d $OUT_DIR/$tag
    # already finished?
    if {[file exists $OUT_DIR/final_summary.csv]} {
        set fh [open $OUT_DIR/final_summary.csv r]; set s [read $fh]; close $fh
        if {[regexp -line "^$design,$part," $s]} { fr_log "skip $tag (already in final_summary.csv)"; return }
    }
    fr_log "\n========== $tag ==========   disk: [fr_free E:]"
    if {[file exists $d/best_routed.dcp]} {
        fr_log "  reusing kept $d/best_routed.dcp (no new place and route)"
    } else {
        if {[catch {fr_sweep $tag $part $design $files $gens $STRAT $start $iters} err]} { fr_err $tag $err; return }
    }
    if {[catch {ap_reports $d $tag $part $design [lindex $STRAT 0] reg2reg} err]} { fr_err "$tag (reports)" $err }

    set sa {NA NA NA NA NA}
    if {$do_saif} { if {[catch {set sa [fr_saif $d]} err]} { fr_err "$tag (saif)" $err } }
    lassign $sa pass simT ptot pdyn pstat

    if {[catch {
        close_project -quiet
        open_checkpoint $d/best_routed.dcp
        set T [get_property PERIOD [get_clocks clk]]
        set m [ap_metrics $T]
        close_project -quiet
    } err]} { fr_err "$tag (summary)" $err; return }

    set f   [dict get $m fmax]
    set tp  [format %.1f [expr {128.0 * $f / $cyc_per_block}]]
    set lut [dict get $m lut]
    set tpl [expr {$lut eq "NA" ? "NA" : [format %.3f [expr {$tp / $lut}]]}]
    set mwmhz NA; set pjbit NA
    if {$pdyn ne "NA"} {
        set mwmhz [format %.4f [expr {$pdyn * 1000.0 / $f}]]
        set pjbit [format %.2f [expr {$pdyn * 1.0e6 / $tp}]]
    }
    ap_csv $OUT_DIR/final_summary.csv \
        {design part lut ff slice carry4 period_ns wns_ns met fmax_MHz logic_levels path_ns logic_ns route_ns \
         cycles_per_block tp_long_Mbps tp_per_lut postroute_sim_pass saif_clock_ns p_total_W p_dyn_W p_static_W \
         dyn_mW_per_MHz dyn_pJ_per_bit crit_start crit_end} \
        [list $design $part $lut [dict get $m ff] [dict get $m slice] [dict get $m carry] \
              [dict get $m period] [dict get $m wns] [dict get $m met] $f [dict get $m ll] \
              [dict get $m dp] [dict get $m dpl] [dict get $m dpn] \
              $cyc_per_block $tp $tpl $pass $simT $ptot $pdyn $pstat $mwmhz $pjbit \
              \"[dict get $m spin]\" \"[dict get $m epin]\"]
    fr_log "  done: LUT $lut  FF [dict get $m ff]  Fmax $f MHz  sim_pass $pass  Pdyn $pdyn W"
}

#================================= MAIN =======================================
set t0 [clock seconds]
fr_log "Start. Vivado [version -short]"

# final design sources: from git (the exact commit of the paper), else the working folder
if {[catch {set FINAL_SRC [fr_src_from_git final $FINAL_COMMIT]} err]} {
    set FINAL_SRC $PROJ/$SRC_REL
    fr_log "WARNING: could not read commit $FINAL_COMMIT with git ($err)."
    fr_log "         Using the working folder $FINAL_SRC . Make sure it holds the final design."
} else { fr_log "Final design = commit $FINAL_COMMIT -> $FINAL_SRC" }

set DEEP_PART [lindex [lindex $PART_RUNS 0] 0]

#---- A) final core on all parts
if {$DO_PARTS} {
    foreach pr $PART_RUNS {
        lassign $pr part start iters
        fr_run final $part [list $FINAL_SRC] {OUT_MASK=1} $start $iters 9 1
    }
}

#---- B) ablation on the deep part
if {$DO_ABLATION} {
    set TOP "auto"
    foreach {name commit} [list v4_first_aead128 $V4_COMMIT v5_lut1180 $V5_COMMIT] {
        if {[catch {set s [fr_src_from_git $name $commit]} err]} { fr_err $name $err; continue }
        fr_run $name $DEEP_PART [list $s] {} 2.400 4 9 1
    }
    set TOP "Ascon_top"
}

#---- C) baseline: ascon-verilog V4 on the deep part
if {$DO_BASELINE} {
    if {[catch {
        set av $OUT_DIR/_src/ascon-verilog
        if {![file exists $av/rtl/ascon_core.sv]} {
            exec git clone https://github.com/rprimas/ascon-verilog.git $av 2>@1
        }
        catch {exec git -C $av checkout $AV_COMMIT 2>@1}
        set got [string trim [exec git -C $av rev-parse HEAD]]
        fr_log "ascon-verilog commit: $got"
        # the repository is built as one compilation unit: join the files, select variant V4
        set one $OUT_DIR/_src/ascon_verilog_v4.sv
        set fo [open $one w]
        puts $fo "`define V4"
        foreach f {config.sv functions.sv register.sv asconp.sv ascon_core.sv} {
            set fi [open $av/rtl/$f r]; puts $fo [read $fi]; close $fi
        }
        close $fo
    } err]} {
        fr_err ascon_verilog_v4 "could not fetch sources: $err"
    } else {
        set TOP "ascon_core"
        fr_run ascon_verilog_v4 $DEEP_PART [list $one] {} 2.600 4 10 0
        set TOP "Ascon_top"
    }
}

set fh [open $OUT_DIR/run_info.txt w]
puts $fh "Vivado: [version -short]"
puts $fh "Flow: non-project, out-of-context, reg2reg, strategy $STRAT"
puts $fh "Fmax = 1/(T - WNS) of the best pass that met timing"
puts $fh "Power: SAIF from post-route functional simulation of all 1300 vectors, clock = achieved period"
puts $fh "Final design commit: $FINAL_COMMIT   ablation: $V4_COMMIT $V5_COMMIT   ascon-verilog: $AV_COMMIT"
puts $fh "Runtime (s): [expr {[clock seconds] - $t0}]"
close $fh
fr_log "\nALL DONE. Send me:  $OUT_DIR/final_summary.csv  and  $OUT_DIR/errors.csv"
