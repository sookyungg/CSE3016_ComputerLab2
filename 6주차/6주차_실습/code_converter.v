`timescale 1ns / 1ps
module code_converter(
input a,b,c,d,
output a1, b1, c1, d1, a2, b2, c2, d2
    );
    assign a1 = a|(b&d)|(b&c);
    assign b1 = a|(b&c)|(b&(~d));
    assign c1 = (a&~c) | (~b&(c)) | (b&(~c)&d);
    assign d1 = d;
    assign a2 = (a|b)&(a|c|d);
    assign b2 = (a|b)&(a|c|~d);
    assign c2 = (a|c|d) & (a|b|c) & (~b|~c)&(~a|~c);
    assign d2 = d;
endmodule
