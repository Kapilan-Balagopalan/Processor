`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:39:18 07/27/2016 
// Design Name: 
// Module Name:    ComProSelect 
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
module ComProSelect(ComEN , WriteFromCom , DatFromCom, AddFromCom, Write , Inputs , ARr , Write1 , Inputs1 , ARr1 
    );
input ComEN;
input WriteFromCom;
input Write;
input [15:0] DatFromCom;
input [15:0] AddFromCom;
input [15:0] ARr;
input [15:0] Inputs;
output Write1;
reg SWrite1;
output [15:0] ARr1;
reg [15:0] SARr1;
output [15:0] Inputs1;
reg [15:0] SInputs1;

always @(ComEN or WriteFromCom or AddFromCom or DatFromCom or Write or ARr or Inputs)
begin
	case (ComEN)
	1'b1:
	begin
	 SWrite1<=WriteFromCom;
	 SARr1<=AddFromCom;
	 SInputs1 <= DatFromCom;
	end
	1'b0:
	begin
	 SWrite1 <= Write;
	 SARr1 <= ARr;
	 SInputs1 <= Inputs;
	end
	endcase
end

assign Write1 = SWrite1;
assign Inputs1 = SInputs1;
assign ARr1 = SARr1;
endmodule
