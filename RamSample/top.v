module top(
	input	 [3:0]SW,
	input	 [1:0]KEY,
	input  FPGA_CLK1_50,
	output [3:0]LED
);
	
	//reg [3:0] address = 4'b0000;
	//reg [3:0] datain = 4'b0000;
	wire wren = ~KEY[0];
	
	/*
	always @(posedge FPGA_CLK1_50)
	begin
		wren <= 1'b0;
		if (KEY[0] == 1'b0 & KEY[0] == 1'b0)
		begin
			wren <= 1'b1;
		end
		else if(KEY[0] == 1'b0)
		begin
			address <= SW; //same width
		end
		else if(KEY[1] == 1'b0)
		begin
			datain <= SW; //same width
		end
	end
	*/
	
	ram32x4 ram(
	{3'b000,  SW[3:2]},
	FPGA_CLK1_50,
	{2'b00,  SW[1:0]},
	wren,
	LED);
	
endmodule