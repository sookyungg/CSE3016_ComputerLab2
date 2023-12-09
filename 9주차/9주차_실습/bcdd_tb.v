`timescale 1ns / 1ps

module bcdd_tb;
reg A, B, C, D;
wire E0, E1, E2, E3, E4, E5, E6, E7, E8, E9;
bcdd u_bcdd(
.A(A),.B(B),.C(C),.D(D),.E0(E0),.E1(E1),.E2(E2),.E3(E3),.E4(E4),.E5(E5),.E6(E6),.E7(E7),.E8(E8),.E9(E9));

initial begin
A = 1'b0;
B = 1'b0;
C = 1'b0;
D = 1'b0;
end

initial begin
#1000
$finish;
end

always
begin
#50 A <= ~A;
end

always
begin
#40 B <= ~B;
end

always
begin
#30 C <= ~C;
end

always
begin
#20 D <= ~D;
end

endmodule
