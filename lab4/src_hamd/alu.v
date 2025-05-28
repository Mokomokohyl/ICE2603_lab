module alu (a,b,aluc,s,z);
   input [31:0] a,b;
   input [3:0] aluc;
   output [31:0] s;
   output        z;
   wire z;
   wire [31:0] s;

   wire [31:0] xor_result = a ^ b;
    
   // 计算异或结果中1的个数（并行计数法）
   function [5:0] count_ones;
       input [31:0] num;
       reg [31:0] x;
       begin
           x = num;
           // 并行计数算法 (SWAR - SIMD Within A Register)
           x = (x & 32'h55555555) + ((x >> 1) & 32'h55555555);  // 每2位中1的个数
           x = (x & 32'h33333333) + ((x >> 2) & 32'h33333333);  // 每4位中1的个数
           x = (x & 32'h0F0F0F0F) + ((x >> 4) & 32'h0F0F0F0F);  // 每8位中1的个数
           x = (x & 32'h00FF00FF) + ((x >> 8) & 32'h00FF00FF);  // 每16位中1的个数
           x = (x & 32'h0000FFFF) + ((x >> 16) & 32'h0000FFFF); // 完整的32位中1的个数
           count_ones = x[5:0];  // 最多32个1，用6位表示
       end
   endfunction

   assign  s = (aluc == 4'b0000)? a + b: 
               (aluc == 4'b1000)? a - b:
               (aluc == 4'b0111)? a & b:
               (aluc == 4'b0110)? a | b:
               (aluc == 4'b0100)? a ^ b:
               (aluc == 4'b0010)? b    :
               (aluc == 4'b0001)? a << b:
               (aluc == 4'b0101)? a >> b:
               (aluc == 4'b1101)? $signed($signed(a) >>> $signed(b)):
               (aluc == 4'b1111)? count_ones(xor_result) :
               0;
  assign z = (s == 0); 
  
 /*  
   reg [31:0] s;
   reg        z;
   always @ (a or b or aluc) 
      begin                                 
             casex (aluc)  //   
               4'b0000: s = a + b;             //0000 ADD
               4'b1000: s = a - b;             //1000 SUB
               4'b0111: s =      ;             //0111 AND
               4'b0110: s =     ;              //0110 OR
               4'b0100: s =      ;             //0100 XOR
               4'b0010: s = b;                 //0010 LUI:{lui_imm ,12'b0}             
               4'b0001: s =       ;            //0001 SLL: rd <- (rs1 << rs2)
               4'b0101: s =       ;            //0101 SRL: rd <- (rs1 >>rs2) (logical)
               4'b1101: s =        ;           //1101 SRA: rd <- (rs1 >> rs2) (arithmetic)
               default: s = 0;
             endcase 
             if (s == 0 )  z = 1;
             else z = 0;         
      end     
      */
       
endmodule 