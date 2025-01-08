module program_counter(input wire clk,input wire reset,input wire branch_enable,input wire [15:0] branch_addr, output reg [15:0] pc);
 always @(posedge clk or posedge reset)begin
	 if(reset)begin
		 pc <= 16'b0;
         end 
	 else if (branch_enable)begin
		 pc <= branch_addr;
	 end
	 else begin
		 pc <= pc + 16'b1;
	 end
  end ; 
endmodule; 
