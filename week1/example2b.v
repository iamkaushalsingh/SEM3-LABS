module q2a(a,b,c,d,f);
input a,b,c,d;
output g,f;
nand(h,a,b);
xor(f,d,h,c);
nor(g,b,c,d);
endmodule
