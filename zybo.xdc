##Clock signal
set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L12P_T1_MRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

#Buttons
set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { rst }]; #IO_L12N_T1_MRCC_35 Sch=btn[0]	

#Pmod Header JB (Zybo Z7-20 only)
set_property -dict { PACKAGE_PIN V8    IOSTANDARD LVCMOS33     } [get_ports { rx }]; #IO_L15P_T2_DQS_13 Sch=jb_p[1]	
set_property -dict { PACKAGE_PIN W8    IOSTANDARD LVCMOS33     } [get_ports { data_rdy }]; #IO_L15N_T2_DQS_13 Sch=jb_n[1]  