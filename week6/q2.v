module mux4to1(w,s,f);
	input [0:3]w;
	input [1:0]s;
	output f;
	assign f=s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
endmodule
module q2(w,s,f);
	input [0:15]w;
	input [3:0]s;
	output f;
	wire [0:3]m;
	mux4to1 mux1 (w[0:3],s[1:0],m[0]);
	mux4to1 mux2 (w[4:7],s[1:0],m[1]);
	mux4to1 mux3 (w[8:11],s[1:0],m[2]);
	mux4to1 mux4 (w[12:15],s[1:0],m[3]);
	mux4to1 mux5 (m[0:3],s[3:2],f);
endmodule
