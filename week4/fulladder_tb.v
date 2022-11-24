`timescale 1ns/1ns
`include "fulladder.v"
module fulladder_tb();
reg x,y,cin;
wire sum,cout;
fulladder fa(x,y,cin,sum,cout);
initial
begin
	$dumpfile("fulladder_tb.vcd");
	$dumpvars(0,fulladder_tb);
	
	x=1'b0;y=1'b0;cin=1'b0;
	#20
	x=1'b0;y=1'b1;cin=1'b0;
	#20
	x=1'b1;y=1'b0;cin=1'b0;
	#20
	x=1'b1;y=1'b1;cin=1'b0;
	#20
	x=1'b0;y=1'b0;cin=1'b1;
	#20
	x=1'b0;y=1'b1;cin=1'b1;
	#20
	x=1'b1;y=1'b0;cin=1'b1;
	#20
	x=1'b1;y=1'b1;cin=1'b1;
	#20
	
	
	$display("Test Complete");
end
endmodule
