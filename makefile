start:

test:
	vcs -Mupdate tb_pv.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Alu:
	vcs -Mupdate tb_Alu.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Immgen:
	vcs -Mupdate tb_ImmGen.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Control:
	vcs -Mupdate tb_Controller.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Alu_gui:
	vcs -Mupdate tb_Alu.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &

test_Immgen_gui:
	vcs -Mupdate tb_ImmGen.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &
	
test_Control_gui:
	vcs -Mupdate tb_Controller.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &