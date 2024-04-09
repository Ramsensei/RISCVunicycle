`include "Adder.sv"
`include "Mux.sv"
module Alu #(parameter BITS = 64) (SrcA, SrcB, ALUControl, ALUResult, ALUFlags);
    input wire [0:BITS-1] SrcA, SrcB;
	input wire [0:1] ALUControl;
	output reg [0:BITS-1] ALUResult;
	output reg [0:3] ALUFlags;
    
    wire [0:BITS-1] Data_arr_mux2 [0:1];
    wire [0:BITS-1] Data_arr_mux4 [0:3];
	wire [0:BITS-1] mux2_output;
	// wire [0:BITS-1] sum_output;
    wire [0:BITS-1] mux4_output;
    // wire [0:BITS-1] A_or_B;
    // wire [0:BITS-1] A_and_B;
    wire cout;

    assign Data_arr_mux2[0] = SrcB;
    assign Data_arr_mux2[1] = ~SrcB;

	Mux #(2,64) mux2(Data_arr_mux2,ALUControl[1],mux2_output);

	Adder sum(SrcA,mux2_output,ALUControl[1],Data_arr_mux4[0],cout);

    assign Data_arr_mux4[1] = Data_arr_mux4[0];
	assign Data_arr_mux4[2] = SrcA & SrcB;
	assign Data_arr_mux4[3] = SrcA | SrcB;

    // assign Data_arr_mux4[0] = sum_output;
    // assign Data_arr_mux4[2] = A_and_B;
    // assign Data_arr_mux4[3] = A_or_B;

	Mux #(4,64) mux4(Data_arr_mux4, ALUControl, mux4_output);
			  
	assign ALUFlags[0] = ~ALUControl[0] && (mux4_output[0]||SrcA[0]) && ~(ALUControl[1]||SrcA[0]||SrcB[0]);
	assign ALUFlags[1] = ~ALUControl[0] && cout;
	assign ALUFlags[2] = mux4_output[0];
	assign ALUFlags[3] = &(~mux4_output);
			  
	assign ALUResult = mux4_output;
				
endmodule