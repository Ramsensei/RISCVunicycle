`include "Shifter.sv"
module tb_Shifter();
parameter BITS = 64;
reg [0:BITS-1] data;
reg [0:BITS-1] out;

Shifter #(BITS) dut (data, out);

// initial begin
//     clk = 0;
//     forever begin
//         clk = ~clk;
//         #5;
//     end
// end

initial begin
    $dumpfile("pv.vcd");
    $dumpvars(0, tb_pv);
    
    

    $finish;
end

endmodule