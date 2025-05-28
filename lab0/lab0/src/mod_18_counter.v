`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/31 09:48:21
// Design Name: 
// Module Name: mod_18_counter
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


module mod_18_counter(
    input rstn,          // ��λ�źţ��͵�ƽ��Ч
    input clk,           // ʱ���ź�
    input enable,        // ���������źţ��ߵ�ƽ��Ч
    output [4:0] cnt     // 5λ���ļ��������
); 

    reg [4:0] cnt_temp;
    always @(posedge clk or negedge rstn) begin 
        if(!rstn) begin 
            cnt_temp <= 5'b00000;  // ��λʱ����������
        end 
        else if (enable) begin     // ֻ�е�enableΪ1ʱ�Ž��м���
            if (cnt_temp == 5'd17) begin  // �ﵽ17ʱ����Ϊ0��ģ18��
                cnt_temp <= 5'b00000;
            end 
            else begin 
                cnt_temp <= cnt_temp + 5'b00001; // �����1
            end
        end
        // ��enableΪ0ʱ�����ֵ�ǰֵ����ִ���κθ�ֵ������
    end
    
    assign cnt = cnt_temp;
endmodule
