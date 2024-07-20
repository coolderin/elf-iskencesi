
//input ports
add mapped point clk clk -type PI PI
add mapped point rst rst -type PI PI
add mapped point UART_CPB[15] UART_CPB[15] -type PI PI
add mapped point UART_CPB[14] UART_CPB[14] -type PI PI
add mapped point UART_CPB[13] UART_CPB[13] -type PI PI
add mapped point UART_CPB[12] UART_CPB[12] -type PI PI
add mapped point UART_CPB[11] UART_CPB[11] -type PI PI
add mapped point UART_CPB[10] UART_CPB[10] -type PI PI
add mapped point UART_CPB[9] UART_CPB[9] -type PI PI
add mapped point UART_CPB[8] UART_CPB[8] -type PI PI
add mapped point UART_CPB[7] UART_CPB[7] -type PI PI
add mapped point UART_CPB[6] UART_CPB[6] -type PI PI
add mapped point UART_CPB[5] UART_CPB[5] -type PI PI
add mapped point UART_CPB[4] UART_CPB[4] -type PI PI
add mapped point UART_CPB[3] UART_CPB[3] -type PI PI
add mapped point UART_CPB[2] UART_CPB[2] -type PI PI
add mapped point UART_CPB[1] UART_CPB[1] -type PI PI
add mapped point UART_CPB[0] UART_CPB[0] -type PI PI
add mapped point rx_serial rx_serial -type PI PI

//output ports
add mapped point UART_RDR[7] UART_RDR[7] -type PO PO
add mapped point UART_RDR[6] UART_RDR[6] -type PO PO
add mapped point UART_RDR[5] UART_RDR[5] -type PO PO
add mapped point UART_RDR[4] UART_RDR[4] -type PO PO
add mapped point UART_RDR[3] UART_RDR[3] -type PO PO
add mapped point UART_RDR[2] UART_RDR[2] -type PO PO
add mapped point UART_RDR[1] UART_RDR[1] -type PO PO
add mapped point UART_RDR[0] UART_RDR[0] -type PO PO
add mapped point rx_done rx_done -type PO PO

//inout ports




//Sequential Pins
add mapped point cntr[15]/q cntr_reg[15]/Q -type DFF DFF
add mapped point cntr[14]/q cntr_reg[14]/Q -type DFF DFF
add mapped point cntr[13]/q cntr_reg[13]/Q -type DFF DFF
add mapped point cntr[12]/q cntr_reg[12]/Q -type DFF DFF
add mapped point cntr[8]/q cntr_reg[8]/Q -type DFF DFF
add mapped point cntr[9]/q cntr_reg[9]/Q -type DFF DFF
add mapped point cntr[7]/q cntr_reg[7]/Q -type DFF DFF
add mapped point cntr[11]/q cntr_reg[11]/Q -type DFF DFF
add mapped point cntr[10]/q cntr_reg[10]/Q -type DFF DFF
add mapped point cntr[6]/q cntr_reg[6]/Q -type DFF DFF
add mapped point cntr[1]/q cntr_reg[1]/Q -type DFF DFF
add mapped point cntr[0]/q cntr_reg[0]/Q -type DFF DFF
add mapped point cntr[2]/q cntr_reg[2]/Q -type DFF DFF
add mapped point cntr[3]/q cntr_reg[3]/Q -type DFF DFF
add mapped point cntr[4]/q cntr_reg[4]/Q -type DFF DFF
add mapped point cntr[5]/q cntr_reg[5]/Q -type DFF DFF
add mapped point bitcntr[3]/q bitcntr_reg[3]/Q -type DFF DFF
add mapped point state/q state_reg/Q -type DFF DFF
add mapped point bitcntr[2]/q bitcntr_reg[2]/Q -type DFF DFF
add mapped point bitcntr[1]/q bitcntr_reg[1]/Q -type DFF DFF
add mapped point bitcntr[0]/q bitcntr_reg[0]/Q -type DFF DFF
add mapped point rx_buffer[8]/q rx_buffer_reg[8]/Q -type DFF DFF
add mapped point rx_buffer[0]/q rx_buffer_reg[0]/Q -type DFF DFF
add mapped point rx_buffer[1]/q rx_buffer_reg[1]/Q -type DFF DFF
add mapped point rx_buffer[2]/q rx_buffer_reg[2]/Q -type DFF DFF
add mapped point rx_buffer[4]/q rx_buffer_reg[4]/Q -type DFF DFF
add mapped point rx_buffer[5]/q rx_buffer_reg[5]/Q -type DFF DFF
add mapped point rx_buffer[7]/q rx_buffer_reg[7]/Q -type DFF DFF
add mapped point rx_buffer[6]/q rx_buffer_reg[6]/Q -type DFF DFF
add mapped point rx_buffer[3]/q rx_buffer_reg[3]/Q -type DFF DFF
add mapped point UART_RDR[6]/q UART_RDR_reg[6]/Q -type DFF DFF
add mapped point UART_RDR[2]/q UART_RDR_reg[2]/Q -type DFF DFF
add mapped point UART_RDR[5]/q UART_RDR_reg[5]/Q -type DFF DFF
add mapped point UART_RDR[0]/q UART_RDR_reg[0]/Q -type DFF DFF
add mapped point UART_RDR[3]/q UART_RDR_reg[3]/Q -type DFF DFF
add mapped point UART_RDR[1]/q UART_RDR_reg[1]/Q -type DFF DFF
add mapped point UART_RDR[4]/q UART_RDR_reg[4]/Q -type DFF DFF
add mapped point UART_RDR[7]/q UART_RDR_reg[7]/Q -type DFF DFF



//Black Boxes



//Empty Modules as Blackboxes
