`timescale 1ns / 1ps

module demux(
input s1, s0, a,
output y3, y2, y1, y0
    );
assign y0 = ~s1 & ~s0 & a;
assign y1 = ~s1 & s0 & a;
assign y2 = s1 & ~s0 & a;
assign y3 = s1 & s0 & a;
endmodule
