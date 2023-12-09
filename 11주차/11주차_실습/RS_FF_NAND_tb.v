`timescale 1ns / 1ps
module RS_FF_NAND_tb;
reg r, s, clk;
wire q, nq;
RS_FF_NAND u_RS_FF_NAND (.r(r), .s(s), .clk(clk), .q(q), .nq(nq));
initial r = 1'b1;
initial s = 1'b1;
initial clk = 1'b1;

always r = #20 ~r;
always s = #30 ~s;
always clk = #40 ~clk;
 initial begin
        #1000
        $finish;
end
endmodule
