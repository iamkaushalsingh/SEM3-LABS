module decomposed(x,y,Ci,S,Co);
	input x,y,Ci;
	output S,Co;
	halfadd stage0 (x,y,S1,C1);
	halfadd stage1 (S1,Ci,C2,S);
	assign Co=(x&y)|(x&Ci)|(y&Ci);
endmodule

module halfadd(x,y,s,c);
	input x,y;
	output s,c;
	assign s=x^y;
	assign c=x&y;
endmodule
