`timescale 1ns / 1ps
module four_bit_parallel_adder_tb;
    reg [3:0] a,b;
    reg cin;
    wire [3:0] s;
    wire [3:1] c;
    wire cout;
    four_bit_parallel_adder u_four_bit_parallel_adder (.a(a), .b(b), .cin(cin), .c(c), .cout(cout), .s(s));
    initial begin
        a = 4'D0;
        b = 4'D0;
        cin = 1'b0;
    end
    always @(a or b) begin
        a <= #10 a + 4'D1;
        b <= #20 b - 4'D1;
        cin <= #30 ~cin;
    end

    initial begin
        #1000
        $finish;
    end
endmodule
