module immext(inst, sext, i_lui, i_sw, i_branch, i_jal, shift, out_immediate);
    input [31:0] inst;
    input sext, i_lui, i_sw, shift, i_branch, i_jal;
    output [31:0] out_immediate;
    wire e = sext & inst[31];
    wire [31:0] lui_imm = {inst[31:12], 12'b0};
    wire [31:0] shift_imm = {{27{1'b0}}, inst[24:20]};
    wire [31:0] sw_imm = {{20{e}}, inst[31:25], inst[11:7]};
    wire [31:0] branchpc_offset = {{19{e}}, inst[31], inst[7], inst[30:25], inst[11:8], 1'b0};
    wire [31:0] jalpc_offset = {{11{e}}, inst[31], inst[19:12], inst[20], inst[30:21], 1'b0};
    wire [31:0] itype_imm = {{20{e}}, inst[31:20]};
    assign out_immediate = 
        i_lui ? lui_imm :
        i_sw ? sw_imm :
        shift ? shift_imm :
        i_branch ? branchpc_offset :
        i_jal ? jalpc_offset :
        itype_imm;
endmodule