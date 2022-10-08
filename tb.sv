`timescale 1ns/100ps

module tb;
  // common logic
  logic[63:0] counter = 0;
  logic __tb_clk = 0;
  initial begin
    forever __tb_clk = #5 __tb_clk ^ 1;
  end
  initial begin
     $timeformat(-9, 0, " ns", 20);
  end

  always @(posedge __tb_clk or negedge __tb_clk) begin
    counter <= counter + 1;
    if(__tb_clk >= 8740) begin
      $finish;
    end
  end


  
  logic  SystemC_decode_full_tb_driver_clk [0:8739];
  logic  SystemC_decode_full_tb_driver_reset [0:8739];
  logic  SystemC_decode_full_tb_driver_m_stream_ready [0:8739];
  logic  SystemC_decode_full_tb_driver_s_bits_valid [0:8739];
  logic [63:0] SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_ [0:8739];
  logic  SystemC_decode_full_tb_driver_s_bits_data_tlast [0:8739];

  mymodule_sc_module_0 dut();
  
  assign dut.clk_scclang_global_0 = 1 ^ SystemC_decode_full_tb_driver_clk[ counter ];

  always @(*) begin
    /* #5050ps */ dut.reset_scclang_global_5 = SystemC_decode_full_tb_driver_reset[ counter ];
    /* #5050ps */ dut.c_dut_fp_scclang_global_6_ready = SystemC_decode_full_tb_driver_m_stream_ready[ counter ];
    /* #5050ps */ dut.c_driver_enc_scclang_global_7_valid = SystemC_decode_full_tb_driver_s_bits_valid[ counter ];
    /* #5050ps */ dut.c_driver_enc_scclang_global_7_data_tdata = SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_[ counter ];
    /* #5050ps */ dut.c_driver_enc_scclang_global_7_data_tlast = SystemC_decode_full_tb_driver_s_bits_data_tlast[ counter ];
  end

  always @(posedge dut.clk_scclang_global_0) begin
    $display("Counter: %d", counter);
    $display("tdata: %x", dut.c_driver_enc_scclang_global_7_data_tdata);
  end


  initial begin
    // signal loads
    
    $readmemb("output/SystemC.decode_full_tb_driver.clk.x",SystemC_decode_full_tb_driver_clk);
    $readmemb("output/SystemC.decode_full_tb_driver.reset.x",SystemC_decode_full_tb_driver_reset);
    $readmemb("output/SystemC.decode_full_tb_driver.m_stream.ready.x",SystemC_decode_full_tb_driver_m_stream_ready);
    $readmemb("output/SystemC.decode_full_tb_driver.s_bits.valid.x",SystemC_decode_full_tb_driver_s_bits_valid);
    $readmemb("output/SystemC.decode_full_tb_driver.s_bits.data.tdata[63:0].x",SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_);
    $readmemb("output/SystemC.decode_full_tb_driver.s_bits.data.tlast.x",SystemC_decode_full_tb_driver_s_bits_data_tlast);
  end



endmodule
