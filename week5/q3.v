module q3(bcd,w);
input[3:0]w;
output[3:0]bcd;

assign bcd[0]=w[0];
assign bcd[1]=w[1] ^ w[0];
assign bcd[2]=(w[2]& ~ w[1]& ~ w[0]) | (~w[2]& w[0]) | (~w[2] & w[1]);

assign bcd[3]=(w[3]&w[2]) | (w[3]&~w[1] &~w[0]);
endmodule
