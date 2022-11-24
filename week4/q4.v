module q4(a,b,s,cout);
input [1:0] a,b;
output [2:0] s;
output cout;
wire [3:0] w;

	assign w[0] = a[0]&b[0];
	assign w[1] = a[0]&b[1];
	assign w[2] = a[1]&b[0];
	assign w[3] = a[1]&b[1];
	
	assign s[0]=w[0];
	halfadder stage1(w[1],w[2],s[1],c1);
	halfadder stage2(c1,w[3],s[2],cout);
	endmodule
	
	module halfadder(x,y,s,cout);
	input x,y;
	output s,cout;
	assign s= x^y;
	assign cout = x&y;
	endmodule
	
