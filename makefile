start:

test:
	vcs -Mupdate $(filter-out $@,$(MAKECMDGOALS)) -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -sverilog -l log
	./simv

test_gui:

	vcs -Mupdate $(filter-out $@,$(MAKECMDGOALS)) -full64 -debug_acc+all+dmptf -debug_region+cell+encrypt -kdb -sverilog -l log
	./simv -gui &

test_win:
	iverilog -g2012 -o out -W all $(filter-out $@,$(MAKECMDGOALS)) > log
	vvp out
	gtkwave pv.vcd
	rm .\out