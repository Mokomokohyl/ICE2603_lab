module sc_cpu (clock,resetn,inst,mem,pc,wmem,aluout,data);
   input [31:0] inst,mem;
   input clock,resetn;
   output [31:0] pc,aluout,data;
   output wmem;
  
   wire [31:0]   p4,branchpc,jalrpc,npc,immediate;
   wire [31:0]   ra,rb,regf_din;//regfile output a,b, input data
   wire [31:0]   alua,alub,alu_mem;
   wire [3:0]    aluc;
   wire          zero,wmem,wreg,m2reg,aluimm,sext,i_lui,i_sw,shift,pcsource,i_branch,i_J,i_jal;
  //pc register unit ,dff32
   dff32 ip (npc,clock,resetn,pc);  // define a D-register for PC


  //immedate data extent unit ,   immext
   immext ImmGen(inst,sext,i_lui,i_sw,i_branch,i_jal,shift,immediate);// generate ext immediate,
  
  
  //register file,   mux2x32 , regfile
  regfile rf(
     .clk(clock),
     .clrn(resetn),
     .rna(inst[19:15]),
     .rnb(inst[24:20]),
     .qa(ra),
     .qb(rb),
     .wn(inst[11:7]),
     .we(wreg),
     .d(regf_din)
  );
  assign data = rb;
  
  

  //control unit ,sc_cu
   sc_cu cu (inst,zero,wmem,wreg,m2reg,aluc,aluimm,sext,i_lui,i_sw,shift,i_branch,i_J,i_jal);


  //alu unit   , mux2x32,alu

   mux2x32 alu_a(
     .s(i_branch | i_jal),
     .a0(ra),
     .a1(pc),
     .y(alua)
   );

   mux2x32 alu_b(
     .s(aluimm),
     .a1(immediate),
     .a0(rb),
     .y(alub)
   );

   alu alu_unit(
     .a(alua),
     .b(alub),
     .aluc(aluc),
     .s(aluout),
     .z(zero)
   );



  //next pc generate ,   cla32 ,mux4x32
   //mux4x32 nextpc(
     //.s(pcsource),
     //.a0(p4),
     //.a1(branchpc),
     //.a2(jalrpc),
     //.a3(branchpc),
     //.y(npc)
   //);

   mux2x32 nextpc(
    .s(pcsource),
    .a1(aluout),
    .a0(p4),
    .y(npc)
   );

   wire branch_taken;
   branch br (
    .rs1(ra),
    .rs2(rb),
    .func3(inst[14:12]),
    .branch_taken(branch_taken)
   );
   assign pcsource = (i_branch & branch_taken) | i_J;

   wire [31:0]tmp;

   
  //write back register file,   mux2x32 
   mux2x32 result(
     .s(m2reg),
     .a1(mem),
     .a0(aluout),
     .y(tmp)
   );

   mux2x32 gen_Regf_din(
     .s(i_J),
     .a0(tmp),
     .a1(p4),
     .y(regf_din)
   );



   cla32 pcplus4(
     .pc(pc),
     .x1(32'h4),
     .p4(p4)
   );

   //cla32 br_adr(
     //.pc(pc),
     //.x1(immediate),
     //.p4(branchpc)
   //);
//
   //cla32 genjalrpc(
     //.pc(ra),
     //.x1(immediate),
     //.p4(jalrpc)
   //);

   
   endmodule