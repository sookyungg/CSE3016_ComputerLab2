`timescale 1ns / 1ps
module bool1_b_tb;
reg a,b,c; wire d;
bool1_b u_bool1_b(.a(a), .b(b), .c(c), .d(d));
initial begin
a=0; b=0; c=0; #50
a=0; b=0; c=1; #50
a=0; b=1; c=0; #50
a=0; b=1; c=1; #50
a=1; b=0; c=0; #50
a=1; b=0; c=1; #50
a=1; b=1; c=0; #50
a=1; b=1; c=1; #50

$finish;
end
endmodule