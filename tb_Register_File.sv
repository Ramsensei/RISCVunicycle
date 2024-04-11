module tb_Register_File();

    reg clk;
    reg [0:5] address1, address2, addressw;
    reg [0:63] writeData;
    reg writeEn;
    wire [0:63] read1, read2;

    Register_File register_file(.clk(clk), .address1(address1), .address2(address2), .addressw(addressw), .writeData(writeData), .writeEn(writeEn), .read1(read1), .read2(read2));

    initial begin
        clk = 0;
        address1 = 0;
        address2 = 0;
        addressw = 0;
        writeData = 0;
        writeEn = 0;
        #10;
    
    end

endmodule