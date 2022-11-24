`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [0:3]W;
reg [1:0]S;
wire f1,f2,f;
q1 Q(W,S,f);
initial
begin
	$dumpfile("q1_tb.vcd");
	$dumpvars(0,q1_tb);
	
	W=4'b0100;S=2'b00;
	#20
	W=4'b0100;S=2'b01;
	#20
	W=4'b0100;S=2'b10;
	#20
	W=4'b0100;S=2'b11;
	#20
	
	
	
	
	
	
	
	$display("Test Complete");
end
endmodule
