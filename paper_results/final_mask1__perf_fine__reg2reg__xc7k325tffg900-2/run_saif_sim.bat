@echo off
REM Post-route functional simulation of perf_fine with the KAT testbench -> SAIF
REM Double-click this file, or run it from a Windows command prompt.
call C:\Xilinx\Vivado\2018.2\settings64.bat
cd /d "%~dp0"
call xvlog postroute_funcsim.v tb_ascon_postroute.v C:\Xilinx\Vivado\2018.2\data\verilog\src\glbl.v
call xelab -debug typical -L unisims_ver -L secureip tb_Ascon_top glbl -s sim_saif
call xsim sim_saif -tclbatch saif_sim.tcl -log saif_sim.log
pause
