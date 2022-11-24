`timescale 1ns/1ns
`include "lab3q3.v"
module lab3q3_tb();
reg x1,x2,x3,x4;
wire l,m,n,o,f;
lab3q3 Q(x1,x2,x3,x4,f);
initial 
begin
	
	$dumpfile("lab3q3_tb.vcd");
	$dumpvars(0,lab3q3_tb);
	
	x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b0;
	#20
	
	x1=1'b0; x2=1'b0; x3=1'b0; x4=1'b1;
	#20
	
	x1=1'b0; x2=1'b0; x3=1'b1; x4=1'b0;
	#20
	
	x1=1'b0; x2=1'b0; x3=1'b1; x4=1'b1;
	#20
	
	x1=1'b0; x2=1'b1; x3=1'b0; x4=1'b0;
	#20
	
	x1=1'b0; x2=1'b1; x3=1'b0; x4=1'b1;
	#20
	
	x1=1'b0; x2=1'b1; x3=1'b1; x4=1'b0;
	#20
	
	x1=1'b0; x2=1'b1; x3=1'b1; x4=1'b1;
	#20
	
	x1=1'b1; x2=1'b0; x3=1'b0; x4=1'b0;
	#20
	
	x1=1'b1; x2=1'b0; x3=1'b0; x4=1'b1;
	#20
	
	x1=1'b1; x2=1'b0; x3=1'b1; x4=1'b0;
	#20
	
	x1=1'b1; x2=1'b0; x3=1'b1; x4=1'b1;
	#20
	
	x1=1'b1; x2=1'b1; x3=1'b0; x4=1'b0;
	#20
	
	x1=1'b1; x2=1'b1; x3=1'b0; x4=1'b1;
	#20
	
	x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b0;
	#20
	
	x1=1'b1; x2=1'b1; x3=1'b1; x4=1'b1;
	#20
	
	
	
	
	$display("Test Complete");
end
endmodule
