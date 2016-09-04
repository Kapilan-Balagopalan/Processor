`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:32:56 07/16/2016 
// Design Name: 
// Module Name:    Register 
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
module Register(clk,datain,dataout,inc,write);
	 input clk;
	 input [15:0] datain;
	 input write;
	 input inc;
	 output [15:0] dataout;
	 reg [15:0] dataout;
	 always @(posedge clk)
			begin
			if (write)
				begin
				dataout<=datain;
				end
			
			else if (inc)
				begin
				dataout<=dataout+1;
				end
			end
endmodule