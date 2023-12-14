`timescale 1ns / 1ps
module sequence_detector_tb;
reg clk, rst, i;
wire out; //wire [3:0]tmp;

sequence_detector u_sequence_detector(clk, rst, i, out);

initial begin
clk = 1'b0;
rst = 1'b0;
i = 1'b0;
end

always clk = #30 ~clk;
always i = #50 ~i;
initial rst <= #500 ~rst;

endmodule
