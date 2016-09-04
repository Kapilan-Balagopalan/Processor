`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:20:06 06/22/2016 
// Design Name: 
// Module Name:    tes 
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
module tocpu(rx,clk,count,addru,datau,dataout,cs,clkr,endops,tdata,tx);
input endops;
input rx,clk;
reg tvalid;
output tx;
input [15:0] tdata;
output [1:0] count;
wire datch;
reg [7:0] tdatas;


reg cs;
reg clkon;
output cs,clkr;
output [15:0] addru;
reg [7:0] counter1=0;
output [15:0] datau;
reg send=0;
output [7:0] dataout;
wire  [15:0] counter;
reg [15:0] addr_reg;
reg [15:0] data_reg;

wire [31:0] datas;
uart top( .clk(clk),.rxd(rx),.count(count),
.output_axis_tdata(dataout),.input_axis_tdata(tdatas),
.input_axis_tvalid(tvalid),
.tx_busy(tx_busy),
.txd(tx),.counter(counter),
.endops(endops),.datas(datas));

initial 
begin
cs=0;
clkon=1;
end

//always	@	(count)
//begin
//if (!cs)
//begin
//			clkon=0;
//			buffer[count]=dataout;
//			addr_reg={buffer[1],buffer[0]};
//			data_reg={buffer[3],buffer[2]};
//		if (count==3) begin
//			clkon=1;
//		end
//		else begin
//			clkon=0;
//		end
//
//
//		if (addr_reg==255 && data_reg==255)
//			begin
//			clkon=0;
//				cs=1;
//			end
//end
//	else
//		begin
//			clkon=0;
//		end
//end

always @(posedge clk) begin
tdatas=tdata[7:0];
//tdatas[1]=tdata[7:0];
end
always @(datas) begin
if (!cs) begin
	if ((datau==255) && (addru==255)) begin
		cs=1;
		clkon=0;
	
	end
end
end

assign addru= (cs==0 ) ? datas[15:0]: counter[15:0];
assign datau= (cs==0) ? datas[31:16]: 0;
assign clkr = (clkon==1) ? clk: 0;
endmodule

