`timescale 1ns / 1ps

module mux(
input s1, s0, a, b, c, d,
output y
    );
assign y = (~s1 & ~s0 & d) | (~s1 & s0 & c) | (s1 & ~s0 & b) | (s1 & s0 & a);
endmodule
