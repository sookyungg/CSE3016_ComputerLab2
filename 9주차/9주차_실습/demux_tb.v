`timescale 1ns / 1ps

module demux_tb;
reg S1, S0, A;
wire Y3, Y2, Y1, Y0;

demux u_demux (
.s1(S1), .s0(S0), .a(A),
.y3(Y3), .y2(Y2), .y1(Y1), .y0(Y0) );

initial begin
    S1 = 1'b1;
    S0 = 1'b1;
    A = 1'b1;
end
always @(S1 or S0 or A) begin
    A <= #20 ~A;
    S1 <= #50 ~S1;
    S0 <= #70 ~S0;
    
end
initial begin
    #1000
    $finish;
end
endmodule
