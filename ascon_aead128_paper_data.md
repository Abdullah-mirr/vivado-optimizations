# Ascon-AEAD128 Buffer-Free FPGA Core: All Data and Results for the Paper

Author: Abdullah Mir (Oxeltech)
Compiled: 23 Nov 2026
Purpose: one complete source of facts, numbers and context to write the journal paper. Every number below comes from Vivado reports, simulation logs or the RTL in `E:\fyp_revision\kintex7`. Items marked **[TO FILL]** are not measured yet.

---

## 1. Background and Why the Paper Was Rejected

### 1.1 Previous submission
- Submitted to IEEE TCAS-II and rejected.
- Main reviewer points (summarised from the rejection letter and our analysis):
  1. The design implemented Ascon v1.2 (Ascon-128 / Ascon-128a), not the final NIST standard SP 800-232 (Ascon-AEAD128).
  2. No padding in the core, fixed-length data only (same weakness as Alharbi et al. 2024).
  3. Tag verification and plaintext release were not handled properly (old "two-pass verified" logic was broken).
  4. Interface was incomplete (no length / last signal, no proper handshake).
  5. Weak verification (no official known-answer tests over many lengths, no post-route check).
  6. No baseline / ablation, no critical path discussion, no energy per bit.

### 1.2 What was fixed in the new design
| Reviewer issue | Status in final design |
|---|---|
| Not SP 800-232 | Fixed. Ascon-AEAD128 per NIST SP 800-232 (IV, little-endian, pad byte 0x01, domain separation on MSB of S4). |
| No padding | Fixed. Padding is inside the core, extra padding block is absorbed and counted in all cycle numbers. |
| Tag check / plaintext release | Fixed. 128-bit tag compare inside the core, 1-bit `tag_match`. Plaintext is streamed; system must not use it until `tag_match = 1` (SP 800-232 Sec. 4.1.2, LWC HW API Sec. 2.8). Two-pass logic removed. |
| Interface | Fixed for input side: `data_len` (0..16 bytes), `data_valid` / `data_ready`. Output has `data_out_valid` but **no output back-pressure (no `out_ready`)**; the sink must accept data every valid cycle. State this as an assumption. |
| Verification | Fixed. 1089 official KATs + 211 random vectors, encrypt + decrypt + bad-tag, RTL and post-route. 0 errors. |
| Baseline / ablation | **[TO FILL]** if wanted. Script `ascon_versions.tcl` exists to run all 7 git versions with the same flow; not run yet. |

---

## 2. The Standard: NIST SP 800-232 (Ascon-AEAD128)

- NIST SP 800-232 (final, 13 Aug 2025) standardises Ascon-AEAD128, Ascon-Hash256, Ascon-XOF128, Ascon-CXOF128.
- Ascon-128 (rate 64) is not standardised. Ascon-AEAD128 is based on Ascon-128a v1.2 but is **not bit compatible** with it.
- Changes from Ascon-128a v1.2 that the core implements:
  - IV = `0x00001000808c0001`
  - Little-endian loading of key, nonce, AD, PT/CT and tag (byte i = `data_in[8*i +: 8]`)
  - Padding: byte `0x01` in the first free byte (v1.2 used `0x80`)
  - Domain separation: XOR `0x8000000000000000` into S4 (MSB), v1.2 used LSB
- Unchanged: 320-bit state, rate 128 bits, p[12] for init/final, p[8] for data, same round constants, same key XOR positions, 128-bit tag.
- Padding rule: if a stream length is a multiple of 16 bytes, one extra padding block is absorbed (non-empty AD, and always for plaintext, including empty plaintext). Empty AD: no AD block, only domain separation.
- No peer-reviewed FPGA result table for SP 800-232 Ascon-AEAD128 was found in our literature search. This is a novelty point.

---

## 3. Final Architecture

### 3.1 Summary
- Module `Ascon_top`, Verilog, one round per clock (round-based, unrolling factor 1).
- Encrypt and decrypt in one unified datapath (`mode` input).
- **Buffer-free**: no input or output buffers, no BRAM, no LUTRAM, no DSP. Data goes straight from `data_in` into the state, output is formed combinationally from the state.
- Padding inside the core, 128-bit tag compare inside the core.
- Parameter `OUT_MASK` (used value = 1): zeroes the unused (pad) bytes of the last output beat. All reported results use `OUT_MASK = 1`.
- Source files: `ascon.v` (Ascon_top) and `permutation.v`.
- Version: git branch `old-version`, commit `33419b5` ("Ascon aead 128_LUTS(1169,0.095, 0.303)") working file, header "OPTIMIZED VARIANT 2".

