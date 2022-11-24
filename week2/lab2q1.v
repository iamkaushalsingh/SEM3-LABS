module lab2q1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f =(~a&b)|(c&d)|(~b&c)|(b&~c&~d);
endmodule
