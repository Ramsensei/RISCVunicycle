start:

test:
	iverilog -g2012 -W all -o pv tb_pv.sv
	./pv
	gtkwave pv.vcd
	rm ./pv ./pv.vcd

test_alu:
	iverilog -g2012 -W all -o pv tb_Alu.sv
	./pv
	gtkwave pv.vcd
	rm ./pv ./pv.vcd