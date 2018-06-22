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
extern void execute_2506(char*, char *);
extern void execute_2507(char*, char *);
extern void execute_2508(char*, char *);
extern void execute_7629(char*, char *);
extern void execute_7630(char*, char *);
extern void execute_7631(char*, char *);
extern void execute_7632(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2639(char*, char *);
extern void execute_2648(char*, char *);
extern void execute_2649(char*, char *);
extern void execute_2650(char*, char *);
extern void execute_2651(char*, char *);
extern void execute_2652(char*, char *);
extern void execute_2654(char*, char *);
extern void execute_2659(char*, char *);
extern void execute_2660(char*, char *);
extern void execute_2661(char*, char *);
extern void execute_2662(char*, char *);
extern void execute_2663(char*, char *);
extern void execute_4(char*, char *);
extern void execute_35(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2597(char*, char *);
extern void execute_2598(char*, char *);
extern void execute_2600(char*, char *);
extern void execute_2601(char*, char *);
extern void execute_2602(char*, char *);
extern void execute_2624(char*, char *);
extern void execute_2625(char*, char *);
extern void execute_2626(char*, char *);
extern void execute_2627(char*, char *);
extern void execute_2628(char*, char *);
extern void execute_2629(char*, char *);
extern void execute_2630(char*, char *);
extern void execute_2631(char*, char *);
extern void execute_13(char*, char *);
extern void execute_14(char*, char *);
extern void execute_28(char*, char *);
extern void execute_29(char*, char *);
extern void execute_2560(char*, char *);
extern void execute_2561(char*, char *);
extern void execute_2562(char*, char *);
extern void execute_2563(char*, char *);
extern void execute_2564(char*, char *);
extern void execute_2565(char*, char *);
extern void execute_2566(char*, char *);
extern void execute_2567(char*, char *);
extern void execute_2569(char*, char *);
extern void execute_2570(char*, char *);
extern void execute_2571(char*, char *);
extern void execute_2575(char*, char *);
extern void execute_2581(char*, char *);
extern void execute_2583(char*, char *);
extern void execute_2584(char*, char *);
extern void execute_2585(char*, char *);
extern void execute_2586(char*, char *);
extern void execute_2587(char*, char *);
extern void execute_2588(char*, char *);
extern void execute_2589(char*, char *);
extern void execute_2590(char*, char *);
extern void execute_2591(char*, char *);
extern void execute_2592(char*, char *);
extern void execute_2593(char*, char *);
extern void execute_2594(char*, char *);
extern void execute_2595(char*, char *);
extern void execute_2596(char*, char *);
extern void execute_16(char*, char *);
extern void execute_17(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_2572(char*, char *);
extern void execute_2573(char*, char *);
extern void execute_2574(char*, char *);
extern void execute_21(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_2576(char*, char *);
extern void execute_2577(char*, char *);
extern void execute_2578(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_31(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_34(char*, char *);
extern void execute_2605(char*, char *);
extern void execute_7624(char*, char *);
extern void execute_7625(char*, char *);
extern void execute_7626(char*, char *);
extern void execute_7627(char*, char *);
extern void execute_7628(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_43(char*, char *);
extern void execute_44(char*, char *);
extern void execute_2668(char*, char *);
extern void execute_2669(char*, char *);
extern void execute_2670(char*, char *);
extern void execute_2671(char*, char *);
extern void execute_2672(char*, char *);
extern void execute_2673(char*, char *);
extern void execute_2674(char*, char *);
extern void execute_2675(char*, char *);
extern void execute_2676(char*, char *);
extern void execute_46(char*, char *);
extern void execute_47(char*, char *);
extern void execute_2677(char*, char *);
extern void execute_2678(char*, char *);
extern void execute_2679(char*, char *);
extern void execute_2680(char*, char *);
extern void execute_2681(char*, char *);
extern void execute_2682(char*, char *);
extern void execute_2683(char*, char *);
extern void execute_2684(char*, char *);
extern void execute_2685(char*, char *);
extern void execute_2688(char*, char *);
extern void execute_2689(char*, char *);
extern void execute_2690(char*, char *);
extern void execute_2691(char*, char *);
extern void execute_2692(char*, char *);
extern void execute_3201(char*, char *);
extern void execute_3202(char*, char *);
extern void execute_7609(char*, char *);
extern void execute_7610(char*, char *);
extern void execute_7611(char*, char *);
extern void execute_7612(char*, char *);
extern void execute_7613(char*, char *);
extern void execute_7614(char*, char *);
extern void execute_7615(char*, char *);
extern void execute_7616(char*, char *);
extern void execute_7617(char*, char *);
extern void execute_7618(char*, char *);
extern void execute_7619(char*, char *);
extern void execute_7620(char*, char *);
extern void execute_7621(char*, char *);
extern void execute_7622(char*, char *);
extern void execute_7623(char*, char *);
extern void execute_2510(char*, char *);
extern void execute_2511(char*, char *);
extern void execute_2512(char*, char *);
extern void execute_7633(char*, char *);
extern void execute_7634(char*, char *);
extern void execute_7635(char*, char *);
extern void execute_7636(char*, char *);
extern void execute_7637(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[150] = {(funcp)execute_2506, (funcp)execute_2507, (funcp)execute_2508, (funcp)execute_7629, (funcp)execute_7630, (funcp)execute_7631, (funcp)execute_7632, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2639, (funcp)execute_2648, (funcp)execute_2649, (funcp)execute_2650, (funcp)execute_2651, (funcp)execute_2652, (funcp)execute_2654, (funcp)execute_2659, (funcp)execute_2660, (funcp)execute_2661, (funcp)execute_2662, (funcp)execute_2663, (funcp)execute_4, (funcp)execute_35, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2597, (funcp)execute_2598, (funcp)execute_2600, (funcp)execute_2601, (funcp)execute_2602, (funcp)execute_2624, (funcp)execute_2625, (funcp)execute_2626, (funcp)execute_2627, (funcp)execute_2628, (funcp)execute_2629, (funcp)execute_2630, (funcp)execute_2631, (funcp)execute_13, (funcp)execute_14, (funcp)execute_28, (funcp)execute_29, (funcp)execute_2560, (funcp)execute_2561, (funcp)execute_2562, (funcp)execute_2563, (funcp)execute_2564, (funcp)execute_2565, (funcp)execute_2566, (funcp)execute_2567, (funcp)execute_2569, (funcp)execute_2570, (funcp)execute_2571, (funcp)execute_2575, (funcp)execute_2581, (funcp)execute_2583, (funcp)execute_2584, (funcp)execute_2585, (funcp)execute_2586, (funcp)execute_2587, (funcp)execute_2588, (funcp)execute_2589, (funcp)execute_2590, (funcp)execute_2591, (funcp)execute_2592, (funcp)execute_2593, (funcp)execute_2594, (funcp)execute_2595, (funcp)execute_2596, (funcp)execute_16, (funcp)execute_17, (funcp)execute_18, (funcp)execute_19, (funcp)execute_2572, (funcp)execute_2573, (funcp)execute_2574, (funcp)execute_21, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_2576, (funcp)execute_2577, (funcp)execute_2578, (funcp)execute_26, (funcp)execute_27, (funcp)execute_31, (funcp)execute_32, (funcp)execute_33, (funcp)execute_34, (funcp)execute_2605, (funcp)execute_7624, (funcp)execute_7625, (funcp)execute_7626, (funcp)execute_7627, (funcp)execute_7628, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_43, (funcp)execute_44, (funcp)execute_2668, (funcp)execute_2669, (funcp)execute_2670, (funcp)execute_2671, (funcp)execute_2672, (funcp)execute_2673, (funcp)execute_2674, (funcp)execute_2675, (funcp)execute_2676, (funcp)execute_46, (funcp)execute_47, (funcp)execute_2677, (funcp)execute_2678, (funcp)execute_2679, (funcp)execute_2680, (funcp)execute_2681, (funcp)execute_2682, (funcp)execute_2683, (funcp)execute_2684, (funcp)execute_2685, (funcp)execute_2688, (funcp)execute_2689, (funcp)execute_2690, (funcp)execute_2691, (funcp)execute_2692, (funcp)execute_3201, (funcp)execute_3202, (funcp)execute_7609, (funcp)execute_7610, (funcp)execute_7611, (funcp)execute_7612, (funcp)execute_7613, (funcp)execute_7614, (funcp)execute_7615, (funcp)execute_7616, (funcp)execute_7617, (funcp)execute_7618, (funcp)execute_7619, (funcp)execute_7620, (funcp)execute_7621, (funcp)execute_7622, (funcp)execute_7623, (funcp)execute_2510, (funcp)execute_2511, (funcp)execute_2512, (funcp)execute_7633, (funcp)execute_7634, (funcp)execute_7635, (funcp)execute_7636, (funcp)execute_7637, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 150;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/Convplex_tb_behav/xsim.reloc",  (void **)funcTab, 150);

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
