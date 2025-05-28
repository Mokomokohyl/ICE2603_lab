// 专用分支比较器模块
module branch (
    input [31:0] rs1, rs2,     // 要比较的两个寄存器值
    input [2:0] func3,         // 指令的func3字段
    output reg branch_taken    // 分支是否应该采用
);
    always @(*) begin
        case (func3)
            3'b000: branch_taken = (rs1 == rs2);   // BEQ
            3'b001: branch_taken = (rs1 != rs2);   // BNE
            // 可以扩展支持更多分支指令
            default: branch_taken = 1'b0;
        endcase
    end
endmodule