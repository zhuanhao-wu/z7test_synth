create_project -in_memory -part xczu3eg-sbva484-1-e

add_files reconf_part.v
add_files z7wrapper.dcp

update_compile_order -fileset sources_1

source overlay/overlay/overlay.tcl

synth_design -top overlay_wrapper

opt_design
place_design
route_design
write_checkpoint -force overlay.dcp
write_bitstream -force overlay.bit
