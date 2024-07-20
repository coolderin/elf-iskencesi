//////////////////TRANSMITTER
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
            bit_cntr<=0;
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


/////////RECIEVER
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


//UART
module UART(
    input logic rx,
    input logic clk,
    input logic rst,
    output logic tx
);
    //Teknofest Registers
    logic [1:0] UART_STP;
    logic [7:0] UART_RDR;
    logic [7:0] UART_TDR;
    logic [2:0] UART_CFG;
    logic [15:0] UART_CPB;

    uart_tx tx_inst (.clk(clk), .rst(rst), .UART_CPB(UART_CPB), .UART_TDR(UART_TDR), .tx_ena(UART_CFG[0]), .tx_done(UART_CFG[2]), .tx_serial(tx));

    uart_rx rx_inst (.clk(clk), .rst(rst), .UART_CPB(UART_CPB), .rx_serial(rx), .UART_RDR(UART_RDR), .rx_done(UART_CFG[1]));

endmodule