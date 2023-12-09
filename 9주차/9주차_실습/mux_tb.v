`timescale 1ns / 1ps

module mux_tb;
reg S1, S0, A, B, C, D;
wire Y;

mux u_mux (
.s1(S1), .s0(S0), .a(A), .b(B), .c(C), .d(D),
.y(Y) );

initial begin
    S1 = 1'b1;
    S0 = 1'b1;
    A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
    
end
always @(S1 or S0 or A or B or C or D) begin
    A <= #20 ~A;
    B <= #30 ~B;
    C <= #40 ~C;
    D <= #50 ~D;
    S1 <= #60 ~S1;
    S0 <= #70 ~S0;
    
end
initial begin
    #1000
    $finish;
end
endmodule
