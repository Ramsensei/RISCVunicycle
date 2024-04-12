`include "Register.sv"
`include "Hot_Bit.sv"
`include "Mux.sv"
module Register_File (clk, address1, address2, addressw, writeData, writeEn, read1, read2);
    parameter DEPTH = 32, BITS = 64;
    input wire [0:$clog2(DEPTH)-1] address1, address2, addressw;
    input wire [0:BITS-1] writeData;
    input wire writeEn, clk;
    output reg [0:BITS-1] read1, read2;

    reg [DEPTH-1:0] hotbitOut;
    wire [0:BITS-1] Mux [0:DEPTH-1];
    wire [DEPTH-1:0] regEnable;
    Hot_Bit #(DEPTH, BITS) hotbit1(.index(addressw), .Out(hotbitOut));

    Mux[0] = 0;

    genvar i;
    generate
        for (i = 1; i < DEPTH; i++) begin : generate_registers
            assign regEnable[i] = hotbitOut[i] & writeEn;
            Register #(BITS) register(.clk(clk), .writeData(writeData), .writeEn(regEnable[i]), .read(Mux[i]));
        end
    endgenerate

    Mux #(DEPTH, BITS) mux1(.Data_arr(Mux), .selector(address1), .Out(read1));
    Mux #(DEPTH, BITS) mux2(.Data_arr(Mux), .selector(address2), .Out(read2));

endmodule