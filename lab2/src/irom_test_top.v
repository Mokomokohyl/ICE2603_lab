`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/10/29 14:57:06
// Design Name: irom_test_top
// Module Name: irom_test_top
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


module irom_test_top(
    input sys_rst_n,
    input sys_clk_in,
    input [4:0] sw_pin,
    input [4:0] dip_pin,
    output [7:0] seg_data_0_pin, //output A1,B1,C1,D1,E1,F1,G1,DP1,
    output [7:0] seg_data_1_pin,  //output A0,B0,C0,D0,E0,F0,G0,DP0,
    output [7:0] seg_cs_pin, //DN1_K4,DN1_K3,DN1_K2,DN1_K0,DN0_K4,DN0_K3,DN0_K2,DN0_K1
    output [0:15] led_pin
     );
wire [31:0] pc,inst;
wire clock_1s;
wire z = dip_pin[0];          // z可以使用SW开关输入或固定值
wire wreg, m2reg, aluimm, sext, wmem, i_lui, i_sw, shift;
wire [3:0] aluc;
wire [1:0] pcsource;


//产生 1s clock
clk_div div(
.clkin(sys_clk_in),
.clkout(clock_1s)
);


//例化dff32 （pc指针寄存器pcdff） & 产生 npc （pc+4）
wire [31:0] npc;
assign npc = pc + 32'h4;
dff32 dff(
    .clk(clock_1s),
    .clrn(sys_rst_n),
    .d(npc),
    .q(pc)
); 



wire ena = 1'b1; 
wire [5:0] addra; //指令存储器地址线
assign addra = pc[7:2];
// 例化 irom
irom irom (
  .clka(clock_1s),    // input wire clka
  .ena(ena),      // input wire ena
  .addra(addra),  // input wire [5 : 0] addra
  .douta(inst)  // output wire [31 : 0] douta
);

//例化display 
display display(
  .clk(sys_clk_in),
  .reset(sys_rst_n),
  .s(inst),
  .seg0(seg_data_0_pin),
  .seg1(seg_data_1_pin),
  .ans(seg_cs_pin)
  );



//module sc_cu (inst, z, wmem, wreg,  m2reg, aluc, 
              //aluimm, pcsource, sext,i_lui,i_sw,shift);
   //input  [31:0] inst;
   //input        z;
   //output       wreg,m2reg,aluimm,sext,wmem,i_lui,i_sw,shift;
   //output [3:0] aluc;
   //output [1:0] pcsource;

//例化sc_cu控制器模块
sc_cu sc_cu (
  .inst(inst),
  .z(z),              // 连接z信号
  .wmem(wmem),
  .wreg(wreg),
  .m2reg(m2reg),
  .aluc(aluc),
  .aluimm(aluimm),
  .pcsource(pcsource),
  .sext(sext),
  .i_lui(i_lui),
  .i_sw(i_sw),
  .shift(shift)
);



//显示读取的指令inst最后4bit和控制器的输出显示在led_pin
assign led_pin = {inst[3:0], z, wmem, wreg, m2reg, aluc,aluimm,pcsource[1:0],sext,i_lui,i_sw,shift};

endmodule

