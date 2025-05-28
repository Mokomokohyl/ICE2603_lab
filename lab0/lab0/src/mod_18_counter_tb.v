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
// Description: 带使能信号的模18计数器测试平台
//
//////////////////////////////////////////////////////////////////////////////////

module mod_18_counter_tb();
    // 信号定义
    reg clk;
    reg rstn;
    reg enable;
    wire [4:0] cnt;
    
    // 实例化被测试模块
    mod_18_counter U(
        .clk(clk),
        .rstn(rstn),
        .enable(enable),
        .cnt(cnt)
    );
    
    // 时钟生成
    parameter clk_period = 10;
    initial begin
        clk = 0;
        forever #(clk_period/2) clk = ~clk;
    end
    
    initial begin
        // 初始化
        rstn = 0;
        enable = 0;
        
        // 复位后释放
        #50 rstn = 1;
        
        // 等待一段时间
        #50;
        
        // 开始周期性变化
        repeat(20) begin  // 重复 20 次
            enable = 1;
            #20;
            enable = 0;
            #20;
        end
        
        // 结束仿真
        $finish;
    end
    
    // 监视信号变化
    initial begin
        $monitor("Time=%t, rstn=%b, enable=%b, count=%d", 
                 $time, rstn, enable, cnt);
    end
endmodule