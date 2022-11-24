`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg [0:15]w;
reg [3:0]s;
wire [0:3]m;
wire f;
q2 Q(w,s,f);
initial
begin
	$dumpfile("q2_tb.vcd");
	$dumpvars(0,q2_tb);
	
	w=16'b0100111001101001;s=4'b0000;
	#20
	w=16'b0100111001101001;s=4'b1010;
	#20
	w=16'b0100111001101001;s=4'b0110;
	#20
	w=16'b0100111001101001;s=4'b1000;
	#20
	
	
	
	
	
	
	
	
	$display("Test Complete");
end
endmodule
