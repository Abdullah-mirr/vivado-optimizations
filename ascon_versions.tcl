#==============================================================================
# ascon_versions.tcl
# Runs EVERY git version of the core with the SAME flow, for the
# ablation / design-history table in the paper.
#
# STEP 1 (once, in Git Bash or cmd, inside E:/fyp_revision/kintex7/project_27)
#   This puts each commit in its own folder. Your working files are not touched.
#
#   git worktree add ../../versions/v1_unified      f066c0e
#   git worktree add ../../versions/v2_len_nopad    69e1bcd
#   git worktree add ../../versions/v3_len_pad      2242e77
#   git worktree add ../../versions/v4_aead128      cb0e1d2
#   git worktree add ../../versions/v5_lut1180      7a27093
#   git worktree add ../../versions/v6_lut1169      33419b5
#   git worktree add ../../versions/v7_final_archi  0f80e29
#
#   (When the paper is done:  git worktree remove ../../versions/<name>)
#
# STEP 2 (Vivado Tcl console or Vivado Tcl Shell)
#   source E:/fyp_revision/kintex7/ascon_versions.tcl
#
# One strategy and reg2reg only, so all versions are compared fairly and the
# run stays short (7 versions x 4 passes = 28 runs).
# The top module is found automatically (old versions may use another name).
#==============================================================================

set OUT_DIR        "E:/fyp_revision/paper_results/versions"
set TOP            "auto"
set PARTS          {xc7k325tffg900-2}
set STRATEGIES     {{perf PerformanceOptimized Explore ExtraTimingOpt AggressiveExplore Explore}}
set IO_MODES       {reg2reg}
set START_PERIOD   3.000
set SWEEP_ITERS    4
set POWER_FREQ_MHZ 100.0

set V   "E:/fyp_revision/versions"
set SRC "project_27.srcs/sources_1/new"
set VARIANTS [list \
    [list v1_unified     $V/v1_unified/$SRC     {}] \
    [list v2_len_nopad   $V/v2_len_nopad/$SRC   {}] \
    [list v3_len_pad     $V/v3_len_pad/$SRC     {}] \
    [list v4_aead128     $V/v4_aead128/$SRC     {}] \
    [list v5_lut1180     $V/v5_lut1180/$SRC     {}] \
    [list v6_lut1169     $V/v6_lut1169/$SRC     {}] \
    [list v7_final_archi $V/v7_final_archi/$SRC {}] \
]

# load the procs only
set AP_NO_MAIN 1
source E:/fyp_revision/kintex7/ascon_paper_reports.tcl
unset AP_NO_MAIN

file mkdir $OUT_DIR
foreach part $PARTS {
    foreach v $VARIANTS {
        lassign $v vname files gens
        foreach s $STRATEGIES {
            foreach io $IO_MODES {
                set tag "${vname}__[lindex $s 0]__${io}__${part}"
                puts "\n========== $tag =========="
                if {[catch {ap_sweep $tag $part $vname [list $files] $gens $s $io} err]} {
                    puts "ERROR in $tag : $err"
                    ap_csv $OUT_DIR/errors.csv {tag error} [list $tag \"$err\"]
                }
            }
        }
    }
}
puts "\nDONE. Send me the folder: $OUT_DIR"