### 3.2 Ports
| Port | Width | Dir | Meaning |
|---|---|---|---|
| clk | 1 | in | clock |
| rst | 1 | in | synchronous reset (control registers only) |
| data_in | 128 | in | key, nonce, AD, PT/CT or received tag (little-endian) |
| data_len | 5 | in | valid bytes in this beat, 0..16. 16 = full beat, less = last beat of the stream |
| data_valid | 1 | in | beat valid |
| mode | 1 | in | 0 = encrypt, 1 = decrypt |
| data_out | 128 | out | CT/PT beat or tag |
| data_out_valid | 1 | out | output beat valid |
| data_ready | 1 | out | core can accept a beat (high in WAIT state) |
| tag_match | 1 | out | 1 if received tag matches, valid with data_out_valid on the verify beat |

### 3.3 Beat protocol
1. Key beat (16 bytes).
2. Nonce beat (16 bytes). Starts initialisation p[12].
3. AD: full beats (data_len = 16), then always one last beat with data_len = 0..15 (0 = nothing left or empty AD).
4. PT (encrypt) or CT (decrypt): same rule. Output beat appears on `data_out` in the same cycle.
5. Encrypt: tag appears on `data_out` (with `data_out_valid`) in the last cycle of the final p[12].
   Decrypt: send received tag as one beat; `tag_match` is valid in that cycle.
- Key is sent again for each message (no key storage across messages is assumed by the protocol).

### 3.4 Datapath and control (what makes it small and fast)
- State: S0..S4 (5 x 64 = 320 FF), key K0, K1 (128 FF).
- Control: 1-bit state `st` (WAIT / PERM), 2-bit `phase` (KEY, NONCE, AD, PT), 4-bit `round_cnt`, 1-bit `last_q`. Total 8 control bits.
- One combinational round: add round constant, 5-bit S-box (64 copies, LUT based), linear diffusion layer.
- Round constant comes directly from the counter: `rc8 = {~i, i}` (i = 0..11). No ROM.
- Absorb / replace in one expression:
  - encrypt and AD: `S ^ (din & keep) ^ pad`
  - decrypt PT: `keep ? din : S ^ pad`
  - `keep` and `pad` masks built from `data_len` with a 16-entry thermometer code (byte granularity).
- Output keystream XOR: `text = S ^ din`, masked by `keep` when OUT_MASK = 1.

### 3.5 Optimisations in the final version (ablation list for the paper)
1. Round counter is the round-constant index itself (0..11 for p[12], 4..11 for p[8]). Every permutation ends at 11. No "+4" adder and no variable end compare. Shorter round-constant path.
2. "First AD beat" flag reuses `last_q` (set by the nonce beat) instead of a separate flag or `round_cnt[3]`.
3. Key XOR at the end of p[12] is shared by initialisation and finalisation (`S3_n`, `S4_n`). After finalisation S3, S4 already hold the tag, so the tag compare is a plain 128-bit equality and the tag output reuses `S3_n`, `S4_n`.
4. Domain separation touches only bit 63 of S4.
5. K0, K1 and S0..S4 have no reset; only control registers are reset. This removes reset logic from 448 FFs.
6. Padding masks shared by AD and PT.
7. Empty-AD case costs 1 cycle and no permutation.

### 3.6 Register count check (matches Vivado)
| Group | FF |
|---|---|
| State S0..S4 | 320 |
| Key K0, K1 | 128 |
| st | 1 |
| phase | 2 |
| round_cnt | 4 |
| last_q | 1 |
| Vivado replicas of `st` (for fanout, by phys_opt) | 3 |
| **Total** | **459** |

---

## 4. Cycle Counts and Latency (from the RTL state machine)

Assumes input data is available whenever `data_ready = 1`.

| Step | Cycles |
|---|---|
| Key beat | 1 |
| Nonce beat + initialisation p[12] | 1 + 12 = 13 |
| Empty AD (one beat with len 0, no permutation) | 1 |
| Each AD block (incl. padding block) | 1 + 8 = 9 |
| Each non-final PT/CT block | 1 + 8 = 9 |
| Final PT/CT block + finalisation p[12] (tag out in last cycle) | 1 + 12 = 13 |
| Decrypt: received tag beat | +1 |

Formula (encrypt): `cycles = 1 + 13 + (a > 0 ? 9a : 1) + 9(m - 1) + 13`
- a = number of AD blocks = floor(ADlen/16) + 1 if ADlen > 0, else 0
- m = number of PT blocks = floor(PTlen/16) + 1 (always at least 1, padding block included)
- Decrypt = encrypt + 1.

Long-message rate: 128 bits per 9 cycles = 14.22 bit/cycle. Throughput = 128 x f / 9.

