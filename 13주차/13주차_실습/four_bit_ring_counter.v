`timescale 1ns / 1ps
module four_bit_ring_counter(clk, rst, out);
input clk, rst;
output reg [3:0] out;
reg init=1'b1;

always @(posedge clk) begin
if(rst == 1'b1) out = 4'b0001;
else if(init) begin
out<=4'b0001;
init<=1'b0;
end
else begin
out<={out[2:0], out[3]};end
end
endmodule