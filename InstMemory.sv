module InstMemory #(parameter DEPTH = 32, BITS = 64) (address, readData);

    input wire [0:$clog2(DEPTH)-1] address;
    output reg [0:BITS-1] readData;

    reg [0:BITS-1] registers [0:DEPTH-1];


    always_comb begin
        readData = registers[address];
    end
    
    initial
        $readmemh("memory.dat", registers);
endmodule