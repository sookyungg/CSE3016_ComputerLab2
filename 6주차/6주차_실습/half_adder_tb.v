`timescale 1ns / 1ps
module half_adder_tb;
    reg a, b;
    wire c, s;
    half_adder u_half_adder (.a(a), .b(b), .c(c), .s(s));
   
    
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