`timescale 1ns / 1ps 
////////////////////////////////////////////////////////////////////////////////// 
// Company: 
// Engineer: 
// 
// Create Date: 2022/01/13 19:48:06 
// Design Name: 
// Module Name: add 
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
 
 
module add( 
 input rstn, 
 input clk, 
 output [4:0] cnt); 

 reg [4:0] cnt_temp ; 
 always@(posedge clk or negedge rstn) begin 
 if(! rstn)begin 
 cnt_temp <= 5'b00000;
 end 
 else if (cnt_temp == 5'b10001) begin 
 cnt_temp <= 5'b00000 ; 
 end 
 else begin 
 cnt_temp <= 5'b00001+ cnt_temp ; 
 end 
 end 
 assign cnt = cnt_temp ; 
 
endmodule 