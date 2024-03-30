module Mux #(parameter DEPTH = 8, BITS = 32) (Data_arr, selector, Out);

    input wire [0:BITS-1] Data_arr [0:DEPTH-1];
    input wire [0:$clog2(DEPTH)-1] selector;
    output reg [0:BITS-1] Out;

    assign Out = Data_arr[selector];

endmodule