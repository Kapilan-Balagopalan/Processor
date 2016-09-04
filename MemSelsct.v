`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    06:24:49 07/25/2016 
// Design Name: 
// Module Name:    MemSelsct 
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
module MemSelsct(clk1,Write1,ARr1,Inputs1,RAM);
input clk1;
input Write1;
input [15:0] ARr1;
input [15:0] Inputs1;
output [15:0] RAM;
wire [7:0] DRAM;
wire [15:0] IRAM;
wire  selectRam;
wire selectRam1;
wire writerIns;
wire writerdata;
wire [15:0] replica1;
wire [15:0] replica2;
//wire Write;
//wire selectRam;
//reg [15:0] RAM;
parameter InRam = 1'b0 , DatRam = 1'b1;


Dramda Dramdi(clk1,writerdata,ARr1,Inputs1[7:0],DRAM);
InstructionRam Iram (clk1,writerIns,ARr1[9:0],Inputs1,IRAM);
	
assign selectRam = ARr1[10]|ARr1[11]|ARr1[12]|ARr1[13]|ARr1[14]|InRam|ARr1[15];
//assign selectRam = selectRam1 | ARr1[15];
assign writerIns =(~selectRam) & Write1;
assign writerdata  = selectRam & Write1;
assign replica1 = {selectRam,selectRam,selectRam,selectRam,selectRam,selectRam,
selectRam,selectRam,selectRam,selectRam,selectRam,selectRam,selectRam,selectRam,selectRam,selectRam};
assign replica2 = {~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,
~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,~selectRam,~selectRam , ~selectRam};

assign RAM = (replica1&{8'b0,DRAM})|(replica2&IRAM);







endmodule
