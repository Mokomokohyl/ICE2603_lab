`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/03/31
// Design Name: 
// Module Name: counter_with_enable_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: ��ʹ���źŵ�ģ18����������ƽ̨
//
//////////////////////////////////////////////////////////////////////////////////

module mod_18_counter_tb();
    // �źŶ���
    reg clk;
    reg rstn;
    reg enable;
    wire [4:0] cnt;
    
    // ʵ����������ģ��
    mod_18_counter U(
        .clk(clk),
        .rstn(rstn),
        .enable(enable),
        .cnt(cnt)
    );
    
    // ʱ������
    parameter clk_period = 10;
    initial begin
        clk = 0;
        forever #(clk_period/2) clk = ~clk;
    end
    
    initial begin
        // ��ʼ��
        rstn = 0;
        enable = 0;
        
        // ��λ���ͷ�
        #50 rstn = 1;
        
        // �ȴ�һ��ʱ��
        #50;
        
        // ��ʼ�����Ա仯
        repeat(20) begin  // �ظ� 20 ��
            enable = 1;
            #20;
            enable = 0;
            #20;
        end
        
        // ��������
        $finish;
    end
    
    // �����źű仯
    initial begin
        $monitor("Time=%t, rstn=%b, enable=%b, count=%d", 
                 $time, rstn, enable, cnt);
    end
endmodule