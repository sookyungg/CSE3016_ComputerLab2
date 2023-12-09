`timescale 1ns / 1ps

module pbg_tb;
reg a, b, c, d;
wire e;
pbg u_pbg(
.a(a),
.b(b),
.c(c),
.d(d),
.e(e)
);

initial begin
a = 1'b0;
b = 1'b0;
c = 1'b0;
d = 1'b0;
end

initial begin
#1000
$finish;
end

always
begin
#70 a <= ~a;
end

always
begin
#50 b <= ~b;
end

always
begin
#30 c <= ~c;
end

always
begin
#10 d <= ~d;
end

endmodule
