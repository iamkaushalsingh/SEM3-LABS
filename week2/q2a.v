module q2a(A,B,C,D,F);
input A,B,C,D;
output F;
assign F =(~B|D)&(B|C);
endmodule
