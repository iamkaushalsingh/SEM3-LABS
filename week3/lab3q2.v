module lab3q2(a,b,c,d,f);
input a,b,c,d;
output f;
assign p = ~(~(a|a)|~(b|b));
assign q = ~(d|~(b|b));
assign r = ~(~(c|c)|~(d|d));
assign f = ~(p|q|r);
endmodule
