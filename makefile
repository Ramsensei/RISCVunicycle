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

test_Registers:
	vcs -Mupdate tb_Register_File.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Comparator:
	vcs -Mupdate tb_Nbit_Equal_Comp.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_HotBit:
	vcs -Mupdate tb_Hot_Bit.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_Memory:
	vcs -Mupdate tb_Memory.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
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

test_Registers_gui:
	vcs -Mupdate tb_Register_File.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &

test_Comparator_gui:
	vcs -Mupdate tb_Nbit_Equal_Comp.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &

test_HotBit_gui:
	vcs -Mupdate tb_Hot_Bit.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &

test_Memory_gui:
	vcs -Mupdate tb_Memory.sv -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &