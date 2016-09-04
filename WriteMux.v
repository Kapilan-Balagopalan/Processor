`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:31:02 07/16/2016 
// Design Name: 
// Module Name:    WriteMux 
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
module WriteIncMux(select,AC,AR,DR,IR,PC,R,TR,Write);
input [2:0] select;
output AC,AR,IR,PC,R,DR,TR,Write;
reg AC,AR,IR,PC,R,DR,TR,Write;
parameter ac=3'b000, ar= 3'b001, dr=3'b010, ir=3'b011, pc=3'b100, r=3'b101,tr=3'b110 , ra = 3'b111;
	always @(select)
		
		begin
			AC<=0; AR<=0; IR<=0; PC<=0; R<=0; TR<=0; DR <= 0; TR<=0 ; Write<=0;
			case (select)
				ac: AC <= 1;
				ar: AR <= 1;
				ir: IR <= 1;
				pc: PC <= 1;
				r : R  <= 1;
				tr: TR <= 1;
				dr: DR <= 1;
				ra: Write <= 1; 
			endcase
		end
endmodule

