`timescale 1ns / 1ps
module twobit_binary_counter_tb;
reg clk, rst;
wire [1:0] out;
twobit_binary_counter u_twobit_binary_counter (.clk(clk), .rst(rst), .out(out));
initial begin
rst = 1'b1;
clk = 1'b1;
end

always rst = #50 ~rst;
always clk = #10 ~clk;
initial begin
        #1000
        $finish;
end
endmodule
