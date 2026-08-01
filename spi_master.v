`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2026 20:10:48
// Design Name: 
// Module Name: spi_master
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module spi_master(
input clk,
input reset,
input [7:0] data_in,
output reg mosi,
output reg sclk,
output reg cs
);

reg [2:0] bit_cnt;
reg [7:0] shift_reg;

always @(posedge clk)
begin
if(reset)
begin
bit_cnt <= 0;
shift_reg <= 0;
sclk <= 0;
cs <= 1;
end

else
begin

cs <= 0;
sclk <= ~sclk;

if(sclk == 0)
begin
mosi<=data_in[7-bit_cnt];
if(bit_cnt==3'd7)
  bit_cnt<=0;
else
   bit_cnt<=bit_cnt+1;

end
end
end
endmodule

