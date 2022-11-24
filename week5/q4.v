module q4(a,b,lesser,greater,equal);
input[3:0]a,b;
output lesser,greater,equal;

twobitcomp stage1(a[3],a[2],b[3],b[2],l1,g1,c1);
twobitcomp stage2(a[1],a[0],b[1],b[0],l2,g2,c2);

assign equal= c1 & c2;
assign greater= g1 | (g2 & c1);
assign lesser= ~(equal | greater);
endmodule

module twobitcomp (a2,a1,b2,b1,lesser,greater,equal);
input a2,a1,b2,b1;
output lesser,greater,equal;

assign equal= (a2~^b2) & (a1~^b1);
assign greater= (a2&^b2)| ((a2~^b2) & (a1&~b1));
assign lesser= ~ (equal | greater);
endmodule

