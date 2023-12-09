`timescale 1ns / 1ps
module seven_segment(
        input w, x, y, z,
        output a, b, c, d, e, f, g, dp, outw);
   assign a = (~w & y) | (x & y) | (w & ~z) | (~w & x & z) | (w & ~x & ~y) | (~x & ~z);
   assign b = (~x & ~z) | (~w & ~y & ~z) | (~w & y & z) | (w & ~y & z) | (~w & ~x);
   assign c = (~y & z) | (~w & x) | (w & ~x) | (~w & ~y) | (~w & z);
   assign d = (x & ~y & z) | (~x & y & z) | (w & ~y & ~z) | (~w & ~x & ~z) | (x & y & ~z);
   assign e = (y & ~z) | (w & x) | (w & y) | (~x & ~z);
   assign f = (~y & ~z) | (w & ~x) | (w & y) | (x & ~z) | (~w & x & ~y);
   assign g = (~x & y) | (w & ~x) | (y & ~z) | (w & z) | (~w & x & ~y);
   assign dp = 1;
   assign digit = a | b | c | d | e | f | g | dp;
endmodule
