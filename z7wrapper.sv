`timescale 1ns/100ps
module z7wrapper(
  input  logic [0:0]   clk_scclang_global_0,
  input  logic [0:0]   reset_scclang_global_5,
  output logic [51:0]  c_dut_fp_scclang_global_6_data_frac,
  output logic [10:0]  c_dut_fp_scclang_global_6_data_expo,
  output logic [0:0]   c_dut_fp_scclang_global_6_data_sign,
  output logic [0:0]   c_dut_fp_scclang_global_6_valid,
  input  logic [0:0]   c_dut_fp_scclang_global_6_ready,
  input  logic [63:0]  c_driver_enc_scclang_global_7_data_tdata,
  input  logic [0:0]   c_driver_enc_scclang_global_7_data_tlast,
  input  logic [0:0]   c_driver_enc_scclang_global_7_valid,
  output logic [0:0]   c_driver_enc_scclang_global_7_ready
);
  mymodule_sc_module_0 dut();

  assign dut.clk_scclang_global_0                           = clk_scclang_global_0;
  assign dut.reset_scclang_global_5                         = reset_scclang_global_5;
  assign c_dut_fp_scclang_global_6_data_frac                = dut.c_dut_fp_scclang_global_6_data_frac;
  assign c_dut_fp_scclang_global_6_data_expo                = dut.c_dut_fp_scclang_global_6_data_expo;
  assign c_dut_fp_scclang_global_6_data_sign                = dut.c_dut_fp_scclang_global_6_data_sign;
  assign c_dut_fp_scclang_global_6_valid                    = dut.c_dut_fp_scclang_global_6_valid;
  assign dut.c_dut_fp_scclang_global_6_ready               = c_dut_fp_scclang_global_6_ready;
  assign dut.c_driver_enc_scclang_global_7_data_tdata      = c_driver_enc_scclang_global_7_data_tdata;
  assign dut.c_driver_enc_scclang_global_7_data_tlast      = c_driver_enc_scclang_global_7_data_tlast;
  assign dut.c_driver_enc_scclang_global_7_valid           = c_driver_enc_scclang_global_7_valid;
  assign c_driver_enc_scclang_global_7_ready               = dut.c_driver_enc_scclang_global_7_ready;

endmodule
