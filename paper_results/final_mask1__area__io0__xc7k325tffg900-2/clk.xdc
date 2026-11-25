create_clock -period 3.922 -name clk [get_ports clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports clk]
set_input_delay  0.000 -clock clk [get_ports -filter {DIRECTION == IN && NAME != clk}]
set_output_delay 0.000 -clock clk [get_ports -filter {DIRECTION == OUT}]
