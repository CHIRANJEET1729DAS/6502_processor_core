module cache_based_memory(input wire clk,input wire [15:0] address,input wire reset,output reg [15:0] instruction );
 reg [15:0] cache_mem[0:127];
 reg [15:0] main_memory[0:1024];

 always @(posedge clk or posedge reset)begin
	 if (reset)begin
		 for(i=0;i<128;i=i+1)begin
			 cache_mem[i] <= 16'b0;
		 end
	 end 
	 else if(cache_mem[address[6:0]]!=main_memory[address])begin
		 cache_mem[address[6:0]] <= main_memory[address];
	 end
	 else begin
		 instruction = cache_mem[address[6:0]];
	 end
 end
endmodule
