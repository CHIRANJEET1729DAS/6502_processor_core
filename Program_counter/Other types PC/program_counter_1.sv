module ProgramCounter (
    input wire clk,
    input wire reset,
    output reg [15:0] pc
);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 16'b0; // Reset the program counter to 0
        end else begin
            pc <= pc + 16'b1; // Increment the program counter
        end
    end
endmodule

