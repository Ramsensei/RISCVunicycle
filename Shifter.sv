module Shifter #(parameter BITS = 64) (data, out);

    input wire [0:BITS-1] data;
    output reg [0:BITS-1] out;

    assign out = {data[0], data[0:BITS-2]};
endmodule