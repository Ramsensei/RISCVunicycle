`include "InstMemory.sv"
module tb_InstMemory();

    reg [5:0] address;
    reg clk;
    wire [63:0] readData;

    InstMemory #(.DEPTH(32), .BITS(64)) instMemory(.address(address), .clk(clk), .readData(readData));

    initial begin
        $dumpfile("pv.vcd");
        $dumpvars(0, tb_InstMemory);
        
        address = 0;
        clk = 0;
        #10 address = 1;
        #10 address = 2;
        #10 address = 3;
        #10 address = 4;
        #10 address = 5;
        #10 address = 6;
        #10 address = 7;
        #10 address = 0;
        $finish;

    end

endmodule
