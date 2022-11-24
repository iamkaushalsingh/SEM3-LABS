`timescale 1ns/1ns
`include "decomposed.v"
module decomposed_tb();
reg x,y,Ci;
wire S1,C2,S,Co;
decomposed dfa(x,y,Ci,S,Co);
initial
begin
	$dumpfile("decomposed_tb.vcd");
	$dumpvars(0,decomposed_tb);
	
	x=1'b0;y=1'b0;Ci=1'b0;
	#20
	x=1'b0;y=1'b1;Ci=1'b0;
	#20
	x=1'b1;y=1'b0;Ci=1'b0;
	#20
	x=1'b1;y=1'b1;Ci=1'b0;
	#20
	x=1'b0;y=1'b0;Ci=1'b1;
	#20
	x=1'b0;y=1'b1;Ci=1'b1;
	#20
	x=1'b1;y=1'b0;Ci=1'b1;
	#20
	x=1'b1;y=1'b1;Ci=1'b1;
	#20
	
	
	$display("Test Complete");
end
endmodule
