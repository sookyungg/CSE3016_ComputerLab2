`timescale 1ns / 1ps

module seven_segment_tb;
reg W, X, Y, Z;
wire A, B, C, D, E, F, G, DP, OUTW;

seven_segment u_seven_segment (
.w(W), .x(X), .y(Y), .z(Z),
.a(A), .b(B), .c(C), .d(D), .e(E), .f(F), .g(G), .dp(DP), .outw(OUTW) );

initial begin
    W = 1'b1;
    X = 1'b1;
    Y = 1'b1;
    Z = 1'b1;
end
always @(W or X or Y or Z) begin
    W <= #20 ~W;
    X <= #30 ~X;
    Y <= #40 ~Y;
    Z <= #50 ~Z;
end
initial begin
    #1000
    $finish;
end
endmodule
