`timescale 1ns/1ns
`include "lab3q2.v"
module lab3q2_tb();
reg a,b,c,d;
wire f;
lab3q2 uup(a,b,c,d,f);
initial 
begin
	
	$dumpfile("lab3q2_tb.vcd");
	$dumpvars(0,lab3q2_tb);
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b0;
	#20
	
	a=1'b0; b=1'b0; c=1'b0; d=1'b1;
	#20
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b0;
	#20
	
	a=1'b0; b=1'b0; c=1'b1; d=1'b1;
	#20
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b0;
	#20
	
	a=1'b0; b=1'b1; c=1'b0; d=1'b1;
	#20
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b0;
	#20
	
	a=1'b0; b=1'b1; c=1'b1; d=1'b1;
	#20
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b0;
	#20
	
	a=1'b1; b=1'b0; c=1'b0; d=1'b1;
	#20
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b0;
	#20
	
	a=1'b1; b=1'b0; c=1'b1; d=1'b1;
	#20
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b0;
	#20
	
	a=1'b1; b=1'b1; c=1'b0; d=1'b1;
	#20
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b0;
	#20
	
	a=1'b1; b=1'b1; c=1'b1; d=1'b1;
	#20
	
	
	$display("Test Complete");
end

endmodule
