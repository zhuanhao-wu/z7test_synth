`timescale 1ns/100ps
module mymodule_sc_module_0 (
);
  logic [0:0] clk_scclang_global_0;
  logic [15:0] maxbits_scclang_global_1;
  logic [15:0] maxprec_scclang_global_2;
  logic [15:0] minbits_scclang_global_3;
  logic signed[15:0] minexp_scclang_global_4;
  logic [0:0] reset_scclang_global_5;
  logic [51:0] c_dut_fp_scclang_global_6_data_frac;
  logic [10:0] c_dut_fp_scclang_global_6_data_expo;
  logic [0:0] c_dut_fp_scclang_global_6_data_sign;
  logic [0:0] c_dut_fp_scclang_global_6_valid;
  logic [0:0] c_dut_fp_scclang_global_6_ready;
  logic [63:0] c_driver_enc_scclang_global_7_data_tdata;
  logic [0:0] c_driver_enc_scclang_global_7_data_tlast;
  logic [0:0] c_driver_enc_scclang_global_7_valid;
  logic [0:0] c_driver_enc_scclang_global_7_ready;
  initial begin
    minbits_scclang_global_3 = 128;
    maxbits_scclang_global_1 = 128;
    maxprec_scclang_global_2 = 64;
    minexp_scclang_global_4 = -(1074);
  end
  decode_sc_module_1 u_dut(
    .clk(clk_scclang_global_0),
    .reset(reset_scclang_global_5),
    .minbits(minbits_scclang_global_3),
    .maxbits(maxbits_scclang_global_1),
    .maxprec(maxprec_scclang_global_2),
    .minexp(minexp_scclang_global_4),
    .s_bits_data_tdata(c_driver_enc_scclang_global_7_data_tdata),
    .s_bits_data_tlast(c_driver_enc_scclang_global_7_data_tlast),
    .s_bits_valid(c_driver_enc_scclang_global_7_valid),
    .s_bits_ready(c_driver_enc_scclang_global_7_ready),
    .m_stream_data_frac(c_dut_fp_scclang_global_6_data_frac),
    .m_stream_data_expo(c_dut_fp_scclang_global_6_data_expo),
    .m_stream_data_sign(c_dut_fp_scclang_global_6_data_sign),
    .m_stream_valid(c_dut_fp_scclang_global_6_valid),
    .m_stream_ready(c_dut_fp_scclang_global_6_ready)
  );
  always @(*) begin
  end

endmodule
module decode_sc_module_1 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [15:0] maxbits,
  input logic [15:0] minbits,
  input logic [15:0] maxprec,
  input logic signed[15:0] minexp,
  input logic [63:0] s_bits_data_tdata,
  input logic [0:0] s_bits_data_tlast,
  input logic [0:0] s_bits_valid,
  output logic [0:0] s_bits_ready,
  output logic [51:0] m_stream_data_frac,
  output logic [10:0] m_stream_data_expo,
  output logic [0:0] m_stream_data_sign,
  output logic [0:0] m_stream_valid,
  input logic [0:0] m_stream_ready
);
  logic [63:0] c_b_m_block_scclang_global_0[0:15];
  logic [0:0] c_b_m_ready_scclang_global_1;
  logic [0:0] c_b_m_valid_scclang_global_2;
  logic [15:0] c_block_maxprec_scclang_global_3;
  logic signed[63:0] c_c_s_block_scclang_global_4[0:15];
  logic [0:0] c_c_s_ready_scclang_global_5;
  logic [0:0] c_c_s_valid_scclang_global_6;
  logic [63:0] c_i_m_block_scclang_global_7[0:15];
  logic [0:0] c_i_m_ready_scclang_global_8;
  logic [0:0] c_i_m_valid_scclang_global_9;
  logic signed[63:0] c_l_m_block_scclang_global_10[0:15];
  logic [0:0] c_l_m_ready_scclang_global_11;
  logic [0:0] c_l_m_valid_scclang_global_12;
  logic [63:0] _c_s_bits_scclang_global_13_data_tdata;
  logic [0:0] _c_s_bits_scclang_global_13_data_tlast;
  logic [0:0] _c_s_bits_scclang_global_13_valid;
  logic [0:0] _c_s_bits_scclang_global_13_ready;
  logic [5:0] c_bc_scclang_global_14_data;
  logic [0:0] c_bc_scclang_global_14_valid;
  logic [0:0] c_bc_scclang_global_14_ready;
  logic [31:0] c_bp_scclang_global_15_data;
  logic [0:0] c_bp_scclang_global_15_valid;
  logic [0:0] c_bp_scclang_global_15_ready;
  logic [0:0] c_shdr_scclang_global_16_data_zb;
  logic [10:0] c_shdr_scclang_global_16_data_exp;
  logic [0:0] c_shdr_scclang_global_16_valid;
  logic [0:0] c_shdr_scclang_global_16_ready;
  logic [0:0] c_fhdr_scclang_global_17_data_zb;
  logic [10:0] c_fhdr_scclang_global_17_data_exp;
  logic [0:0] c_fhdr_scclang_global_17_valid;
  logic [0:0] c_fhdr_scclang_global_17_ready;
  logic [0:0] c_blk_start_scclang_global_18_data;
  logic [0:0] c_blk_start_scclang_global_18_valid;
  logic [0:0] c_blk_start_scclang_global_18_ready;
  decode_stream_sc_module_2 u_decode_stream(
    .clk(clk),
    .reset(reset),
    .s_maxbits(maxbits),
    .s_maxprec(maxprec),
    .s_minbits(minbits),
    .s_minexp(minexp),
    .s_blk_start_data(c_blk_start_scclang_global_18_data),
    .s_blk_start_valid(c_blk_start_scclang_global_18_valid),
    .s_blk_start_ready(c_blk_start_scclang_global_18_ready),
    .s_bits_data_tdata(s_bits_data_tdata),
    .s_bits_data_tlast(s_bits_data_tlast),
    .s_bits_valid(s_bits_valid),
    .s_bits_ready(s_bits_ready),
    .s_bc_data(c_bc_scclang_global_14_data),
    .s_bc_valid(c_bc_scclang_global_14_valid),
    .s_bc_ready(c_bc_scclang_global_14_ready),
    .m_bp_data(c_bp_scclang_global_15_data),
    .m_bp_valid(c_bp_scclang_global_15_valid),
    .m_bp_ready(c_bp_scclang_global_15_ready),
    .m_bhdr_data_zb(c_shdr_scclang_global_16_data_zb),
    .m_bhdr_data_exp(c_shdr_scclang_global_16_data_exp),
    .m_bhdr_valid(c_shdr_scclang_global_16_valid),
    .m_bhdr_ready(c_shdr_scclang_global_16_ready),
    .m_block_maxprec(c_block_maxprec_scclang_global_3)
  );
  always @(*) begin
  end

  rvfifo_cc_sc_module_3 u_hfifo(
    .clk(clk),
    .reset(reset),
    .s_port_data_zb(c_shdr_scclang_global_16_data_zb),
    .s_port_data_exp(c_shdr_scclang_global_16_data_exp),
    .s_port_valid(c_shdr_scclang_global_16_valid),
    .s_port_ready(c_shdr_scclang_global_16_ready),
    .m_port_data_zb(c_fhdr_scclang_global_17_data_zb),
    .m_port_data_exp(c_fhdr_scclang_global_17_data_exp),
    .m_port_valid(c_fhdr_scclang_global_17_valid),
    .m_port_ready(c_fhdr_scclang_global_17_ready)
  );
  always @(*) begin
  end

  decode_ints_sc_module_4 u_decode_ints(
    .clk(clk),
    .reset(reset),
    .s_bp_data(c_bp_scclang_global_15_data),
    .s_bp_valid(c_bp_scclang_global_15_valid),
    .s_bp_ready(c_bp_scclang_global_15_ready),
    .s_maxbits(maxbits),
    .s_minbits(minbits),
    .s_maxprec(c_block_maxprec_scclang_global_3),
    .m_bc_data(c_bc_scclang_global_14_data),
    .m_bc_valid(c_bc_scclang_global_14_valid),
    .m_bc_ready(c_bc_scclang_global_14_ready),
    .m_blk_start_data(c_blk_start_scclang_global_18_data),
    .m_blk_start_valid(c_blk_start_scclang_global_18_valid),
    .m_blk_start_ready(c_blk_start_scclang_global_18_ready),
    .m_valid(c_i_m_valid_scclang_global_9),
    .m_ready(c_i_m_ready_scclang_global_8),
    .m_block('{ c_i_m_block_scclang_global_7[0],c_i_m_block_scclang_global_7[1],c_i_m_block_scclang_global_7[2],c_i_m_block_scclang_global_7[3],c_i_m_block_scclang_global_7[4],c_i_m_block_scclang_global_7[5],c_i_m_block_scclang_global_7[6],c_i_m_block_scclang_global_7[7],c_i_m_block_scclang_global_7[8],c_i_m_block_scclang_global_7[9],c_i_m_block_scclang_global_7[10],c_i_m_block_scclang_global_7[11],c_i_m_block_scclang_global_7[12],c_i_m_block_scclang_global_7[13],c_i_m_block_scclang_global_7[14],c_i_m_block_scclang_global_7[15] })
  );
  always @(*) begin
  end

  block_buffer_sc_module_5 u_block_buffer(
    .clk(clk),
    .reset(reset),
    .s_valid(c_i_m_valid_scclang_global_9),
    .s_ready(c_i_m_ready_scclang_global_8),
    .m_valid(c_b_m_valid_scclang_global_2),
    .m_ready(c_b_m_ready_scclang_global_1),
    .s_block('{ c_i_m_block_scclang_global_7[0],c_i_m_block_scclang_global_7[1],c_i_m_block_scclang_global_7[2],c_i_m_block_scclang_global_7[3],c_i_m_block_scclang_global_7[4],c_i_m_block_scclang_global_7[5],c_i_m_block_scclang_global_7[6],c_i_m_block_scclang_global_7[7],c_i_m_block_scclang_global_7[8],c_i_m_block_scclang_global_7[9],c_i_m_block_scclang_global_7[10],c_i_m_block_scclang_global_7[11],c_i_m_block_scclang_global_7[12],c_i_m_block_scclang_global_7[13],c_i_m_block_scclang_global_7[14],c_i_m_block_scclang_global_7[15] }),
    .m_block('{ c_b_m_block_scclang_global_0[0],c_b_m_block_scclang_global_0[1],c_b_m_block_scclang_global_0[2],c_b_m_block_scclang_global_0[3],c_b_m_block_scclang_global_0[4],c_b_m_block_scclang_global_0[5],c_b_m_block_scclang_global_0[6],c_b_m_block_scclang_global_0[7],c_b_m_block_scclang_global_0[8],c_b_m_block_scclang_global_0[9],c_b_m_block_scclang_global_0[10],c_b_m_block_scclang_global_0[11],c_b_m_block_scclang_global_0[12],c_b_m_block_scclang_global_0[13],c_b_m_block_scclang_global_0[14],c_b_m_block_scclang_global_0[15] })
  );
  always @(*) begin
  end

  decode_block_sc_module_6 u_decode_block(
    .clk(clk),
    .reset(reset),
    .s_valid(c_b_m_valid_scclang_global_2),
    .s_ready(c_b_m_ready_scclang_global_1),
    .m_valid(c_l_m_valid_scclang_global_12),
    .m_ready(c_l_m_ready_scclang_global_11),
    .s_block('{ c_b_m_block_scclang_global_0[0],c_b_m_block_scclang_global_0[1],c_b_m_block_scclang_global_0[2],c_b_m_block_scclang_global_0[3],c_b_m_block_scclang_global_0[4],c_b_m_block_scclang_global_0[5],c_b_m_block_scclang_global_0[6],c_b_m_block_scclang_global_0[7],c_b_m_block_scclang_global_0[8],c_b_m_block_scclang_global_0[9],c_b_m_block_scclang_global_0[10],c_b_m_block_scclang_global_0[11],c_b_m_block_scclang_global_0[12],c_b_m_block_scclang_global_0[13],c_b_m_block_scclang_global_0[14],c_b_m_block_scclang_global_0[15] }),
    .m_block('{ c_l_m_block_scclang_global_10[0],c_l_m_block_scclang_global_10[1],c_l_m_block_scclang_global_10[2],c_l_m_block_scclang_global_10[3],c_l_m_block_scclang_global_10[4],c_l_m_block_scclang_global_10[5],c_l_m_block_scclang_global_10[6],c_l_m_block_scclang_global_10[7],c_l_m_block_scclang_global_10[8],c_l_m_block_scclang_global_10[9],c_l_m_block_scclang_global_10[10],c_l_m_block_scclang_global_10[11],c_l_m_block_scclang_global_10[12],c_l_m_block_scclang_global_10[13],c_l_m_block_scclang_global_10[14],c_l_m_block_scclang_global_10[15] })
  );
  always @(*) begin
  end

  block_buffer_sc_module_7 u_cast_buffer(
    .clk(clk),
    .reset(reset),
    .s_valid(c_l_m_valid_scclang_global_12),
    .s_ready(c_l_m_ready_scclang_global_11),
    .m_valid(c_c_s_valid_scclang_global_6),
    .m_ready(c_c_s_ready_scclang_global_5),
    .s_block('{ c_l_m_block_scclang_global_10[0],c_l_m_block_scclang_global_10[1],c_l_m_block_scclang_global_10[2],c_l_m_block_scclang_global_10[3],c_l_m_block_scclang_global_10[4],c_l_m_block_scclang_global_10[5],c_l_m_block_scclang_global_10[6],c_l_m_block_scclang_global_10[7],c_l_m_block_scclang_global_10[8],c_l_m_block_scclang_global_10[9],c_l_m_block_scclang_global_10[10],c_l_m_block_scclang_global_10[11],c_l_m_block_scclang_global_10[12],c_l_m_block_scclang_global_10[13],c_l_m_block_scclang_global_10[14],c_l_m_block_scclang_global_10[15] }),
    .m_block('{ c_c_s_block_scclang_global_4[0],c_c_s_block_scclang_global_4[1],c_c_s_block_scclang_global_4[2],c_c_s_block_scclang_global_4[3],c_c_s_block_scclang_global_4[4],c_c_s_block_scclang_global_4[5],c_c_s_block_scclang_global_4[6],c_c_s_block_scclang_global_4[7],c_c_s_block_scclang_global_4[8],c_c_s_block_scclang_global_4[9],c_c_s_block_scclang_global_4[10],c_c_s_block_scclang_global_4[11],c_c_s_block_scclang_global_4[12],c_c_s_block_scclang_global_4[13],c_c_s_block_scclang_global_4[14],c_c_s_block_scclang_global_4[15] })
  );
  always @(*) begin
  end

  inv_cast_sc_module_8 u_inv_cast(
    .clk(clk),
    .reset(reset),
    .s_bhdr_data_zb(c_fhdr_scclang_global_17_data_zb),
    .s_bhdr_data_exp(c_fhdr_scclang_global_17_data_exp),
    .s_bhdr_valid(c_fhdr_scclang_global_17_valid),
    .s_bhdr_ready(c_fhdr_scclang_global_17_ready),
    .s_valid(c_c_s_valid_scclang_global_6),
    .s_ready(c_c_s_ready_scclang_global_5),
    .m_stream_data_frac(m_stream_data_frac),
    .m_stream_data_expo(m_stream_data_expo),
    .m_stream_data_sign(m_stream_data_sign),
    .m_stream_valid(m_stream_valid),
    .m_stream_ready(m_stream_ready),
    .s_block('{ c_c_s_block_scclang_global_4[0],c_c_s_block_scclang_global_4[1],c_c_s_block_scclang_global_4[2],c_c_s_block_scclang_global_4[3],c_c_s_block_scclang_global_4[4],c_c_s_block_scclang_global_4[5],c_c_s_block_scclang_global_4[6],c_c_s_block_scclang_global_4[7],c_c_s_block_scclang_global_4[8],c_c_s_block_scclang_global_4[9],c_c_s_block_scclang_global_4[10],c_c_s_block_scclang_global_4[11],c_c_s_block_scclang_global_4[12],c_c_s_block_scclang_global_4[13],c_c_s_block_scclang_global_4[14],c_c_s_block_scclang_global_4[15] })
  );
  always @(*) begin
  end

endmodule
module decode_stream_sc_module_2 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [15:0] s_minbits,
  input logic [15:0] s_maxbits,
  input logic [15:0] s_maxprec,
  input logic signed[15:0] s_minexp,
  input logic [0:0] s_blk_start_data,
  input logic [0:0] s_blk_start_valid,
  output logic [0:0] s_blk_start_ready,
  input logic [5:0] s_bc_data,
  input logic [0:0] s_bc_valid,
  output logic [0:0] s_bc_ready,
  input logic [63:0] s_bits_data_tdata,
  input logic [0:0] s_bits_data_tlast,
  input logic [0:0] s_bits_valid,
  output logic [0:0] s_bits_ready,
  output logic [15:0] m_block_maxprec,
  output logic [0:0] m_bhdr_data_zb,
  output logic [10:0] m_bhdr_data_exp,
  output logic [0:0] m_bhdr_valid,
  input logic [0:0] m_bhdr_ready,
  output logic [31:0] m_bp_data,
  output logic [0:0] m_bp_valid,
  input logic [0:0] m_bp_ready
);
  logic [0:0] b_c_scclang_global_0_f[0:3];
  logic [31:0] b_c_scclang_global_0_w[0:3];
  logic [15:0] bits_scclang_global_1;
  logic signed[15:0] c_rembits_scclang_global_2;
  logic [5:0] c_wordoff_scclang_global_3;
  logic [0:0] csync_scclang_global_4;
  logic [15:0] minbits_scclang_global_5;
  logic [0:0] skpbts_scclang_global_6 = 0;
  logic [63:0] c_s_bfifo_scclang_global_7_data_tdata;
  logic [0:0] c_s_bfifo_scclang_global_7_data_tlast;
  logic [0:0] c_s_bfifo_scclang_global_7_valid;
  logic [0:0] c_s_bfifo_scclang_global_7_ready;
  logic [63:0] c_m_bfifo_scclang_global_8_data_tdata;
  logic [0:0] c_m_bfifo_scclang_global_8_data_tlast;
  logic [0:0] c_m_bfifo_scclang_global_8_valid;
  logic [0:0] c_m_bfifo_scclang_global_8_ready;
  logic [5:0] bitoff_actual_scclang_global_9;
  logic [10:0] maxexp_actual_scclang_global_10;
  logic [0:0] _zb_actual_scclang_global_11;
  logic [10:0] _exp_actual_scclang_global_12;
  rvfifo_cc_sc_module_9 u_bfifo(
    .clk(clk),
    .reset(reset),
    .s_port_data_tdata(c_s_bfifo_scclang_global_7_data_tdata),
    .s_port_data_tlast(c_s_bfifo_scclang_global_7_data_tlast),
    .s_port_valid(c_s_bfifo_scclang_global_7_valid),
    .s_port_ready(c_s_bfifo_scclang_global_7_ready),
    .m_port_data_tdata(c_m_bfifo_scclang_global_8_data_tdata),
    .m_port_data_tlast(c_m_bfifo_scclang_global_8_data_tlast),
    .m_port_valid(c_m_bfifo_scclang_global_8_valid),
    .m_port_ready(c_m_bfifo_scclang_global_8_ready)
  );
  always @(*) begin
  end

  initial begin

  end

  always @(s_bits_valid or s_bits_data_tdata or s_bits_data_tlast or s_bc_valid or c_s_bfifo_scclang_global_7_ready or m_bhdr_ready or m_bp_ready or b_c_scclang_global_0_f[(0)] or b_c_scclang_global_0_w[(0)] or b_c_scclang_global_0_f[(1)] or b_c_scclang_global_0_w[(1)] or b_c_scclang_global_0_f[(2)] or b_c_scclang_global_0_w[(2)] or b_c_scclang_global_0_f[(3)] or b_c_scclang_global_0_w[(3)] or s_minbits or s_maxbits or s_maxprec or s_minexp or s_blk_start_valid or s_blk_start_data or c_rembits_scclang_global_2) begin: mc_proc
    logic [0:0] _s_blk_cycle_mc_proc_local_3;
    logic [0:0] stall_for_fifo_mc_proc_local_4;
    logic [0:0] stall_for_exp_mc_proc_local_5;
    
    _s_blk_cycle_mc_proc_local_3 = ((s_blk_start_data) == (1)) && (s_blk_start_valid);
    stall_for_fifo_mc_proc_local_4 = !(b_c_scclang_global_0_f[1]);
    stall_for_exp_mc_proc_local_5 = (_s_blk_cycle_mc_proc_local_3) & (!(m_bhdr_ready));
    csync_scclang_global_4 <= (stall_for_fifo_mc_proc_local_4) || (stall_for_exp_mc_proc_local_5);
    c_s_bfifo_scclang_global_7_data_tdata <= s_bits_data_tdata;
    c_s_bfifo_scclang_global_7_data_tlast <= s_bits_data_tlast;
    s_bits_ready <= c_s_bfifo_scclang_global_7_ready;
    c_s_bfifo_scclang_global_7_valid <= s_bits_valid;
  end
  always_ff @(negedge clk) begin: ms_proc
    logic [0:0] b_wrk_ms_proc_local_6_f[0:3];
    logic [31:0] b_wrk_ms_proc_local_6_w[0:3];
    logic [5:0] w_wordoff_ms_proc_local_7;
    logic [0:0] _s_blk_cycle_ms_proc_local_8;
    // https://urldefense.com/v3/__https://github.com/anikau31/systemc-clang/blob/master/examples/llnl-examples/zfpsynth/shared3/zhw_decode.h*L922__;Iw!!Mih3wA!G3IbhbntvzLU45okFzV-5b0o7Yv_NsGcx7ugvnsivz2l_7YxltDfD7VCgWhBKcMeQF1vezi5w_QA1qIixaw$ 
    logic [0:0] bhdr_ms_proc_local_9_zb = 1;
    logic [10:0] bhdr_ms_proc_local_9_exp = 0;

    logic signed[15:0] w_rembits_ms_proc_local_10; // sconfig_t w_rembits;
    logic signed[15:0] dreg_bits_ms_proc_local_11 = 0;
    logic [10:0] blockexpt_ms_proc_local_12;
    logic [31:0] planewdw_ms_proc_local_13;
    logic [10:0] bhdr_ms_proc_local_9_exp__ref_0;
    logic [0:0] bhdr_ms_proc_local_9_zb__ref_0;
    logic [0:0] b_wrk_ms_proc_local_6_f__ref_0[0:3];
    logic [31:0] b_wrk_ms_proc_local_6_w__ref_0[0:3];
    integer i;
    
    b_wrk_ms_proc_local_6_w__ref_0 = b_wrk_ms_proc_local_6_w;
    b_wrk_ms_proc_local_6_f__ref_0 = b_wrk_ms_proc_local_6_f;
    bhdr_ms_proc_local_9_zb__ref_0 = bhdr_ms_proc_local_9_zb;
    $display("bhdr_ms_proc_local_9_zb__ref_0: %b", bhdr_ms_proc_local_9_zb__ref_0);
    bhdr_ms_proc_local_9_exp__ref_0 = bhdr_ms_proc_local_9_exp;
    if ((reset) == (0)) begin
      minbits_scclang_global_5 <= (s_maxbits) - (s_minbits);
      c_m_bfifo_scclang_global_8_ready <= 0;
      s_bc_ready <= 0;
      m_bp_valid <= 0;
      c_wordoff_scclang_global_3 <= 0;
      c_rembits_scclang_global_2 <= 0;
      for(integer i = 0; i < 4; i = i + 1) begin
        b_c_scclang_global_0_f[i] <= 0;
        b_c_scclang_global_0_w[i] <= 0;
      end
      bits_scclang_global_1 <= 0;
      $display("resetting...");
    end else begin
      $display("ds-ms-proc - delta: x, time: %t", $time);
      b_wrk_ms_proc_local_6_f__ref_0 = {b_c_scclang_global_0_f[0],b_c_scclang_global_0_f[1],b_c_scclang_global_0_f[2],b_c_scclang_global_0_f[3]};
      b_wrk_ms_proc_local_6_w__ref_0 = {b_c_scclang_global_0_w[0],b_c_scclang_global_0_w[1],b_c_scclang_global_0_w[2],b_c_scclang_global_0_w[3]};
      w_wordoff_ms_proc_local_7 = c_wordoff_scclang_global_3;
      $display("ds - c_wordoff_scclang_global_3: %x", c_wordoff_scclang_global_3);
      _s_blk_cycle_ms_proc_local_8 = ((s_blk_start_data) == (1)) && (s_blk_start_valid);
      // bhdr_ms_proc_local_9_zb__ref_0 = 0;
      // bhdr_ms_proc_local_9_exp__ref_0 = 0;
      $display("ds: csync: %b, _s_blk_cycle: %b, skpbts: %b", 
        csync_scclang_global_4, 
        _s_blk_cycle_ms_proc_local_8, 
        skpbts_scclang_global_6);
      if ((!(csync_scclang_global_4)) && ((_s_blk_cycle_ms_proc_local_8) || (skpbts_scclang_global_6))) begin
        $display("if-1");
        w_rembits_ms_proc_local_10 = c_rembits_scclang_global_2;
        if ((w_rembits_ms_proc_local_10) > (0)) begin
          $display("if-2");
          if ((w_rembits_ms_proc_local_10) / (32)) begin
        $display("if-3");
            dreg_bits_ms_proc_local_11 = 32;
            zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,dreg_bits_ms_proc_local_11,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0);
          end else begin
            $display("if-4");
            dreg_bits_ms_proc_local_11 = (w_rembits_ms_proc_local_10) % (32);
            zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,(dreg_bits_ms_proc_local_11) + (1),b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0);
          end

          c_rembits_scclang_global_2 <= (w_rembits_ms_proc_local_10) - (dreg_bits_ms_proc_local_11);
          if ((w_rembits_ms_proc_local_10) > (32)) begin
            $display("if-5");
            skpbts_scclang_global_6 <= 1;
          end else begin
            $display("if-6");
            c_wordoff_scclang_global_3 <= ((dreg_bits_ms_proc_local_11) + (1)) % (32);
            skpbts_scclang_global_6 <= 0;
          end

        end else begin
        $display("if-7");
          skpbts_scclang_global_6 <= 0;
        end

      end
      if ((((!(csync_scclang_global_4)) && (_s_blk_cycle_ms_proc_local_8)) && (!(skpbts_scclang_global_6))) && ((m_bp_ready) && (s_bc_valid))) begin
        $display("if-8");
        w_rembits_ms_proc_local_10 = s_maxbits;
        $display("w_wordoff_ms_proc_local_7: %x, s_bc_data: %x", w_wordoff_ms_proc_local_7, s_bc_data);
        w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) + (s_bc_data);
        $display("w_wordoff_ms_proc_local_7: %x", w_wordoff_ms_proc_local_7);
        // zhw__set_zb_func_1(bhdr_ms_proc_local_9_zb__ref_0,bhdr_ms_proc_local_9_exp__ref_0,!((zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,w_wordoff_ms_proc_local_7,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0)) & (1)),bhdr_ms_proc_local_9_zb__ref_0,bhdr_ms_proc_local_9_exp__ref_0);
        $display("bhdr_ms_proc_local_9_zb__ref_0: %b", bhdr_ms_proc_local_9_zb__ref_0);
        zhw__set_zb_func_1(bhdr_ms_proc_local_9_zb,bhdr_ms_proc_local_9_exp,!((zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,w_wordoff_ms_proc_local_7,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0)) & (1)),bhdr_ms_proc_local_9_zb__ref_0,bhdr_ms_proc_local_9_exp__ref_0);
        $display("w_wordoff_ms_proc_local_7: %x", w_wordoff_ms_proc_local_7);
        w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) + (1);
        $display("w_wordoff_ms_proc_local_7: %x", w_wordoff_ms_proc_local_7);
        w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) % (32);
        $display("w_wordoff_ms_proc_local_7: %x", w_wordoff_ms_proc_local_7);
        w_rembits_ms_proc_local_10 = (w_rembits_ms_proc_local_10) - (1);
        $display("w_rembits_ms_proc_local_10: %x", w_rembits_ms_proc_local_10);
        $display("bhdr_ms_proc_local_9_zb__ref_0: %b", bhdr_ms_proc_local_9_zb__ref_0);
        $display("bhdr_ms_proc_local_9_zb: %b", bhdr_ms_proc_local_9_zb);
        if (!(bhdr_ms_proc_local_9_zb__ref_0)) begin
          $display("if-9");
          blockexpt_ms_proc_local_12 = zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,w_wordoff_ms_proc_local_7,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0);
          $display("ds: blockexpt_ms_proc_local_12: %x", blockexpt_ms_proc_local_12);
          w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) + (11);
          w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) % (32);
          w_rembits_ms_proc_local_10 = (w_rembits_ms_proc_local_10) - (11);
          blockexpt_ms_proc_local_12 = (blockexpt_ms_proc_local_12) - (1023);
          $display("ds: blockexpt_ms_proc_local_12: %x", blockexpt_ms_proc_local_12);
          m_block_maxprec <= zhw__decode_streamfp_t11_52_bits_t64_2__get_block_maxprec_func_2(blockexpt_ms_proc_local_12);
          zhw__set_exp_func_3(bhdr_ms_proc_local_9_zb__ref_0,bhdr_ms_proc_local_9_exp__ref_0,blockexpt_ms_proc_local_12,bhdr_ms_proc_local_9_zb__ref_0,bhdr_ms_proc_local_9_exp__ref_0);
          s_blk_start_ready <= 1;
        end else begin
        $display("if-10");
          m_bp_valid <= 0;
          s_bc_ready <= 0;
          skpbts_scclang_global_6 <= 1;
        end

        c_wordoff_scclang_global_3 <= w_wordoff_ms_proc_local_7;
        c_rembits_scclang_global_2 <= w_rembits_ms_proc_local_10;
        $display("Resulting c_rembits_scclang_global_2: %x", w_rembits_ms_proc_local_10);
        m_bhdr_data_zb <= bhdr_ms_proc_local_9_zb__ref_0;
        m_bhdr_data_exp <= bhdr_ms_proc_local_9_exp__ref_0;
        m_bhdr_valid <= 1;
      end else begin
        $display("if-11");
        if (m_bhdr_ready) begin
        $display("if-12");
          m_bhdr_valid <= 0;
        end
        s_blk_start_ready <= 0;
      end

      if ((((!(csync_scclang_global_4)) && ((!(_s_blk_cycle_ms_proc_local_8)) || (!(bhdr_ms_proc_local_9_zb__ref_0)))) && (!(skpbts_scclang_global_6))) && ((m_bp_ready) && (s_bc_valid))) begin
        $display("if-13");
        w_rembits_ms_proc_local_10 = (c_rembits_scclang_global_2) - (s_bc_data);
        if (!(_s_blk_cycle_ms_proc_local_8)) begin
        $display("if-14");
          w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) + (s_bc_data);
        end
        planewdw_ms_proc_local_13 = zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,w_wordoff_ms_proc_local_7,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0);
        w_wordoff_ms_proc_local_7 = (w_wordoff_ms_proc_local_7) % (32);
        m_bp_data <= planewdw_ms_proc_local_13;
        m_bp_valid <= 1;
        s_bc_ready <= 1;
        c_wordoff_scclang_global_3 <= w_wordoff_ms_proc_local_7;
        c_rembits_scclang_global_2 <= w_rembits_ms_proc_local_10;
      end else begin
        $display("if-15");
        if ((m_bp_ready) || (s_bc_valid)) begin
        $display("if-16");
        $display("m_bp_ready: %b, s_bc_valid: %b", m_bp_ready, s_bc_valid);
          m_bp_valid <= 0;
          s_bc_ready <= 0;
        end
      end

      c_m_bfifo_scclang_global_8_ready <= zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4(b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0,b_wrk_ms_proc_local_6_f__ref_0,b_wrk_ms_proc_local_6_w__ref_0);
    end

    bhdr_ms_proc_local_9_exp = bhdr_ms_proc_local_9_exp__ref_0;
    bhdr_ms_proc_local_9_zb = bhdr_ms_proc_local_9_zb__ref_0;
    b_wrk_ms_proc_local_6_f = b_wrk_ms_proc_local_6_f__ref_0;
    b_wrk_ms_proc_local_6_w = b_wrk_ms_proc_local_6_w__ref_0;
  end
  function automatic logic [0:0] zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4 (input logic [0:0] pb_c_f[0:3], input logic [31:0] pb_c_w[0:3], inout logic [0:0] pb_c_f__ref_0[0:3], inout logic [31:0] pb_c_w__ref_0[0:3]);
  begin
    logic signed[31:0] reg_thresh_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_14;
    logic [63:0] word_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_15_tdata;
    logic [0:0] word_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_15_tlast;
    logic [0:0] w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f[0:1] = '{1'b0, 1'b0};
    logic [31:0] w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_w[0:1] = '{32'b0, 32'b0};
    logic [0:0] empty_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_17_f;
    logic [31:0] empty_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_17_w;
    logic [0:0] tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[0:3];
    logic [31:0] tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[0:3];
    logic [0:0] read_data_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_19;
    logic [63:0] i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20;
    logic [2:0] srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21;
    logic [2:0] tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22;
    logic [63:0] i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23;
    integer i;
    // $display("invocation to refresh_next_bs_regs_func_4()");
    // $display("input pb_c_f: %p", pb_c_f);
    // $display("input pb_c_w: %p", pb_c_w);
    // $display("inout pb_c_f__ref_0: %p", pb_c_f__ref_0);
    // $display("inout pb_c_w__ref_0: %p", pb_c_w__ref_0);
    // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);

    // resetting f and w
    for(i = 0; i < 4; i = i + 1) begin : reset_tmp
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[i] = 0;
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[i] = 0;
    end


    reg_thresh_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_14 = 3;
    word_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_15_tdata = c_m_bfifo_scclang_global_8_data_tdata;
    word_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_15_tlast = c_m_bfifo_scclang_global_8_data_tlast;
    read_data_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_19 = 0;
    // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);
    if (c_m_bfifo_scclang_global_8_valid) begin
      // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);
      if (c_m_bfifo_scclang_global_8_ready) begin
        for (i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20 = 0;(i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20) < ((64) / (32));i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20++) begin
          w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f[i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20] = 1;
          w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_w[i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20] = (word_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_15_tdata) >>> ((32) * (i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_20));
        end
      end
      for (srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21 = 0;(srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21) < (4);srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21++) begin
        if (pb_c_f[srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21]) begin
          break;
        end
      end
      // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);
      for (tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22 = 0;(tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22) < (4);tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22++) begin
        if ((srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21) >= (4)) begin
          break;
        end
        if (!(pb_c_f[srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21])) begin
          break;
        end else begin
          tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22] = pb_c_f[srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21];
          tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22] = pb_c_w[srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21];
          srcreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_21++;
        end

      end
      // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);
      // $display("tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22: %d", tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22);
      if ((tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22) < (3)) begin
        // $display(" < 3 case hit");
        // $display("w_f: %p", w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f);
        for (i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23 = 0;(i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23) < ((64) / (32));i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23++) begin
          // $display("i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23: %d", i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23);
          tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22] = w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_f[i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23];
          tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22] = w_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_16_w[i_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_23];
          tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22++;
        end
      end
    end else begin
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[0] = pb_c_f[0];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[0] = pb_c_w[0];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[1] = pb_c_f[1];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[1] = pb_c_w[1];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[2] = pb_c_f[2];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[2] = pb_c_w[2];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[3] = pb_c_f[3];
      tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[3] = pb_c_w[3];
    end
    // $display("tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22: %d", tgtreg_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_22);
    for(i = 0; i < 4; i = i + 1) begin
      // $display("tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[%d]: %x", i, tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[i]);
    end

    b_c_scclang_global_0_f[0] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[0];
    b_c_scclang_global_0_w[0] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[0];
    b_c_scclang_global_0_f[1] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[1];
    b_c_scclang_global_0_w[1] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[1];
    b_c_scclang_global_0_f[2] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[2];
    b_c_scclang_global_0_w[2] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[2];
    b_c_scclang_global_0_f[3] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[3];
    b_c_scclang_global_0_w[3] <= tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_w[3];
    if (!(tmp_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_18_f[2])) begin
      read_data_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_19 = 1;
    end else begin
      read_data_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_19 = 0;
    end

    return read_data_zhw__decode_streamfp_t11_52_bits_t64_2__refresh_next_bs_regs_func_4_local_19;
  end
  endfunction
  function automatic logic [31:0] zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0 (input logic [0:0] wb_c_f[0:3], input logic [31:0] wb_c_w[0:3], input logic [5:0] bitoff, inout logic [0:0] wb_c_f__ref_0[0:3], inout logic [31:0] wb_c_w__ref_0[0:3]);
  begin
    logic [1:0] wordoff__local_24;
    logic signed[31:0] i__local_25;
    logic [31:0] b1__local_26;
    logic [31:0] b2__local_27;
    logic [31:0] window__local_28;
    logic [1:0] i__local_29;
    logic [5:0] b1rshift__local_30;
    logic [5:0] b2lshift__local_31;
    // $display("invocation to zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0();");
    // $display("wb_c_f: %p", wb_c_f);
    // $display("wb_c_w: %p", wb_c_w);
    // $display("bitoff: %x", bitoff);
    bitoff_actual_scclang_global_9 = bitoff;
    wordoff__local_24 = (bitoff_actual_scclang_global_9) / (32);
    for (i__local_25 = 0;(i__local_25) < (4);i__local_25++) begin
      if (!(wb_c_f[i__local_25])) begin
        wordoff__local_24++;
      end
      if (wb_c_f[i__local_25]) begin
        break;
      end
    end
    // $display("wordoff__local_24: %x", wordoff__local_24);
    b1__local_26 = wb_c_w[wordoff__local_24];
    b2__local_27 = wb_c_w[(wordoff__local_24) + (1)];
    for (i__local_29 = 2'd0;(i__local_29) < (wordoff__local_24);i__local_29++) begin
      wb_c_f__ref_0[i__local_29] = 0;
    end
    b1rshift__local_30 = (bitoff_actual_scclang_global_9) % (32);
    b2lshift__local_31 = (32) - (b1rshift__local_30);
    window__local_28 = ((b1__local_26) >>> (b1rshift__local_30)) | ((b2__local_27) << (b2lshift__local_31));
    $display(" b1__local_26: %x", b1__local_26);
    $display(" b1rshift__local_30: %x", b1rshift__local_30);
    $display(" b2__local_27: %x", b2__local_27);
    $display(" b2lshift__local_31: %x", b2lshift__local_31);
    return window__local_28;
  end
  endfunction
  /* original one
  function automatic logic [31:0] zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0 (input logic [0:0] wb_c_f[0:3], input logic [31:0] wb_c_w[0:3], input logic [5:0] bitoff, inout logic [0:0] wb_c_f__ref_0[0:3], inout logic [31:0] wb_c_w__ref_0[0:3]);
  begin
    https://urldefense.com/v3/__https://github.com/anikau31/systemc-clang/blob/master/examples/llnl-examples/zfpsynth/shared3/zhw_decode.h*L1097__;Iw!!Mih3wA!G3IbhbntvzLU45okFzV-5b0o7Yv_NsGcx7ugvnsivz2l_7YxltDfD7VCgWhBKcMeQF1vezi5w_QAb0hs-fE$ 
    logic [1:0] wordoff__local_24;
    logic signed[31:0] i__local_25;
    logic [31:0] b1__local_26;
    logic [31:0] b2__local_27;
    logic [31:0] window__local_28;
    logic [1:0] i__local_29;
    logic [5:0] b1rshift__local_30;
    logic [5:0] b2lshift__local_31;
    $display("invocation to zhw__decode_streamfp_t11_52_bits_t64_2__get_window_func_0();");
    $display("wb_c_f: %p", wb_c_f);
    $display("wb_c_w: %p", wb_c_w);
    $display("bitoff: %x", bitoff);
    bitoff_actual_scclang_global_9 = bitoff;
    wordoff__local_24 = (bitoff_actual_scclang_global_9) / (32);
    for (i__local_25 = 0;(i__local_25) < (4);i__local_25++) begin
      if (!(wb_c_f[i__local_25])) begin
        wordoff__local_24++;
      end
      if (wb_c_f[i__local_25]) begin
        break;
      end
    end
    $display(" wordoff__local_24: %x", wordoff__local_24);
    for (i__local_29 = 2'd0;(i__local_29) < (wordoff__local_24);i__local_29++) begin
      wb_c_f__ref_0[i__local_29] = 0;
    end
    b1rshift__local_30 = (bitoff_actual_scclang_global_9) % (32);
    b2lshift__local_31 = (32) - (b1rshift__local_30);
    window__local_28 = ((b1__local_26) >>> (b1rshift__local_30)) | ((b2__local_27) << (b2lshift__local_31));
    $display(" b1__local_26: %x", b1__local_26);
    $display(" b1rshift__local_30: %x", b1rshift__local_30);
    $display(" b2__local_27: %x", b2__local_27);
    $display(" b2lshift__local_31: %x", b2lshift__local_31);
    return window__local_28;
  end
  endfunction
  */
  function automatic logic [15:0] zhw__decode_streamfp_t11_52_bits_t64_2__get_block_maxprec_func_2 (input logic [10:0] maxexp);
  begin
    logic signed[15:0] _MAX__local_32;
    $display("invocation: get_block_maxprec()");
    $display("maxexp: %x", maxexp);
    maxexp_actual_scclang_global_10 = maxexp;
    _MAX__local_32 = (((maxexp_actual_scclang_global_10) - (s_minexp)) + ((2) * (2))) + (2);
    if ((_MAX__local_32) < (0)) begin
      _MAX__local_32 = 0;
    end
    if ((_MAX__local_32) < (s_maxprec)) begin
      return _MAX__local_32;
    end else begin
      return s_maxprec;
    end

  end
  endfunction
  function automatic void zhw__set_zb_func_1 (input logic [0:0] blk_hdr_zb, input logic [10:0] blk_hdr_exp, input logic [0:0] _zb, inout logic [0:0] blk_hdr_zb__ref_0, inout logic [10:0] blk_hdr_exp__ref_0);
  begin
    $display("invocation: zhw__set_zb_funct_1()");
    $display("blk_hdr_zb: %b", blk_hdr_zb);
    $display("blk_hdr_exp: %x", blk_hdr_exp);
    $display("_zb: %b", _zb);
    _zb_actual_scclang_global_11 = _zb;
    blk_hdr_zb__ref_0 = _zb_actual_scclang_global_11;
  end
  endfunction
  function automatic void zhw__set_exp_func_3 (input logic [0:0] blk_hdr_zb, input logic [10:0] blk_hdr_exp, input logic [10:0] _exp, inout logic [0:0] blk_hdr_zb__ref_0, inout logic [10:0] blk_hdr_exp__ref_0);
  begin

    _exp_actual_scclang_global_12 = _exp;
    blk_hdr_exp__ref_0 = _exp_actual_scclang_global_12;
  end
  endfunction
endmodule
module rvfifo_cc_sc_module_9 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [63:0] s_port_data_tdata,
  input logic [0:0] s_port_data_tlast,
  input logic [0:0] s_port_valid,
  output logic [0:0] s_port_ready,
  output logic [63:0] m_port_data_tdata,
  output logic [0:0] m_port_data_tlast,
  output logic [0:0] m_port_valid,
  input logic [0:0] m_port_ready
);
  logic signed[31:0] MAX_DEPTH_scclang_global_0 = 4;
  fifo_cc_sc_module_10 u_fifo(
    .clk(clk),
    .reset(reset),
    .din_tdata(s_port_data_tdata),
    .din_tlast(s_port_data_tlast),
    .wr_en(s_port_valid),
    .full(s_port_ready),
    .dout_tdata(m_port_data_tdata),
    .dout_tlast(m_port_data_tlast),
    .rd_en(m_port_ready),
    .empty(m_port_valid)
  );
  always @(*) begin
  end

endmodule
module fifo_cc_sc_module_10 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [63:0] din_tdata,
  input logic [0:0] din_tlast,
  input logic [0:0] wr_en,
  input logic [0:0] rd_en,
  output logic [0:0] full,
  output logic [63:0] dout_tdata,
  output logic [0:0] dout_tlast,
  output logic [0:0] empty
);
  logic [63:0] data_scclang_global_0_tdata[0:3];
  logic [0:0] data_scclang_global_0_tlast[0:3];
  logic [0:0] empty_i_scclang_global_1;
  logic [0:0] full_i_scclang_global_2;
  logic [0:0] rd_en_i_scclang_global_3;
  logic [1:0] rd_idx_scclang_global_4;
  logic [0:0] wr_en_i_scclang_global_5;
  logic [1:0] wr_idx_scclang_global_6;
  logic signed[31:0] MAX_DEPTH_scclang_global_7 = 4;
  initial begin
    if ((4) <= (0)) begin
    end
  end
  always @(wr_en or rd_en or full_i_scclang_global_2 or empty_i_scclang_global_1 or rd_idx_scclang_global_4 or data_scclang_global_0_tdata[(0)] or data_scclang_global_0_tlast[(0)] or data_scclang_global_0_tdata[(1)] or data_scclang_global_0_tlast[(1)] or data_scclang_global_0_tdata[(2)] or data_scclang_global_0_tlast[(2)] or data_scclang_global_0_tdata[(3)] or data_scclang_global_0_tlast[(3)]) begin: mc_proc
    
    
    if (1) begin
      dout_tdata <= data_scclang_global_0_tdata[rd_idx_scclang_global_4];
      dout_tlast <= data_scclang_global_0_tlast[rd_idx_scclang_global_4];
    end
    wr_en_i_scclang_global_5 <= (wr_en) && (!(full_i_scclang_global_2));
    rd_en_i_scclang_global_3 <= (rd_en) && (!(empty_i_scclang_global_1));
    full <= (full_i_scclang_global_2) == (0);
    empty <= (empty_i_scclang_global_1) == (0);
  end
  always_ff @(posedge clk) begin: ms_proc
    logic [1:0] wr_inc_ms_proc_local_3;
    logic [1:0] rd_inc_ms_proc_local_4;
    logic [31:0] i_ms_proc_local_5;
    
    wr_inc_ms_proc_local_3 = ((wr_idx_scclang_global_6) + (1)) % (4);
    rd_inc_ms_proc_local_4 = ((rd_idx_scclang_global_4) + (1)) % (4);
    if ((reset) == (0)) begin
      if (!(1)) begin
        dout_tdata <= 0;
        dout_tlast <= 0;
      end
      for (i_ms_proc_local_5 = 0;(i_ms_proc_local_5) < (4);i_ms_proc_local_5++) begin
        data_scclang_global_0_tdata[i_ms_proc_local_5] <= 0;
        data_scclang_global_0_tlast[i_ms_proc_local_5] <= 0;
      end
      rd_idx_scclang_global_4 <= 2'd0;
      wr_idx_scclang_global_6 <= 2'd0;
      full_i_scclang_global_2 <= 0;
      empty_i_scclang_global_1 <= 1;
    end else begin
      if (!(1)) begin
        if (rd_en_i_scclang_global_3) begin
          dout_tdata <= data_scclang_global_0_tdata[rd_idx_scclang_global_4];
          dout_tlast <= data_scclang_global_0_tlast[rd_idx_scclang_global_4];
        end
      end
      if (wr_en_i_scclang_global_5) begin
        data_scclang_global_0_tdata[wr_idx_scclang_global_6] <= din_tdata;
        data_scclang_global_0_tlast[wr_idx_scclang_global_6] <= din_tlast;
        wr_idx_scclang_global_6 <= wr_inc_ms_proc_local_3;
        if (!(rd_en_i_scclang_global_3)) begin
          if ((wr_inc_ms_proc_local_3) == (rd_idx_scclang_global_4)) begin
            full_i_scclang_global_2 <= 1;
          end
          empty_i_scclang_global_1 <= 0;
        end
      end
      if (rd_en_i_scclang_global_3) begin
        rd_idx_scclang_global_4 <= rd_inc_ms_proc_local_4;
        if (!(wr_en_i_scclang_global_5)) begin
          full_i_scclang_global_2 <= 0;
          if ((rd_inc_ms_proc_local_4) == (wr_idx_scclang_global_6)) begin
            empty_i_scclang_global_1 <= 1;
          end
        end
      end
    end

  end
endmodule
module rvfifo_cc_sc_module_3 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [0:0] s_port_data_zb,
  input logic [10:0] s_port_data_exp,
  input logic [0:0] s_port_valid,
  output logic [0:0] s_port_ready,
  output logic [0:0] m_port_data_zb,
  output logic [10:0] m_port_data_exp,
  output logic [0:0] m_port_valid,
  input logic [0:0] m_port_ready
);
  logic signed[31:0] MAX_DEPTH_scclang_global_0 = 4;
  fifo_cc_sc_module_11 u_fifo(
    .clk(clk),
    .reset(reset),
    .din_zb(s_port_data_zb),
    .din_exp(s_port_data_exp),
    .wr_en(s_port_valid),
    .full(s_port_ready),
    .dout_zb(m_port_data_zb),
    .dout_exp(m_port_data_exp),
    .rd_en(m_port_ready),
    .empty(m_port_valid)
  );
  always @(*) begin
  end

endmodule
module fifo_cc_sc_module_11 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [0:0] din_zb,
  input logic [10:0] din_exp,
  input logic [0:0] wr_en,
  input logic [0:0] rd_en,
  output logic [0:0] full,
  output logic [0:0] dout_zb,
  output logic [10:0] dout_exp,
  output logic [0:0] empty
);
  logic [0:0] data_scclang_global_0_zb[0:3];
  logic [10:0] data_scclang_global_0_exp[0:3];
  logic [0:0] empty_i_scclang_global_1;
  logic [0:0] full_i_scclang_global_2;
  logic [0:0] rd_en_i_scclang_global_3;
  logic [1:0] rd_idx_scclang_global_4;
  logic [0:0] wr_en_i_scclang_global_5;
  logic [1:0] wr_idx_scclang_global_6;
  logic signed[31:0] MAX_DEPTH_scclang_global_7 = 4;
  initial begin
    if ((4) <= (0)) begin
    end
  end
  always @(wr_en or rd_en or full_i_scclang_global_2 or empty_i_scclang_global_1 or rd_idx_scclang_global_4 or data_scclang_global_0_zb[(0)] or data_scclang_global_0_exp[(0)] or data_scclang_global_0_zb[(1)] or data_scclang_global_0_exp[(1)] or data_scclang_global_0_zb[(2)] or data_scclang_global_0_exp[(2)] or data_scclang_global_0_zb[(3)] or data_scclang_global_0_exp[(3)]) begin: mc_proc
    
    
    if (1) begin
      dout_zb <= data_scclang_global_0_zb[rd_idx_scclang_global_4];
      dout_exp <= data_scclang_global_0_exp[rd_idx_scclang_global_4];
    end
    wr_en_i_scclang_global_5 <= (wr_en) && (!(full_i_scclang_global_2));
    rd_en_i_scclang_global_3 <= (rd_en) && (!(empty_i_scclang_global_1));
    full <= (full_i_scclang_global_2) == (0);
    empty <= (empty_i_scclang_global_1) == (0);
  end
  always_ff @(posedge clk) begin: ms_proc
    logic [1:0] wr_inc_ms_proc_local_3;
    logic [1:0] rd_inc_ms_proc_local_4;
    logic [31:0] i_ms_proc_local_5;
    
    wr_inc_ms_proc_local_3 = ((wr_idx_scclang_global_6) + (1)) % (4);
    rd_inc_ms_proc_local_4 = ((rd_idx_scclang_global_4) + (1)) % (4);
    if ((reset) == (0)) begin
      if (!(1)) begin
        dout_zb <= 0;
        dout_exp <= 0;
      end
      for (i_ms_proc_local_5 = 0;(i_ms_proc_local_5) < (4);i_ms_proc_local_5++) begin
        data_scclang_global_0_zb[i_ms_proc_local_5] <= 0;
        data_scclang_global_0_exp[i_ms_proc_local_5] <= 0;
      end
      rd_idx_scclang_global_4 <= 2'd0;
      wr_idx_scclang_global_6 <= 2'd0;
      full_i_scclang_global_2 <= 0;
      empty_i_scclang_global_1 <= 1;
    end else begin
      if (!(1)) begin
        if (rd_en_i_scclang_global_3) begin
          dout_zb <= data_scclang_global_0_zb[rd_idx_scclang_global_4];
          dout_exp <= data_scclang_global_0_exp[rd_idx_scclang_global_4];
        end
      end
      if (wr_en_i_scclang_global_5) begin
        data_scclang_global_0_zb[wr_idx_scclang_global_6] <= din_zb;
        data_scclang_global_0_exp[wr_idx_scclang_global_6] <= din_exp;
        wr_idx_scclang_global_6 <= wr_inc_ms_proc_local_3;
        if (!(rd_en_i_scclang_global_3)) begin
          if ((wr_inc_ms_proc_local_3) == (rd_idx_scclang_global_4)) begin
            full_i_scclang_global_2 <= 1;
          end
          empty_i_scclang_global_1 <= 0;
        end
      end
      if (rd_en_i_scclang_global_3) begin
        rd_idx_scclang_global_4 <= rd_inc_ms_proc_local_4;
        if (!(wr_en_i_scclang_global_5)) begin
          full_i_scclang_global_2 <= 0;
          if ((rd_inc_ms_proc_local_4) == (wr_idx_scclang_global_6)) begin
            empty_i_scclang_global_1 <= 1;
          end
        end
      end
    end

  end
endmodule
module decode_ints_sc_module_4 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [15:0] s_maxbits,
  input logic [15:0] s_maxprec,
  input logic [15:0] s_minbits,
  input logic [0:0] m_ready,
  input logic [31:0] s_bp_data,
  input logic [0:0] s_bp_valid,
  output logic [0:0] s_bp_ready,
  output logic [63:0] m_block[0:15],
  output logic [0:0] m_valid,
  output logic [5:0] m_bc_data,
  output logic [0:0] m_bc_valid,
  input logic [0:0] m_bc_ready,
  output logic [0:0] m_blk_start_data,
  output logic [0:0] m_blk_start_valid,
  input logic [0:0] m_blk_start_ready
);
  logic [15:0] c_bplane_scclang_global_0[0:63];
  logic [5:0] k_scclang_global_1;
  logic [15:0] kmin_scclang_global_2;
  logic [4:0] n_scclang_global_3;
  logic [3:0] state_scclang_global_4;
  logic [63:0] x_scclang_global_5;
  logic [31:0] stream_window_scclang_global_6;
  logic [31:0] bits_scclang_global_7;
  logic [31:0] bitoff_scclang_global_8;
  logic signed[31:0] planes_scclang_global_9 = 64;
  logic signed[31:0] intprec_scclang_global_10 = 64;
  always @(c_bplane_scclang_global_0[(0)] or c_bplane_scclang_global_0[(1)] or c_bplane_scclang_global_0[(2)] or c_bplane_scclang_global_0[(3)] or c_bplane_scclang_global_0[(4)] or c_bplane_scclang_global_0[(5)] or c_bplane_scclang_global_0[(6)] or c_bplane_scclang_global_0[(7)] or c_bplane_scclang_global_0[(8)] or c_bplane_scclang_global_0[(9)] or c_bplane_scclang_global_0[(10)] or c_bplane_scclang_global_0[(11)] or c_bplane_scclang_global_0[(12)] or c_bplane_scclang_global_0[(13)] or c_bplane_scclang_global_0[(14)] or c_bplane_scclang_global_0[(15)] or c_bplane_scclang_global_0[(16)] or c_bplane_scclang_global_0[(17)] or c_bplane_scclang_global_0[(18)] or c_bplane_scclang_global_0[(19)] or c_bplane_scclang_global_0[(20)] or c_bplane_scclang_global_0[(21)] or c_bplane_scclang_global_0[(22)] or c_bplane_scclang_global_0[(23)] or c_bplane_scclang_global_0[(24)] or c_bplane_scclang_global_0[(25)] or c_bplane_scclang_global_0[(26)] or c_bplane_scclang_global_0[(27)] or c_bplane_scclang_global_0[(28)] or c_bplane_scclang_global_0[(29)] or c_bplane_scclang_global_0[(30)] or c_bplane_scclang_global_0[(31)] or c_bplane_scclang_global_0[(32)] or c_bplane_scclang_global_0[(33)] or c_bplane_scclang_global_0[(34)] or c_bplane_scclang_global_0[(35)] or c_bplane_scclang_global_0[(36)] or c_bplane_scclang_global_0[(37)] or c_bplane_scclang_global_0[(38)] or c_bplane_scclang_global_0[(39)] or c_bplane_scclang_global_0[(40)] or c_bplane_scclang_global_0[(41)] or c_bplane_scclang_global_0[(42)] or c_bplane_scclang_global_0[(43)] or c_bplane_scclang_global_0[(44)] or c_bplane_scclang_global_0[(45)] or c_bplane_scclang_global_0[(46)] or c_bplane_scclang_global_0[(47)] or c_bplane_scclang_global_0[(48)] or c_bplane_scclang_global_0[(49)] or c_bplane_scclang_global_0[(50)] or c_bplane_scclang_global_0[(51)] or c_bplane_scclang_global_0[(52)] or c_bplane_scclang_global_0[(53)] or c_bplane_scclang_global_0[(54)] or c_bplane_scclang_global_0[(55)] or c_bplane_scclang_global_0[(56)] or c_bplane_scclang_global_0[(57)] or c_bplane_scclang_global_0[(58)] or c_bplane_scclang_global_0[(59)] or c_bplane_scclang_global_0[(60)] or c_bplane_scclang_global_0[(61)] or c_bplane_scclang_global_0[(62)] or c_bplane_scclang_global_0[(63)] or s_maxprec) begin: mc_proc
    logic [63:0] tmp_mc_proc_local_3;
    logic signed[31:0] j_mc_proc_local_4;
    logic signed[31:0] i_mc_proc_local_5;
    
    for (j_mc_proc_local_4 = 0;(j_mc_proc_local_4) < (16);j_mc_proc_local_4++) begin
      for (i_mc_proc_local_5 = 0;(i_mc_proc_local_5) < (64);i_mc_proc_local_5++) begin
        tmp_mc_proc_local_3[i_mc_proc_local_5] = c_bplane_scclang_global_0[i_mc_proc_local_5][j_mc_proc_local_4];
      end
      m_block[j_mc_proc_local_4] = tmp_mc_proc_local_3;
    end
    if ((64) > (s_maxprec)) begin
      kmin_scclang_global_2 <= (64) - (s_maxprec);
    end else begin
      kmin_scclang_global_2 <= 0;
    end

  end
  always_ff @(posedge clk) begin: ms_proc
    logic [0:0] m_bc_valid_ms_proc_local_6;
    logic [0:0] s_bp_ready_ms_proc_local_7;
    logic [31:0] m_ms_proc_local_8;
    logic signed[31:0] i_ms_proc_local_9;
    logic [63:0] i_ms_proc_local_10;
    logic [0:0] last_ms_proc_local_11;
    
    if ((reset) == (0)) begin
      state_scclang_global_4 = 0;
      k_scclang_global_1 <= (64) - (1);
      n_scclang_global_3 = 0;
      bits_scclang_global_7 = (s_maxbits) - ((11) + (1));
      bitoff_scclang_global_8 = 0;
      m_blk_start_data <= 1;
      m_blk_start_valid <= 1;
      s_bp_ready <= 0;
      m_bc_valid <= 0;
      m_bc_data <= 0;
        $display("di-ms-proc-reset");
        $display("di: m_bc_valid: %b %b %b", m_ready, m_bc_ready, s_bp_valid);
        $display("di: s_bp_valid: %b %b %b", m_ready, s_bp_valid, m_bc_ready);
    end else begin
      m_bc_valid_ms_proc_local_6 = (m_ready) && ((!(m_bc_ready)) || (s_bp_valid));
      s_bp_ready_ms_proc_local_7 = (m_ready) && ((!(s_bp_valid)) || (m_bc_ready));
      s_bp_ready <= s_bp_ready_ms_proc_local_7;
      m_bc_valid <= m_bc_valid_ms_proc_local_6;
        $display("di-ms-proc - delta: x, time: %t", $time);
        $display("s_bp_ready <= %b", s_bp_ready_ms_proc_local_7);
        $display("m_bc_valid <= %b", m_bc_valid_ms_proc_local_6);
        $display("di: m_bc_valid: %b %b %b==%b, cur m_bc_valid: %b", m_ready, m_bc_ready, s_bp_valid, m_bc_valid_ms_proc_local_6, m_bc_valid);
        $display("di: s_bp_ready: %b %b %b==%b, cur s_bp_ready: %b", m_ready, s_bp_valid, m_bc_ready, s_bp_ready_ms_proc_local_7, s_bp_ready);
      if ((m_blk_start_ready) == (1)) begin
        $display("di-if-1");
        m_blk_start_data <= 0;
        m_blk_start_valid <= 0;
      end
      if ((((m_ready) || ((k_scclang_global_1) != (kmin_scclang_global_2))) && (m_bc_ready)) && (s_bp_valid)) begin
        $display("di-if-2");
        stream_window_scclang_global_6 = s_bp_data;
        if ((n_scclang_global_3) < (bits_scclang_global_7)) begin
        $display("di-if-3");
          m_ms_proc_local_8 = n_scclang_global_3;
        end else begin
        $display("di-if-4");
          m_ms_proc_local_8 = bits_scclang_global_7;
        end

        bits_scclang_global_7 = (bits_scclang_global_7) - (m_ms_proc_local_8);
        if ((m_ms_proc_local_8) > (0)) begin
        $display("di-if-5");
          x_scclang_global_5 = (stream_window_scclang_global_6) & ((~(64'd0)) >>> ((64) - (m_ms_proc_local_8)));
        end else begin
        $display("di-if-6");
          x_scclang_global_5 = 0;
        end

        bitoff_scclang_global_8 = m_ms_proc_local_8;
        for (i_ms_proc_local_9 = 0;(i_ms_proc_local_9) < (16);i_ms_proc_local_9++) begin
          if (!((n_scclang_global_3) < (16))) begin
            break;
          end
          if ((state_scclang_global_4) & (1)) begin
        $display("di-if-7");
            if ((state_scclang_global_4) & (2)) begin
        $display("di-if-8");
              state_scclang_global_4 = (0) + (1);
              if ((n_scclang_global_3) < (16)) begin
                bits_scclang_global_7--;
              end
            end
            if (((n_scclang_global_3) < ((16) - (1))) && (!((state_scclang_global_4) & (4)))) begin
        $display("di-if-9");
              if ((!(bits_scclang_global_7)) || (!(bits_scclang_global_7--))) begin
        $display("di-if-10");
                x_scclang_global_5[n_scclang_global_3] = 1;
                state_scclang_global_4 = (0) + (4);
              end else begin
        $display("di-if-11");
                if (stream_window_scclang_global_6[(bitoff_scclang_global_8++)]) begin
        $display("di-if-12");
                  x_scclang_global_5[n_scclang_global_3] = 1;
                  state_scclang_global_4 = (0) + (4);
                end
              end

              n_scclang_global_3++;
            end
            if (((n_scclang_global_3) == ((16) - (1))) || ((state_scclang_global_4) & (4))) begin
        $display("di-if-13");
              if (((n_scclang_global_3) >= ((16) - (1))) && (!((state_scclang_global_4) & (4)))) begin
        $display("di-if-14");
                x_scclang_global_5[n_scclang_global_3] = 1;
                n_scclang_global_3++;
              end
              state_scclang_global_4 = (0) + (4);
            end
          end
          if (!((state_scclang_global_4) & (1))) begin
        $display("di-if-15");
            if ((!(bits_scclang_global_7)) || ((n_scclang_global_3) >= (16))) begin
        $display("di-if-16");
              break;
            end
            if (stream_window_scclang_global_6[(bitoff_scclang_global_8++)]) begin
        $display("di-if-17");
              state_scclang_global_4 = ((0) + (1)) + (2);
            end else begin
        $display("di-if-18");
              break;
            end

          end
        end
        if (((n_scclang_global_3) < (16)) && (bits_scclang_global_7)) begin
        $display("di-if-19");
          bits_scclang_global_7--;
        end
        state_scclang_global_4 = 0;
        if ((k_scclang_global_1) == ((64) - (1))) begin
        $display("di-if-20");
          for (i_ms_proc_local_10 = 0;(i_ms_proc_local_10) < ((64) - (1));i_ms_proc_local_10++) begin
            c_bplane_scclang_global_0[i_ms_proc_local_10] <= 16'd0;
          end
        end
        c_bplane_scclang_global_0[k_scclang_global_1] <= x_scclang_global_5;
        m_bc_data <= bitoff_scclang_global_8;
        last_ms_proc_local_11 = ((bits_scclang_global_7) == (0)) || ((k_scclang_global_1) <= (kmin_scclang_global_2));
        if (last_ms_proc_local_11) begin
        $display("di-if-21");
          k_scclang_global_1 <= (64) - (1);
          n_scclang_global_3 = 0;
          bits_scclang_global_7 = (s_maxbits) - ((11) + (1));
        end else begin
        $display("di-if-22");
          k_scclang_global_1 <= (k_scclang_global_1) - (1);
        end

        m_valid <= last_ms_proc_local_11;
        m_blk_start_valid <= last_ms_proc_local_11;
        m_blk_start_data <= last_ms_proc_local_11;
      end
      if ((m_valid) && (m_ready)) begin
        $display("di-if-23");
        m_valid <= 0;
      end
    end

  end
endmodule
module block_buffer_sc_module_5 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [63:0] s_block[0:15],
  input logic [0:0] s_valid,
  input logic [0:0] m_ready,
  output logic [0:0] s_ready,
  output logic [63:0] m_block[0:15],
  output logic [0:0] m_valid
);
  logic [1023:0] c_bi_scclang_global_0;
  logic [1023:0] c_bo_scclang_global_1;
  fifo_cc_sc_module_12 u_bbuf(
    .clk(clk),
    .reset(reset),
    .din(c_bi_scclang_global_0),
    .wr_en(s_valid),
    .full(s_ready),
    .dout(c_bo_scclang_global_1),
    .rd_en(m_ready),
    .empty(m_valid)
  );
  always @(*) begin
  end

  always @(s_block[(0)] or s_block[(1)] or s_block[(2)] or s_block[(3)] or s_block[(4)] or s_block[(5)] or s_block[(6)] or s_block[(7)] or s_block[(8)] or s_block[(9)] or s_block[(10)] or s_block[(11)] or s_block[(12)] or s_block[(13)] or s_block[(14)] or s_block[(15)] or c_bo_scclang_global_1) begin: mc_proc
    logic [1023:0] bbufi_mc_proc_local_2;
    logic [1023:0] bbufo_mc_proc_local_3;
    logic signed[31:0] i_mc_proc_local_4;
    logic signed[31:0] i_mc_proc_local_5;
    
    for (i_mc_proc_local_4 = 0;(i_mc_proc_local_4) < (16);i_mc_proc_local_4++) begin
      bbufi_mc_proc_local_2[((i_mc_proc_local_4) * (64)) +: (64)] = s_block[i_mc_proc_local_4];
    end
    c_bi_scclang_global_0 <= bbufi_mc_proc_local_2;
    bbufo_mc_proc_local_3 = c_bo_scclang_global_1;
    for (i_mc_proc_local_5 = 0;(i_mc_proc_local_5) < (16);i_mc_proc_local_5++) begin
      m_block[i_mc_proc_local_5] = bbufo_mc_proc_local_3[((i_mc_proc_local_5) * (64)) +: (64)];
    end
  end
endmodule
module fifo_cc_sc_module_12 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [1023:0] din,
  input logic [0:0] wr_en,
  input logic [0:0] rd_en,
  output logic [0:0] full,
  output logic [1023:0] dout,
  output logic [0:0] empty
);
  logic [1023:0] data_scclang_global_0[0:1];
  logic [0:0] empty_i_scclang_global_1;
  logic [0:0] full_i_scclang_global_2;
  logic [0:0] rd_en_i_scclang_global_3;
  logic [0:0] rd_idx_scclang_global_4;
  logic [0:0] wr_en_i_scclang_global_5;
  logic [0:0] wr_idx_scclang_global_6;
  logic signed[31:0] MAX_DEPTH_scclang_global_7 = 2;
  initial begin
    if ((2) <= (0)) begin
    end
  end
  always @(wr_en or rd_en or full_i_scclang_global_2 or empty_i_scclang_global_1 or rd_idx_scclang_global_4 or data_scclang_global_0[(0)] or data_scclang_global_0[(1)]) begin: mc_proc
    
    
    if (1) begin
      dout <= data_scclang_global_0[rd_idx_scclang_global_4];
    end
    wr_en_i_scclang_global_5 <= (wr_en) && (!(full_i_scclang_global_2));
    rd_en_i_scclang_global_3 <= (rd_en) && (!(empty_i_scclang_global_1));
    full <= (full_i_scclang_global_2) == (0);
    empty <= (empty_i_scclang_global_1) == (0);
  end
  always_ff @(posedge clk) begin: ms_proc
    logic [0:0] wr_inc_ms_proc_local_3;
    logic [0:0] rd_inc_ms_proc_local_4;
    logic [31:0] i_ms_proc_local_5;
    
    wr_inc_ms_proc_local_3 = ((wr_idx_scclang_global_6) + (1)) % (2);
    rd_inc_ms_proc_local_4 = ((rd_idx_scclang_global_4) + (1)) % (2);
    if ((reset) == (0)) begin
      if (!(1)) begin
        dout <= 0;
      end
      for (i_ms_proc_local_5 = 0;(i_ms_proc_local_5) < (2);i_ms_proc_local_5++) begin
        data_scclang_global_0[i_ms_proc_local_5] <= 0;
      end
      rd_idx_scclang_global_4 <= 1'd0;
      wr_idx_scclang_global_6 <= 1'd0;
      full_i_scclang_global_2 <= 0;
      empty_i_scclang_global_1 <= 1;
    end else begin
      if (!(1)) begin
        if (rd_en_i_scclang_global_3) begin
          dout <= data_scclang_global_0[rd_idx_scclang_global_4];
        end
      end
      if (wr_en_i_scclang_global_5) begin
        data_scclang_global_0[wr_idx_scclang_global_6] <= din;
        wr_idx_scclang_global_6 <= wr_inc_ms_proc_local_3;
        if (!(rd_en_i_scclang_global_3)) begin
          if ((wr_inc_ms_proc_local_3) == (rd_idx_scclang_global_4)) begin
            full_i_scclang_global_2 <= 1;
          end
          empty_i_scclang_global_1 <= 0;
        end
      end
      if (rd_en_i_scclang_global_3) begin
        rd_idx_scclang_global_4 <= rd_inc_ms_proc_local_4;
        if (!(wr_en_i_scclang_global_5)) begin
          full_i_scclang_global_2 <= 0;
          if ((rd_inc_ms_proc_local_4) == (wr_idx_scclang_global_6)) begin
            empty_i_scclang_global_1 <= 1;
          end
        end
      end
    end

  end
endmodule
module decode_block_sc_module_6 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [63:0] s_block[0:15],
  input logic [0:0] s_valid,
  input logic [0:0] m_ready,
  output logic [0:0] s_ready,
  output logic signed[63:0] m_block[0:15],
  output logic [0:0] m_valid
);
  logic signed[63:0] c_xt_data_scclang_global_0[0:3][0:3];
  logic [0:0] c_xt_ready_scclang_global_1[0:3];
  logic [0:0] c_xt_valid_scclang_global_2[0:3];
  logic signed[63:0] c_yt_data_scclang_global_3[0:3][0:3];
  logic [0:0] c_yt_ready_scclang_global_4[0:3];
  logic [0:0] c_yt_valid_scclang_global_5[0:3];
  logic [0:0] xors_valid_scclang_global_6;
  inv_lift_sc_module_13 u_xt_0(
    .clk(clk),
    .reset(reset),
    .s_valid(c_yt_valid_scclang_global_5[0]),
    .s_ready(c_xt_ready_scclang_global_1[0]),
    .m_valid(c_xt_valid_scclang_global_2[0]),
    .m_ready(m_ready),
    .s_port('{ c_xt_data_scclang_global_0[0][0],c_xt_data_scclang_global_0[0][1],c_xt_data_scclang_global_0[0][2],c_xt_data_scclang_global_0[0][3] }),
    .m_port('{ m_block[((0) * (4)) + (0)],m_block[((0) * (4)) + (1)],m_block[((0) * (4)) + (2)],m_block[((0) * (4)) + (3)] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_13 u_xt_1(
    .clk(clk),
    .reset(reset),
    .s_valid(c_yt_valid_scclang_global_5[0]),
    .s_ready(c_xt_ready_scclang_global_1[1]),
    .m_valid(c_xt_valid_scclang_global_2[1]),
    .m_ready(m_ready),
    .s_port('{ c_xt_data_scclang_global_0[1][0],c_xt_data_scclang_global_0[1][1],c_xt_data_scclang_global_0[1][2],c_xt_data_scclang_global_0[1][3] }),
    .m_port('{ m_block[((1) * (4)) + (0)],m_block[((1) * (4)) + (1)],m_block[((1) * (4)) + (2)],m_block[((1) * (4)) + (3)] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_13 u_xt_2(
    .clk(clk),
    .reset(reset),
    .s_valid(c_yt_valid_scclang_global_5[0]),
    .s_ready(c_xt_ready_scclang_global_1[2]),
    .m_valid(c_xt_valid_scclang_global_2[2]),
    .m_ready(m_ready),
    .s_port('{ c_xt_data_scclang_global_0[2][0],c_xt_data_scclang_global_0[2][1],c_xt_data_scclang_global_0[2][2],c_xt_data_scclang_global_0[2][3] }),
    .m_port('{ m_block[((2) * (4)) + (0)],m_block[((2) * (4)) + (1)],m_block[((2) * (4)) + (2)],m_block[((2) * (4)) + (3)] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_13 u_xt_3(
    .clk(clk),
    .reset(reset),
    .s_valid(c_yt_valid_scclang_global_5[0]),
    .s_ready(c_xt_ready_scclang_global_1[3]),
    .m_valid(c_xt_valid_scclang_global_2[3]),
    .m_ready(m_ready),
    .s_port('{ c_xt_data_scclang_global_0[3][0],c_xt_data_scclang_global_0[3][1],c_xt_data_scclang_global_0[3][2],c_xt_data_scclang_global_0[3][3] }),
    .m_port('{ m_block[((3) * (4)) + (0)],m_block[((3) * (4)) + (1)],m_block[((3) * (4)) + (2)],m_block[((3) * (4)) + (3)] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_14 u_yt_0(
    .clk(clk),
    .reset(reset),
    .s_valid(xors_valid_scclang_global_6),
    .s_ready(c_yt_ready_scclang_global_4[0]),
    .m_valid(c_yt_valid_scclang_global_5[0]),
    .m_ready(m_ready),
    .s_port('{ c_yt_data_scclang_global_3[0][0],c_yt_data_scclang_global_3[1][0],c_yt_data_scclang_global_3[2][0],c_yt_data_scclang_global_3[3][0] }),
    .m_port('{ c_xt_data_scclang_global_0[0][0],c_xt_data_scclang_global_0[1][0],c_xt_data_scclang_global_0[2][0],c_xt_data_scclang_global_0[3][0] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_14 u_yt_1(
    .clk(clk),
    .reset(reset),
    .s_valid(xors_valid_scclang_global_6),
    .s_ready(c_yt_ready_scclang_global_4[1]),
    .m_valid(c_yt_valid_scclang_global_5[1]),
    .m_ready(m_ready),
    .s_port('{ c_yt_data_scclang_global_3[0][1],c_yt_data_scclang_global_3[1][1],c_yt_data_scclang_global_3[2][1],c_yt_data_scclang_global_3[3][1] }),
    .m_port('{ c_xt_data_scclang_global_0[0][1],c_xt_data_scclang_global_0[1][1],c_xt_data_scclang_global_0[2][1],c_xt_data_scclang_global_0[3][1] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_14 u_yt_2(
    .clk(clk),
    .reset(reset),
    .s_valid(xors_valid_scclang_global_6),
    .s_ready(c_yt_ready_scclang_global_4[2]),
    .m_valid(c_yt_valid_scclang_global_5[2]),
    .m_ready(m_ready),
    .s_port('{ c_yt_data_scclang_global_3[0][2],c_yt_data_scclang_global_3[1][2],c_yt_data_scclang_global_3[2][2],c_yt_data_scclang_global_3[3][2] }),
    .m_port('{ c_xt_data_scclang_global_0[0][2],c_xt_data_scclang_global_0[1][2],c_xt_data_scclang_global_0[2][2],c_xt_data_scclang_global_0[3][2] })
  );
  always @(*) begin
  end

  inv_lift_sc_module_14 u_yt_3(
    .clk(clk),
    .reset(reset),
    .s_valid(xors_valid_scclang_global_6),
    .s_ready(c_yt_ready_scclang_global_4[3]),
    .m_valid(c_yt_valid_scclang_global_5[3]),
    .m_ready(m_ready),
    .s_port('{ c_yt_data_scclang_global_3[0][3],c_yt_data_scclang_global_3[1][3],c_yt_data_scclang_global_3[2][3],c_yt_data_scclang_global_3[3][3] }),
    .m_port('{ c_xt_data_scclang_global_0[0][3],c_xt_data_scclang_global_0[1][3],c_xt_data_scclang_global_0[2][3],c_xt_data_scclang_global_0[3][3] })
  );
  always @(*) begin
  end

  always @(m_ready or c_xt_valid_scclang_global_2[(0)]) begin: mc_proc
    
    
    s_ready <= m_ready;
    m_valid <= c_xt_valid_scclang_global_2[0];
  end
  always_ff @(posedge clk) begin: ms_rev_order
    
    
    if ((reset) == (0)) begin
      xors_valid_scclang_global_6 <= 0;
    end else begin
      if (m_ready) begin
        c_yt_data_scclang_global_3[0][0] <= ((s_block[0]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[0][1] <= ((s_block[1]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[1][0] <= ((s_block[2]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[1][1] <= ((s_block[3]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[0][2] <= ((s_block[4]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[2][0] <= ((s_block[5]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[1][2] <= ((s_block[6]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[2][1] <= ((s_block[7]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[0][3] <= ((s_block[8]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[3][0] <= ((s_block[9]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[2][2] <= ((s_block[10]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[1][3] <= ((s_block[11]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[3][1] <= ((s_block[12]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[2][3] <= ((s_block[13]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[3][2] <= ((s_block[14]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        c_yt_data_scclang_global_3[3][3] <= ((s_block[15]) ^ (-64'd6148914691236517206)) - (-64'd6148914691236517206);
        xors_valid_scclang_global_6 <= s_valid;
      end
    end

  end
endmodule
module inv_lift_sc_module_13 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic signed[63:0] s_port[0:3],
  input logic [0:0] s_valid,
  input logic [0:0] m_ready,
  output logic [0:0] s_ready,
  output logic signed[63:0] m_port[0:3],
  output logic [0:0] m_valid
);
  logic [5:0] v_scclang_global_0;
  logic signed[63:0] w_scclang_global_1[0:5];
  logic signed[63:0] x_scclang_global_2[0:5];
  logic signed[63:0] y_scclang_global_3[0:5];
  logic signed[63:0] z_scclang_global_4[0:5];
  logic signed[31:0] stages_scclang_global_5 = 6;
  always @(m_ready or x_scclang_global_2[((6) - (1))] or y_scclang_global_3[((6) - (1))] or z_scclang_global_4[((6) - (1))] or w_scclang_global_1[((6) - (1))] or v_scclang_global_0) begin: mc_proc
    
    
    s_ready <= m_ready;
    m_port[0] = x_scclang_global_2[(6) - (1)];
    m_port[1] = y_scclang_global_3[(6) - (1)];
    m_port[2] = z_scclang_global_4[(6) - (1)];
    m_port[3] = w_scclang_global_1[(6) - (1)];
    m_valid <= v_scclang_global_0[(6) - (1)];
  end
  always_ff @(posedge clk) begin: ms_proc
    logic signed[31:0] i_ms_proc_local_2;
    
    if ((reset) == (0)) begin
      for (i_ms_proc_local_2 = 0;(i_ms_proc_local_2) < (6);i_ms_proc_local_2++) begin
        x_scclang_global_2[i_ms_proc_local_2] <= 64'd0;
        y_scclang_global_3[i_ms_proc_local_2] <= 64'd0;
        z_scclang_global_4[i_ms_proc_local_2] <= 64'd0;
        w_scclang_global_1[i_ms_proc_local_2] <= 64'd0;
      end
      v_scclang_global_0 <= 6'd0;
    end else begin
      if (m_ready) begin
        w_scclang_global_1[0] <= s_port[3];
        x_scclang_global_2[0] <= s_port[0];
        y_scclang_global_3[0] <= (s_port[1]) + ((s_port[3]) >>> (1));
        z_scclang_global_4[0] <= s_port[2];
        w_scclang_global_1[1] <= (w_scclang_global_1[0]) - ((y_scclang_global_3[0]) >>> (1));
        x_scclang_global_2[1] <= x_scclang_global_2[0];
        y_scclang_global_3[1] <= y_scclang_global_3[0];
        z_scclang_global_4[1] <= z_scclang_global_4[0];
        w_scclang_global_1[2] <= w_scclang_global_1[1];
        x_scclang_global_2[2] <= x_scclang_global_2[1];
        y_scclang_global_3[2] <= (y_scclang_global_3[1]) + (w_scclang_global_1[1]);
        z_scclang_global_4[2] <= (z_scclang_global_4[1]) + (x_scclang_global_2[1]);
        w_scclang_global_1[3] <= ((w_scclang_global_1[2]) << (1)) - (y_scclang_global_3[2]);
        x_scclang_global_2[3] <= ((x_scclang_global_2[2]) << (1)) - (z_scclang_global_4[2]);
        y_scclang_global_3[3] <= y_scclang_global_3[2];
        z_scclang_global_4[3] <= z_scclang_global_4[2];
        w_scclang_global_1[4] <= (w_scclang_global_1[3]) + (x_scclang_global_2[3]);
        x_scclang_global_2[4] <= x_scclang_global_2[3];
        y_scclang_global_3[4] <= (y_scclang_global_3[3]) + (z_scclang_global_4[3]);
        z_scclang_global_4[4] <= z_scclang_global_4[3];
        w_scclang_global_1[5] <= w_scclang_global_1[4];
        x_scclang_global_2[5] <= ((x_scclang_global_2[4]) << (1)) - (w_scclang_global_1[4]);
        y_scclang_global_3[5] <= y_scclang_global_3[4];
        z_scclang_global_4[5] <= ((z_scclang_global_4[4]) << (1)) - (y_scclang_global_3[4]);
        v_scclang_global_0 <= ((v_scclang_global_0) << (1)) | (s_valid);
      end
    end

  end
endmodule
module inv_lift_sc_module_14 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic signed[63:0] s_port[0:3],
  input logic [0:0] s_valid,
  input logic [0:0] m_ready,
  output logic [0:0] s_ready,
  output logic signed[63:0] m_port[0:3],
  output logic [0:0] m_valid
);
  logic [5:0] v_scclang_global_0;
  logic signed[63:0] w_scclang_global_1[0:5];
  logic signed[63:0] x_scclang_global_2[0:5];
  logic signed[63:0] y_scclang_global_3[0:5];
  logic signed[63:0] z_scclang_global_4[0:5];
  logic signed[31:0] stages_scclang_global_5 = 6;
  always @(m_ready or x_scclang_global_2[((6) - (1))] or y_scclang_global_3[((6) - (1))] or z_scclang_global_4[((6) - (1))] or w_scclang_global_1[((6) - (1))] or v_scclang_global_0) begin: mc_proc
    
    
    s_ready <= m_ready;
    m_port[0] = x_scclang_global_2[(6) - (1)];
    m_port[1] = y_scclang_global_3[(6) - (1)];
    m_port[2] = z_scclang_global_4[(6) - (1)];
    m_port[3] = w_scclang_global_1[(6) - (1)];
    m_valid <= v_scclang_global_0[(6) - (1)];
  end
  always_ff @(posedge clk) begin: ms_proc
    logic signed[31:0] i_ms_proc_local_2;
    
    if ((reset) == (0)) begin
      for (i_ms_proc_local_2 = 0;(i_ms_proc_local_2) < (6);i_ms_proc_local_2++) begin
        x_scclang_global_2[i_ms_proc_local_2] <= 64'd0;
        y_scclang_global_3[i_ms_proc_local_2] <= 64'd0;
        z_scclang_global_4[i_ms_proc_local_2] <= 64'd0;
        w_scclang_global_1[i_ms_proc_local_2] <= 64'd0;
      end
      v_scclang_global_0 <= 6'd0;
    end else begin
      if (m_ready) begin
        w_scclang_global_1[0] <= s_port[3];
        x_scclang_global_2[0] <= s_port[0];
        y_scclang_global_3[0] <= (s_port[1]) + ((s_port[3]) >>> (1));
        z_scclang_global_4[0] <= s_port[2];
        w_scclang_global_1[1] <= (w_scclang_global_1[0]) - ((y_scclang_global_3[0]) >>> (1));
        x_scclang_global_2[1] <= x_scclang_global_2[0];
        y_scclang_global_3[1] <= y_scclang_global_3[0];
        z_scclang_global_4[1] <= z_scclang_global_4[0];
        w_scclang_global_1[2] <= w_scclang_global_1[1];
        x_scclang_global_2[2] <= x_scclang_global_2[1];
        y_scclang_global_3[2] <= (y_scclang_global_3[1]) + (w_scclang_global_1[1]);
        z_scclang_global_4[2] <= (z_scclang_global_4[1]) + (x_scclang_global_2[1]);
        w_scclang_global_1[3] <= ((w_scclang_global_1[2]) << (1)) - (y_scclang_global_3[2]);
        x_scclang_global_2[3] <= ((x_scclang_global_2[2]) << (1)) - (z_scclang_global_4[2]);
        y_scclang_global_3[3] <= y_scclang_global_3[2];
        z_scclang_global_4[3] <= z_scclang_global_4[2];
        w_scclang_global_1[4] <= (w_scclang_global_1[3]) + (x_scclang_global_2[3]);
        x_scclang_global_2[4] <= x_scclang_global_2[3];
        y_scclang_global_3[4] <= (y_scclang_global_3[3]) + (z_scclang_global_4[3]);
        z_scclang_global_4[4] <= z_scclang_global_4[3];
        w_scclang_global_1[5] <= w_scclang_global_1[4];
        x_scclang_global_2[5] <= ((x_scclang_global_2[4]) << (1)) - (w_scclang_global_1[4]);
        y_scclang_global_3[5] <= y_scclang_global_3[4];
        z_scclang_global_4[5] <= ((z_scclang_global_4[4]) << (1)) - (y_scclang_global_3[4]);
        v_scclang_global_0 <= ((v_scclang_global_0) << (1)) | (s_valid);
      end
    end

  end
endmodule
module block_buffer_sc_module_7 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic signed[63:0] s_block[0:15],
  input logic [0:0] s_valid,
  input logic [0:0] m_ready,
  output logic [0:0] s_ready,
  output logic signed[63:0] m_block[0:15],
  output logic [0:0] m_valid
);
  logic [1023:0] c_bi_scclang_global_0;
  logic [1023:0] c_bo_scclang_global_1;
  fifo_cc_sc_module_15 u_bbuf(
    .clk(clk),
    .reset(reset),
    .din(c_bi_scclang_global_0),
    .wr_en(s_valid),
    .full(s_ready),
    .dout(c_bo_scclang_global_1),
    .rd_en(m_ready),
    .empty(m_valid)
  );
  always @(*) begin
  end

  always @(s_block[(0)] or s_block[(1)] or s_block[(2)] or s_block[(3)] or s_block[(4)] or s_block[(5)] or s_block[(6)] or s_block[(7)] or s_block[(8)] or s_block[(9)] or s_block[(10)] or s_block[(11)] or s_block[(12)] or s_block[(13)] or s_block[(14)] or s_block[(15)] or c_bo_scclang_global_1) begin: mc_proc
    logic [1023:0] bbufi_mc_proc_local_2;
    logic [1023:0] bbufo_mc_proc_local_3;
    logic signed[31:0] i_mc_proc_local_4;
    logic signed[31:0] i_mc_proc_local_5;
    
    for (i_mc_proc_local_4 = 0;(i_mc_proc_local_4) < (16);i_mc_proc_local_4++) begin
      bbufi_mc_proc_local_2[((i_mc_proc_local_4) * (64)) +: (64)] = s_block[i_mc_proc_local_4];
    end
    c_bi_scclang_global_0 <= bbufi_mc_proc_local_2;
    bbufo_mc_proc_local_3 = c_bo_scclang_global_1;
    for (i_mc_proc_local_5 = 0;(i_mc_proc_local_5) < (16);i_mc_proc_local_5++) begin
      m_block[i_mc_proc_local_5] = bbufo_mc_proc_local_3[((i_mc_proc_local_5) * (64)) +: (64)];
    end
  end
endmodule
module fifo_cc_sc_module_15 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic [1023:0] din,
  input logic [0:0] wr_en,
  input logic [0:0] rd_en,
  output logic [0:0] full,
  output logic [1023:0] dout,
  output logic [0:0] empty
);
  logic [1023:0] data_scclang_global_0[0:1];
  logic [0:0] empty_i_scclang_global_1;
  logic [0:0] full_i_scclang_global_2;
  logic [0:0] rd_en_i_scclang_global_3;
  logic [0:0] rd_idx_scclang_global_4;
  logic [0:0] wr_en_i_scclang_global_5;
  logic [0:0] wr_idx_scclang_global_6;
  logic signed[31:0] MAX_DEPTH_scclang_global_7 = 2;
  initial begin
    if ((2) <= (0)) begin
    end
  end
  always @(wr_en or rd_en or full_i_scclang_global_2 or empty_i_scclang_global_1 or rd_idx_scclang_global_4 or data_scclang_global_0[(0)] or data_scclang_global_0[(1)]) begin: mc_proc
    
    
    if (1) begin
      dout <= data_scclang_global_0[rd_idx_scclang_global_4];
    end
    wr_en_i_scclang_global_5 <= (wr_en) && (!(full_i_scclang_global_2));
    rd_en_i_scclang_global_3 <= (rd_en) && (!(empty_i_scclang_global_1));
    full <= (full_i_scclang_global_2) == (0);
    empty <= (empty_i_scclang_global_1) == (0);
  end
  always_ff @(posedge clk) begin: ms_proc
    logic [0:0] wr_inc_ms_proc_local_3;
    logic [0:0] rd_inc_ms_proc_local_4;
    logic [31:0] i_ms_proc_local_5;
    
    wr_inc_ms_proc_local_3 = ((wr_idx_scclang_global_6) + (1)) % (2);
    rd_inc_ms_proc_local_4 = ((rd_idx_scclang_global_4) + (1)) % (2);
    if ((reset) == (0)) begin
      if (!(1)) begin
        dout <= 0;
      end
      for (i_ms_proc_local_5 = 0;(i_ms_proc_local_5) < (2);i_ms_proc_local_5++) begin
        data_scclang_global_0[i_ms_proc_local_5] <= 0;
      end
      rd_idx_scclang_global_4 <= 1'd0;
      wr_idx_scclang_global_6 <= 1'd0;
      full_i_scclang_global_2 <= 0;
      empty_i_scclang_global_1 <= 1;
    end else begin
      if (!(1)) begin
        if (rd_en_i_scclang_global_3) begin
          dout <= data_scclang_global_0[rd_idx_scclang_global_4];
        end
      end
      if (wr_en_i_scclang_global_5) begin
        data_scclang_global_0[wr_idx_scclang_global_6] <= din;
        wr_idx_scclang_global_6 <= wr_inc_ms_proc_local_3;
        if (!(rd_en_i_scclang_global_3)) begin
          if ((wr_inc_ms_proc_local_3) == (rd_idx_scclang_global_4)) begin
            full_i_scclang_global_2 <= 1;
          end
          empty_i_scclang_global_1 <= 0;
        end
      end
      if (rd_en_i_scclang_global_3) begin
        rd_idx_scclang_global_4 <= rd_inc_ms_proc_local_4;
        if (!(wr_en_i_scclang_global_5)) begin
          full_i_scclang_global_2 <= 0;
          if ((rd_inc_ms_proc_local_4) == (wr_idx_scclang_global_6)) begin
            empty_i_scclang_global_1 <= 1;
          end
        end
      end
    end

  end
endmodule
module inv_cast_sc_module_8 (
  input logic [0:0] clk,
  input logic [0:0] reset,
  input logic signed[63:0] s_block[0:15],
  input logic [0:0] s_valid,
  input logic [0:0] s_bhdr_data_zb,
  input logic [10:0] s_bhdr_data_exp,
  input logic [0:0] s_bhdr_valid,
  output logic [0:0] s_bhdr_ready,
  output logic [0:0] s_ready,
  output logic [51:0] m_stream_data_frac,
  output logic [10:0] m_stream_data_expo,
  output logic [0:0] m_stream_data_sign,
  output logic [0:0] m_stream_valid,
  input logic [0:0] m_stream_ready
);
  logic [0:0] c_sync_scclang_global_0;
  logic [3:0] count_scclang_global_1;
  logic [0:0] got_bhdr_scclang_global_2;
  logic [0:0] got_blk_scclang_global_3;
  logic signed[63:0] r_blk_scclang_global_4[0:15];
  logic [10:0] r_ex_scclang_global_5;
  logic [0:0] zb_scclang_global_6;
  always @(s_valid or s_bhdr_valid or got_blk_scclang_global_3 or got_bhdr_scclang_global_2 or m_stream_ready or count_scclang_global_1 or c_sync_scclang_global_0 or zb_scclang_global_6 or r_ex_scclang_global_5 or r_blk_scclang_global_4) begin: mc_proc
    /**
      *
      * WARNING: [Synth 8-567] referenced signal 'r_blk_scclang_global_4' should be on the sensitivity list [/home/allen/mount/working/llnl-script-debug/zhw/zhw-github/test/vivado/z7test_hdl.txt.sv:1681]
      * WARNING: [Synth 8-567] referenced signal 'zb_scclang_global_6' should be on the sensitivity list [/home/allen/mount/working/llnl-script-debug/zhw/zhw-github/test/vivado/z7test_hdl.txt.sv:1681]
      * WARNING: [Synth 8-567] referenced signal 'r_ex_scclang_global_5' should be on the sensitivity list [/home/allen/mount/working/llnl-script-debug/zhw/zhw-github/test/vivado/z7test_hdl.txt.sv:1681]
      */
    logic [51:0] fp_mc_proc_local_2_frac;
    logic [10:0] fp_mc_proc_local_2_expo;
    logic [0:0] fp_mc_proc_local_2_sign;
    logic [0:0] s_mc_proc_local_3;
    logic [10:0] _r_ex_mc_proc_local_4;
    logic [0:0] stall_mc_proc_local_5;
    logic signed[63:0] si_mc_proc_local_6;
    logic [63:0] neg_mask_mc_proc_local_7;
    logic [0:0] zero_output_mc_proc_local_8;
    logic [63:0] rn_mc_proc_local_9;
    logic [63:0] e_mc_proc_local_10;
    logic [63:0] i_mc_proc_local_11;
    logic signed[31:0] shift_mc_proc_local_12;
    
    fp_mc_proc_local_2_frac = 0;
    fp_mc_proc_local_2_expo = 0;
    fp_mc_proc_local_2_sign = 0;
    s_mc_proc_local_3 = 1'd0;
    _r_ex_mc_proc_local_4 = 11'd0;
    stall_mc_proc_local_5 = (((m_stream_ready) == (0)) || (((count_scclang_global_1) == (0)) && (!(got_bhdr_scclang_global_2)))) || (((count_scclang_global_1) == (0)) && ((got_bhdr_scclang_global_2) && (!(got_blk_scclang_global_3))));
    c_sync_scclang_global_0 <= !(stall_mc_proc_local_5);
    m_stream_valid <= !(stall_mc_proc_local_5);
    si_mc_proc_local_6 = r_blk_scclang_global_4[count_scclang_global_1];
    neg_mask_mc_proc_local_7 = (1) << ((64) - (1));
    if ((si_mc_proc_local_6) & (neg_mask_mc_proc_local_7)) begin
      si_mc_proc_local_6 = -(si_mc_proc_local_6);
      s_mc_proc_local_3 = 1;
    end
    zero_output_mc_proc_local_8 = ((si_mc_proc_local_6) == (0)) || (zb_scclang_global_6);
    if (zero_output_mc_proc_local_8) begin
      fp_mc_proc_local_2_frac = 0;
      fp_mc_proc_local_2_expo = 0;
      fp_mc_proc_local_2_sign = 0;
    end else begin
      rn_mc_proc_local_9 = si_mc_proc_local_6;
      e_mc_proc_local_10 = 64'd0;
      for (i_mc_proc_local_11 = 64'd0;(i_mc_proc_local_11) < (64);i_mc_proc_local_11++) begin
        if (!((rn_mc_proc_local_9) >>> ((e_mc_proc_local_10) + (1)))) begin
          break;
        end else begin
          e_mc_proc_local_10++;
        end

      end
      shift_mc_proc_local_12 = (52) - (e_mc_proc_local_10);
      if ((shift_mc_proc_local_12) > (0)) begin
        rn_mc_proc_local_9 = (rn_mc_proc_local_9) << (+(shift_mc_proc_local_12));
      end else begin
        rn_mc_proc_local_9 = (rn_mc_proc_local_9) >>> (-(shift_mc_proc_local_12));
      end

      e_mc_proc_local_10 = (e_mc_proc_local_10) + (((1023) + (r_ex_scclang_global_5)) - ((64) - (2)));
      if ((e_mc_proc_local_10) <= (0)) begin
        rn_mc_proc_local_9 = (rn_mc_proc_local_9) >>> ((1) - (e_mc_proc_local_10));
        e_mc_proc_local_10 = 0;
      end else begin
        rn_mc_proc_local_9 = (rn_mc_proc_local_9) & (((1) << (52)) - (1));
      end

      rn_mc_proc_local_9 = (rn_mc_proc_local_9) + ((((s_mc_proc_local_3) << (11)) + (e_mc_proc_local_10)) << (52));
      { { fp_mc_proc_local_2_sign, fp_mc_proc_local_2_expo }, fp_mc_proc_local_2_frac } = rn_mc_proc_local_9;
    end

    m_stream_data_frac <= fp_mc_proc_local_2_frac;
    m_stream_data_expo <= fp_mc_proc_local_2_expo;
    m_stream_data_sign <= fp_mc_proc_local_2_sign;
  end
  always_ff @(posedge clk) begin: ms_proc
    logic [0:0] _zb_ms_proc_local_13;
    logic [0:0] _got_bhdr_ms_proc_local_14;
    logic [31:0] i_ms_proc_local_15;
    logic [31:0] i_ms_proc_local_16;
    
    if ((reset) == (0)) begin
      count_scclang_global_1 <= 4'd0;
      s_bhdr_ready <= 0;
      s_ready <= 0;
      got_bhdr_scclang_global_2 <= 0;
      got_blk_scclang_global_3 <= 0;
    end else begin
      _zb_ms_proc_local_13 = 0;
      _got_bhdr_ms_proc_local_14 = 0;
      if ((((count_scclang_global_1) == (0)) && (s_bhdr_valid)) && ((got_bhdr_scclang_global_2) == (0))) begin
        _got_bhdr_ms_proc_local_14 = 1;
        got_bhdr_scclang_global_2 <= _got_bhdr_ms_proc_local_14;
        _zb_ms_proc_local_13 = s_bhdr_data_zb;
        zb_scclang_global_6 <= _zb_ms_proc_local_13;
        r_ex_scclang_global_5 <= s_bhdr_data_exp;
        if (_zb_ms_proc_local_13) begin
          for (i_ms_proc_local_15 = 0;(i_ms_proc_local_15) < (16);i_ms_proc_local_15++) begin
            r_blk_scclang_global_4[i_ms_proc_local_15] <= 64'd0;
          end
          got_blk_scclang_global_3 <= 1;
        end
        s_bhdr_ready <= 1;
      end
      if ((got_bhdr_scclang_global_2) == (1)) begin
        s_bhdr_ready <= 0;
      end
      if (((count_scclang_global_1) == (0)) && (((_got_bhdr_ms_proc_local_14) && (!(_zb_ms_proc_local_13))) || ((got_bhdr_scclang_global_2) && (!(zb_scclang_global_6))))) begin
        if (s_valid) begin
          got_blk_scclang_global_3 <= 1;
          for (i_ms_proc_local_16 = 0;(i_ms_proc_local_16) < (16);i_ms_proc_local_16++) begin
            r_blk_scclang_global_4[i_ms_proc_local_16] <= s_block[i_ms_proc_local_16];
          end
          s_ready <= 1;
        end
      end
      if (got_blk_scclang_global_3) begin
        s_ready <= 0;
      end
      if ((count_scclang_global_1) != (0)) begin
        got_bhdr_scclang_global_2 <= 0;
        got_blk_scclang_global_3 <= 0;
      end
      if (c_sync_scclang_global_0) begin
        if ((count_scclang_global_1) == ((16) - (1))) begin
          count_scclang_global_1 <= 4'd0;
        end else begin
          count_scclang_global_1 <= (count_scclang_global_1) + (1);
        end

      end
    end

  end
endmodule
