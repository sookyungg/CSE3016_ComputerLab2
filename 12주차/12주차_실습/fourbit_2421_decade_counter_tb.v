`timescale 1ns / 1ps
module fourbit_2421_decade_counter_tb;
reg clk, rst;
wire [3:0] out;
fourbit_2421_decade_counter u_fourbit_2421_decade_counter (.clk(clk), .rst(rst), .out(out));
initial begin
clk = 1'b0;
rst = 1'b0;
end
always clk = #20 ~clk;
initial rst <= #500 ~rst;
endmodule
