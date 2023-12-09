`timescale 1ns / 1ps
module D_FF_tb;
reg d, clk;
wire q, nq;
D_FF u_D_FF (.d(d), .clk(clk), .q(q), .nq(nq));
initial d = 1'b1;
initial clk = 1'b1;
always d = #20 ~d;
always clk = #30 ~clk;
 initial begin
        #1000
        $finish;
end
endmodule
