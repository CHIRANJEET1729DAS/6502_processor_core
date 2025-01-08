module fetch_unit (
    input wire clk,
    input wire fetch,
    input wire reset,
    input wire [15:0] instruction_mem,
    output reg [15:0] instruction,   
    output reg [15:0] pc            
);
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            pc <= 16'b0;              
            instruction <= 16'b0;     
        end else if (fetch) begin
            instruction <= instruction_mem[pc]; 
            pc <= pc + 16'b1;         
        end
    end

endmodule

