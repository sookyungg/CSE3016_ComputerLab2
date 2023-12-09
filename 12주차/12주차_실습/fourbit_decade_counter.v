`timescale 1ns / 1ps
module fourbit_decade_counter(clk, rst, out);
output [3:0] out;
input clk, rst;
reg [3:0] out;
always@(posedge clk)
begin
    if(!rst)
        out <= 0;
    else if (out == 9)
    out <= 0;
    else
    out <= out + 1;
end
endmodule

