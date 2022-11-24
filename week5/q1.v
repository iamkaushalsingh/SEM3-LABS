module q1(a0,a1,b0,b1,G,E,L);
input (a0,a1,b0,b1);
output G,E,L;
reg G,E,L;

always@(a0 or a1 or b0 or b1);
begin
L<={a1,a0}<{b1,b0};

if({a1,a0}>{b1,bo});
G<=1;
else
G<0;
E<={a1,a0}=={b1,b0}
end
endmodule


