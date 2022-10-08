`timescale 1ns/100ps

module tb;
  // common logic
  logic[63:0] counter = 0;
  logic[63:0] flit_counter = 0;
  logic[63:0] reset_counter = 0;
  logic __tb_clk = 0;
  logic run_once = 0;
  initial begin
    forever __tb_clk = #5 __tb_clk ^ 1;
  end
  initial begin
     $timeformat(-9, 0, " ns", 20);
  end



  always @(posedge __tb_clk or negedge __tb_clk) begin
    reset_counter <= reset_counter + 5;
    if(reset_counter >= 100) begin
      counter <= counter + 1;
    end
    if(counter >= 8740) begin
      if(run_once == 0) begin
        // This is for testing reset
        run_once <= 1;
        counter <= 0;
      end else begin
        $finish;
      end
    end
  end


  
  logic  SystemC_decode_full_tb_driver_clk [0:8739];
  logic  SystemC_decode_full_tb_driver_reset [0:8739];
  logic  SystemC_decode_full_tb_driver_m_stream_ready [0:8739];
  logic  SystemC_decode_full_tb_driver_s_bits_valid [0:8739];
  logic [63:0] SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_ [0:8739];
  logic  SystemC_decode_full_tb_driver_s_bits_data_tlast [0:8739];

  /* signals within the design */
  logic [0:0]   clk_scclang_global_0;
  logic [0:0]   reset_scclang_global_5;
  logic [51:0]  c_dut_fp_scclang_global_6_data_frac;
  logic [10:0]  c_dut_fp_scclang_global_6_data_expo;
  logic [0:0]   c_dut_fp_scclang_global_6_data_sign;
  logic [0:0]   c_dut_fp_scclang_global_6_valid;
  logic [0:0]   c_dut_fp_scclang_global_6_ready;
  logic [63:0]  c_driver_enc_scclang_global_7_data_tdata;
  logic [0:0]   c_driver_enc_scclang_global_7_data_tlast;
  logic [0:0]   c_driver_enc_scclang_global_7_valid;
  logic [0:0]   c_driver_enc_scclang_global_7_ready;

  z7wrapper dut(
    .*
  );

  always @(posedge clk_scclang_global_0) begin
    if(c_driver_enc_scclang_global_7_valid && c_driver_enc_scclang_global_7_ready) begin
        flit_counter <= flit_counter + 2;
      end
  end
  
  // assign clk_scclang_global_0 = 1 ^ SystemC_decode_full_tb_driver_clk[ counter ];

  always @(*) begin
    // #100ns is to account for GSR delays introduced in glbl.v
    clk_scclang_global_0 = 1 ^ SystemC_decode_full_tb_driver_clk[ counter ];
    reset_scclang_global_5 = SystemC_decode_full_tb_driver_reset[ counter ];
    // c_dut_fp_scclang_global_6_ready = SystemC_decode_full_tb_driver_m_stream_ready[ counter ];
    // always ready
    c_dut_fp_scclang_global_6_ready = 1;
    c_driver_enc_scclang_global_7_valid = SystemC_decode_full_tb_driver_s_bits_valid[ counter ];
    c_driver_enc_scclang_global_7_data_tdata = SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_[ counter ];
    c_driver_enc_scclang_global_7_data_tlast = SystemC_decode_full_tb_driver_s_bits_data_tlast[ counter ];
  end

  always @(posedge clk_scclang_global_0) begin
    if(counter % 500 == 0) begin
      $display("Counter: %d", counter);
      $display("tdata: %x", dut.c_driver_enc_scclang_global_7_data_tdata);
    end
  end


  initial begin
    // signal loads
    
    $readmemb("./golden/SystemC.decode_full_tb_driver.clk.x",SystemC_decode_full_tb_driver_clk);
    $readmemb("./golden/SystemC.decode_full_tb_driver.reset.x",SystemC_decode_full_tb_driver_reset);
    $readmemb("./golden/SystemC.decode_full_tb_driver.m_stream.ready.x",SystemC_decode_full_tb_driver_m_stream_ready);
    $readmemb("./golden/SystemC.decode_full_tb_driver.s_bits.valid.x",SystemC_decode_full_tb_driver_s_bits_valid);
    $readmemb("./golden/SystemC.decode_full_tb_driver.s_bits.data.tdata[63:0].x",SystemC_decode_full_tb_driver_s_bits_data_tdata_63_0_);
    $readmemb("./golden/SystemC.decode_full_tb_driver.s_bits.data.tlast.x",SystemC_decode_full_tb_driver_s_bits_data_tlast);
  end



endmodule
