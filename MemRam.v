`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:23:35 07/17/2016 
// Design Name: 
// Module Name:    MemRam 
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
module MemRam(clk,Address , Read , Write , datalinein , datalineout);

input [15:0] Address ;
input Read;
input Write;
input clk;
input [7:0] datalinein;
output [7:0] datalineout;
reg [7:0] ram[65535:0];
reg [15:0] addr_reg;

	always @ (Address)
	begin
	addr_reg <= Address;
	end
	
	always @(posedge clk)
	begin
		if (Write)
		ram [addr_reg] <= datalinein;
	
	
	end
	
	
	
		
	// Continuous assignment implies read returns NEW data.
	// This is the natural behavior of the TriMatrix memory
	// blocks in Single Port mode.  
	assign datalineout = ram[addr_reg];
	




endmodule
