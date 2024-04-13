module PCRegister #(parameter BITS = 64) (clk, rst, writeData, writeEn, read);
    input wire [0:BITS-1] writeData;
    input wire rst;
    input wire writeEn, clk;
    output reg [0:BITS-1] read;
    
    reg [0:BITS-1] register;
    
    always @(posedge clk) begin
        read <= register;
    end

    always @(negedge clk, posedge rst) begin
        if (rst) begin
            register <= 0;
        end else if (writeEn) begin
            register <= writeData;
        end
    end

    initial
        read = 0;


endmodule