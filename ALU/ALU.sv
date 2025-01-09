module alu(input wire [7:0] operand1,input wire [7:0] operand2,input wire [2:0] operation_code ,output reg [7:0] result , output reg zero_flag,output reg carry_flag);
  always @(*)begin
	  result = 8'b0;
	  carry_flag = 1'b0;
	  zero_flag = 1'b0;

	  case (operation_code)
		  3'b000: begin
			  {carry_flag,result} = operand1+operand2;
		  end
		  3'b001: begin
			  {carry_flag,result} = operand1-operand2;
		  end
		  3'b010: begin
                          {carry_flag,result} = operand1&operand2;
		  end
		  3'b011: begin
			  {carry_flag,result} = operand1|operand2;
		  end
		  3'b100: begin
			  {carry_flag,result} = operand1^operand2;
		  end
		  3'b101: begin
			  {carry_flag,result} = ~operand1;
		  end
		  3'b110: begin
			  {carry_flag,result} = operand1 << 1;
		  end
		  3'b111: begin
			  {carry_flag,result} = operand1 >> 1;
		  end
	  endcase
	  
	  zero_flag = (result == 8'b0);
    end
endmodule


