`timescale 1ns/1ps
//==============================================================================
// OPTIMIZED VARIANT 2  (ports, protocol and cycle timing identical to the
// first Ascon-AEAD128 core; checked in lockstep against it on every clock)
// Changes:
//   1) Round counter is the round-constant index (0..11 or 4..11). The +4
//      adder and the variable end compare are gone; every permutation ends
//      at 11. Shorter round-constant path.
//   2) "First AD beat" flag is last_q (set by the nonce beat), not round_cnt[3].
//   3) The key XOR at the end of p[12] is shared by initialisation and
//      finalisation (S3_n, S4_n). S3,S4 hold the tag after finalisation, so the
//      tag compare is a plain 128-bit equality and the tag output reuses S3_n,S4_n.
//   4) Domain separation touches only bit 63 of S4.
//   5) K0,K1 and S0..S4 have no reset (control registers still have it).
//==============================================================================
//==============================================================================
// Ascon_top : Ascon-AEAD128 (NIST SP 800-232), encrypt + decrypt, buffer-free
//------------------------------------------------------------------------------
// Derived from "1)-with padding inside the core". Ascon-128 (rate 64) and the
// variant input are removed. Only the items that SP 800-232 changes are edited:
//   - IV            = 0x00001000808c0001
//   - byte order    = little-endian (byte 0 of every field is data_in[7:0])
//   - pad           = 0x01 in the first free byte (was 0x80)
//   - domain sep.   = MSB of S4 (was LSB)
// Rounds (12 / 8), round constants, key XOR positions and tag position are the
// same as before.
//
// BYTE ORDER ON THE BUS (little-endian, as in SP 800-232):
//   byte i of a 16-byte block  =  data_in[8*i +: 8]      (i = 0 .. 15)
//   Example: key bytes 00 01 02 .. 0F  ->  data_in = 128'h0F0E0D0C0B0A09080706050403020100
//   The same rule holds for key, nonce, AD, PT, CT and tag, input and output.
//
// BEAT PROTOCOL (one beat = data_valid high for one clock while data_ready = 1):
//   1) key    (16 bytes)
//   2) nonce  (16 bytes)
//   3) AD     : full beats with data_len = 16, then ONE last beat with
//               data_len = 0..15 (always sent; 0 = nothing left / empty AD)
//   4) PT/CT  : same rule as AD. Output beat on data_out in the same cycle.
//   5) encrypt: tag appears on data_out (data_out_valid = 1) at the end of the
//               final permutation.
//      decrypt: send the received tag as one beat. tag_match is valid in that
//               cycle (data_out_valid = 1).
//   data_len must be 0..16.
//   Decrypted plaintext is streamed before the tag is checked. The system must
//   not use it until tag_match = 1 (SP 800-232 Sec. 4.1.2, LWC HW API Sec. 2.8).
//==============================================================================
module Ascon_top #(
    parameter OUT_MASK = 1               // 1 = zero the pad region of the output beat, 0 = raw
)(
    input  wire          clk,
    input  wire          rst,
    input  wire [127:0]  data_in,
    input  wire [4:0]    data_len,      // valid bytes in this beat (0..16); 16 = full, less => last beat
    input  wire          data_valid,
    input  wire          mode,          // 0 = encrypt, 1 = decrypt
    output wire [127:0]  data_out,
    output wire          data_out_valid,
    output wire          data_ready,
    output wire          tag_match      // valid in the cycle data_out_valid pulses
);                                      // for the verify beat (decrypt mode only)

////////////////////////////////////////////////////
// IV (SP 800-232, Sec. 4.1.1)
////////////////////////////////////////////////////
localparam [63:0] IV = 64'h00001000808c0001;

////////////////////////////////////////////////////
// FSM encodings
////////////////////////////////////////////////////
localparam ST_WAIT = 1'b0, ST_PERM = 1'b1;
localparam [1:0] PH_KEY = 2'd0, PH_NONCE = 2'd1, PH_AD = 2'd2, PH_PT = 2'd3;

(* fsm_encoding = "sequential" *)
reg       st;
reg [1:0] phase;
reg [3:0] round_cnt;
reg       last_q;   // PH_AD/PH_PT (in ST_PERM): block just absorbed was the stream's last
                    // PH_KEY     (in ST_WAIT): received-tag beat pending

reg [63:0] K0, K1;
reg [63:0] S0, S1, S2, S3, S4;

wire [63:0] S0_p, S1_p, S2_p, S3_p, S4_p;
wire [63:0] din_0 = data_in[63:0];      // bytes 0..7  -> S0 lane
wire [63:0] din_1 = data_in[127:64];    // bytes 8..15 -> S1 lane

////////////////////////////////////////////////////
// Padding mask (shared by AD and PT)
//   keep[b] : bit b carries message data
//   pad[b]  : bit b is the single '1' pad bit (LSB of first non-data
//             byte = byte value 0x01); all-zero when the beat is full.
////////////////////////////////////////////////////
wire [15:0] keep_u, pad_u;
genvar u, b;
generate
    for (u = 0; u < 16; u = u + 1) begin : G_THERM
        assign keep_u[u] = (data_len > u);
        if (u == 0) assign pad_u[u] = ~keep_u[0];
        else        assign pad_u[u] = keep_u[u-1] & ~keep_u[u];
    end
endgenerate

wire [127:0] keep, pad;
generate
    for (b = 0; b < 128; b = b + 1) begin : G_MASK
        assign keep[b] = keep_u[b / 8];                         // byte 0 = bits 7:0
        assign pad[b]  = (b % 8 == 0) ? pad_u[b / 8] : 1'b0;
    end
endgenerate

// A beat shorter than the rate (16 bytes) is the last of its stream.
wire last = ~data_len[4];

// First AD beat? last_q is set to 1 by the nonce beat and is rewritten by
// every AD beat, so in PH_AD/ST_WAIT it is a free "no AD absorbed yet" flag.
wire ad_first = last_q;
wire ad_skip  = ad_first & ~keep_u[0];   // len == 0 on the first AD beat -> empty AD

////////////////////////////////////////////////////
// Absorb / replace
//   encrypt & AD : S ^ (din & keep) ^ pad
//   decrypt PT   : keep ? din : S ^ pad
////////////////////////////////////////////////////
wire        dec_pt = mode & (phase == PH_PT);
wire [63:0] keep_0 = keep[63:0],  keep_1 = keep[127:64];
wire [63:0] pad_0  = pad[63:0],   pad_1  = pad[127:64];

wire [63:0] abs_0 = (S0 & ~({64{dec_pt}} & keep_0)) ^ (din_0 & keep_0) ^ pad_0;
wire [63:0] abs_1 = (S1 & ~({64{dec_pt}} & keep_1)) ^ (din_1 & keep_1) ^ pad_1;

wire [63:0] text_0 = S0 ^ din_0;   // keystream xor for PT/CT output
wire [63:0] text_1 = S1 ^ din_1;

////////////////////////////////////////////////////
// Round control
//   p[8] : PH_AD, or a non-final PH_PT block.  p[12]: everything else.
////////////////////////////////////////////////////
//   round_cnt is the round-constant index itself: it starts at 0 for p[12]
//   and at 4 for p[8], and every permutation ends at 11. No adder, no
//   variable end compare.
wire       pb_perm    = phase[1] & ~(phase[0] & last_q);
wire       last_round = (round_cnt == 4'd11);

// Key XOR at the end of every p[12] (initialisation and finalisation).
// After finalisation S3,S4 therefore hold the tag T itself.
wire        xk   = last_round & ~pb_perm;
wire [63:0] S3_n = S3_p ^ (K0 & {64{xk}});
wire [63:0] S4_n = S4_p ^ (K1 & {64{xk}});

wire pt_out_en  = (st == ST_WAIT) && (phase == PH_PT) && data_valid;
wire tag_out_en = (st == ST_PERM) && (phase == PH_PT) && last_round
                  && last_q && (mode == 1'b0);
wire verify_done_en = (st == ST_WAIT) && (phase == PH_KEY)
                      && last_q && data_valid;

assign data_ready = (st == ST_WAIT);

////////////////////////////////////////////////////
// 128-bit tag compare. S3,S4 already hold T (key XOR folded into the
// last round of the final permutation). byte 0 = bits 7:0
////////////////////////////////////////////////////
wire   tag_eq    = ({S4, S3} == data_in);
assign tag_match = verify_done_en & tag_eq;

////////////////////////////////////////////////////
// Output mux (pad region of the data beat zeroed when OUT_MASK=1)
////////////////////////////////////////////////////
wire [127:0] okeep = OUT_MASK ? keep : {128{1'b1}};

assign data_out[ 63: 0] = tag_out_en ? S3_n
                        : (pt_out_en ? (text_0 & okeep[63:0])   : 64'd0);
assign data_out[127:64] = tag_out_en ? S4_n
                        : (pt_out_en ? (text_1 & okeep[127:64]) : 64'd0);

assign data_out_valid = pt_out_en | tag_out_en | verify_done_en;

////////////////////////////////////////////////////
// Permutation (one round, combinational)
////////////////////////////////////////////////////
permutation perm_u (
    .S0(S0), .S1(S1), .S2(S2), .S3(S3), .S4(S4),
    .i(round_cnt),
    .S_0(S0_p), .S_1(S1_p), .S_2(S2_p), .S_3(S3_p), .S_4(S4_p)
);

////////////////////////////////////////////////////
// Sequential logic
////////////////////////////////////////////////////
always @(posedge clk) begin
    if (rst) begin
        st <= ST_WAIT; phase <= PH_KEY; round_cnt <= 4'd0; last_q <= 1'b0;
        // K0,K1 and S0..S4 are NOT reset: the key beat writes K and the nonce
        // beat writes the whole state before either is used.
    end
    else if (st == ST_WAIT) begin
        if (data_valid) begin
            case (phase)
                PH_KEY: begin
                    if (last_q) last_q <= 1'b0;          // received-tag beat
                    else begin
                        K0 <= din_0; K1 <= din_1; phase <= PH_NONCE;
                    end
                end
                PH_NONCE: begin
                    S0 <= IV; S1 <= K0; S2 <= K1;
                    S3 <= din_0; S4 <= din_1;
                    last_q <= 1'b1;                      // "no AD absorbed yet"
                    round_cnt <= 4'd0; st <= ST_PERM;
                end
                PH_AD: begin
                    if (ad_skip) begin                   // empty AD: no block, no perm
                        S4[63] <= ~S4[63];
                        phase <= PH_PT;
                    end
                    else begin
                        S0 <= abs_0; S1 <= abs_1;
                        last_q <= last; round_cnt <= 4'd4; st <= ST_PERM;   // p[8]
                    end
                end
                default: begin // PH_PT (CT in decrypt)
                    S0 <= abs_0; S1 <= abs_1;
                    if (last) begin S2 <= S2 ^ K0; S3 <= S3 ^ K1; end
                    last_q <= last; round_cnt <= {1'b0, data_len[4], 2'b00};  // last: p[12], else p[8]
                    st <= ST_PERM;
                end
            endcase
        end
    end
    else begin // ST_PERM
        S0 <= S0_p; S1 <= S1_p; S2 <= S2_p; S3 <= S3_n; S4 <= S4_n;
        if (last_round) begin
            st <= ST_WAIT;
            case (phase)
                PH_NONCE: phase <= PH_AD;
                PH_AD: begin
                    if (last_q) begin S4[63] <= ~S4_p[63]; phase <= PH_PT; end
                end
                default: begin // PH_PT
                    if (last_q) begin phase <= PH_KEY; last_q <= mode; end
                end
            endcase
        end
        else round_cnt <= round_cnt + 1'b1;
    end
end

endmodule

