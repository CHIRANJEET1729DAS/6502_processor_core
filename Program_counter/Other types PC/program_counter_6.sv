module program_counter(input wire clk , input wire reset , input wire decrement_signal,input wire increment_signal , output reg [15:0] pc );
 always @(posedge clk or posedge reset)begin
     if(reset)begin
        pc <= 16'b0;
     end
     else if(increment_signal)begin
        pc <= pc + 16'b1;
     end
     else if(decrement_signal)begin
	pc <= pc - 16'b1;
     end
 end
endmodule

