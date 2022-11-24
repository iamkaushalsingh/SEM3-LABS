module lab3q3(x1,x2,x3,x4,f);
input x1,x2,x3,x4;
output f;
assign l = x2&x3&x4;
assign m = x1&x3&x4;
assign n = x1&x2&x4;
assign o = x1&x2&x3;
assign f = l | m | n | o;
endmodule
