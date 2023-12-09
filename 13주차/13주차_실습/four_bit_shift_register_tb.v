`timescale 1ns / 1ps
module four_bit_shift_register_tb;
reg clk, rst, in;
wire [3:0] out;
four_bit_shift_register u_four_bit_shift_register(.clk(clk), .rst(rst), .in(in), .out(out));
initial begin
clk = 1'b0;
rst = 1'b0;
in = 1'b0;
end

always clk = #10 ~clk;
always in = #50 ~in;
initial rst <= #400 ~rst;
endmodule