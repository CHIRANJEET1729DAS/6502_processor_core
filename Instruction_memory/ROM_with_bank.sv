module rom_with_banks(input wire [15:0] address,output reg [15:0] instruction);
   reg [15:0] row_bank_0[0:1023];
   reg [15:0] row_bank_1[0:1023];

always @(*)begin
	if (address[15:14] == 2'b00)begin
		instruction  = row_bank_0[address[13:0]];
	end 
	else if (address[15:14] == 2'b11)begin
		instruction = row_bank_1[address[13:0]];
	end
	else begin
		instruction = 16'b0;
        end
end
endmodule
