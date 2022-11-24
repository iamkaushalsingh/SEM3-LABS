module dec3to8(w,y,En);
	input [2:0]w;
	input En;
	integer k;
	output reg [0:7]y;
	always @ (w,En)
	begin
	for(k=0;k<=7;k=k+1)
		if((w==k)&&(En==1))
			y[k]=1;
		else
			y[k]=0;
	end
endmodule
module Q2(w,y,En);
	input [3:0]w;
	input En;
	output [0:15]y;
	dec3to8 dec1(w[2:0],y[0:7],(~w[3]&En));
	dec3to8 dec2(w[2:0],y[8:15],(w[3]&En));
endmodule
