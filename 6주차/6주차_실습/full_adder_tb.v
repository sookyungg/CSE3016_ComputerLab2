`timescale 1ns / 1ps
module full_adder_tb;
    reg a, b, cin;
    wire s, cout;
    full_adder u_full_adder (.a(a), .b(b), .cin(cin), .s(s), .cout(cout));
    initial begin
    a = 1'b0;
    b = 1'b0;
    cin = 1'b0;
    end
    
    initial begin
    #1000
    $finish;
    end
    
    always
    begin
    #50 cin <= ~cin;
    end
    
    always@(a or b)
    begin
    #100 a <= ~a;
    #200 b <= ~b;
    end
    endmodule