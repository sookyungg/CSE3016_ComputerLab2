`timescale 1ns / 1ps
module four_bit_up_down_counter_tb;
reg clk ,rst, ud;
wire [3:0] out;
wire a, b, c, d, e, f, g, seg;
four_bit_up_down_counter u_four_bit_up_down_counter(.clk(clk), .rst(rst), .ud(ud), .out(out), .a(a),
.b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .seg(seg));

initial begin
clk <= 1'b0; 
rst <= 1'b1; 
ud <= 1'b1;
end

always begin 
#5
clk <= ~clk;
end

always begin 
#200
ud <= ~ud;
end

always begin
#100
rst <= ~rst;
end

initial begin
#1000
$finish;
end
endmodule
