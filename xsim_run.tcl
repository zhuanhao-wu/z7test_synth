log_wave -recursive *
open_vcd
log_vcd -level 2 [get_objects "/tb/dut/clk_scclang_global_0" "/tb/c_dut_fp_scclang_global_6_data_frac*" "/tb/c_dut_fp_scclang_global_6_data_expo*" "/tb/c_dut_fp_scclang_global_6_data_sign*" "/tb/c_dut_fp_scclang_global_6_valid*" "/tb/c_dut_fp_scclang_global_6_ready*" ] 
run 43795ns
# run 87590ns
close_vcd
# quit
