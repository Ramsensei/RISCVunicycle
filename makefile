start:

test:
	vcs -Mupdate tb_pv.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_alu:
	vcs -Mupdate tb_Alu.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_ImmGen:
	vcs -Mupdate tb_ImmGen.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv