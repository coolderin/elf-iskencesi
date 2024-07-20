# ####################################################################

#  Created by Genus(TM) Synthesis Solution 23.11-s100_1 on Sat Jul 20 13:36:57 CEST 2024

# ####################################################################

set sdc_version 2.0

set_units -capacitance 1000fF
set_units -time 1000ps

# Set the current design
current_design PWM

create_clock -name "clk" -period 10.0 -waveform {0.0 5.0} [get_ports clk]
set_clock_transition 0.1 [get_clocks clk]
set_clock_gating_check -setup 0.0 
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports rst]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports inc]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports pwm_out]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports dec]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[9]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[8]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[7]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[6]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[5]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[4]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[3]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[2]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[1]}]
set_input_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {pwm_reg[0]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[9]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[8]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[7]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[6]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[5]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[4]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[3]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[2]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[1]}]
set_output_delay -clock [get_clocks clk] -add_delay -max 1.0 [get_ports {led[0]}]
set_wire_load_mode "enclosed"
set_clock_uncertainty -setup 0.01 [get_ports clk]
set_clock_uncertainty -hold 0.01 [get_ports clk]
