module bcdToE3(b,x);
    input [3:0] b;
    output [3:0] x;
    wire [2:0] s;
    assign s = {b[2],b[1],b[0]};

MUX8to1 stage0({~b[3],~b[3],~b[3],1'b0,1'b0,1'b0,b[3],b[3]},s,x[3]);

MUX8to1 stage1({1'b0,1'b0,1'b0,~b[3],~b[3],~b[3],1'b1,1'b0},s,x[2]);

MUX8to1 stage2({~b[3],1'b0,1'b0,~b[3],~b[3],1'b0,1'b0,1'b1},s,x[1]);

MUX8to1 stage3({1'b0,~b[3],1'b0,~b[3],1'b0,~b[3],1'b0,1'b1},s,x[0]);

endmodule

