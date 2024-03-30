module Dff (Data, clk, out);

    input Data, clk;
    output reg out;

    always_ff @(negedge clk) begin : Dff_always
        out <= Data;
    end

endmodule