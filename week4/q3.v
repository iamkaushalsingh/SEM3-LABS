module q3(x,y,s,carryout,k);
input k;
input [3:0] x,y;
output carryout;
output [3:0] s;
wire [3:0] w;
wire [3:1] c;
	assign w[0] = y[0]^k; 
	assign w[1] = y[1]^k;
	assign w[2] = y[2]^k;
	assign w[3] = y[3]^k;
	fulladd stage0(x[0],w[0],k,s[0],c[1]);
	fulladd stage1(x[1],w[1],c[1],s[1],c[2]);
	fulladd stage2(x[0],w[0],c[2],s[2],c[3]);
	fulladd stage3(x[3],w[3],c[3],s[3],carryout);
endmodule
module fulladd( cin,x,y,s,cout);
	input cin,x,y;
	output s,cout;
	assign s = x^y^cin;
	assign cout=(x&y)|(x&cin)|(y&cin);
endmodule
