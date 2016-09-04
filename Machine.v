`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:04:31 07/17/2016 
// Design Name: 
// Module Name:    Machine 
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
module Machine( clk1 , datadown , en,Buss,dummy,z1,ComENNot,AddFromCom,DatFromCom,WriteFromCom,RIM,Arima,ENDda);

input clk1;
input ComENNot;
wire ComEN;
output reg ENDda;
always @(data[0]) begin
 ENDda = data[0];
end
assign ComEN = ~(ComENNot && (~data[0]));
input [15:0] AddFromCom;
input [15:0] DatFromCom;
input  WriteFromCom;
wire clk;
output [23:0] datadown;
input en;
output [15:0] Buss;
wire [15:0] Bus;
wire [7:0] IROUT;
wire [23:0] data;
wire [7:0] addr;
output z1;
wire z;
output [7:0] dummy;
wire [15:0] RAM;
wire [15:0] ARr;
output [15:0] Arima;
//reg [15:0] Arima;
wire [15:0] Inputs;
wire Write;
output [15:0] RIM;

//wire [15:0] RAM;
wire [15:0] ARr1;
wire [15:0] Inputs1;
wire Write1;
assign clk = clk1 & (~ComEN) ;
initial begin
ENDda=0;
end
//reg [7:0] dummy;
//input Read;
//input Write;
//output [15:0] Bus;
//b000011101001100000001010
Processor Pro(data[23:20],data[19:17],data[16:14],data[13:11],clk,Bus,IROUT,z,RAM,ARr,Inputs,Write);
Microstore Mic(clk, en, addr, data);
AddDecoder Muxi (data[10],z,IROUT,data[8:1],addr,data[9]);
MemSelsct ram(clk1,Write1,ARr1,Inputs1,RAM);
//Ennadathu  DDram(clk1,Write1,ARr1,Inputs1,RAM);
ComProSelect ComPro (ComEN , WriteFromCom , DatFromCom, AddFromCom, Write , Inputs , ARr , Write1 , Inputs1 , ARr1 );
assign datadown = data;
assign Buss = Bus;
assign dummy  = addr;
assign z1 = z;
assign RIM = RAM;
assign Arima = ARr1;
endmodule
