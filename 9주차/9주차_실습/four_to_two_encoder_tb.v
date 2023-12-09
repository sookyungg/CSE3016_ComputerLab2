`timescale 1ns / 1ps
module four_to_two_encoder_tb;
    reg A, B, C, D;
    wire E0, E1;
    four_to_two_encoder u_four_to_two_encoder (.A(A), .B(B), .C(C), .D(D), .E0(E0), .E1(E1));
    initial begin
        A = 1'b1;
        B = 1'b1;
        C = 1'b1;
        D = 1'b1;
        
    end
    always @(A or B or C or D) begin
        A <= #20 ~A;
        B <= #30 ~B;
        C <= #40 ~C;
        D <= #50 ~D;
    end
    initial begin
        #1000
        $finish;
    end
    endmodule