Latency and throughput at Fmax = 498.26 MHz (perf_fine):
| AD bytes | PT bytes | Enc cycles | Dec cycles | Enc latency (ns) | PT throughput (Mbps) |
|---|---|---|---|---|---|
| 0 | 0 | 28 | 29 | 56.2 | n/a |
| 0 | 16 | 37 | 38 | 74.3 | 1723.7 |
| 16 | 16 | 54 | 55 | 108.4 | 1181.1 |
| 0 | 64 | 64 | 65 | 128.4 | 3986.1 |
| 16 | 64 | 81 | 82 | 162.6 | 3149.5 |
| 16 | 256 | 189 | 190 | 379.3 | 5399.1 |
| 16 | 1024 | 621 | 622 | 1246.3 | 6572.9 |
| 16 | 1500 | 882 | 883 | 1770.2 | 6779.0 |
| 16 | 4096 | 2349 | 2350 | 4714.4 | 6950.6 |
| long message limit | | 9 per block | | | **7086.4** |

(PT throughput here = PT bits / total encrypt time including key, nonce, AD and finalisation.)

---

## 5. Implementation Method

- Tool: **Vivado 2018.2** (64-bit, build 2258646).
- Device: **Kintex-7 xc7k325tffg900-2** (same family as Alharbi et al. 2024).
- Flow: non-project Tcl flow, **out-of-context (OOC)** synthesis and implementation, `HD.CLK_SRC = BUFGCTRL_X0Y0`. No I/O buffers (core-level results, as in reference papers).
- Constraints: one clock on `clk`. Main results are register-to-register ("reg2reg"). A second mode ("io0") also sets input and output delay to 0 ns.
- Fmax method: iterative sweep. Each pass sets the clock period to the period achieved in the previous pass (minus 50 ps if timing was met). **Fmax = 1 / (T - WNS)** taken from the best pass that **met timing** (WNS >= 0). Slow process corner, setup.
- Strategies (directives for synth / opt / place / phys_opt / route):
  - default: Default / Default / Default / Default / Default
  - area: AreaOptimized_high / Default / Default / Default / Default
  - perf_fine: Default / Explore / ExtraTimingOpt / AggressiveExplore / Explore
  - area_fine: AreaOptimized_high / Default / Default / Default / Default (finer sweep start 2.08 ns)
- Synthesis flatten: Vivado default (rebuilt). Design is flat in the final netlist (one hierarchy level).

---

## 6. Main Results (chosen configuration: perf_fine)

Selection rule: priority clock > LUT > FF > power. perf_fine has the highest Fmax and only 13 LUTs more than the smallest run.

### 6.1 Headline table (xc7k325t-2, post-route, OOC, reg2reg)
| Metric | Value |
|---|---|
| Fmax | **498.26 MHz** (period 2.044 ns, WNS +0.037 ns, met) |
| Slice LUTs | **1046** (all LUT as logic) |
| Slice registers (FF) | **459** (all FDRE) |
| Slices | **309** (215 SLICEL, 94 SLICEM) |
| LUT-FF pairs | 296 |
| CARRY4 | 11 |
| F7 / F8 muxes | 0 / 0 |
| BRAM / DSP / LUTRAM / SRL | 0 / 0 / 0 / 0 |
| Unique control sets | 8 |
| Long-message throughput | **7086.4 Mbps** (7.09 Gbps) |
| Throughput / LUT | **6.77 Mbps/LUT** |
| Throughput / slice | **22.93 Mbps/slice** |
| Dynamic power at 100 MHz (SAIF) | **28 mW** |
| Dynamic energy per bit | **19.7 pJ/bit** |
| Functional check post-route | 3900 / 3900 tests pass |

### 6.2 LUT type breakdown (perf_fine)
| LUT6 | LUT5 | LUT4 | LUT3 | LUT2 | LUT1 |
|---|---|---|---|---|---|
| 403 | 515 | 192 | 69 | 5 | 1 |
(Sum 1185 > 1046 because two small LUTs can share one physical LUT6 site.)

### 6.3 Control sets (perf_fine)
| Enable | Reset | Bel loads |
|---|---|---|
| none | none | 2 |
| phase enable | rst | 4 |
| round_cnt enable | rst | 8 |
| none | rst | 10 |
| S4 enable | none | 126 |
| S3 enable | none | 256 |
| K0/K1 enable | none | 256 |
| S0 enable | none | 256 |

### 6.4 High-fanout nets (perf_fine)
| Net | Fanout |
|---|---|
| phase[1] | 285 |
| pt_out_en | 129 |
| tag_out_en | 129 |
| K load enable | 128 |
| S0 enable | 128 |
| S3 enable | 128 |
| xk (key XOR enable) | 128 |
| st (3 replicas) | 92 each |
| phase[0] | 85 |
| mode (port) | 67 |
| st (original) | 66 |
| dec_pt | 64 |

### 6.5 DRC
- 1 warning only: CFGBVS-1 (configuration bank voltage property not set). Normal for an OOC core, not a design issue. No errors.

---

## 7. Critical Path (perf_fine)

