`timescale 1ns / 1ps
module four_bit_ring_counter_tb;
reg clk, rst;
wire [3:0] out;
four_bit_ring_counter u_four_bit_ring_counter(.clk(clk),.rst(rst),.out(out));
initial begin
clk <= 1'b0;
rst <= 1'b0;
end

always begin
#15
clk<=~clk; 
end

always begin
#150
rst<=~rst;
end

initial begin
#1000
$finish;
end
endmodule