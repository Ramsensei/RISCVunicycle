module  Register_Bank #(parameter DEPTH = 32, BITS = 64) (clk, address1, address2, addressw, writeData, writeEn, read1, read2);

    input wire [0:$clog2(DEPTH)-1] address1, address2, addressw;
    input wire [0:BITS-1] writeData;
    input wire writeEn, clk;
    output reg [0:BITS-1] read1, read2;

    reg [0:BITS-1] registers [0:DEPTH-1];

    always @(posedge clk) begin
        read1 <= registers[address1];
        read2 <= registers[address2];
    end

    always @(negedge clk) begin
        if (writeEn) begin
            registers[addressw] <= writeData;
        end 
    end
 
endmodule