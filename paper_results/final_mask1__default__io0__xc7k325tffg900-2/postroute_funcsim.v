// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Sun Nov 22 23:27:38 2026
// Host        : DESKTOP-6OISTUM running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/fyp_revision/kintex7/paper_results/final_mask1__default__io0__xc7k325tffg900-2/postroute_funcsim.v
// Design      : Ascon_top
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* ECO_CHECKSUM = "64ef1eb7" *) (* IV = "64'b0000000000000000000100000000000010000000100011000000000000000001" *) (* OUT_MASK = "1" *) 
(* PH_AD = "2'b10" *) (* PH_KEY = "2'b00" *) (* PH_NONCE = "2'b01" *) 
(* PH_PT = "2'b11" *) (* ST_PERM = "1'b1" *) (* ST_WAIT = "1'b0" *) 
(* NotValidForBitStream *)
module Ascon_top
   (clk,
    rst,
    data_in,
    data_len,
    data_valid,
    mode,
    data_out,
    data_out_valid,
    data_ready,
    tag_match);
  input clk;
  input rst;
  input [127:0]data_in;
  input [4:0]data_len;
  input data_valid;
  input mode;
  output [127:0]data_out;
  output data_out_valid;
  output data_ready;
  output tag_match;

  wire K0;
  wire \K0_reg_n_0_[0] ;
  wire \K0_reg_n_0_[10] ;
  wire \K0_reg_n_0_[11] ;
  wire \K0_reg_n_0_[12] ;
  wire \K0_reg_n_0_[13] ;
  wire \K0_reg_n_0_[14] ;
  wire \K0_reg_n_0_[15] ;
  wire \K0_reg_n_0_[16] ;
  wire \K0_reg_n_0_[17] ;
  wire \K0_reg_n_0_[18] ;
  wire \K0_reg_n_0_[19] ;
  wire \K0_reg_n_0_[1] ;
  wire \K0_reg_n_0_[20] ;
  wire \K0_reg_n_0_[21] ;
  wire \K0_reg_n_0_[22] ;
  wire \K0_reg_n_0_[23] ;
  wire \K0_reg_n_0_[24] ;
  wire \K0_reg_n_0_[25] ;
  wire \K0_reg_n_0_[26] ;
  wire \K0_reg_n_0_[27] ;
  wire \K0_reg_n_0_[28] ;
  wire \K0_reg_n_0_[29] ;
  wire \K0_reg_n_0_[2] ;
  wire \K0_reg_n_0_[30] ;
  wire \K0_reg_n_0_[31] ;
  wire \K0_reg_n_0_[32] ;
  wire \K0_reg_n_0_[33] ;
  wire \K0_reg_n_0_[34] ;
  wire \K0_reg_n_0_[35] ;
  wire \K0_reg_n_0_[36] ;
  wire \K0_reg_n_0_[37] ;
  wire \K0_reg_n_0_[38] ;
  wire \K0_reg_n_0_[39] ;
  wire \K0_reg_n_0_[3] ;
  wire \K0_reg_n_0_[40] ;
  wire \K0_reg_n_0_[41] ;
  wire \K0_reg_n_0_[42] ;
  wire \K0_reg_n_0_[43] ;
  wire \K0_reg_n_0_[44] ;
  wire \K0_reg_n_0_[45] ;
  wire \K0_reg_n_0_[46] ;
  wire \K0_reg_n_0_[47] ;
  wire \K0_reg_n_0_[48] ;
  wire \K0_reg_n_0_[49] ;
  wire \K0_reg_n_0_[4] ;
  wire \K0_reg_n_0_[50] ;
  wire \K0_reg_n_0_[51] ;
  wire \K0_reg_n_0_[52] ;
  wire \K0_reg_n_0_[53] ;
  wire \K0_reg_n_0_[54] ;
  wire \K0_reg_n_0_[55] ;
  wire \K0_reg_n_0_[56] ;
  wire \K0_reg_n_0_[57] ;
  wire \K0_reg_n_0_[58] ;
  wire \K0_reg_n_0_[59] ;
  wire \K0_reg_n_0_[5] ;
  wire \K0_reg_n_0_[60] ;
  wire \K0_reg_n_0_[61] ;
  wire \K0_reg_n_0_[62] ;
  wire \K0_reg_n_0_[63] ;
  wire \K0_reg_n_0_[6] ;
  wire \K0_reg_n_0_[7] ;
  wire \K0_reg_n_0_[8] ;
  wire \K0_reg_n_0_[9] ;
  wire \K1_reg_n_0_[0] ;
  wire \K1_reg_n_0_[10] ;
  wire \K1_reg_n_0_[11] ;
  wire \K1_reg_n_0_[12] ;
  wire \K1_reg_n_0_[13] ;
  wire \K1_reg_n_0_[14] ;
  wire \K1_reg_n_0_[15] ;
  wire \K1_reg_n_0_[16] ;
  wire \K1_reg_n_0_[17] ;
  wire \K1_reg_n_0_[18] ;
  wire \K1_reg_n_0_[19] ;
  wire \K1_reg_n_0_[1] ;
  wire \K1_reg_n_0_[20] ;
  wire \K1_reg_n_0_[21] ;
  wire \K1_reg_n_0_[22] ;
  wire \K1_reg_n_0_[23] ;
  wire \K1_reg_n_0_[24] ;
  wire \K1_reg_n_0_[25] ;
  wire \K1_reg_n_0_[26] ;
  wire \K1_reg_n_0_[27] ;
  wire \K1_reg_n_0_[28] ;
  wire \K1_reg_n_0_[29] ;
  wire \K1_reg_n_0_[2] ;
  wire \K1_reg_n_0_[30] ;
  wire \K1_reg_n_0_[31] ;
  wire \K1_reg_n_0_[32] ;
  wire \K1_reg_n_0_[33] ;
  wire \K1_reg_n_0_[34] ;
  wire \K1_reg_n_0_[35] ;
  wire \K1_reg_n_0_[36] ;
  wire \K1_reg_n_0_[37] ;
  wire \K1_reg_n_0_[38] ;
  wire \K1_reg_n_0_[39] ;
  wire \K1_reg_n_0_[3] ;
  wire \K1_reg_n_0_[40] ;
  wire \K1_reg_n_0_[41] ;
  wire \K1_reg_n_0_[42] ;
  wire \K1_reg_n_0_[43] ;
  wire \K1_reg_n_0_[44] ;
  wire \K1_reg_n_0_[45] ;
  wire \K1_reg_n_0_[46] ;
  wire \K1_reg_n_0_[47] ;
  wire \K1_reg_n_0_[48] ;
  wire \K1_reg_n_0_[49] ;
  wire \K1_reg_n_0_[4] ;
  wire \K1_reg_n_0_[50] ;
  wire \K1_reg_n_0_[51] ;
  wire \K1_reg_n_0_[52] ;
  wire \K1_reg_n_0_[53] ;
  wire \K1_reg_n_0_[54] ;
  wire \K1_reg_n_0_[55] ;
  wire \K1_reg_n_0_[56] ;
  wire \K1_reg_n_0_[57] ;
  wire \K1_reg_n_0_[58] ;
  wire \K1_reg_n_0_[59] ;
  wire \K1_reg_n_0_[5] ;
  wire \K1_reg_n_0_[60] ;
  wire \K1_reg_n_0_[61] ;
  wire \K1_reg_n_0_[62] ;
  wire \K1_reg_n_0_[63] ;
  wire \K1_reg_n_0_[6] ;
  wire \K1_reg_n_0_[7] ;
  wire \K1_reg_n_0_[8] ;
  wire \K1_reg_n_0_[9] ;
  wire \S0[0]_i_1_n_0 ;
  wire \S0[0]_i_2_n_0 ;
  wire \S0[10]_i_1_n_0 ;
  wire \S0[10]_i_2_n_0 ;
  wire \S0[11]_i_1_n_0 ;
  wire \S0[11]_i_2_n_0 ;
  wire \S0[12]_i_1_n_0 ;
  wire \S0[12]_i_2_n_0 ;
  wire \S0[13]_i_1_n_0 ;
  wire \S0[13]_i_2_n_0 ;
  wire \S0[14]_i_1_n_0 ;
  wire \S0[14]_i_2_n_0 ;
  wire \S0[15]_i_1_n_0 ;
  wire \S0[15]_i_2_n_0 ;
  wire \S0[16]_i_1_n_0 ;
  wire \S0[16]_i_2_n_0 ;
  wire \S0[17]_i_1_n_0 ;
  wire \S0[17]_i_2_n_0 ;
  wire \S0[18]_i_1_n_0 ;
  wire \S0[18]_i_2_n_0 ;
  wire \S0[19]_i_1_n_0 ;
  wire \S0[19]_i_2_n_0 ;
  wire \S0[1]_i_1_n_0 ;
  wire \S0[1]_i_2_n_0 ;
  wire \S0[20]_i_1_n_0 ;
  wire \S0[20]_i_2_n_0 ;
  wire \S0[21]_i_1_n_0 ;
  wire \S0[21]_i_2_n_0 ;
  wire \S0[22]_i_1_n_0 ;
  wire \S0[22]_i_2_n_0 ;
  wire \S0[23]_i_1_n_0 ;
  wire \S0[23]_i_2_n_0 ;
  wire \S0[24]_i_1_n_0 ;
  wire \S0[24]_i_2_n_0 ;
  wire \S0[25]_i_1_n_0 ;
  wire \S0[25]_i_2_n_0 ;
  wire \S0[26]_i_1_n_0 ;
  wire \S0[26]_i_2_n_0 ;
  wire \S0[27]_i_1_n_0 ;
  wire \S0[27]_i_2_n_0 ;
  wire \S0[28]_i_1_n_0 ;
  wire \S0[28]_i_2_n_0 ;
  wire \S0[29]_i_1_n_0 ;
  wire \S0[29]_i_2_n_0 ;
  wire \S0[2]_i_1_n_0 ;
  wire \S0[2]_i_2_n_0 ;
  wire \S0[30]_i_1_n_0 ;
  wire \S0[30]_i_2_n_0 ;
  wire \S0[31]_i_1_n_0 ;
  wire \S0[31]_i_2_n_0 ;
  wire \S0[32]_i_1_n_0 ;
  wire \S0[32]_i_2_n_0 ;
  wire \S0[33]_i_1_n_0 ;
  wire \S0[33]_i_2_n_0 ;
  wire \S0[34]_i_1_n_0 ;
  wire \S0[34]_i_2_n_0 ;
  wire \S0[35]_i_1_n_0 ;
  wire \S0[35]_i_2_n_0 ;
  wire \S0[36]_i_1_n_0 ;
  wire \S0[36]_i_2_n_0 ;
  wire \S0[37]_i_1_n_0 ;
  wire \S0[37]_i_2_n_0 ;
  wire \S0[38]_i_1_n_0 ;
  wire \S0[38]_i_2_n_0 ;
  wire \S0[39]_i_1_n_0 ;
  wire \S0[39]_i_2_n_0 ;
  wire \S0[3]_i_1_n_0 ;
  wire \S0[3]_i_2_n_0 ;
  wire \S0[40]_i_1_n_0 ;
  wire \S0[40]_i_2_n_0 ;
  wire \S0[41]_i_1_n_0 ;
  wire \S0[41]_i_2_n_0 ;
  wire \S0[42]_i_1_n_0 ;
  wire \S0[42]_i_2_n_0 ;
  wire \S0[43]_i_1_n_0 ;
  wire \S0[43]_i_2_n_0 ;
  wire \S0[44]_i_1_n_0 ;
  wire \S0[44]_i_2_n_0 ;
  wire \S0[45]_i_1_n_0 ;
  wire \S0[45]_i_2_n_0 ;
  wire \S0[46]_i_1_n_0 ;
  wire \S0[46]_i_2_n_0 ;
  wire \S0[47]_i_1_n_0 ;
  wire \S0[47]_i_2_n_0 ;
  wire \S0[48]_i_1_n_0 ;
  wire \S0[48]_i_2_n_0 ;
  wire \S0[49]_i_1_n_0 ;
  wire \S0[49]_i_2_n_0 ;
  wire \S0[4]_i_1_n_0 ;
  wire \S0[4]_i_2_n_0 ;
  wire \S0[50]_i_1_n_0 ;
  wire \S0[50]_i_2_n_0 ;
  wire \S0[51]_i_1_n_0 ;
  wire \S0[51]_i_2_n_0 ;
  wire \S0[52]_i_1_n_0 ;
  wire \S0[52]_i_2_n_0 ;
  wire \S0[53]_i_1_n_0 ;
  wire \S0[53]_i_2_n_0 ;
  wire \S0[54]_i_1_n_0 ;
  wire \S0[54]_i_2_n_0 ;
  wire \S0[55]_i_1_n_0 ;
  wire \S0[55]_i_2_n_0 ;
  wire \S0[56]_i_1_n_0 ;
  wire \S0[57]_i_1_n_0 ;
  wire \S0[57]_i_2_n_0 ;
  wire \S0[58]_i_1_n_0 ;
  wire \S0[58]_i_2_n_0 ;
  wire \S0[59]_i_1_n_0 ;
  wire \S0[59]_i_2_n_0 ;
  wire \S0[5]_i_1_n_0 ;
  wire \S0[5]_i_2_n_0 ;
  wire \S0[60]_i_1_n_0 ;
  wire \S0[60]_i_2_n_0 ;
  wire \S0[61]_i_1_n_0 ;
  wire \S0[61]_i_2_n_0 ;
  wire \S0[62]_i_1_n_0 ;
  wire \S0[62]_i_2_n_0 ;
  wire \S0[63]_i_1_n_0 ;
  wire \S0[63]_i_2_n_0 ;
  wire \S0[63]_i_3_n_0 ;
  wire \S0[63]_i_4_n_0 ;
  wire \S0[6]_i_1_n_0 ;
  wire \S0[6]_i_2_n_0 ;
  wire \S0[7]_i_1_n_0 ;
  wire \S0[7]_i_2_n_0 ;
  wire \S0[8]_i_1_n_0 ;
  wire \S0[8]_i_2_n_0 ;
  wire \S0[9]_i_1_n_0 ;
  wire \S0[9]_i_2_n_0 ;
  wire \S0_reg_n_0_[0] ;
  wire \S0_reg_n_0_[10] ;
  wire \S0_reg_n_0_[11] ;
  wire \S0_reg_n_0_[12] ;
  wire \S0_reg_n_0_[13] ;
  wire \S0_reg_n_0_[14] ;
  wire \S0_reg_n_0_[15] ;
  wire \S0_reg_n_0_[16] ;
  wire \S0_reg_n_0_[17] ;
  wire \S0_reg_n_0_[18] ;
  wire \S0_reg_n_0_[19] ;
  wire \S0_reg_n_0_[1] ;
  wire \S0_reg_n_0_[20] ;
  wire \S0_reg_n_0_[21] ;
  wire \S0_reg_n_0_[22] ;
  wire \S0_reg_n_0_[23] ;
  wire \S0_reg_n_0_[24] ;
  wire \S0_reg_n_0_[25] ;
  wire \S0_reg_n_0_[26] ;
  wire \S0_reg_n_0_[27] ;
  wire \S0_reg_n_0_[28] ;
  wire \S0_reg_n_0_[29] ;
  wire \S0_reg_n_0_[2] ;
  wire \S0_reg_n_0_[30] ;
  wire \S0_reg_n_0_[31] ;
  wire \S0_reg_n_0_[32] ;
  wire \S0_reg_n_0_[33] ;
  wire \S0_reg_n_0_[34] ;
  wire \S0_reg_n_0_[35] ;
  wire \S0_reg_n_0_[36] ;
  wire \S0_reg_n_0_[37] ;
  wire \S0_reg_n_0_[38] ;
  wire \S0_reg_n_0_[39] ;
  wire \S0_reg_n_0_[3] ;
  wire \S0_reg_n_0_[40] ;
  wire \S0_reg_n_0_[41] ;
  wire \S0_reg_n_0_[42] ;
  wire \S0_reg_n_0_[43] ;
  wire \S0_reg_n_0_[44] ;
  wire \S0_reg_n_0_[45] ;
  wire \S0_reg_n_0_[46] ;
  wire \S0_reg_n_0_[47] ;
  wire \S0_reg_n_0_[48] ;
  wire \S0_reg_n_0_[49] ;
  wire \S0_reg_n_0_[4] ;
  wire \S0_reg_n_0_[50] ;
  wire \S0_reg_n_0_[51] ;
  wire \S0_reg_n_0_[52] ;
  wire \S0_reg_n_0_[53] ;
  wire \S0_reg_n_0_[54] ;
  wire \S0_reg_n_0_[55] ;
  wire \S0_reg_n_0_[56] ;
  wire \S0_reg_n_0_[57] ;
  wire \S0_reg_n_0_[58] ;
  wire \S0_reg_n_0_[59] ;
  wire \S0_reg_n_0_[5] ;
  wire \S0_reg_n_0_[60] ;
  wire \S0_reg_n_0_[61] ;
  wire \S0_reg_n_0_[62] ;
  wire \S0_reg_n_0_[63] ;
  wire \S0_reg_n_0_[6] ;
  wire \S0_reg_n_0_[7] ;
  wire \S0_reg_n_0_[8] ;
  wire \S0_reg_n_0_[9] ;
  wire \S1[0]_i_1_n_0 ;
  wire \S1[10]_i_1_n_0 ;
  wire \S1[10]_i_2_n_0 ;
  wire \S1[11]_i_1_n_0 ;
  wire \S1[11]_i_2_n_0 ;
  wire \S1[12]_i_1_n_0 ;
  wire \S1[12]_i_2_n_0 ;
  wire \S1[13]_i_1_n_0 ;
  wire \S1[13]_i_2_n_0 ;
  wire \S1[14]_i_1_n_0 ;
  wire \S1[14]_i_2_n_0 ;
  wire \S1[15]_i_1_n_0 ;
  wire \S1[15]_i_2_n_0 ;
  wire \S1[16]_i_1_n_0 ;
  wire \S1[16]_i_2_n_0 ;
  wire \S1[16]_i_3_n_0 ;
  wire \S1[17]_i_1_n_0 ;
  wire \S1[17]_i_2_n_0 ;
  wire \S1[18]_i_1_n_0 ;
  wire \S1[18]_i_2_n_0 ;
  wire \S1[19]_i_1_n_0 ;
  wire \S1[19]_i_2_n_0 ;
  wire \S1[1]_i_1_n_0 ;
  wire \S1[1]_i_2_n_0 ;
  wire \S1[20]_i_1_n_0 ;
  wire \S1[20]_i_2_n_0 ;
  wire \S1[21]_i_1_n_0 ;
  wire \S1[21]_i_2_n_0 ;
  wire \S1[22]_i_1_n_0 ;
  wire \S1[22]_i_2_n_0 ;
  wire \S1[23]_i_1_n_0 ;
  wire \S1[23]_i_2_n_0 ;
  wire \S1[24]_i_1_n_0 ;
  wire \S1[24]_i_2_n_0 ;
  wire \S1[24]_i_3_n_0 ;
  wire \S1[25]_i_1_n_0 ;
  wire \S1[25]_i_2_n_0 ;
  wire \S1[26]_i_1_n_0 ;
  wire \S1[26]_i_2_n_0 ;
  wire \S1[27]_i_1_n_0 ;
  wire \S1[27]_i_2_n_0 ;
  wire \S1[28]_i_1_n_0 ;
  wire \S1[28]_i_2_n_0 ;
  wire \S1[29]_i_1_n_0 ;
  wire \S1[29]_i_2_n_0 ;
  wire \S1[2]_i_1_n_0 ;
  wire \S1[2]_i_2_n_0 ;
  wire \S1[30]_i_1_n_0 ;
  wire \S1[30]_i_2_n_0 ;
  wire \S1[31]_i_1_n_0 ;
  wire \S1[31]_i_2_n_0 ;
  wire \S1[32]_i_1_n_0 ;
  wire \S1[32]_i_2_n_0 ;
  wire \S1[32]_i_3_n_0 ;
  wire \S1[33]_i_1_n_0 ;
  wire \S1[33]_i_2_n_0 ;
  wire \S1[34]_i_1_n_0 ;
  wire \S1[34]_i_2_n_0 ;
  wire \S1[35]_i_1_n_0 ;
  wire \S1[35]_i_2_n_0 ;
  wire \S1[36]_i_1_n_0 ;
  wire \S1[36]_i_2_n_0 ;
  wire \S1[37]_i_1_n_0 ;
  wire \S1[37]_i_2_n_0 ;
  wire \S1[38]_i_1_n_0 ;
  wire \S1[38]_i_2_n_0 ;
  wire \S1[39]_i_1_n_0 ;
  wire \S1[39]_i_2_n_0 ;
  wire \S1[3]_i_1_n_0 ;
  wire \S1[3]_i_2_n_0 ;
  wire \S1[40]_i_1_n_0 ;
  wire \S1[40]_i_2_n_0 ;
  wire \S1[40]_i_3_n_0 ;
  wire \S1[41]_i_1_n_0 ;
  wire \S1[41]_i_2_n_0 ;
  wire \S1[42]_i_1_n_0 ;
  wire \S1[42]_i_2_n_0 ;
  wire \S1[43]_i_1_n_0 ;
  wire \S1[43]_i_2_n_0 ;
  wire \S1[44]_i_1_n_0 ;
  wire \S1[44]_i_2_n_0 ;
  wire \S1[45]_i_1_n_0 ;
  wire \S1[45]_i_2_n_0 ;
  wire \S1[46]_i_1_n_0 ;
  wire \S1[46]_i_2_n_0 ;
  wire \S1[47]_i_1_n_0 ;
  wire \S1[47]_i_2_n_0 ;
  wire \S1[48]_i_1_n_0 ;
  wire \S1[48]_i_2_n_0 ;
  wire \S1[48]_i_3_n_0 ;
  wire \S1[49]_i_1_n_0 ;
  wire \S1[49]_i_2_n_0 ;
  wire \S1[4]_i_1_n_0 ;
  wire \S1[4]_i_2_n_0 ;
  wire \S1[50]_i_1_n_0 ;
  wire \S1[50]_i_2_n_0 ;
  wire \S1[51]_i_1_n_0 ;
  wire \S1[51]_i_2_n_0 ;
  wire \S1[52]_i_1_n_0 ;
  wire \S1[52]_i_2_n_0 ;
  wire \S1[53]_i_1_n_0 ;
  wire \S1[53]_i_2_n_0 ;
  wire \S1[54]_i_1_n_0 ;
  wire \S1[54]_i_2_n_0 ;
  wire \S1[55]_i_1_n_0 ;
  wire \S1[55]_i_2_n_0 ;
  wire \S1[56]_i_1_n_0 ;
  wire \S1[56]_i_2_n_0 ;
  wire \S1[57]_i_1_n_0 ;
  wire \S1[57]_i_2_n_0 ;
  wire \S1[58]_i_1_n_0 ;
  wire \S1[58]_i_2_n_0 ;
  wire \S1[59]_i_1_n_0 ;
  wire \S1[59]_i_2_n_0 ;
  wire \S1[5]_i_1_n_0 ;
  wire \S1[5]_i_2_n_0 ;
  wire \S1[60]_i_1_n_0 ;
  wire \S1[60]_i_2_n_0 ;
  wire \S1[61]_i_1_n_0 ;
  wire \S1[61]_i_2_n_0 ;
  wire \S1[62]_i_1_n_0 ;
  wire \S1[62]_i_2_n_0 ;
  wire \S1[63]_i_1_n_0 ;
  wire \S1[63]_i_2_n_0 ;
  wire \S1[6]_i_1_n_0 ;
  wire \S1[6]_i_2_n_0 ;
  wire \S1[7]_i_1_n_0 ;
  wire \S1[7]_i_2_n_0 ;
  wire \S1[8]_i_1_n_0 ;
  wire \S1[8]_i_2_n_0 ;
  wire \S1[8]_i_3_n_0 ;
  wire \S1[9]_i_1_n_0 ;
  wire \S1[9]_i_2_n_0 ;
  wire [0:0]S1_p;
  wire \S1_reg_n_0_[0] ;
  wire \S1_reg_n_0_[10] ;
  wire \S1_reg_n_0_[11] ;
  wire \S1_reg_n_0_[12] ;
  wire \S1_reg_n_0_[13] ;
  wire \S1_reg_n_0_[14] ;
  wire \S1_reg_n_0_[15] ;
  wire \S1_reg_n_0_[16] ;
  wire \S1_reg_n_0_[17] ;
  wire \S1_reg_n_0_[18] ;
  wire \S1_reg_n_0_[19] ;
  wire \S1_reg_n_0_[1] ;
  wire \S1_reg_n_0_[20] ;
  wire \S1_reg_n_0_[21] ;
  wire \S1_reg_n_0_[22] ;
  wire \S1_reg_n_0_[23] ;
  wire \S1_reg_n_0_[24] ;
  wire \S1_reg_n_0_[25] ;
  wire \S1_reg_n_0_[26] ;
  wire \S1_reg_n_0_[27] ;
  wire \S1_reg_n_0_[28] ;
  wire \S1_reg_n_0_[29] ;
  wire \S1_reg_n_0_[2] ;
  wire \S1_reg_n_0_[30] ;
  wire \S1_reg_n_0_[31] ;
  wire \S1_reg_n_0_[32] ;
  wire \S1_reg_n_0_[33] ;
  wire \S1_reg_n_0_[34] ;
  wire \S1_reg_n_0_[35] ;
  wire \S1_reg_n_0_[36] ;
  wire \S1_reg_n_0_[37] ;
  wire \S1_reg_n_0_[38] ;
  wire \S1_reg_n_0_[39] ;
  wire \S1_reg_n_0_[3] ;
  wire \S1_reg_n_0_[40] ;
  wire \S1_reg_n_0_[41] ;
  wire \S1_reg_n_0_[42] ;
  wire \S1_reg_n_0_[43] ;
  wire \S1_reg_n_0_[44] ;
  wire \S1_reg_n_0_[45] ;
  wire \S1_reg_n_0_[46] ;
  wire \S1_reg_n_0_[47] ;
  wire \S1_reg_n_0_[48] ;
  wire \S1_reg_n_0_[49] ;
  wire \S1_reg_n_0_[4] ;
  wire \S1_reg_n_0_[50] ;
  wire \S1_reg_n_0_[51] ;
  wire \S1_reg_n_0_[52] ;
  wire \S1_reg_n_0_[53] ;
  wire \S1_reg_n_0_[54] ;
  wire \S1_reg_n_0_[55] ;
  wire \S1_reg_n_0_[56] ;
  wire \S1_reg_n_0_[57] ;
  wire \S1_reg_n_0_[58] ;
  wire \S1_reg_n_0_[59] ;
  wire \S1_reg_n_0_[5] ;
  wire \S1_reg_n_0_[60] ;
  wire \S1_reg_n_0_[61] ;
  wire \S1_reg_n_0_[62] ;
  wire \S1_reg_n_0_[63] ;
  wire \S1_reg_n_0_[6] ;
  wire \S1_reg_n_0_[7] ;
  wire \S1_reg_n_0_[8] ;
  wire \S1_reg_n_0_[9] ;
  wire \S2[0]_i_1_n_0 ;
  wire \S2[0]_i_2_n_0 ;
  wire \S2[10]_i_1_n_0 ;
  wire \S2[10]_i_2_n_0 ;
  wire \S2[11]_i_1_n_0 ;
  wire \S2[11]_i_2_n_0 ;
  wire \S2[12]_i_1_n_0 ;
  wire \S2[12]_i_2_n_0 ;
  wire \S2[13]_i_1_n_0 ;
  wire \S2[13]_i_2_n_0 ;
  wire \S2[14]_i_1_n_0 ;
  wire \S2[14]_i_2_n_0 ;
  wire \S2[15]_i_1_n_0 ;
  wire \S2[15]_i_2_n_0 ;
  wire \S2[16]_i_1_n_0 ;
  wire \S2[16]_i_2_n_0 ;
  wire \S2[17]_i_1_n_0 ;
  wire \S2[17]_i_2_n_0 ;
  wire \S2[18]_i_1_n_0 ;
  wire \S2[18]_i_2_n_0 ;
  wire \S2[19]_i_1_n_0 ;
  wire \S2[19]_i_2_n_0 ;
  wire \S2[1]_i_1_n_0 ;
  wire \S2[1]_i_2_n_0 ;
  wire \S2[20]_i_1_n_0 ;
  wire \S2[20]_i_2_n_0 ;
  wire \S2[21]_i_1_n_0 ;
  wire \S2[21]_i_2_n_0 ;
  wire \S2[22]_i_1_n_0 ;
  wire \S2[22]_i_2_n_0 ;
  wire \S2[23]_i_1_n_0 ;
  wire \S2[23]_i_2_n_0 ;
  wire \S2[24]_i_1_n_0 ;
  wire \S2[24]_i_2_n_0 ;
  wire \S2[25]_i_1_n_0 ;
  wire \S2[25]_i_2_n_0 ;
  wire \S2[26]_i_1_n_0 ;
  wire \S2[26]_i_2_n_0 ;
  wire \S2[27]_i_1_n_0 ;
  wire \S2[27]_i_2_n_0 ;
  wire \S2[28]_i_1_n_0 ;
  wire \S2[28]_i_2_n_0 ;
  wire \S2[29]_i_1_n_0 ;
  wire \S2[29]_i_2_n_0 ;
  wire \S2[2]_i_1_n_0 ;
  wire \S2[2]_i_2_n_0 ;
  wire \S2[30]_i_1_n_0 ;
  wire \S2[30]_i_2_n_0 ;
  wire \S2[31]_i_1_n_0 ;
  wire \S2[31]_i_2_n_0 ;
  wire \S2[32]_i_1_n_0 ;
  wire \S2[32]_i_2_n_0 ;
  wire \S2[33]_i_1_n_0 ;
  wire \S2[33]_i_2_n_0 ;
  wire \S2[34]_i_1_n_0 ;
  wire \S2[34]_i_2_n_0 ;
  wire \S2[35]_i_1_n_0 ;
  wire \S2[35]_i_2_n_0 ;
  wire \S2[36]_i_1_n_0 ;
  wire \S2[36]_i_2_n_0 ;
  wire \S2[37]_i_1_n_0 ;
  wire \S2[37]_i_2_n_0 ;
  wire \S2[38]_i_1_n_0 ;
  wire \S2[38]_i_2_n_0 ;
  wire \S2[39]_i_1_n_0 ;
  wire \S2[39]_i_2_n_0 ;
  wire \S2[3]_i_1_n_0 ;
  wire \S2[3]_i_2_n_0 ;
  wire \S2[40]_i_1_n_0 ;
  wire \S2[40]_i_2_n_0 ;
  wire \S2[41]_i_1_n_0 ;
  wire \S2[41]_i_2_n_0 ;
  wire \S2[42]_i_1_n_0 ;
  wire \S2[42]_i_2_n_0 ;
  wire \S2[43]_i_1_n_0 ;
  wire \S2[43]_i_2_n_0 ;
  wire \S2[44]_i_1_n_0 ;
  wire \S2[44]_i_2_n_0 ;
  wire \S2[45]_i_1_n_0 ;
  wire \S2[45]_i_2_n_0 ;
  wire \S2[46]_i_1_n_0 ;
  wire \S2[46]_i_2_n_0 ;
  wire \S2[47]_i_1_n_0 ;
  wire \S2[47]_i_2_n_0 ;
  wire \S2[48]_i_1_n_0 ;
  wire \S2[48]_i_2_n_0 ;
  wire \S2[49]_i_1_n_0 ;
  wire \S2[49]_i_2_n_0 ;
  wire \S2[4]_i_1_n_0 ;
  wire \S2[4]_i_2_n_0 ;
  wire \S2[50]_i_1_n_0 ;
  wire \S2[50]_i_2_n_0 ;
  wire \S2[51]_i_1_n_0 ;
  wire \S2[51]_i_2_n_0 ;
  wire \S2[52]_i_1_n_0 ;
  wire \S2[52]_i_2_n_0 ;
  wire \S2[53]_i_1_n_0 ;
  wire \S2[53]_i_2_n_0 ;
  wire \S2[54]_i_1_n_0 ;
  wire \S2[54]_i_2_n_0 ;
  wire \S2[55]_i_1_n_0 ;
  wire \S2[55]_i_2_n_0 ;
  wire \S2[56]_i_1_n_0 ;
  wire \S2[56]_i_2_n_0 ;
  wire \S2[57]_i_1_n_0 ;
  wire \S2[57]_i_2_n_0 ;
  wire \S2[58]_i_1_n_0 ;
  wire \S2[58]_i_2_n_0 ;
  wire \S2[59]_i_1_n_0 ;
  wire \S2[59]_i_2_n_0 ;
  wire \S2[5]_i_1_n_0 ;
  wire \S2[5]_i_2_n_0 ;
  wire \S2[60]_i_1_n_0 ;
  wire \S2[60]_i_2_n_0 ;
  wire \S2[61]_i_1_n_0 ;
  wire \S2[61]_i_2_n_0 ;
  wire \S2[62]_i_1_n_0 ;
  wire \S2[62]_i_2_n_0 ;
  wire \S2[63]_i_1_n_0 ;
  wire \S2[63]_i_2_n_0 ;
  wire \S2[6]_i_1_n_0 ;
  wire \S2[6]_i_2_n_0 ;
  wire \S2[7]_i_1_n_0 ;
  wire \S2[7]_i_2_n_0 ;
  wire \S2[8]_i_1_n_0 ;
  wire \S2[8]_i_2_n_0 ;
  wire \S2[9]_i_1_n_0 ;
  wire \S2[9]_i_2_n_0 ;
  wire \S2_reg_n_0_[0] ;
  wire \S2_reg_n_0_[10] ;
  wire \S2_reg_n_0_[11] ;
  wire \S2_reg_n_0_[12] ;
  wire \S2_reg_n_0_[13] ;
  wire \S2_reg_n_0_[14] ;
  wire \S2_reg_n_0_[15] ;
  wire \S2_reg_n_0_[16] ;
  wire \S2_reg_n_0_[17] ;
  wire \S2_reg_n_0_[18] ;
  wire \S2_reg_n_0_[19] ;
  wire \S2_reg_n_0_[1] ;
  wire \S2_reg_n_0_[20] ;
  wire \S2_reg_n_0_[21] ;
  wire \S2_reg_n_0_[22] ;
  wire \S2_reg_n_0_[23] ;
  wire \S2_reg_n_0_[24] ;
  wire \S2_reg_n_0_[25] ;
  wire \S2_reg_n_0_[26] ;
  wire \S2_reg_n_0_[27] ;
  wire \S2_reg_n_0_[28] ;
  wire \S2_reg_n_0_[29] ;
  wire \S2_reg_n_0_[2] ;
  wire \S2_reg_n_0_[30] ;
  wire \S2_reg_n_0_[31] ;
  wire \S2_reg_n_0_[32] ;
  wire \S2_reg_n_0_[33] ;
  wire \S2_reg_n_0_[34] ;
  wire \S2_reg_n_0_[35] ;
  wire \S2_reg_n_0_[36] ;
  wire \S2_reg_n_0_[37] ;
  wire \S2_reg_n_0_[38] ;
  wire \S2_reg_n_0_[39] ;
  wire \S2_reg_n_0_[3] ;
  wire \S2_reg_n_0_[40] ;
  wire \S2_reg_n_0_[41] ;
  wire \S2_reg_n_0_[42] ;
  wire \S2_reg_n_0_[43] ;
  wire \S2_reg_n_0_[44] ;
  wire \S2_reg_n_0_[45] ;
  wire \S2_reg_n_0_[46] ;
  wire \S2_reg_n_0_[47] ;
  wire \S2_reg_n_0_[48] ;
  wire \S2_reg_n_0_[49] ;
  wire \S2_reg_n_0_[4] ;
  wire \S2_reg_n_0_[50] ;
  wire \S2_reg_n_0_[51] ;
  wire \S2_reg_n_0_[52] ;
  wire \S2_reg_n_0_[53] ;
  wire \S2_reg_n_0_[54] ;
  wire \S2_reg_n_0_[55] ;
  wire \S2_reg_n_0_[56] ;
  wire \S2_reg_n_0_[57] ;
  wire \S2_reg_n_0_[58] ;
  wire \S2_reg_n_0_[59] ;
  wire \S2_reg_n_0_[5] ;
  wire \S2_reg_n_0_[60] ;
  wire \S2_reg_n_0_[61] ;
  wire \S2_reg_n_0_[62] ;
  wire \S2_reg_n_0_[63] ;
  wire \S2_reg_n_0_[6] ;
  wire \S2_reg_n_0_[7] ;
  wire \S2_reg_n_0_[8] ;
  wire \S2_reg_n_0_[9] ;
  wire \S3[0]_i_1_n_0 ;
  wire \S3[10]_i_1_n_0 ;
  wire \S3[11]_i_1_n_0 ;
  wire \S3[12]_i_1_n_0 ;
  wire \S3[13]_i_1_n_0 ;
  wire \S3[14]_i_1_n_0 ;
  wire \S3[15]_i_1_n_0 ;
  wire \S3[16]_i_1_n_0 ;
  wire \S3[17]_i_1_n_0 ;
  wire \S3[18]_i_1_n_0 ;
  wire \S3[19]_i_1_n_0 ;
  wire \S3[1]_i_1_n_0 ;
  wire \S3[20]_i_1_n_0 ;
  wire \S3[21]_i_1_n_0 ;
  wire \S3[22]_i_1_n_0 ;
  wire \S3[23]_i_1_n_0 ;
  wire \S3[24]_i_1_n_0 ;
  wire \S3[25]_i_1_n_0 ;
  wire \S3[26]_i_1_n_0 ;
  wire \S3[27]_i_1_n_0 ;
  wire \S3[28]_i_1_n_0 ;
  wire \S3[29]_i_1_n_0 ;
  wire \S3[2]_i_1_n_0 ;
  wire \S3[30]_i_1_n_0 ;
  wire \S3[31]_i_1_n_0 ;
  wire \S3[32]_i_1_n_0 ;
  wire \S3[33]_i_1_n_0 ;
  wire \S3[34]_i_1_n_0 ;
  wire \S3[35]_i_1_n_0 ;
  wire \S3[36]_i_1_n_0 ;
  wire \S3[37]_i_1_n_0 ;
  wire \S3[38]_i_1_n_0 ;
  wire \S3[39]_i_1_n_0 ;
  wire \S3[3]_i_1_n_0 ;
  wire \S3[40]_i_1_n_0 ;
  wire \S3[41]_i_1_n_0 ;
  wire \S3[42]_i_1_n_0 ;
  wire \S3[43]_i_1_n_0 ;
  wire \S3[44]_i_1_n_0 ;
  wire \S3[45]_i_1_n_0 ;
  wire \S3[46]_i_1_n_0 ;
  wire \S3[47]_i_1_n_0 ;
  wire \S3[48]_i_1_n_0 ;
  wire \S3[49]_i_1_n_0 ;
  wire \S3[4]_i_1_n_0 ;
  wire \S3[50]_i_1_n_0 ;
  wire \S3[51]_i_1_n_0 ;
  wire \S3[52]_i_1_n_0 ;
  wire \S3[53]_i_1_n_0 ;
  wire \S3[54]_i_1_n_0 ;
  wire \S3[55]_i_1_n_0 ;
  wire \S3[56]_i_1_n_0 ;
  wire \S3[57]_i_1_n_0 ;
  wire \S3[58]_i_1_n_0 ;
  wire \S3[59]_i_1_n_0 ;
  wire \S3[5]_i_1_n_0 ;
  wire \S3[60]_i_1_n_0 ;
  wire \S3[61]_i_1_n_0 ;
  wire \S3[62]_i_1_n_0 ;
  wire \S3[63]_i_1_n_0 ;
  wire \S3[63]_i_2_n_0 ;
  wire \S3[6]_i_1_n_0 ;
  wire \S3[7]_i_1_n_0 ;
  wire \S3[8]_i_1_n_0 ;
  wire \S3[9]_i_1_n_0 ;
  wire [63:0]S3_n;
  wire \S3_reg_n_0_[0] ;
  wire \S3_reg_n_0_[10] ;
  wire \S3_reg_n_0_[11] ;
  wire \S3_reg_n_0_[12] ;
  wire \S3_reg_n_0_[13] ;
  wire \S3_reg_n_0_[14] ;
  wire \S3_reg_n_0_[15] ;
  wire \S3_reg_n_0_[16] ;
  wire \S3_reg_n_0_[17] ;
  wire \S3_reg_n_0_[18] ;
  wire \S3_reg_n_0_[19] ;
  wire \S3_reg_n_0_[1] ;
  wire \S3_reg_n_0_[20] ;
  wire \S3_reg_n_0_[21] ;
  wire \S3_reg_n_0_[22] ;
  wire \S3_reg_n_0_[23] ;
  wire \S3_reg_n_0_[24] ;
  wire \S3_reg_n_0_[25] ;
  wire \S3_reg_n_0_[26] ;
  wire \S3_reg_n_0_[27] ;
  wire \S3_reg_n_0_[28] ;
  wire \S3_reg_n_0_[29] ;
  wire \S3_reg_n_0_[2] ;
  wire \S3_reg_n_0_[30] ;
  wire \S3_reg_n_0_[31] ;
  wire \S3_reg_n_0_[32] ;
  wire \S3_reg_n_0_[33] ;
  wire \S3_reg_n_0_[34] ;
  wire \S3_reg_n_0_[35] ;
  wire \S3_reg_n_0_[36] ;
  wire \S3_reg_n_0_[37] ;
  wire \S3_reg_n_0_[38] ;
  wire \S3_reg_n_0_[39] ;
  wire \S3_reg_n_0_[3] ;
  wire \S3_reg_n_0_[40] ;
  wire \S3_reg_n_0_[41] ;
  wire \S3_reg_n_0_[42] ;
  wire \S3_reg_n_0_[43] ;
  wire \S3_reg_n_0_[44] ;
  wire \S3_reg_n_0_[45] ;
  wire \S3_reg_n_0_[46] ;
  wire \S3_reg_n_0_[47] ;
  wire \S3_reg_n_0_[48] ;
  wire \S3_reg_n_0_[49] ;
  wire \S3_reg_n_0_[4] ;
  wire \S3_reg_n_0_[50] ;
  wire \S3_reg_n_0_[51] ;
  wire \S3_reg_n_0_[52] ;
  wire \S3_reg_n_0_[53] ;
  wire \S3_reg_n_0_[54] ;
  wire \S3_reg_n_0_[55] ;
  wire \S3_reg_n_0_[56] ;
  wire \S3_reg_n_0_[57] ;
  wire \S3_reg_n_0_[58] ;
  wire \S3_reg_n_0_[59] ;
  wire \S3_reg_n_0_[5] ;
  wire \S3_reg_n_0_[60] ;
  wire \S3_reg_n_0_[61] ;
  wire \S3_reg_n_0_[62] ;
  wire \S3_reg_n_0_[63] ;
  wire \S3_reg_n_0_[6] ;
  wire \S3_reg_n_0_[7] ;
  wire \S3_reg_n_0_[8] ;
  wire \S3_reg_n_0_[9] ;
  wire \S4[62]_i_1_n_0 ;
  wire \S4[63]_i_1_n_0 ;
  wire \S4[63]_i_2_n_0 ;
  wire \S4[63]_i_3_n_0 ;
  wire [63:63]S4_p;
  wire \S4_reg_n_0_[0] ;
  wire \S4_reg_n_0_[10] ;
  wire \S4_reg_n_0_[11] ;
  wire \S4_reg_n_0_[12] ;
  wire \S4_reg_n_0_[13] ;
  wire \S4_reg_n_0_[14] ;
  wire \S4_reg_n_0_[15] ;
  wire \S4_reg_n_0_[16] ;
  wire \S4_reg_n_0_[17] ;
  wire \S4_reg_n_0_[18] ;
  wire \S4_reg_n_0_[19] ;
  wire \S4_reg_n_0_[1] ;
  wire \S4_reg_n_0_[20] ;
  wire \S4_reg_n_0_[21] ;
  wire \S4_reg_n_0_[22] ;
  wire \S4_reg_n_0_[23] ;
  wire \S4_reg_n_0_[24] ;
  wire \S4_reg_n_0_[25] ;
  wire \S4_reg_n_0_[26] ;
  wire \S4_reg_n_0_[27] ;
  wire \S4_reg_n_0_[28] ;
  wire \S4_reg_n_0_[29] ;
  wire \S4_reg_n_0_[2] ;
  wire \S4_reg_n_0_[30] ;
  wire \S4_reg_n_0_[31] ;
  wire \S4_reg_n_0_[32] ;
  wire \S4_reg_n_0_[33] ;
  wire \S4_reg_n_0_[34] ;
  wire \S4_reg_n_0_[35] ;
  wire \S4_reg_n_0_[36] ;
  wire \S4_reg_n_0_[37] ;
  wire \S4_reg_n_0_[38] ;
  wire \S4_reg_n_0_[39] ;
  wire \S4_reg_n_0_[3] ;
  wire \S4_reg_n_0_[40] ;
  wire \S4_reg_n_0_[41] ;
  wire \S4_reg_n_0_[42] ;
  wire \S4_reg_n_0_[43] ;
  wire \S4_reg_n_0_[44] ;
  wire \S4_reg_n_0_[45] ;
  wire \S4_reg_n_0_[46] ;
  wire \S4_reg_n_0_[47] ;
  wire \S4_reg_n_0_[48] ;
  wire \S4_reg_n_0_[49] ;
  wire \S4_reg_n_0_[4] ;
  wire \S4_reg_n_0_[50] ;
  wire \S4_reg_n_0_[51] ;
  wire \S4_reg_n_0_[52] ;
  wire \S4_reg_n_0_[53] ;
  wire \S4_reg_n_0_[54] ;
  wire \S4_reg_n_0_[55] ;
  wire \S4_reg_n_0_[56] ;
  wire \S4_reg_n_0_[57] ;
  wire \S4_reg_n_0_[58] ;
  wire \S4_reg_n_0_[59] ;
  wire \S4_reg_n_0_[5] ;
  wire \S4_reg_n_0_[60] ;
  wire \S4_reg_n_0_[61] ;
  wire \S4_reg_n_0_[62] ;
  wire \S4_reg_n_0_[63] ;
  wire \S4_reg_n_0_[6] ;
  wire \S4_reg_n_0_[7] ;
  wire \S4_reg_n_0_[8] ;
  wire \S4_reg_n_0_[9] ;
  wire [56:56]abs_0;
  wire [0:0]abs_1;
  wire [56:56]abs_111_out;
  wire clk;
  wire [127:0]data_in;
  wire [4:0]data_len;
  wire [127:0]data_out;
  wire \data_out[100]_INST_0_i_1_n_0 ;
  wire \data_out[101]_INST_0_i_1_n_0 ;
  wire \data_out[102]_INST_0_i_1_n_0 ;
  wire \data_out[103]_INST_0_i_1_n_0 ;
  wire \data_out[104]_INST_0_i_1_n_0 ;
  wire \data_out[105]_INST_0_i_1_n_0 ;
  wire \data_out[106]_INST_0_i_1_n_0 ;
  wire \data_out[107]_INST_0_i_1_n_0 ;
  wire \data_out[108]_INST_0_i_1_n_0 ;
  wire \data_out[109]_INST_0_i_1_n_0 ;
  wire \data_out[110]_INST_0_i_1_n_0 ;
  wire \data_out[111]_INST_0_i_1_n_0 ;
  wire \data_out[112]_INST_0_i_1_n_0 ;
  wire \data_out[113]_INST_0_i_1_n_0 ;
  wire \data_out[114]_INST_0_i_1_n_0 ;
  wire \data_out[115]_INST_0_i_1_n_0 ;
  wire \data_out[116]_INST_0_i_1_n_0 ;
  wire \data_out[117]_INST_0_i_1_n_0 ;
  wire \data_out[118]_INST_0_i_1_n_0 ;
  wire \data_out[119]_INST_0_i_1_n_0 ;
  wire \data_out[120]_INST_0_i_1_n_0 ;
  wire \data_out[121]_INST_0_i_1_n_0 ;
  wire \data_out[122]_INST_0_i_1_n_0 ;
  wire \data_out[123]_INST_0_i_1_n_0 ;
  wire \data_out[124]_INST_0_i_1_n_0 ;
  wire \data_out[125]_INST_0_i_1_n_0 ;
  wire \data_out[126]_INST_0_i_1_n_0 ;
  wire \data_out[23]_INST_0_i_2_n_0 ;
  wire \data_out[63]_INST_0_i_2_n_0 ;
  wire \data_out[64]_INST_0_i_1_n_0 ;
  wire \data_out[65]_INST_0_i_1_n_0 ;
  wire \data_out[66]_INST_0_i_1_n_0 ;
  wire \data_out[67]_INST_0_i_1_n_0 ;
  wire \data_out[68]_INST_0_i_1_n_0 ;
  wire \data_out[69]_INST_0_i_1_n_0 ;
  wire \data_out[70]_INST_0_i_1_n_0 ;
  wire \data_out[71]_INST_0_i_1_n_0 ;
  wire \data_out[72]_INST_0_i_1_n_0 ;
  wire \data_out[73]_INST_0_i_1_n_0 ;
  wire \data_out[74]_INST_0_i_1_n_0 ;
  wire \data_out[75]_INST_0_i_1_n_0 ;
  wire \data_out[76]_INST_0_i_1_n_0 ;
  wire \data_out[77]_INST_0_i_1_n_0 ;
  wire \data_out[78]_INST_0_i_1_n_0 ;
  wire \data_out[79]_INST_0_i_1_n_0 ;
  wire \data_out[80]_INST_0_i_1_n_0 ;
  wire \data_out[81]_INST_0_i_1_n_0 ;
  wire \data_out[82]_INST_0_i_1_n_0 ;
  wire \data_out[83]_INST_0_i_1_n_0 ;
  wire \data_out[84]_INST_0_i_1_n_0 ;
  wire \data_out[85]_INST_0_i_1_n_0 ;
  wire \data_out[86]_INST_0_i_1_n_0 ;
  wire \data_out[87]_INST_0_i_1_n_0 ;
  wire \data_out[88]_INST_0_i_1_n_0 ;
  wire \data_out[89]_INST_0_i_1_n_0 ;
  wire \data_out[90]_INST_0_i_1_n_0 ;
  wire \data_out[91]_INST_0_i_1_n_0 ;
  wire \data_out[92]_INST_0_i_1_n_0 ;
  wire \data_out[93]_INST_0_i_1_n_0 ;
  wire \data_out[94]_INST_0_i_1_n_0 ;
  wire \data_out[95]_INST_0_i_1_n_0 ;
  wire \data_out[95]_INST_0_i_2_n_0 ;
  wire \data_out[96]_INST_0_i_1_n_0 ;
  wire \data_out[97]_INST_0_i_1_n_0 ;
  wire \data_out[98]_INST_0_i_1_n_0 ;
  wire \data_out[99]_INST_0_i_1_n_0 ;
  wire data_out_valid;
  wire data_out_valid_INST_0_i_1_n_0;
  wire data_ready;
  wire data_valid;
  wire dec_pt;
  wire keep_u_0;
  wire keep_u_1;
  wire keep_u_10;
  wire keep_u_12;
  wire keep_u_13;
  wire keep_u_14;
  wire keep_u_3;
  wire keep_u_4;
  wire keep_u_5;
  wire keep_u_6;
  wire keep_u_8;
  wire keep_u_9;
  wire last_q_i_1_n_0;
  wire last_q_i_2_n_0;
  wire last_q_i_3_n_0;
  wire last_q_i_4_n_0;
  wire last_q_reg_n_0;
  wire last_round;
  wire mode;
  wire [3:1]p_0_in;
  wire p_0_in__0;
  wire [62:0]p_1_in;
  wire [63:0]\perm_u/S0_sb ;
  wire [63:0]\perm_u/S1_sb ;
  wire [63:0]\perm_u/S2_sb ;
  wire [63:0]\perm_u/S3_sb ;
  wire [63:0]\perm_u/S4_sb ;
  wire \phase[0]_i_1_n_0 ;
  wire \phase[0]_i_2_n_0 ;
  wire \phase[0]_i_3_n_0 ;
  wire \phase[1]_i_1_n_0 ;
  wire \phase[1]_i_2_n_0 ;
  wire \phase[1]_i_3_n_0 ;
  wire \phase[1]_i_4_n_0 ;
  wire \phase[1]_rep_i_1__0_n_0 ;
  wire \phase[1]_rep_i_1__1_n_0 ;
  wire \phase[1]_rep_i_1_n_0 ;
  wire \phase_reg[1]_rep__0_n_0 ;
  wire \phase_reg[1]_rep__1_n_0 ;
  wire \phase_reg[1]_rep_n_0 ;
  wire \phase_reg_n_0_[0] ;
  wire \phase_reg_n_0_[1] ;
  wire pt_out_en;
  wire \round_cnt[0]_i_1_n_0 ;
  wire \round_cnt[2]_i_2_n_0 ;
  wire \round_cnt[3]_i_1_n_0 ;
  wire [3:0]round_cnt_reg;
  wire rst;
  wire st_i_1_n_0;
  wire st_reg_n_0;
  wire st_reg_rep__0_n_0;
  wire st_reg_rep__1_n_0;
  wire st_reg_rep_n_0;
  wire st_rep_i_1__0_n_0;
  wire st_rep_i_1__1_n_0;
  wire st_rep_i_1_n_0;
  wire tag_eq;
  wire tag_match;
  wire tag_match_INST_0_i_10_n_0;
  wire tag_match_INST_0_i_11_n_0;
  wire tag_match_INST_0_i_12_n_0;
  wire tag_match_INST_0_i_13_n_0;
  wire tag_match_INST_0_i_14_n_0;
  wire tag_match_INST_0_i_15_n_0;
  wire tag_match_INST_0_i_16_n_0;
  wire tag_match_INST_0_i_17_n_0;
  wire tag_match_INST_0_i_18_n_0;
  wire tag_match_INST_0_i_19_n_0;
  wire tag_match_INST_0_i_20_n_0;
  wire tag_match_INST_0_i_21_n_0;
  wire tag_match_INST_0_i_22_n_0;
  wire tag_match_INST_0_i_23_n_0;
  wire tag_match_INST_0_i_24_n_0;
  wire tag_match_INST_0_i_25_n_0;
  wire tag_match_INST_0_i_26_n_0;
  wire tag_match_INST_0_i_27_n_0;
  wire tag_match_INST_0_i_28_n_0;
  wire tag_match_INST_0_i_29_n_0;
  wire tag_match_INST_0_i_2_n_0;
  wire tag_match_INST_0_i_30_n_0;
  wire tag_match_INST_0_i_31_n_0;
  wire tag_match_INST_0_i_32_n_0;
  wire tag_match_INST_0_i_33_n_0;
  wire tag_match_INST_0_i_34_n_0;
  wire tag_match_INST_0_i_35_n_0;
  wire tag_match_INST_0_i_36_n_0;
  wire tag_match_INST_0_i_37_n_0;
  wire tag_match_INST_0_i_38_n_0;
  wire tag_match_INST_0_i_39_n_0;
  wire tag_match_INST_0_i_3_n_0;
  wire tag_match_INST_0_i_40_n_0;
  wire tag_match_INST_0_i_41_n_0;
  wire tag_match_INST_0_i_42_n_0;
  wire tag_match_INST_0_i_43_n_0;
  wire tag_match_INST_0_i_44_n_0;
  wire tag_match_INST_0_i_45_n_0;
  wire tag_match_INST_0_i_46_n_0;
  wire tag_match_INST_0_i_47_n_0;
  wire tag_match_INST_0_i_48_n_0;
  wire tag_match_INST_0_i_49_n_0;
  wire tag_match_INST_0_i_4_n_0;
  wire tag_match_INST_0_i_50_n_0;
  wire tag_match_INST_0_i_51_n_0;
  wire tag_match_INST_0_i_52_n_0;
  wire tag_match_INST_0_i_53_n_0;
  wire tag_match_INST_0_i_54_n_0;
  wire tag_match_INST_0_i_5_n_0;
  wire tag_match_INST_0_i_6_n_0;
  wire tag_match_INST_0_i_7_n_0;
  wire tag_match_INST_0_i_8_n_0;
  wire tag_match_INST_0_i_9_n_0;
  wire tag_out_en;
  wire xk;
  wire [3:0]NLW_tag_match_INST_0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_1_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_11_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_16_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_16_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_2_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_21_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_21_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_26_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_26_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_31_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_31_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_36_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_36_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_41_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_41_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_46_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_46_O_UNCONNECTED;
  wire [2:0]NLW_tag_match_INST_0_i_6_CO_UNCONNECTED;
  wire [3:0]NLW_tag_match_INST_0_i_6_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \K0[63]_i_1 
       (.I0(st_reg_rep_n_0),
        .I1(rst),
        .I2(\phase_reg_n_0_[0] ),
        .I3(last_q_reg_n_0),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_valid),
        .O(K0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[0] 
       (.C(clk),
        .CE(K0),
        .D(data_in[0]),
        .Q(\K0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[10] 
       (.C(clk),
        .CE(K0),
        .D(data_in[10]),
        .Q(\K0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[11] 
       (.C(clk),
        .CE(K0),
        .D(data_in[11]),
        .Q(\K0_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[12] 
       (.C(clk),
        .CE(K0),
        .D(data_in[12]),
        .Q(\K0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[13] 
       (.C(clk),
        .CE(K0),
        .D(data_in[13]),
        .Q(\K0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[14] 
       (.C(clk),
        .CE(K0),
        .D(data_in[14]),
        .Q(\K0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[15] 
       (.C(clk),
        .CE(K0),
        .D(data_in[15]),
        .Q(\K0_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[16] 
       (.C(clk),
        .CE(K0),
        .D(data_in[16]),
        .Q(\K0_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[17] 
       (.C(clk),
        .CE(K0),
        .D(data_in[17]),
        .Q(\K0_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[18] 
       (.C(clk),
        .CE(K0),
        .D(data_in[18]),
        .Q(\K0_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[19] 
       (.C(clk),
        .CE(K0),
        .D(data_in[19]),
        .Q(\K0_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[1] 
       (.C(clk),
        .CE(K0),
        .D(data_in[1]),
        .Q(\K0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[20] 
       (.C(clk),
        .CE(K0),
        .D(data_in[20]),
        .Q(\K0_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[21] 
       (.C(clk),
        .CE(K0),
        .D(data_in[21]),
        .Q(\K0_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[22] 
       (.C(clk),
        .CE(K0),
        .D(data_in[22]),
        .Q(\K0_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[23] 
       (.C(clk),
        .CE(K0),
        .D(data_in[23]),
        .Q(\K0_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[24] 
       (.C(clk),
        .CE(K0),
        .D(data_in[24]),
        .Q(\K0_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[25] 
       (.C(clk),
        .CE(K0),
        .D(data_in[25]),
        .Q(\K0_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[26] 
       (.C(clk),
        .CE(K0),
        .D(data_in[26]),
        .Q(\K0_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[27] 
       (.C(clk),
        .CE(K0),
        .D(data_in[27]),
        .Q(\K0_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[28] 
       (.C(clk),
        .CE(K0),
        .D(data_in[28]),
        .Q(\K0_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[29] 
       (.C(clk),
        .CE(K0),
        .D(data_in[29]),
        .Q(\K0_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[2] 
       (.C(clk),
        .CE(K0),
        .D(data_in[2]),
        .Q(\K0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[30] 
       (.C(clk),
        .CE(K0),
        .D(data_in[30]),
        .Q(\K0_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[31] 
       (.C(clk),
        .CE(K0),
        .D(data_in[31]),
        .Q(\K0_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[32] 
       (.C(clk),
        .CE(K0),
        .D(data_in[32]),
        .Q(\K0_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[33] 
       (.C(clk),
        .CE(K0),
        .D(data_in[33]),
        .Q(\K0_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[34] 
       (.C(clk),
        .CE(K0),
        .D(data_in[34]),
        .Q(\K0_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[35] 
       (.C(clk),
        .CE(K0),
        .D(data_in[35]),
        .Q(\K0_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[36] 
       (.C(clk),
        .CE(K0),
        .D(data_in[36]),
        .Q(\K0_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[37] 
       (.C(clk),
        .CE(K0),
        .D(data_in[37]),
        .Q(\K0_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[38] 
       (.C(clk),
        .CE(K0),
        .D(data_in[38]),
        .Q(\K0_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[39] 
       (.C(clk),
        .CE(K0),
        .D(data_in[39]),
        .Q(\K0_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[3] 
       (.C(clk),
        .CE(K0),
        .D(data_in[3]),
        .Q(\K0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[40] 
       (.C(clk),
        .CE(K0),
        .D(data_in[40]),
        .Q(\K0_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[41] 
       (.C(clk),
        .CE(K0),
        .D(data_in[41]),
        .Q(\K0_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[42] 
       (.C(clk),
        .CE(K0),
        .D(data_in[42]),
        .Q(\K0_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[43] 
       (.C(clk),
        .CE(K0),
        .D(data_in[43]),
        .Q(\K0_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[44] 
       (.C(clk),
        .CE(K0),
        .D(data_in[44]),
        .Q(\K0_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[45] 
       (.C(clk),
        .CE(K0),
        .D(data_in[45]),
        .Q(\K0_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[46] 
       (.C(clk),
        .CE(K0),
        .D(data_in[46]),
        .Q(\K0_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[47] 
       (.C(clk),
        .CE(K0),
        .D(data_in[47]),
        .Q(\K0_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[48] 
       (.C(clk),
        .CE(K0),
        .D(data_in[48]),
        .Q(\K0_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[49] 
       (.C(clk),
        .CE(K0),
        .D(data_in[49]),
        .Q(\K0_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[4] 
       (.C(clk),
        .CE(K0),
        .D(data_in[4]),
        .Q(\K0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[50] 
       (.C(clk),
        .CE(K0),
        .D(data_in[50]),
        .Q(\K0_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[51] 
       (.C(clk),
        .CE(K0),
        .D(data_in[51]),
        .Q(\K0_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[52] 
       (.C(clk),
        .CE(K0),
        .D(data_in[52]),
        .Q(\K0_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[53] 
       (.C(clk),
        .CE(K0),
        .D(data_in[53]),
        .Q(\K0_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[54] 
       (.C(clk),
        .CE(K0),
        .D(data_in[54]),
        .Q(\K0_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[55] 
       (.C(clk),
        .CE(K0),
        .D(data_in[55]),
        .Q(\K0_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[56] 
       (.C(clk),
        .CE(K0),
        .D(data_in[56]),
        .Q(\K0_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[57] 
       (.C(clk),
        .CE(K0),
        .D(data_in[57]),
        .Q(\K0_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[58] 
       (.C(clk),
        .CE(K0),
        .D(data_in[58]),
        .Q(\K0_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[59] 
       (.C(clk),
        .CE(K0),
        .D(data_in[59]),
        .Q(\K0_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[5] 
       (.C(clk),
        .CE(K0),
        .D(data_in[5]),
        .Q(\K0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[60] 
       (.C(clk),
        .CE(K0),
        .D(data_in[60]),
        .Q(\K0_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[61] 
       (.C(clk),
        .CE(K0),
        .D(data_in[61]),
        .Q(\K0_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[62] 
       (.C(clk),
        .CE(K0),
        .D(data_in[62]),
        .Q(\K0_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[63] 
       (.C(clk),
        .CE(K0),
        .D(data_in[63]),
        .Q(\K0_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[6] 
       (.C(clk),
        .CE(K0),
        .D(data_in[6]),
        .Q(\K0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[7] 
       (.C(clk),
        .CE(K0),
        .D(data_in[7]),
        .Q(\K0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[8] 
       (.C(clk),
        .CE(K0),
        .D(data_in[8]),
        .Q(\K0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K0_reg[9] 
       (.C(clk),
        .CE(K0),
        .D(data_in[9]),
        .Q(\K0_reg_n_0_[9] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[0] 
       (.C(clk),
        .CE(K0),
        .D(data_in[64]),
        .Q(\K1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[10] 
       (.C(clk),
        .CE(K0),
        .D(data_in[74]),
        .Q(\K1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[11] 
       (.C(clk),
        .CE(K0),
        .D(data_in[75]),
        .Q(\K1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[12] 
       (.C(clk),
        .CE(K0),
        .D(data_in[76]),
        .Q(\K1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[13] 
       (.C(clk),
        .CE(K0),
        .D(data_in[77]),
        .Q(\K1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[14] 
       (.C(clk),
        .CE(K0),
        .D(data_in[78]),
        .Q(\K1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[15] 
       (.C(clk),
        .CE(K0),
        .D(data_in[79]),
        .Q(\K1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[16] 
       (.C(clk),
        .CE(K0),
        .D(data_in[80]),
        .Q(\K1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[17] 
       (.C(clk),
        .CE(K0),
        .D(data_in[81]),
        .Q(\K1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[18] 
       (.C(clk),
        .CE(K0),
        .D(data_in[82]),
        .Q(\K1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[19] 
       (.C(clk),
        .CE(K0),
        .D(data_in[83]),
        .Q(\K1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[1] 
       (.C(clk),
        .CE(K0),
        .D(data_in[65]),
        .Q(\K1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[20] 
       (.C(clk),
        .CE(K0),
        .D(data_in[84]),
        .Q(\K1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[21] 
       (.C(clk),
        .CE(K0),
        .D(data_in[85]),
        .Q(\K1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[22] 
       (.C(clk),
        .CE(K0),
        .D(data_in[86]),
        .Q(\K1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[23] 
       (.C(clk),
        .CE(K0),
        .D(data_in[87]),
        .Q(\K1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[24] 
       (.C(clk),
        .CE(K0),
        .D(data_in[88]),
        .Q(\K1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[25] 
       (.C(clk),
        .CE(K0),
        .D(data_in[89]),
        .Q(\K1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[26] 
       (.C(clk),
        .CE(K0),
        .D(data_in[90]),
        .Q(\K1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[27] 
       (.C(clk),
        .CE(K0),
        .D(data_in[91]),
        .Q(\K1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[28] 
       (.C(clk),
        .CE(K0),
        .D(data_in[92]),
        .Q(\K1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[29] 
       (.C(clk),
        .CE(K0),
        .D(data_in[93]),
        .Q(\K1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[2] 
       (.C(clk),
        .CE(K0),
        .D(data_in[66]),
        .Q(\K1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[30] 
       (.C(clk),
        .CE(K0),
        .D(data_in[94]),
        .Q(\K1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[31] 
       (.C(clk),
        .CE(K0),
        .D(data_in[95]),
        .Q(\K1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[32] 
       (.C(clk),
        .CE(K0),
        .D(data_in[96]),
        .Q(\K1_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[33] 
       (.C(clk),
        .CE(K0),
        .D(data_in[97]),
        .Q(\K1_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[34] 
       (.C(clk),
        .CE(K0),
        .D(data_in[98]),
        .Q(\K1_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[35] 
       (.C(clk),
        .CE(K0),
        .D(data_in[99]),
        .Q(\K1_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[36] 
       (.C(clk),
        .CE(K0),
        .D(data_in[100]),
        .Q(\K1_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[37] 
       (.C(clk),
        .CE(K0),
        .D(data_in[101]),
        .Q(\K1_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[38] 
       (.C(clk),
        .CE(K0),
        .D(data_in[102]),
        .Q(\K1_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[39] 
       (.C(clk),
        .CE(K0),
        .D(data_in[103]),
        .Q(\K1_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[3] 
       (.C(clk),
        .CE(K0),
        .D(data_in[67]),
        .Q(\K1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[40] 
       (.C(clk),
        .CE(K0),
        .D(data_in[104]),
        .Q(\K1_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[41] 
       (.C(clk),
        .CE(K0),
        .D(data_in[105]),
        .Q(\K1_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[42] 
       (.C(clk),
        .CE(K0),
        .D(data_in[106]),
        .Q(\K1_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[43] 
       (.C(clk),
        .CE(K0),
        .D(data_in[107]),
        .Q(\K1_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[44] 
       (.C(clk),
        .CE(K0),
        .D(data_in[108]),
        .Q(\K1_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[45] 
       (.C(clk),
        .CE(K0),
        .D(data_in[109]),
        .Q(\K1_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[46] 
       (.C(clk),
        .CE(K0),
        .D(data_in[110]),
        .Q(\K1_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[47] 
       (.C(clk),
        .CE(K0),
        .D(data_in[111]),
        .Q(\K1_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[48] 
       (.C(clk),
        .CE(K0),
        .D(data_in[112]),
        .Q(\K1_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[49] 
       (.C(clk),
        .CE(K0),
        .D(data_in[113]),
        .Q(\K1_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[4] 
       (.C(clk),
        .CE(K0),
        .D(data_in[68]),
        .Q(\K1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[50] 
       (.C(clk),
        .CE(K0),
        .D(data_in[114]),
        .Q(\K1_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[51] 
       (.C(clk),
        .CE(K0),
        .D(data_in[115]),
        .Q(\K1_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[52] 
       (.C(clk),
        .CE(K0),
        .D(data_in[116]),
        .Q(\K1_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[53] 
       (.C(clk),
        .CE(K0),
        .D(data_in[117]),
        .Q(\K1_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[54] 
       (.C(clk),
        .CE(K0),
        .D(data_in[118]),
        .Q(\K1_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[55] 
       (.C(clk),
        .CE(K0),
        .D(data_in[119]),
        .Q(\K1_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[56] 
       (.C(clk),
        .CE(K0),
        .D(data_in[120]),
        .Q(\K1_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[57] 
       (.C(clk),
        .CE(K0),
        .D(data_in[121]),
        .Q(\K1_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[58] 
       (.C(clk),
        .CE(K0),
        .D(data_in[122]),
        .Q(\K1_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[59] 
       (.C(clk),
        .CE(K0),
        .D(data_in[123]),
        .Q(\K1_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[5] 
       (.C(clk),
        .CE(K0),
        .D(data_in[69]),
        .Q(\K1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[60] 
       (.C(clk),
        .CE(K0),
        .D(data_in[124]),
        .Q(\K1_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[61] 
       (.C(clk),
        .CE(K0),
        .D(data_in[125]),
        .Q(\K1_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[62] 
       (.C(clk),
        .CE(K0),
        .D(data_in[126]),
        .Q(\K1_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[63] 
       (.C(clk),
        .CE(K0),
        .D(data_in[127]),
        .Q(\K1_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[6] 
       (.C(clk),
        .CE(K0),
        .D(data_in[70]),
        .Q(\K1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[7] 
       (.C(clk),
        .CE(K0),
        .D(data_in[71]),
        .Q(\K1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[8] 
       (.C(clk),
        .CE(K0),
        .D(data_in[72]),
        .Q(\K1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \K1_reg[9] 
       (.C(clk),
        .CE(K0),
        .D(data_in[73]),
        .Q(\K1_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[0]_i_1 
       (.I0(\perm_u/S0_sb [19]),
        .I1(\perm_u/S0_sb [0]),
        .I2(\perm_u/S0_sb [28]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[0]_i_2_n_0 ),
        .O(\S0[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h80FF700FFFFFFFFF)) 
    \S0[0]_i_2 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(mode),
        .I2(keep_u_0),
        .I3(\S0_reg_n_0_[0] ),
        .I4(data_in[0]),
        .I5(\phase_reg[1]_rep_n_0 ),
        .O(\S0[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[10]_i_1 
       (.I0(\perm_u/S0_sb [29]),
        .I1(\perm_u/S0_sb [10]),
        .I2(\perm_u/S0_sb [38]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[10]_i_2_n_0 ),
        .O(\S0[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[10]_i_2 
       (.I0(\S0_reg_n_0_[10] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[10]),
        .O(\S0[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[11]_i_1 
       (.I0(\perm_u/S0_sb [30]),
        .I1(\perm_u/S0_sb [11]),
        .I2(\perm_u/S0_sb [39]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[11]_i_2_n_0 ),
        .O(\S0[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[11]_i_2 
       (.I0(\S0_reg_n_0_[11] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[11]),
        .O(\S0[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[12]_i_1 
       (.I0(\perm_u/S0_sb [31]),
        .I1(\perm_u/S0_sb [12]),
        .I2(\perm_u/S0_sb [40]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[12]_i_2_n_0 ),
        .O(\S0[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[12]_i_2 
       (.I0(\S0_reg_n_0_[12] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[12]),
        .O(\S0[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[13]_i_1 
       (.I0(\perm_u/S0_sb [32]),
        .I1(\perm_u/S0_sb [13]),
        .I2(\perm_u/S0_sb [41]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[13]_i_2_n_0 ),
        .O(\S0[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[13]_i_2 
       (.I0(\S0_reg_n_0_[13] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[13]),
        .O(\S0[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[14]_i_1 
       (.I0(\perm_u/S0_sb [33]),
        .I1(\perm_u/S0_sb [14]),
        .I2(\perm_u/S0_sb [42]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[14]_i_2_n_0 ),
        .O(\S0[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[14]_i_2 
       (.I0(\S0_reg_n_0_[14] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[14]),
        .O(\S0[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[15]_i_1 
       (.I0(\perm_u/S0_sb [34]),
        .I1(\perm_u/S0_sb [15]),
        .I2(\perm_u/S0_sb [43]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[15]_i_2_n_0 ),
        .O(\S0[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[15]_i_2 
       (.I0(\S0_reg_n_0_[15] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[15]),
        .O(\S0[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[16]_i_1 
       (.I0(\perm_u/S0_sb [35]),
        .I1(\perm_u/S0_sb [16]),
        .I2(\perm_u/S0_sb [44]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[16]_i_2_n_0 ),
        .O(\S0[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[16]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(keep_u_1),
        .I2(dec_pt),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(\S0_reg_n_0_[16] ),
        .I5(data_in[16]),
        .O(\S0[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[17]_i_1 
       (.I0(\perm_u/S0_sb [36]),
        .I1(\perm_u/S0_sb [17]),
        .I2(\perm_u/S0_sb [45]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[17]_i_2_n_0 ),
        .O(\S0[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[17]_i_2 
       (.I0(\S0_reg_n_0_[17] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[17]),
        .O(\S0[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[18]_i_1 
       (.I0(\perm_u/S0_sb [37]),
        .I1(\perm_u/S0_sb [18]),
        .I2(\perm_u/S0_sb [46]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[18]_i_2_n_0 ),
        .O(\S0[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE6662AAAFFFFFFFF)) 
    \S0[18]_i_2 
       (.I0(\S0_reg_n_0_[18] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(data_in[18]),
        .I5(\phase_reg[1]_rep_n_0 ),
        .O(\S0[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[19]_i_1 
       (.I0(\perm_u/S0_sb [38]),
        .I1(\perm_u/S0_sb [19]),
        .I2(\perm_u/S0_sb [47]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[19]_i_2_n_0 ),
        .O(\S0[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE6662AAAFFFFFFFF)) 
    \S0[19]_i_2 
       (.I0(\S0_reg_n_0_[19] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(data_in[19]),
        .I5(\phase_reg[1]_rep_n_0 ),
        .O(\S0[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[1]_i_1 
       (.I0(\perm_u/S0_sb [20]),
        .I1(\perm_u/S0_sb [1]),
        .I2(\perm_u/S0_sb [29]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[1]_i_2_n_0 ),
        .O(\S0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[1]_i_2 
       (.I0(\S0_reg_n_0_[1] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[1]),
        .O(\S0[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[20]_i_1 
       (.I0(\perm_u/S0_sb [39]),
        .I1(\perm_u/S0_sb [20]),
        .I2(\perm_u/S0_sb [48]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[20]_i_2_n_0 ),
        .O(\S0[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[20]_i_2 
       (.I0(\S0_reg_n_0_[20] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[20]),
        .O(\S0[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[21]_i_1 
       (.I0(\perm_u/S0_sb [40]),
        .I1(\perm_u/S0_sb [21]),
        .I2(\perm_u/S0_sb [49]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[21]_i_2_n_0 ),
        .O(\S0[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[21]_i_2 
       (.I0(\S0_reg_n_0_[21] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[21]),
        .O(\S0[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[22]_i_1 
       (.I0(\perm_u/S0_sb [41]),
        .I1(\perm_u/S0_sb [22]),
        .I2(\perm_u/S0_sb [50]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[22]_i_2_n_0 ),
        .O(\S0[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[22]_i_2 
       (.I0(\S0_reg_n_0_[22] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[22]),
        .O(\S0[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[23]_i_1 
       (.I0(\perm_u/S0_sb [42]),
        .I1(\perm_u/S0_sb [23]),
        .I2(\perm_u/S0_sb [51]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[23]_i_2_n_0 ),
        .O(\S0[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE6662AAAFFFFFFFF)) 
    \S0[23]_i_2 
       (.I0(\S0_reg_n_0_[23] ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(data_in[23]),
        .I5(\phase_reg[1]_rep_n_0 ),
        .O(\S0[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[24]_i_1 
       (.I0(\perm_u/S0_sb [43]),
        .I1(\perm_u/S0_sb [24]),
        .I2(\perm_u/S0_sb [52]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[24]_i_2_n_0 ),
        .O(\S0[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[24]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(\data_out[23]_INST_0_i_2_n_0 ),
        .I2(dec_pt),
        .I3(keep_u_3),
        .I4(\S0_reg_n_0_[24] ),
        .I5(data_in[24]),
        .O(\S0[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[25]_i_1 
       (.I0(\perm_u/S0_sb [44]),
        .I1(\perm_u/S0_sb [25]),
        .I2(\perm_u/S0_sb [53]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[25]_i_2_n_0 ),
        .O(\S0[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[25]_i_2 
       (.I0(\S0_reg_n_0_[25] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[25]),
        .O(\S0[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[26]_i_1 
       (.I0(\perm_u/S0_sb [45]),
        .I1(\perm_u/S0_sb [26]),
        .I2(\perm_u/S0_sb [54]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[26]_i_2_n_0 ),
        .O(\S0[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[26]_i_2 
       (.I0(\S0_reg_n_0_[26] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[26]),
        .O(\S0[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[27]_i_1 
       (.I0(\perm_u/S0_sb [46]),
        .I1(\perm_u/S0_sb [27]),
        .I2(\perm_u/S0_sb [55]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[27]_i_2_n_0 ),
        .O(\S0[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[27]_i_2 
       (.I0(\S0_reg_n_0_[27] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[27]),
        .O(\S0[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[28]_i_1 
       (.I0(\perm_u/S0_sb [47]),
        .I1(\perm_u/S0_sb [28]),
        .I2(\perm_u/S0_sb [56]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[28]_i_2_n_0 ),
        .O(\S0[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[28]_i_2 
       (.I0(\S0_reg_n_0_[28] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[28]),
        .O(\S0[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[29]_i_1 
       (.I0(\perm_u/S0_sb [48]),
        .I1(\perm_u/S0_sb [29]),
        .I2(\perm_u/S0_sb [57]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[29]_i_2_n_0 ),
        .O(\S0[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[29]_i_2 
       (.I0(\S0_reg_n_0_[29] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[29]),
        .O(\S0[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[2]_i_1 
       (.I0(\perm_u/S0_sb [21]),
        .I1(\perm_u/S0_sb [2]),
        .I2(\perm_u/S0_sb [30]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[2]_i_2_n_0 ),
        .O(\S0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[2]_i_2 
       (.I0(\S0_reg_n_0_[2] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[2]),
        .O(\S0[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[30]_i_1 
       (.I0(\perm_u/S0_sb [49]),
        .I1(\perm_u/S0_sb [30]),
        .I2(\perm_u/S0_sb [58]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[30]_i_2_n_0 ),
        .O(\S0[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[30]_i_2 
       (.I0(\S0_reg_n_0_[30] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[30]),
        .O(\S0[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[31]_i_1 
       (.I0(\perm_u/S0_sb [50]),
        .I1(\perm_u/S0_sb [31]),
        .I2(\perm_u/S0_sb [59]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[31]_i_2_n_0 ),
        .O(\S0[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE6662AAAFFFFFFFF)) 
    \S0[31]_i_2 
       (.I0(\S0_reg_n_0_[31] ),
        .I1(keep_u_3),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(data_in[31]),
        .I5(\phase_reg[1]_rep__1_n_0 ),
        .O(\S0[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[32]_i_1 
       (.I0(\perm_u/S0_sb [51]),
        .I1(\perm_u/S0_sb [32]),
        .I2(\perm_u/S0_sb [60]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[32]_i_2_n_0 ),
        .O(\S0[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[32]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(keep_u_3),
        .I2(dec_pt),
        .I3(keep_u_4),
        .I4(\S0_reg_n_0_[32] ),
        .I5(data_in[32]),
        .O(\S0[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[33]_i_1 
       (.I0(\perm_u/S0_sb [52]),
        .I1(\perm_u/S0_sb [33]),
        .I2(\perm_u/S0_sb [61]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[33]_i_2_n_0 ),
        .O(\S0[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[33]_i_2 
       (.I0(\S0_reg_n_0_[33] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[33]),
        .O(\S0[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[34]_i_1 
       (.I0(\perm_u/S0_sb [53]),
        .I1(\perm_u/S0_sb [34]),
        .I2(\perm_u/S0_sb [62]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[34]_i_2_n_0 ),
        .O(\S0[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[34]_i_2 
       (.I0(\S0_reg_n_0_[34] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[34]),
        .O(\S0[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[35]_i_1 
       (.I0(\perm_u/S0_sb [54]),
        .I1(\perm_u/S0_sb [35]),
        .I2(\perm_u/S0_sb [63]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[35]_i_2_n_0 ),
        .O(\S0[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[35]_i_2 
       (.I0(\S0_reg_n_0_[35] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[35]),
        .O(\S0[35]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[36]_i_1 
       (.I0(\perm_u/S0_sb [55]),
        .I1(\perm_u/S0_sb [36]),
        .I2(\perm_u/S0_sb [0]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[36]_i_2_n_0 ),
        .O(\S0[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[36]_i_2 
       (.I0(\S0_reg_n_0_[36] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[36]),
        .O(\S0[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[37]_i_1 
       (.I0(\perm_u/S0_sb [56]),
        .I1(\perm_u/S0_sb [37]),
        .I2(\perm_u/S0_sb [1]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[37]_i_2_n_0 ),
        .O(\S0[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[37]_i_2 
       (.I0(\S0_reg_n_0_[37] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[37]),
        .O(\S0[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[38]_i_1 
       (.I0(\perm_u/S0_sb [57]),
        .I1(\perm_u/S0_sb [38]),
        .I2(\perm_u/S0_sb [2]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[38]_i_2_n_0 ),
        .O(\S0[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[38]_i_2 
       (.I0(\S0_reg_n_0_[38] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[38]),
        .O(\S0[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[39]_i_1 
       (.I0(\perm_u/S0_sb [58]),
        .I1(\perm_u/S0_sb [39]),
        .I2(\perm_u/S0_sb [3]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[39]_i_2_n_0 ),
        .O(\S0[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[39]_i_2 
       (.I0(\S0_reg_n_0_[39] ),
        .I1(keep_u_4),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[39]),
        .O(\S0[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[3]_i_1 
       (.I0(\perm_u/S0_sb [22]),
        .I1(\perm_u/S0_sb [3]),
        .I2(\perm_u/S0_sb [31]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[3]_i_2_n_0 ),
        .O(\S0[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[3]_i_2 
       (.I0(\S0_reg_n_0_[3] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[3]),
        .O(\S0[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[40]_i_1 
       (.I0(\perm_u/S0_sb [59]),
        .I1(\perm_u/S0_sb [40]),
        .I2(\perm_u/S0_sb [4]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[40]_i_2_n_0 ),
        .O(\S0[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[40]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(keep_u_4),
        .I2(dec_pt),
        .I3(keep_u_5),
        .I4(\S0_reg_n_0_[40] ),
        .I5(data_in[40]),
        .O(\S0[40]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[41]_i_1 
       (.I0(\perm_u/S0_sb [60]),
        .I1(\perm_u/S0_sb [41]),
        .I2(\perm_u/S0_sb [5]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[41]_i_2_n_0 ),
        .O(\S0[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[41]_i_2 
       (.I0(\S0_reg_n_0_[41] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[41]),
        .O(\S0[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[42]_i_1 
       (.I0(\perm_u/S0_sb [61]),
        .I1(\perm_u/S0_sb [42]),
        .I2(\perm_u/S0_sb [6]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[42]_i_2_n_0 ),
        .O(\S0[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[42]_i_2 
       (.I0(\S0_reg_n_0_[42] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[42]),
        .O(\S0[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[43]_i_1 
       (.I0(\perm_u/S0_sb [62]),
        .I1(\perm_u/S0_sb [43]),
        .I2(\perm_u/S0_sb [7]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[43]_i_2_n_0 ),
        .O(\S0[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[43]_i_2 
       (.I0(\S0_reg_n_0_[43] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[43]),
        .O(\S0[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[44]_i_1 
       (.I0(\perm_u/S0_sb [63]),
        .I1(\perm_u/S0_sb [44]),
        .I2(\perm_u/S0_sb [8]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[44]_i_2_n_0 ),
        .O(\S0[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE6662AAAFFFFFFFF)) 
    \S0[44]_i_2 
       (.I0(\S0_reg_n_0_[44] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(data_in[44]),
        .I5(\phase_reg[1]_rep__1_n_0 ),
        .O(\S0[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[45]_i_1 
       (.I0(\perm_u/S0_sb [0]),
        .I1(\perm_u/S0_sb [45]),
        .I2(\perm_u/S0_sb [9]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[45]_i_2_n_0 ),
        .O(\S0[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[45]_i_2 
       (.I0(\S0_reg_n_0_[45] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[45]),
        .O(\S0[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[46]_i_1 
       (.I0(\perm_u/S0_sb [1]),
        .I1(\perm_u/S0_sb [46]),
        .I2(\perm_u/S0_sb [10]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[46]_i_2_n_0 ),
        .O(\S0[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[46]_i_2 
       (.I0(\S0_reg_n_0_[46] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[46]),
        .O(\S0[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[47]_i_1 
       (.I0(\perm_u/S0_sb [2]),
        .I1(\perm_u/S0_sb [47]),
        .I2(\perm_u/S0_sb [11]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[47]_i_2_n_0 ),
        .O(\S0[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[47]_i_2 
       (.I0(\S0_reg_n_0_[47] ),
        .I1(keep_u_5),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(data_in[47]),
        .O(\S0[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[48]_i_1 
       (.I0(\perm_u/S0_sb [3]),
        .I1(\perm_u/S0_sb [48]),
        .I2(\perm_u/S0_sb [12]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[48]_i_2_n_0 ),
        .O(\S0[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[48]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(keep_u_5),
        .I2(dec_pt),
        .I3(keep_u_6),
        .I4(\S0_reg_n_0_[48] ),
        .I5(data_in[48]),
        .O(\S0[48]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[49]_i_1 
       (.I0(\perm_u/S0_sb [4]),
        .I1(\perm_u/S0_sb [49]),
        .I2(\perm_u/S0_sb [13]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[49]_i_2_n_0 ),
        .O(\S0[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[49]_i_2 
       (.I0(\S0_reg_n_0_[49] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[49]),
        .O(\S0[49]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[4]_i_1 
       (.I0(\perm_u/S0_sb [23]),
        .I1(\perm_u/S0_sb [4]),
        .I2(\perm_u/S0_sb [32]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[4]_i_2_n_0 ),
        .O(\S0[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[4]_i_2 
       (.I0(\S0_reg_n_0_[4] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[4]),
        .O(\S0[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[50]_i_1 
       (.I0(\perm_u/S0_sb [5]),
        .I1(\perm_u/S0_sb [50]),
        .I2(\perm_u/S0_sb [14]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[50]_i_2_n_0 ),
        .O(\S0[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[50]_i_2 
       (.I0(\S0_reg_n_0_[50] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[50]),
        .O(\S0[50]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[51]_i_1 
       (.I0(\perm_u/S0_sb [6]),
        .I1(\perm_u/S0_sb [51]),
        .I2(\perm_u/S0_sb [15]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[51]_i_2_n_0 ),
        .O(\S0[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[51]_i_2 
       (.I0(\S0_reg_n_0_[51] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[51]),
        .O(\S0[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[52]_i_1 
       (.I0(\perm_u/S0_sb [7]),
        .I1(\perm_u/S0_sb [52]),
        .I2(\perm_u/S0_sb [16]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[52]_i_2_n_0 ),
        .O(\S0[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[52]_i_2 
       (.I0(\S0_reg_n_0_[52] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[52]),
        .O(\S0[52]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[53]_i_1 
       (.I0(\perm_u/S0_sb [8]),
        .I1(\perm_u/S0_sb [53]),
        .I2(\perm_u/S0_sb [17]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[53]_i_2_n_0 ),
        .O(\S0[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[53]_i_2 
       (.I0(\S0_reg_n_0_[53] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[53]),
        .O(\S0[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[54]_i_1 
       (.I0(\perm_u/S0_sb [9]),
        .I1(\perm_u/S0_sb [54]),
        .I2(\perm_u/S0_sb [18]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[54]_i_2_n_0 ),
        .O(\S0[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[54]_i_2 
       (.I0(\S0_reg_n_0_[54] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[54]),
        .O(\S0[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[55]_i_1 
       (.I0(\perm_u/S0_sb [10]),
        .I1(\perm_u/S0_sb [55]),
        .I2(\perm_u/S0_sb [19]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[55]_i_2_n_0 ),
        .O(\S0[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[55]_i_2 
       (.I0(\S0_reg_n_0_[55] ),
        .I1(keep_u_6),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[55]),
        .O(\S0[55]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h96FF960096009600)) 
    \S0[56]_i_1 
       (.I0(\perm_u/S0_sb [11]),
        .I1(\perm_u/S0_sb [56]),
        .I2(\perm_u/S0_sb [20]),
        .I3(st_reg_rep__0_n_0),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(abs_0),
        .O(\S0[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA36663AAAC666C)) 
    \S0[56]_i_2 
       (.I0(data_in[56]),
        .I1(\S0_reg_n_0_[56] ),
        .I2(data_len[4]),
        .I3(data_len[3]),
        .I4(dec_pt),
        .I5(keep_u_6),
        .O(abs_0));
  LUT3 #(
    .INIT(8'h80)) 
    \S0[56]_i_3 
       (.I0(mode),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase_reg[1]_rep__1_n_0 ),
        .O(dec_pt));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[57]_i_1 
       (.I0(\perm_u/S0_sb [12]),
        .I1(\perm_u/S0_sb [57]),
        .I2(\perm_u/S0_sb [21]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[57]_i_2_n_0 ),
        .O(\S0[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[57]_i_2 
       (.I0(\S0_reg_n_0_[57] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[57]),
        .O(\S0[57]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[58]_i_1 
       (.I0(\perm_u/S0_sb [13]),
        .I1(\perm_u/S0_sb [58]),
        .I2(\perm_u/S0_sb [22]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[58]_i_2_n_0 ),
        .O(\S0[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[58]_i_2 
       (.I0(\S0_reg_n_0_[58] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[58]),
        .O(\S0[58]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[59]_i_1 
       (.I0(\perm_u/S0_sb [14]),
        .I1(\perm_u/S0_sb [59]),
        .I2(\perm_u/S0_sb [23]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[59]_i_2_n_0 ),
        .O(\S0[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[59]_i_2 
       (.I0(\S0_reg_n_0_[59] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[59]),
        .O(\S0[59]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[5]_i_1 
       (.I0(\perm_u/S0_sb [24]),
        .I1(\perm_u/S0_sb [5]),
        .I2(\perm_u/S0_sb [33]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[5]_i_2_n_0 ),
        .O(\S0[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[5]_i_2 
       (.I0(\S0_reg_n_0_[5] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[5]),
        .O(\S0[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[60]_i_1 
       (.I0(\perm_u/S0_sb [15]),
        .I1(\perm_u/S0_sb [60]),
        .I2(\perm_u/S0_sb [24]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[60]_i_2_n_0 ),
        .O(\S0[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[60]_i_2 
       (.I0(\S0_reg_n_0_[60] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[60]),
        .O(\S0[60]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[61]_i_1 
       (.I0(\perm_u/S0_sb [16]),
        .I1(\perm_u/S0_sb [61]),
        .I2(\perm_u/S0_sb [25]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[61]_i_2_n_0 ),
        .O(\S0[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[61]_i_2 
       (.I0(\S0_reg_n_0_[61] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[61]),
        .O(\S0[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[62]_i_1 
       (.I0(\perm_u/S0_sb [17]),
        .I1(\perm_u/S0_sb [62]),
        .I2(\perm_u/S0_sb [26]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[62]_i_2_n_0 ),
        .O(\S0[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[62]_i_2 
       (.I0(\S0_reg_n_0_[62] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[62]),
        .O(\S0[62]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000EEEEAEAA)) 
    \S0[63]_i_1 
       (.I0(st_reg_rep__1_n_0),
        .I1(data_valid),
        .I2(\S0[63]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(rst),
        .O(\S0[63]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[63]_i_2 
       (.I0(\perm_u/S0_sb [18]),
        .I1(\perm_u/S0_sb [63]),
        .I2(\perm_u/S0_sb [27]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[63]_i_4_n_0 ),
        .O(\S0[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \S0[63]_i_3 
       (.I0(last_q_reg_n_0),
        .I1(data_len[4]),
        .I2(data_len[3]),
        .I3(data_len[1]),
        .I4(data_len[0]),
        .I5(data_len[2]),
        .O(\S0[63]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB99900008AAA0000)) 
    \S0[63]_i_4 
       (.I0(\S0_reg_n_0_[63] ),
        .I1(\data_out[63]_INST_0_i_2_n_0 ),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[63]),
        .O(\S0[63]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[6]_i_1 
       (.I0(\perm_u/S0_sb [25]),
        .I1(\perm_u/S0_sb [6]),
        .I2(\perm_u/S0_sb [34]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[6]_i_2_n_0 ),
        .O(\S0[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[6]_i_2 
       (.I0(\S0_reg_n_0_[6] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[6]),
        .O(\S0[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[7]_i_1 
       (.I0(\perm_u/S0_sb [26]),
        .I1(\perm_u/S0_sb [7]),
        .I2(\perm_u/S0_sb [35]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S0[7]_i_2_n_0 ),
        .O(\S0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[7]_i_2 
       (.I0(\S0_reg_n_0_[7] ),
        .I1(keep_u_0),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[7]),
        .O(\S0[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[8]_i_1 
       (.I0(\perm_u/S0_sb [27]),
        .I1(\perm_u/S0_sb [8]),
        .I2(\perm_u/S0_sb [36]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[8]_i_2_n_0 ),
        .O(\S0[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA022AA880A220088)) 
    \S0[8]_i_2 
       (.I0(\phase_reg[1]_rep__1_n_0 ),
        .I1(keep_u_0),
        .I2(dec_pt),
        .I3(keep_u_1),
        .I4(\S0_reg_n_0_[8] ),
        .I5(data_in[8]),
        .O(\S0[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S0[9]_i_1 
       (.I0(\perm_u/S0_sb [28]),
        .I1(\perm_u/S0_sb [9]),
        .I2(\perm_u/S0_sb [37]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S0[9]_i_2_n_0 ),
        .O(\S0[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE66600002AAA0000)) 
    \S0[9]_i_2 
       (.I0(\S0_reg_n_0_[9] ),
        .I1(keep_u_1),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep_n_0 ),
        .I5(data_in[9]),
        .O(\S0[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[0] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[0]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[10] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[10]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[11] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[11]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[12] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[12]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[13] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[13]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[14] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[14]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[15] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[15]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[16] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[16]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[17] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[17]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[18] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[18]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[19] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[19]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[1] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[1]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[20] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[20]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[21] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[21]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[22] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[22]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[23] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[23]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[24] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[24]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[25] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[25]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[26] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[26]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[27] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[27]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[28] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[28]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[29] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[29]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[2] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[2]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[30] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[30]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[31] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[31]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[32] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[32]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[33] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[33]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[34] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[34]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[35] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[35]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[36] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[36]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[37] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[37]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[38] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[38]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[39] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[39]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[3] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[3]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[40] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[40]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[41] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[41]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[42] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[42]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[43] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[43]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[44] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[44]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[45] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[45]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[46] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[46]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[47] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[47]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[48] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[48]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[49] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[49]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[4] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[4]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[50] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[50]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[51] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[51]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[52] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[52]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[53] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[53]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[54] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[54]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[55] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[55]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[56] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[56]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[57] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[57]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[58] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[58]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[59] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[59]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[5] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[5]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[60] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[60]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[61] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[61]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[62] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[62]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[63] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[63]_i_2_n_0 ),
        .Q(\S0_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[6] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[6]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[7] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[7]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[8] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[8]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S0_reg[9] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S0[9]_i_1_n_0 ),
        .Q(\S0_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \S1[0]_i_1 
       (.I0(S1_p),
        .I1(st_reg_rep__0_n_0),
        .I2(abs_1),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[0] ),
        .O(\S1[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S1[0]_i_2 
       (.I0(\perm_u/S1_sb [61]),
        .I1(\perm_u/S1_sb [0]),
        .I2(\perm_u/S1_sb [39]),
        .O(S1_p));
  LUT6 #(
    .INIT(64'hA363A363A363AC6C)) 
    \S1[0]_i_3 
       (.I0(data_in[64]),
        .I1(\S1_reg_n_0_[0] ),
        .I2(keep_u_8),
        .I3(dec_pt),
        .I4(data_len[3]),
        .I5(data_len[4]),
        .O(abs_1));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[10]_i_1 
       (.I0(\perm_u/S1_sb [7]),
        .I1(\perm_u/S1_sb [10]),
        .I2(\perm_u/S1_sb [49]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[10]_i_2_n_0 ),
        .O(\S1[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[10]_i_2 
       (.I0(data_in[74]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[10] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[10] ),
        .O(\S1[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[11]_i_1 
       (.I0(\perm_u/S1_sb [8]),
        .I1(\perm_u/S1_sb [11]),
        .I2(\perm_u/S1_sb [50]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[11]_i_2_n_0 ),
        .O(\S1[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[11]_i_2 
       (.I0(data_in[75]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[11] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[11] ),
        .O(\S1[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[12]_i_1 
       (.I0(\perm_u/S1_sb [9]),
        .I1(\perm_u/S1_sb [12]),
        .I2(\perm_u/S1_sb [51]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[12]_i_2_n_0 ),
        .O(\S1[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[12]_i_2 
       (.I0(data_in[76]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[12] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[12] ),
        .O(\S1[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[13]_i_1 
       (.I0(\perm_u/S1_sb [10]),
        .I1(\perm_u/S1_sb [13]),
        .I2(\perm_u/S1_sb [52]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[13]_i_2_n_0 ),
        .O(\S1[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[13]_i_2 
       (.I0(data_in[77]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[13] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[13] ),
        .O(\S1[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[14]_i_1 
       (.I0(\perm_u/S1_sb [11]),
        .I1(\perm_u/S1_sb [14]),
        .I2(\perm_u/S1_sb [53]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[14]_i_2_n_0 ),
        .O(\S1[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[14]_i_2 
       (.I0(data_in[78]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[14] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[14] ),
        .O(\S1[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[15]_i_1 
       (.I0(\perm_u/S1_sb [12]),
        .I1(\perm_u/S1_sb [15]),
        .I2(\perm_u/S1_sb [54]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[15]_i_2_n_0 ),
        .O(\S1[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[15]_i_2 
       (.I0(data_in[79]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[15] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[15] ),
        .O(\S1[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[16]_i_1 
       (.I0(\perm_u/S1_sb [13]),
        .I1(\perm_u/S1_sb [16]),
        .I2(\perm_u/S1_sb [55]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[16]_i_2_n_0 ),
        .O(\S1[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \S1[16]_i_2 
       (.I0(keep_u_10),
        .I1(data_in[80]),
        .I2(\S1[16]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[16] ),
        .O(\S1[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF55550000AAAA)) 
    \S1[16]_i_3 
       (.I0(keep_u_9),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(keep_u_10),
        .I5(\S1_reg_n_0_[16] ),
        .O(\S1[16]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[17]_i_1 
       (.I0(\perm_u/S1_sb [14]),
        .I1(\perm_u/S1_sb [17]),
        .I2(\perm_u/S1_sb [56]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[17]_i_2_n_0 ),
        .O(\S1[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[17]_i_2 
       (.I0(data_in[81]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[17] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[17] ),
        .O(\S1[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[18]_i_1 
       (.I0(\perm_u/S1_sb [15]),
        .I1(\perm_u/S1_sb [18]),
        .I2(\perm_u/S1_sb [57]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[18]_i_2_n_0 ),
        .O(\S1[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[18]_i_2 
       (.I0(data_in[82]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[18] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[18] ),
        .O(\S1[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[19]_i_1 
       (.I0(\perm_u/S1_sb [16]),
        .I1(\perm_u/S1_sb [19]),
        .I2(\perm_u/S1_sb [58]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[19]_i_2_n_0 ),
        .O(\S1[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[19]_i_2 
       (.I0(data_in[83]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[19] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[19] ),
        .O(\S1[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[1]_i_1 
       (.I0(\perm_u/S1_sb [62]),
        .I1(\perm_u/S1_sb [1]),
        .I2(\perm_u/S1_sb [40]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[1]_i_2_n_0 ),
        .O(\S1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[1]_i_2 
       (.I0(data_in[65]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[1] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[1] ),
        .O(\S1[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[20]_i_1 
       (.I0(\perm_u/S1_sb [17]),
        .I1(\perm_u/S1_sb [20]),
        .I2(\perm_u/S1_sb [59]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[20]_i_2_n_0 ),
        .O(\S1[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[20]_i_2 
       (.I0(data_in[84]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[20] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[20] ),
        .O(\S1[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[21]_i_1 
       (.I0(\perm_u/S1_sb [18]),
        .I1(\perm_u/S1_sb [21]),
        .I2(\perm_u/S1_sb [60]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[21]_i_2_n_0 ),
        .O(\S1[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[21]_i_2 
       (.I0(data_in[85]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[21] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[21] ),
        .O(\S1[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[22]_i_1 
       (.I0(\perm_u/S1_sb [19]),
        .I1(\perm_u/S1_sb [22]),
        .I2(\perm_u/S1_sb [61]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[22]_i_2_n_0 ),
        .O(\S1[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[22]_i_2 
       (.I0(data_in[86]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[22] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[22] ),
        .O(\S1[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[23]_i_1 
       (.I0(\perm_u/S1_sb [20]),
        .I1(\perm_u/S1_sb [23]),
        .I2(\perm_u/S1_sb [62]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[23]_i_2_n_0 ),
        .O(\S1[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[23]_i_2 
       (.I0(data_in[87]),
        .I1(dec_pt),
        .I2(keep_u_10),
        .I3(\S1_reg_n_0_[23] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[23] ),
        .O(\S1[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[24]_i_1 
       (.I0(\perm_u/S1_sb [21]),
        .I1(\perm_u/S1_sb [24]),
        .I2(\perm_u/S1_sb [63]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[24]_i_2_n_0 ),
        .O(\S1[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hB4FFB400)) 
    \S1[24]_i_2 
       (.I0(\data_out[95]_INST_0_i_2_n_0 ),
        .I1(data_in[88]),
        .I2(\S1[24]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[24] ),
        .O(\S1[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55553FFFAAAA0000)) 
    \S1[24]_i_3 
       (.I0(keep_u_10),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(\data_out[95]_INST_0_i_2_n_0 ),
        .I5(\S1_reg_n_0_[24] ),
        .O(\S1[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[25]_i_1 
       (.I0(\perm_u/S1_sb [22]),
        .I1(\perm_u/S1_sb [25]),
        .I2(\perm_u/S1_sb [0]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[25]_i_2_n_0 ),
        .O(\S1[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[25]_i_2 
       (.I0(data_in[89]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[25] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[25] ),
        .O(\S1[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[26]_i_1 
       (.I0(\perm_u/S1_sb [23]),
        .I1(\perm_u/S1_sb [26]),
        .I2(\perm_u/S1_sb [1]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[26]_i_2_n_0 ),
        .O(\S1[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[26]_i_2 
       (.I0(data_in[90]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[26] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[26] ),
        .O(\S1[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[27]_i_1 
       (.I0(\perm_u/S1_sb [24]),
        .I1(\perm_u/S1_sb [27]),
        .I2(\perm_u/S1_sb [2]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[27]_i_2_n_0 ),
        .O(\S1[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[27]_i_2 
       (.I0(data_in[91]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[27] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[27] ),
        .O(\S1[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[28]_i_1 
       (.I0(\perm_u/S1_sb [25]),
        .I1(\perm_u/S1_sb [28]),
        .I2(\perm_u/S1_sb [3]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[28]_i_2_n_0 ),
        .O(\S1[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[28]_i_2 
       (.I0(data_in[92]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[28] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[28] ),
        .O(\S1[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[29]_i_1 
       (.I0(\perm_u/S1_sb [26]),
        .I1(\perm_u/S1_sb [29]),
        .I2(\perm_u/S1_sb [4]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[29]_i_2_n_0 ),
        .O(\S1[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[29]_i_2 
       (.I0(data_in[93]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[29] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[29] ),
        .O(\S1[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[2]_i_1 
       (.I0(\perm_u/S1_sb [63]),
        .I1(\perm_u/S1_sb [2]),
        .I2(\perm_u/S1_sb [41]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[2]_i_2_n_0 ),
        .O(\S1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[2]_i_2 
       (.I0(data_in[66]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[2] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[2] ),
        .O(\S1[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[30]_i_1 
       (.I0(\perm_u/S1_sb [27]),
        .I1(\perm_u/S1_sb [30]),
        .I2(\perm_u/S1_sb [5]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[30]_i_2_n_0 ),
        .O(\S1[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[30]_i_2 
       (.I0(data_in[94]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[30] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[30] ),
        .O(\S1[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[31]_i_1 
       (.I0(\perm_u/S1_sb [28]),
        .I1(\perm_u/S1_sb [31]),
        .I2(\perm_u/S1_sb [6]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[31]_i_2_n_0 ),
        .O(\S1[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF90AFFFFF90A0000)) 
    \S1[31]_i_2 
       (.I0(data_in[95]),
        .I1(dec_pt),
        .I2(\data_out[95]_INST_0_i_2_n_0 ),
        .I3(\S1_reg_n_0_[31] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[31] ),
        .O(\S1[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[32]_i_1 
       (.I0(\perm_u/S1_sb [29]),
        .I1(\perm_u/S1_sb [32]),
        .I2(\perm_u/S1_sb [7]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[32]_i_2_n_0 ),
        .O(\S1[32]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \S1[32]_i_2 
       (.I0(keep_u_12),
        .I1(data_in[96]),
        .I2(\S1[32]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[32] ),
        .O(\S1[32]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFFAAAA00005555)) 
    \S1[32]_i_3 
       (.I0(\data_out[95]_INST_0_i_2_n_0 ),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(keep_u_12),
        .I5(\S1_reg_n_0_[32] ),
        .O(\S1[32]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[33]_i_1 
       (.I0(\perm_u/S1_sb [30]),
        .I1(\perm_u/S1_sb [33]),
        .I2(\perm_u/S1_sb [8]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[33]_i_2_n_0 ),
        .O(\S1[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[33]_i_2 
       (.I0(data_in[97]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[33] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[33] ),
        .O(\S1[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[34]_i_1 
       (.I0(\perm_u/S1_sb [31]),
        .I1(\perm_u/S1_sb [34]),
        .I2(\perm_u/S1_sb [9]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[34]_i_2_n_0 ),
        .O(\S1[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[34]_i_2 
       (.I0(data_in[98]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[34] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[34] ),
        .O(\S1[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[35]_i_1 
       (.I0(\perm_u/S1_sb [32]),
        .I1(\perm_u/S1_sb [35]),
        .I2(\perm_u/S1_sb [10]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[35]_i_2_n_0 ),
        .O(\S1[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[35]_i_2 
       (.I0(data_in[99]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[35] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[35] ),
        .O(\S1[35]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[36]_i_1 
       (.I0(\perm_u/S1_sb [33]),
        .I1(\perm_u/S1_sb [36]),
        .I2(\perm_u/S1_sb [11]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[36]_i_2_n_0 ),
        .O(\S1[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[36]_i_2 
       (.I0(data_in[100]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[36] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[36] ),
        .O(\S1[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[37]_i_1 
       (.I0(\perm_u/S1_sb [34]),
        .I1(\perm_u/S1_sb [37]),
        .I2(\perm_u/S1_sb [12]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[37]_i_2_n_0 ),
        .O(\S1[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[37]_i_2 
       (.I0(data_in[101]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[37] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[37] ),
        .O(\S1[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[38]_i_1 
       (.I0(\perm_u/S1_sb [35]),
        .I1(\perm_u/S1_sb [38]),
        .I2(\perm_u/S1_sb [13]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[38]_i_2_n_0 ),
        .O(\S1[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[38]_i_2 
       (.I0(data_in[102]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[38] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[38] ),
        .O(\S1[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[39]_i_1 
       (.I0(\perm_u/S1_sb [36]),
        .I1(\perm_u/S1_sb [39]),
        .I2(\perm_u/S1_sb [14]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[39]_i_2_n_0 ),
        .O(\S1[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[39]_i_2 
       (.I0(data_in[103]),
        .I1(dec_pt),
        .I2(keep_u_12),
        .I3(\S1_reg_n_0_[39] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[39] ),
        .O(\S1[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[3]_i_1 
       (.I0(\perm_u/S1_sb [0]),
        .I1(\perm_u/S1_sb [3]),
        .I2(\perm_u/S1_sb [42]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[3]_i_2_n_0 ),
        .O(\S1[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[3]_i_2 
       (.I0(data_in[67]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[3] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[3] ),
        .O(\S1[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[40]_i_1 
       (.I0(\perm_u/S1_sb [37]),
        .I1(\perm_u/S1_sb [40]),
        .I2(\perm_u/S1_sb [15]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[40]_i_2_n_0 ),
        .O(\S1[40]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \S1[40]_i_2 
       (.I0(keep_u_13),
        .I1(data_in[104]),
        .I2(\S1[40]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[40] ),
        .O(\S1[40]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF55550000AAAA)) 
    \S1[40]_i_3 
       (.I0(keep_u_12),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(keep_u_13),
        .I5(\S1_reg_n_0_[40] ),
        .O(\S1[40]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[41]_i_1 
       (.I0(\perm_u/S1_sb [38]),
        .I1(\perm_u/S1_sb [41]),
        .I2(\perm_u/S1_sb [16]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[41]_i_2_n_0 ),
        .O(\S1[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[41]_i_2 
       (.I0(data_in[105]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[41] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[41] ),
        .O(\S1[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[42]_i_1 
       (.I0(\perm_u/S1_sb [39]),
        .I1(\perm_u/S1_sb [42]),
        .I2(\perm_u/S1_sb [17]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[42]_i_2_n_0 ),
        .O(\S1[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[42]_i_2 
       (.I0(data_in[106]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[42] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[42] ),
        .O(\S1[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[43]_i_1 
       (.I0(\perm_u/S1_sb [40]),
        .I1(\perm_u/S1_sb [43]),
        .I2(\perm_u/S1_sb [18]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[43]_i_2_n_0 ),
        .O(\S1[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[43]_i_2 
       (.I0(data_in[107]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[43] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[43] ),
        .O(\S1[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[44]_i_1 
       (.I0(\perm_u/S1_sb [41]),
        .I1(\perm_u/S1_sb [44]),
        .I2(\perm_u/S1_sb [19]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[44]_i_2_n_0 ),
        .O(\S1[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[44]_i_2 
       (.I0(data_in[108]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[44] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[44] ),
        .O(\S1[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[45]_i_1 
       (.I0(\perm_u/S1_sb [42]),
        .I1(\perm_u/S1_sb [45]),
        .I2(\perm_u/S1_sb [20]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[45]_i_2_n_0 ),
        .O(\S1[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[45]_i_2 
       (.I0(data_in[109]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[45] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[45] ),
        .O(\S1[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[46]_i_1 
       (.I0(\perm_u/S1_sb [43]),
        .I1(\perm_u/S1_sb [46]),
        .I2(\perm_u/S1_sb [21]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[46]_i_2_n_0 ),
        .O(\S1[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[46]_i_2 
       (.I0(data_in[110]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[46] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[46] ),
        .O(\S1[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[47]_i_1 
       (.I0(\perm_u/S1_sb [44]),
        .I1(\perm_u/S1_sb [47]),
        .I2(\perm_u/S1_sb [22]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[47]_i_2_n_0 ),
        .O(\S1[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[47]_i_2 
       (.I0(data_in[111]),
        .I1(dec_pt),
        .I2(keep_u_13),
        .I3(\S1_reg_n_0_[47] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[47] ),
        .O(\S1[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[48]_i_1 
       (.I0(\perm_u/S1_sb [45]),
        .I1(\perm_u/S1_sb [48]),
        .I2(\perm_u/S1_sb [23]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[48]_i_2_n_0 ),
        .O(\S1[48]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \S1[48]_i_2 
       (.I0(keep_u_14),
        .I1(data_in[112]),
        .I2(\S1[48]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[48] ),
        .O(\S1[48]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF55550000AAAA)) 
    \S1[48]_i_3 
       (.I0(keep_u_13),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(keep_u_14),
        .I5(\S1_reg_n_0_[48] ),
        .O(\S1[48]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[49]_i_1 
       (.I0(\perm_u/S1_sb [46]),
        .I1(\perm_u/S1_sb [49]),
        .I2(\perm_u/S1_sb [24]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[49]_i_2_n_0 ),
        .O(\S1[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[49]_i_2 
       (.I0(data_in[113]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[49] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[49] ),
        .O(\S1[49]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[4]_i_1 
       (.I0(\perm_u/S1_sb [1]),
        .I1(\perm_u/S1_sb [4]),
        .I2(\perm_u/S1_sb [43]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[4]_i_2_n_0 ),
        .O(\S1[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[4]_i_2 
       (.I0(data_in[68]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[4] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[4] ),
        .O(\S1[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[50]_i_1 
       (.I0(\perm_u/S1_sb [47]),
        .I1(\perm_u/S1_sb [50]),
        .I2(\perm_u/S1_sb [25]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[50]_i_2_n_0 ),
        .O(\S1[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[50]_i_2 
       (.I0(data_in[114]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[50] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[50] ),
        .O(\S1[50]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[51]_i_1 
       (.I0(\perm_u/S1_sb [48]),
        .I1(\perm_u/S1_sb [51]),
        .I2(\perm_u/S1_sb [26]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[51]_i_2_n_0 ),
        .O(\S1[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[51]_i_2 
       (.I0(data_in[115]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[51] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[51] ),
        .O(\S1[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[52]_i_1 
       (.I0(\perm_u/S1_sb [49]),
        .I1(\perm_u/S1_sb [52]),
        .I2(\perm_u/S1_sb [27]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[52]_i_2_n_0 ),
        .O(\S1[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[52]_i_2 
       (.I0(data_in[116]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[52] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[52] ),
        .O(\S1[52]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[53]_i_1 
       (.I0(\perm_u/S1_sb [50]),
        .I1(\perm_u/S1_sb [53]),
        .I2(\perm_u/S1_sb [28]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[53]_i_2_n_0 ),
        .O(\S1[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[53]_i_2 
       (.I0(data_in[117]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[53] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[53] ),
        .O(\S1[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[54]_i_1 
       (.I0(\perm_u/S1_sb [51]),
        .I1(\perm_u/S1_sb [54]),
        .I2(\perm_u/S1_sb [29]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[54]_i_2_n_0 ),
        .O(\S1[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[54]_i_2 
       (.I0(data_in[118]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[54] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[54] ),
        .O(\S1[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[55]_i_1 
       (.I0(\perm_u/S1_sb [52]),
        .I1(\perm_u/S1_sb [55]),
        .I2(\perm_u/S1_sb [30]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[55]_i_2_n_0 ),
        .O(\S1[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[55]_i_2 
       (.I0(data_in[119]),
        .I1(dec_pt),
        .I2(keep_u_14),
        .I3(\S1_reg_n_0_[55] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[55] ),
        .O(\S1[55]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[56]_i_1 
       (.I0(\perm_u/S1_sb [53]),
        .I1(\perm_u/S1_sb [56]),
        .I2(\perm_u/S1_sb [31]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[56]_i_2_n_0 ),
        .O(\S1[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h663CFFFF663C0000)) 
    \S1[56]_i_2 
       (.I0(data_in[120]),
        .I1(abs_111_out),
        .I2(keep_u_14),
        .I3(data_len[4]),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[56] ),
        .O(\S1[56]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h2AAAAAAA)) 
    \S1[56]_i_3 
       (.I0(\S1_reg_n_0_[56] ),
        .I1(data_len[4]),
        .I2(mode),
        .I3(\phase_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .O(abs_111_out));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[57]_i_1 
       (.I0(\perm_u/S1_sb [54]),
        .I1(\perm_u/S1_sb [57]),
        .I2(\perm_u/S1_sb [32]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[57]_i_2_n_0 ),
        .O(\S1[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[57]_i_2 
       (.I0(data_in[121]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[57] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[57] ),
        .O(\S1[57]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[58]_i_1 
       (.I0(\perm_u/S1_sb [55]),
        .I1(\perm_u/S1_sb [58]),
        .I2(\perm_u/S1_sb [33]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[58]_i_2_n_0 ),
        .O(\S1[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[58]_i_2 
       (.I0(data_in[122]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[58] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[58] ),
        .O(\S1[58]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[59]_i_1 
       (.I0(\perm_u/S1_sb [56]),
        .I1(\perm_u/S1_sb [59]),
        .I2(\perm_u/S1_sb [34]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[59]_i_2_n_0 ),
        .O(\S1[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[59]_i_2 
       (.I0(data_in[123]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[59] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[59] ),
        .O(\S1[59]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[5]_i_1 
       (.I0(\perm_u/S1_sb [2]),
        .I1(\perm_u/S1_sb [5]),
        .I2(\perm_u/S1_sb [44]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[5]_i_2_n_0 ),
        .O(\S1[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[5]_i_2 
       (.I0(data_in[69]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[5] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[5] ),
        .O(\S1[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[60]_i_1 
       (.I0(\perm_u/S1_sb [57]),
        .I1(\perm_u/S1_sb [60]),
        .I2(\perm_u/S1_sb [35]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[60]_i_2_n_0 ),
        .O(\S1[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[60]_i_2 
       (.I0(data_in[124]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[60] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[60] ),
        .O(\S1[60]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[61]_i_1 
       (.I0(\perm_u/S1_sb [58]),
        .I1(\perm_u/S1_sb [61]),
        .I2(\perm_u/S1_sb [36]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[61]_i_2_n_0 ),
        .O(\S1[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[61]_i_2 
       (.I0(data_in[125]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[61] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[61] ),
        .O(\S1[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[62]_i_1 
       (.I0(\perm_u/S1_sb [59]),
        .I1(\perm_u/S1_sb [62]),
        .I2(\perm_u/S1_sb [37]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[62]_i_2_n_0 ),
        .O(\S1[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[62]_i_2 
       (.I0(data_in[126]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[62] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[62] ),
        .O(\S1[62]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[63]_i_1 
       (.I0(\perm_u/S1_sb [60]),
        .I1(\perm_u/S1_sb [63]),
        .I2(\perm_u/S1_sb [38]),
        .I3(st_reg_rep__1_n_0),
        .I4(\S1[63]_i_2_n_0 ),
        .O(\S1[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[63]_i_2 
       (.I0(data_in[127]),
        .I1(dec_pt),
        .I2(data_len[4]),
        .I3(\S1_reg_n_0_[63] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[63] ),
        .O(\S1[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[6]_i_1 
       (.I0(\perm_u/S1_sb [3]),
        .I1(\perm_u/S1_sb [6]),
        .I2(\perm_u/S1_sb [45]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[6]_i_2_n_0 ),
        .O(\S1[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[6]_i_2 
       (.I0(data_in[70]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[6] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[6] ),
        .O(\S1[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[7]_i_1 
       (.I0(\perm_u/S1_sb [4]),
        .I1(\perm_u/S1_sb [7]),
        .I2(\perm_u/S1_sb [46]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[7]_i_2_n_0 ),
        .O(\S1[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[7]_i_2 
       (.I0(data_in[71]),
        .I1(dec_pt),
        .I2(keep_u_8),
        .I3(\S1_reg_n_0_[7] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[7] ),
        .O(\S1[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[8]_i_1 
       (.I0(\perm_u/S1_sb [5]),
        .I1(\perm_u/S1_sb [8]),
        .I2(\perm_u/S1_sb [47]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[8]_i_2_n_0 ),
        .O(\S1[8]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h78FF7800)) 
    \S1[8]_i_2 
       (.I0(keep_u_9),
        .I1(data_in[72]),
        .I2(\S1[8]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\K0_reg_n_0_[8] ),
        .O(\S1[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3FFF55550000AAAA)) 
    \S1[8]_i_3 
       (.I0(keep_u_8),
        .I1(\phase_reg[1]_rep__1_n_0 ),
        .I2(\phase_reg_n_0_[0] ),
        .I3(mode),
        .I4(keep_u_9),
        .I5(\S1_reg_n_0_[8] ),
        .O(\S1[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S1[9]_i_1 
       (.I0(\perm_u/S1_sb [6]),
        .I1(\perm_u/S1_sb [9]),
        .I2(\perm_u/S1_sb [48]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S1[9]_i_2_n_0 ),
        .O(\S1[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h9FA0FFFF9FA00000)) 
    \S1[9]_i_2 
       (.I0(data_in[73]),
        .I1(dec_pt),
        .I2(keep_u_9),
        .I3(\S1_reg_n_0_[9] ),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(\K0_reg_n_0_[9] ),
        .O(\S1[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[0] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[0]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[10] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[10]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[11] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[11]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[12] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[12]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[13] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[13]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[14] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[14]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[15] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[15]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[16] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[16]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[17] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[17]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[18] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[18]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[19] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[19]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[1] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[1]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[20] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[20]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[21] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[21]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[22] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[22]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[23] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[23]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[24] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[24]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[25] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[25]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[26] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[26]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[27] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[27]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[28] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[28]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[29] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[29]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[2] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[2]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[30] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[30]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[31] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[31]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[32] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[32]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[33] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[33]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[34] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[34]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[35] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[35]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[36] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[36]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[37] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[37]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[38] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[38]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[39] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[39]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[3] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[3]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[40] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[40]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[41] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[41]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[42] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[42]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[43] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[43]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[44] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[44]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[45] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[45]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[46] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[46]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[47] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[47]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[48] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[48]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[49] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[49]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[4] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[4]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[50] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[50]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[51] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[51]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[52] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[52]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[53] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[53]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[54] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[54]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[55] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[55]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[56] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[56]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[57] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[57]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[58] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[58]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[59] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[59]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[5] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[5]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[60] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[60]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[61] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[61]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[62] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[62]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[63] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[63]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[6] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[6]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[7] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[7]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[8] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[8]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S1_reg[9] 
       (.C(clk),
        .CE(\S0[63]_i_1_n_0 ),
        .D(\S1[9]_i_1_n_0 ),
        .Q(\S1_reg_n_0_[9] ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[0]_i_1 
       (.I0(\perm_u/S2_sb [1]),
        .I1(\perm_u/S2_sb [0]),
        .I2(\perm_u/S2_sb [6]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[0]_i_2_n_0 ),
        .O(\S2[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[0]_i_2 
       (.I0(\K0_reg_n_0_[0] ),
        .I1(\S2_reg_n_0_[0] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[0] ),
        .O(\S2[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[10]_i_1 
       (.I0(\perm_u/S2_sb [11]),
        .I1(\perm_u/S2_sb [10]),
        .I2(\perm_u/S2_sb [16]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[10]_i_2_n_0 ),
        .O(\S2[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[10]_i_2 
       (.I0(\K0_reg_n_0_[10] ),
        .I1(\S2_reg_n_0_[10] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[10] ),
        .O(\S2[10]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[11]_i_1 
       (.I0(\perm_u/S2_sb [12]),
        .I1(\perm_u/S2_sb [11]),
        .I2(\perm_u/S2_sb [17]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[11]_i_2_n_0 ),
        .O(\S2[11]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[11]_i_2 
       (.I0(\K0_reg_n_0_[11] ),
        .I1(\S2_reg_n_0_[11] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[11] ),
        .O(\S2[11]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[12]_i_1 
       (.I0(\perm_u/S2_sb [13]),
        .I1(\perm_u/S2_sb [12]),
        .I2(\perm_u/S2_sb [18]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[12]_i_2_n_0 ),
        .O(\S2[12]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[12]_i_2 
       (.I0(\K0_reg_n_0_[12] ),
        .I1(\S2_reg_n_0_[12] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[12] ),
        .O(\S2[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[13]_i_1 
       (.I0(\perm_u/S2_sb [14]),
        .I1(\perm_u/S2_sb [13]),
        .I2(\perm_u/S2_sb [19]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[13]_i_2_n_0 ),
        .O(\S2[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[13]_i_2 
       (.I0(\K0_reg_n_0_[13] ),
        .I1(\S2_reg_n_0_[13] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[13] ),
        .O(\S2[13]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[14]_i_1 
       (.I0(\perm_u/S2_sb [15]),
        .I1(\perm_u/S2_sb [14]),
        .I2(\perm_u/S2_sb [20]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[14]_i_2_n_0 ),
        .O(\S2[14]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[14]_i_2 
       (.I0(\K0_reg_n_0_[14] ),
        .I1(\S2_reg_n_0_[14] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[14] ),
        .O(\S2[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[15]_i_1 
       (.I0(\perm_u/S2_sb [16]),
        .I1(\perm_u/S2_sb [15]),
        .I2(\perm_u/S2_sb [21]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[15]_i_2_n_0 ),
        .O(\S2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[15]_i_2 
       (.I0(\K0_reg_n_0_[15] ),
        .I1(\S2_reg_n_0_[15] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[15] ),
        .O(\S2[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[16]_i_1 
       (.I0(\perm_u/S2_sb [17]),
        .I1(\perm_u/S2_sb [16]),
        .I2(\perm_u/S2_sb [22]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[16]_i_2_n_0 ),
        .O(\S2[16]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[16]_i_2 
       (.I0(\K0_reg_n_0_[16] ),
        .I1(\S2_reg_n_0_[16] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[16] ),
        .O(\S2[16]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[17]_i_1 
       (.I0(\perm_u/S2_sb [18]),
        .I1(\perm_u/S2_sb [17]),
        .I2(\perm_u/S2_sb [23]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[17]_i_2_n_0 ),
        .O(\S2[17]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[17]_i_2 
       (.I0(\K0_reg_n_0_[17] ),
        .I1(\S2_reg_n_0_[17] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[17] ),
        .O(\S2[17]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[18]_i_1 
       (.I0(\perm_u/S2_sb [19]),
        .I1(\perm_u/S2_sb [18]),
        .I2(\perm_u/S2_sb [24]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[18]_i_2_n_0 ),
        .O(\S2[18]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[18]_i_2 
       (.I0(\K0_reg_n_0_[18] ),
        .I1(\S2_reg_n_0_[18] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[18] ),
        .O(\S2[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[19]_i_1 
       (.I0(\perm_u/S2_sb [20]),
        .I1(\perm_u/S2_sb [19]),
        .I2(\perm_u/S2_sb [25]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[19]_i_2_n_0 ),
        .O(\S2[19]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[19]_i_2 
       (.I0(\K0_reg_n_0_[19] ),
        .I1(\S2_reg_n_0_[19] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[19] ),
        .O(\S2[19]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[1]_i_1 
       (.I0(\perm_u/S2_sb [2]),
        .I1(\perm_u/S2_sb [1]),
        .I2(\perm_u/S2_sb [7]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[1]_i_2_n_0 ),
        .O(\S2[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[1]_i_2 
       (.I0(\K0_reg_n_0_[1] ),
        .I1(\S2_reg_n_0_[1] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[1] ),
        .O(\S2[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[20]_i_1 
       (.I0(\perm_u/S2_sb [21]),
        .I1(\perm_u/S2_sb [20]),
        .I2(\perm_u/S2_sb [26]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[20]_i_2_n_0 ),
        .O(\S2[20]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[20]_i_2 
       (.I0(\K0_reg_n_0_[20] ),
        .I1(\S2_reg_n_0_[20] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[20] ),
        .O(\S2[20]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[21]_i_1 
       (.I0(\perm_u/S2_sb [22]),
        .I1(\perm_u/S2_sb [21]),
        .I2(\perm_u/S2_sb [27]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[21]_i_2_n_0 ),
        .O(\S2[21]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[21]_i_2 
       (.I0(\K0_reg_n_0_[21] ),
        .I1(\S2_reg_n_0_[21] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[21] ),
        .O(\S2[21]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[22]_i_1 
       (.I0(\perm_u/S2_sb [23]),
        .I1(\perm_u/S2_sb [22]),
        .I2(\perm_u/S2_sb [28]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[22]_i_2_n_0 ),
        .O(\S2[22]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[22]_i_2 
       (.I0(\K0_reg_n_0_[22] ),
        .I1(\S2_reg_n_0_[22] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[22] ),
        .O(\S2[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[23]_i_1 
       (.I0(\perm_u/S2_sb [24]),
        .I1(\perm_u/S2_sb [23]),
        .I2(\perm_u/S2_sb [29]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[23]_i_2_n_0 ),
        .O(\S2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[23]_i_2 
       (.I0(\K0_reg_n_0_[23] ),
        .I1(\S2_reg_n_0_[23] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[23] ),
        .O(\S2[23]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[24]_i_1 
       (.I0(\perm_u/S2_sb [25]),
        .I1(\perm_u/S2_sb [24]),
        .I2(\perm_u/S2_sb [30]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[24]_i_2_n_0 ),
        .O(\S2[24]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[24]_i_2 
       (.I0(\K0_reg_n_0_[24] ),
        .I1(\S2_reg_n_0_[24] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[24] ),
        .O(\S2[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[25]_i_1 
       (.I0(\perm_u/S2_sb [26]),
        .I1(\perm_u/S2_sb [25]),
        .I2(\perm_u/S2_sb [31]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[25]_i_2_n_0 ),
        .O(\S2[25]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[25]_i_2 
       (.I0(\K0_reg_n_0_[25] ),
        .I1(\S2_reg_n_0_[25] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[25] ),
        .O(\S2[25]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[26]_i_1 
       (.I0(\perm_u/S2_sb [27]),
        .I1(\perm_u/S2_sb [26]),
        .I2(\perm_u/S2_sb [32]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[26]_i_2_n_0 ),
        .O(\S2[26]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[26]_i_2 
       (.I0(\K0_reg_n_0_[26] ),
        .I1(\S2_reg_n_0_[26] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[26] ),
        .O(\S2[26]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[27]_i_1 
       (.I0(\perm_u/S2_sb [28]),
        .I1(\perm_u/S2_sb [27]),
        .I2(\perm_u/S2_sb [33]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[27]_i_2_n_0 ),
        .O(\S2[27]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[27]_i_2 
       (.I0(\K0_reg_n_0_[27] ),
        .I1(\S2_reg_n_0_[27] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[27] ),
        .O(\S2[27]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[28]_i_1 
       (.I0(\perm_u/S2_sb [29]),
        .I1(\perm_u/S2_sb [28]),
        .I2(\perm_u/S2_sb [34]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[28]_i_2_n_0 ),
        .O(\S2[28]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[28]_i_2 
       (.I0(\K0_reg_n_0_[28] ),
        .I1(\S2_reg_n_0_[28] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[28] ),
        .O(\S2[28]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[29]_i_1 
       (.I0(\perm_u/S2_sb [30]),
        .I1(\perm_u/S2_sb [29]),
        .I2(\perm_u/S2_sb [35]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[29]_i_2_n_0 ),
        .O(\S2[29]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[29]_i_2 
       (.I0(\K0_reg_n_0_[29] ),
        .I1(\S2_reg_n_0_[29] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[29] ),
        .O(\S2[29]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[2]_i_1 
       (.I0(\perm_u/S2_sb [3]),
        .I1(\perm_u/S2_sb [2]),
        .I2(\perm_u/S2_sb [8]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[2]_i_2_n_0 ),
        .O(\S2[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[2]_i_2 
       (.I0(\K0_reg_n_0_[2] ),
        .I1(\S2_reg_n_0_[2] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[2] ),
        .O(\S2[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[30]_i_1 
       (.I0(\perm_u/S2_sb [31]),
        .I1(\perm_u/S2_sb [30]),
        .I2(\perm_u/S2_sb [36]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[30]_i_2_n_0 ),
        .O(\S2[30]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[30]_i_2 
       (.I0(\K0_reg_n_0_[30] ),
        .I1(\S2_reg_n_0_[30] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[30] ),
        .O(\S2[30]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[31]_i_1 
       (.I0(\perm_u/S2_sb [32]),
        .I1(\perm_u/S2_sb [31]),
        .I2(\perm_u/S2_sb [37]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[31]_i_2_n_0 ),
        .O(\S2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[31]_i_2 
       (.I0(\K0_reg_n_0_[31] ),
        .I1(\S2_reg_n_0_[31] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[31] ),
        .O(\S2[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[32]_i_1 
       (.I0(\perm_u/S2_sb [33]),
        .I1(\perm_u/S2_sb [32]),
        .I2(\perm_u/S2_sb [38]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[32]_i_2_n_0 ),
        .O(\S2[32]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[32]_i_2 
       (.I0(\K0_reg_n_0_[32] ),
        .I1(\S2_reg_n_0_[32] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[32] ),
        .O(\S2[32]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[33]_i_1 
       (.I0(\perm_u/S2_sb [34]),
        .I1(\perm_u/S2_sb [33]),
        .I2(\perm_u/S2_sb [39]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[33]_i_2_n_0 ),
        .O(\S2[33]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[33]_i_2 
       (.I0(\K0_reg_n_0_[33] ),
        .I1(\S2_reg_n_0_[33] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[33] ),
        .O(\S2[33]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[34]_i_1 
       (.I0(\perm_u/S2_sb [35]),
        .I1(\perm_u/S2_sb [34]),
        .I2(\perm_u/S2_sb [40]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[34]_i_2_n_0 ),
        .O(\S2[34]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[34]_i_2 
       (.I0(\K0_reg_n_0_[34] ),
        .I1(\S2_reg_n_0_[34] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[34] ),
        .O(\S2[34]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[35]_i_1 
       (.I0(\perm_u/S2_sb [36]),
        .I1(\perm_u/S2_sb [35]),
        .I2(\perm_u/S2_sb [41]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[35]_i_2_n_0 ),
        .O(\S2[35]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[35]_i_2 
       (.I0(\K0_reg_n_0_[35] ),
        .I1(\S2_reg_n_0_[35] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[35] ),
        .O(\S2[35]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[36]_i_1 
       (.I0(\perm_u/S2_sb [37]),
        .I1(\perm_u/S2_sb [36]),
        .I2(\perm_u/S2_sb [42]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[36]_i_2_n_0 ),
        .O(\S2[36]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[36]_i_2 
       (.I0(\K0_reg_n_0_[36] ),
        .I1(\S2_reg_n_0_[36] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[36] ),
        .O(\S2[36]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[37]_i_1 
       (.I0(\perm_u/S2_sb [38]),
        .I1(\perm_u/S2_sb [37]),
        .I2(\perm_u/S2_sb [43]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[37]_i_2_n_0 ),
        .O(\S2[37]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[37]_i_2 
       (.I0(\K0_reg_n_0_[37] ),
        .I1(\S2_reg_n_0_[37] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[37] ),
        .O(\S2[37]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[38]_i_1 
       (.I0(\perm_u/S2_sb [39]),
        .I1(\perm_u/S2_sb [38]),
        .I2(\perm_u/S2_sb [44]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[38]_i_2_n_0 ),
        .O(\S2[38]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[38]_i_2 
       (.I0(\K0_reg_n_0_[38] ),
        .I1(\S2_reg_n_0_[38] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[38] ),
        .O(\S2[38]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[39]_i_1 
       (.I0(\perm_u/S2_sb [40]),
        .I1(\perm_u/S2_sb [39]),
        .I2(\perm_u/S2_sb [45]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[39]_i_2_n_0 ),
        .O(\S2[39]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[39]_i_2 
       (.I0(\K0_reg_n_0_[39] ),
        .I1(\S2_reg_n_0_[39] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[39] ),
        .O(\S2[39]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[3]_i_1 
       (.I0(\perm_u/S2_sb [4]),
        .I1(\perm_u/S2_sb [3]),
        .I2(\perm_u/S2_sb [9]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[3]_i_2_n_0 ),
        .O(\S2[3]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[3]_i_2 
       (.I0(\K0_reg_n_0_[3] ),
        .I1(\S2_reg_n_0_[3] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[3] ),
        .O(\S2[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[40]_i_1 
       (.I0(\perm_u/S2_sb [41]),
        .I1(\perm_u/S2_sb [40]),
        .I2(\perm_u/S2_sb [46]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[40]_i_2_n_0 ),
        .O(\S2[40]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[40]_i_2 
       (.I0(\K0_reg_n_0_[40] ),
        .I1(\S2_reg_n_0_[40] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[40] ),
        .O(\S2[40]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[41]_i_1 
       (.I0(\perm_u/S2_sb [42]),
        .I1(\perm_u/S2_sb [41]),
        .I2(\perm_u/S2_sb [47]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[41]_i_2_n_0 ),
        .O(\S2[41]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[41]_i_2 
       (.I0(\K0_reg_n_0_[41] ),
        .I1(\S2_reg_n_0_[41] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[41] ),
        .O(\S2[41]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[42]_i_1 
       (.I0(\perm_u/S2_sb [43]),
        .I1(\perm_u/S2_sb [42]),
        .I2(\perm_u/S2_sb [48]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[42]_i_2_n_0 ),
        .O(\S2[42]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[42]_i_2 
       (.I0(\K0_reg_n_0_[42] ),
        .I1(\S2_reg_n_0_[42] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[42] ),
        .O(\S2[42]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[43]_i_1 
       (.I0(\perm_u/S2_sb [44]),
        .I1(\perm_u/S2_sb [43]),
        .I2(\perm_u/S2_sb [49]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[43]_i_2_n_0 ),
        .O(\S2[43]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[43]_i_2 
       (.I0(\K0_reg_n_0_[43] ),
        .I1(\S2_reg_n_0_[43] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[43] ),
        .O(\S2[43]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[44]_i_1 
       (.I0(\perm_u/S2_sb [45]),
        .I1(\perm_u/S2_sb [44]),
        .I2(\perm_u/S2_sb [50]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[44]_i_2_n_0 ),
        .O(\S2[44]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[44]_i_2 
       (.I0(\K0_reg_n_0_[44] ),
        .I1(\S2_reg_n_0_[44] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[44] ),
        .O(\S2[44]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[45]_i_1 
       (.I0(\perm_u/S2_sb [46]),
        .I1(\perm_u/S2_sb [45]),
        .I2(\perm_u/S2_sb [51]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[45]_i_2_n_0 ),
        .O(\S2[45]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[45]_i_2 
       (.I0(\K0_reg_n_0_[45] ),
        .I1(\S2_reg_n_0_[45] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[45] ),
        .O(\S2[45]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[46]_i_1 
       (.I0(\perm_u/S2_sb [47]),
        .I1(\perm_u/S2_sb [46]),
        .I2(\perm_u/S2_sb [52]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[46]_i_2_n_0 ),
        .O(\S2[46]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[46]_i_2 
       (.I0(\K0_reg_n_0_[46] ),
        .I1(\S2_reg_n_0_[46] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[46] ),
        .O(\S2[46]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[47]_i_1 
       (.I0(\perm_u/S2_sb [48]),
        .I1(\perm_u/S2_sb [47]),
        .I2(\perm_u/S2_sb [53]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[47]_i_2_n_0 ),
        .O(\S2[47]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[47]_i_2 
       (.I0(\K0_reg_n_0_[47] ),
        .I1(\S2_reg_n_0_[47] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[47] ),
        .O(\S2[47]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[48]_i_1 
       (.I0(\perm_u/S2_sb [49]),
        .I1(\perm_u/S2_sb [48]),
        .I2(\perm_u/S2_sb [54]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[48]_i_2_n_0 ),
        .O(\S2[48]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[48]_i_2 
       (.I0(\K0_reg_n_0_[48] ),
        .I1(\S2_reg_n_0_[48] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[48] ),
        .O(\S2[48]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[49]_i_1 
       (.I0(\perm_u/S2_sb [50]),
        .I1(\perm_u/S2_sb [49]),
        .I2(\perm_u/S2_sb [55]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[49]_i_2_n_0 ),
        .O(\S2[49]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[49]_i_2 
       (.I0(\K0_reg_n_0_[49] ),
        .I1(\S2_reg_n_0_[49] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[49] ),
        .O(\S2[49]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[4]_i_1 
       (.I0(\perm_u/S2_sb [5]),
        .I1(\perm_u/S2_sb [4]),
        .I2(\perm_u/S2_sb [10]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[4]_i_2_n_0 ),
        .O(\S2[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[4]_i_2 
       (.I0(\K0_reg_n_0_[4] ),
        .I1(\S2_reg_n_0_[4] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[4] ),
        .O(\S2[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[50]_i_1 
       (.I0(\perm_u/S2_sb [51]),
        .I1(\perm_u/S2_sb [50]),
        .I2(\perm_u/S2_sb [56]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[50]_i_2_n_0 ),
        .O(\S2[50]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[50]_i_2 
       (.I0(\K0_reg_n_0_[50] ),
        .I1(\S2_reg_n_0_[50] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[50] ),
        .O(\S2[50]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[51]_i_1 
       (.I0(\perm_u/S2_sb [52]),
        .I1(\perm_u/S2_sb [51]),
        .I2(\perm_u/S2_sb [57]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[51]_i_2_n_0 ),
        .O(\S2[51]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[51]_i_2 
       (.I0(\K0_reg_n_0_[51] ),
        .I1(\S2_reg_n_0_[51] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[51] ),
        .O(\S2[51]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[52]_i_1 
       (.I0(\perm_u/S2_sb [53]),
        .I1(\perm_u/S2_sb [52]),
        .I2(\perm_u/S2_sb [58]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[52]_i_2_n_0 ),
        .O(\S2[52]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[52]_i_2 
       (.I0(\K0_reg_n_0_[52] ),
        .I1(\S2_reg_n_0_[52] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[52] ),
        .O(\S2[52]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[53]_i_1 
       (.I0(\perm_u/S2_sb [54]),
        .I1(\perm_u/S2_sb [53]),
        .I2(\perm_u/S2_sb [59]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[53]_i_2_n_0 ),
        .O(\S2[53]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[53]_i_2 
       (.I0(\K0_reg_n_0_[53] ),
        .I1(\S2_reg_n_0_[53] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[53] ),
        .O(\S2[53]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[54]_i_1 
       (.I0(\perm_u/S2_sb [55]),
        .I1(\perm_u/S2_sb [54]),
        .I2(\perm_u/S2_sb [60]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[54]_i_2_n_0 ),
        .O(\S2[54]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[54]_i_2 
       (.I0(\K0_reg_n_0_[54] ),
        .I1(\S2_reg_n_0_[54] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[54] ),
        .O(\S2[54]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[55]_i_1 
       (.I0(\perm_u/S2_sb [56]),
        .I1(\perm_u/S2_sb [55]),
        .I2(\perm_u/S2_sb [61]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[55]_i_2_n_0 ),
        .O(\S2[55]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[55]_i_2 
       (.I0(\K0_reg_n_0_[55] ),
        .I1(\S2_reg_n_0_[55] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[55] ),
        .O(\S2[55]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[56]_i_1 
       (.I0(\perm_u/S2_sb [57]),
        .I1(\perm_u/S2_sb [56]),
        .I2(\perm_u/S2_sb [62]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[56]_i_2_n_0 ),
        .O(\S2[56]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[56]_i_2 
       (.I0(\K0_reg_n_0_[56] ),
        .I1(\S2_reg_n_0_[56] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[56] ),
        .O(\S2[56]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[57]_i_1 
       (.I0(\perm_u/S2_sb [58]),
        .I1(\perm_u/S2_sb [57]),
        .I2(\perm_u/S2_sb [63]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[57]_i_2_n_0 ),
        .O(\S2[57]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[57]_i_2 
       (.I0(\K0_reg_n_0_[57] ),
        .I1(\S2_reg_n_0_[57] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[57] ),
        .O(\S2[57]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[58]_i_1 
       (.I0(\perm_u/S2_sb [59]),
        .I1(\perm_u/S2_sb [58]),
        .I2(\perm_u/S2_sb [0]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[58]_i_2_n_0 ),
        .O(\S2[58]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[58]_i_2 
       (.I0(\K0_reg_n_0_[58] ),
        .I1(\S2_reg_n_0_[58] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[58] ),
        .O(\S2[58]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[59]_i_1 
       (.I0(\perm_u/S2_sb [60]),
        .I1(\perm_u/S2_sb [59]),
        .I2(\perm_u/S2_sb [1]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[59]_i_2_n_0 ),
        .O(\S2[59]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[59]_i_2 
       (.I0(\K0_reg_n_0_[59] ),
        .I1(\S2_reg_n_0_[59] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[59] ),
        .O(\S2[59]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[5]_i_1 
       (.I0(\perm_u/S2_sb [6]),
        .I1(\perm_u/S2_sb [5]),
        .I2(\perm_u/S2_sb [11]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[5]_i_2_n_0 ),
        .O(\S2[5]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[5]_i_2 
       (.I0(\K0_reg_n_0_[5] ),
        .I1(\S2_reg_n_0_[5] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[5] ),
        .O(\S2[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[60]_i_1 
       (.I0(\perm_u/S2_sb [61]),
        .I1(\perm_u/S2_sb [60]),
        .I2(\perm_u/S2_sb [2]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[60]_i_2_n_0 ),
        .O(\S2[60]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[60]_i_2 
       (.I0(\K0_reg_n_0_[60] ),
        .I1(\S2_reg_n_0_[60] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[60] ),
        .O(\S2[60]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[61]_i_1 
       (.I0(\perm_u/S2_sb [62]),
        .I1(\perm_u/S2_sb [61]),
        .I2(\perm_u/S2_sb [3]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[61]_i_2_n_0 ),
        .O(\S2[61]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[61]_i_2 
       (.I0(\K0_reg_n_0_[61] ),
        .I1(\S2_reg_n_0_[61] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[61] ),
        .O(\S2[61]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[62]_i_1 
       (.I0(\perm_u/S2_sb [63]),
        .I1(\perm_u/S2_sb [62]),
        .I2(\perm_u/S2_sb [4]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[62]_i_2_n_0 ),
        .O(\S2[62]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[62]_i_2 
       (.I0(\K0_reg_n_0_[62] ),
        .I1(\S2_reg_n_0_[62] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[62] ),
        .O(\S2[62]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[63]_i_1 
       (.I0(\perm_u/S2_sb [0]),
        .I1(\perm_u/S2_sb [63]),
        .I2(\perm_u/S2_sb [5]),
        .I3(st_reg_rep_n_0),
        .I4(\S2[63]_i_2_n_0 ),
        .O(\S2[63]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[63]_i_2 
       (.I0(\K0_reg_n_0_[63] ),
        .I1(\S2_reg_n_0_[63] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\K1_reg_n_0_[63] ),
        .O(\S2[63]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[6]_i_1 
       (.I0(\perm_u/S2_sb [7]),
        .I1(\perm_u/S2_sb [6]),
        .I2(\perm_u/S2_sb [12]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[6]_i_2_n_0 ),
        .O(\S2[6]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[6]_i_2 
       (.I0(\K0_reg_n_0_[6] ),
        .I1(\S2_reg_n_0_[6] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[6] ),
        .O(\S2[6]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[7]_i_1 
       (.I0(\perm_u/S2_sb [8]),
        .I1(\perm_u/S2_sb [7]),
        .I2(\perm_u/S2_sb [13]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[7]_i_2_n_0 ),
        .O(\S2[7]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[7]_i_2 
       (.I0(\K0_reg_n_0_[7] ),
        .I1(\S2_reg_n_0_[7] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[7] ),
        .O(\S2[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[8]_i_1 
       (.I0(\perm_u/S2_sb [9]),
        .I1(\perm_u/S2_sb [8]),
        .I2(\perm_u/S2_sb [14]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[8]_i_2_n_0 ),
        .O(\S2[8]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[8]_i_2 
       (.I0(\K0_reg_n_0_[8] ),
        .I1(\S2_reg_n_0_[8] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[8] ),
        .O(\S2[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h96FF9600)) 
    \S2[9]_i_1 
       (.I0(\perm_u/S2_sb [10]),
        .I1(\perm_u/S2_sb [9]),
        .I2(\perm_u/S2_sb [15]),
        .I3(st_reg_rep__0_n_0),
        .I4(\S2[9]_i_2_n_0 ),
        .O(\S2[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6F60)) 
    \S2[9]_i_2 
       (.I0(\K0_reg_n_0_[9] ),
        .I1(\S2_reg_n_0_[9] ),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(\K1_reg_n_0_[9] ),
        .O(\S2[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[0] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[0]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[10] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[10]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[11] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[11]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[12] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[12]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[13] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[13]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[14] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[14]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[15] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[15]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[16] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[16]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[17] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[17]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[18] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[18]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[19] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[19]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[1] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[1]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[20] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[20]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[21] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[21]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[22] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[22]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[23] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[23]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[24] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[24]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[25] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[25]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[26] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[26]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[27] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[27]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[28] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[28]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[29] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[29]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[2] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[2]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[30] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[30]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[31] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[31]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[32] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[32]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[33] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[33]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[34] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[34]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[35] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[35]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[36] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[36]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[37] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[37]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[38] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[38]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[39] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[39]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[3] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[3]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[40] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[40]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[41] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[41]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[42] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[42]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[43] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[43]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[44] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[44]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[45] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[45]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[46] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[46]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[47] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[47]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[48] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[48]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[49] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[49]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[4] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[4]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[50] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[50]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[51] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[51]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[52] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[52]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[53] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[53]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[54] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[54]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[55] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[55]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[56] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[56]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[57] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[57]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[58] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[58]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[59] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[59]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[5] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[5]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[60] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[60]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[61] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[61]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[62] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[62]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[63] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[63]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[6] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[6]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[7] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[7]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[8] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[8]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S2_reg[9] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S2[9]_i_1_n_0 ),
        .Q(\S2_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[0]_i_1 
       (.I0(S3_n[0]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[0] ),
        .I3(\S3_reg_n_0_[0] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[0]),
        .O(\S3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[10]_i_1 
       (.I0(S3_n[10]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[10] ),
        .I3(\S3_reg_n_0_[10] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[10]),
        .O(\S3[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[11]_i_1 
       (.I0(S3_n[11]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[11] ),
        .I3(\S3_reg_n_0_[11] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[11]),
        .O(\S3[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[12]_i_1 
       (.I0(S3_n[12]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[12] ),
        .I3(\S3_reg_n_0_[12] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[12]),
        .O(\S3[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[13]_i_1 
       (.I0(S3_n[13]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[13] ),
        .I3(\S3_reg_n_0_[13] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[13]),
        .O(\S3[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[14]_i_1 
       (.I0(S3_n[14]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[14] ),
        .I3(\S3_reg_n_0_[14] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[14]),
        .O(\S3[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[15]_i_1 
       (.I0(S3_n[15]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[15] ),
        .I3(\S3_reg_n_0_[15] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[15]),
        .O(\S3[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[16]_i_1 
       (.I0(S3_n[16]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[16] ),
        .I3(\S3_reg_n_0_[16] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[16]),
        .O(\S3[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[17]_i_1 
       (.I0(S3_n[17]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[17] ),
        .I3(\S3_reg_n_0_[17] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[17]),
        .O(\S3[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[18]_i_1 
       (.I0(S3_n[18]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[18] ),
        .I3(\S3_reg_n_0_[18] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[18]),
        .O(\S3[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[19]_i_1 
       (.I0(S3_n[19]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[19] ),
        .I3(\S3_reg_n_0_[19] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[19]),
        .O(\S3[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[1]_i_1 
       (.I0(S3_n[1]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[1] ),
        .I3(\S3_reg_n_0_[1] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[1]),
        .O(\S3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[20]_i_1 
       (.I0(S3_n[20]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[20] ),
        .I3(\S3_reg_n_0_[20] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[20]),
        .O(\S3[20]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[21]_i_1 
       (.I0(S3_n[21]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[21] ),
        .I3(\S3_reg_n_0_[21] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[21]),
        .O(\S3[21]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[22]_i_1 
       (.I0(S3_n[22]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[22] ),
        .I3(\S3_reg_n_0_[22] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[22]),
        .O(\S3[22]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[23]_i_1 
       (.I0(S3_n[23]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[23] ),
        .I3(\S3_reg_n_0_[23] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[23]),
        .O(\S3[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[24]_i_1 
       (.I0(S3_n[24]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[24] ),
        .I3(\S3_reg_n_0_[24] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[24]),
        .O(\S3[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[25]_i_1 
       (.I0(S3_n[25]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[25] ),
        .I3(\S3_reg_n_0_[25] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[25]),
        .O(\S3[25]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[26]_i_1 
       (.I0(S3_n[26]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[26] ),
        .I3(\S3_reg_n_0_[26] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[26]),
        .O(\S3[26]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[27]_i_1 
       (.I0(S3_n[27]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[27] ),
        .I3(\S3_reg_n_0_[27] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[27]),
        .O(\S3[27]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[28]_i_1 
       (.I0(S3_n[28]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[28] ),
        .I3(\S3_reg_n_0_[28] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[28]),
        .O(\S3[28]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[29]_i_1 
       (.I0(S3_n[29]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[29] ),
        .I3(\S3_reg_n_0_[29] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[29]),
        .O(\S3[29]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[2]_i_1 
       (.I0(S3_n[2]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[2] ),
        .I3(\S3_reg_n_0_[2] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[2]),
        .O(\S3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[30]_i_1 
       (.I0(S3_n[30]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[30] ),
        .I3(\S3_reg_n_0_[30] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[30]),
        .O(\S3[30]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[31]_i_1 
       (.I0(S3_n[31]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[31] ),
        .I3(\S3_reg_n_0_[31] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[31]),
        .O(\S3[31]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[32]_i_1 
       (.I0(S3_n[32]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[32] ),
        .I3(\S3_reg_n_0_[32] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[32]),
        .O(\S3[32]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[33]_i_1 
       (.I0(S3_n[33]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[33] ),
        .I3(\S3_reg_n_0_[33] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[33]),
        .O(\S3[33]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[34]_i_1 
       (.I0(S3_n[34]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[34] ),
        .I3(\S3_reg_n_0_[34] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[34]),
        .O(\S3[34]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[35]_i_1 
       (.I0(S3_n[35]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[35] ),
        .I3(\S3_reg_n_0_[35] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[35]),
        .O(\S3[35]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[36]_i_1 
       (.I0(S3_n[36]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[36] ),
        .I3(\S3_reg_n_0_[36] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[36]),
        .O(\S3[36]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[37]_i_1 
       (.I0(S3_n[37]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[37] ),
        .I3(\S3_reg_n_0_[37] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[37]),
        .O(\S3[37]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[38]_i_1 
       (.I0(S3_n[38]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[38] ),
        .I3(\S3_reg_n_0_[38] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[38]),
        .O(\S3[38]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[39]_i_1 
       (.I0(S3_n[39]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[39] ),
        .I3(\S3_reg_n_0_[39] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[39]),
        .O(\S3[39]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[3]_i_1 
       (.I0(S3_n[3]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[3] ),
        .I3(\S3_reg_n_0_[3] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[3]),
        .O(\S3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[40]_i_1 
       (.I0(S3_n[40]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[40] ),
        .I3(\S3_reg_n_0_[40] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[40]),
        .O(\S3[40]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[41]_i_1 
       (.I0(S3_n[41]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[41] ),
        .I3(\S3_reg_n_0_[41] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[41]),
        .O(\S3[41]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[42]_i_1 
       (.I0(S3_n[42]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[42] ),
        .I3(\S3_reg_n_0_[42] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[42]),
        .O(\S3[42]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[43]_i_1 
       (.I0(S3_n[43]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[43] ),
        .I3(\S3_reg_n_0_[43] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[43]),
        .O(\S3[43]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[44]_i_1 
       (.I0(S3_n[44]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[44] ),
        .I3(\S3_reg_n_0_[44] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[44]),
        .O(\S3[44]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[45]_i_1 
       (.I0(S3_n[45]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[45] ),
        .I3(\S3_reg_n_0_[45] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[45]),
        .O(\S3[45]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[46]_i_1 
       (.I0(S3_n[46]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[46] ),
        .I3(\S3_reg_n_0_[46] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[46]),
        .O(\S3[46]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[47]_i_1 
       (.I0(S3_n[47]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[47] ),
        .I3(\S3_reg_n_0_[47] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[47]),
        .O(\S3[47]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[48]_i_1 
       (.I0(S3_n[48]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[48] ),
        .I3(\S3_reg_n_0_[48] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[48]),
        .O(\S3[48]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[49]_i_1 
       (.I0(S3_n[49]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[49] ),
        .I3(\S3_reg_n_0_[49] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[49]),
        .O(\S3[49]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[4]_i_1 
       (.I0(S3_n[4]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[4] ),
        .I3(\S3_reg_n_0_[4] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[4]),
        .O(\S3[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[50]_i_1 
       (.I0(S3_n[50]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[50] ),
        .I3(\S3_reg_n_0_[50] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[50]),
        .O(\S3[50]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[51]_i_1 
       (.I0(S3_n[51]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[51] ),
        .I3(\S3_reg_n_0_[51] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[51]),
        .O(\S3[51]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[52]_i_1 
       (.I0(S3_n[52]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[52] ),
        .I3(\S3_reg_n_0_[52] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[52]),
        .O(\S3[52]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[53]_i_1 
       (.I0(S3_n[53]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[53] ),
        .I3(\S3_reg_n_0_[53] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[53]),
        .O(\S3[53]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[54]_i_1 
       (.I0(S3_n[54]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[54] ),
        .I3(\S3_reg_n_0_[54] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[54]),
        .O(\S3[54]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[55]_i_1 
       (.I0(S3_n[55]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[55] ),
        .I3(\S3_reg_n_0_[55] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[55]),
        .O(\S3[55]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[56]_i_1 
       (.I0(S3_n[56]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[56] ),
        .I3(\S3_reg_n_0_[56] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[56]),
        .O(\S3[56]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[57]_i_1 
       (.I0(S3_n[57]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[57] ),
        .I3(\S3_reg_n_0_[57] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[57]),
        .O(\S3[57]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[58]_i_1 
       (.I0(S3_n[58]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[58] ),
        .I3(\S3_reg_n_0_[58] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[58]),
        .O(\S3[58]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[59]_i_1 
       (.I0(S3_n[59]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[59] ),
        .I3(\S3_reg_n_0_[59] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[59]),
        .O(\S3[59]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[5]_i_1 
       (.I0(S3_n[5]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[5] ),
        .I3(\S3_reg_n_0_[5] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[5]),
        .O(\S3[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[60]_i_1 
       (.I0(S3_n[60]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[60] ),
        .I3(\S3_reg_n_0_[60] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[60]),
        .O(\S3[60]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[61]_i_1 
       (.I0(S3_n[61]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[61] ),
        .I3(\S3_reg_n_0_[61] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[61]),
        .O(\S3[61]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[62]_i_1 
       (.I0(S3_n[62]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[62] ),
        .I3(\S3_reg_n_0_[62] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[62]),
        .O(\S3[62]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00000000AEEEAAAA)) 
    \S3[63]_i_1 
       (.I0(st_reg_rep_n_0),
        .I1(data_valid),
        .I2(\phase_reg[1]_rep__0_n_0 ),
        .I3(data_len[4]),
        .I4(\phase_reg_n_0_[0] ),
        .I5(rst),
        .O(\S3[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[63]_i_2 
       (.I0(S3_n[63]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[63] ),
        .I3(\S3_reg_n_0_[63] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[63]),
        .O(\S3[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[6]_i_1 
       (.I0(S3_n[6]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[6] ),
        .I3(\S3_reg_n_0_[6] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[6]),
        .O(\S3[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[7]_i_1 
       (.I0(S3_n[7]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[7] ),
        .I3(\S3_reg_n_0_[7] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[7]),
        .O(\S3[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[8]_i_1 
       (.I0(S3_n[8]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[8] ),
        .I3(\S3_reg_n_0_[8] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[8]),
        .O(\S3[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8BB8BBBB8BB88888)) 
    \S3[9]_i_1 
       (.I0(S3_n[9]),
        .I1(st_reg_rep_n_0),
        .I2(\K1_reg_n_0_[9] ),
        .I3(\S3_reg_n_0_[9] ),
        .I4(\phase_reg[1]_rep__0_n_0 ),
        .I5(data_in[9]),
        .O(\S3[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[0] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[0]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[10] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[10]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[11] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[11]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[12] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[12]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[13] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[13]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[14] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[14]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[15] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[15]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[16] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[16]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[17] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[17]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[18] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[18]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[19] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[19]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[1] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[1]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[20] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[20]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[21] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[21]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[22] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[22]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[23] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[23]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[24] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[24]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[25] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[25]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[26] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[26]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[27] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[27]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[28] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[28]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[29] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[29]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[2] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[2]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[30] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[30]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[31] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[31]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[32] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[32]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[33] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[33]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[34] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[34]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[35] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[35]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[36] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[36]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[37] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[37]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[38] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[38]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[39] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[39]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[3] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[3]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[40] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[40]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[41] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[41]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[42] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[42]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[43] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[43]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[44] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[44]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[45] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[45]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[46] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[46]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[47] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[47]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[48] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[48]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[49] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[49]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[4] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[4]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[50] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[50]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[51] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[51]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[52] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[52]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[53] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[53]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[54] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[54]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[55] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[55]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[56] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[56]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[57] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[57]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[58] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[58]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[59] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[59]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[5] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[5]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[60] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[60]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[61] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[61]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[62] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[62]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[63] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[63]_i_2_n_0 ),
        .Q(\S3_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[6] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[6]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[7] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[7]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[8] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[8]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S3_reg[9] 
       (.C(clk),
        .CE(\S3[63]_i_1_n_0 ),
        .D(\S3[9]_i_1_n_0 ),
        .Q(\S3_reg_n_0_[9] ),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[0]_i_1 
       (.I0(\data_out[64]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[64]),
        .O(p_1_in[0]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[10]_i_1 
       (.I0(\data_out[74]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[74]),
        .O(p_1_in[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[11]_i_1 
       (.I0(\data_out[75]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[75]),
        .O(p_1_in[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[12]_i_1 
       (.I0(\data_out[76]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[76]),
        .O(p_1_in[12]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[13]_i_1 
       (.I0(\data_out[77]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[77]),
        .O(p_1_in[13]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[14]_i_1 
       (.I0(\data_out[78]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[78]),
        .O(p_1_in[14]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[15]_i_1 
       (.I0(\data_out[79]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[79]),
        .O(p_1_in[15]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[16]_i_1 
       (.I0(\data_out[80]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[80]),
        .O(p_1_in[16]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[17]_i_1 
       (.I0(\data_out[81]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[81]),
        .O(p_1_in[17]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[18]_i_1 
       (.I0(\data_out[82]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[82]),
        .O(p_1_in[18]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[19]_i_1 
       (.I0(\data_out[83]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[83]),
        .O(p_1_in[19]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[1]_i_1 
       (.I0(\data_out[65]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[65]),
        .O(p_1_in[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[20]_i_1 
       (.I0(\data_out[84]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[84]),
        .O(p_1_in[20]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[21]_i_1 
       (.I0(\data_out[85]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[85]),
        .O(p_1_in[21]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[22]_i_1 
       (.I0(\data_out[86]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[86]),
        .O(p_1_in[22]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[23]_i_1 
       (.I0(\data_out[87]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[87]),
        .O(p_1_in[23]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[24]_i_1 
       (.I0(\data_out[88]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[88]),
        .O(p_1_in[24]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[25]_i_1 
       (.I0(\data_out[89]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[89]),
        .O(p_1_in[25]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[26]_i_1 
       (.I0(\data_out[90]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[90]),
        .O(p_1_in[26]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[27]_i_1 
       (.I0(\data_out[91]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[91]),
        .O(p_1_in[27]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[28]_i_1 
       (.I0(\data_out[92]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[92]),
        .O(p_1_in[28]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[29]_i_1 
       (.I0(\data_out[93]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[93]),
        .O(p_1_in[29]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[2]_i_1 
       (.I0(\data_out[66]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[66]),
        .O(p_1_in[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[30]_i_1 
       (.I0(\data_out[94]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[94]),
        .O(p_1_in[30]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[31]_i_1 
       (.I0(\data_out[95]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[95]),
        .O(p_1_in[31]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[32]_i_1 
       (.I0(\data_out[96]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[96]),
        .O(p_1_in[32]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[33]_i_1 
       (.I0(\data_out[97]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[97]),
        .O(p_1_in[33]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[34]_i_1 
       (.I0(\data_out[98]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[98]),
        .O(p_1_in[34]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[35]_i_1 
       (.I0(\data_out[99]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[99]),
        .O(p_1_in[35]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[36]_i_1 
       (.I0(\data_out[100]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[100]),
        .O(p_1_in[36]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[37]_i_1 
       (.I0(\data_out[101]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[101]),
        .O(p_1_in[37]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[38]_i_1 
       (.I0(\data_out[102]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[102]),
        .O(p_1_in[38]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[39]_i_1 
       (.I0(\data_out[103]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[103]),
        .O(p_1_in[39]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[3]_i_1 
       (.I0(\data_out[67]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[67]),
        .O(p_1_in[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[40]_i_1 
       (.I0(\data_out[104]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[104]),
        .O(p_1_in[40]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[41]_i_1 
       (.I0(\data_out[105]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[105]),
        .O(p_1_in[41]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[42]_i_1 
       (.I0(\data_out[106]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[106]),
        .O(p_1_in[42]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[43]_i_1 
       (.I0(\data_out[107]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[107]),
        .O(p_1_in[43]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[44]_i_1 
       (.I0(\data_out[108]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[108]),
        .O(p_1_in[44]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[45]_i_1 
       (.I0(\data_out[109]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[109]),
        .O(p_1_in[45]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[46]_i_1 
       (.I0(\data_out[110]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[110]),
        .O(p_1_in[46]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[47]_i_1 
       (.I0(\data_out[111]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[111]),
        .O(p_1_in[47]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[48]_i_1 
       (.I0(\data_out[112]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[112]),
        .O(p_1_in[48]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[49]_i_1 
       (.I0(\data_out[113]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[113]),
        .O(p_1_in[49]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[4]_i_1 
       (.I0(\data_out[68]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[68]),
        .O(p_1_in[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[50]_i_1 
       (.I0(\data_out[114]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[114]),
        .O(p_1_in[50]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[51]_i_1 
       (.I0(\data_out[115]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[115]),
        .O(p_1_in[51]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[52]_i_1 
       (.I0(\data_out[116]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[116]),
        .O(p_1_in[52]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[53]_i_1 
       (.I0(\data_out[117]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[117]),
        .O(p_1_in[53]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[54]_i_1 
       (.I0(\data_out[118]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[118]),
        .O(p_1_in[54]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[55]_i_1 
       (.I0(\data_out[119]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[119]),
        .O(p_1_in[55]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[56]_i_1 
       (.I0(\data_out[120]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[120]),
        .O(p_1_in[56]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[57]_i_1 
       (.I0(\data_out[121]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[121]),
        .O(p_1_in[57]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[58]_i_1 
       (.I0(\data_out[122]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[122]),
        .O(p_1_in[58]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[59]_i_1 
       (.I0(\data_out[123]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[123]),
        .O(p_1_in[59]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[5]_i_1 
       (.I0(\data_out[69]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[69]),
        .O(p_1_in[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[60]_i_1 
       (.I0(\data_out[124]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[124]),
        .O(p_1_in[60]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[61]_i_1 
       (.I0(\data_out[125]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[125]),
        .O(p_1_in[61]));
  LUT5 #(
    .INIT(32'h0000FF08)) 
    \S4[62]_i_1 
       (.I0(data_valid),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(st_reg_n_0),
        .I4(rst),
        .O(\S4[62]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[62]_i_2 
       (.I0(\data_out[126]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[126]),
        .O(p_1_in[62]));
  LUT6 #(
    .INIT(64'h8B88FFFFBBB80000)) 
    \S4[63]_i_1 
       (.I0(\S4[63]_i_2_n_0 ),
        .I1(st_reg_rep_n_0),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(data_in[127]),
        .I4(\S4[63]_i_3_n_0 ),
        .I5(\S4_reg_n_0_[63] ),
        .O(\S4[63]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hDFFFFFFF00200000)) 
    \S4[63]_i_2 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(\phase_reg_n_0_[0] ),
        .I2(last_q_reg_n_0),
        .I3(S4_p),
        .I4(last_round),
        .I5(p_0_in__0),
        .O(\S4[63]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF0A80)) 
    \S4[63]_i_3 
       (.I0(data_valid),
        .I1(\S0[63]_i_3_n_0 ),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(st_reg_rep_n_0),
        .I5(rst),
        .O(\S4[63]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \S4[63]_i_4 
       (.I0(\perm_u/S4_sb [6]),
        .I1(\perm_u/S4_sb [63]),
        .I2(\perm_u/S4_sb [40]),
        .O(S4_p));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[6]_i_1 
       (.I0(\data_out[70]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[70]),
        .O(p_1_in[6]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[7]_i_1 
       (.I0(\data_out[71]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[71]),
        .O(p_1_in[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[8]_i_1 
       (.I0(\data_out[72]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[72]),
        .O(p_1_in[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \S4[9]_i_1 
       (.I0(\data_out[73]_INST_0_i_1_n_0 ),
        .I1(st_reg_n_0),
        .I2(data_in[73]),
        .O(p_1_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[0] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[0]),
        .Q(\S4_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[10] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[10]),
        .Q(\S4_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[11] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[11]),
        .Q(\S4_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[12] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[12]),
        .Q(\S4_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[13] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[13]),
        .Q(\S4_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[14] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[14]),
        .Q(\S4_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[15] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[15]),
        .Q(\S4_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[16] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[16]),
        .Q(\S4_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[17] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[17]),
        .Q(\S4_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[18] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[18]),
        .Q(\S4_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[19] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[19]),
        .Q(\S4_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[1] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[1]),
        .Q(\S4_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[20] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[20]),
        .Q(\S4_reg_n_0_[20] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[21] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[21]),
        .Q(\S4_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[22] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[22]),
        .Q(\S4_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[23] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[23]),
        .Q(\S4_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[24] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[24]),
        .Q(\S4_reg_n_0_[24] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[25] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[25]),
        .Q(\S4_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[26] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[26]),
        .Q(\S4_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[27] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[27]),
        .Q(\S4_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[28] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[28]),
        .Q(\S4_reg_n_0_[28] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[29] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[29]),
        .Q(\S4_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[2] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[2]),
        .Q(\S4_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[30] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[30]),
        .Q(\S4_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[31] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[31]),
        .Q(\S4_reg_n_0_[31] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[32] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[32]),
        .Q(\S4_reg_n_0_[32] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[33] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[33]),
        .Q(\S4_reg_n_0_[33] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[34] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[34]),
        .Q(\S4_reg_n_0_[34] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[35] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[35]),
        .Q(\S4_reg_n_0_[35] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[36] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[36]),
        .Q(\S4_reg_n_0_[36] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[37] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[37]),
        .Q(\S4_reg_n_0_[37] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[38] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[38]),
        .Q(\S4_reg_n_0_[38] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[39] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[39]),
        .Q(\S4_reg_n_0_[39] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[3] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[3]),
        .Q(\S4_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[40] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[40]),
        .Q(\S4_reg_n_0_[40] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[41] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[41]),
        .Q(\S4_reg_n_0_[41] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[42] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[42]),
        .Q(\S4_reg_n_0_[42] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[43] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[43]),
        .Q(\S4_reg_n_0_[43] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[44] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[44]),
        .Q(\S4_reg_n_0_[44] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[45] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[45]),
        .Q(\S4_reg_n_0_[45] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[46] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[46]),
        .Q(\S4_reg_n_0_[46] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[47] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[47]),
        .Q(\S4_reg_n_0_[47] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[48] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[48]),
        .Q(\S4_reg_n_0_[48] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[49] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[49]),
        .Q(\S4_reg_n_0_[49] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[4] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[4]),
        .Q(\S4_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[50] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[50]),
        .Q(\S4_reg_n_0_[50] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[51] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[51]),
        .Q(\S4_reg_n_0_[51] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[52] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[52]),
        .Q(\S4_reg_n_0_[52] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[53] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[53]),
        .Q(\S4_reg_n_0_[53] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[54] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[54]),
        .Q(\S4_reg_n_0_[54] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[55] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[55]),
        .Q(\S4_reg_n_0_[55] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[56] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[56]),
        .Q(\S4_reg_n_0_[56] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[57] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[57]),
        .Q(\S4_reg_n_0_[57] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[58] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[58]),
        .Q(\S4_reg_n_0_[58] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[59] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[59]),
        .Q(\S4_reg_n_0_[59] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[5] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[5]),
        .Q(\S4_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[60] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[60]),
        .Q(\S4_reg_n_0_[60] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[61] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[61]),
        .Q(\S4_reg_n_0_[61] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[62] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[62]),
        .Q(\S4_reg_n_0_[62] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[63] 
       (.C(clk),
        .CE(1'b1),
        .D(\S4[63]_i_1_n_0 ),
        .Q(\S4_reg_n_0_[63] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[6] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[6]),
        .Q(\S4_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[7] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[7]),
        .Q(\S4_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[8] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[8]),
        .Q(\S4_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \S4_reg[9] 
       (.C(clk),
        .CE(\S4[62]_i_1_n_0 ),
        .D(p_1_in[9]),
        .Q(\S4_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[0]_INST_0 
       (.I0(S3_n[0]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[0]),
        .I5(\S0_reg_n_0_[0] ),
        .O(data_out[0]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[0]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[0] ),
        .I2(\perm_u/S3_sb [17]),
        .I3(\perm_u/S3_sb [0]),
        .I4(\perm_u/S3_sb [10]),
        .O(S3_n[0]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[100]_INST_0 
       (.I0(\data_out[100]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[100]),
        .I5(\S1_reg_n_0_[36] ),
        .O(data_out[100]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[100]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[36] ),
        .I2(\perm_u/S4_sb [13]),
        .I3(\perm_u/S4_sb [36]),
        .I4(\perm_u/S4_sb [43]),
        .O(\data_out[100]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[101]_INST_0 
       (.I0(\data_out[101]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[101]),
        .I5(\S1_reg_n_0_[37] ),
        .O(data_out[101]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[101]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[37] ),
        .I2(\perm_u/S4_sb [14]),
        .I3(\perm_u/S4_sb [37]),
        .I4(\perm_u/S4_sb [44]),
        .O(\data_out[101]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[102]_INST_0 
       (.I0(\data_out[102]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[102]),
        .I5(\S1_reg_n_0_[38] ),
        .O(data_out[102]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[102]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[38] ),
        .I2(\perm_u/S4_sb [15]),
        .I3(\perm_u/S4_sb [38]),
        .I4(\perm_u/S4_sb [45]),
        .O(\data_out[102]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[103]_INST_0 
       (.I0(\data_out[103]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[103]),
        .I5(\S1_reg_n_0_[39] ),
        .O(data_out[103]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[103]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[39] ),
        .I2(\perm_u/S4_sb [16]),
        .I3(\perm_u/S4_sb [39]),
        .I4(\perm_u/S4_sb [46]),
        .O(\data_out[103]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEF0F0F0)) 
    \data_out[103]_INST_0_i_2 
       (.I0(data_len[0]),
        .I1(data_len[1]),
        .I2(data_len[4]),
        .I3(data_len[3]),
        .I4(data_len[2]),
        .O(keep_u_12));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[104]_INST_0 
       (.I0(\data_out[104]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[104]),
        .I5(\S1_reg_n_0_[40] ),
        .O(data_out[104]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[104]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[40] ),
        .I2(\perm_u/S4_sb [17]),
        .I3(\perm_u/S4_sb [40]),
        .I4(\perm_u/S4_sb [47]),
        .O(\data_out[104]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[105]_INST_0 
       (.I0(\data_out[105]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[105]),
        .I5(\S1_reg_n_0_[41] ),
        .O(data_out[105]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[105]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[41] ),
        .I2(\perm_u/S4_sb [18]),
        .I3(\perm_u/S4_sb [41]),
        .I4(\perm_u/S4_sb [48]),
        .O(\data_out[105]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[106]_INST_0 
       (.I0(\data_out[106]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[106]),
        .I5(\S1_reg_n_0_[42] ),
        .O(data_out[106]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[106]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[42] ),
        .I2(\perm_u/S4_sb [19]),
        .I3(\perm_u/S4_sb [42]),
        .I4(\perm_u/S4_sb [49]),
        .O(\data_out[106]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[107]_INST_0 
       (.I0(\data_out[107]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[107]),
        .I5(\S1_reg_n_0_[43] ),
        .O(data_out[107]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[107]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[43] ),
        .I2(\perm_u/S4_sb [20]),
        .I3(\perm_u/S4_sb [43]),
        .I4(\perm_u/S4_sb [50]),
        .O(\data_out[107]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[108]_INST_0 
       (.I0(\data_out[108]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[108]),
        .I5(\S1_reg_n_0_[44] ),
        .O(data_out[108]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[108]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[44] ),
        .I2(\perm_u/S4_sb [21]),
        .I3(\perm_u/S4_sb [44]),
        .I4(\perm_u/S4_sb [51]),
        .O(\data_out[108]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[109]_INST_0 
       (.I0(\data_out[109]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[109]),
        .I5(\S1_reg_n_0_[45] ),
        .O(data_out[109]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[109]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[45] ),
        .I2(\perm_u/S4_sb [22]),
        .I3(\perm_u/S4_sb [45]),
        .I4(\perm_u/S4_sb [52]),
        .O(\data_out[109]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[10]_INST_0 
       (.I0(S3_n[10]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[10]),
        .I5(\S0_reg_n_0_[10] ),
        .O(data_out[10]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[10]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[10] ),
        .I2(\perm_u/S3_sb [27]),
        .I3(\perm_u/S3_sb [10]),
        .I4(\perm_u/S3_sb [20]),
        .O(S3_n[10]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[110]_INST_0 
       (.I0(\data_out[110]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[110]),
        .I5(\S1_reg_n_0_[46] ),
        .O(data_out[110]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[110]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[46] ),
        .I2(\perm_u/S4_sb [23]),
        .I3(\perm_u/S4_sb [46]),
        .I4(\perm_u/S4_sb [53]),
        .O(\data_out[110]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[111]_INST_0 
       (.I0(\data_out[111]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_13),
        .I4(data_in[111]),
        .I5(\S1_reg_n_0_[47] ),
        .O(data_out[111]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[111]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[47] ),
        .I2(\perm_u/S4_sb [24]),
        .I3(\perm_u/S4_sb [47]),
        .I4(\perm_u/S4_sb [54]),
        .O(\data_out[111]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hEAAA)) 
    \data_out[111]_INST_0_i_2 
       (.I0(data_len[4]),
        .I1(data_len[2]),
        .I2(data_len[1]),
        .I3(data_len[3]),
        .O(keep_u_13));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[112]_INST_0 
       (.I0(\data_out[112]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[112]),
        .I5(\S1_reg_n_0_[48] ),
        .O(data_out[112]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[112]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[48] ),
        .I2(\perm_u/S4_sb [25]),
        .I3(\perm_u/S4_sb [48]),
        .I4(\perm_u/S4_sb [55]),
        .O(\data_out[112]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[113]_INST_0 
       (.I0(\data_out[113]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[113]),
        .I5(\S1_reg_n_0_[49] ),
        .O(data_out[113]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[113]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[49] ),
        .I2(\perm_u/S4_sb [26]),
        .I3(\perm_u/S4_sb [49]),
        .I4(\perm_u/S4_sb [56]),
        .O(\data_out[113]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[114]_INST_0 
       (.I0(\data_out[114]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[114]),
        .I5(\S1_reg_n_0_[50] ),
        .O(data_out[114]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[114]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[50] ),
        .I2(\perm_u/S4_sb [27]),
        .I3(\perm_u/S4_sb [50]),
        .I4(\perm_u/S4_sb [57]),
        .O(\data_out[114]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[115]_INST_0 
       (.I0(\data_out[115]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[115]),
        .I5(\S1_reg_n_0_[51] ),
        .O(data_out[115]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[115]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[51] ),
        .I2(\perm_u/S4_sb [28]),
        .I3(\perm_u/S4_sb [51]),
        .I4(\perm_u/S4_sb [58]),
        .O(\data_out[115]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[116]_INST_0 
       (.I0(\data_out[116]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[116]),
        .I5(\S1_reg_n_0_[52] ),
        .O(data_out[116]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[116]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[52] ),
        .I2(\perm_u/S4_sb [29]),
        .I3(\perm_u/S4_sb [52]),
        .I4(\perm_u/S4_sb [59]),
        .O(\data_out[116]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[117]_INST_0 
       (.I0(\data_out[117]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[117]),
        .I5(\S1_reg_n_0_[53] ),
        .O(data_out[117]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[117]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[53] ),
        .I2(\perm_u/S4_sb [30]),
        .I3(\perm_u/S4_sb [53]),
        .I4(\perm_u/S4_sb [60]),
        .O(\data_out[117]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[118]_INST_0 
       (.I0(\data_out[118]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[118]),
        .I5(\S1_reg_n_0_[54] ),
        .O(data_out[118]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[118]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[54] ),
        .I2(\perm_u/S4_sb [31]),
        .I3(\perm_u/S4_sb [54]),
        .I4(\perm_u/S4_sb [61]),
        .O(\data_out[118]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[119]_INST_0 
       (.I0(\data_out[119]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_14),
        .I4(data_in[119]),
        .I5(\S1_reg_n_0_[55] ),
        .O(data_out[119]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[119]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[55] ),
        .I2(\perm_u/S4_sb [32]),
        .I3(\perm_u/S4_sb [55]),
        .I4(\perm_u/S4_sb [62]),
        .O(\data_out[119]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hEAAAAAAA)) 
    \data_out[119]_INST_0_i_2 
       (.I0(data_len[4]),
        .I1(data_len[3]),
        .I2(data_len[2]),
        .I3(data_len[0]),
        .I4(data_len[1]),
        .O(keep_u_14));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[11]_INST_0 
       (.I0(S3_n[11]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[11]),
        .I5(\S0_reg_n_0_[11] ),
        .O(data_out[11]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[11]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[11] ),
        .I2(\perm_u/S3_sb [28]),
        .I3(\perm_u/S3_sb [11]),
        .I4(\perm_u/S3_sb [21]),
        .O(S3_n[11]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[120]_INST_0 
       (.I0(\data_out[120]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[120]),
        .I5(\S1_reg_n_0_[56] ),
        .O(data_out[120]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[120]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[56] ),
        .I2(\perm_u/S4_sb [33]),
        .I3(\perm_u/S4_sb [56]),
        .I4(\perm_u/S4_sb [63]),
        .O(\data_out[120]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[121]_INST_0 
       (.I0(\data_out[121]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[121]),
        .I5(\S1_reg_n_0_[57] ),
        .O(data_out[121]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[121]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[57] ),
        .I2(\perm_u/S4_sb [34]),
        .I3(\perm_u/S4_sb [57]),
        .I4(\perm_u/S4_sb [0]),
        .O(\data_out[121]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[122]_INST_0 
       (.I0(\data_out[122]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[122]),
        .I5(\S1_reg_n_0_[58] ),
        .O(data_out[122]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[122]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[58] ),
        .I2(\perm_u/S4_sb [35]),
        .I3(\perm_u/S4_sb [58]),
        .I4(\perm_u/S4_sb [1]),
        .O(\data_out[122]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[123]_INST_0 
       (.I0(\data_out[123]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[123]),
        .I5(\S1_reg_n_0_[59] ),
        .O(data_out[123]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[123]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[59] ),
        .I2(\perm_u/S4_sb [36]),
        .I3(\perm_u/S4_sb [59]),
        .I4(\perm_u/S4_sb [2]),
        .O(\data_out[123]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[124]_INST_0 
       (.I0(\data_out[124]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[124]),
        .I5(\S1_reg_n_0_[60] ),
        .O(data_out[124]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[124]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[60] ),
        .I2(\perm_u/S4_sb [37]),
        .I3(\perm_u/S4_sb [60]),
        .I4(\perm_u/S4_sb [3]),
        .O(\data_out[124]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[125]_INST_0 
       (.I0(\data_out[125]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[125]),
        .I5(\S1_reg_n_0_[61] ),
        .O(data_out[125]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[125]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[61] ),
        .I2(\perm_u/S4_sb [38]),
        .I3(\perm_u/S4_sb [61]),
        .I4(\perm_u/S4_sb [4]),
        .O(\data_out[125]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[126]_INST_0 
       (.I0(\data_out[126]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[126]),
        .I5(\S1_reg_n_0_[62] ),
        .O(data_out[126]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[126]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[62] ),
        .I2(\perm_u/S4_sb [39]),
        .I3(\perm_u/S4_sb [62]),
        .I4(\perm_u/S4_sb [5]),
        .O(\data_out[126]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[127]_INST_0 
       (.I0(p_0_in__0),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(data_len[4]),
        .I4(data_in[127]),
        .I5(\S1_reg_n_0_[63] ),
        .O(data_out[127]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[127]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[63] ),
        .I2(\perm_u/S4_sb [40]),
        .I3(\perm_u/S4_sb [63]),
        .I4(\perm_u/S4_sb [6]),
        .O(p_0_in__0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \data_out[127]_INST_0_i_2 
       (.I0(st_reg_rep__1_n_0),
        .I1(last_round),
        .I2(last_q_reg_n_0),
        .I3(mode),
        .I4(\phase_reg_n_0_[0] ),
        .I5(\phase_reg_n_0_[1] ),
        .O(tag_out_en));
  LUT4 #(
    .INIT(16'h4000)) 
    \data_out[127]_INST_0_i_3 
       (.I0(st_reg_rep__1_n_0),
        .I1(data_valid),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg_n_0_[1] ),
        .O(pt_out_en));
  LUT4 #(
    .INIT(16'h80AA)) 
    \data_out[127]_INST_0_i_4 
       (.I0(last_round),
        .I1(last_q_reg_n_0),
        .I2(\phase_reg_n_0_[0] ),
        .I3(\phase_reg[1]_rep__0_n_0 ),
        .O(xk));
  LUT4 #(
    .INIT(16'h4000)) 
    \data_out[127]_INST_0_i_5 
       (.I0(round_cnt_reg[2]),
        .I1(round_cnt_reg[3]),
        .I2(round_cnt_reg[1]),
        .I3(round_cnt_reg[0]),
        .O(last_round));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[12]_INST_0 
       (.I0(S3_n[12]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[12]),
        .I5(\S0_reg_n_0_[12] ),
        .O(data_out[12]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[12]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[12] ),
        .I2(\perm_u/S3_sb [29]),
        .I3(\perm_u/S3_sb [12]),
        .I4(\perm_u/S3_sb [22]),
        .O(S3_n[12]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[13]_INST_0 
       (.I0(S3_n[13]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[13]),
        .I5(\S0_reg_n_0_[13] ),
        .O(data_out[13]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[13]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[13] ),
        .I2(\perm_u/S3_sb [30]),
        .I3(\perm_u/S3_sb [13]),
        .I4(\perm_u/S3_sb [23]),
        .O(S3_n[13]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[14]_INST_0 
       (.I0(S3_n[14]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[14]),
        .I5(\S0_reg_n_0_[14] ),
        .O(data_out[14]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[14]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[14] ),
        .I2(\perm_u/S3_sb [31]),
        .I3(\perm_u/S3_sb [14]),
        .I4(\perm_u/S3_sb [24]),
        .O(S3_n[14]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[15]_INST_0 
       (.I0(S3_n[15]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[15]),
        .I5(\S0_reg_n_0_[15] ),
        .O(data_out[15]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[15]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[15] ),
        .I2(\perm_u/S3_sb [32]),
        .I3(\perm_u/S3_sb [15]),
        .I4(\perm_u/S3_sb [25]),
        .O(S3_n[15]));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \data_out[15]_INST_0_i_2 
       (.I0(data_len[2]),
        .I1(data_len[1]),
        .I2(data_len[3]),
        .I3(data_len[4]),
        .O(keep_u_1));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[16]_INST_0 
       (.I0(S3_n[16]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[16]),
        .I5(\S0_reg_n_0_[16] ),
        .O(data_out[16]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[16]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[16] ),
        .I2(\perm_u/S3_sb [33]),
        .I3(\perm_u/S3_sb [16]),
        .I4(\perm_u/S3_sb [26]),
        .O(S3_n[16]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[17]_INST_0 
       (.I0(S3_n[17]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[17]),
        .I5(\S0_reg_n_0_[17] ),
        .O(data_out[17]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[17]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[17] ),
        .I2(\perm_u/S3_sb [34]),
        .I3(\perm_u/S3_sb [17]),
        .I4(\perm_u/S3_sb [27]),
        .O(S3_n[17]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[18]_INST_0 
       (.I0(S3_n[18]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[18]),
        .I5(\S0_reg_n_0_[18] ),
        .O(data_out[18]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[18]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[18] ),
        .I2(\perm_u/S3_sb [35]),
        .I3(\perm_u/S3_sb [18]),
        .I4(\perm_u/S3_sb [28]),
        .O(S3_n[18]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[19]_INST_0 
       (.I0(S3_n[19]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[19]),
        .I5(\S0_reg_n_0_[19] ),
        .O(data_out[19]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[19]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[19] ),
        .I2(\perm_u/S3_sb [36]),
        .I3(\perm_u/S3_sb [19]),
        .I4(\perm_u/S3_sb [29]),
        .O(S3_n[19]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[1]_INST_0 
       (.I0(S3_n[1]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[1]),
        .I5(\S0_reg_n_0_[1] ),
        .O(data_out[1]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[1]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[1] ),
        .I2(\perm_u/S3_sb [18]),
        .I3(\perm_u/S3_sb [1]),
        .I4(\perm_u/S3_sb [11]),
        .O(S3_n[1]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[20]_INST_0 
       (.I0(S3_n[20]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[20]),
        .I5(\S0_reg_n_0_[20] ),
        .O(data_out[20]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[20]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[20] ),
        .I2(\perm_u/S3_sb [37]),
        .I3(\perm_u/S3_sb [20]),
        .I4(\perm_u/S3_sb [30]),
        .O(S3_n[20]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[21]_INST_0 
       (.I0(S3_n[21]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[21]),
        .I5(\S0_reg_n_0_[21] ),
        .O(data_out[21]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[21]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[21] ),
        .I2(\perm_u/S3_sb [38]),
        .I3(\perm_u/S3_sb [21]),
        .I4(\perm_u/S3_sb [31]),
        .O(S3_n[21]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[22]_INST_0 
       (.I0(S3_n[22]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[22]),
        .I5(\S0_reg_n_0_[22] ),
        .O(data_out[22]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[22]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[22] ),
        .I2(\perm_u/S3_sb [39]),
        .I3(\perm_u/S3_sb [22]),
        .I4(\perm_u/S3_sb [32]),
        .O(S3_n[22]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[23]_INST_0 
       (.I0(S3_n[23]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[23]_INST_0_i_2_n_0 ),
        .I4(data_in[23]),
        .I5(\S0_reg_n_0_[23] ),
        .O(data_out[23]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[23]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[23] ),
        .I2(\perm_u/S3_sb [40]),
        .I3(\perm_u/S3_sb [23]),
        .I4(\perm_u/S3_sb [33]),
        .O(S3_n[23]));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    \data_out[23]_INST_0_i_2 
       (.I0(data_len[1]),
        .I1(data_len[0]),
        .I2(data_len[2]),
        .I3(data_len[3]),
        .I4(data_len[4]),
        .O(\data_out[23]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[24]_INST_0 
       (.I0(S3_n[24]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[24]),
        .I5(\S0_reg_n_0_[24] ),
        .O(data_out[24]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[24]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[24] ),
        .I2(\perm_u/S3_sb [41]),
        .I3(\perm_u/S3_sb [24]),
        .I4(\perm_u/S3_sb [34]),
        .O(S3_n[24]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[25]_INST_0 
       (.I0(S3_n[25]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[25]),
        .I5(\S0_reg_n_0_[25] ),
        .O(data_out[25]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[25]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[25] ),
        .I2(\perm_u/S3_sb [42]),
        .I3(\perm_u/S3_sb [25]),
        .I4(\perm_u/S3_sb [35]),
        .O(S3_n[25]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[26]_INST_0 
       (.I0(S3_n[26]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[26]),
        .I5(\S0_reg_n_0_[26] ),
        .O(data_out[26]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[26]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[26] ),
        .I2(\perm_u/S3_sb [43]),
        .I3(\perm_u/S3_sb [26]),
        .I4(\perm_u/S3_sb [36]),
        .O(S3_n[26]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[27]_INST_0 
       (.I0(S3_n[27]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[27]),
        .I5(\S0_reg_n_0_[27] ),
        .O(data_out[27]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[27]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[27] ),
        .I2(\perm_u/S3_sb [44]),
        .I3(\perm_u/S3_sb [27]),
        .I4(\perm_u/S3_sb [37]),
        .O(S3_n[27]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[28]_INST_0 
       (.I0(S3_n[28]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[28]),
        .I5(\S0_reg_n_0_[28] ),
        .O(data_out[28]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[28]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[28] ),
        .I2(\perm_u/S3_sb [45]),
        .I3(\perm_u/S3_sb [28]),
        .I4(\perm_u/S3_sb [38]),
        .O(S3_n[28]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[29]_INST_0 
       (.I0(S3_n[29]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[29]),
        .I5(\S0_reg_n_0_[29] ),
        .O(data_out[29]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[29]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[29] ),
        .I2(\perm_u/S3_sb [46]),
        .I3(\perm_u/S3_sb [29]),
        .I4(\perm_u/S3_sb [39]),
        .O(S3_n[29]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[2]_INST_0 
       (.I0(S3_n[2]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[2]),
        .I5(\S0_reg_n_0_[2] ),
        .O(data_out[2]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[2]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[2] ),
        .I2(\perm_u/S3_sb [19]),
        .I3(\perm_u/S3_sb [2]),
        .I4(\perm_u/S3_sb [12]),
        .O(S3_n[2]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[30]_INST_0 
       (.I0(S3_n[30]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[30]),
        .I5(\S0_reg_n_0_[30] ),
        .O(data_out[30]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[30]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[30] ),
        .I2(\perm_u/S3_sb [47]),
        .I3(\perm_u/S3_sb [30]),
        .I4(\perm_u/S3_sb [40]),
        .O(S3_n[30]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[31]_INST_0 
       (.I0(S3_n[31]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_3),
        .I4(data_in[31]),
        .I5(\S0_reg_n_0_[31] ),
        .O(data_out[31]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[31]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[31] ),
        .I2(\perm_u/S3_sb [48]),
        .I3(\perm_u/S3_sb [31]),
        .I4(\perm_u/S3_sb [41]),
        .O(S3_n[31]));
  LUT3 #(
    .INIT(8'hFE)) 
    \data_out[31]_INST_0_i_2 
       (.I0(data_len[3]),
        .I1(data_len[4]),
        .I2(data_len[2]),
        .O(keep_u_3));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[32]_INST_0 
       (.I0(S3_n[32]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[32]),
        .I5(\S0_reg_n_0_[32] ),
        .O(data_out[32]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[32]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[32] ),
        .I2(\perm_u/S3_sb [49]),
        .I3(\perm_u/S3_sb [32]),
        .I4(\perm_u/S3_sb [42]),
        .O(S3_n[32]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[33]_INST_0 
       (.I0(S3_n[33]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[33]),
        .I5(\S0_reg_n_0_[33] ),
        .O(data_out[33]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[33]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[33] ),
        .I2(\perm_u/S3_sb [50]),
        .I3(\perm_u/S3_sb [33]),
        .I4(\perm_u/S3_sb [43]),
        .O(S3_n[33]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[34]_INST_0 
       (.I0(S3_n[34]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[34]),
        .I5(\S0_reg_n_0_[34] ),
        .O(data_out[34]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[34]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[34] ),
        .I2(\perm_u/S3_sb [51]),
        .I3(\perm_u/S3_sb [34]),
        .I4(\perm_u/S3_sb [44]),
        .O(S3_n[34]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[35]_INST_0 
       (.I0(S3_n[35]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[35]),
        .I5(\S0_reg_n_0_[35] ),
        .O(data_out[35]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[35]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[35] ),
        .I2(\perm_u/S3_sb [52]),
        .I3(\perm_u/S3_sb [35]),
        .I4(\perm_u/S3_sb [45]),
        .O(S3_n[35]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[36]_INST_0 
       (.I0(S3_n[36]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[36]),
        .I5(\S0_reg_n_0_[36] ),
        .O(data_out[36]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[36]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[36] ),
        .I2(\perm_u/S3_sb [53]),
        .I3(\perm_u/S3_sb [36]),
        .I4(\perm_u/S3_sb [46]),
        .O(S3_n[36]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[37]_INST_0 
       (.I0(S3_n[37]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[37]),
        .I5(\S0_reg_n_0_[37] ),
        .O(data_out[37]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[37]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[37] ),
        .I2(\perm_u/S3_sb [54]),
        .I3(\perm_u/S3_sb [37]),
        .I4(\perm_u/S3_sb [47]),
        .O(S3_n[37]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[38]_INST_0 
       (.I0(S3_n[38]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[38]),
        .I5(\S0_reg_n_0_[38] ),
        .O(data_out[38]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[38]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[38] ),
        .I2(\perm_u/S3_sb [55]),
        .I3(\perm_u/S3_sb [38]),
        .I4(\perm_u/S3_sb [48]),
        .O(S3_n[38]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[39]_INST_0 
       (.I0(S3_n[39]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_4),
        .I4(data_in[39]),
        .I5(\S0_reg_n_0_[39] ),
        .O(data_out[39]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[39]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[39] ),
        .I2(\perm_u/S3_sb [56]),
        .I3(\perm_u/S3_sb [39]),
        .I4(\perm_u/S3_sb [49]),
        .O(S3_n[39]));
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \data_out[39]_INST_0_i_2 
       (.I0(data_len[0]),
        .I1(data_len[1]),
        .I2(data_len[2]),
        .I3(data_len[4]),
        .I4(data_len[3]),
        .O(keep_u_4));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[3]_INST_0 
       (.I0(S3_n[3]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[3]),
        .I5(\S0_reg_n_0_[3] ),
        .O(data_out[3]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[3]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[3] ),
        .I2(\perm_u/S3_sb [20]),
        .I3(\perm_u/S3_sb [3]),
        .I4(\perm_u/S3_sb [13]),
        .O(S3_n[3]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[40]_INST_0 
       (.I0(S3_n[40]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[40]),
        .I5(\S0_reg_n_0_[40] ),
        .O(data_out[40]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[40]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[40] ),
        .I2(\perm_u/S3_sb [57]),
        .I3(\perm_u/S3_sb [40]),
        .I4(\perm_u/S3_sb [50]),
        .O(S3_n[40]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[41]_INST_0 
       (.I0(S3_n[41]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[41]),
        .I5(\S0_reg_n_0_[41] ),
        .O(data_out[41]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[41]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[41] ),
        .I2(\perm_u/S3_sb [58]),
        .I3(\perm_u/S3_sb [41]),
        .I4(\perm_u/S3_sb [51]),
        .O(S3_n[41]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[42]_INST_0 
       (.I0(S3_n[42]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[42]),
        .I5(\S0_reg_n_0_[42] ),
        .O(data_out[42]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[42]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[42] ),
        .I2(\perm_u/S3_sb [59]),
        .I3(\perm_u/S3_sb [42]),
        .I4(\perm_u/S3_sb [52]),
        .O(S3_n[42]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[43]_INST_0 
       (.I0(S3_n[43]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[43]),
        .I5(\S0_reg_n_0_[43] ),
        .O(data_out[43]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[43]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[43] ),
        .I2(\perm_u/S3_sb [60]),
        .I3(\perm_u/S3_sb [43]),
        .I4(\perm_u/S3_sb [53]),
        .O(S3_n[43]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[44]_INST_0 
       (.I0(S3_n[44]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[44]),
        .I5(\S0_reg_n_0_[44] ),
        .O(data_out[44]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[44]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[44] ),
        .I2(\perm_u/S3_sb [61]),
        .I3(\perm_u/S3_sb [44]),
        .I4(\perm_u/S3_sb [54]),
        .O(S3_n[44]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[45]_INST_0 
       (.I0(S3_n[45]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[45]),
        .I5(\S0_reg_n_0_[45] ),
        .O(data_out[45]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[45]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[45] ),
        .I2(\perm_u/S3_sb [62]),
        .I3(\perm_u/S3_sb [45]),
        .I4(\perm_u/S3_sb [55]),
        .O(S3_n[45]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[46]_INST_0 
       (.I0(S3_n[46]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[46]),
        .I5(\S0_reg_n_0_[46] ),
        .O(data_out[46]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[46]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[46] ),
        .I2(\perm_u/S3_sb [63]),
        .I3(\perm_u/S3_sb [46]),
        .I4(\perm_u/S3_sb [56]),
        .O(S3_n[46]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[47]_INST_0 
       (.I0(S3_n[47]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_5),
        .I4(data_in[47]),
        .I5(\S0_reg_n_0_[47] ),
        .O(data_out[47]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[47]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[47] ),
        .I2(\perm_u/S3_sb [0]),
        .I3(\perm_u/S3_sb [47]),
        .I4(\perm_u/S3_sb [57]),
        .O(S3_n[47]));
  LUT4 #(
    .INIT(16'hFEEE)) 
    \data_out[47]_INST_0_i_2 
       (.I0(data_len[3]),
        .I1(data_len[4]),
        .I2(data_len[2]),
        .I3(data_len[1]),
        .O(keep_u_5));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[48]_INST_0 
       (.I0(S3_n[48]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[48]),
        .I5(\S0_reg_n_0_[48] ),
        .O(data_out[48]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[48]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[48] ),
        .I2(\perm_u/S3_sb [1]),
        .I3(\perm_u/S3_sb [48]),
        .I4(\perm_u/S3_sb [58]),
        .O(S3_n[48]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[49]_INST_0 
       (.I0(S3_n[49]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[49]),
        .I5(\S0_reg_n_0_[49] ),
        .O(data_out[49]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[49]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[49] ),
        .I2(\perm_u/S3_sb [2]),
        .I3(\perm_u/S3_sb [49]),
        .I4(\perm_u/S3_sb [59]),
        .O(S3_n[49]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[4]_INST_0 
       (.I0(S3_n[4]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[4]),
        .I5(\S0_reg_n_0_[4] ),
        .O(data_out[4]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[4]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[4] ),
        .I2(\perm_u/S3_sb [21]),
        .I3(\perm_u/S3_sb [4]),
        .I4(\perm_u/S3_sb [14]),
        .O(S3_n[4]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[50]_INST_0 
       (.I0(S3_n[50]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[50]),
        .I5(\S0_reg_n_0_[50] ),
        .O(data_out[50]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[50]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[50] ),
        .I2(\perm_u/S3_sb [3]),
        .I3(\perm_u/S3_sb [50]),
        .I4(\perm_u/S3_sb [60]),
        .O(S3_n[50]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[51]_INST_0 
       (.I0(S3_n[51]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[51]),
        .I5(\S0_reg_n_0_[51] ),
        .O(data_out[51]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[51]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[51] ),
        .I2(\perm_u/S3_sb [4]),
        .I3(\perm_u/S3_sb [51]),
        .I4(\perm_u/S3_sb [61]),
        .O(S3_n[51]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[52]_INST_0 
       (.I0(S3_n[52]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[52]),
        .I5(\S0_reg_n_0_[52] ),
        .O(data_out[52]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[52]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[52] ),
        .I2(\perm_u/S3_sb [5]),
        .I3(\perm_u/S3_sb [52]),
        .I4(\perm_u/S3_sb [62]),
        .O(S3_n[52]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[53]_INST_0 
       (.I0(S3_n[53]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[53]),
        .I5(\S0_reg_n_0_[53] ),
        .O(data_out[53]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[53]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[53] ),
        .I2(\perm_u/S3_sb [6]),
        .I3(\perm_u/S3_sb [53]),
        .I4(\perm_u/S3_sb [63]),
        .O(S3_n[53]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[54]_INST_0 
       (.I0(S3_n[54]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[54]),
        .I5(\S0_reg_n_0_[54] ),
        .O(data_out[54]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[54]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[54] ),
        .I2(\perm_u/S3_sb [7]),
        .I3(\perm_u/S3_sb [54]),
        .I4(\perm_u/S3_sb [0]),
        .O(S3_n[54]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[55]_INST_0 
       (.I0(S3_n[55]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_6),
        .I4(data_in[55]),
        .I5(\S0_reg_n_0_[55] ),
        .O(data_out[55]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[55]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[55] ),
        .I2(\perm_u/S3_sb [8]),
        .I3(\perm_u/S3_sb [55]),
        .I4(\perm_u/S3_sb [1]),
        .O(S3_n[55]));
  LUT5 #(
    .INIT(32'hFEEEEEEE)) 
    \data_out[55]_INST_0_i_2 
       (.I0(data_len[3]),
        .I1(data_len[4]),
        .I2(data_len[1]),
        .I3(data_len[0]),
        .I4(data_len[2]),
        .O(keep_u_6));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[56]_INST_0 
       (.I0(S3_n[56]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[56]),
        .I5(\S0_reg_n_0_[56] ),
        .O(data_out[56]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[56]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[56] ),
        .I2(\perm_u/S3_sb [9]),
        .I3(\perm_u/S3_sb [56]),
        .I4(\perm_u/S3_sb [2]),
        .O(S3_n[56]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[57]_INST_0 
       (.I0(S3_n[57]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[57]),
        .I5(\S0_reg_n_0_[57] ),
        .O(data_out[57]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[57]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[57] ),
        .I2(\perm_u/S3_sb [10]),
        .I3(\perm_u/S3_sb [57]),
        .I4(\perm_u/S3_sb [3]),
        .O(S3_n[57]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[58]_INST_0 
       (.I0(S3_n[58]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[58]),
        .I5(\S0_reg_n_0_[58] ),
        .O(data_out[58]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[58]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[58] ),
        .I2(\perm_u/S3_sb [11]),
        .I3(\perm_u/S3_sb [58]),
        .I4(\perm_u/S3_sb [4]),
        .O(S3_n[58]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[59]_INST_0 
       (.I0(S3_n[59]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[59]),
        .I5(\S0_reg_n_0_[59] ),
        .O(data_out[59]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[59]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[59] ),
        .I2(\perm_u/S3_sb [12]),
        .I3(\perm_u/S3_sb [59]),
        .I4(\perm_u/S3_sb [5]),
        .O(S3_n[59]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[5]_INST_0 
       (.I0(S3_n[5]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[5]),
        .I5(\S0_reg_n_0_[5] ),
        .O(data_out[5]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[5]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[5] ),
        .I2(\perm_u/S3_sb [22]),
        .I3(\perm_u/S3_sb [5]),
        .I4(\perm_u/S3_sb [15]),
        .O(S3_n[5]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[60]_INST_0 
       (.I0(S3_n[60]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[60]),
        .I5(\S0_reg_n_0_[60] ),
        .O(data_out[60]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[60]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[60] ),
        .I2(\perm_u/S3_sb [13]),
        .I3(\perm_u/S3_sb [60]),
        .I4(\perm_u/S3_sb [6]),
        .O(S3_n[60]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[61]_INST_0 
       (.I0(S3_n[61]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[61]),
        .I5(\S0_reg_n_0_[61] ),
        .O(data_out[61]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[61]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[61] ),
        .I2(\perm_u/S3_sb [14]),
        .I3(\perm_u/S3_sb [61]),
        .I4(\perm_u/S3_sb [7]),
        .O(S3_n[61]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[62]_INST_0 
       (.I0(S3_n[62]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[62]),
        .I5(\S0_reg_n_0_[62] ),
        .O(data_out[62]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[62]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[62] ),
        .I2(\perm_u/S3_sb [15]),
        .I3(\perm_u/S3_sb [62]),
        .I4(\perm_u/S3_sb [8]),
        .O(S3_n[62]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[63]_INST_0 
       (.I0(S3_n[63]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(data_in[63]),
        .I5(\S0_reg_n_0_[63] ),
        .O(data_out[63]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[63]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[63] ),
        .I2(\perm_u/S3_sb [16]),
        .I3(\perm_u/S3_sb [63]),
        .I4(\perm_u/S3_sb [9]),
        .O(S3_n[63]));
  LUT2 #(
    .INIT(4'h1)) 
    \data_out[63]_INST_0_i_2 
       (.I0(data_len[4]),
        .I1(data_len[3]),
        .O(\data_out[63]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[64]_INST_0 
       (.I0(\data_out[64]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[64]),
        .I5(\S1_reg_n_0_[0] ),
        .O(data_out[64]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[64]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[0] ),
        .I2(\perm_u/S4_sb [41]),
        .I3(\perm_u/S4_sb [0]),
        .I4(\perm_u/S4_sb [7]),
        .O(\data_out[64]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[65]_INST_0 
       (.I0(\data_out[65]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[65]),
        .I5(\S1_reg_n_0_[1] ),
        .O(data_out[65]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[65]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[1] ),
        .I2(\perm_u/S4_sb [42]),
        .I3(\perm_u/S4_sb [1]),
        .I4(\perm_u/S4_sb [8]),
        .O(\data_out[65]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[66]_INST_0 
       (.I0(\data_out[66]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[66]),
        .I5(\S1_reg_n_0_[2] ),
        .O(data_out[66]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[66]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[2] ),
        .I2(\perm_u/S4_sb [43]),
        .I3(\perm_u/S4_sb [2]),
        .I4(\perm_u/S4_sb [9]),
        .O(\data_out[66]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[67]_INST_0 
       (.I0(\data_out[67]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[67]),
        .I5(\S1_reg_n_0_[3] ),
        .O(data_out[67]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[67]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[3] ),
        .I2(\perm_u/S4_sb [44]),
        .I3(\perm_u/S4_sb [3]),
        .I4(\perm_u/S4_sb [10]),
        .O(\data_out[67]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[68]_INST_0 
       (.I0(\data_out[68]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[68]),
        .I5(\S1_reg_n_0_[4] ),
        .O(data_out[68]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[68]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[4] ),
        .I2(\perm_u/S4_sb [45]),
        .I3(\perm_u/S4_sb [4]),
        .I4(\perm_u/S4_sb [11]),
        .O(\data_out[68]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[69]_INST_0 
       (.I0(\data_out[69]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[69]),
        .I5(\S1_reg_n_0_[5] ),
        .O(data_out[69]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[69]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[5] ),
        .I2(\perm_u/S4_sb [46]),
        .I3(\perm_u/S4_sb [5]),
        .I4(\perm_u/S4_sb [12]),
        .O(\data_out[69]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[6]_INST_0 
       (.I0(S3_n[6]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[6]),
        .I5(\S0_reg_n_0_[6] ),
        .O(data_out[6]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[6]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[6] ),
        .I2(\perm_u/S3_sb [23]),
        .I3(\perm_u/S3_sb [6]),
        .I4(\perm_u/S3_sb [16]),
        .O(S3_n[6]));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[70]_INST_0 
       (.I0(\data_out[70]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[70]),
        .I5(\S1_reg_n_0_[6] ),
        .O(data_out[70]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[70]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[6] ),
        .I2(\perm_u/S4_sb [47]),
        .I3(\perm_u/S4_sb [6]),
        .I4(\perm_u/S4_sb [13]),
        .O(\data_out[70]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[71]_INST_0 
       (.I0(\data_out[71]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_8),
        .I4(data_in[71]),
        .I5(\S1_reg_n_0_[7] ),
        .O(data_out[71]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[71]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[7] ),
        .I2(\perm_u/S4_sb [48]),
        .I3(\perm_u/S4_sb [7]),
        .I4(\perm_u/S4_sb [14]),
        .O(\data_out[71]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \data_out[71]_INST_0_i_2 
       (.I0(data_len[2]),
        .I1(data_len[0]),
        .I2(data_len[1]),
        .I3(data_len[3]),
        .I4(data_len[4]),
        .O(keep_u_8));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[72]_INST_0 
       (.I0(\data_out[72]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[72]),
        .I5(\S1_reg_n_0_[8] ),
        .O(data_out[72]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[72]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[8] ),
        .I2(\perm_u/S4_sb [49]),
        .I3(\perm_u/S4_sb [8]),
        .I4(\perm_u/S4_sb [15]),
        .O(\data_out[72]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[73]_INST_0 
       (.I0(\data_out[73]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[73]),
        .I5(\S1_reg_n_0_[9] ),
        .O(data_out[73]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[73]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[9] ),
        .I2(\perm_u/S4_sb [50]),
        .I3(\perm_u/S4_sb [9]),
        .I4(\perm_u/S4_sb [16]),
        .O(\data_out[73]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[74]_INST_0 
       (.I0(\data_out[74]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[74]),
        .I5(\S1_reg_n_0_[10] ),
        .O(data_out[74]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[74]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[10] ),
        .I2(\perm_u/S4_sb [51]),
        .I3(\perm_u/S4_sb [10]),
        .I4(\perm_u/S4_sb [17]),
        .O(\data_out[74]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[75]_INST_0 
       (.I0(\data_out[75]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[75]),
        .I5(\S1_reg_n_0_[11] ),
        .O(data_out[75]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[75]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[11] ),
        .I2(\perm_u/S4_sb [52]),
        .I3(\perm_u/S4_sb [11]),
        .I4(\perm_u/S4_sb [18]),
        .O(\data_out[75]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[76]_INST_0 
       (.I0(\data_out[76]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[76]),
        .I5(\S1_reg_n_0_[12] ),
        .O(data_out[76]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[76]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[12] ),
        .I2(\perm_u/S4_sb [53]),
        .I3(\perm_u/S4_sb [12]),
        .I4(\perm_u/S4_sb [19]),
        .O(\data_out[76]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[77]_INST_0 
       (.I0(\data_out[77]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[77]),
        .I5(\S1_reg_n_0_[13] ),
        .O(data_out[77]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[77]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[13] ),
        .I2(\perm_u/S4_sb [54]),
        .I3(\perm_u/S4_sb [13]),
        .I4(\perm_u/S4_sb [20]),
        .O(\data_out[77]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[78]_INST_0 
       (.I0(\data_out[78]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[78]),
        .I5(\S1_reg_n_0_[14] ),
        .O(data_out[78]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[78]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[14] ),
        .I2(\perm_u/S4_sb [55]),
        .I3(\perm_u/S4_sb [14]),
        .I4(\perm_u/S4_sb [21]),
        .O(\data_out[78]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[79]_INST_0 
       (.I0(\data_out[79]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_9),
        .I4(data_in[79]),
        .I5(\S1_reg_n_0_[15] ),
        .O(data_out[79]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[79]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[15] ),
        .I2(\perm_u/S4_sb [56]),
        .I3(\perm_u/S4_sb [15]),
        .I4(\perm_u/S4_sb [22]),
        .O(\data_out[79]_INST_0_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \data_out[79]_INST_0_i_2 
       (.I0(data_len[1]),
        .I1(data_len[2]),
        .I2(data_len[3]),
        .I3(data_len[4]),
        .O(keep_u_9));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[7]_INST_0 
       (.I0(S3_n[7]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_0),
        .I4(data_in[7]),
        .I5(\S0_reg_n_0_[7] ),
        .O(data_out[7]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[7]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[7] ),
        .I2(\perm_u/S3_sb [24]),
        .I3(\perm_u/S3_sb [7]),
        .I4(\perm_u/S3_sb [17]),
        .O(S3_n[7]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \data_out[7]_INST_0_i_2 
       (.I0(data_len[2]),
        .I1(data_len[0]),
        .I2(data_len[1]),
        .I3(data_len[3]),
        .I4(data_len[4]),
        .O(keep_u_0));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[80]_INST_0 
       (.I0(\data_out[80]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[80]),
        .I5(\S1_reg_n_0_[16] ),
        .O(data_out[80]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[80]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[16] ),
        .I2(\perm_u/S4_sb [57]),
        .I3(\perm_u/S4_sb [16]),
        .I4(\perm_u/S4_sb [23]),
        .O(\data_out[80]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[81]_INST_0 
       (.I0(\data_out[81]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[81]),
        .I5(\S1_reg_n_0_[17] ),
        .O(data_out[81]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[81]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[17] ),
        .I2(\perm_u/S4_sb [58]),
        .I3(\perm_u/S4_sb [17]),
        .I4(\perm_u/S4_sb [24]),
        .O(\data_out[81]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[82]_INST_0 
       (.I0(\data_out[82]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[82]),
        .I5(\S1_reg_n_0_[18] ),
        .O(data_out[82]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[82]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[18] ),
        .I2(\perm_u/S4_sb [59]),
        .I3(\perm_u/S4_sb [18]),
        .I4(\perm_u/S4_sb [25]),
        .O(\data_out[82]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[83]_INST_0 
       (.I0(\data_out[83]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[83]),
        .I5(\S1_reg_n_0_[19] ),
        .O(data_out[83]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[83]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[19] ),
        .I2(\perm_u/S4_sb [60]),
        .I3(\perm_u/S4_sb [19]),
        .I4(\perm_u/S4_sb [26]),
        .O(\data_out[83]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[84]_INST_0 
       (.I0(\data_out[84]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[84]),
        .I5(\S1_reg_n_0_[20] ),
        .O(data_out[84]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[84]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[20] ),
        .I2(\perm_u/S4_sb [61]),
        .I3(\perm_u/S4_sb [20]),
        .I4(\perm_u/S4_sb [27]),
        .O(\data_out[84]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[85]_INST_0 
       (.I0(\data_out[85]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[85]),
        .I5(\S1_reg_n_0_[21] ),
        .O(data_out[85]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[85]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[21] ),
        .I2(\perm_u/S4_sb [62]),
        .I3(\perm_u/S4_sb [21]),
        .I4(\perm_u/S4_sb [28]),
        .O(\data_out[85]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[86]_INST_0 
       (.I0(\data_out[86]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[86]),
        .I5(\S1_reg_n_0_[22] ),
        .O(data_out[86]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[86]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[22] ),
        .I2(\perm_u/S4_sb [63]),
        .I3(\perm_u/S4_sb [22]),
        .I4(\perm_u/S4_sb [29]),
        .O(\data_out[86]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[87]_INST_0 
       (.I0(\data_out[87]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_10),
        .I4(data_in[87]),
        .I5(\S1_reg_n_0_[23] ),
        .O(data_out[87]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[87]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[23] ),
        .I2(\perm_u/S4_sb [0]),
        .I3(\perm_u/S4_sb [23]),
        .I4(\perm_u/S4_sb [30]),
        .O(\data_out[87]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFEEEAAAA)) 
    \data_out[87]_INST_0_i_2 
       (.I0(data_len[4]),
        .I1(data_len[2]),
        .I2(data_len[0]),
        .I3(data_len[1]),
        .I4(data_len[3]),
        .O(keep_u_10));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[88]_INST_0 
       (.I0(\data_out[88]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[88]),
        .I5(\S1_reg_n_0_[24] ),
        .O(data_out[88]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[88]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[24] ),
        .I2(\perm_u/S4_sb [1]),
        .I3(\perm_u/S4_sb [24]),
        .I4(\perm_u/S4_sb [31]),
        .O(\data_out[88]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[89]_INST_0 
       (.I0(\data_out[89]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[89]),
        .I5(\S1_reg_n_0_[25] ),
        .O(data_out[89]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[89]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[25] ),
        .I2(\perm_u/S4_sb [2]),
        .I3(\perm_u/S4_sb [25]),
        .I4(\perm_u/S4_sb [32]),
        .O(\data_out[89]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[8]_INST_0 
       (.I0(S3_n[8]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[8]),
        .I5(\S0_reg_n_0_[8] ),
        .O(data_out[8]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[8]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[8] ),
        .I2(\perm_u/S3_sb [25]),
        .I3(\perm_u/S3_sb [8]),
        .I4(\perm_u/S3_sb [18]),
        .O(S3_n[8]));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[90]_INST_0 
       (.I0(\data_out[90]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[90]),
        .I5(\S1_reg_n_0_[26] ),
        .O(data_out[90]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[90]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[26] ),
        .I2(\perm_u/S4_sb [3]),
        .I3(\perm_u/S4_sb [26]),
        .I4(\perm_u/S4_sb [33]),
        .O(\data_out[90]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[91]_INST_0 
       (.I0(\data_out[91]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[91]),
        .I5(\S1_reg_n_0_[27] ),
        .O(data_out[91]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[91]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[27] ),
        .I2(\perm_u/S4_sb [4]),
        .I3(\perm_u/S4_sb [27]),
        .I4(\perm_u/S4_sb [34]),
        .O(\data_out[91]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[92]_INST_0 
       (.I0(\data_out[92]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[92]),
        .I5(\S1_reg_n_0_[28] ),
        .O(data_out[92]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[92]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[28] ),
        .I2(\perm_u/S4_sb [5]),
        .I3(\perm_u/S4_sb [28]),
        .I4(\perm_u/S4_sb [35]),
        .O(\data_out[92]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[93]_INST_0 
       (.I0(\data_out[93]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[93]),
        .I5(\S1_reg_n_0_[29] ),
        .O(data_out[93]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[93]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[29] ),
        .I2(\perm_u/S4_sb [6]),
        .I3(\perm_u/S4_sb [29]),
        .I4(\perm_u/S4_sb [36]),
        .O(\data_out[93]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[94]_INST_0 
       (.I0(\data_out[94]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[94]),
        .I5(\S1_reg_n_0_[30] ),
        .O(data_out[94]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[94]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[30] ),
        .I2(\perm_u/S4_sb [7]),
        .I3(\perm_u/S4_sb [30]),
        .I4(\perm_u/S4_sb [37]),
        .O(\data_out[94]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h888888B888B88888)) 
    \data_out[95]_INST_0 
       (.I0(\data_out[95]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(\data_out[95]_INST_0_i_2_n_0 ),
        .I4(data_in[95]),
        .I5(\S1_reg_n_0_[31] ),
        .O(data_out[95]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[95]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[31] ),
        .I2(\perm_u/S4_sb [8]),
        .I3(\perm_u/S4_sb [31]),
        .I4(\perm_u/S4_sb [38]),
        .O(\data_out[95]_INST_0_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h07)) 
    \data_out[95]_INST_0_i_2 
       (.I0(data_len[2]),
        .I1(data_len[3]),
        .I2(data_len[4]),
        .O(\data_out[95]_INST_0_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[96]_INST_0 
       (.I0(\data_out[96]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[96]),
        .I5(\S1_reg_n_0_[32] ),
        .O(data_out[96]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[96]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[32] ),
        .I2(\perm_u/S4_sb [9]),
        .I3(\perm_u/S4_sb [32]),
        .I4(\perm_u/S4_sb [39]),
        .O(\data_out[96]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[97]_INST_0 
       (.I0(\data_out[97]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[97]),
        .I5(\S1_reg_n_0_[33] ),
        .O(data_out[97]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[97]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[33] ),
        .I2(\perm_u/S4_sb [10]),
        .I3(\perm_u/S4_sb [33]),
        .I4(\perm_u/S4_sb [40]),
        .O(\data_out[97]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[98]_INST_0 
       (.I0(\data_out[98]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[98]),
        .I5(\S1_reg_n_0_[34] ),
        .O(data_out[98]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[98]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[34] ),
        .I2(\perm_u/S4_sb [11]),
        .I3(\perm_u/S4_sb [34]),
        .I4(\perm_u/S4_sb [41]),
        .O(\data_out[98]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[99]_INST_0 
       (.I0(\data_out[99]_INST_0_i_1_n_0 ),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_12),
        .I4(data_in[99]),
        .I5(\S1_reg_n_0_[35] ),
        .O(data_out[99]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[99]_INST_0_i_1 
       (.I0(xk),
        .I1(\K1_reg_n_0_[35] ),
        .I2(\perm_u/S4_sb [12]),
        .I3(\perm_u/S4_sb [35]),
        .I4(\perm_u/S4_sb [42]),
        .O(\data_out[99]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8888B888B8888888)) 
    \data_out[9]_INST_0 
       (.I0(S3_n[9]),
        .I1(tag_out_en),
        .I2(pt_out_en),
        .I3(keep_u_1),
        .I4(data_in[9]),
        .I5(\S0_reg_n_0_[9] ),
        .O(data_out[9]));
  LUT5 #(
    .INIT(32'h78878778)) 
    \data_out[9]_INST_0_i_1 
       (.I0(xk),
        .I1(\K0_reg_n_0_[9] ),
        .I2(\perm_u/S3_sb [26]),
        .I3(\perm_u/S3_sb [9]),
        .I4(\perm_u/S3_sb [19]),
        .O(S3_n[9]));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFEEE)) 
    data_out_valid_INST_0
       (.I0(pt_out_en),
        .I1(tag_out_en),
        .I2(data_out_valid_INST_0_i_1_n_0),
        .I3(last_q_reg_n_0),
        .I4(\phase_reg_n_0_[1] ),
        .I5(\phase_reg_n_0_[0] ),
        .O(data_out_valid));
  LUT2 #(
    .INIT(4'h2)) 
    data_out_valid_INST_0_i_1
       (.I0(data_valid),
        .I1(st_reg_rep__1_n_0),
        .O(data_out_valid_INST_0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    data_ready_INST_0
       (.I0(st_reg_n_0),
        .O(data_ready));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0
       (.I0(\S4_reg_n_0_[0] ),
        .I1(\S3_reg_n_0_[0] ),
        .I2(\S1_reg_n_0_[0] ),
        .I3(\S0_reg_n_0_[0] ),
        .O(\perm_u/S4_sb [0]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__0
       (.I0(\S4_reg_n_0_[1] ),
        .I1(\S3_reg_n_0_[1] ),
        .I2(\S1_reg_n_0_[1] ),
        .I3(\S0_reg_n_0_[1] ),
        .O(\perm_u/S4_sb [1]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__1
       (.I0(\S4_reg_n_0_[2] ),
        .I1(\S3_reg_n_0_[2] ),
        .I2(\S1_reg_n_0_[2] ),
        .I3(\S0_reg_n_0_[2] ),
        .O(\perm_u/S4_sb [2]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__10
       (.I0(\S4_reg_n_0_[11] ),
        .I1(\S3_reg_n_0_[11] ),
        .I2(\S1_reg_n_0_[11] ),
        .I3(\S0_reg_n_0_[11] ),
        .O(\perm_u/S4_sb [11]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__11
       (.I0(\S4_reg_n_0_[12] ),
        .I1(\S3_reg_n_0_[12] ),
        .I2(\S1_reg_n_0_[12] ),
        .I3(\S0_reg_n_0_[12] ),
        .O(\perm_u/S4_sb [12]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__12
       (.I0(\S4_reg_n_0_[13] ),
        .I1(\S3_reg_n_0_[13] ),
        .I2(\S1_reg_n_0_[13] ),
        .I3(\S0_reg_n_0_[13] ),
        .O(\perm_u/S4_sb [13]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__13
       (.I0(\S4_reg_n_0_[14] ),
        .I1(\S3_reg_n_0_[14] ),
        .I2(\S1_reg_n_0_[14] ),
        .I3(\S0_reg_n_0_[14] ),
        .O(\perm_u/S4_sb [14]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__14
       (.I0(\S4_reg_n_0_[15] ),
        .I1(\S3_reg_n_0_[15] ),
        .I2(\S1_reg_n_0_[15] ),
        .I3(\S0_reg_n_0_[15] ),
        .O(\perm_u/S4_sb [15]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__15
       (.I0(\S4_reg_n_0_[16] ),
        .I1(\S3_reg_n_0_[16] ),
        .I2(\S1_reg_n_0_[16] ),
        .I3(\S0_reg_n_0_[16] ),
        .O(\perm_u/S4_sb [16]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__16
       (.I0(\S4_reg_n_0_[17] ),
        .I1(\S3_reg_n_0_[17] ),
        .I2(\S1_reg_n_0_[17] ),
        .I3(\S0_reg_n_0_[17] ),
        .O(\perm_u/S4_sb [17]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__17
       (.I0(\S4_reg_n_0_[18] ),
        .I1(\S3_reg_n_0_[18] ),
        .I2(\S1_reg_n_0_[18] ),
        .I3(\S0_reg_n_0_[18] ),
        .O(\perm_u/S4_sb [18]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__18
       (.I0(\S4_reg_n_0_[19] ),
        .I1(\S3_reg_n_0_[19] ),
        .I2(\S1_reg_n_0_[19] ),
        .I3(\S0_reg_n_0_[19] ),
        .O(\perm_u/S4_sb [19]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__19
       (.I0(\S4_reg_n_0_[20] ),
        .I1(\S3_reg_n_0_[20] ),
        .I2(\S1_reg_n_0_[20] ),
        .I3(\S0_reg_n_0_[20] ),
        .O(\perm_u/S4_sb [20]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__2
       (.I0(\S4_reg_n_0_[3] ),
        .I1(\S3_reg_n_0_[3] ),
        .I2(\S1_reg_n_0_[3] ),
        .I3(\S0_reg_n_0_[3] ),
        .O(\perm_u/S4_sb [3]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__20
       (.I0(\S4_reg_n_0_[21] ),
        .I1(\S3_reg_n_0_[21] ),
        .I2(\S1_reg_n_0_[21] ),
        .I3(\S0_reg_n_0_[21] ),
        .O(\perm_u/S4_sb [21]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__21
       (.I0(\S4_reg_n_0_[22] ),
        .I1(\S3_reg_n_0_[22] ),
        .I2(\S1_reg_n_0_[22] ),
        .I3(\S0_reg_n_0_[22] ),
        .O(\perm_u/S4_sb [22]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__22
       (.I0(\S4_reg_n_0_[23] ),
        .I1(\S3_reg_n_0_[23] ),
        .I2(\S1_reg_n_0_[23] ),
        .I3(\S0_reg_n_0_[23] ),
        .O(\perm_u/S4_sb [23]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__23
       (.I0(\S4_reg_n_0_[24] ),
        .I1(\S3_reg_n_0_[24] ),
        .I2(\S1_reg_n_0_[24] ),
        .I3(\S0_reg_n_0_[24] ),
        .O(\perm_u/S4_sb [24]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__24
       (.I0(\S4_reg_n_0_[25] ),
        .I1(\S3_reg_n_0_[25] ),
        .I2(\S1_reg_n_0_[25] ),
        .I3(\S0_reg_n_0_[25] ),
        .O(\perm_u/S4_sb [25]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__25
       (.I0(\S4_reg_n_0_[26] ),
        .I1(\S3_reg_n_0_[26] ),
        .I2(\S1_reg_n_0_[26] ),
        .I3(\S0_reg_n_0_[26] ),
        .O(\perm_u/S4_sb [26]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__26
       (.I0(\S4_reg_n_0_[27] ),
        .I1(\S3_reg_n_0_[27] ),
        .I2(\S1_reg_n_0_[27] ),
        .I3(\S0_reg_n_0_[27] ),
        .O(\perm_u/S4_sb [27]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__27
       (.I0(\S4_reg_n_0_[28] ),
        .I1(\S3_reg_n_0_[28] ),
        .I2(\S1_reg_n_0_[28] ),
        .I3(\S0_reg_n_0_[28] ),
        .O(\perm_u/S4_sb [28]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__28
       (.I0(\S4_reg_n_0_[29] ),
        .I1(\S3_reg_n_0_[29] ),
        .I2(\S1_reg_n_0_[29] ),
        .I3(\S0_reg_n_0_[29] ),
        .O(\perm_u/S4_sb [29]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__29
       (.I0(\S4_reg_n_0_[30] ),
        .I1(\S3_reg_n_0_[30] ),
        .I2(\S1_reg_n_0_[30] ),
        .I3(\S0_reg_n_0_[30] ),
        .O(\perm_u/S4_sb [30]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__3
       (.I0(\S4_reg_n_0_[4] ),
        .I1(\S3_reg_n_0_[4] ),
        .I2(\S1_reg_n_0_[4] ),
        .I3(\S0_reg_n_0_[4] ),
        .O(\perm_u/S4_sb [4]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__30
       (.I0(\S4_reg_n_0_[31] ),
        .I1(\S3_reg_n_0_[31] ),
        .I2(\S1_reg_n_0_[31] ),
        .I3(\S0_reg_n_0_[31] ),
        .O(\perm_u/S4_sb [31]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__31
       (.I0(\S4_reg_n_0_[32] ),
        .I1(\S3_reg_n_0_[32] ),
        .I2(\S1_reg_n_0_[32] ),
        .I3(\S0_reg_n_0_[32] ),
        .O(\perm_u/S4_sb [32]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__32
       (.I0(\S4_reg_n_0_[33] ),
        .I1(\S3_reg_n_0_[33] ),
        .I2(\S1_reg_n_0_[33] ),
        .I3(\S0_reg_n_0_[33] ),
        .O(\perm_u/S4_sb [33]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__33
       (.I0(\S4_reg_n_0_[34] ),
        .I1(\S3_reg_n_0_[34] ),
        .I2(\S1_reg_n_0_[34] ),
        .I3(\S0_reg_n_0_[34] ),
        .O(\perm_u/S4_sb [34]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__34
       (.I0(\S4_reg_n_0_[35] ),
        .I1(\S3_reg_n_0_[35] ),
        .I2(\S1_reg_n_0_[35] ),
        .I3(\S0_reg_n_0_[35] ),
        .O(\perm_u/S4_sb [35]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__35
       (.I0(\S4_reg_n_0_[36] ),
        .I1(\S3_reg_n_0_[36] ),
        .I2(\S1_reg_n_0_[36] ),
        .I3(\S0_reg_n_0_[36] ),
        .O(\perm_u/S4_sb [36]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__36
       (.I0(\S4_reg_n_0_[37] ),
        .I1(\S3_reg_n_0_[37] ),
        .I2(\S1_reg_n_0_[37] ),
        .I3(\S0_reg_n_0_[37] ),
        .O(\perm_u/S4_sb [37]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__37
       (.I0(\S4_reg_n_0_[38] ),
        .I1(\S3_reg_n_0_[38] ),
        .I2(\S1_reg_n_0_[38] ),
        .I3(\S0_reg_n_0_[38] ),
        .O(\perm_u/S4_sb [38]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__38
       (.I0(\S4_reg_n_0_[39] ),
        .I1(\S3_reg_n_0_[39] ),
        .I2(\S1_reg_n_0_[39] ),
        .I3(\S0_reg_n_0_[39] ),
        .O(\perm_u/S4_sb [39]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__39
       (.I0(\S4_reg_n_0_[40] ),
        .I1(\S3_reg_n_0_[40] ),
        .I2(\S1_reg_n_0_[40] ),
        .I3(\S0_reg_n_0_[40] ),
        .O(\perm_u/S4_sb [40]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__4
       (.I0(\S4_reg_n_0_[5] ),
        .I1(\S3_reg_n_0_[5] ),
        .I2(\S1_reg_n_0_[5] ),
        .I3(\S0_reg_n_0_[5] ),
        .O(\perm_u/S4_sb [5]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__40
       (.I0(\S4_reg_n_0_[41] ),
        .I1(\S3_reg_n_0_[41] ),
        .I2(\S1_reg_n_0_[41] ),
        .I3(\S0_reg_n_0_[41] ),
        .O(\perm_u/S4_sb [41]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__41
       (.I0(\S4_reg_n_0_[42] ),
        .I1(\S3_reg_n_0_[42] ),
        .I2(\S1_reg_n_0_[42] ),
        .I3(\S0_reg_n_0_[42] ),
        .O(\perm_u/S4_sb [42]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__42
       (.I0(\S4_reg_n_0_[43] ),
        .I1(\S3_reg_n_0_[43] ),
        .I2(\S1_reg_n_0_[43] ),
        .I3(\S0_reg_n_0_[43] ),
        .O(\perm_u/S4_sb [43]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__43
       (.I0(\S4_reg_n_0_[44] ),
        .I1(\S3_reg_n_0_[44] ),
        .I2(\S1_reg_n_0_[44] ),
        .I3(\S0_reg_n_0_[44] ),
        .O(\perm_u/S4_sb [44]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__44
       (.I0(\S4_reg_n_0_[45] ),
        .I1(\S3_reg_n_0_[45] ),
        .I2(\S1_reg_n_0_[45] ),
        .I3(\S0_reg_n_0_[45] ),
        .O(\perm_u/S4_sb [45]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__45
       (.I0(\S4_reg_n_0_[46] ),
        .I1(\S3_reg_n_0_[46] ),
        .I2(\S1_reg_n_0_[46] ),
        .I3(\S0_reg_n_0_[46] ),
        .O(\perm_u/S4_sb [46]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__46
       (.I0(\S4_reg_n_0_[47] ),
        .I1(\S3_reg_n_0_[47] ),
        .I2(\S1_reg_n_0_[47] ),
        .I3(\S0_reg_n_0_[47] ),
        .O(\perm_u/S4_sb [47]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__47
       (.I0(\S4_reg_n_0_[48] ),
        .I1(\S3_reg_n_0_[48] ),
        .I2(\S1_reg_n_0_[48] ),
        .I3(\S0_reg_n_0_[48] ),
        .O(\perm_u/S4_sb [48]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__48
       (.I0(\S4_reg_n_0_[49] ),
        .I1(\S3_reg_n_0_[49] ),
        .I2(\S1_reg_n_0_[49] ),
        .I3(\S0_reg_n_0_[49] ),
        .O(\perm_u/S4_sb [49]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__49
       (.I0(\S4_reg_n_0_[50] ),
        .I1(\S3_reg_n_0_[50] ),
        .I2(\S1_reg_n_0_[50] ),
        .I3(\S0_reg_n_0_[50] ),
        .O(\perm_u/S4_sb [50]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__5
       (.I0(\S4_reg_n_0_[6] ),
        .I1(\S3_reg_n_0_[6] ),
        .I2(\S1_reg_n_0_[6] ),
        .I3(\S0_reg_n_0_[6] ),
        .O(\perm_u/S4_sb [6]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__50
       (.I0(\S4_reg_n_0_[51] ),
        .I1(\S3_reg_n_0_[51] ),
        .I2(\S1_reg_n_0_[51] ),
        .I3(\S0_reg_n_0_[51] ),
        .O(\perm_u/S4_sb [51]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__51
       (.I0(\S4_reg_n_0_[52] ),
        .I1(\S3_reg_n_0_[52] ),
        .I2(\S1_reg_n_0_[52] ),
        .I3(\S0_reg_n_0_[52] ),
        .O(\perm_u/S4_sb [52]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__52
       (.I0(\S4_reg_n_0_[53] ),
        .I1(\S3_reg_n_0_[53] ),
        .I2(\S1_reg_n_0_[53] ),
        .I3(\S0_reg_n_0_[53] ),
        .O(\perm_u/S4_sb [53]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__53
       (.I0(\S4_reg_n_0_[54] ),
        .I1(\S3_reg_n_0_[54] ),
        .I2(\S1_reg_n_0_[54] ),
        .I3(\S0_reg_n_0_[54] ),
        .O(\perm_u/S4_sb [54]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__54
       (.I0(\S4_reg_n_0_[55] ),
        .I1(\S3_reg_n_0_[55] ),
        .I2(\S1_reg_n_0_[55] ),
        .I3(\S0_reg_n_0_[55] ),
        .O(\perm_u/S4_sb [55]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__55
       (.I0(\S4_reg_n_0_[56] ),
        .I1(\S3_reg_n_0_[56] ),
        .I2(\S1_reg_n_0_[56] ),
        .I3(\S0_reg_n_0_[56] ),
        .O(\perm_u/S4_sb [56]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__56
       (.I0(\S4_reg_n_0_[57] ),
        .I1(\S3_reg_n_0_[57] ),
        .I2(\S1_reg_n_0_[57] ),
        .I3(\S0_reg_n_0_[57] ),
        .O(\perm_u/S4_sb [57]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__57
       (.I0(\S4_reg_n_0_[58] ),
        .I1(\S3_reg_n_0_[58] ),
        .I2(\S1_reg_n_0_[58] ),
        .I3(\S0_reg_n_0_[58] ),
        .O(\perm_u/S4_sb [58]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__58
       (.I0(\S4_reg_n_0_[59] ),
        .I1(\S3_reg_n_0_[59] ),
        .I2(\S1_reg_n_0_[59] ),
        .I3(\S0_reg_n_0_[59] ),
        .O(\perm_u/S4_sb [59]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__59
       (.I0(\S4_reg_n_0_[60] ),
        .I1(\S3_reg_n_0_[60] ),
        .I2(\S1_reg_n_0_[60] ),
        .I3(\S0_reg_n_0_[60] ),
        .O(\perm_u/S4_sb [60]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__6
       (.I0(\S4_reg_n_0_[7] ),
        .I1(\S3_reg_n_0_[7] ),
        .I2(\S1_reg_n_0_[7] ),
        .I3(\S0_reg_n_0_[7] ),
        .O(\perm_u/S4_sb [7]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__60
       (.I0(\S4_reg_n_0_[61] ),
        .I1(\S3_reg_n_0_[61] ),
        .I2(\S1_reg_n_0_[61] ),
        .I3(\S0_reg_n_0_[61] ),
        .O(\perm_u/S4_sb [61]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__61
       (.I0(\S4_reg_n_0_[62] ),
        .I1(\S3_reg_n_0_[62] ),
        .I2(\S1_reg_n_0_[62] ),
        .I3(\S0_reg_n_0_[62] ),
        .O(\perm_u/S4_sb [62]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__62
       (.I0(\S4_reg_n_0_[63] ),
        .I1(\S3_reg_n_0_[63] ),
        .I2(\S1_reg_n_0_[63] ),
        .I3(\S0_reg_n_0_[63] ),
        .O(\perm_u/S4_sb [63]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__7
       (.I0(\S4_reg_n_0_[8] ),
        .I1(\S3_reg_n_0_[8] ),
        .I2(\S1_reg_n_0_[8] ),
        .I3(\S0_reg_n_0_[8] ),
        .O(\perm_u/S4_sb [8]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__8
       (.I0(\S4_reg_n_0_[9] ),
        .I1(\S3_reg_n_0_[9] ),
        .I2(\S1_reg_n_0_[9] ),
        .I3(\S0_reg_n_0_[9] ),
        .O(\perm_u/S4_sb [9]));
  LUT4 #(
    .INIT(16'hC636)) 
    g0_b0__9
       (.I0(\S4_reg_n_0_[10] ),
        .I1(\S3_reg_n_0_[10] ),
        .I2(\S1_reg_n_0_[10] ),
        .I3(\S0_reg_n_0_[10] ),
        .O(\perm_u/S4_sb [10]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1
       (.I0(\S4_reg_n_0_[8] ),
        .I1(\S3_reg_n_0_[8] ),
        .I2(\S2_reg_n_0_[8] ),
        .I3(\S1_reg_n_0_[8] ),
        .I4(\S0_reg_n_0_[8] ),
        .O(\perm_u/S3_sb [8]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__0
       (.I0(\S4_reg_n_0_[9] ),
        .I1(\S3_reg_n_0_[9] ),
        .I2(\S2_reg_n_0_[9] ),
        .I3(\S1_reg_n_0_[9] ),
        .I4(\S0_reg_n_0_[9] ),
        .O(\perm_u/S3_sb [9]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__1
       (.I0(\S4_reg_n_0_[10] ),
        .I1(\S3_reg_n_0_[10] ),
        .I2(\S2_reg_n_0_[10] ),
        .I3(\S1_reg_n_0_[10] ),
        .I4(\S0_reg_n_0_[10] ),
        .O(\perm_u/S3_sb [10]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__10
       (.I0(\S4_reg_n_0_[19] ),
        .I1(\S3_reg_n_0_[19] ),
        .I2(\S2_reg_n_0_[19] ),
        .I3(\S1_reg_n_0_[19] ),
        .I4(\S0_reg_n_0_[19] ),
        .O(\perm_u/S3_sb [19]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__11
       (.I0(\S4_reg_n_0_[20] ),
        .I1(\S3_reg_n_0_[20] ),
        .I2(\S2_reg_n_0_[20] ),
        .I3(\S1_reg_n_0_[20] ),
        .I4(\S0_reg_n_0_[20] ),
        .O(\perm_u/S3_sb [20]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__12
       (.I0(\S4_reg_n_0_[21] ),
        .I1(\S3_reg_n_0_[21] ),
        .I2(\S2_reg_n_0_[21] ),
        .I3(\S1_reg_n_0_[21] ),
        .I4(\S0_reg_n_0_[21] ),
        .O(\perm_u/S3_sb [21]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__13
       (.I0(\S4_reg_n_0_[22] ),
        .I1(\S3_reg_n_0_[22] ),
        .I2(\S2_reg_n_0_[22] ),
        .I3(\S1_reg_n_0_[22] ),
        .I4(\S0_reg_n_0_[22] ),
        .O(\perm_u/S3_sb [22]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__14
       (.I0(\S4_reg_n_0_[23] ),
        .I1(\S3_reg_n_0_[23] ),
        .I2(\S2_reg_n_0_[23] ),
        .I3(\S1_reg_n_0_[23] ),
        .I4(\S0_reg_n_0_[23] ),
        .O(\perm_u/S3_sb [23]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__15
       (.I0(\S4_reg_n_0_[24] ),
        .I1(\S3_reg_n_0_[24] ),
        .I2(\S2_reg_n_0_[24] ),
        .I3(\S1_reg_n_0_[24] ),
        .I4(\S0_reg_n_0_[24] ),
        .O(\perm_u/S3_sb [24]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__16
       (.I0(\S4_reg_n_0_[25] ),
        .I1(\S3_reg_n_0_[25] ),
        .I2(\S2_reg_n_0_[25] ),
        .I3(\S1_reg_n_0_[25] ),
        .I4(\S0_reg_n_0_[25] ),
        .O(\perm_u/S3_sb [25]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__17
       (.I0(\S4_reg_n_0_[26] ),
        .I1(\S3_reg_n_0_[26] ),
        .I2(\S2_reg_n_0_[26] ),
        .I3(\S1_reg_n_0_[26] ),
        .I4(\S0_reg_n_0_[26] ),
        .O(\perm_u/S3_sb [26]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__18
       (.I0(\S4_reg_n_0_[27] ),
        .I1(\S3_reg_n_0_[27] ),
        .I2(\S2_reg_n_0_[27] ),
        .I3(\S1_reg_n_0_[27] ),
        .I4(\S0_reg_n_0_[27] ),
        .O(\perm_u/S3_sb [27]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__19
       (.I0(\S4_reg_n_0_[28] ),
        .I1(\S3_reg_n_0_[28] ),
        .I2(\S2_reg_n_0_[28] ),
        .I3(\S1_reg_n_0_[28] ),
        .I4(\S0_reg_n_0_[28] ),
        .O(\perm_u/S3_sb [28]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__2
       (.I0(\S4_reg_n_0_[11] ),
        .I1(\S3_reg_n_0_[11] ),
        .I2(\S2_reg_n_0_[11] ),
        .I3(\S1_reg_n_0_[11] ),
        .I4(\S0_reg_n_0_[11] ),
        .O(\perm_u/S3_sb [11]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__20
       (.I0(\S4_reg_n_0_[29] ),
        .I1(\S3_reg_n_0_[29] ),
        .I2(\S2_reg_n_0_[29] ),
        .I3(\S1_reg_n_0_[29] ),
        .I4(\S0_reg_n_0_[29] ),
        .O(\perm_u/S3_sb [29]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__21
       (.I0(\S4_reg_n_0_[30] ),
        .I1(\S3_reg_n_0_[30] ),
        .I2(\S2_reg_n_0_[30] ),
        .I3(\S1_reg_n_0_[30] ),
        .I4(\S0_reg_n_0_[30] ),
        .O(\perm_u/S3_sb [30]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__22
       (.I0(\S4_reg_n_0_[31] ),
        .I1(\S3_reg_n_0_[31] ),
        .I2(\S2_reg_n_0_[31] ),
        .I3(\S1_reg_n_0_[31] ),
        .I4(\S0_reg_n_0_[31] ),
        .O(\perm_u/S3_sb [31]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__23
       (.I0(\S4_reg_n_0_[32] ),
        .I1(\S3_reg_n_0_[32] ),
        .I2(\S2_reg_n_0_[32] ),
        .I3(\S1_reg_n_0_[32] ),
        .I4(\S0_reg_n_0_[32] ),
        .O(\perm_u/S3_sb [32]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__24
       (.I0(\S4_reg_n_0_[33] ),
        .I1(\S3_reg_n_0_[33] ),
        .I2(\S2_reg_n_0_[33] ),
        .I3(\S1_reg_n_0_[33] ),
        .I4(\S0_reg_n_0_[33] ),
        .O(\perm_u/S3_sb [33]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__25
       (.I0(\S4_reg_n_0_[34] ),
        .I1(\S3_reg_n_0_[34] ),
        .I2(\S2_reg_n_0_[34] ),
        .I3(\S1_reg_n_0_[34] ),
        .I4(\S0_reg_n_0_[34] ),
        .O(\perm_u/S3_sb [34]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__26
       (.I0(\S4_reg_n_0_[35] ),
        .I1(\S3_reg_n_0_[35] ),
        .I2(\S2_reg_n_0_[35] ),
        .I3(\S1_reg_n_0_[35] ),
        .I4(\S0_reg_n_0_[35] ),
        .O(\perm_u/S3_sb [35]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__27
       (.I0(\S4_reg_n_0_[36] ),
        .I1(\S3_reg_n_0_[36] ),
        .I2(\S2_reg_n_0_[36] ),
        .I3(\S1_reg_n_0_[36] ),
        .I4(\S0_reg_n_0_[36] ),
        .O(\perm_u/S3_sb [36]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__28
       (.I0(\S4_reg_n_0_[37] ),
        .I1(\S3_reg_n_0_[37] ),
        .I2(\S2_reg_n_0_[37] ),
        .I3(\S1_reg_n_0_[37] ),
        .I4(\S0_reg_n_0_[37] ),
        .O(\perm_u/S3_sb [37]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__29
       (.I0(\S4_reg_n_0_[38] ),
        .I1(\S3_reg_n_0_[38] ),
        .I2(\S2_reg_n_0_[38] ),
        .I3(\S1_reg_n_0_[38] ),
        .I4(\S0_reg_n_0_[38] ),
        .O(\perm_u/S3_sb [38]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__3
       (.I0(\S4_reg_n_0_[12] ),
        .I1(\S3_reg_n_0_[12] ),
        .I2(\S2_reg_n_0_[12] ),
        .I3(\S1_reg_n_0_[12] ),
        .I4(\S0_reg_n_0_[12] ),
        .O(\perm_u/S3_sb [12]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__30
       (.I0(\S4_reg_n_0_[39] ),
        .I1(\S3_reg_n_0_[39] ),
        .I2(\S2_reg_n_0_[39] ),
        .I3(\S1_reg_n_0_[39] ),
        .I4(\S0_reg_n_0_[39] ),
        .O(\perm_u/S3_sb [39]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__31
       (.I0(\S4_reg_n_0_[40] ),
        .I1(\S3_reg_n_0_[40] ),
        .I2(\S2_reg_n_0_[40] ),
        .I3(\S1_reg_n_0_[40] ),
        .I4(\S0_reg_n_0_[40] ),
        .O(\perm_u/S3_sb [40]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__32
       (.I0(\S4_reg_n_0_[41] ),
        .I1(\S3_reg_n_0_[41] ),
        .I2(\S2_reg_n_0_[41] ),
        .I3(\S1_reg_n_0_[41] ),
        .I4(\S0_reg_n_0_[41] ),
        .O(\perm_u/S3_sb [41]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__33
       (.I0(\S4_reg_n_0_[42] ),
        .I1(\S3_reg_n_0_[42] ),
        .I2(\S2_reg_n_0_[42] ),
        .I3(\S1_reg_n_0_[42] ),
        .I4(\S0_reg_n_0_[42] ),
        .O(\perm_u/S3_sb [42]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__34
       (.I0(\S4_reg_n_0_[43] ),
        .I1(\S3_reg_n_0_[43] ),
        .I2(\S2_reg_n_0_[43] ),
        .I3(\S1_reg_n_0_[43] ),
        .I4(\S0_reg_n_0_[43] ),
        .O(\perm_u/S3_sb [43]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__35
       (.I0(\S4_reg_n_0_[44] ),
        .I1(\S3_reg_n_0_[44] ),
        .I2(\S2_reg_n_0_[44] ),
        .I3(\S1_reg_n_0_[44] ),
        .I4(\S0_reg_n_0_[44] ),
        .O(\perm_u/S3_sb [44]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__36
       (.I0(\S4_reg_n_0_[45] ),
        .I1(\S3_reg_n_0_[45] ),
        .I2(\S2_reg_n_0_[45] ),
        .I3(\S1_reg_n_0_[45] ),
        .I4(\S0_reg_n_0_[45] ),
        .O(\perm_u/S3_sb [45]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__37
       (.I0(\S4_reg_n_0_[46] ),
        .I1(\S3_reg_n_0_[46] ),
        .I2(\S2_reg_n_0_[46] ),
        .I3(\S1_reg_n_0_[46] ),
        .I4(\S0_reg_n_0_[46] ),
        .O(\perm_u/S3_sb [46]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__38
       (.I0(\S4_reg_n_0_[47] ),
        .I1(\S3_reg_n_0_[47] ),
        .I2(\S2_reg_n_0_[47] ),
        .I3(\S1_reg_n_0_[47] ),
        .I4(\S0_reg_n_0_[47] ),
        .O(\perm_u/S3_sb [47]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__39
       (.I0(\S4_reg_n_0_[48] ),
        .I1(\S3_reg_n_0_[48] ),
        .I2(\S2_reg_n_0_[48] ),
        .I3(\S1_reg_n_0_[48] ),
        .I4(\S0_reg_n_0_[48] ),
        .O(\perm_u/S3_sb [48]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__4
       (.I0(\S4_reg_n_0_[13] ),
        .I1(\S3_reg_n_0_[13] ),
        .I2(\S2_reg_n_0_[13] ),
        .I3(\S1_reg_n_0_[13] ),
        .I4(\S0_reg_n_0_[13] ),
        .O(\perm_u/S3_sb [13]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__40
       (.I0(\S4_reg_n_0_[49] ),
        .I1(\S3_reg_n_0_[49] ),
        .I2(\S2_reg_n_0_[49] ),
        .I3(\S1_reg_n_0_[49] ),
        .I4(\S0_reg_n_0_[49] ),
        .O(\perm_u/S3_sb [49]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__41
       (.I0(\S4_reg_n_0_[50] ),
        .I1(\S3_reg_n_0_[50] ),
        .I2(\S2_reg_n_0_[50] ),
        .I3(\S1_reg_n_0_[50] ),
        .I4(\S0_reg_n_0_[50] ),
        .O(\perm_u/S3_sb [50]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__42
       (.I0(\S4_reg_n_0_[51] ),
        .I1(\S3_reg_n_0_[51] ),
        .I2(\S2_reg_n_0_[51] ),
        .I3(\S1_reg_n_0_[51] ),
        .I4(\S0_reg_n_0_[51] ),
        .O(\perm_u/S3_sb [51]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__43
       (.I0(\S4_reg_n_0_[52] ),
        .I1(\S3_reg_n_0_[52] ),
        .I2(\S2_reg_n_0_[52] ),
        .I3(\S1_reg_n_0_[52] ),
        .I4(\S0_reg_n_0_[52] ),
        .O(\perm_u/S3_sb [52]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__44
       (.I0(\S4_reg_n_0_[53] ),
        .I1(\S3_reg_n_0_[53] ),
        .I2(\S2_reg_n_0_[53] ),
        .I3(\S1_reg_n_0_[53] ),
        .I4(\S0_reg_n_0_[53] ),
        .O(\perm_u/S3_sb [53]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__45
       (.I0(\S4_reg_n_0_[54] ),
        .I1(\S3_reg_n_0_[54] ),
        .I2(\S2_reg_n_0_[54] ),
        .I3(\S1_reg_n_0_[54] ),
        .I4(\S0_reg_n_0_[54] ),
        .O(\perm_u/S3_sb [54]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__46
       (.I0(\S4_reg_n_0_[55] ),
        .I1(\S3_reg_n_0_[55] ),
        .I2(\S2_reg_n_0_[55] ),
        .I3(\S1_reg_n_0_[55] ),
        .I4(\S0_reg_n_0_[55] ),
        .O(\perm_u/S3_sb [55]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__47
       (.I0(\S4_reg_n_0_[56] ),
        .I1(\S3_reg_n_0_[56] ),
        .I2(\S2_reg_n_0_[56] ),
        .I3(\S1_reg_n_0_[56] ),
        .I4(\S0_reg_n_0_[56] ),
        .O(\perm_u/S3_sb [56]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__48
       (.I0(\S4_reg_n_0_[57] ),
        .I1(\S3_reg_n_0_[57] ),
        .I2(\S2_reg_n_0_[57] ),
        .I3(\S1_reg_n_0_[57] ),
        .I4(\S0_reg_n_0_[57] ),
        .O(\perm_u/S3_sb [57]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__49
       (.I0(\S4_reg_n_0_[58] ),
        .I1(\S3_reg_n_0_[58] ),
        .I2(\S2_reg_n_0_[58] ),
        .I3(\S1_reg_n_0_[58] ),
        .I4(\S0_reg_n_0_[58] ),
        .O(\perm_u/S3_sb [58]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__5
       (.I0(\S4_reg_n_0_[14] ),
        .I1(\S3_reg_n_0_[14] ),
        .I2(\S2_reg_n_0_[14] ),
        .I3(\S1_reg_n_0_[14] ),
        .I4(\S0_reg_n_0_[14] ),
        .O(\perm_u/S3_sb [14]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__50
       (.I0(\S4_reg_n_0_[59] ),
        .I1(\S3_reg_n_0_[59] ),
        .I2(\S2_reg_n_0_[59] ),
        .I3(\S1_reg_n_0_[59] ),
        .I4(\S0_reg_n_0_[59] ),
        .O(\perm_u/S3_sb [59]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__51
       (.I0(\S4_reg_n_0_[60] ),
        .I1(\S3_reg_n_0_[60] ),
        .I2(\S2_reg_n_0_[60] ),
        .I3(\S1_reg_n_0_[60] ),
        .I4(\S0_reg_n_0_[60] ),
        .O(\perm_u/S3_sb [60]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__52
       (.I0(\S4_reg_n_0_[61] ),
        .I1(\S3_reg_n_0_[61] ),
        .I2(\S2_reg_n_0_[61] ),
        .I3(\S1_reg_n_0_[61] ),
        .I4(\S0_reg_n_0_[61] ),
        .O(\perm_u/S3_sb [61]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__53
       (.I0(\S4_reg_n_0_[62] ),
        .I1(\S3_reg_n_0_[62] ),
        .I2(\S2_reg_n_0_[62] ),
        .I3(\S1_reg_n_0_[62] ),
        .I4(\S0_reg_n_0_[62] ),
        .O(\perm_u/S3_sb [62]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__54
       (.I0(\S4_reg_n_0_[63] ),
        .I1(\S3_reg_n_0_[63] ),
        .I2(\S2_reg_n_0_[63] ),
        .I3(\S1_reg_n_0_[63] ),
        .I4(\S0_reg_n_0_[63] ),
        .O(\perm_u/S3_sb [63]));
  LUT6 #(
    .INIT(64'h6666999996696996)) 
    g0_b1__55
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[3] ),
        .I2(\S4_reg_n_0_[3] ),
        .I3(\S3_reg_n_0_[3] ),
        .I4(\S1_reg_n_0_[3] ),
        .I5(\S0_reg_n_0_[3] ),
        .O(\perm_u/S3_sb [3]));
  LUT6 #(
    .INIT(64'h6666999996696996)) 
    g0_b1__56
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[2] ),
        .I2(\S4_reg_n_0_[2] ),
        .I3(\S3_reg_n_0_[2] ),
        .I4(\S1_reg_n_0_[2] ),
        .I5(\S0_reg_n_0_[2] ),
        .O(\perm_u/S3_sb [2]));
  LUT6 #(
    .INIT(64'h6666999996696996)) 
    g0_b1__57
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[1] ),
        .I2(\S4_reg_n_0_[1] ),
        .I3(\S3_reg_n_0_[1] ),
        .I4(\S1_reg_n_0_[1] ),
        .I5(\S0_reg_n_0_[1] ),
        .O(\perm_u/S3_sb [1]));
  LUT6 #(
    .INIT(64'h6666999996696996)) 
    g0_b1__58
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[0] ),
        .I2(\S4_reg_n_0_[0] ),
        .I3(\S3_reg_n_0_[0] ),
        .I4(\S1_reg_n_0_[0] ),
        .I5(\S0_reg_n_0_[0] ),
        .O(\perm_u/S3_sb [0]));
  LUT6 #(
    .INIT(64'h9999666669969669)) 
    g0_b1__59
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[7] ),
        .I2(\S4_reg_n_0_[7] ),
        .I3(\S3_reg_n_0_[7] ),
        .I4(\S1_reg_n_0_[7] ),
        .I5(\S0_reg_n_0_[7] ),
        .O(\perm_u/S3_sb [7]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__6
       (.I0(\S4_reg_n_0_[15] ),
        .I1(\S3_reg_n_0_[15] ),
        .I2(\S2_reg_n_0_[15] ),
        .I3(\S1_reg_n_0_[15] ),
        .I4(\S0_reg_n_0_[15] ),
        .O(\perm_u/S3_sb [15]));
  LUT6 #(
    .INIT(64'h9999666669969669)) 
    g0_b1__60
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[6] ),
        .I2(\S4_reg_n_0_[6] ),
        .I3(\S3_reg_n_0_[6] ),
        .I4(\S1_reg_n_0_[6] ),
        .I5(\S0_reg_n_0_[6] ),
        .O(\perm_u/S3_sb [6]));
  LUT6 #(
    .INIT(64'h9999666669969669)) 
    g0_b1__61
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[5] ),
        .I2(\S4_reg_n_0_[5] ),
        .I3(\S3_reg_n_0_[5] ),
        .I4(\S1_reg_n_0_[5] ),
        .I5(\S0_reg_n_0_[5] ),
        .O(\perm_u/S3_sb [5]));
  LUT6 #(
    .INIT(64'h9999666669969669)) 
    g0_b1__62
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[4] ),
        .I2(\S4_reg_n_0_[4] ),
        .I3(\S3_reg_n_0_[4] ),
        .I4(\S1_reg_n_0_[4] ),
        .I5(\S0_reg_n_0_[4] ),
        .O(\perm_u/S3_sb [4]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__7
       (.I0(\S4_reg_n_0_[16] ),
        .I1(\S3_reg_n_0_[16] ),
        .I2(\S2_reg_n_0_[16] ),
        .I3(\S1_reg_n_0_[16] ),
        .I4(\S0_reg_n_0_[16] ),
        .O(\perm_u/S3_sb [16]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__8
       (.I0(\S4_reg_n_0_[17] ),
        .I1(\S3_reg_n_0_[17] ),
        .I2(\S2_reg_n_0_[17] ),
        .I3(\S1_reg_n_0_[17] ),
        .I4(\S0_reg_n_0_[17] ),
        .O(\perm_u/S3_sb [17]));
  LUT5 #(
    .INIT(32'hF00F6996)) 
    g0_b1__9
       (.I0(\S4_reg_n_0_[18] ),
        .I1(\S3_reg_n_0_[18] ),
        .I2(\S2_reg_n_0_[18] ),
        .I3(\S1_reg_n_0_[18] ),
        .I4(\S0_reg_n_0_[18] ),
        .O(\perm_u/S3_sb [18]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2
       (.I0(\S4_reg_n_0_[8] ),
        .I1(\S3_reg_n_0_[8] ),
        .I2(\S2_reg_n_0_[8] ),
        .I3(\S1_reg_n_0_[8] ),
        .O(\perm_u/S2_sb [8]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__0
       (.I0(\S4_reg_n_0_[9] ),
        .I1(\S3_reg_n_0_[9] ),
        .I2(\S2_reg_n_0_[9] ),
        .I3(\S1_reg_n_0_[9] ),
        .O(\perm_u/S2_sb [9]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__1
       (.I0(\S4_reg_n_0_[10] ),
        .I1(\S3_reg_n_0_[10] ),
        .I2(\S2_reg_n_0_[10] ),
        .I3(\S1_reg_n_0_[10] ),
        .O(\perm_u/S2_sb [10]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__10
       (.I0(\S4_reg_n_0_[19] ),
        .I1(\S3_reg_n_0_[19] ),
        .I2(\S2_reg_n_0_[19] ),
        .I3(\S1_reg_n_0_[19] ),
        .O(\perm_u/S2_sb [19]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__11
       (.I0(\S4_reg_n_0_[20] ),
        .I1(\S3_reg_n_0_[20] ),
        .I2(\S2_reg_n_0_[20] ),
        .I3(\S1_reg_n_0_[20] ),
        .O(\perm_u/S2_sb [20]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__12
       (.I0(\S4_reg_n_0_[21] ),
        .I1(\S3_reg_n_0_[21] ),
        .I2(\S2_reg_n_0_[21] ),
        .I3(\S1_reg_n_0_[21] ),
        .O(\perm_u/S2_sb [21]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__13
       (.I0(\S4_reg_n_0_[22] ),
        .I1(\S3_reg_n_0_[22] ),
        .I2(\S2_reg_n_0_[22] ),
        .I3(\S1_reg_n_0_[22] ),
        .O(\perm_u/S2_sb [22]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__14
       (.I0(\S4_reg_n_0_[23] ),
        .I1(\S3_reg_n_0_[23] ),
        .I2(\S2_reg_n_0_[23] ),
        .I3(\S1_reg_n_0_[23] ),
        .O(\perm_u/S2_sb [23]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__15
       (.I0(\S4_reg_n_0_[24] ),
        .I1(\S3_reg_n_0_[24] ),
        .I2(\S2_reg_n_0_[24] ),
        .I3(\S1_reg_n_0_[24] ),
        .O(\perm_u/S2_sb [24]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__16
       (.I0(\S4_reg_n_0_[25] ),
        .I1(\S3_reg_n_0_[25] ),
        .I2(\S2_reg_n_0_[25] ),
        .I3(\S1_reg_n_0_[25] ),
        .O(\perm_u/S2_sb [25]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__17
       (.I0(\S4_reg_n_0_[26] ),
        .I1(\S3_reg_n_0_[26] ),
        .I2(\S2_reg_n_0_[26] ),
        .I3(\S1_reg_n_0_[26] ),
        .O(\perm_u/S2_sb [26]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__18
       (.I0(\S4_reg_n_0_[27] ),
        .I1(\S3_reg_n_0_[27] ),
        .I2(\S2_reg_n_0_[27] ),
        .I3(\S1_reg_n_0_[27] ),
        .O(\perm_u/S2_sb [27]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__19
       (.I0(\S4_reg_n_0_[28] ),
        .I1(\S3_reg_n_0_[28] ),
        .I2(\S2_reg_n_0_[28] ),
        .I3(\S1_reg_n_0_[28] ),
        .O(\perm_u/S2_sb [28]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__2
       (.I0(\S4_reg_n_0_[11] ),
        .I1(\S3_reg_n_0_[11] ),
        .I2(\S2_reg_n_0_[11] ),
        .I3(\S1_reg_n_0_[11] ),
        .O(\perm_u/S2_sb [11]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__20
       (.I0(\S4_reg_n_0_[29] ),
        .I1(\S3_reg_n_0_[29] ),
        .I2(\S2_reg_n_0_[29] ),
        .I3(\S1_reg_n_0_[29] ),
        .O(\perm_u/S2_sb [29]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__21
       (.I0(\S4_reg_n_0_[30] ),
        .I1(\S3_reg_n_0_[30] ),
        .I2(\S2_reg_n_0_[30] ),
        .I3(\S1_reg_n_0_[30] ),
        .O(\perm_u/S2_sb [30]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__22
       (.I0(\S4_reg_n_0_[31] ),
        .I1(\S3_reg_n_0_[31] ),
        .I2(\S2_reg_n_0_[31] ),
        .I3(\S1_reg_n_0_[31] ),
        .O(\perm_u/S2_sb [31]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__23
       (.I0(\S4_reg_n_0_[32] ),
        .I1(\S3_reg_n_0_[32] ),
        .I2(\S2_reg_n_0_[32] ),
        .I3(\S1_reg_n_0_[32] ),
        .O(\perm_u/S2_sb [32]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__24
       (.I0(\S4_reg_n_0_[33] ),
        .I1(\S3_reg_n_0_[33] ),
        .I2(\S2_reg_n_0_[33] ),
        .I3(\S1_reg_n_0_[33] ),
        .O(\perm_u/S2_sb [33]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__25
       (.I0(\S4_reg_n_0_[34] ),
        .I1(\S3_reg_n_0_[34] ),
        .I2(\S2_reg_n_0_[34] ),
        .I3(\S1_reg_n_0_[34] ),
        .O(\perm_u/S2_sb [34]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__26
       (.I0(\S4_reg_n_0_[35] ),
        .I1(\S3_reg_n_0_[35] ),
        .I2(\S2_reg_n_0_[35] ),
        .I3(\S1_reg_n_0_[35] ),
        .O(\perm_u/S2_sb [35]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__27
       (.I0(\S4_reg_n_0_[36] ),
        .I1(\S3_reg_n_0_[36] ),
        .I2(\S2_reg_n_0_[36] ),
        .I3(\S1_reg_n_0_[36] ),
        .O(\perm_u/S2_sb [36]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__28
       (.I0(\S4_reg_n_0_[37] ),
        .I1(\S3_reg_n_0_[37] ),
        .I2(\S2_reg_n_0_[37] ),
        .I3(\S1_reg_n_0_[37] ),
        .O(\perm_u/S2_sb [37]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__29
       (.I0(\S4_reg_n_0_[38] ),
        .I1(\S3_reg_n_0_[38] ),
        .I2(\S2_reg_n_0_[38] ),
        .I3(\S1_reg_n_0_[38] ),
        .O(\perm_u/S2_sb [38]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__3
       (.I0(\S4_reg_n_0_[12] ),
        .I1(\S3_reg_n_0_[12] ),
        .I2(\S2_reg_n_0_[12] ),
        .I3(\S1_reg_n_0_[12] ),
        .O(\perm_u/S2_sb [12]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__30
       (.I0(\S4_reg_n_0_[39] ),
        .I1(\S3_reg_n_0_[39] ),
        .I2(\S2_reg_n_0_[39] ),
        .I3(\S1_reg_n_0_[39] ),
        .O(\perm_u/S2_sb [39]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__31
       (.I0(\S4_reg_n_0_[40] ),
        .I1(\S3_reg_n_0_[40] ),
        .I2(\S2_reg_n_0_[40] ),
        .I3(\S1_reg_n_0_[40] ),
        .O(\perm_u/S2_sb [40]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__32
       (.I0(\S4_reg_n_0_[41] ),
        .I1(\S3_reg_n_0_[41] ),
        .I2(\S2_reg_n_0_[41] ),
        .I3(\S1_reg_n_0_[41] ),
        .O(\perm_u/S2_sb [41]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__33
       (.I0(\S4_reg_n_0_[42] ),
        .I1(\S3_reg_n_0_[42] ),
        .I2(\S2_reg_n_0_[42] ),
        .I3(\S1_reg_n_0_[42] ),
        .O(\perm_u/S2_sb [42]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__34
       (.I0(\S4_reg_n_0_[43] ),
        .I1(\S3_reg_n_0_[43] ),
        .I2(\S2_reg_n_0_[43] ),
        .I3(\S1_reg_n_0_[43] ),
        .O(\perm_u/S2_sb [43]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__35
       (.I0(\S4_reg_n_0_[44] ),
        .I1(\S3_reg_n_0_[44] ),
        .I2(\S2_reg_n_0_[44] ),
        .I3(\S1_reg_n_0_[44] ),
        .O(\perm_u/S2_sb [44]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__36
       (.I0(\S4_reg_n_0_[45] ),
        .I1(\S3_reg_n_0_[45] ),
        .I2(\S2_reg_n_0_[45] ),
        .I3(\S1_reg_n_0_[45] ),
        .O(\perm_u/S2_sb [45]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__37
       (.I0(\S4_reg_n_0_[46] ),
        .I1(\S3_reg_n_0_[46] ),
        .I2(\S2_reg_n_0_[46] ),
        .I3(\S1_reg_n_0_[46] ),
        .O(\perm_u/S2_sb [46]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__38
       (.I0(\S4_reg_n_0_[47] ),
        .I1(\S3_reg_n_0_[47] ),
        .I2(\S2_reg_n_0_[47] ),
        .I3(\S1_reg_n_0_[47] ),
        .O(\perm_u/S2_sb [47]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__39
       (.I0(\S4_reg_n_0_[48] ),
        .I1(\S3_reg_n_0_[48] ),
        .I2(\S2_reg_n_0_[48] ),
        .I3(\S1_reg_n_0_[48] ),
        .O(\perm_u/S2_sb [48]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__4
       (.I0(\S4_reg_n_0_[13] ),
        .I1(\S3_reg_n_0_[13] ),
        .I2(\S2_reg_n_0_[13] ),
        .I3(\S1_reg_n_0_[13] ),
        .O(\perm_u/S2_sb [13]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__40
       (.I0(\S4_reg_n_0_[49] ),
        .I1(\S3_reg_n_0_[49] ),
        .I2(\S2_reg_n_0_[49] ),
        .I3(\S1_reg_n_0_[49] ),
        .O(\perm_u/S2_sb [49]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__41
       (.I0(\S4_reg_n_0_[50] ),
        .I1(\S3_reg_n_0_[50] ),
        .I2(\S2_reg_n_0_[50] ),
        .I3(\S1_reg_n_0_[50] ),
        .O(\perm_u/S2_sb [50]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__42
       (.I0(\S4_reg_n_0_[51] ),
        .I1(\S3_reg_n_0_[51] ),
        .I2(\S2_reg_n_0_[51] ),
        .I3(\S1_reg_n_0_[51] ),
        .O(\perm_u/S2_sb [51]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__43
       (.I0(\S4_reg_n_0_[52] ),
        .I1(\S3_reg_n_0_[52] ),
        .I2(\S2_reg_n_0_[52] ),
        .I3(\S1_reg_n_0_[52] ),
        .O(\perm_u/S2_sb [52]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__44
       (.I0(\S4_reg_n_0_[53] ),
        .I1(\S3_reg_n_0_[53] ),
        .I2(\S2_reg_n_0_[53] ),
        .I3(\S1_reg_n_0_[53] ),
        .O(\perm_u/S2_sb [53]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__45
       (.I0(\S4_reg_n_0_[54] ),
        .I1(\S3_reg_n_0_[54] ),
        .I2(\S2_reg_n_0_[54] ),
        .I3(\S1_reg_n_0_[54] ),
        .O(\perm_u/S2_sb [54]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__46
       (.I0(\S4_reg_n_0_[55] ),
        .I1(\S3_reg_n_0_[55] ),
        .I2(\S2_reg_n_0_[55] ),
        .I3(\S1_reg_n_0_[55] ),
        .O(\perm_u/S2_sb [55]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__47
       (.I0(\S4_reg_n_0_[56] ),
        .I1(\S3_reg_n_0_[56] ),
        .I2(\S2_reg_n_0_[56] ),
        .I3(\S1_reg_n_0_[56] ),
        .O(\perm_u/S2_sb [56]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__48
       (.I0(\S4_reg_n_0_[57] ),
        .I1(\S3_reg_n_0_[57] ),
        .I2(\S2_reg_n_0_[57] ),
        .I3(\S1_reg_n_0_[57] ),
        .O(\perm_u/S2_sb [57]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__49
       (.I0(\S4_reg_n_0_[58] ),
        .I1(\S3_reg_n_0_[58] ),
        .I2(\S2_reg_n_0_[58] ),
        .I3(\S1_reg_n_0_[58] ),
        .O(\perm_u/S2_sb [58]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__5
       (.I0(\S4_reg_n_0_[14] ),
        .I1(\S3_reg_n_0_[14] ),
        .I2(\S2_reg_n_0_[14] ),
        .I3(\S1_reg_n_0_[14] ),
        .O(\perm_u/S2_sb [14]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__50
       (.I0(\S4_reg_n_0_[59] ),
        .I1(\S3_reg_n_0_[59] ),
        .I2(\S2_reg_n_0_[59] ),
        .I3(\S1_reg_n_0_[59] ),
        .O(\perm_u/S2_sb [59]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__51
       (.I0(\S4_reg_n_0_[60] ),
        .I1(\S3_reg_n_0_[60] ),
        .I2(\S2_reg_n_0_[60] ),
        .I3(\S1_reg_n_0_[60] ),
        .O(\perm_u/S2_sb [60]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__52
       (.I0(\S4_reg_n_0_[61] ),
        .I1(\S3_reg_n_0_[61] ),
        .I2(\S2_reg_n_0_[61] ),
        .I3(\S1_reg_n_0_[61] ),
        .O(\perm_u/S2_sb [61]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__53
       (.I0(\S4_reg_n_0_[62] ),
        .I1(\S3_reg_n_0_[62] ),
        .I2(\S2_reg_n_0_[62] ),
        .I3(\S1_reg_n_0_[62] ),
        .O(\perm_u/S2_sb [62]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__54
       (.I0(\S4_reg_n_0_[63] ),
        .I1(\S3_reg_n_0_[63] ),
        .I2(\S2_reg_n_0_[63] ),
        .I3(\S1_reg_n_0_[63] ),
        .O(\perm_u/S2_sb [63]));
  LUT5 #(
    .INIT(32'h66969969)) 
    g0_b2__55
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[3] ),
        .I2(\S4_reg_n_0_[3] ),
        .I3(\S3_reg_n_0_[3] ),
        .I4(\S1_reg_n_0_[3] ),
        .O(\perm_u/S2_sb [3]));
  LUT5 #(
    .INIT(32'h66969969)) 
    g0_b2__56
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[2] ),
        .I2(\S4_reg_n_0_[2] ),
        .I3(\S3_reg_n_0_[2] ),
        .I4(\S1_reg_n_0_[2] ),
        .O(\perm_u/S2_sb [2]));
  LUT5 #(
    .INIT(32'h66969969)) 
    g0_b2__57
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[1] ),
        .I2(\S4_reg_n_0_[1] ),
        .I3(\S3_reg_n_0_[1] ),
        .I4(\S1_reg_n_0_[1] ),
        .O(\perm_u/S2_sb [1]));
  LUT5 #(
    .INIT(32'h66969969)) 
    g0_b2__58
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[0] ),
        .I2(\S4_reg_n_0_[0] ),
        .I3(\S3_reg_n_0_[0] ),
        .I4(\S1_reg_n_0_[0] ),
        .O(\perm_u/S2_sb [0]));
  LUT5 #(
    .INIT(32'h99696696)) 
    g0_b2__59
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[7] ),
        .I2(\S4_reg_n_0_[7] ),
        .I3(\S3_reg_n_0_[7] ),
        .I4(\S1_reg_n_0_[7] ),
        .O(\perm_u/S2_sb [7]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__6
       (.I0(\S4_reg_n_0_[15] ),
        .I1(\S3_reg_n_0_[15] ),
        .I2(\S2_reg_n_0_[15] ),
        .I3(\S1_reg_n_0_[15] ),
        .O(\perm_u/S2_sb [15]));
  LUT5 #(
    .INIT(32'h99696696)) 
    g0_b2__60
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[6] ),
        .I2(\S4_reg_n_0_[6] ),
        .I3(\S3_reg_n_0_[6] ),
        .I4(\S1_reg_n_0_[6] ),
        .O(\perm_u/S2_sb [6]));
  LUT5 #(
    .INIT(32'h99696696)) 
    g0_b2__61
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[5] ),
        .I2(\S4_reg_n_0_[5] ),
        .I3(\S3_reg_n_0_[5] ),
        .I4(\S1_reg_n_0_[5] ),
        .O(\perm_u/S2_sb [5]));
  LUT5 #(
    .INIT(32'h99696696)) 
    g0_b2__62
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[4] ),
        .I2(\S4_reg_n_0_[4] ),
        .I3(\S3_reg_n_0_[4] ),
        .I4(\S1_reg_n_0_[4] ),
        .O(\perm_u/S2_sb [4]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__7
       (.I0(\S4_reg_n_0_[16] ),
        .I1(\S3_reg_n_0_[16] ),
        .I2(\S2_reg_n_0_[16] ),
        .I3(\S1_reg_n_0_[16] ),
        .O(\perm_u/S2_sb [16]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__8
       (.I0(\S4_reg_n_0_[17] ),
        .I1(\S3_reg_n_0_[17] ),
        .I2(\S2_reg_n_0_[17] ),
        .I3(\S1_reg_n_0_[17] ),
        .O(\perm_u/S2_sb [17]));
  LUT4 #(
    .INIT(16'hD22D)) 
    g0_b2__9
       (.I0(\S4_reg_n_0_[18] ),
        .I1(\S3_reg_n_0_[18] ),
        .I2(\S2_reg_n_0_[18] ),
        .I3(\S1_reg_n_0_[18] ),
        .O(\perm_u/S2_sb [18]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3
       (.I0(\S4_reg_n_0_[8] ),
        .I1(\S3_reg_n_0_[8] ),
        .I2(\S2_reg_n_0_[8] ),
        .I3(\S1_reg_n_0_[8] ),
        .I4(\S0_reg_n_0_[8] ),
        .O(\perm_u/S1_sb [8]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__0
       (.I0(\S4_reg_n_0_[9] ),
        .I1(\S3_reg_n_0_[9] ),
        .I2(\S2_reg_n_0_[9] ),
        .I3(\S1_reg_n_0_[9] ),
        .I4(\S0_reg_n_0_[9] ),
        .O(\perm_u/S1_sb [9]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__1
       (.I0(\S4_reg_n_0_[10] ),
        .I1(\S3_reg_n_0_[10] ),
        .I2(\S2_reg_n_0_[10] ),
        .I3(\S1_reg_n_0_[10] ),
        .I4(\S0_reg_n_0_[10] ),
        .O(\perm_u/S1_sb [10]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__10
       (.I0(\S4_reg_n_0_[19] ),
        .I1(\S3_reg_n_0_[19] ),
        .I2(\S2_reg_n_0_[19] ),
        .I3(\S1_reg_n_0_[19] ),
        .I4(\S0_reg_n_0_[19] ),
        .O(\perm_u/S1_sb [19]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__11
       (.I0(\S4_reg_n_0_[20] ),
        .I1(\S3_reg_n_0_[20] ),
        .I2(\S2_reg_n_0_[20] ),
        .I3(\S1_reg_n_0_[20] ),
        .I4(\S0_reg_n_0_[20] ),
        .O(\perm_u/S1_sb [20]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__12
       (.I0(\S4_reg_n_0_[21] ),
        .I1(\S3_reg_n_0_[21] ),
        .I2(\S2_reg_n_0_[21] ),
        .I3(\S1_reg_n_0_[21] ),
        .I4(\S0_reg_n_0_[21] ),
        .O(\perm_u/S1_sb [21]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__13
       (.I0(\S4_reg_n_0_[22] ),
        .I1(\S3_reg_n_0_[22] ),
        .I2(\S2_reg_n_0_[22] ),
        .I3(\S1_reg_n_0_[22] ),
        .I4(\S0_reg_n_0_[22] ),
        .O(\perm_u/S1_sb [22]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__14
       (.I0(\S4_reg_n_0_[23] ),
        .I1(\S3_reg_n_0_[23] ),
        .I2(\S2_reg_n_0_[23] ),
        .I3(\S1_reg_n_0_[23] ),
        .I4(\S0_reg_n_0_[23] ),
        .O(\perm_u/S1_sb [23]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__15
       (.I0(\S4_reg_n_0_[24] ),
        .I1(\S3_reg_n_0_[24] ),
        .I2(\S2_reg_n_0_[24] ),
        .I3(\S1_reg_n_0_[24] ),
        .I4(\S0_reg_n_0_[24] ),
        .O(\perm_u/S1_sb [24]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__16
       (.I0(\S4_reg_n_0_[25] ),
        .I1(\S3_reg_n_0_[25] ),
        .I2(\S2_reg_n_0_[25] ),
        .I3(\S1_reg_n_0_[25] ),
        .I4(\S0_reg_n_0_[25] ),
        .O(\perm_u/S1_sb [25]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__17
       (.I0(\S4_reg_n_0_[26] ),
        .I1(\S3_reg_n_0_[26] ),
        .I2(\S2_reg_n_0_[26] ),
        .I3(\S1_reg_n_0_[26] ),
        .I4(\S0_reg_n_0_[26] ),
        .O(\perm_u/S1_sb [26]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__18
       (.I0(\S4_reg_n_0_[27] ),
        .I1(\S3_reg_n_0_[27] ),
        .I2(\S2_reg_n_0_[27] ),
        .I3(\S1_reg_n_0_[27] ),
        .I4(\S0_reg_n_0_[27] ),
        .O(\perm_u/S1_sb [27]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__19
       (.I0(\S4_reg_n_0_[28] ),
        .I1(\S3_reg_n_0_[28] ),
        .I2(\S2_reg_n_0_[28] ),
        .I3(\S1_reg_n_0_[28] ),
        .I4(\S0_reg_n_0_[28] ),
        .O(\perm_u/S1_sb [28]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__2
       (.I0(\S4_reg_n_0_[11] ),
        .I1(\S3_reg_n_0_[11] ),
        .I2(\S2_reg_n_0_[11] ),
        .I3(\S1_reg_n_0_[11] ),
        .I4(\S0_reg_n_0_[11] ),
        .O(\perm_u/S1_sb [11]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__20
       (.I0(\S4_reg_n_0_[29] ),
        .I1(\S3_reg_n_0_[29] ),
        .I2(\S2_reg_n_0_[29] ),
        .I3(\S1_reg_n_0_[29] ),
        .I4(\S0_reg_n_0_[29] ),
        .O(\perm_u/S1_sb [29]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__21
       (.I0(\S4_reg_n_0_[30] ),
        .I1(\S3_reg_n_0_[30] ),
        .I2(\S2_reg_n_0_[30] ),
        .I3(\S1_reg_n_0_[30] ),
        .I4(\S0_reg_n_0_[30] ),
        .O(\perm_u/S1_sb [30]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__22
       (.I0(\S4_reg_n_0_[31] ),
        .I1(\S3_reg_n_0_[31] ),
        .I2(\S2_reg_n_0_[31] ),
        .I3(\S1_reg_n_0_[31] ),
        .I4(\S0_reg_n_0_[31] ),
        .O(\perm_u/S1_sb [31]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__23
       (.I0(\S4_reg_n_0_[32] ),
        .I1(\S3_reg_n_0_[32] ),
        .I2(\S2_reg_n_0_[32] ),
        .I3(\S1_reg_n_0_[32] ),
        .I4(\S0_reg_n_0_[32] ),
        .O(\perm_u/S1_sb [32]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__24
       (.I0(\S4_reg_n_0_[33] ),
        .I1(\S3_reg_n_0_[33] ),
        .I2(\S2_reg_n_0_[33] ),
        .I3(\S1_reg_n_0_[33] ),
        .I4(\S0_reg_n_0_[33] ),
        .O(\perm_u/S1_sb [33]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__25
       (.I0(\S4_reg_n_0_[34] ),
        .I1(\S3_reg_n_0_[34] ),
        .I2(\S2_reg_n_0_[34] ),
        .I3(\S1_reg_n_0_[34] ),
        .I4(\S0_reg_n_0_[34] ),
        .O(\perm_u/S1_sb [34]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__26
       (.I0(\S4_reg_n_0_[35] ),
        .I1(\S3_reg_n_0_[35] ),
        .I2(\S2_reg_n_0_[35] ),
        .I3(\S1_reg_n_0_[35] ),
        .I4(\S0_reg_n_0_[35] ),
        .O(\perm_u/S1_sb [35]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__27
       (.I0(\S4_reg_n_0_[36] ),
        .I1(\S3_reg_n_0_[36] ),
        .I2(\S2_reg_n_0_[36] ),
        .I3(\S1_reg_n_0_[36] ),
        .I4(\S0_reg_n_0_[36] ),
        .O(\perm_u/S1_sb [36]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__28
       (.I0(\S4_reg_n_0_[37] ),
        .I1(\S3_reg_n_0_[37] ),
        .I2(\S2_reg_n_0_[37] ),
        .I3(\S1_reg_n_0_[37] ),
        .I4(\S0_reg_n_0_[37] ),
        .O(\perm_u/S1_sb [37]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__29
       (.I0(\S4_reg_n_0_[38] ),
        .I1(\S3_reg_n_0_[38] ),
        .I2(\S2_reg_n_0_[38] ),
        .I3(\S1_reg_n_0_[38] ),
        .I4(\S0_reg_n_0_[38] ),
        .O(\perm_u/S1_sb [38]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__3
       (.I0(\S4_reg_n_0_[12] ),
        .I1(\S3_reg_n_0_[12] ),
        .I2(\S2_reg_n_0_[12] ),
        .I3(\S1_reg_n_0_[12] ),
        .I4(\S0_reg_n_0_[12] ),
        .O(\perm_u/S1_sb [12]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__30
       (.I0(\S4_reg_n_0_[39] ),
        .I1(\S3_reg_n_0_[39] ),
        .I2(\S2_reg_n_0_[39] ),
        .I3(\S1_reg_n_0_[39] ),
        .I4(\S0_reg_n_0_[39] ),
        .O(\perm_u/S1_sb [39]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__31
       (.I0(\S4_reg_n_0_[40] ),
        .I1(\S3_reg_n_0_[40] ),
        .I2(\S2_reg_n_0_[40] ),
        .I3(\S1_reg_n_0_[40] ),
        .I4(\S0_reg_n_0_[40] ),
        .O(\perm_u/S1_sb [40]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__32
       (.I0(\S4_reg_n_0_[41] ),
        .I1(\S3_reg_n_0_[41] ),
        .I2(\S2_reg_n_0_[41] ),
        .I3(\S1_reg_n_0_[41] ),
        .I4(\S0_reg_n_0_[41] ),
        .O(\perm_u/S1_sb [41]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__33
       (.I0(\S4_reg_n_0_[42] ),
        .I1(\S3_reg_n_0_[42] ),
        .I2(\S2_reg_n_0_[42] ),
        .I3(\S1_reg_n_0_[42] ),
        .I4(\S0_reg_n_0_[42] ),
        .O(\perm_u/S1_sb [42]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__34
       (.I0(\S4_reg_n_0_[43] ),
        .I1(\S3_reg_n_0_[43] ),
        .I2(\S2_reg_n_0_[43] ),
        .I3(\S1_reg_n_0_[43] ),
        .I4(\S0_reg_n_0_[43] ),
        .O(\perm_u/S1_sb [43]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__35
       (.I0(\S4_reg_n_0_[44] ),
        .I1(\S3_reg_n_0_[44] ),
        .I2(\S2_reg_n_0_[44] ),
        .I3(\S1_reg_n_0_[44] ),
        .I4(\S0_reg_n_0_[44] ),
        .O(\perm_u/S1_sb [44]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__36
       (.I0(\S4_reg_n_0_[45] ),
        .I1(\S3_reg_n_0_[45] ),
        .I2(\S2_reg_n_0_[45] ),
        .I3(\S1_reg_n_0_[45] ),
        .I4(\S0_reg_n_0_[45] ),
        .O(\perm_u/S1_sb [45]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__37
       (.I0(\S4_reg_n_0_[46] ),
        .I1(\S3_reg_n_0_[46] ),
        .I2(\S2_reg_n_0_[46] ),
        .I3(\S1_reg_n_0_[46] ),
        .I4(\S0_reg_n_0_[46] ),
        .O(\perm_u/S1_sb [46]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__38
       (.I0(\S4_reg_n_0_[47] ),
        .I1(\S3_reg_n_0_[47] ),
        .I2(\S2_reg_n_0_[47] ),
        .I3(\S1_reg_n_0_[47] ),
        .I4(\S0_reg_n_0_[47] ),
        .O(\perm_u/S1_sb [47]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__39
       (.I0(\S4_reg_n_0_[48] ),
        .I1(\S3_reg_n_0_[48] ),
        .I2(\S2_reg_n_0_[48] ),
        .I3(\S1_reg_n_0_[48] ),
        .I4(\S0_reg_n_0_[48] ),
        .O(\perm_u/S1_sb [48]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__4
       (.I0(\S4_reg_n_0_[13] ),
        .I1(\S3_reg_n_0_[13] ),
        .I2(\S2_reg_n_0_[13] ),
        .I3(\S1_reg_n_0_[13] ),
        .I4(\S0_reg_n_0_[13] ),
        .O(\perm_u/S1_sb [13]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__40
       (.I0(\S4_reg_n_0_[49] ),
        .I1(\S3_reg_n_0_[49] ),
        .I2(\S2_reg_n_0_[49] ),
        .I3(\S1_reg_n_0_[49] ),
        .I4(\S0_reg_n_0_[49] ),
        .O(\perm_u/S1_sb [49]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__41
       (.I0(\S4_reg_n_0_[50] ),
        .I1(\S3_reg_n_0_[50] ),
        .I2(\S2_reg_n_0_[50] ),
        .I3(\S1_reg_n_0_[50] ),
        .I4(\S0_reg_n_0_[50] ),
        .O(\perm_u/S1_sb [50]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__42
       (.I0(\S4_reg_n_0_[51] ),
        .I1(\S3_reg_n_0_[51] ),
        .I2(\S2_reg_n_0_[51] ),
        .I3(\S1_reg_n_0_[51] ),
        .I4(\S0_reg_n_0_[51] ),
        .O(\perm_u/S1_sb [51]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__43
       (.I0(\S4_reg_n_0_[52] ),
        .I1(\S3_reg_n_0_[52] ),
        .I2(\S2_reg_n_0_[52] ),
        .I3(\S1_reg_n_0_[52] ),
        .I4(\S0_reg_n_0_[52] ),
        .O(\perm_u/S1_sb [52]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__44
       (.I0(\S4_reg_n_0_[53] ),
        .I1(\S3_reg_n_0_[53] ),
        .I2(\S2_reg_n_0_[53] ),
        .I3(\S1_reg_n_0_[53] ),
        .I4(\S0_reg_n_0_[53] ),
        .O(\perm_u/S1_sb [53]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__45
       (.I0(\S4_reg_n_0_[54] ),
        .I1(\S3_reg_n_0_[54] ),
        .I2(\S2_reg_n_0_[54] ),
        .I3(\S1_reg_n_0_[54] ),
        .I4(\S0_reg_n_0_[54] ),
        .O(\perm_u/S1_sb [54]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__46
       (.I0(\S4_reg_n_0_[55] ),
        .I1(\S3_reg_n_0_[55] ),
        .I2(\S2_reg_n_0_[55] ),
        .I3(\S1_reg_n_0_[55] ),
        .I4(\S0_reg_n_0_[55] ),
        .O(\perm_u/S1_sb [55]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__47
       (.I0(\S4_reg_n_0_[56] ),
        .I1(\S3_reg_n_0_[56] ),
        .I2(\S2_reg_n_0_[56] ),
        .I3(\S1_reg_n_0_[56] ),
        .I4(\S0_reg_n_0_[56] ),
        .O(\perm_u/S1_sb [56]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__48
       (.I0(\S4_reg_n_0_[57] ),
        .I1(\S3_reg_n_0_[57] ),
        .I2(\S2_reg_n_0_[57] ),
        .I3(\S1_reg_n_0_[57] ),
        .I4(\S0_reg_n_0_[57] ),
        .O(\perm_u/S1_sb [57]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__49
       (.I0(\S4_reg_n_0_[58] ),
        .I1(\S3_reg_n_0_[58] ),
        .I2(\S2_reg_n_0_[58] ),
        .I3(\S1_reg_n_0_[58] ),
        .I4(\S0_reg_n_0_[58] ),
        .O(\perm_u/S1_sb [58]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__5
       (.I0(\S4_reg_n_0_[14] ),
        .I1(\S3_reg_n_0_[14] ),
        .I2(\S2_reg_n_0_[14] ),
        .I3(\S1_reg_n_0_[14] ),
        .I4(\S0_reg_n_0_[14] ),
        .O(\perm_u/S1_sb [14]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__50
       (.I0(\S4_reg_n_0_[59] ),
        .I1(\S3_reg_n_0_[59] ),
        .I2(\S2_reg_n_0_[59] ),
        .I3(\S1_reg_n_0_[59] ),
        .I4(\S0_reg_n_0_[59] ),
        .O(\perm_u/S1_sb [59]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__51
       (.I0(\S4_reg_n_0_[60] ),
        .I1(\S3_reg_n_0_[60] ),
        .I2(\S2_reg_n_0_[60] ),
        .I3(\S1_reg_n_0_[60] ),
        .I4(\S0_reg_n_0_[60] ),
        .O(\perm_u/S1_sb [60]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__52
       (.I0(\S4_reg_n_0_[61] ),
        .I1(\S3_reg_n_0_[61] ),
        .I2(\S2_reg_n_0_[61] ),
        .I3(\S1_reg_n_0_[61] ),
        .I4(\S0_reg_n_0_[61] ),
        .O(\perm_u/S1_sb [61]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__53
       (.I0(\S4_reg_n_0_[62] ),
        .I1(\S3_reg_n_0_[62] ),
        .I2(\S2_reg_n_0_[62] ),
        .I3(\S1_reg_n_0_[62] ),
        .I4(\S0_reg_n_0_[62] ),
        .O(\perm_u/S1_sb [62]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__54
       (.I0(\S4_reg_n_0_[63] ),
        .I1(\S3_reg_n_0_[63] ),
        .I2(\S2_reg_n_0_[63] ),
        .I3(\S1_reg_n_0_[63] ),
        .I4(\S0_reg_n_0_[63] ),
        .O(\perm_u/S1_sb [63]));
  LUT6 #(
    .INIT(64'h96F0F069690F0F96)) 
    g0_b3__55
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[3] ),
        .I2(\S4_reg_n_0_[3] ),
        .I3(\S3_reg_n_0_[3] ),
        .I4(\S1_reg_n_0_[3] ),
        .I5(\S0_reg_n_0_[3] ),
        .O(\perm_u/S1_sb [3]));
  LUT6 #(
    .INIT(64'h96F0F069690F0F96)) 
    g0_b3__56
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[2] ),
        .I2(\S4_reg_n_0_[2] ),
        .I3(\S3_reg_n_0_[2] ),
        .I4(\S1_reg_n_0_[2] ),
        .I5(\S0_reg_n_0_[2] ),
        .O(\perm_u/S1_sb [2]));
  LUT6 #(
    .INIT(64'h96F0F069690F0F96)) 
    g0_b3__57
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[1] ),
        .I2(\S4_reg_n_0_[1] ),
        .I3(\S3_reg_n_0_[1] ),
        .I4(\S1_reg_n_0_[1] ),
        .I5(\S0_reg_n_0_[1] ),
        .O(\perm_u/S1_sb [1]));
  LUT6 #(
    .INIT(64'h96F0F069690F0F96)) 
    g0_b3__58
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[0] ),
        .I2(\S4_reg_n_0_[0] ),
        .I3(\S3_reg_n_0_[0] ),
        .I4(\S1_reg_n_0_[0] ),
        .I5(\S0_reg_n_0_[0] ),
        .O(\perm_u/S1_sb [0]));
  LUT6 #(
    .INIT(64'h69F0F096960F0F69)) 
    g0_b3__59
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[7] ),
        .I2(\S4_reg_n_0_[7] ),
        .I3(\S3_reg_n_0_[7] ),
        .I4(\S1_reg_n_0_[7] ),
        .I5(\S0_reg_n_0_[7] ),
        .O(\perm_u/S1_sb [7]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__6
       (.I0(\S4_reg_n_0_[15] ),
        .I1(\S3_reg_n_0_[15] ),
        .I2(\S2_reg_n_0_[15] ),
        .I3(\S1_reg_n_0_[15] ),
        .I4(\S0_reg_n_0_[15] ),
        .O(\perm_u/S1_sb [15]));
  LUT6 #(
    .INIT(64'h69F0F096960F0F69)) 
    g0_b3__60
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[6] ),
        .I2(\S4_reg_n_0_[6] ),
        .I3(\S3_reg_n_0_[6] ),
        .I4(\S1_reg_n_0_[6] ),
        .I5(\S0_reg_n_0_[6] ),
        .O(\perm_u/S1_sb [6]));
  LUT6 #(
    .INIT(64'h69F0F096960F0F69)) 
    g0_b3__61
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[5] ),
        .I2(\S4_reg_n_0_[5] ),
        .I3(\S3_reg_n_0_[5] ),
        .I4(\S1_reg_n_0_[5] ),
        .I5(\S0_reg_n_0_[5] ),
        .O(\perm_u/S1_sb [5]));
  LUT6 #(
    .INIT(64'h69F0F096960F0F69)) 
    g0_b3__62
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[4] ),
        .I2(\S4_reg_n_0_[4] ),
        .I3(\S3_reg_n_0_[4] ),
        .I4(\S1_reg_n_0_[4] ),
        .I5(\S0_reg_n_0_[4] ),
        .O(\perm_u/S1_sb [4]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__7
       (.I0(\S4_reg_n_0_[16] ),
        .I1(\S3_reg_n_0_[16] ),
        .I2(\S2_reg_n_0_[16] ),
        .I3(\S1_reg_n_0_[16] ),
        .I4(\S0_reg_n_0_[16] ),
        .O(\perm_u/S1_sb [16]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__8
       (.I0(\S4_reg_n_0_[17] ),
        .I1(\S3_reg_n_0_[17] ),
        .I2(\S2_reg_n_0_[17] ),
        .I3(\S1_reg_n_0_[17] ),
        .I4(\S0_reg_n_0_[17] ),
        .O(\perm_u/S1_sb [17]));
  LUT5 #(
    .INIT(32'h6AA99556)) 
    g0_b3__9
       (.I0(\S4_reg_n_0_[18] ),
        .I1(\S3_reg_n_0_[18] ),
        .I2(\S2_reg_n_0_[18] ),
        .I3(\S1_reg_n_0_[18] ),
        .I4(\S0_reg_n_0_[18] ),
        .O(\perm_u/S1_sb [18]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4
       (.I0(\S4_reg_n_0_[8] ),
        .I1(\S3_reg_n_0_[8] ),
        .I2(\S2_reg_n_0_[8] ),
        .I3(\S1_reg_n_0_[8] ),
        .I4(\S0_reg_n_0_[8] ),
        .O(\perm_u/S0_sb [8]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__0
       (.I0(\S4_reg_n_0_[9] ),
        .I1(\S3_reg_n_0_[9] ),
        .I2(\S2_reg_n_0_[9] ),
        .I3(\S1_reg_n_0_[9] ),
        .I4(\S0_reg_n_0_[9] ),
        .O(\perm_u/S0_sb [9]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__1
       (.I0(\S4_reg_n_0_[10] ),
        .I1(\S3_reg_n_0_[10] ),
        .I2(\S2_reg_n_0_[10] ),
        .I3(\S1_reg_n_0_[10] ),
        .I4(\S0_reg_n_0_[10] ),
        .O(\perm_u/S0_sb [10]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__10
       (.I0(\S4_reg_n_0_[19] ),
        .I1(\S3_reg_n_0_[19] ),
        .I2(\S2_reg_n_0_[19] ),
        .I3(\S1_reg_n_0_[19] ),
        .I4(\S0_reg_n_0_[19] ),
        .O(\perm_u/S0_sb [19]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__11
       (.I0(\S4_reg_n_0_[20] ),
        .I1(\S3_reg_n_0_[20] ),
        .I2(\S2_reg_n_0_[20] ),
        .I3(\S1_reg_n_0_[20] ),
        .I4(\S0_reg_n_0_[20] ),
        .O(\perm_u/S0_sb [20]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__12
       (.I0(\S4_reg_n_0_[21] ),
        .I1(\S3_reg_n_0_[21] ),
        .I2(\S2_reg_n_0_[21] ),
        .I3(\S1_reg_n_0_[21] ),
        .I4(\S0_reg_n_0_[21] ),
        .O(\perm_u/S0_sb [21]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__13
       (.I0(\S4_reg_n_0_[22] ),
        .I1(\S3_reg_n_0_[22] ),
        .I2(\S2_reg_n_0_[22] ),
        .I3(\S1_reg_n_0_[22] ),
        .I4(\S0_reg_n_0_[22] ),
        .O(\perm_u/S0_sb [22]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__14
       (.I0(\S4_reg_n_0_[23] ),
        .I1(\S3_reg_n_0_[23] ),
        .I2(\S2_reg_n_0_[23] ),
        .I3(\S1_reg_n_0_[23] ),
        .I4(\S0_reg_n_0_[23] ),
        .O(\perm_u/S0_sb [23]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__15
       (.I0(\S4_reg_n_0_[24] ),
        .I1(\S3_reg_n_0_[24] ),
        .I2(\S2_reg_n_0_[24] ),
        .I3(\S1_reg_n_0_[24] ),
        .I4(\S0_reg_n_0_[24] ),
        .O(\perm_u/S0_sb [24]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__16
       (.I0(\S4_reg_n_0_[25] ),
        .I1(\S3_reg_n_0_[25] ),
        .I2(\S2_reg_n_0_[25] ),
        .I3(\S1_reg_n_0_[25] ),
        .I4(\S0_reg_n_0_[25] ),
        .O(\perm_u/S0_sb [25]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__17
       (.I0(\S4_reg_n_0_[26] ),
        .I1(\S3_reg_n_0_[26] ),
        .I2(\S2_reg_n_0_[26] ),
        .I3(\S1_reg_n_0_[26] ),
        .I4(\S0_reg_n_0_[26] ),
        .O(\perm_u/S0_sb [26]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__18
       (.I0(\S4_reg_n_0_[27] ),
        .I1(\S3_reg_n_0_[27] ),
        .I2(\S2_reg_n_0_[27] ),
        .I3(\S1_reg_n_0_[27] ),
        .I4(\S0_reg_n_0_[27] ),
        .O(\perm_u/S0_sb [27]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__19
       (.I0(\S4_reg_n_0_[28] ),
        .I1(\S3_reg_n_0_[28] ),
        .I2(\S2_reg_n_0_[28] ),
        .I3(\S1_reg_n_0_[28] ),
        .I4(\S0_reg_n_0_[28] ),
        .O(\perm_u/S0_sb [28]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__2
       (.I0(\S4_reg_n_0_[11] ),
        .I1(\S3_reg_n_0_[11] ),
        .I2(\S2_reg_n_0_[11] ),
        .I3(\S1_reg_n_0_[11] ),
        .I4(\S0_reg_n_0_[11] ),
        .O(\perm_u/S0_sb [11]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__20
       (.I0(\S4_reg_n_0_[29] ),
        .I1(\S3_reg_n_0_[29] ),
        .I2(\S2_reg_n_0_[29] ),
        .I3(\S1_reg_n_0_[29] ),
        .I4(\S0_reg_n_0_[29] ),
        .O(\perm_u/S0_sb [29]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__21
       (.I0(\S4_reg_n_0_[30] ),
        .I1(\S3_reg_n_0_[30] ),
        .I2(\S2_reg_n_0_[30] ),
        .I3(\S1_reg_n_0_[30] ),
        .I4(\S0_reg_n_0_[30] ),
        .O(\perm_u/S0_sb [30]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__22
       (.I0(\S4_reg_n_0_[31] ),
        .I1(\S3_reg_n_0_[31] ),
        .I2(\S2_reg_n_0_[31] ),
        .I3(\S1_reg_n_0_[31] ),
        .I4(\S0_reg_n_0_[31] ),
        .O(\perm_u/S0_sb [31]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__23
       (.I0(\S4_reg_n_0_[32] ),
        .I1(\S3_reg_n_0_[32] ),
        .I2(\S2_reg_n_0_[32] ),
        .I3(\S1_reg_n_0_[32] ),
        .I4(\S0_reg_n_0_[32] ),
        .O(\perm_u/S0_sb [32]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__24
       (.I0(\S4_reg_n_0_[33] ),
        .I1(\S3_reg_n_0_[33] ),
        .I2(\S2_reg_n_0_[33] ),
        .I3(\S1_reg_n_0_[33] ),
        .I4(\S0_reg_n_0_[33] ),
        .O(\perm_u/S0_sb [33]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__25
       (.I0(\S4_reg_n_0_[34] ),
        .I1(\S3_reg_n_0_[34] ),
        .I2(\S2_reg_n_0_[34] ),
        .I3(\S1_reg_n_0_[34] ),
        .I4(\S0_reg_n_0_[34] ),
        .O(\perm_u/S0_sb [34]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__26
       (.I0(\S4_reg_n_0_[35] ),
        .I1(\S3_reg_n_0_[35] ),
        .I2(\S2_reg_n_0_[35] ),
        .I3(\S1_reg_n_0_[35] ),
        .I4(\S0_reg_n_0_[35] ),
        .O(\perm_u/S0_sb [35]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__27
       (.I0(\S4_reg_n_0_[36] ),
        .I1(\S3_reg_n_0_[36] ),
        .I2(\S2_reg_n_0_[36] ),
        .I3(\S1_reg_n_0_[36] ),
        .I4(\S0_reg_n_0_[36] ),
        .O(\perm_u/S0_sb [36]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__28
       (.I0(\S4_reg_n_0_[37] ),
        .I1(\S3_reg_n_0_[37] ),
        .I2(\S2_reg_n_0_[37] ),
        .I3(\S1_reg_n_0_[37] ),
        .I4(\S0_reg_n_0_[37] ),
        .O(\perm_u/S0_sb [37]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__29
       (.I0(\S4_reg_n_0_[38] ),
        .I1(\S3_reg_n_0_[38] ),
        .I2(\S2_reg_n_0_[38] ),
        .I3(\S1_reg_n_0_[38] ),
        .I4(\S0_reg_n_0_[38] ),
        .O(\perm_u/S0_sb [38]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__3
       (.I0(\S4_reg_n_0_[12] ),
        .I1(\S3_reg_n_0_[12] ),
        .I2(\S2_reg_n_0_[12] ),
        .I3(\S1_reg_n_0_[12] ),
        .I4(\S0_reg_n_0_[12] ),
        .O(\perm_u/S0_sb [12]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__30
       (.I0(\S4_reg_n_0_[39] ),
        .I1(\S3_reg_n_0_[39] ),
        .I2(\S2_reg_n_0_[39] ),
        .I3(\S1_reg_n_0_[39] ),
        .I4(\S0_reg_n_0_[39] ),
        .O(\perm_u/S0_sb [39]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__31
       (.I0(\S4_reg_n_0_[40] ),
        .I1(\S3_reg_n_0_[40] ),
        .I2(\S2_reg_n_0_[40] ),
        .I3(\S1_reg_n_0_[40] ),
        .I4(\S0_reg_n_0_[40] ),
        .O(\perm_u/S0_sb [40]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__32
       (.I0(\S4_reg_n_0_[41] ),
        .I1(\S3_reg_n_0_[41] ),
        .I2(\S2_reg_n_0_[41] ),
        .I3(\S1_reg_n_0_[41] ),
        .I4(\S0_reg_n_0_[41] ),
        .O(\perm_u/S0_sb [41]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__33
       (.I0(\S4_reg_n_0_[42] ),
        .I1(\S3_reg_n_0_[42] ),
        .I2(\S2_reg_n_0_[42] ),
        .I3(\S1_reg_n_0_[42] ),
        .I4(\S0_reg_n_0_[42] ),
        .O(\perm_u/S0_sb [42]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__34
       (.I0(\S4_reg_n_0_[43] ),
        .I1(\S3_reg_n_0_[43] ),
        .I2(\S2_reg_n_0_[43] ),
        .I3(\S1_reg_n_0_[43] ),
        .I4(\S0_reg_n_0_[43] ),
        .O(\perm_u/S0_sb [43]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__35
       (.I0(\S4_reg_n_0_[44] ),
        .I1(\S3_reg_n_0_[44] ),
        .I2(\S2_reg_n_0_[44] ),
        .I3(\S1_reg_n_0_[44] ),
        .I4(\S0_reg_n_0_[44] ),
        .O(\perm_u/S0_sb [44]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__36
       (.I0(\S4_reg_n_0_[45] ),
        .I1(\S3_reg_n_0_[45] ),
        .I2(\S2_reg_n_0_[45] ),
        .I3(\S1_reg_n_0_[45] ),
        .I4(\S0_reg_n_0_[45] ),
        .O(\perm_u/S0_sb [45]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__37
       (.I0(\S4_reg_n_0_[46] ),
        .I1(\S3_reg_n_0_[46] ),
        .I2(\S2_reg_n_0_[46] ),
        .I3(\S1_reg_n_0_[46] ),
        .I4(\S0_reg_n_0_[46] ),
        .O(\perm_u/S0_sb [46]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__38
       (.I0(\S4_reg_n_0_[47] ),
        .I1(\S3_reg_n_0_[47] ),
        .I2(\S2_reg_n_0_[47] ),
        .I3(\S1_reg_n_0_[47] ),
        .I4(\S0_reg_n_0_[47] ),
        .O(\perm_u/S0_sb [47]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__39
       (.I0(\S4_reg_n_0_[48] ),
        .I1(\S3_reg_n_0_[48] ),
        .I2(\S2_reg_n_0_[48] ),
        .I3(\S1_reg_n_0_[48] ),
        .I4(\S0_reg_n_0_[48] ),
        .O(\perm_u/S0_sb [48]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__4
       (.I0(\S4_reg_n_0_[13] ),
        .I1(\S3_reg_n_0_[13] ),
        .I2(\S2_reg_n_0_[13] ),
        .I3(\S1_reg_n_0_[13] ),
        .I4(\S0_reg_n_0_[13] ),
        .O(\perm_u/S0_sb [13]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__40
       (.I0(\S4_reg_n_0_[49] ),
        .I1(\S3_reg_n_0_[49] ),
        .I2(\S2_reg_n_0_[49] ),
        .I3(\S1_reg_n_0_[49] ),
        .I4(\S0_reg_n_0_[49] ),
        .O(\perm_u/S0_sb [49]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__41
       (.I0(\S4_reg_n_0_[50] ),
        .I1(\S3_reg_n_0_[50] ),
        .I2(\S2_reg_n_0_[50] ),
        .I3(\S1_reg_n_0_[50] ),
        .I4(\S0_reg_n_0_[50] ),
        .O(\perm_u/S0_sb [50]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__42
       (.I0(\S4_reg_n_0_[51] ),
        .I1(\S3_reg_n_0_[51] ),
        .I2(\S2_reg_n_0_[51] ),
        .I3(\S1_reg_n_0_[51] ),
        .I4(\S0_reg_n_0_[51] ),
        .O(\perm_u/S0_sb [51]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__43
       (.I0(\S4_reg_n_0_[52] ),
        .I1(\S3_reg_n_0_[52] ),
        .I2(\S2_reg_n_0_[52] ),
        .I3(\S1_reg_n_0_[52] ),
        .I4(\S0_reg_n_0_[52] ),
        .O(\perm_u/S0_sb [52]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__44
       (.I0(\S4_reg_n_0_[53] ),
        .I1(\S3_reg_n_0_[53] ),
        .I2(\S2_reg_n_0_[53] ),
        .I3(\S1_reg_n_0_[53] ),
        .I4(\S0_reg_n_0_[53] ),
        .O(\perm_u/S0_sb [53]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__45
       (.I0(\S4_reg_n_0_[54] ),
        .I1(\S3_reg_n_0_[54] ),
        .I2(\S2_reg_n_0_[54] ),
        .I3(\S1_reg_n_0_[54] ),
        .I4(\S0_reg_n_0_[54] ),
        .O(\perm_u/S0_sb [54]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__46
       (.I0(\S4_reg_n_0_[55] ),
        .I1(\S3_reg_n_0_[55] ),
        .I2(\S2_reg_n_0_[55] ),
        .I3(\S1_reg_n_0_[55] ),
        .I4(\S0_reg_n_0_[55] ),
        .O(\perm_u/S0_sb [55]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__47
       (.I0(\S4_reg_n_0_[56] ),
        .I1(\S3_reg_n_0_[56] ),
        .I2(\S2_reg_n_0_[56] ),
        .I3(\S1_reg_n_0_[56] ),
        .I4(\S0_reg_n_0_[56] ),
        .O(\perm_u/S0_sb [56]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__48
       (.I0(\S4_reg_n_0_[57] ),
        .I1(\S3_reg_n_0_[57] ),
        .I2(\S2_reg_n_0_[57] ),
        .I3(\S1_reg_n_0_[57] ),
        .I4(\S0_reg_n_0_[57] ),
        .O(\perm_u/S0_sb [57]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__49
       (.I0(\S4_reg_n_0_[58] ),
        .I1(\S3_reg_n_0_[58] ),
        .I2(\S2_reg_n_0_[58] ),
        .I3(\S1_reg_n_0_[58] ),
        .I4(\S0_reg_n_0_[58] ),
        .O(\perm_u/S0_sb [58]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__5
       (.I0(\S4_reg_n_0_[14] ),
        .I1(\S3_reg_n_0_[14] ),
        .I2(\S2_reg_n_0_[14] ),
        .I3(\S1_reg_n_0_[14] ),
        .I4(\S0_reg_n_0_[14] ),
        .O(\perm_u/S0_sb [14]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__50
       (.I0(\S4_reg_n_0_[59] ),
        .I1(\S3_reg_n_0_[59] ),
        .I2(\S2_reg_n_0_[59] ),
        .I3(\S1_reg_n_0_[59] ),
        .I4(\S0_reg_n_0_[59] ),
        .O(\perm_u/S0_sb [59]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__51
       (.I0(\S4_reg_n_0_[60] ),
        .I1(\S3_reg_n_0_[60] ),
        .I2(\S2_reg_n_0_[60] ),
        .I3(\S1_reg_n_0_[60] ),
        .I4(\S0_reg_n_0_[60] ),
        .O(\perm_u/S0_sb [60]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__52
       (.I0(\S4_reg_n_0_[61] ),
        .I1(\S3_reg_n_0_[61] ),
        .I2(\S2_reg_n_0_[61] ),
        .I3(\S1_reg_n_0_[61] ),
        .I4(\S0_reg_n_0_[61] ),
        .O(\perm_u/S0_sb [61]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__53
       (.I0(\S4_reg_n_0_[62] ),
        .I1(\S3_reg_n_0_[62] ),
        .I2(\S2_reg_n_0_[62] ),
        .I3(\S1_reg_n_0_[62] ),
        .I4(\S0_reg_n_0_[62] ),
        .O(\perm_u/S0_sb [62]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__54
       (.I0(\S4_reg_n_0_[63] ),
        .I1(\S3_reg_n_0_[63] ),
        .I2(\S2_reg_n_0_[63] ),
        .I3(\S1_reg_n_0_[63] ),
        .I4(\S0_reg_n_0_[63] ),
        .O(\perm_u/S0_sb [63]));
  LUT6 #(
    .INIT(64'hF00F6699F00F9966)) 
    g0_b4__55
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[3] ),
        .I2(\S4_reg_n_0_[3] ),
        .I3(\S3_reg_n_0_[3] ),
        .I4(\S1_reg_n_0_[3] ),
        .I5(\S0_reg_n_0_[3] ),
        .O(\perm_u/S0_sb [3]));
  LUT6 #(
    .INIT(64'hF00F6699F00F9966)) 
    g0_b4__56
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[2] ),
        .I2(\S4_reg_n_0_[2] ),
        .I3(\S3_reg_n_0_[2] ),
        .I4(\S1_reg_n_0_[2] ),
        .I5(\S0_reg_n_0_[2] ),
        .O(\perm_u/S0_sb [2]));
  LUT6 #(
    .INIT(64'hF00F6699F00F9966)) 
    g0_b4__57
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[1] ),
        .I2(\S4_reg_n_0_[1] ),
        .I3(\S3_reg_n_0_[1] ),
        .I4(\S1_reg_n_0_[1] ),
        .I5(\S0_reg_n_0_[1] ),
        .O(\perm_u/S0_sb [1]));
  LUT6 #(
    .INIT(64'hF00F6699F00F9966)) 
    g0_b4__58
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[0] ),
        .I2(\S4_reg_n_0_[0] ),
        .I3(\S3_reg_n_0_[0] ),
        .I4(\S1_reg_n_0_[0] ),
        .I5(\S0_reg_n_0_[0] ),
        .O(\perm_u/S0_sb [0]));
  LUT6 #(
    .INIT(64'hF00F9966F00F6699)) 
    g0_b4__59
       (.I0(round_cnt_reg[3]),
        .I1(\S2_reg_n_0_[7] ),
        .I2(\S4_reg_n_0_[7] ),
        .I3(\S3_reg_n_0_[7] ),
        .I4(\S1_reg_n_0_[7] ),
        .I5(\S0_reg_n_0_[7] ),
        .O(\perm_u/S0_sb [7]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__6
       (.I0(\S4_reg_n_0_[15] ),
        .I1(\S3_reg_n_0_[15] ),
        .I2(\S2_reg_n_0_[15] ),
        .I3(\S1_reg_n_0_[15] ),
        .I4(\S0_reg_n_0_[15] ),
        .O(\perm_u/S0_sb [15]));
  LUT6 #(
    .INIT(64'hF00F9966F00F6699)) 
    g0_b4__60
       (.I0(round_cnt_reg[2]),
        .I1(\S2_reg_n_0_[6] ),
        .I2(\S4_reg_n_0_[6] ),
        .I3(\S3_reg_n_0_[6] ),
        .I4(\S1_reg_n_0_[6] ),
        .I5(\S0_reg_n_0_[6] ),
        .O(\perm_u/S0_sb [6]));
  LUT6 #(
    .INIT(64'hF00F9966F00F6699)) 
    g0_b4__61
       (.I0(round_cnt_reg[1]),
        .I1(\S2_reg_n_0_[5] ),
        .I2(\S4_reg_n_0_[5] ),
        .I3(\S3_reg_n_0_[5] ),
        .I4(\S1_reg_n_0_[5] ),
        .I5(\S0_reg_n_0_[5] ),
        .O(\perm_u/S0_sb [5]));
  LUT6 #(
    .INIT(64'hF00F9966F00F6699)) 
    g0_b4__62
       (.I0(round_cnt_reg[0]),
        .I1(\S2_reg_n_0_[4] ),
        .I2(\S4_reg_n_0_[4] ),
        .I3(\S3_reg_n_0_[4] ),
        .I4(\S1_reg_n_0_[4] ),
        .I5(\S0_reg_n_0_[4] ),
        .O(\perm_u/S0_sb [4]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__7
       (.I0(\S4_reg_n_0_[16] ),
        .I1(\S3_reg_n_0_[16] ),
        .I2(\S2_reg_n_0_[16] ),
        .I3(\S1_reg_n_0_[16] ),
        .I4(\S0_reg_n_0_[16] ),
        .O(\perm_u/S0_sb [16]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__8
       (.I0(\S4_reg_n_0_[17] ),
        .I1(\S3_reg_n_0_[17] ),
        .I2(\S2_reg_n_0_[17] ),
        .I3(\S1_reg_n_0_[17] ),
        .I4(\S0_reg_n_0_[17] ),
        .O(\perm_u/S0_sb [17]));
  LUT5 #(
    .INIT(32'h99C3993C)) 
    g0_b4__9
       (.I0(\S4_reg_n_0_[18] ),
        .I1(\S3_reg_n_0_[18] ),
        .I2(\S2_reg_n_0_[18] ),
        .I3(\S1_reg_n_0_[18] ),
        .I4(\S0_reg_n_0_[18] ),
        .O(\perm_u/S0_sb [18]));
  LUT5 #(
    .INIT(32'h0000BF80)) 
    last_q_i_1
       (.I0(last_q_reg_n_0),
        .I1(last_q_i_2_n_0),
        .I2(last_q_i_3_n_0),
        .I3(last_q_i_4_n_0),
        .I4(rst),
        .O(last_q_i_1_n_0));
  LUT6 #(
    .INIT(64'hBBBBBBBFBFBBBBBF)) 
    last_q_i_2
       (.I0(st_reg_rep_n_0),
        .I1(data_valid),
        .I2(\phase_reg_n_0_[0] ),
        .I3(last_q_reg_n_0),
        .I4(\phase_reg[1]_rep__1_n_0 ),
        .I5(keep_u_0),
        .O(last_q_i_2_n_0));
  LUT5 #(
    .INIT(32'h7FF7FFFF)) 
    last_q_i_3
       (.I0(last_round),
        .I1(last_q_reg_n_0),
        .I2(\phase_reg_n_0_[1] ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(st_reg_rep_n_0),
        .O(last_q_i_3_n_0));
  LUT5 #(
    .INIT(32'h8BBB8B88)) 
    last_q_i_4
       (.I0(mode),
        .I1(st_reg_rep_n_0),
        .I2(data_len[4]),
        .I3(\phase_reg[1]_rep__1_n_0 ),
        .I4(\phase_reg_n_0_[0] ),
        .O(last_q_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    last_q_reg
       (.C(clk),
        .CE(1'b1),
        .D(last_q_i_1_n_0),
        .Q(last_q_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0000000022E266E2)) 
    \phase[0]_i_1 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\phase[0]_i_2_n_0 ),
        .I3(st_reg_rep__1_n_0),
        .I4(\phase[0]_i_3_n_0 ),
        .I5(rst),
        .O(\phase[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01000000FFFFFFFF)) 
    \phase[0]_i_2 
       (.I0(data_len[2]),
        .I1(data_len[0]),
        .I2(data_len[1]),
        .I3(\data_out[63]_INST_0_i_2_n_0 ),
        .I4(last_q_reg_n_0),
        .I5(\phase_reg[1]_rep_n_0 ),
        .O(\phase[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \phase[0]_i_3 
       (.I0(\phase_reg[1]_rep_n_0 ),
        .I1(last_q_reg_n_0),
        .O(\phase[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \phase[1]_i_1 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(rst),
        .O(\phase[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h88880800FFFFFFFF)) 
    \phase[1]_i_2 
       (.I0(st_reg_rep__1_n_0),
        .I1(last_round),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(\phase_reg_n_0_[0] ),
        .I4(last_q_reg_n_0),
        .I5(\phase[1]_i_4_n_0 ),
        .O(\phase[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h47008888)) 
    \phase[1]_i_3 
       (.I0(\phase_reg_n_0_[0] ),
        .I1(st_reg_n_0),
        .I2(keep_u_0),
        .I3(last_q_reg_n_0),
        .I4(\phase_reg[1]_rep_n_0 ),
        .O(\phase[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEBEFFFFFFFF)) 
    \phase[1]_i_4 
       (.I0(st_reg_rep__1_n_0),
        .I1(last_q_reg_n_0),
        .I2(\phase_reg[1]_rep_n_0 ),
        .I3(keep_u_0),
        .I4(\phase_reg_n_0_[0] ),
        .I5(data_valid),
        .O(\phase[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \phase[1]_rep_i_1 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(rst),
        .O(\phase[1]_rep_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \phase[1]_rep_i_1__0 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(rst),
        .O(\phase[1]_rep_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \phase[1]_rep_i_1__1 
       (.I0(\phase_reg_n_0_[1] ),
        .I1(\phase[1]_i_2_n_0 ),
        .I2(\phase[1]_i_3_n_0 ),
        .I3(rst),
        .O(\phase[1]_rep_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[0]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[0] ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_i_1_n_0 ),
        .Q(\phase_reg_n_0_[1] ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1_n_0 ),
        .Q(\phase_reg[1]_rep_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1]_rep__0 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__0_n_0 ),
        .Q(\phase_reg[1]_rep__0_n_0 ),
        .R(1'b0));
  (* ORIG_CELL_NAME = "phase_reg[1]" *) 
  FDRE #(
    .INIT(1'b0)) 
    \phase_reg[1]_rep__1 
       (.C(clk),
        .CE(1'b1),
        .D(\phase[1]_rep_i_1__1_n_0 ),
        .Q(\phase_reg[1]_rep__1_n_0 ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \round_cnt[0]_i_1 
       (.I0(st_reg_rep_n_0),
        .I1(round_cnt_reg[0]),
        .O(\round_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \round_cnt[1]_i_1 
       (.I0(round_cnt_reg[1]),
        .I1(round_cnt_reg[0]),
        .I2(st_reg_rep_n_0),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h9F9090909F909F90)) 
    \round_cnt[2]_i_1 
       (.I0(\round_cnt[2]_i_2_n_0 ),
        .I1(round_cnt_reg[2]),
        .I2(st_reg_rep_n_0),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(data_len[4]),
        .I5(\phase_reg_n_0_[0] ),
        .O(p_0_in[2]));
  LUT2 #(
    .INIT(4'h7)) 
    \round_cnt[2]_i_2 
       (.I0(round_cnt_reg[0]),
        .I1(round_cnt_reg[1]),
        .O(\round_cnt[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h55555555CCCC0C00)) 
    \round_cnt[3]_i_1 
       (.I0(last_round),
        .I1(data_valid),
        .I2(\S0[63]_i_3_n_0 ),
        .I3(\phase_reg[1]_rep_n_0 ),
        .I4(\phase_reg_n_0_[0] ),
        .I5(st_reg_rep_n_0),
        .O(\round_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \round_cnt[3]_i_2 
       (.I0(round_cnt_reg[3]),
        .I1(round_cnt_reg[2]),
        .I2(round_cnt_reg[1]),
        .I3(round_cnt_reg[0]),
        .I4(st_reg_rep_n_0),
        .O(p_0_in[3]));
  FDRE #(
    .INIT(1'b0)) 
    \round_cnt_reg[0] 
       (.C(clk),
        .CE(\round_cnt[3]_i_1_n_0 ),
        .D(\round_cnt[0]_i_1_n_0 ),
        .Q(round_cnt_reg[0]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \round_cnt_reg[1] 
       (.C(clk),
        .CE(\round_cnt[3]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(round_cnt_reg[1]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \round_cnt_reg[2] 
       (.C(clk),
        .CE(\round_cnt[3]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(round_cnt_reg[2]),
        .R(rst));
  FDRE #(
    .INIT(1'b0)) 
    \round_cnt_reg[3] 
       (.C(clk),
        .CE(\round_cnt[3]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(round_cnt_reg[3]),
        .R(rst));
  LUT6 #(
    .INIT(64'h000000004500EFAA)) 
    st_i_1
       (.I0(st_reg_n_0),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase[0]_i_2_n_0 ),
        .I3(data_valid),
        .I4(last_round),
        .I5(rst),
        .O(st_i_1_n_0));
  (* FSM_ENCODING = "sequential" *) 
  (* ORIG_CELL_NAME = "st_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    st_reg
       (.C(clk),
        .CE(1'b1),
        .D(st_i_1_n_0),
        .Q(st_reg_n_0),
        .R(1'b0));
  (* FSM_ENCODING = "sequential" *) 
  (* ORIG_CELL_NAME = "st_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    st_reg_rep
       (.C(clk),
        .CE(1'b1),
        .D(st_rep_i_1_n_0),
        .Q(st_reg_rep_n_0),
        .R(1'b0));
  (* FSM_ENCODING = "sequential" *) 
  (* ORIG_CELL_NAME = "st_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    st_reg_rep__0
       (.C(clk),
        .CE(1'b1),
        .D(st_rep_i_1__0_n_0),
        .Q(st_reg_rep__0_n_0),
        .R(1'b0));
  (* FSM_ENCODING = "sequential" *) 
  (* ORIG_CELL_NAME = "st_reg" *) 
  FDRE #(
    .INIT(1'b0)) 
    st_reg_rep__1
       (.C(clk),
        .CE(1'b1),
        .D(st_rep_i_1__1_n_0),
        .Q(st_reg_rep__1_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h000000004500EFAA)) 
    st_rep_i_1
       (.I0(st_reg_n_0),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase[0]_i_2_n_0 ),
        .I3(data_valid),
        .I4(last_round),
        .I5(rst),
        .O(st_rep_i_1_n_0));
  LUT6 #(
    .INIT(64'h000000004500EFAA)) 
    st_rep_i_1__0
       (.I0(st_reg_n_0),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase[0]_i_2_n_0 ),
        .I3(data_valid),
        .I4(last_round),
        .I5(rst),
        .O(st_rep_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h000000004500EFAA)) 
    st_rep_i_1__1
       (.I0(st_reg_n_0),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase[0]_i_2_n_0 ),
        .I3(data_valid),
        .I4(last_round),
        .I5(rst),
        .O(st_rep_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    tag_match_INST_0
       (.I0(tag_eq),
        .I1(\phase_reg_n_0_[0] ),
        .I2(\phase_reg_n_0_[1] ),
        .I3(last_q_reg_n_0),
        .I4(data_valid),
        .I5(st_reg_rep__1_n_0),
        .O(tag_match));
  CARRY4 tag_match_INST_0_i_1
       (.CI(tag_match_INST_0_i_2_n_0),
        .CO({NLW_tag_match_INST_0_i_1_CO_UNCONNECTED[3],tag_eq,NLW_tag_match_INST_0_i_1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,tag_match_INST_0_i_3_n_0,tag_match_INST_0_i_4_n_0,tag_match_INST_0_i_5_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_10
       (.I0(\S4_reg_n_0_[44] ),
        .I1(data_in[108]),
        .I2(data_in[110]),
        .I3(\S4_reg_n_0_[46] ),
        .I4(data_in[109]),
        .I5(\S4_reg_n_0_[45] ),
        .O(tag_match_INST_0_i_10_n_0));
  CARRY4 tag_match_INST_0_i_11
       (.CI(tag_match_INST_0_i_16_n_0),
        .CO({tag_match_INST_0_i_11_n_0,NLW_tag_match_INST_0_i_11_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_11_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_17_n_0,tag_match_INST_0_i_18_n_0,tag_match_INST_0_i_19_n_0,tag_match_INST_0_i_20_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_12
       (.I0(\S4_reg_n_0_[41] ),
        .I1(data_in[105]),
        .I2(data_in[107]),
        .I3(\S4_reg_n_0_[43] ),
        .I4(data_in[106]),
        .I5(\S4_reg_n_0_[42] ),
        .O(tag_match_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_13
       (.I0(\S4_reg_n_0_[38] ),
        .I1(data_in[102]),
        .I2(data_in[104]),
        .I3(\S4_reg_n_0_[40] ),
        .I4(data_in[103]),
        .I5(\S4_reg_n_0_[39] ),
        .O(tag_match_INST_0_i_13_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_14
       (.I0(\S4_reg_n_0_[35] ),
        .I1(data_in[99]),
        .I2(data_in[101]),
        .I3(\S4_reg_n_0_[37] ),
        .I4(data_in[100]),
        .I5(\S4_reg_n_0_[36] ),
        .O(tag_match_INST_0_i_14_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_15
       (.I0(\S4_reg_n_0_[32] ),
        .I1(data_in[96]),
        .I2(data_in[98]),
        .I3(\S4_reg_n_0_[34] ),
        .I4(data_in[97]),
        .I5(\S4_reg_n_0_[33] ),
        .O(tag_match_INST_0_i_15_n_0));
  CARRY4 tag_match_INST_0_i_16
       (.CI(tag_match_INST_0_i_21_n_0),
        .CO({tag_match_INST_0_i_16_n_0,NLW_tag_match_INST_0_i_16_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_16_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_22_n_0,tag_match_INST_0_i_23_n_0,tag_match_INST_0_i_24_n_0,tag_match_INST_0_i_25_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_17
       (.I0(\S4_reg_n_0_[29] ),
        .I1(data_in[93]),
        .I2(data_in[95]),
        .I3(\S4_reg_n_0_[31] ),
        .I4(data_in[94]),
        .I5(\S4_reg_n_0_[30] ),
        .O(tag_match_INST_0_i_17_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_18
       (.I0(\S4_reg_n_0_[26] ),
        .I1(data_in[90]),
        .I2(data_in[92]),
        .I3(\S4_reg_n_0_[28] ),
        .I4(data_in[91]),
        .I5(\S4_reg_n_0_[27] ),
        .O(tag_match_INST_0_i_18_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_19
       (.I0(\S4_reg_n_0_[23] ),
        .I1(data_in[87]),
        .I2(data_in[89]),
        .I3(\S4_reg_n_0_[25] ),
        .I4(data_in[88]),
        .I5(\S4_reg_n_0_[24] ),
        .O(tag_match_INST_0_i_19_n_0));
  CARRY4 tag_match_INST_0_i_2
       (.CI(tag_match_INST_0_i_6_n_0),
        .CO({tag_match_INST_0_i_2_n_0,NLW_tag_match_INST_0_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_2_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_7_n_0,tag_match_INST_0_i_8_n_0,tag_match_INST_0_i_9_n_0,tag_match_INST_0_i_10_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_20
       (.I0(\S4_reg_n_0_[20] ),
        .I1(data_in[84]),
        .I2(data_in[86]),
        .I3(\S4_reg_n_0_[22] ),
        .I4(data_in[85]),
        .I5(\S4_reg_n_0_[21] ),
        .O(tag_match_INST_0_i_20_n_0));
  CARRY4 tag_match_INST_0_i_21
       (.CI(tag_match_INST_0_i_26_n_0),
        .CO({tag_match_INST_0_i_21_n_0,NLW_tag_match_INST_0_i_21_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_21_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_27_n_0,tag_match_INST_0_i_28_n_0,tag_match_INST_0_i_29_n_0,tag_match_INST_0_i_30_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_22
       (.I0(\S4_reg_n_0_[17] ),
        .I1(data_in[81]),
        .I2(data_in[83]),
        .I3(\S4_reg_n_0_[19] ),
        .I4(data_in[82]),
        .I5(\S4_reg_n_0_[18] ),
        .O(tag_match_INST_0_i_22_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_23
       (.I0(\S4_reg_n_0_[14] ),
        .I1(data_in[78]),
        .I2(data_in[80]),
        .I3(\S4_reg_n_0_[16] ),
        .I4(data_in[79]),
        .I5(\S4_reg_n_0_[15] ),
        .O(tag_match_INST_0_i_23_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_24
       (.I0(\S4_reg_n_0_[11] ),
        .I1(data_in[75]),
        .I2(data_in[77]),
        .I3(\S4_reg_n_0_[13] ),
        .I4(data_in[76]),
        .I5(\S4_reg_n_0_[12] ),
        .O(tag_match_INST_0_i_24_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_25
       (.I0(\S4_reg_n_0_[8] ),
        .I1(data_in[72]),
        .I2(data_in[74]),
        .I3(\S4_reg_n_0_[10] ),
        .I4(data_in[73]),
        .I5(\S4_reg_n_0_[9] ),
        .O(tag_match_INST_0_i_25_n_0));
  CARRY4 tag_match_INST_0_i_26
       (.CI(tag_match_INST_0_i_31_n_0),
        .CO({tag_match_INST_0_i_26_n_0,NLW_tag_match_INST_0_i_26_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_26_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_32_n_0,tag_match_INST_0_i_33_n_0,tag_match_INST_0_i_34_n_0,tag_match_INST_0_i_35_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_27
       (.I0(\S4_reg_n_0_[5] ),
        .I1(data_in[69]),
        .I2(data_in[71]),
        .I3(\S4_reg_n_0_[7] ),
        .I4(data_in[70]),
        .I5(\S4_reg_n_0_[6] ),
        .O(tag_match_INST_0_i_27_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_28
       (.I0(\S4_reg_n_0_[2] ),
        .I1(data_in[66]),
        .I2(data_in[68]),
        .I3(\S4_reg_n_0_[4] ),
        .I4(data_in[67]),
        .I5(\S4_reg_n_0_[3] ),
        .O(tag_match_INST_0_i_28_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_29
       (.I0(\S3_reg_n_0_[63] ),
        .I1(data_in[63]),
        .I2(data_in[65]),
        .I3(\S4_reg_n_0_[1] ),
        .I4(data_in[64]),
        .I5(\S4_reg_n_0_[0] ),
        .O(tag_match_INST_0_i_29_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    tag_match_INST_0_i_3
       (.I0(\S4_reg_n_0_[62] ),
        .I1(data_in[126]),
        .I2(\S4_reg_n_0_[63] ),
        .I3(data_in[127]),
        .O(tag_match_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_30
       (.I0(\S3_reg_n_0_[60] ),
        .I1(data_in[60]),
        .I2(data_in[62]),
        .I3(\S3_reg_n_0_[62] ),
        .I4(data_in[61]),
        .I5(\S3_reg_n_0_[61] ),
        .O(tag_match_INST_0_i_30_n_0));
  CARRY4 tag_match_INST_0_i_31
       (.CI(tag_match_INST_0_i_36_n_0),
        .CO({tag_match_INST_0_i_31_n_0,NLW_tag_match_INST_0_i_31_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_31_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_37_n_0,tag_match_INST_0_i_38_n_0,tag_match_INST_0_i_39_n_0,tag_match_INST_0_i_40_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_32
       (.I0(\S3_reg_n_0_[57] ),
        .I1(data_in[57]),
        .I2(data_in[59]),
        .I3(\S3_reg_n_0_[59] ),
        .I4(data_in[58]),
        .I5(\S3_reg_n_0_[58] ),
        .O(tag_match_INST_0_i_32_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_33
       (.I0(\S3_reg_n_0_[54] ),
        .I1(data_in[54]),
        .I2(data_in[56]),
        .I3(\S3_reg_n_0_[56] ),
        .I4(data_in[55]),
        .I5(\S3_reg_n_0_[55] ),
        .O(tag_match_INST_0_i_33_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_34
       (.I0(\S3_reg_n_0_[51] ),
        .I1(data_in[51]),
        .I2(data_in[53]),
        .I3(\S3_reg_n_0_[53] ),
        .I4(data_in[52]),
        .I5(\S3_reg_n_0_[52] ),
        .O(tag_match_INST_0_i_34_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_35
       (.I0(\S3_reg_n_0_[48] ),
        .I1(data_in[48]),
        .I2(data_in[50]),
        .I3(\S3_reg_n_0_[50] ),
        .I4(data_in[49]),
        .I5(\S3_reg_n_0_[49] ),
        .O(tag_match_INST_0_i_35_n_0));
  CARRY4 tag_match_INST_0_i_36
       (.CI(tag_match_INST_0_i_41_n_0),
        .CO({tag_match_INST_0_i_36_n_0,NLW_tag_match_INST_0_i_36_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_36_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_42_n_0,tag_match_INST_0_i_43_n_0,tag_match_INST_0_i_44_n_0,tag_match_INST_0_i_45_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_37
       (.I0(\S3_reg_n_0_[45] ),
        .I1(data_in[45]),
        .I2(data_in[47]),
        .I3(\S3_reg_n_0_[47] ),
        .I4(data_in[46]),
        .I5(\S3_reg_n_0_[46] ),
        .O(tag_match_INST_0_i_37_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_38
       (.I0(\S3_reg_n_0_[42] ),
        .I1(data_in[42]),
        .I2(data_in[44]),
        .I3(\S3_reg_n_0_[44] ),
        .I4(data_in[43]),
        .I5(\S3_reg_n_0_[43] ),
        .O(tag_match_INST_0_i_38_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_39
       (.I0(\S3_reg_n_0_[39] ),
        .I1(data_in[39]),
        .I2(data_in[41]),
        .I3(\S3_reg_n_0_[41] ),
        .I4(data_in[40]),
        .I5(\S3_reg_n_0_[40] ),
        .O(tag_match_INST_0_i_39_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_4
       (.I0(\S4_reg_n_0_[59] ),
        .I1(data_in[123]),
        .I2(data_in[125]),
        .I3(\S4_reg_n_0_[61] ),
        .I4(data_in[124]),
        .I5(\S4_reg_n_0_[60] ),
        .O(tag_match_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_40
       (.I0(\S3_reg_n_0_[36] ),
        .I1(data_in[36]),
        .I2(data_in[38]),
        .I3(\S3_reg_n_0_[38] ),
        .I4(data_in[37]),
        .I5(\S3_reg_n_0_[37] ),
        .O(tag_match_INST_0_i_40_n_0));
  CARRY4 tag_match_INST_0_i_41
       (.CI(tag_match_INST_0_i_46_n_0),
        .CO({tag_match_INST_0_i_41_n_0,NLW_tag_match_INST_0_i_41_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_41_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_47_n_0,tag_match_INST_0_i_48_n_0,tag_match_INST_0_i_49_n_0,tag_match_INST_0_i_50_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_42
       (.I0(\S3_reg_n_0_[33] ),
        .I1(data_in[33]),
        .I2(data_in[35]),
        .I3(\S3_reg_n_0_[35] ),
        .I4(data_in[34]),
        .I5(\S3_reg_n_0_[34] ),
        .O(tag_match_INST_0_i_42_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_43
       (.I0(\S3_reg_n_0_[30] ),
        .I1(data_in[30]),
        .I2(data_in[32]),
        .I3(\S3_reg_n_0_[32] ),
        .I4(data_in[31]),
        .I5(\S3_reg_n_0_[31] ),
        .O(tag_match_INST_0_i_43_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_44
       (.I0(\S3_reg_n_0_[27] ),
        .I1(data_in[27]),
        .I2(data_in[29]),
        .I3(\S3_reg_n_0_[29] ),
        .I4(data_in[28]),
        .I5(\S3_reg_n_0_[28] ),
        .O(tag_match_INST_0_i_44_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_45
       (.I0(\S3_reg_n_0_[24] ),
        .I1(data_in[24]),
        .I2(data_in[26]),
        .I3(\S3_reg_n_0_[26] ),
        .I4(data_in[25]),
        .I5(\S3_reg_n_0_[25] ),
        .O(tag_match_INST_0_i_45_n_0));
  CARRY4 tag_match_INST_0_i_46
       (.CI(1'b0),
        .CO({tag_match_INST_0_i_46_n_0,NLW_tag_match_INST_0_i_46_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_46_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_51_n_0,tag_match_INST_0_i_52_n_0,tag_match_INST_0_i_53_n_0,tag_match_INST_0_i_54_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_47
       (.I0(\S3_reg_n_0_[21] ),
        .I1(data_in[21]),
        .I2(data_in[23]),
        .I3(\S3_reg_n_0_[23] ),
        .I4(data_in[22]),
        .I5(\S3_reg_n_0_[22] ),
        .O(tag_match_INST_0_i_47_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_48
       (.I0(\S3_reg_n_0_[18] ),
        .I1(data_in[18]),
        .I2(data_in[20]),
        .I3(\S3_reg_n_0_[20] ),
        .I4(data_in[19]),
        .I5(\S3_reg_n_0_[19] ),
        .O(tag_match_INST_0_i_48_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_49
       (.I0(\S3_reg_n_0_[15] ),
        .I1(data_in[15]),
        .I2(data_in[17]),
        .I3(\S3_reg_n_0_[17] ),
        .I4(data_in[16]),
        .I5(\S3_reg_n_0_[16] ),
        .O(tag_match_INST_0_i_49_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_5
       (.I0(\S4_reg_n_0_[56] ),
        .I1(data_in[120]),
        .I2(data_in[122]),
        .I3(\S4_reg_n_0_[58] ),
        .I4(data_in[121]),
        .I5(\S4_reg_n_0_[57] ),
        .O(tag_match_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_50
       (.I0(\S3_reg_n_0_[12] ),
        .I1(data_in[12]),
        .I2(data_in[14]),
        .I3(\S3_reg_n_0_[14] ),
        .I4(data_in[13]),
        .I5(\S3_reg_n_0_[13] ),
        .O(tag_match_INST_0_i_50_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_51
       (.I0(\S3_reg_n_0_[9] ),
        .I1(data_in[9]),
        .I2(data_in[11]),
        .I3(\S3_reg_n_0_[11] ),
        .I4(data_in[10]),
        .I5(\S3_reg_n_0_[10] ),
        .O(tag_match_INST_0_i_51_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_52
       (.I0(\S3_reg_n_0_[6] ),
        .I1(data_in[6]),
        .I2(data_in[8]),
        .I3(\S3_reg_n_0_[8] ),
        .I4(data_in[7]),
        .I5(\S3_reg_n_0_[7] ),
        .O(tag_match_INST_0_i_52_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_53
       (.I0(\S3_reg_n_0_[3] ),
        .I1(data_in[3]),
        .I2(data_in[5]),
        .I3(\S3_reg_n_0_[5] ),
        .I4(data_in[4]),
        .I5(\S3_reg_n_0_[4] ),
        .O(tag_match_INST_0_i_53_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_54
       (.I0(\S3_reg_n_0_[0] ),
        .I1(data_in[0]),
        .I2(data_in[2]),
        .I3(\S3_reg_n_0_[2] ),
        .I4(data_in[1]),
        .I5(\S3_reg_n_0_[1] ),
        .O(tag_match_INST_0_i_54_n_0));
  CARRY4 tag_match_INST_0_i_6
       (.CI(tag_match_INST_0_i_11_n_0),
        .CO({tag_match_INST_0_i_6_n_0,NLW_tag_match_INST_0_i_6_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_tag_match_INST_0_i_6_O_UNCONNECTED[3:0]),
        .S({tag_match_INST_0_i_12_n_0,tag_match_INST_0_i_13_n_0,tag_match_INST_0_i_14_n_0,tag_match_INST_0_i_15_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_7
       (.I0(\S4_reg_n_0_[53] ),
        .I1(data_in[117]),
        .I2(data_in[119]),
        .I3(\S4_reg_n_0_[55] ),
        .I4(data_in[118]),
        .I5(\S4_reg_n_0_[54] ),
        .O(tag_match_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_8
       (.I0(\S4_reg_n_0_[50] ),
        .I1(data_in[114]),
        .I2(data_in[116]),
        .I3(\S4_reg_n_0_[52] ),
        .I4(data_in[115]),
        .I5(\S4_reg_n_0_[51] ),
        .O(tag_match_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    tag_match_INST_0_i_9
       (.I0(\S4_reg_n_0_[47] ),
        .I1(data_in[111]),
        .I2(data_in[113]),
        .I3(\S4_reg_n_0_[49] ),
        .I4(data_in[112]),
        .I5(\S4_reg_n_0_[48] ),
        .O(tag_match_INST_0_i_9_n_0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
