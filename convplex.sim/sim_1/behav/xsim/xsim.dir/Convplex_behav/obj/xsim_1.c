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
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_2470(char*, char *);
extern void execute_2471(char*, char *);
extern void execute_2472(char*, char *);
extern void execute_2473(char*, char *);
extern void execute_2474(char*, char *);
extern void execute_2475(char*, char *);
extern void execute_2476(char*, char *);
extern void execute_2477(char*, char *);
extern void execute_2478(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_2479(char*, char *);
extern void execute_2480(char*, char *);
extern void execute_2481(char*, char *);
extern void execute_2482(char*, char *);
extern void execute_2483(char*, char *);
extern void execute_2484(char*, char *);
extern void execute_2485(char*, char *);
extern void execute_2486(char*, char *);
extern void execute_2487(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2490(char*, char *);
extern void execute_2491(char*, char *);
extern void execute_2492(char*, char *);
extern void execute_2493(char*, char *);
extern void execute_2494(char*, char *);
extern void execute_3003(char*, char *);
extern void execute_3004(char*, char *);
extern void execute_7411(char*, char *);
extern void execute_7412(char*, char *);
extern void execute_7413(char*, char *);
extern void execute_7414(char*, char *);
extern void execute_7415(char*, char *);
extern void execute_7416(char*, char *);
extern void execute_7417(char*, char *);
extern void execute_7418(char*, char *);
extern void execute_7419(char*, char *);
extern void execute_7420(char*, char *);
extern void execute_7421(char*, char *);
extern void execute_7422(char*, char *);
extern void execute_7423(char*, char *);
extern void execute_7424(char*, char *);
extern void execute_7425(char*, char *);
extern void execute_2467(char*, char *);
extern void execute_2468(char*, char *);
extern void execute_2469(char*, char *);
extern void execute_7426(char*, char *);
extern void execute_7427(char*, char *);
extern void execute_7428(char*, char *);
extern void execute_7429(char*, char *);
extern void execute_7430(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[54] = {(funcp)execute_3, (funcp)execute_4, (funcp)execute_2470, (funcp)execute_2471, (funcp)execute_2472, (funcp)execute_2473, (funcp)execute_2474, (funcp)execute_2475, (funcp)execute_2476, (funcp)execute_2477, (funcp)execute_2478, (funcp)execute_6, (funcp)execute_7, (funcp)execute_2479, (funcp)execute_2480, (funcp)execute_2481, (funcp)execute_2482, (funcp)execute_2483, (funcp)execute_2484, (funcp)execute_2485, (funcp)execute_2486, (funcp)execute_2487, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2490, (funcp)execute_2491, (funcp)execute_2492, (funcp)execute_2493, (funcp)execute_2494, (funcp)execute_3003, (funcp)execute_3004, (funcp)execute_7411, (funcp)execute_7412, (funcp)execute_7413, (funcp)execute_7414, (funcp)execute_7415, (funcp)execute_7416, (funcp)execute_7417, (funcp)execute_7418, (funcp)execute_7419, (funcp)execute_7420, (funcp)execute_7421, (funcp)execute_7422, (funcp)execute_7423, (funcp)execute_7424, (funcp)execute_7425, (funcp)execute_2467, (funcp)execute_2468, (funcp)execute_2469, (funcp)execute_7426, (funcp)execute_7427, (funcp)execute_7428, (funcp)execute_7429, (funcp)execute_7430, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 54;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Convplex_behav/xsim.reloc",  (void **)funcTab, 54);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Convplex_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Convplex_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/Convplex_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Convplex_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Convplex_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
