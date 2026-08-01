`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 17.03.2026 20:13:53
// Design Name: 
// Module Name: spi_slave
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



module spi_slave(
input sclk,
input cs,
input mosi,
input reset,
output reg [7:0] data_out
);

reg [2:0] bit_cnt;
reg [7:0] shift_reg;

always @(posedge sclk or posedge reset)
begin
    if(reset)
    begin
        shift_reg <= 8'b00000000;
        bit_cnt <= 0;
        data_out  <= 8'b00000000;
    end
    else if(cs == 0)
    begin
        shift_reg <= {shift_reg[6:0], mosi};

        if(bit_cnt == 3'd7)
        begin
            data_out <= {shift_reg[6:0], mosi};
            bit_cnt <= 0;
        end
        else
            bit_cnt <= bit_cnt + 1;
    end
end

endmodule
