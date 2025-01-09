module data_bus (input wire clk,input wire reset,input wire [7:0] data_in,input wire [7:0] data_out,input wire read,input wire write,output reg [7:0] bus_data);

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            bus_data <= 8'b0;      
        end else begin
            if (write) begin
                bus_data <= data_in;  
            end
            if (read) begin
                bus_data <= data_out; 
            end
        end
    end
endmodule

