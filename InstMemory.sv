module InstMemory #(parameter DEPTH = 32, BITS = 64) (clk, address, readData);

    input wire [0:$clog2(DEPTH)-1] address;
    input wire clk;
    output reg [0:BITS-1] readData;

    reg [0:BITS-1] registers [0:DEPTH-1];


    always @(posedge clk) begin
        readData <= registers[address];
    end
    initial
        $readmemh("memory.dat", registers);
endmodule