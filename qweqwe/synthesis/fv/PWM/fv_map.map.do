
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point inc inc -type PI PI
add mapped point dec dec -type PI PI
add mapped point pwm_reg[9] pwm_reg[9] -type PI PI
add mapped point pwm_reg[8] pwm_reg[8] -type PI PI
add mapped point pwm_reg[7] pwm_reg[7] -type PI PI
add mapped point pwm_reg[6] pwm_reg[6] -type PI PI
add mapped point pwm_reg[5] pwm_reg[5] -type PI PI
add mapped point pwm_reg[4] pwm_reg[4] -type PI PI
add mapped point pwm_reg[3] pwm_reg[3] -type PI PI
add mapped point pwm_reg[2] pwm_reg[2] -type PI PI
add mapped point pwm_reg[1] pwm_reg[1] -type PI PI
add mapped point pwm_reg[0] pwm_reg[0] -type PI PI

//output ports
add mapped point pwm_out pwm_out -type PO PO
add mapped point led[9] led[9] -type PO PO
add mapped point led[8] led[8] -type PO PO
add mapped point led[7] led[7] -type PO PO
add mapped point led[6] led[6] -type PO PO
add mapped point led[5] led[5] -type PO PO
add mapped point led[4] led[4] -type PO PO
add mapped point led[3] led[3] -type PO PO
add mapped point led[2] led[2] -type PO PO
add mapped point led[1] led[1] -type PO PO
add mapped point led[0] led[0] -type PO PO

//inout ports




//Sequential Pins
add mapped point temp_dty_cycle[9]/q temp_dty_cycle_reg[9]/Q -type DFF DFF
add mapped point temp_dty_cycle[5]/q temp_dty_cycle_reg[5]/Q -type DFF DFF
add mapped point pwm_out/q pwm_out_reg/Q -type DFF DFF
add mapped point temp_dty_cycle[6]/q temp_dty_cycle_reg[6]/Q -type DFF DFF
add mapped point temp_dty_cycle[8]/q temp_dty_cycle_reg[8]/Q -type DFF DFF
add mapped point temp_dty_cycle[4]/q temp_dty_cycle_reg[4]/Q -type DFF DFF
add mapped point temp_dty_cycle[7]/q temp_dty_cycle_reg[7]/Q -type DFF DFF
add mapped point temp_dty_cycle[3]/q temp_dty_cycle_reg[3]/Q -type DFF DFF
add mapped point temp_dty_cycle[2]/q temp_dty_cycle_reg[2]/Q -type DFF DFF
add mapped point last_dty_cycle[2]/q last_dty_cycle_reg[2]/Q -type DFF DFF
add mapped point last_dty_cycle[9]/q last_dty_cycle_reg[9]/Q -type DFF DFF
add mapped point last_dty_cycle[6]/q last_dty_cycle_reg[6]/Q -type DFF DFF
add mapped point last_dty_cycle[3]/q last_dty_cycle_reg[3]/Q -type DFF DFF
add mapped point last_dty_cycle[5]/q last_dty_cycle_reg[5]/Q -type DFF DFF
add mapped point last_dty_cycle[8]/q last_dty_cycle_reg[8]/Q -type DFF DFF
add mapped point last_dty_cycle[7]/q last_dty_cycle_reg[7]/Q -type DFF DFF
add mapped point last_dty_cycle[4]/q last_dty_cycle_reg[4]/Q -type DFF DFF
add mapped point last_dty_cycle[1]/q last_dty_cycle_reg[1]/Q -type DFF DFF
add mapped point last_dty_cycle[0]/q last_dty_cycle_reg[0]/Q -type DFF DFF
add mapped point counter[9]/q counter_reg[9]/Q -type DFF DFF
add mapped point counter[7]/q counter_reg[7]/Q -type DFF DFF
add mapped point counter[8]/q counter_reg[8]/Q -type DFF DFF
add mapped point counter[3]/q counter_reg[3]/Q -type DFF DFF
add mapped point counter[0]/q counter_reg[0]/Q -type DFF DFF
add mapped point counter[1]/q counter_reg[1]/Q -type DFF DFF
add mapped point counter[2]/q counter_reg[2]/Q -type DFF DFF
add mapped point counter[5]/q counter_reg[5]/Q -type DFF DFF
add mapped point counter[4]/q counter_reg[4]/Q -type DFF DFF
add mapped point counter[6]/q counter_reg[6]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
