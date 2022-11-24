module mux4to1(w,s,f);
	input [0:3]w;
	input [1:0]s;
	output f;
	assign f=s[1]?(s[0]?w[3]:w[2]):(s[0]?w[1]:w[0]);
endmodule
module q4(b,g);
	input [3:0]b;
	output [3:0]g;
	wire [3:0]t1;
	wire [3:0]t2;
	wire [3:0]t3;
	wire [3:0]t4;
	assign z=1'b0;
	assign x=b[0];
	assign y=b[1];
	assign t1={z,z,~z,~z};
	assign t2={z,~z,~z,z};
	assign t3={y,~y,y,~y};
	assign t4={x^y,x^y,x^y,x^y};
	mux4to1 mux1(t1,b[3:2],g[3]);
	mux4to1 mux2(t2,b[3:2],g[2]);
	mux4to1 mux3(t3,b[3:2],g[1]);
	mux4to1 mux4(t4,b[3:2],g[0]);
endmodule	
