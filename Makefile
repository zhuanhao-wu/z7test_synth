z7wrapper_synth.sv: z7test_hdl.txt.sv
	vivado -mode batch -nojournal -nolog -source synth.tcl

sim:
	xvlog -sv z7test_hdl.txt.sv
	xvlog -sv tb.sv
	xelab -debug typical tb -s top_sim
	xsim top_sim -t xsim_run.tcl

sim-synth: z7wrapper_synth.sv
	xvlog -work work -sv z7wrapper_synth.sv
	xvlog -work work -sv tb-post-sim.sv
	xvlog -work work glbl.v
	xelab -debug typical tb glbl -s top_sim -L work -L unisims_ver -L unimacro_ver
	xsim top_sim -t xsim_run.tcl

pnr:
	vivado -mode batch -nojournal -nolog -source pnr.tcl

clean:
	rm -rf *.log *.jou *.str *.pb xsim.dir .Xil

synth: z7wrapper_synth.sv

check:
	python vcd_util.py dump.vcd --clock "tb.dut.clk_scclang_global_0[0:0]" --output-folder output/
	bash check.sh
