`timescale 1ns/1ns
`include "example2b.v"
module example2b_tb();
reg a, b, c, d;
wire g,f;
example2b ex2(a, b, c, d, g, f); 
initial
begin
$dumpfile("example2b_tb.vcd");
$dumpvars(0, example2b_tb);
a=1'b0; b=1'b0; c=1'b0; d=1'b0;
#20;
a=1'b0; b=1'b0; c=1'b0; d=1'b1;
#20;
a=1'b0; b=1'b0; c=1'b1; d=1'b0;
#20;
a=1'b0; b=1'b0; c=1'b1; d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b0; d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b0; d=1'b1;
#20;
a=1'b0; b=1'b1; c=1'b1; d=1'b0;
#20;
a=1'b0; b=1'b1; c=1'b1; d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b0; d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b0; d=1'b1;
#20;
a=1'b1; b=1'b0; c=1'b1; d=1'b0;
#20;
a=1'b1; b=1'b0; c=1'b1; d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b0; d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b0; d=1'b1;
#20;
a=1'b1; b=1'b1; c=1'b1; d=1'b0;
#20;
a=1'b1; b=1'b1; c=1'b1; d=1'b1;
#20;
$display("Test Complete");
end
endmodule
