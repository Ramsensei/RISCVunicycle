module tb_Controller();
    reg [0:31] Instruction;
    reg [0:63] Imm;
    reg [0:1] ALUControl;
    reg RegWrite, MemWrite, Branch, MemToReg;
    reg ALUScr;

    Controller controller(
        .Instruction(Instruction),
        .ALUControl(ALUControl),
        .RegWrite(RegWrite),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .MemToReg(MemToReg),
        .ALUScr(ALUScr),
        .Imm(Imm));

    initial begin
        $dumpfile("pv.vcd");
        $dumpvars(0, tb_Controller);
        Instruction = 32'b00110 11 01010 00110 011 01010 00000 11;
        #10;
        Instruction = 32'b00110 11 01010 00110 011 01010 01000 11;
        #10;
        Instruction = 32'b00000 00 01010 00110 000 01010 01100 11;
        #10;
        Instruction = 32'b01000 00 01010 00110 000 01010 01100 11;
        #10;
        Instruction = 32'b00000 00 01010 00110 111 01010 01100 11;
        #10;
        Instruction = 32'b00000 00 01010 00110 110 01010 01100 11;
        #10;
        Instruction = 32'b00010 10 01010 00110 000 01010 11000 11;
        #10;
    end
endmodule