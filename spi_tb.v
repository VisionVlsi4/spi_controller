`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2026 20:16:00
// Design Name: 
// Module Name: spi_tb
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


module spi_tb;

reg clk;
reg reset;
reg [7:0] data_in;

wire mosi;
wire sclk;
wire cs;
wire [7:0] data_out;

spi_master master(
.clk(clk),
.reset(reset),
.data_in(data_in),
.mosi(mosi),
.sclk(sclk),
.cs(cs)
);

spi_slave slave(
.sclk(sclk),
.cs(cs),
.mosi(mosi),
.reset(reset),
.data_out(data_out)
);

always #5 clk = ~clk;

initial
begin
clk = 0;
reset = 1;
data_in = 8'b10101010;

#10 reset = 0;

#500 $stop;
end

endmodule
