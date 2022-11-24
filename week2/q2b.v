module q2b(a,b,c,d,f);
input a,b,c,d;
output f;
assign f =(~b|c|d)&(~a|c|~d)&(~a|b|~c)&(a|~b|~c);
endmodule
