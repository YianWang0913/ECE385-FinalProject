module testVGA();

timeunit 10ns;

timeprecision 1ns;

logic MAX10_CLK1_50 = 0;
logic	Reset;
logic	[9:0]	DrawX, DrawY, tempX, tempY;
logic	[23:0]	RGB;
logic	[7:0]		Red, Green, Blue;
logic	[18:0]	read_address;
logic	[4:0]		curZomIndex;


vga_top zm0(.*);

always begin : CLOCK_GENERATION

#1 MAX10_CLK1_50 = ~MAX10_CLK1_50;
end

initial begin : CLOCK_INITIALIZATION

   MAX10_CLK1_50 = 0;
	
	end

initial begin : TEST_VECTORS

	Reset = 1;
#2	Reset = 0;
 

 end
 
endmodule 