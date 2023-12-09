`timescale 1ns / 1ps
module four_bit_up_down_counter(clk, rst, ud, out, a, b, c, d, e, f, g, seg);
input clk, rst, ud;

output a, b, c, d, e, f, g, seg;
output [3:0] out;
reg [3:0] out;

assign a = 0; 
assign b = 1;
assign c = 1; 
assign d = 1;
assign e = 1; 
assign seg = 1;
assign f = 1 & ud;
assign g = 1 & (~ud);

always@(posedge clk)
if(ud) begin
    if(rst)
        out <= 0;
    else
        out <= out + 1;
end

else begin
    if(rst)
    out <= 0;
    else
    out <= out - 1;
    end
endmodule

