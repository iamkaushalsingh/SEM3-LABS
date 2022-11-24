module dec2to4(w,y,En);
	input [1:0]w;
	input En;
	output reg [0:3]y;
	always @ (w,En)
	begin
	if(En==0)
		y=4'b0000;
	else
		if(w==0)
			y=4'b1000;
		else if(w==1)
			y=4'b0100;
		else if(w==2)
			y=4'b0010;
		else if(w==3)
			y=4'b0001;
	end
endmodule
module Q1(w,y,En);
	input [2:0]w;
	input En;
	output [0:7]y;
	dec2to4 dec1(w[1:0],y[0:3],(~w[2]&En));
	dec2to4 dec2(w[1:0],y[4:7],(w[2]&En));
endmodule
