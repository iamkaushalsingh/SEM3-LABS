module lab3q1(a,b,c,d,f);
input a,b,c,d;
output f;
assign p = ~(~(a&a)&~(c&c));
assign q = ~(b&~(c&c));
assign r = ~(d&~(a&a));
assign s = ~(b&d);
assign f = ~(p&q&r&s);
endmodule