| Item | Value |
|---|---|
| Start | `round_cnt_reg[0]/C` |
| End | `S4_reg[58]/D` |
| Requirement | 2.044 ns |
| Data path delay | 1.989 ns |
| Logic delay | 0.403 ns (20.3%) |
| Routing delay | 1.586 ns (79.7%) |
| Logic levels | 4 (LUT4, LUT4, LUT5, LUT3) |
| Clock skew | -0.041 ns |
| Clock uncertainty | 0.035 ns |
| Slack | +0.037 ns |

Path detail:
1. `round_cnt_reg[0]` (FDRE clk-to-Q 0.223 ns), net fanout 13, 0.382 ns
2. LUT4 -> `last_round` (round_cnt == 11), 0.043 ns, net 0.130 ns
3. LUT4 -> `xk` (key XOR enable = last_round & ~pb_perm), 0.043 ns, **fanout 128**, net 0.636 ns
4. LUT5 -> S4_n bit (permutation output XOR K1 & xk; same LUT also feeds the tag output `data_out[122]`), 0.043 ns, net 0.438 ns
5. LUT3 -> S4 next-state mux, 0.051 ns -> `S4_reg[58]/D` (setup 0.058 ns)

Key observations for the paper:
- The critical path is **not** the S-box. It is the control path for the shared key XOR (round counter compare, then the 128-fanout `xk` enable), merged with the last S-box output into S4.
- The path is **routing dominated (80% route)** and only 4 LUT levels deep.
- Logic level distribution of the 784 worst paths: 1 level: 360, 2 levels: 270, 3 levels: 91, 4 levels: 63. No path has more than 4 LUT levels.
- Possible future work (not done, would add registers): pre-decode `last_round` one cycle earlier to cut the `round_cnt -> xk` part.

---

## 8. Power and Energy

### 8.1 SAIF-based power (use these in the paper)
- Activity source: post-route functional simulation of the perf_fine netlist (`postroute_funcsim.v`) with the full KAT testbench (Section 9).
- SAIF read into the routed checkpoint, clock 100 MHz (same as testbench clock).
- **Design nets matched: 100% (1792 / 1792). Confidence level: High.**
- Junction temperature 25.3 C, effective theta-JA 1.8 C/W, max ambient 84.7 C (Vivado defaults).

| | 100 MHz (measured) | 498.26 MHz (dynamic scaled linearly) |
|---|---|---|
| Total on-chip | 185 mW | about 296 mW |
| Dynamic | **28 mW** | about 140 mW |
| - Clocks | 5 mW | |
| - Slice logic | 10 mW (LUT 9 mW, FF < 1 mW, CARRY4 < 1 mW) | |
| - Signals | 13 mW | |
| Device static | 156 mW | 156 mW |

Energy per bit (long-message rate 128 bits / 9 cycles):
- Dynamic: 28 mW / 1.422 Gbps = **19.7 pJ/bit** (same at any frequency).
- Total at Fmax: 296 mW / 7.086 Gbps = **41.7 pJ/bit**.
- Total at 100 MHz: 185 mW / 1.422 Gbps = 130 pJ/bit (dominated by device static).

Notes to write:
- Static power (156 mW) is the leakage of the large xc7k325t device, not of the core. Compare designs on dynamic power and dynamic energy per bit.
- Activity is the average over the KAT workload (many short messages, idle cycles between beats). Continuous long-message streaming may show somewhat higher dynamic power.

### 8.2 Vectorless power (Vivado default activity, for reference only, superseded by SAIF)
| Config | P total @Fmax (W) | P dyn @Fmax (W) | P total @100 MHz (W) | P dyn @100 MHz (W) | Static (W) |
|---|---|---|---|---|---|
| perf_fine reg2reg | 0.351 | 0.194 | 0.195 | 0.039 | 0.157 |
| area_fine reg2reg | 0.342 | 0.184 | 0.194 | 0.038 | 0.157 |
| default reg2reg | 0.346 | 0.189 | 0.196 | 0.039 | 0.157 |
| area reg2reg | 0.349 | 0.192 | 0.197 | 0.040 | 0.157 |
| default io0 | 0.268 | 0.111 | 0.198 | 0.042 | 0.157 |
| area io0 | 0.260 | 0.103 | 0.196 | 0.039 | 0.157 |
Vectorless confidence: Medium. SAIF gave 28% lower dynamic power than vectorless at 100 MHz (28 vs 39 mW).

---

## 9. Verification

### 9.1 Testbench `tb_ascon.v` (module `tb_Ascon_top`)
- Vectors 1..1089: official Ascon-AEAD128 known-answer tests, file `LWC_AEAD_KAT_128_128.txt` from github.com/ascon/ascon-c (`crypto_aead/asconaead128`). PT 0..32 bytes x AD 0..32 bytes.
- Next 211 vectors: random key, nonce, AD (0..64 bytes), PT (0..64 bytes). Expected values from the pyascon reference model ("Ascon-AEAD128").
- Each vector runs 3 tests:
  - A) Encrypt: every ciphertext beat and the tag are compared; output beat count checked.
  - B) Decrypt with good tag: every plaintext beat compared, `tag_match` must be 1.
  - C) Decrypt with bad tag (one tag bit flipped): `tag_match` must be 0.
