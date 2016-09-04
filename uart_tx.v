`timescale 1ns / 1ps
module uart_tx
(
    input  wire                   clk,
    input  wire [7:0]  input_axis_tdata,
    input  wire                   input_axis_tvalid,
    output wire                   txd,
    output wire                   busy,
	 input wire							endops,
	 output reg		[15:0]   			counter
);

reg txd_reg = 1;
reg [8:0] data_reg = 0;
reg [7:0] prescale_reg = 0;
reg [3:0] bit_cnt = 0;
assign txd = txd_reg;
always @(posedge clk)
begin
	 if (endops) begin
        if (prescale_reg > 0) begin
           
            prescale_reg <= prescale_reg - 1;
        end else if (bit_cnt == 0) begin
					 prescale_reg <= 63;
                bit_cnt <= 9;
                data_reg <= {1'b1, input_axis_tdata};
                txd_reg <= 0;
        end else begin
            if (bit_cnt > 1) begin
                bit_cnt <= bit_cnt - 1;
                prescale_reg <= 63;
                {data_reg, txd_reg} <= {1'b0, data_reg};
            end else if (bit_cnt == 1) begin
                bit_cnt <= bit_cnt - 1;
                prescale_reg <= (64);
                txd_reg <= 1;
					 counter<=counter+1;
            end
        end
	 end
end

endmodule
