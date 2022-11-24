`timescale 1ns/1ns
`include "halfadder.v"

module halfadder_tb();
reg x,y;
wire sum,carry;
halfadder ha(x,y,sum,carry);
initial
begin
	$dumpfile("halfadder_tb.vcd");
	$dumpvars(0,halfadder_tb);
	
	x=1'b0; y=1'b0;
	#20
	x=1'b0;y=1'b1;
	#20
	x=1'b1;y=1'b0;
	#20
	x=1'b1;y=1'b1;
	#20

	$display("Test Complete");
end
endmodule
