#==============================================================================
# ascon_finish.tcl   (Vivado 2018.2)
#   Step A: power + final reports on the 4 routed checkpoints that already
#           exist (no new place and route, a few minutes).
#   Step B: the "perf" strategy (did not run before) and a finer "area"
#           sweep, both reg2reg, starting near 480 MHz.
# Run:  source E:/fyp_revision/kintex7/ascon_finish.tcl
#==============================================================================
set AP_NO_MAIN 1
source E:/fyp_revision/kintex7/ascon_paper_reports.tcl
unset AP_NO_MAIN

set R    "E:/fyp_revision/kintex7/paper_results"
set PART xc7k325tffg900-2
set SRC  {E:/fyp_revision/kintex7/project_27/project_27.srcs/sources_1/new}

#---------------- Step A: reports + power on existing runs -------------------
foreach {s io} {default reg2reg default io0 area reg2reg area io0} {
    set tag "final_mask1__${s}__${io}__$PART"
    puts "\n========== reports: $tag =========="
    if {[catch {ap_reports $R/$tag $tag $PART final_mask1 $s $io} err]} {
        puts "ERROR in $tag : $err"
        ap_csv $R/errors_finish.csv {tag error} [list $tag \"$err\"]
    }
}

#---------------- Step B: new sweeps -----------------------------------------
set START_PERIOD 2.080
set SWEEP_ITERS  4
set NEW {
    {perf_fine Default            Explore ExtraTimingOpt AggressiveExplore Explore}
    {area_fine AreaOptimized_high Default Default        Default           Default}
}
foreach s $NEW {
    set tag "final_mask1__[lindex $s 0]__reg2reg__$PART"
    puts "\n========== sweep: $tag =========="
    if {[catch {ap_sweep $tag $PART final_mask1 [list $SRC] {OUT_MASK=1} $s reg2reg} err]} {
        puts "ERROR in $tag : $err"
        ap_csv $R/errors_finish.csv {tag error} [list $tag \"$err\"]
    }
}
puts "\nDONE. results_best.csv is in $R"
