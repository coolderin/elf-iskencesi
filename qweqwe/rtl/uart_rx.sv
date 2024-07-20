module uart_rx(
    input logic clk,
    input logic rst,
    input logic [15:0] UART_CPB,
    input logic rx_serial,
    output logic [7:0] UART_RDR,
    output logic rx_done
);
  typedef enum logic {S_IDLE, S_RECEIVE} t_state;
  t_state state;
  
  logic [8:0] rx_buffer;
  logic [3:0] bitcntr;
  logic [15:0] cntr;
  
  always_ff @(posedge clk)begin
    if(!rst)begin
      state <= S_IDLE;
      cntr <= 0;
      bitcntr <= 0;
    end else begin
      case(state)
      	S_IDLE :begin
          if(!rx_serial)begin
            cntr<=cntr +1;
          end else begin
          	cntr <=0;
          end
          if(cntr == UART_CPB[15:1])begin
          	state <= S_RECEIVE;
            cntr <=0;
            bitcntr <=0;
          end
        end


        S_RECEIVE :begin
          cntr <= cntr+1;
          if(cntr == UART_CPB)begin
            cntr <= 0 ;
            bitcntr <= bitcntr +1;
            rx_buffer <= {rx_serial,rx_buffer[8:1]};
          end
          
          if(bitcntr == 9)begin
            UART_RDR <= rx_buffer[7:0];
            rx_done <=1;
            state <= S_IDLE;
          end
        end
      endcase
    
    end
  end
endmodule