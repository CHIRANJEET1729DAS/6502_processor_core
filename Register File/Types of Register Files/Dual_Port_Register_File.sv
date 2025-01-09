module dual_port_register_file (input wire clk,input wire reset,input wire write_enable,input wire [3:0] write_address,input wire[3:0] read_address_1,input wire [3:0] read_address_2,input wire [15:0] data_in, output reg [15:0] data_out1,output reg [15:0] data_out2 );
  reg [15:0] reg_file [0:15];
  integer i;
  always @(posedge clk or posedge reset ) begin
	  if (reset) begin
		  for (i=0;i<16;i=i+1)begin
			  reg_file[i] <= 16'b0;
	          end
	  end
	  else if (write_enable) begin
		  reg_file[write_address] <= data_in;
	  end
  end

  always @(*) begin
	  data_out1 = reg_file[read_address_1];
	  data_out2 = reg_file[read_address_2];
  end
endmodule
