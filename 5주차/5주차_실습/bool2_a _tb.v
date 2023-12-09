`timescale 1ns / 1ps
module bool2_a_tb;
reg a,b,c; wire d;
bool2_a u_bool2_a(.a(a), .b(b), .c(c), .d(d));
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