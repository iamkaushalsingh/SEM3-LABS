`timescale 1ns/1ns
`include "Q1.v"
module Q1_tb();
reg [2:0]w;
reg En;
wire [0:7]y;
Q1 Q(w,y,En);
initial
begin
	$dumpfile("Q1_tb.vcd");
	$dumpvars(0,Q1_tb);
	
	En=1'b0;w=3'b111;
	#20
	En=1'b1;w=3'b000;
	#20
	En=1'b1;w=3'b010;
	#20
	En=1'b1;w=3'b100;
	#20
	En=1'b1;w=3'b110;
	#20
	

	
	$display("Test Complete");
end
endmodule
