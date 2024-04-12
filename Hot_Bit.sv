`include "Nbit_Equal_Comp.sv"
module Hot_Bit #(DEPTH = 8) (index, Out);
    parameter BITS = $clog2(DEPTH);
    input [$clog2(DEPTH)-1:0] index;
    output [DEPTH-1:0] Out;


    genvar i;
    generate
        for (i = 0; i < DEPTH; i++) begin : generate_hotbit_outputs
            Nbit_Equal_Comp #(BITS) equal_n_bits(.Data0(index), .Data1(i), .Out(Out[i]));
        end
    endgenerate
    
endmodule