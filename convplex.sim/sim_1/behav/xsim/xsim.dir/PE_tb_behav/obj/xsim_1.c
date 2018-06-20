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
extern void execute_2544(char*, char *);
extern void execute_2545(char*, char *);
extern void execute_2546(char*, char *);
extern void execute_7840(char*, char *);
extern void execute_7841(char*, char *);
extern void execute_2540(char*, char *);
extern void execute_2541(char*, char *);
extern void execute_2542(char*, char *);
extern void execute_2543(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_7833(char*, char *);
extern void execute_7834(char*, char *);
extern void execute_7835(char*, char *);
extern void execute_7836(char*, char *);
extern void execute_7837(char*, char *);
extern void execute_7838(char*, char *);
extern void execute_7839(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_2682(char*, char *);
extern void execute_2686(char*, char *);
extern void execute_2695(char*, char *);
extern void execute_2696(char*, char *);
extern void execute_2697(char*, char *);
extern void execute_2698(char*, char *);
extern void execute_2699(char*, char *);
extern void execute_2701(char*, char *);
extern void execute_2706(char*, char *);
extern void execute_2707(char*, char *);
extern void execute_2708(char*, char *);
extern void execute_2709(char*, char *);
extern void execute_2710(char*, char *);
extern void execute_9(char*, char *);
extern void execute_42(char*, char *);
extern void execute_2644(char*, char *);
extern void execute_2645(char*, char *);
extern void execute_2647(char*, char *);
extern void execute_2648(char*, char *);
extern void execute_2649(char*, char *);
extern void execute_2671(char*, char *);
extern void execute_2672(char*, char *);
extern void execute_2673(char*, char *);
extern void execute_2674(char*, char *);
extern void execute_2675(char*, char *);
extern void execute_2676(char*, char *);
extern void execute_2677(char*, char *);
extern void execute_2678(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_20(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_36(char*, char *);
extern void execute_2601(char*, char *);
extern void execute_2602(char*, char *);
extern void execute_2603(char*, char *);
extern void execute_2604(char*, char *);
extern void execute_2605(char*, char *);
extern void execute_2606(char*, char *);
extern void execute_2607(char*, char *);
extern void execute_2610(char*, char *);
extern void execute_2611(char*, char *);
extern void execute_2612(char*, char *);
extern void execute_2616(char*, char *);
extern void execute_2620(char*, char *);
extern void execute_2621(char*, char *);
extern void execute_2622(char*, char *);
extern void execute_2623(char*, char *);
extern void execute_2624(char*, char *);
extern void execute_2625(char*, char *);
extern void execute_2628(char*, char *);
extern void execute_2630(char*, char *);
extern void execute_2631(char*, char *);
extern void execute_2632(char*, char *);
extern void execute_2633(char*, char *);
extern void execute_2634(char*, char *);
extern void execute_2635(char*, char *);
extern void execute_2636(char*, char *);
extern void execute_2637(char*, char *);
extern void execute_2638(char*, char *);
extern void execute_2639(char*, char *);
extern void execute_2640(char*, char *);
extern void execute_2641(char*, char *);
extern void execute_2642(char*, char *);
extern void execute_2643(char*, char *);
extern void execute_22(char*, char *);
extern void execute_23(char*, char *);
extern void execute_24(char*, char *);
extern void execute_25(char*, char *);
extern void execute_2613(char*, char *);
extern void execute_2614(char*, char *);
extern void execute_2615(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void execute_38(char*, char *);
extern void execute_39(char*, char *);
extern void execute_40(char*, char *);
extern void execute_41(char*, char *);
extern void execute_2652(char*, char *);
extern void execute_2846(char*, char *);
extern void execute_2847(char*, char *);
extern void execute_2856(char*, char *);
extern void execute_2857(char*, char *);
extern void execute_2858(char*, char *);
extern void execute_2859(char*, char *);
extern void execute_2860(char*, char *);
extern void execute_2862(char*, char *);
extern void execute_2867(char*, char *);
extern void execute_2868(char*, char *);
extern void execute_2869(char*, char *);
extern void execute_2870(char*, char *);
extern void execute_2871(char*, char *);
extern void execute_45(char*, char *);
extern void execute_73(char*, char *);
extern void execute_2831(char*, char *);
extern void execute_2832(char*, char *);
extern void execute_2833(char*, char *);
extern void execute_2834(char*, char *);
extern void execute_2835(char*, char *);
extern void execute_2836(char*, char *);
extern void execute_2837(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_70(char*, char *);
extern void execute_71(char*, char *);
extern void execute_72(char*, char *);
extern void execute_2763(char*, char *);
extern void execute_2764(char*, char *);
extern void execute_2765(char*, char *);
extern void execute_2766(char*, char *);
extern void execute_2767(char*, char *);
extern void execute_2768(char*, char *);
extern void execute_2769(char*, char *);
extern void execute_2771(char*, char *);
extern void execute_2772(char*, char *);
extern void execute_2773(char*, char *);
extern void execute_2774(char*, char *);
extern void execute_2778(char*, char *);
extern void execute_2782(char*, char *);
extern void execute_2783(char*, char *);
extern void execute_2784(char*, char *);
extern void execute_2785(char*, char *);
extern void execute_2786(char*, char *);
extern void execute_2787(char*, char *);
extern void execute_2790(char*, char *);
extern void execute_2792(char*, char *);
extern void execute_2793(char*, char *);
extern void execute_2794(char*, char *);
extern void execute_2795(char*, char *);
extern void execute_2796(char*, char *);
extern void execute_2797(char*, char *);
extern void execute_2798(char*, char *);
extern void execute_2799(char*, char *);
extern void execute_2800(char*, char *);
extern void execute_2801(char*, char *);
extern void execute_2802(char*, char *);
extern void execute_2803(char*, char *);
extern void execute_2804(char*, char *);
extern void execute_2805(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_60(char*, char *);
extern void execute_61(char*, char *);
extern void execute_2775(char*, char *);
extern void execute_2776(char*, char *);
extern void execute_2777(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_2779(char*, char *);
extern void execute_2780(char*, char *);
extern void execute_2781(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_7831(char*, char *);
extern void execute_7832(char*, char *);
extern void execute_76(char*, char *);
extern void execute_77(char*, char *);
extern void execute_2876(char*, char *);
extern void execute_2877(char*, char *);
extern void execute_2878(char*, char *);
extern void execute_2879(char*, char *);
extern void execute_2880(char*, char *);
extern void execute_2881(char*, char *);
extern void execute_2882(char*, char *);
extern void execute_2883(char*, char *);
extern void execute_2884(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_2885(char*, char *);
extern void execute_2886(char*, char *);
extern void execute_2887(char*, char *);
extern void execute_2888(char*, char *);
extern void execute_2889(char*, char *);
extern void execute_2890(char*, char *);
extern void execute_2891(char*, char *);
extern void execute_2892(char*, char *);
extern void execute_2893(char*, char *);
extern void execute_2896(char*, char *);
extern void execute_2897(char*, char *);
extern void execute_2898(char*, char *);
extern void execute_2899(char*, char *);
extern void execute_2900(char*, char *);
extern void execute_3409(char*, char *);
extern void execute_3410(char*, char *);
extern void execute_2539(char*, char *);
extern void execute_7817(char*, char *);
extern void execute_7818(char*, char *);
extern void execute_7819(char*, char *);
extern void execute_7820(char*, char *);
extern void execute_7821(char*, char *);
extern void execute_7822(char*, char *);
extern void execute_7823(char*, char *);
extern void execute_7824(char*, char *);
extern void execute_7825(char*, char *);
extern void execute_7826(char*, char *);
extern void execute_7827(char*, char *);
extern void execute_7828(char*, char *);
extern void execute_7829(char*, char *);
extern void execute_7830(char*, char *);
extern void execute_2548(char*, char *);
extern void execute_2549(char*, char *);
extern void execute_2550(char*, char *);
extern void execute_7842(char*, char *);
extern void execute_7843(char*, char *);
extern void execute_7844(char*, char *);
extern void execute_7845(char*, char *);
extern void execute_7846(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
funcp funcTab[233] = {(funcp)execute_2544, (funcp)execute_2545, (funcp)execute_2546, (funcp)execute_7840, (funcp)execute_7841, (funcp)execute_2540, (funcp)execute_2541, (funcp)execute_2542, (funcp)execute_2543, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_7833, (funcp)execute_7834, (funcp)execute_7835, (funcp)execute_7836, (funcp)execute_7837, (funcp)execute_7838, (funcp)execute_7839, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_2682, (funcp)execute_2686, (funcp)execute_2695, (funcp)execute_2696, (funcp)execute_2697, (funcp)execute_2698, (funcp)execute_2699, (funcp)execute_2701, (funcp)execute_2706, (funcp)execute_2707, (funcp)execute_2708, (funcp)execute_2709, (funcp)execute_2710, (funcp)execute_9, (funcp)execute_42, (funcp)execute_2644, (funcp)execute_2645, (funcp)execute_2647, (funcp)execute_2648, (funcp)execute_2649, (funcp)execute_2671, (funcp)execute_2672, (funcp)execute_2673, (funcp)execute_2674, (funcp)execute_2675, (funcp)execute_2676, (funcp)execute_2677, (funcp)execute_2678, (funcp)execute_18, (funcp)execute_19, (funcp)execute_20, (funcp)execute_34, (funcp)execute_35, (funcp)execute_36, (funcp)execute_2601, (funcp)execute_2602, (funcp)execute_2603, (funcp)execute_2604, (funcp)execute_2605, (funcp)execute_2606, (funcp)execute_2607, (funcp)execute_2610, (funcp)execute_2611, (funcp)execute_2612, (funcp)execute_2616, (funcp)execute_2620, (funcp)execute_2621, (funcp)execute_2622, (funcp)execute_2623, (funcp)execute_2624, (funcp)execute_2625, (funcp)execute_2628, (funcp)execute_2630, (funcp)execute_2631, (funcp)execute_2632, (funcp)execute_2633, (funcp)execute_2634, (funcp)execute_2635, (funcp)execute_2636, (funcp)execute_2637, (funcp)execute_2638, (funcp)execute_2639, (funcp)execute_2640, (funcp)execute_2641, (funcp)execute_2642, (funcp)execute_2643, (funcp)execute_22, (funcp)execute_23, (funcp)execute_24, (funcp)execute_25, (funcp)execute_2613, (funcp)execute_2614, (funcp)execute_2615, (funcp)execute_32, (funcp)execute_33, (funcp)execute_38, (funcp)execute_39, (funcp)execute_40, (funcp)execute_41, (funcp)execute_2652, (funcp)execute_2846, (funcp)execute_2847, (funcp)execute_2856, (funcp)execute_2857, (funcp)execute_2858, (funcp)execute_2859, (funcp)execute_2860, (funcp)execute_2862, (funcp)execute_2867, (funcp)execute_2868, (funcp)execute_2869, (funcp)execute_2870, (funcp)execute_2871, (funcp)execute_45, (funcp)execute_73, (funcp)execute_2831, (funcp)execute_2832, (funcp)execute_2833, (funcp)execute_2834, (funcp)execute_2835, (funcp)execute_2836, (funcp)execute_2837, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_70, (funcp)execute_71, (funcp)execute_72, (funcp)execute_2763, (funcp)execute_2764, (funcp)execute_2765, (funcp)execute_2766, (funcp)execute_2767, (funcp)execute_2768, (funcp)execute_2769, (funcp)execute_2771, (funcp)execute_2772, (funcp)execute_2773, (funcp)execute_2774, (funcp)execute_2778, (funcp)execute_2782, (funcp)execute_2783, (funcp)execute_2784, (funcp)execute_2785, (funcp)execute_2786, (funcp)execute_2787, (funcp)execute_2790, (funcp)execute_2792, (funcp)execute_2793, (funcp)execute_2794, (funcp)execute_2795, (funcp)execute_2796, (funcp)execute_2797, (funcp)execute_2798, (funcp)execute_2799, (funcp)execute_2800, (funcp)execute_2801, (funcp)execute_2802, (funcp)execute_2803, (funcp)execute_2804, (funcp)execute_2805, (funcp)execute_58, (funcp)execute_59, (funcp)execute_60, (funcp)execute_61, (funcp)execute_2775, (funcp)execute_2776, (funcp)execute_2777, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_2779, (funcp)execute_2780, (funcp)execute_2781, (funcp)execute_68, (funcp)execute_69, (funcp)execute_7831, (funcp)execute_7832, (funcp)execute_76, (funcp)execute_77, (funcp)execute_2876, (funcp)execute_2877, (funcp)execute_2878, (funcp)execute_2879, (funcp)execute_2880, (funcp)execute_2881, (funcp)execute_2882, (funcp)execute_2883, (funcp)execute_2884, (funcp)execute_79, (funcp)execute_80, (funcp)execute_2885, (funcp)execute_2886, (funcp)execute_2887, (funcp)execute_2888, (funcp)execute_2889, (funcp)execute_2890, (funcp)execute_2891, (funcp)execute_2892, (funcp)execute_2893, (funcp)execute_2896, (funcp)execute_2897, (funcp)execute_2898, (funcp)execute_2899, (funcp)execute_2900, (funcp)execute_3409, (funcp)execute_3410, (funcp)execute_2539, (funcp)execute_7817, (funcp)execute_7818, (funcp)execute_7819, (funcp)execute_7820, (funcp)execute_7821, (funcp)execute_7822, (funcp)execute_7823, (funcp)execute_7824, (funcp)execute_7825, (funcp)execute_7826, (funcp)execute_7827, (funcp)execute_7828, (funcp)execute_7829, (funcp)execute_7830, (funcp)execute_2548, (funcp)execute_2549, (funcp)execute_2550, (funcp)execute_7842, (funcp)execute_7843, (funcp)execute_7844, (funcp)execute_7845, (funcp)execute_7846, (funcp)vlog_transfunc_eventcallback};
const int NumRelocateId= 233;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/PE_tb_behav/xsim.reloc",  (void **)funcTab, 233);

	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/PE_tb_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/PE_tb_behav/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/PE_tb_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/PE_tb_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/PE_tb_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
