# Run in Vivado Tcl console after run_saif_sim.bat has finished:
#   source E:/fyp_revision/kintex7/paper_results/final_mask1__perf_fine__reg2reg__xc7k325tffg900-2/saif_power.tcl
set D "E:/fyp_revision/kintex7/paper_results/final_mask1__perf_fine__reg2reg__xc7k325tffg900-2"
close_project -quiet
open_checkpoint $D/best_routed.dcp
# same clock as the testbench (10 ns) so the SAIF toggle rates match
create_clock -period 10.000 -name clk [get_ports clk]
read_saif -strip_path tb_Ascon_top/dut $D/perf_fine.saif
report_power -file $D/power_saif_100MHz.rpt
catch {report_switching_activity -file $D/switching_activity.rpt}
close_project
puts "DONE: $D/power_saif_100MHz.rpt"
