module mux2to1(w0,w1,s,f);
	input w0,w1,s;
	output reg f;
	always @ (w0,w1,s)
	if(s==1'b0)
		f=w0;
	else if(s==1'b1)
		f=w1;
endmodule
module q1(W,S,f);
	input [0:3]W;
	input [1:0]S;
	output f;
	wire f1,f2;
	mux2to1 mux1(W[0],W[1],S[0],f1);
	mux2to1 mux2(W[2],W[3],S[0],f2);
	mux2to1 mux3(f1,f2,S[1],f);
endmodule
