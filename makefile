start:

test:
	iverilog -g2012 -W all -o pv tb_pv.sv
	./pv
	gtkwave pv.vcd
	rm ./pv ./pv.vcd