`timescale 1ns / 1ps
module two_to_four_and_decoder_tb;
    reg A, B;
    wire D0, D1, D2, D3;
    two_to_four_and_decoder u_two_to_four_and_decoder (.A(A), .B(B), .D0(D0), .D1(D1), .D2(D2), .D3(D3));
    initial begin
        A = 1'b1;
        B = 1'b1;
    end
    always @(A or B) begin
        A <= #20 ~A;
        B <= #30 ~B;
    end
    initial begin
        #1000
        $finish;
    end
    endmodule