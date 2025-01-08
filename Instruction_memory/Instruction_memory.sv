module instruction_memory(input wire clk,input wire reset,input wire write_enable,input wire [15:0] data_in,output reg [15:0] instruction,input wire [15:0] address);
 reg [15:0] rom_mem[0:1023];
 initial begin
// Initialize ROM memory with instructions (for example purposes)
  rom_mem[0] = 16'hF00F;  // Example instruction
  rom_mem[1] = 16'h1A2B;  // Example instruction
// ... add more instructions
  end
 
 always @(posedge clk or posedge reset or posedge write_enable)begin
	 if (reset)begin
		 instruction <= 16'b0;
	 end
	 else if(write_enable)begin
		 instruction <= data_in;
	 end
	 else begin
		 instruction <= rom_mem[address];
	 end
 end
endmodule
		 
                   
