`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:17:13 07/25/2016 
// Design Name: 
// Module Name:    AddDecoder 
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
module AddDecoder(ZEN , Z , IROUT , MicroAdd , FinAdd , EN);
input ZEN;
input Z;
input  [7:0] IROUT;
input EN;
input [7:0] MicroAdd;
output [7:0] FinAdd;
reg [7:0] FinAdd;
wire Zo;
//wire ENo;
wire [1:0] test;

assign Zo = Z& ZEN;
assign test = {EN ,Zo};
always @ (test or IROUT  or MicroAdd)
begin
 
case(test)
	2'b00 : FinAdd <= MicroAdd;
	2'b01 : FinAdd <= {~MicroAdd[7],MicroAdd[6:0]};
	2'b10 : FinAdd <= IROUT;
	2'b11 : FinAdd <= IROUT;
	
endcase

end




endmodule
