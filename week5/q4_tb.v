`timescale 1ns/1ns
`include "q4.v"
module q4_tb();
reg [3:0]a,b;
wire greater,lesser,equal;
q4 Q(a,b,greater,lesser,equal);
initial 
begin
	
	$dumpfile("q4_tb.vcd");
	$dumpvars(0,q4_tb);
	a=4'b1111;b=4'b1111;
	#20
	a=4'b1011;b=4'b1001;
	#20
	a=4'b0101;b=4'b0101;
	#20

	
	
	$display("Test Complete");
end

endmodule
