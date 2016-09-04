`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:28 07/16/2016 
// Design Name: 
// Module Name:    ReadMux 
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
module ReadMux(select,AC,AR,PC,DR,TR,RAM,R,IR,toALUs);
	input [2:0] select;
	input [15:0] AC,DR,TR,RAM,R,IR;
	input [15:0] AR,PC;
	output [15:0] toALUs;
	reg	[15:0]  toALUs;
	parameter ac=3'b000, ar= 3'b001, pc=3'b010, dr=3'b011, tr=3'b100, r=3'b101, ir=3'b110,ram=3'b111;
	always @(select or AC or AR or PC or DR or TR or RAM or IR or R)
		
		begin
			case (select)
				ac: toALUs <= AC;
				ar: toALUs <= AR;
				pc: toALUs <= PC;
				dr : toALUs <= DR;
				tr: toALUs <= TR;
				r:toALUs <= R;
				ir:toALUs <= IR;
				ram : toALUs <= RAM;
				//ram: toALUs <= RAM;
				default:toALUs<=0;
			endcase
		end
endmodule

