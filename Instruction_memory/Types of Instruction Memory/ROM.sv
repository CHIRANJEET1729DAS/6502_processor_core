module rom (input wire [15:0] address, output reg [15:0] instruction);
 reg [15:0] rom_mem [0:1023];
 initial begin
    // Initialize ROM memory with instructions (for example purposes)
    rom_mem[0] = 16'hF00F;  // Example instruction
    rom_mem[1] = 16'h1A2B;  // Example instruction
    // ... add more instructions
 end
 always @(*)begin
    instruction = rom_mem[address];
 end
endmodule

