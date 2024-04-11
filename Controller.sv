`include "Decoder.sv"
`include "ImmGen.sv"
module Controller(Instruction, ALUControl, RegWrite, MemWrite, Branch, MemToReg, ALUScr, Imm);
    parameter BITS = 32;
    input wire [BITS-1:0] Instruction;

    output reg [0:63] Imm;
    output reg [0:1] ALUControl;
    output reg RegWrite, MemWrite, Branch, MemToReg;
    output reg ALUScr;

    Decoder #(BITS) decoder(
        .OpCode(Instruction[6:2]),
        .funct1(Instruction[14:12]),
        .funct2(Instruction[30]),
        .ALUControl(ALUControl),
        .RegWrite(RegWrite),
        .MemWrite(MemWrite),
        .Branch(Branch),
        .MemToReg(MemToReg),
        .ALUScr(ALUScr));

    ImmGen #(BITS) immGen(
        .OpCode(Instruction[6:2]),
        .InstructionP1(Instruction[31:20]),
        .InstructionP2(Instruction[11:7]),
        .Imm(Imm));

endmodule