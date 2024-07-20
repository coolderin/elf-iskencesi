module uart_tx(
	input logic clk,
  	input logic rst,
  	input logic [15:0] UART_CPB,
  	input logic [7:0] UART_TDR,
  	input logic tx_ena,
  	output logic tx_done,
  	output logic tx_serial
);
  typedef enum logic {S_IDLE, S_TRANSFER} t_state;
  t_state state;
  
  logic [15:0] cntr;
  logic [3:0] bit_cntr;
  logic [9:0] tx_buffer;
  
  always_ff @(posedge clk) begin
    if(!rst)begin
    	state <= S_IDLE;
      	tx_done <=1'b0;
    end else begin
    case(state)
    	S_IDLE: begin
          tx_done <=1'b0;
          if(tx_ena)begin
          	state <= S_TRANSFER;
            cntr <=0;
            bitcntr<=0;
            tx_buffer <= {1'b1, UART_TDR, 1'b0};
          end
        end
      	S_TRANSFER : begin
            tx_serial <= tx_buffer[0];
        	cntr<=cntr+1;
          if(cntr==UART_CPB)begin
          	cntr <=0;
            bit_cntr <= bit_cntr +1;
            if(bit_cntr ==9)begin
              tx_done <= 1'b1;
              state <= S_IDLE;
            end
          end
        end
    endcase
    end
  end
endmodule