module finite_state_machine(input wire clk,input wire reset,input wire [7:0] opcode,output reg fetch_enable,output reg decode_enable,output reg execute_enable,output reg write_back_enable);
 
 parameter FETCH = 2'b00;
 parameter DECODE = 2'b01;
 parameter EXECUTE = 2'b10;
 parameter WRITE_BACK = 2'b11;
 
 reg[1:0] current_state,next_state;

 always @(posedge clk or posedge reset)begin
	 if (reset)begin
		 current_state <= FETCH;
	 end
	 else begin
		 current_state <= next_state;
	 end
 end

 always @(*)begin
	 case(current_state)
		 FETCH:begin
			 next_state = DECODE;
		 end
		 DECODE:begin
			 next_state = EXECUTE;
		 end
		 EXECUTE:begin
			 next_state = WRITE_BACK;
		 end
		 WRITE_BACK:begin
			 next_state = FETCH;
		 end
		 default:begin
			 next_state = FETCH;
		 end
	  endcase
 end

 always @(*)begin
	 fetch_enable = 1'b0;
	 decode_enable = 1'b0;
	 execute_enable = 1'b0;
	 write_back_enable = 1'b0;

	 case(current_state)
		 FETCH:begin 
		         fetch_enable = 1;
		 end
		 DECODE:begin
			 decode_enable = 1;
		 end
		 EXECUTE:begin
			 execute_enable = 1;
		 end
		 WRITE_BACK:begin
			 write_back_enable = 1;
		 end
	 endcase
 end
endmodule

