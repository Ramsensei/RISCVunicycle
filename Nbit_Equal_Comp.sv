`include "Equal_Comp.sv"
module Nbit_Equal_Comp #(BITS = 32) (Data0, Data1, Out)
    input [BITS-1:0] Data0, Data1;
    output [BITS-1:0] Out;

    genvar i;
    generate
        for (i = 0; i < BITS; i++) begin : generate_NComps
            Equal_Comp equal_one_bit(.Data0(Data0[i]), .Data1(Data1[i]), .Out(Out[i]));
        end
    endgenerate
    
endmodule