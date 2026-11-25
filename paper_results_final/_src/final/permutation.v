//==============================================================================
// One-round combinational Ascon permutation (same logic as permutation.v;
// the round constant comes directly from the counter).
//   p[12] uses round constants f0 e1 d2 c3 b4 a5 96 87 78 69 5a 4b  (i = 0..11)
//   p[8]  uses round constants             b4 a5 96 87 78 69 5a 4b  (i = 0..7)
//==============================================================================
module permutation (
    input  [63:0] S0, S1, S2, S3, S4,
    input  [3:0]  i,           // round constant index: 0..11 for p[12], 4..11 for p[8]
    output [63:0] S_0, S_1, S_2, S_3, S_4
);
wire [7:0] rc8 = {~i, i};
wire [63:0] S2_ac = {S2[63:8], S2[7:0] ^ rc8};
wire [63:0] S0_sb, S1_sb, S2_sb, S3_sb, S4_sb;
genvar b;
generate for (b = 0; b < 64; b = b + 1) begin : G_SBOX
    wire [4:0] x = {S0[b], S1[b], S2_ac[b], S3[b], S4[b]};
    wire [4:0] y = sbox5(x);
    assign S0_sb[b] = y[4]; assign S1_sb[b] = y[3]; assign S2_sb[b] = y[2];
    assign S3_sb[b] = y[1]; assign S4_sb[b] = y[0];
end endgenerate
assign S_0 = S0_sb ^ {S0_sb[18:0], S0_sb[63:19]} ^ {S0_sb[27:0], S0_sb[63:28]};
assign S_1 = S1_sb ^ {S1_sb[60:0], S1_sb[63:61]} ^ {S1_sb[38:0], S1_sb[63:39]};
assign S_2 = S2_sb ^ {S2_sb[0],    S2_sb[63:1]}  ^ {S2_sb[5:0],  S2_sb[63:6]};
assign S_3 = S3_sb ^ {S3_sb[9:0],  S3_sb[63:10]} ^ {S3_sb[16:0], S3_sb[63:17]};
assign S_4 = S4_sb ^ {S4_sb[6:0],  S4_sb[63:7]}  ^ {S4_sb[40:0], S4_sb[63:41]};
function [4:0] sbox5;
input [4:0] x;
begin
case (x)
5'h00:sbox5=5'h04; 5'h01:sbox5=5'h0B; 5'h02:sbox5=5'h1F; 5'h03:sbox5=5'h14;
5'h04:sbox5=5'h1A; 5'h05:sbox5=5'h15; 5'h06:sbox5=5'h09; 5'h07:sbox5=5'h02;
5'h08:sbox5=5'h1B; 5'h09:sbox5=5'h05; 5'h0A:sbox5=5'h08; 5'h0B:sbox5=5'h12;
5'h0C:sbox5=5'h1D; 5'h0D:sbox5=5'h03; 5'h0E:sbox5=5'h06; 5'h0F:sbox5=5'h1C;
5'h10:sbox5=5'h1E; 5'h11:sbox5=5'h13; 5'h12:sbox5=5'h07; 5'h13:sbox5=5'h0E;
5'h14:sbox5=5'h00; 5'h15:sbox5=5'h0D; 5'h16:sbox5=5'h11; 5'h17:sbox5=5'h18;
5'h18:sbox5=5'h10; 5'h19:sbox5=5'h0C; 5'h1A:sbox5=5'h01; 5'h1B:sbox5=5'h19;
5'h1C:sbox5=5'h16; 5'h1D:sbox5=5'h0A; 5'h1E:sbox5=5'h0F; 5'h1F:sbox5=5'h17;
endcase
end
endfunction
endmodule
