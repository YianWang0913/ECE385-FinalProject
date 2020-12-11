//Module for testing Coordinate.sv
module testCoordinate();

timeunit 10ns;

timeprecision 1ns;

logic frame_clk = 0;
logic Reset;
logic [7:0] keycode;
logic [9:0] curX, curY;
logic Plant;
logic [2:0] stateNum;


Coordinate c0(.*);

always begin : CLOCK_GENERATION

#1 frame_clk = ~frame_clk;
end

initial begin : CLOCK_INITIALIZATION

   frame_clk = 0;
	
	end
// A 8'h04
// D 8'h07
// W 8'h1A
//	S 8'h16
// E 8'h08
initial begin : TEST_VECTORS

    Reset = 1;
#4	 Reset = 0;
	 
#20	 	keycode = 8'h04;//A
#20  		keycode = 8'h00;

#20	 	keycode = 8'h07;//D
#20  		keycode = 8'h00;

#20		keycode = 8'h16;//S
#20  		keycode = 8'h00;

#20	 	keycode = 8'h08;//E
#20  		keycode = 8'h00;
	 

 

 end
 
endmodule 