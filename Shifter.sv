module Shifter #(parameter BITS = 64) (data, out);

    input wire [0:BITS-1] data;
    output reg [0:BITS-1] out;

    wire [0:BITS] data_shifted;

    assign data_shifted = {data, 1'b0};
    assign out = data_shifted[1:BITS];
endmodule