- Unused bytes of short beats are driven with 0xFF to prove the core masks them.
- Total: 1300 vectors, 3900 tests.

### 9.2 Results
| Level | Result |
|---|---|
| RTL behavioural simulation | PASS (all vectors) |
| **Post-route functional simulation** (perf_fine netlist, UNISIM primitives, Vivado xsim 2018.2) | **vectors 1300, tests 3900, errors 0. RESULT: PASS** |
| Simulated time (post-route run) | 1,999,510 ns at 100 MHz |

- For the post-route run, the testbench copy `tb_ascon_postroute.v` holds reset for 20 cycles instead of 4, only to wait for the Xilinx global set/reset (GSR, 100 ns in glbl.v). No other change.

---

## 10. All Implementation Runs (full data)

### 10.1 Best result per configuration (`results_best.csv`)
| Strategy | IO mode | Period (ns) | WNS (ns) | Fmax (MHz) | LUT | FF | Slice | CARRY4 | Logic levels | Path delay (ns) | Logic (ns) | Route (ns) | TP (Mbps) | TP/LUT | Critical path |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| **perf_fine** | reg2reg | 2.044 | 0.037 | **498.26** | 1046 | 459 | 309 | 11 | 4 | 1.989 | 0.403 | 1.586 | 7086.36 | 6.7747 | round_cnt[0] -> S4[58]/D |
| area_fine | reg2reg | 2.187 | 0.152 | 491.40 | 1036 | 459 | 277 | 11 | 1 | 1.772 | 0.266 | 1.506 | 6988.80 | 6.7459 | phase[1] -> S2[5]/CE |
| default | reg2reg | 2.266 | 0.189 | 481.46 | 1081 | 462 | 302 | 11 | 4 | 2.034 | 0.431 | 1.603 | 6847.43 | 6.3343 | round_cnt[2] -> S4[55]/D |
| area | reg2reg | 2.109 | 0.014 | 477.33 | 1033 | 459 | 277 | 11 | 4 | 2.105 | 0.395 | 1.710 | 6788.69 | 6.5718 | round_cnt[1] -> S3[31]/D |
| default | io0 | 3.893 | 0.100 | 263.64 | 1072 | 462 | 289 | 11 | 11 | 2.535 | 1.098 | 1.437 | 3749.55 | 3.4977 | S3[35] -> tag_match (port) |
| area | io0 | 3.922 | 0.141 | 264.48 | 1032 | 459 | 276 | 11 | 4 | 2.534 | 0.395 | 2.139 | 3761.49 | 3.6449 | round_cnt[2] -> data_out[16] (port) |

