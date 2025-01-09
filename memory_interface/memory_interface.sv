module memory_interface (input wire clk,input wire reset,input wire [15:0] address,input wire [15:0] data_in,input wire write_enable,output reg [15:0] data_out);

    reg [15:0] memory [0:1023];  
    
    initial begin
        memory[0] = 16'hA5A5;  
        memory[1] = 16'h3C3C;  
        memory[2] = 16'hF0F0;  
       
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            data_out <= 16'b0;  
        end else if (write_enable) begin
            memory[address] <= data_in;  
        end else begin
            data_out <= memory[address];  
        end
    end

endmodule

