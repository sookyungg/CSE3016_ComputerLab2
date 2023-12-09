`timescale 1ns / 1ps

module nand_inv_tb;
reg A, B, C, D;
wire E, F, G;

inv u_inv (
.a(A), .b(B), .c(C), .d(D),
.e(E), .f(F), .g(G) );

initial begin
    A = 1'b1;
    B = 1'b1;
    C = 1'b1;
    D = 1'b1;
end
always @(A or B or C or D) begin
    A <= #2 ~A;
    B <= #3 ~B;
    C <= #5 ~C;
    D <= #7 ~D;
end
initial begin
    #150
    $finish;
end
endmodule