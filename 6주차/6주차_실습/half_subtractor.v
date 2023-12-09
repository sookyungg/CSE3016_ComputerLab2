`timescale 1ns / 1ps
module half_subtractor(a, b, d, bb);
    input a, b;
    output d, bb;
    assign d = a ^ b;
    assign bb = ~a & b;
endmodule