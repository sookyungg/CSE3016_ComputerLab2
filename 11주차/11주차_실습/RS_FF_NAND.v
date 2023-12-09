`timescale 1ns / 1ps
module RS_FF_NAND(
    input s, r, clk,
    output q, nq
    );
assign q = ~(~(s & clk) & nq);
assign nq = ~(~(r & clk) & q);
endmodule
