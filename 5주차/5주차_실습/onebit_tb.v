`timescale 1ns / 1ps
module onebit_tb;
reg aa, bb;
wire c, d, e, f;

onebit u_onebit(
.a(aa),
.b(bb),
.c(c),
.d(d),
.e(e),
.f(f));

initial begin
aa = 1'b0;
bb = 1'b0;
end

initial begin
#1000
$finish;
end

always@(aa or bb)
begin
#100 aa <= ~aa;
#200 bb <= ~bb;
end

endmodule
