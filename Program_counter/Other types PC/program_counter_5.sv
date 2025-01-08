module program_counter(input wire clk , input wire reset , input wire [15:0] reset_address , output reg [15:0] pc );
 always @(posedge clk or posedge reset)begin
	 if(reset)begin
		 pc <= reset_address;
	 end
	 else begin
		 pc <= pc + 16'b1;
	 end
 end
endmodule;
	    
