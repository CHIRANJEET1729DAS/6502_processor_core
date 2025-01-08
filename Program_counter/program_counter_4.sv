module program_counter(input wire clk , input wire reset , input wire jump_signal , input wire[15:0] jump_address, output reg[15:0] pc );
 always @(posedge clk or posedge reset or posedge jump_signal)begin
	 if(reset)begin
		 pc <= 16'b0;
	 end
	 else if(jump_signal)begin
		 pc <= jump_address;
	 end
	 else begin
		 pc <= pc + 16'b1;
	 end
  end
endmodule

                            
