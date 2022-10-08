create_project -in_memory -part xczu3eg-sbva484-1-e

add_files  z7test_hdl.txt.sv z7wrapper.sv 

synth_design -top z7wrapper -part xczu3eg-sbva484-1-e -mode out_of_context -flatten_hierarchy none

write_checkpoint -force z7wrapper.dcp

write_verilog -mode funcsim -force z7wrapper_synth.sv
