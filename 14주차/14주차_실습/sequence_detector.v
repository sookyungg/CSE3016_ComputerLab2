`timescale 1ns / 1ps
module sequence_detector(clk, rst, i, out);
input clk, rst, i;

output reg out = 0;
reg [3:0] tmp;

always @(posedge clk) begin
if (rst) begin
    tmp <= 4'b0000;
    out <= 0;
    end
    
else begin
tmp = tmp<<1;
tmp[0] = i;
end

if(tmp == 13)
out <= 1;
else out <= 0;

end
endmodule

