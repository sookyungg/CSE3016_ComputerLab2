`timescale 1ns / 1ps

module bcdd(
 input A, B, C, D,
output E0, E1, E2, E3, E4, E5, E6, E7, E8, E9
);
assign E0 = ~A & ~B & ~C & ~D;
assign E1 = ~A & ~B & ~C & D;
assign E2 = ~A & ~B & C & ~D;
assign E3 = ~A & ~B & C & D;
assign E4 = ~A & B & ~C & ~D;
assign E5 = ~A & B & ~C & D;
assign E6 = ~A & B & C & ~D;
assign E7 = ~A & B & C & D;
assign E8 = A & ~B & ~C & ~D;
assign E9 = A & ~B & ~C & D;
endmodule