### 10.2 Every sweep pass (`sweep_all.csv`)
| Strategy | IO | Pass | Period | WNS | Fmax | Met | LUT | FF | Slice | LL | Path | Logic | Route |
|---|---|---|---|---|---|---|---|---|---|---|---|---|---|
| default | reg2reg | 1 | 3.000 | 0.268 | 366.03 | 1 | 1127 | 461 | 312 | 1 | 2.780 | 0.302 | 2.478 |
| default | reg2reg | 2 | 2.682 | 0.366 | 431.78 | 1 | 1075 | 462 | 295 | 1 | 2.214 | 0.266 | 1.948 |
| default | reg2reg | 3 | 2.266 | 0.189 | 481.46 | 1 | 1081 | 462 | 302 | 4 | 2.034 | 0.431 | 1.603 |
| default | reg2reg | 4 | 2.027 | -0.017 | 489.24 | 0 | 1078 | 462 | 294 | 4 | 2.026 | 0.395 | 1.631 |
| default | io0 | 1 | 3.000 | -0.769 | 265.32 | 0 | 1094 | 552 | 300 | 13 | 2.447 | 1.249 | 1.198 |
| default | io0 | 2 | 3.769 | -0.124 | 256.87 | 0 | 1077 | 462 | 296 | 4 | 2.638 | 0.488 | 2.150 |
| default | io0 | 3 | 3.893 | 0.100 | 263.64 | 1 | 1072 | 462 | 289 | 11 | 2.535 | 1.098 | 1.437 |
| default | io0 | 4 | 3.743 | -0.078 | 261.71 | 0 | 1075 | 465 | 289 | 4 | 2.569 | 0.395 | 2.174 |
| area | reg2reg | 1 | 3.000 | 0.372 | 380.52 | 1 | 1030 | 459 | 278 | 1 | 2.573 | 0.302 | 2.271 |
| area | reg2reg | 2 | 2.578 | 0.335 | 445.83 | 1 | 1033 | 459 | 281 | 1 | 2.189 | 0.266 | 1.923 |
| area | reg2reg | 3 | 2.193 | 0.034 | 463.18 | 1 | 1033 | 459 | 274 | 4 | 2.134 | 0.467 | 1.667 |
| area | reg2reg | 4 | 2.109 | 0.014 | 477.33 | 1 | 1033 | 459 | 277 | 4 | 2.105 | 0.395 | 1.710 |
| area | io0 | 1 | 3.000 | -0.880 | 257.73 | 0 | 1046 | 536 | 286 | 4 | 2.564 | 0.395 | 2.169 |
| area | io0 | 2 | 3.880 | 0.056 | 261.51 | 1 | 1033 | 459 | 279 | 7 | 2.521 | 0.984 | 1.537 |
| area | io0 | 3 | 3.774 | -0.148 | 254.97 | 0 | 1034 | 461 | 286 | 4 | 2.607 | 0.395 | 2.212 |
| area | io0 | 4 | 3.922 | 0.141 | 264.48 | 1 | 1032 | 459 | 276 | 4 | 2.534 | 0.395 | 2.139 |
| perf_fine | reg2reg | 1 | 2.080 | 0.010 | 483.09 | 1 | 1059 | 459 | 331 | 2 | 1.846 | 0.309 | 1.537 |
| perf_fine | reg2reg | 2 | 2.020 | 0.003 | 495.79 | 1 | 1047 | 459 | 313 | 4 | 2.006 | 0.407 | 1.599 |
| perf_fine | reg2reg | 3 | 1.967 | -0.077 | 489.24 | 0 | 1046 | 459 | 288 | 3 | 2.032 | 0.388 | 1.644 |
| perf_fine | reg2reg | 4 | 2.044 | 0.037 | 498.26 | 1 | 1046 | 459 | 309 | 4 | 1.989 | 0.403 | 1.586 |
| area_fine | reg2reg | 1 | 2.080 | -0.156 | 447.23 | 0 | 1039 | 465 | 279 | 4 | 2.135 | 0.395 | 1.740 |
| area_fine | reg2reg | 2 | 2.236 | 0.058 | 459.14 | 1 | 1032 | 459 | 278 | 4 | 2.153 | 0.401 | 1.752 |
| area_fine | reg2reg | 3 | 2.128 | -0.059 | 457.25 | 0 | 1042 | 461 | 278 | 4 | 2.189 | 0.501 | 1.688 |
| area_fine | reg2reg | 4 | 2.187 | 0.152 | 491.40 | 1 | 1036 | 459 | 277 | 1 | 1.772 | 0.266 | 1.506 |

Observations:
- LUT count is stable at 1030 to 1081 across all runs; FF is 459 to 465 (except io0 pass 1 where phys_opt replicated registers).
- Run-to-run Fmax noise from placement is about +/- 2%. Report the best met-timing run and say the method.
- LUT range 1033 (area) to 1046 (perf_fine): the faster run costs only 1.3% more LUTs.

### 10.3 I/O-constrained timing (io0 mode)
- With input and output delay 0 ns, the core reaches about **264 MHz**. Reason: `data_out` and `tag_match` are combinational from `data_in` (keystream XOR, 128-bit tag compare) and from the state.
- The reference papers report register-to-register timing only, so reg2reg (498 MHz) is the comparable number. Add one sentence in the paper: outputs are combinational (buffer-free by design); if the surrounding system needs registered outputs, add one output register stage (128 + 2 FF), which is outside the core.

---

## 11. Comparison With Related Work

| Work | Algorithm | Device | LUT | FF | Slice | Fmax (MHz) | Cycles | TP | Padding in core | Tag compare in core | Notes |
|---|---|---|---|---|---|---|---|---|---|---|---|
| **This work** | **Ascon-AEAD128 (SP 800-232)** | **Kintex-7 xc7k325t-2** | **1046** | **459** | **309** | **498.3** | **9 / block, 28 min msg** | **7.09 Gbps** | **Yes** | **Yes** | buffer-free, enc + dec, post-route verified with official KATs |
| Alharbi et al., IEEE Access 2024 | Ascon-128 / 128a v1.2 unified | Kintex-7 | 1497 | 912 | [TO FILL] | 331 | 55 / 47 | [TO FILL] | No (fixed 128-bit AD and PT, external wrapper needed) | Yes | plaintext held in 128-bit output register (works for one block only) |
| Mohamed et al., Sci. Reports 2026 (s41598-026-63223-6) | Ascon-128 v1.2 | [TO FILL] | [TO FILL] | [TO FILL] | [TO FILL] | [TO FILL] | bit-serial | [TO FILL] | Partial, no extra pad block | Only in test setup | single block, no KATs |
| ascon-verilog (Ascon team) | Ascon-AEAD128 | [TO FILL] | | | | | | | Yes | Yes | streams plaintext, external buffer needed for quarantine |
| AsconEdge (Kurian and Chen 2025) | [TO FILL] | | | | | | | | | | holds plaintext until tag passes (uses buffer / BRAM) |

