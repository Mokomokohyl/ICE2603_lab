/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_109(char*, char *);
extern void execute_110(char*, char *);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_517(char*, char *);
extern void execute_518(char*, char *);
extern void execute_519(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_115(char*, char *);
extern void execute_116(char*, char *);
extern void execute_117(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_180(char*, char *);
extern void execute_181(char*, char *);
extern void execute_182(char*, char *);
extern void execute_11(char*, char *);
extern void execute_119(char*, char *);
extern void execute_120(char*, char *);
extern void execute_121(char*, char *);
extern void execute_122(char*, char *);
extern void execute_123(char*, char *);
extern void execute_124(char*, char *);
extern void execute_125(char*, char *);
extern void execute_126(char*, char *);
extern void execute_14(char*, char *);
extern void execute_127(char*, char *);
extern void execute_128(char*, char *);
extern void execute_130(char*, char *);
extern void execute_131(char*, char *);
extern void execute_132(char*, char *);
extern void execute_133(char*, char *);
extern void execute_134(char*, char *);
extern void execute_135(char*, char *);
extern void execute_136(char*, char *);
extern void execute_137(char*, char *);
extern void execute_138(char*, char *);
extern void execute_141(char*, char *);
extern void execute_142(char*, char *);
extern void execute_143(char*, char *);
extern void execute_144(char*, char *);
extern void execute_145(char*, char *);
extern void execute_146(char*, char *);
extern void execute_147(char*, char *);
extern void execute_148(char*, char *);
extern void execute_149(char*, char *);
extern void execute_150(char*, char *);
extern void execute_151(char*, char *);
extern void execute_152(char*, char *);
extern void execute_153(char*, char *);
extern void execute_154(char*, char *);
extern void execute_155(char*, char *);
extern void execute_156(char*, char *);
extern void execute_157(char*, char *);
extern void execute_158(char*, char *);
extern void execute_159(char*, char *);
extern void execute_160(char*, char *);
extern void execute_161(char*, char *);
extern void execute_162(char*, char *);
extern void execute_163(char*, char *);
extern void execute_164(char*, char *);
extern void execute_165(char*, char *);
extern void execute_166(char*, char *);
extern void execute_167(char*, char *);
extern void execute_168(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_171(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_20(char*, char *);
extern void execute_174(char*, char *);
extern void execute_177(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_309(char*, char *);
extern void execute_315(char*, char *);
extern void execute_316(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_331(char*, char *);
extern void execute_336(char*, char *);
extern void execute_337(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_30(char*, char *);
extern void execute_58(char*, char *);
extern void execute_299(char*, char *);
extern void execute_300(char*, char *);
extern void execute_301(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_304(char*, char *);
extern void execute_305(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_231(char*, char *);
extern void execute_232(char*, char *);
extern void execute_233(char*, char *);
extern void execute_234(char*, char *);
extern void execute_235(char*, char *);
extern void execute_236(char*, char *);
extern void execute_237(char*, char *);
extern void execute_239(char*, char *);
extern void execute_240(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_246(char*, char *);
extern void execute_250(char*, char *);
extern void execute_251(char*, char *);
extern void execute_252(char*, char *);
extern void execute_253(char*, char *);
extern void execute_254(char*, char *);
extern void execute_255(char*, char *);
extern void execute_258(char*, char *);
extern void execute_260(char*, char *);
extern void execute_261(char*, char *);
extern void execute_262(char*, char *);
extern void execute_263(char*, char *);
extern void execute_264(char*, char *);
extern void execute_265(char*, char *);
extern void execute_266(char*, char *);
extern void execute_267(char*, char *);
extern void execute_268(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_272(char*, char *);
extern void execute_273(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_45(char*, char *);
extern void execute_46(char*, char *);
extern void execute_243(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_48(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_247(char*, char *);
extern void execute_248(char*, char *);
extern void execute_249(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_346(char*, char *);
extern void execute_347(char*, char *);
extern void execute_348(char*, char *);
extern void execute_514(char*, char *);
extern void execute_515(char*, char *);
extern void execute_516(char*, char *);
extern void execute_480(char*, char *);
extern void execute_481(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_492(char*, char *);
extern void execute_493(char*, char *);
extern void execute_494(char*, char *);
extern void execute_496(char*, char *);
extern void execute_501(char*, char *);
extern void execute_502(char*, char *);
extern void execute_503(char*, char *);
extern void execute_504(char*, char *);
extern void execute_505(char*, char *);
extern void execute_63(char*, char *);
extern void execute_91(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_468(char*, char *);
extern void execute_469(char*, char *);
extern void execute_470(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_398(char*, char *);
extern void execute_399(char*, char *);
extern void execute_400(char*, char *);
extern void execute_401(char*, char *);
extern void execute_402(char*, char *);
extern void execute_403(char*, char *);
extern void execute_404(char*, char *);
extern void execute_406(char*, char *);
extern void execute_407(char*, char *);
extern void execute_408(char*, char *);
extern void execute_409(char*, char *);
extern void execute_413(char*, char *);
extern void execute_417(char*, char *);
extern void execute_418(char*, char *);
extern void execute_419(char*, char *);
extern void execute_420(char*, char *);
extern void execute_421(char*, char *);
extern void execute_422(char*, char *);
extern void execute_425(char*, char *);
extern void execute_427(char*, char *);
extern void execute_428(char*, char *);
extern void execute_429(char*, char *);
extern void execute_430(char*, char *);
extern void execute_431(char*, char *);
extern void execute_432(char*, char *);
extern void execute_433(char*, char *);
extern void execute_434(char*, char *);
extern void execute_435(char*, char *);
extern void execute_436(char*, char *);
extern void execute_437(char*, char *);
extern void execute_438(char*, char *);
extern void execute_439(char*, char *);
extern void execute_440(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_410(char*, char *);
extern void execute_411(char*, char *);
extern void execute_412(char*, char *);
extern void execute_81(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_414(char*, char *);
extern void execute_415(char*, char *);
extern void execute_416(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_93(char*, char *);
extern void execute_97(char*, char *);
extern void execute_510(char*, char *);
extern void execute_511(char*, char *);
extern void execute_512(char*, char *);
extern void execute_96(char*, char *);
extern void execute_99(char*, char *);
extern void execute_105(char*, char *);
extern void execute_106(char*, char *);
extern void execute_526(char*, char *);
extern void execute_528(char*, char *);
extern void execute_529(char*, char *);
extern void execute_108(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_114(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_539(char*, char *);
extern void execute_540(char*, char *);
extern void execute_541(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[262] = {(funcp)execute_109, (funcp)execute_110, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_517, (funcp)execute_518, (funcp)execute_519, (funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)execute_4, (funcp)execute_5, (funcp)execute_115, (funcp)execute_116, (funcp)execute_117, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_180, (funcp)execute_181, (funcp)execute_182, (funcp)execute_11, (funcp)execute_119, (funcp)execute_120, (funcp)execute_121, (funcp)execute_122, (funcp)execute_123, (funcp)execute_124, (funcp)execute_125, (funcp)execute_126, (funcp)execute_14, (funcp)execute_127, (funcp)execute_128, (funcp)execute_130, (funcp)execute_131, (funcp)execute_132, (funcp)execute_133, (funcp)execute_134, (funcp)execute_135, (funcp)execute_136, (funcp)execute_137, (funcp)execute_138, (funcp)execute_141, (funcp)execute_142, (funcp)execute_143, (funcp)execute_144, (funcp)execute_145, (funcp)execute_146, (funcp)execute_147, (funcp)execute_148, (funcp)execute_149, (funcp)execute_150, (funcp)execute_151, (funcp)execute_152, (funcp)execute_153, (funcp)execute_154, (funcp)execute_155, (funcp)execute_156, (funcp)execute_157, (funcp)execute_158, (funcp)execute_159, (funcp)execute_160, (funcp)execute_161, (funcp)execute_162, (funcp)execute_163, (funcp)execute_164, (funcp)execute_165, (funcp)execute_166, (funcp)execute_167, (funcp)execute_168, (funcp)execute_169, (funcp)execute_170, (funcp)execute_171, (funcp)execute_172, (funcp)execute_173, (funcp)execute_20, (funcp)execute_174, (funcp)execute_177, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_309, (funcp)execute_315, (funcp)execute_316, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_331, (funcp)execute_336, (funcp)execute_337, (funcp)execute_338, (funcp)execute_339, (funcp)execute_340, (funcp)execute_30, (funcp)execute_58, (funcp)execute_299, (funcp)execute_300, (funcp)execute_301, (funcp)execute_302, (funcp)execute_303, (funcp)execute_304, (funcp)execute_305, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_231, (funcp)execute_232, (funcp)execute_233, (funcp)execute_234, (funcp)execute_235, (funcp)execute_236, (funcp)execute_237, (funcp)execute_239, (funcp)execute_240, (funcp)execute_241, (funcp)execute_242, (funcp)execute_246, (funcp)execute_250, (funcp)execute_251, (funcp)execute_252, (funcp)execute_253, (funcp)execute_254, (funcp)execute_255, (funcp)execute_258, (funcp)execute_260, (funcp)execute_261, (funcp)execute_262, (funcp)execute_263, (funcp)execute_264, (funcp)execute_265, (funcp)execute_266, (funcp)execute_267, (funcp)execute_268, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_272, (funcp)execute_273, (funcp)execute_43, (funcp)execute_44, (funcp)execute_45, (funcp)execute_46, (funcp)execute_243, (funcp)execute_244, (funcp)execute_245, (funcp)execute_48, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_247, (funcp)execute_248, (funcp)execute_249, (funcp)execute_53, (funcp)execute_54, (funcp)execute_346, (funcp)execute_347, (funcp)execute_348, (funcp)execute_514, (funcp)execute_515, (funcp)execute_516, (funcp)execute_480, (funcp)execute_481, (funcp)execute_490, (funcp)execute_491, (funcp)execute_492, (funcp)execute_493, (funcp)execute_494, (funcp)execute_496, (funcp)execute_501, (funcp)execute_502, (funcp)execute_503, (funcp)execute_504, (funcp)execute_505, (funcp)execute_63, (funcp)execute_91, (funcp)execute_466, (funcp)execute_467, (funcp)execute_468, (funcp)execute_469, (funcp)execute_470, (funcp)execute_471, (funcp)execute_472, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_398, (funcp)execute_399, (funcp)execute_400, (funcp)execute_401, (funcp)execute_402, (funcp)execute_403, (funcp)execute_404, (funcp)execute_406, (funcp)execute_407, (funcp)execute_408, (funcp)execute_409, (funcp)execute_413, (funcp)execute_417, (funcp)execute_418, (funcp)execute_419, (funcp)execute_420, (funcp)execute_421, (funcp)execute_422, (funcp)execute_425, (funcp)execute_427, (funcp)execute_428, (funcp)execute_429, (funcp)execute_430, (funcp)execute_431, (funcp)execute_432, (funcp)execute_433, (funcp)execute_434, (funcp)execute_435, (funcp)execute_436, (funcp)execute_437, (funcp)execute_438, (funcp)execute_439, (funcp)execute_440, (funcp)execute_76, (funcp)execute_77, (funcp)execute_78, (funcp)execute_79, (funcp)execute_410, (funcp)execute_411, (funcp)execute_412, (funcp)execute_81, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_414, (funcp)execute_415, (funcp)execute_416, (funcp)execute_86, (funcp)execute_87, (funcp)execute_93, (funcp)execute_97, (funcp)execute_510, (funcp)execute_511, (funcp)execute_512, (funcp)execute_96, (funcp)execute_99, (funcp)execute_105, (funcp)execute_106, (funcp)execute_526, (funcp)execute_528, (funcp)execute_529, (funcp)execute_108, (funcp)execute_112, (funcp)execute_113, (funcp)execute_114, (funcp)execute_537, (funcp)execute_538, (funcp)execute_539, (funcp)execute_540, (funcp)execute_541, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 262;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/TB_sc_computer_iotest_behav/xsim.reloc",  (void **)funcTab, 262);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/TB_sc_computer_iotest_behav/xsim.reloc");
}

	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

void wrapper_func_0(char *dp)

{

}

void simulate(char *dp)
{
		iki_schedule_processes_at_time_zero(dp, "xsim.dir/TB_sc_computer_iotest_behav/xsim.reloc");
	wrapper_func_0(dp);

	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/TB_sc_computer_iotest_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/TB_sc_computer_iotest_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/TB_sc_computer_iotest_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
