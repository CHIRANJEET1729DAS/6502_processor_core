module ram(input wire clk ,input wire write_data ,input wire [15:0] data,input wire reset,input wire [15:0] address,output reg [15:0] instruction);
reg [15:0] input_data[0:1023];

 always @(posedge clk or reset or write_data)begin
	if(reset)begin
	   for (i=0;i<1024;i=i+1)begin
		   input_data[i] = 16'b0;
	   end
	end
	else if(write_data)begin
	   input_data[address] = data;
	end
 end
 always @(*)begin
	instruction = input_data[address];
 end
endmodule;
