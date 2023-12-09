`timescale 1ns / 1ps
module four_bit_shift_register(clk, rst, in, out);
input clk, rst, in;
output [3:0] out;
reg [3:0] out;
initial out = 4'b0000;
always @(posedge clk) begin
if(rst == 1'b1) out = 4'b0000;
else begin
out = out>>1;
out[3] = in;
end
end
endmodule