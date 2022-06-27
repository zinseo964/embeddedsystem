module CRC_TEST;
  reg [7:0] data_in;
	reg load;
  reg crc_en;
  wire [15:0] crc_out;
  reg rst;
  reg clk;
	parameter clk_period = 40;
  
	CRC ul(.data_in(data_in), .load(load), .crc_en(crc_en), .crc_out(crc_out), .rst(rst), .clk(clk));

	initial begin 
		clk = 1;
		load = 1;
		#clk_period rst = 1;
		#clk_period rst = 0;
		#clk_period crc_en = 1;
		data_in[7:0] = 16'h0x55;
		#400 data_in[7:0] = 16'h0xA1;
		#400 data_in[7:0] = 16'h0x12;
		#400 data_in[7:0] = 16'h0x34;
		#400 
		$finish;
	end
	always #(clk_period) clk = ~clk;

endmodule 