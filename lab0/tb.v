`timescale 1ns / 1ps 
////////////////////////////////////////////////////////////////////////////////// 
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/13 19:50:01 
// Design Name: 
// Module Name: tb 
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
 
 
module add_tb(); 
wire[4:0] cnt; 
 
add U(.clk(clk), .cnt(cnt),.rstn(rstn)); 
 
reg clk,rstn; 
parameter clk_period = 10; 
initial begin 
 rstn = 0; 
 clk = 0; 
 #50 rstn = 1; 
 forever 
 #(clk_period/2) clk = ~clk; 
end 
endmodule 
