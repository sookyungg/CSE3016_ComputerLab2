`timescale 1ns / 1ps
module full_subtractor_tb;
    reg a, b, bin;
    wire d, bout;
    full_subtractor u_full_substractor (.a(a), .b(b), .bin(bin), .d(d), .bout(bout));
initial begin
    a = 1'b0;
    b = 1'b0;
    bin = 1'b0;
    end
    
    initial begin
    #1000
    $finish;
    end
    
    always
    begin
    #50 bin <= ~bin;
    end
    
    always@(a or b)
    begin
    #100 a <= ~a;
    #200 b <= ~b;
    end
    endmodule