Versus Alharbi et al. 2024 (same FPGA family):
- LUT: 1046 vs 1497 = **30.1% fewer**
- FF: 459 vs 912 = **49.7% fewer**
- Fmax: 498.3 vs 331 = **50.5% higher**
- Plus: SP 800-232 compliant, variable length with in-core padding, both directions.
Note: their design is Ascon v1.2, ours is SP 800-232; algorithms differ only in constants, byte order, pad byte and domain bit, so the hardware cost is comparable, but say this in the text.

---

## 12. Design History (git, `E:\fyp_revision\kintex7\project_27`)

| # | Commit | Message | Notes |
|---|---|---|---|
| 1 | f066c0e | unified version | Ascon-128 / 128a v1.2 unified (rejected design family) |
| 2 | 69e1bcd | multiple length input_ without padding | v1.2, variable length, padding outside: earlier note 1341 LUT / 463 FF |
| 3 | 2242e77 | multiple length input_ with padding | v1.2, padding inside: earlier note 1501 LUT / 463 FF |
| 4 | cb0e1d2 | Ascon aead 128 | first SP 800-232 Ascon-AEAD128 core (baseline for ablation) |
| 5 | 7a27093 | Ascon aead 128_LUTS(1180,0.214) | optimisation step, 1180 LUT (earlier run, not same flow) |
| 6 | 33419b5 | Ascon aead 128_LUTS(1169,0.095, 0.303) | **final design used for all results above** (branch old-version) |
| 7 | 0f80e29 | final archi | later commit on main, NOT used for these results |
- The LUT numbers in commit messages and earlier notes come from different runs and settings. Do not mix them with Section 6. For a fair ablation table, run `ascon_versions.tcl` (same flow for all versions). **[TO FILL]**

---

## 13. Suggested Figures and Tables for the Paper (data source)

| Figure / table | Data |
|---|---|
| Fig: top-level block diagram (state regs, key regs, absorb/mask unit, one-round permutation, key-XOR, output mux, tag compare, FSM) | Section 3 |
| Fig: FSM (WAIT/PERM x KEY/NONCE/AD/PT) and beat timing diagram | Sections 3.3, 4 |
| Fig: critical path annotated (round_cnt -> last_round -> xk -> S4_n -> S4 mux) | Section 7 |
| Fig: placed design (device view, Vivado Export Image of `best_routed.dcp`) | perf_fine folder |
| Fig: power breakdown pie (clocks 5, logic 10, signals 13 mW dynamic) | Section 8.1 |
| Fig: throughput vs message length | Section 4 table |
| Fig: Fmax vs LUT for the strategy runs (Pareto) | Section 10.1 |
| Table: resource utilisation | Section 6.1, 6.2 |
| Table: cycle counts per phase | Section 4 |
| Table: verification summary | Section 9 |
| Table: comparison with related work | Section 11 |
| Table: ablation (versions 4 to 6) | **[TO FILL]** |

---

## 14. Statements the Paper Must Include

1. The core implements Ascon-AEAD128 exactly as in NIST SP 800-232, verified against the official KAT file and pyascon.
2. Padding is inside the core; the padding block is counted in all cycle and throughput numbers.
3. Plaintext is released (streamed) before the tag is verified, as recommended by the LWC Hardware API Sec. 2.8. The system must not use the plaintext until `tag_match = 1` (SP 800-232 Sec. 4.1.2). For a buffer of B bytes per packet, an external buffer of B bytes is needed if plaintext quarantine is required (example: 1500-byte packet needs 1500 bytes).
4. Results are post-route, out-of-context, Kintex-7 xc7k325t-2, Vivado 2018.2, Fmax = 1/(T - WNS) from a timing-met run.
5. Power from post-route SAIF (1792/1792 nets, confidence High) at 100 MHz; dynamic scales with frequency; static is device leakage.
6. Outputs are combinational (buffer-free); register-to-register Fmax is reported, I/O-limited Fmax is about 264 MHz.
7. No output back-pressure: the receiver must accept `data_out` whenever `data_out_valid = 1`.
8. Key is loaded for every message.

---

## 15. Open Items Before Submission

- [ ] Ablation table with the same flow (run `ascon_versions.tcl` for commits 4, 5, 6, optionally 1 to 3).
- [ ] Fill related-work numbers from the papers (Mohamed et al., ascon-verilog, AsconEdge, others).
- [ ] Optional: Artix-7 or other devices (add part to `PARTS` in `ascon_paper_reports.tcl`).
- [ ] Optional: ASIC numbers (not done).
- [ ] Optional: SAIF power with a long-message streaming workload.
- [ ] Device view and critical-path screenshots from `best_routed.dcp`.

---

## 16. File Locations (on the user's PC)

