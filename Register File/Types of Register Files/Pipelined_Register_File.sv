module pipelined_register_file (input wire clk,input wire reset,input wire write_enable,input wire [3:0] write_address,input wire [3:0] read_address,input wire [15:0] data_in,output reg [15:0] data_out);
    reg [15:0] reg_file [0:15];
    reg [15:0] read_data_reg;
    integer i;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            for (i = 0; i < 16; i = i + 1)
                reg_file[i] <= 16'b0;  
        end else if (write_enable) begin
            reg_file[write_address] <= data_in;  
        end
        read_data_reg <= reg_file[read_address];  
    end

    always @(*) begin
        data_out = read_data_reg;
    end
endmodule

