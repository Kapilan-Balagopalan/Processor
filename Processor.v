`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:38:26 07/16/2016 
// Design Name: 
// Module Name:    Processor 
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
module Processor(ALUCon,ReadEN,Inc,WriteEN,clk,Bus,IROUT,z,RAM,ARr,ToRam,Write);
output [15:0] ARr;
wire [15:0] PCr; //ACw data comming from the registers
wire [15:0] ACr , DRr, IRr , Rr , TRr;
wire [15:0] Inputs;
output [15:0] ToRam;
wire ACinc,ARinc,DRinc,PCinc,Rinc,TRinc,IRInc;
wire [15:0] ACout;
input  [15:0] RAM;
//wor IRin;   
//input ZEN;                                          
wire ACwr,ARwr,DRwr,IRwr,PCwr,Rwr,TRwr;
input [2:0] ReadEN;
input [3:0] ALUCon;
input [2:0] Inc,WriteEN;
//input [8:0] RAM;
output [15:0] Bus;
output [7:0] IROUT;
//output [15:0] dta;
output z; 
//input Read;
output Write;
//output [15:0] dataout;
//output [15:0] IRout;
//input Ramwr;
input clk;
		RegisterAC AC(clk,ACout,ACr,ACinc,ACwr);//module RegisterAC(clk,datain,dataout,toALU,inc,write);
		Register16 AR(clk,Inputs,ARr,ARinc,ARwr);
		Register16 DR(clk,Inputs,DRr,DRinc,DRwr);
		Register16 IR(clk,Inputs,IRr,IRinc,IRwr);//module Register(clk,datain,dataout,inc,write);
		Register16 PC(clk,Inputs,PCr,PCinc,PCwr);
		Register16 R(clk,Inputs,Rr,Rinc,Rwr);
		Register16 TR(clk,Inputs,TRr,TRinc,TRwr);
		ALU Alu(ALUCon,ACr,ACout,Inputs,Z);//module ALU(CS,ACin,ACout,Rin,Z,Zclear);
		//MemRam Ramchip (clk,ARr,Read,Write,Inputs,RAM);//module MemRam(clk,Address , Read , Write , datalinein , datalineout);
	   //MemSelsct ram(clk,Write,ARr,Inputs,RAM);
		
		ReadMux outs(ReadEN,ACr,ARr,PCr,DRr,TRr,RAM,Rr,IRr,Inputs);//module ReadMux(select,AC,AR,PC,DR,TR,RAM,toALUs);
		IncMux1 incs(Inc,ACinc,ARinc,DRinc,IRinc,PCinc,Rinc,TRinc);
		WriteMux1 wr(WriteEN,ACwr,ARwr,DRwr,IRwr,PCwr,Rwr,TRwr,Write);
		assign Bus = Inputs;
		//assign ALUOUT = ACout;
		assign IROUT = IRr[7:0];
		assign z = Z;
		assign ToRam = Inputs;
		//memory mem(Inputs,ARw,Ramwr,clk,RAMw);
//assign dataout=Inputs;
endmodule