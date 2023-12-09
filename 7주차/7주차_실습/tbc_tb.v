`timescale 1ns / 1ps

module tbc_tb;
reg a, b, c, d;
wire f1, f2, f3;
tbc u_tbc(
.a(a),
.b(b),
.c(c),
.d(d),
.f1(f1),
.f2(f2),
.f3(f3)
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
#80 a <= ~a;
end

always
begin
#40 b <= ~b;
end

always
begin
#20 c <= ~c;
end

always
begin
#10 d <= ~d;
end

endmodule
