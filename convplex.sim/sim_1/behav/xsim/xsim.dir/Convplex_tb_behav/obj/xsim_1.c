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
extern void execute_2(char*, char *);
extern void execute_2468(char*, char *);
extern void execute_7429(char*, char *);
extern void execute_7430(char*, char *);
extern void execute_7431(char*, char *);
extern void execute_7432(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_2473(char*, char *);
extern void execute_2474(char*, char *);
extern void execute_2475(char*, char *);
extern void execute_2476(char*, char *);
extern void execute_2477(char*, char *);
extern void execute_2478(char*, char *);
extern void execute_2479(char*, char *);
extern void execute_2480(char*, char *);
extern void execute_2481(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_2482(char*, char *);
extern void execute_2483(char*, char *);
extern void execute_2484(char*, char *);
extern void execute_2485(char*, char *);
extern void execute_2486(char*, char *);
extern void execute_2487(char*, char *);
extern void execute_2488(char*, char *);
extern void execute_2489(char*, char *);
extern void execute_2490(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2493(char*, char *);
extern void execute_2494(char*, char *);
extern void execute_2495(char*, char *);
extern void execute_2496(char*, char *);
extern void execute_2497(char*, char *);
extern void execute_3006(char*, char *);
extern void execute_3007(char*, char *);
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
extern void execute_7426(char*, char *);
extern void execute_7427(char*, char *);
extern void execute_7428(char*, char *);
extern void execute_2470(char*, char *);
extern void execute_2471(char*, char *);
extern void execute_2472(char*, char *);
extern void execute_7433(char*, char *);
extern void execute_7434(char*, char *);
extern void execute_7435(char*, char *);
extern void execute_7436(char*, char *);
extern void execute_7437(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[60] = {(funcp)execute_2, (funcp)execute_2468, (funcp)execute_7429, (funcp)execute_7430, (funcp)execute_7431, (funcp)execute_7432, (funcp)execute_5, (funcp)execute_6, (funcp)execute_2473, (funcp)execute_2474, (funcp)execute_2475, (funcp)execute_2476, (funcp)execute_2477, (funcp)execute_2478, (funcp)execute_2479, (funcp)execute_2480, (funcp)execute_2481, (funcp)execute_8, (funcp)execute_9, (funcp)execute_2482, (funcp)execute_2483, (funcp)execute_2484, (funcp)execute_2485, (funcp)execute_2486, (funcp)execute_2487, (funcp)execute_2488, (funcp)execute_2489, (funcp)execute_2490, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2493, (funcp)execute_2494, (funcp)execute_2495, (funcp)execute_2496, (funcp)execute_2497, (funcp)execute_3006, (funcp)execute_3007, (funcp)execute_7414, (funcp)execute_7415, (funcp)execute_7416, (funcp)execute_7417, (funcp)execute_7418, (funcp)execute_7419, (funcp)execute_7420, (funcp)execute_7421, (funcp)execute_7422, (funcp)execute_7423, (funcp)execute_7424, (funcp)execute_7425, (funcp)execute_7426, (funcp)execute_7427, (funcp)execute_7428, (funcp)execute_2470, (funcp)execute_2471, (funcp)execute_2472, (funcp)execute_7433, (funcp)execute_7434, (funcp)execute_7435, (funcp)execute_7436, (funcp)execute_7437, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 60;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Convplex_tb_behav/xsim.reloc",  (void **)funcTab, 60);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/Convplex_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/Convplex_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/Convplex_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/Convplex_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/Convplex_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
