`timescale 1ns/1ns
`include "q3.v"
module q3_tb();
reg [3:0]w;
wire [3:0]bcd;
q3 Q(bcd,w);
initial 
begin
	
	$dumpfile("q3_tb.vcd");
	$dumpvars(0,q3_tb);
	w=4'b1111;
	#20
	w=4'b1011;
	#20
	w=4'b0101;
	#20
	w=4'b0110;
	#20
	
	
	$display("Test Complete");
end

endmodule
