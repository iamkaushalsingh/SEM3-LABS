module mux2to1(w0,w1,s,f);
	input w0,w1,s;
	output reg f;
	always @ (w0,w1,s)
	if(s==1'b0)
		f=w0;
	else if(s==1'b1)
		f=w1;
endmodule
module mux8to1(W,S,f)
	input [0:7]W;
	input [2:0]S;
	output reg f;
	wire f1,f2;
	always @ (W or S)
	case(S)
	0:f=W[0];
	1:f=W[1];
	2:f=W[2];
	3:f=W[3];
	4:f=W[4];
	5:f=W[5];
	6:f=W[6];
	7:f=W[7];
	endcase
endmodule	
module q3(w,s,f);
	input [0:15]w;
	input [3:0]s;
	output f;
	wire f1,f2;
	mux8to1
endmodule
