module address_bus (
    input wire [15:0] address_in,  
    output reg [15:0] address_out  
);

    always @(*) begin
        address_out = address_in;  
    end
endmodule

