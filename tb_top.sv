`include "top.sv"
module tb_top();
    reg clk;
    reg rst;

    top top1(clk, rst);

    initial begin
        clk = 0;
        forever begin
            clk = ~clk;
            #5;
        end
    end

    initial begin
        $dumpfile("pv.vcd");
        $dumpvars(0, tb_top);
        rst = 1;
        #10;
        rst = 0;
        #200;
        top1.datapath.regFile.genenerate_registers[1].register == 2;
        clk = 0;
        $finish;
    end
endmodule