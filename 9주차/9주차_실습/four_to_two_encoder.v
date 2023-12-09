`timescale 1ns / 1ps
module four_to_two_encoder(A, B, C, D, E0, E1);
    input A, B, C, D;
    output E0, E1;
    assign E0 = A | B;
    assign E1 = A | C;
endmodule