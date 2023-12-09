`timescale 1ns / 1ps
module bcd_adder (a, b, cin, c, cout, s, bcd);
    input [3:0] a,b;
    input cin;
    output [3:0] s;
    output [4:1] c;
    output [3:0] bcd;
    output cout;
    assign s[0] = a[0] ^ b[0] ^ cin;
    assign c[1] = (a[0] & b[0]) | (cin & (a[0] ^ b[0])); 
    assign s[1] = a[1] ^ b[1] ^ c[1];
    assign c[2] = (a[1] & b[1]) | (c[1] & (a[1] ^ b[1]));
    assign s[2] = a[2] ^ b[2] ^ c[2];
    assign c[3] = (a[2] & b[2]) | (c[2] & (a[2] ^ b[2]));
    assign s[3] = a[3] ^ b[3] ^ c[3];
    assign c[4] = (a[3] & b[3]) | (c[3] & (a[3] ^ b[3]));
    assign cout = c[4] | (s[2] & s[3]) | (s[3] & s[1]);
    assign bcd[0] = s[0];
    assign bcd[1] = s[1] ^ cout;
    assign bcd[2] = s[2] ^ cout ^ (s[1] & cout);
    assign bcd[3] = s[3] ^ ((s[2] & cout) | ((s[1] & cout) & (s[2] ^ cout)));
endmodule