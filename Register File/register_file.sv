module register_file (input wire clk ,input wire reset,input wire load_sp,input wire load_p,input load_accumulator,input wire load_x ,input wire load_y,output reg [15:0] sp,output reg [15:0] accumulator,output reg [7:0] p,output reg [15:0] x, output reg [15:0] y, input wire [15:0] data_in );
 always @(posedge clk or posedge reset)begin
	 if (reset)begin
		 accumulator <= 16'b0 ;
		 sp <= 16'b0;
		 p <= 16'b0;
		 x <= 16'b0;
		 y <= 15'b0;
         end
	 else begin
		 if (load_sp)begin
			 sp <= data_in;
		 end 
		 else if (load_p)begin
			 p <= data_in[7:0];
	         end
		 else if (load_x)begin
			 x <= data_in;
		 end
		 else if (load_y)begin
			 y <= data_in;
		 end
		 else if (load_accumulator)begin
			 accumulator <= data_in;
		 end 
  	 end
 end 
endmodule

 
