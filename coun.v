`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:15:22 06/26/2016 
// Design Name: 
// Module Name:    coun 
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
module coun(clkin,clkout );
input clkin;
output reg clkout=0;
reg  [25:0] count=0;
always@(posedge clkin)
begin
clkout<=!clkout;
//count<=count+1;
//if (count==10000000)
//begin
//clkout<=!clkout;
//count<=0;
//end
end


endmodule
