`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:52:06 07/16/2016 
// Design Name: 
// Module Name:    ALU 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ALU(CS,ACin,ACout,Rin,Z);

//input clk;
input [3:0] CS;
input [15:0] ACin;
input [15:0] Rin;
output [15:0] ACout;
//input Zclear;
output Z;
reg Z;
reg	[15:0] Reg_dataout;
parameter NOP=4'b0000, ADD=4'b0001, SUB=4'b0010, NOT=4'b0011, AND=4'b0100, OR=4'b0101, XOR=4'b0110, MUL = 4'b0111 , SHIFT1 = 4'b1000 , SHIFT2 = 4'b1001 , MOV = 4'b1010 ,CLA11C = 4'b1011; 
initial begin 
Z<=0;
end
always @(CS or ACin or Rin)
	begin

	case (CS)
		NOP: Reg_dataout <=ACin;
		ADD: Reg_dataout <= Rin+ACin;
		SUB: Reg_dataout <= ACin-Rin;
		NOT: Reg_dataout <= 	~ACin;
		AND: Reg_dataout <= ACin & Rin;
		OR : Reg_dataout <= ACin | Rin;
		XOR: Reg_dataout <= ACin ^ Rin;
		MUL: Reg_dataout <= ACin*Rin;
		SHIFT1 : Reg_dataout <= ACin>>1;
		SHIFT2 : Reg_dataout <= ACin>>2;
		MOV : Reg_dataout <= Rin;
		CLA11C : Reg_dataout <= 0;
		default: Reg_dataout <= Rin;
			
	endcase
	if (Reg_dataout == 16'b0)
	
		 Z<=1'b1;
	else 
		 Z<=1'b0;
		
	end
	assign ACout = Reg_dataout;
	//assign Z = Zoo;
endmodule		

