`timescale 1ns / 1ps
module code_converter_tb;
    reg a, b, c, d;
    wire a1, b1, c1, d1;
    code_converter u_code_converter (.a(a), .b(b), .c(c), .d(d), .a1(a1), .b1(b1), .c1(c1), .d1(d1),.a2(a2), .b2(b2), .c2(c2), .d2(d2));
initial begin
    a = 1'b0;
    b = 1'b0;
    c = 1'b0;
    d = 1'b0;
    end
    
    initial begin
    #1000
    $finish;
    end
    
    always
    begin
    #10 a <= ~a;
    #20 b <= ~b;
    #30 c <= ~c;
    #40 d <= ~d;
    end
    endmodule