| What | Path |
|---|---|
| RTL | `E:\fyp_revision\kintex7\project_27\project_27.srcs\sources_1\new\ascon.v`, `permutation.v` |
| Testbench | `...\project_27.srcs\sim_1\new\tb_ascon.v` |
| All results | `E:\fyp_revision\kintex7\paper_results\` (`results_best.csv`, `sweep_all.csv`) |
| perf_fine reports | `...\paper_results\final_mask1__perf_fine__reg2reg__xc7k325tffg900-2\` (util, util_hier, timing_summary, crit_paths, logic_levels, design_analysis, control_sets, fanout, drc, methodology, power_at_fmax, power_at_100MHz, power_saif_100MHz, saif_sim.log, best_routed.dcp, postroute_funcsim.v, postroute.sdf, perf_fine.saif) |
| Scripts | `E:\fyp_revision\kintex7\ascon_paper_reports.tcl`, `ascon_finish.tcl`, `ascon_versions.tcl`, perf_fine folder: `run_saif_sim.bat`, `saif_sim.tcl`, `saif_power.tcl`, `tb_ascon_postroute.v` |

---

## Appendix A: Permutation RTL (`permutation.v`)

```verilog
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
// sbox5: Ascon 5-bit S-box as a 32-entry case table
// 04 0B 1F 14 1A 15 09 02 1B 05 08 12 1D 03 06 1C
// 1E 13 07 0E 00 0D 11 18 10 0C 01 19 16 0A 0F 17
endmodule
```

## Appendix B: Top-level RTL (`ascon.v`, Ascon_top)

```verilog
module Ascon_top #(parameter OUT_MASK = 1)(
    input  wire clk, rst,
    input  wire [127:0] data_in,
    input  wire [4:0]   data_len,
    input  wire data_valid, mode,
    output wire [127:0] data_out,
    output wire data_out_valid, data_ready, tag_match);

localparam [63:0] IV = 64'h00001000808c0001;
localparam ST_WAIT = 1'b0, ST_PERM = 1'b1;
localparam [1:0] PH_KEY = 2'd0, PH_NONCE = 2'd1, PH_AD = 2'd2, PH_PT = 2'd3;

reg st; reg [1:0] phase; reg [3:0] round_cnt; reg last_q;
reg [63:0] K0, K1, S0, S1, S2, S3, S4;
wire [63:0] S0_p, S1_p, S2_p, S3_p, S4_p;
wire [63:0] din_0 = data_in[63:0], din_1 = data_in[127:64];

// keep / pad masks from data_len (byte thermometer), pad byte 0x01
wire [15:0] keep_u, pad_u;   // keep_u[u] = (data_len > u); pad_u = first non-data byte
wire [127:0] keep, pad;      // keep per byte, pad = bit 0 of the first free byte
wire last     = ~data_len[4];
wire ad_first = last_q;
wire ad_skip  = ad_first & ~keep_u[0];

wire dec_pt = mode & (phase == PH_PT);
wire [63:0] abs_0 = (S0 & ~({64{dec_pt}} & keep[63:0]))   ^ (din_0 & keep[63:0])   ^ pad[63:0];
wire [63:0] abs_1 = (S1 & ~({64{dec_pt}} & keep[127:64])) ^ (din_1 & keep[127:64]) ^ pad[127:64];
wire [63:0] text_0 = S0 ^ din_0, text_1 = S1 ^ din_1;

wire pb_perm    = phase[1] & ~(phase[0] & last_q);
wire last_round = (round_cnt == 4'd11);
wire xk = last_round & ~pb_perm;
wire [63:0] S3_n = S3_p ^ (K0 & {64{xk}});
wire [63:0] S4_n = S4_p ^ (K1 & {64{xk}});

wire pt_out_en  = (st == ST_WAIT) && (phase == PH_PT) && data_valid;
wire tag_out_en = (st == ST_PERM) && (phase == PH_PT) && last_round && last_q && !mode;
wire verify_done_en = (st == ST_WAIT) && (phase == PH_KEY) && last_q && data_valid;
assign data_ready = (st == ST_WAIT);
assign tag_match  = verify_done_en & ({S4, S3} == data_in);
// data_out = tag (S4_n,S3_n) or masked keystream text; data_out_valid = pt_out_en | tag_out_en | verify_done_en

// Sequential (summary):
// WAIT+KEY   : load K0,K1 (or finish verify beat)        -> NONCE
// WAIT+NONCE : S = {IV, K0, K1, N0, N1}, last_q=1, rc=0  -> PERM p[12]
// WAIT+AD    : empty AD -> flip S4[63], go PT; else absorb, rc=4 -> PERM p[8]
// WAIT+PT    : absorb/replace; if last: S2^=K0, S3^=K1, rc=0 (p[12]) else rc=4 (p[8])
// PERM       : S <= round(S) (with key XOR on last round of p[12]); rc++ until 11
//   end of NONCE -> AD ; end of last AD -> S4[63] flip, PT ; end of last PT -> KEY (last_q = mode)
endmodule
```
(Full source: `ascon.v` in the project folder.)
