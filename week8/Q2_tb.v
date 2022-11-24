`timescale 1ns/1ns
`include "Q2.v"
module Q2_tb();
reg [3:0]w;
reg En;
wire [0:15]y;
Q2 Q(w,y,En);
initial
begin
	$dumpfile("Q2_tb.vcd");
	$dumpvars(0,Q2_tb);
	
	En=1'b0;w=4'b111;
	#20
	En=1'b1;w=4'b0000;
	#20
	En=1'b1;w=4'b0110;
	#20
	En=1'b1;w=4'b1001;
	#20
	En=1'b1;w=4'b1101;
	#20
	

	
	$display("Test Complete");
end
endmodule
