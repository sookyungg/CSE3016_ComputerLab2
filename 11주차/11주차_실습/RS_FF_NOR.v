`timescale 1ns / 1ps
module RS_FF_NOR(
    input s, r, clk,
    output q, nq
    );
assign q = ~((r & clk) | nq);
assign nq = ~((s & clk) | q);
endmodule
