`timescale 1ns / 1ps
module half_subtractor_tb;
    reg a, b;
    wire d, bb;
    half_subtractor u_half_subtractor (.a(a), .b(b), .d(d), .bb(bb));
   
    
    initial begin
    a = 1'b0;
    b = 1'b0;
    end
    
    initial begin
    #1000
    $finish;
    end
    
    always@(a or b)
    begin
    #100 a <= ~a;
    #200 b <= ~b;
    end
    
    endmodule