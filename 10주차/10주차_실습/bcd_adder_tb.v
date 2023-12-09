`timescale 1ns / 1ps
module bcd_adder_tb;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] s;
    wire [4:1] c;
    wire [3:0] bcd;
    wire cout;
    bcd_adder u_bcd_adder (.a(a), .b(b), .cin(cin), .c(c), .cout(cout), .s(s), .bcd(bcd));
    initial begin
        a = 4'D0;
        b = 4'D0;
        cin = 1'b0;
    end
    always @(a or b) begin
        a <= #20 a + 4'D1;
        b <= #30 b - 4'D1;
        cin <= #40 ~cin;
    end
    initial begin
        #1000
        $finish;
    end
endmodule
