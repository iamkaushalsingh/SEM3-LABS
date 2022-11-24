`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg[1:0] a,b;
wire[2:0]s;
wire cout;

q4 q1(a,b,s,cout);
initial begin
$dumpfile("q4_tb.vcd");
$dumpvars(0,q4_tb);

a=2'b10;
b=2'b11;
#20;
a=2'b11;
b=2'b11;
#20;

$display("Test complete");
end 
endmodule

