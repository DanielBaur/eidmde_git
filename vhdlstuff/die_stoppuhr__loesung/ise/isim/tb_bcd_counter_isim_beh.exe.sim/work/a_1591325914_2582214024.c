/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/db1086/Desktop/eidmde_git/vhdlstuff/die_stoppuhr__loesung/rtl/bcd_counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_2763492388968962707_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_16272557775307340295_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_1591325914_2582214024_p_0(char *t0)
{
    char t17[16];
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    int t18;
    unsigned int t19;
    char *t21;
    int t22;
    char *t23;
    unsigned char t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t3 = ieee_p_2592010699_sub_2763492388968962707_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3304);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 3384);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB13;

LAB15:
LAB14:
LAB8:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t12 = *((unsigned char *)t6);
    t13 = (t12 == (unsigned char)3);
    if (t13 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3448);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB11;

LAB13:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 3448);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB14;

LAB16:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 1832U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    if (t12 != 0)
        goto LAB19;

LAB21:
LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t14 = (15 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t6 + t16);
    t7 = (t17 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 3;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t19;
    t8 = (t0 + 5621);
    t10 = (t20 + 0U);
    t21 = (t10 + 0U);
    *((int *)t21) = 0;
    t21 = (t10 + 4U);
    *((int *)t21) = 3;
    t21 = (t10 + 8U);
    *((int *)t21) = 1;
    t22 = (3 - 0);
    t19 = (t22 * 1);
    t19 = (t19 + 1);
    t21 = (t10 + 12U);
    *((unsigned int *)t21) = t19;
    t13 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t17, t8, t20);
    if (t13 != 0)
        goto LAB22;

LAB24:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 3);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t20 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 3;
    t6 = (t5 + 4U);
    *((int *)t6) = 0;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (0 - 3);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t17, t1, t20, (unsigned char)3);
    t7 = (t17 + 12U);
    t19 = *((unsigned int *)t7);
    t30 = (1U * t19);
    t3 = (4U != t30);
    if (t3 == 1)
        goto LAB48;

LAB49:    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t21 = (t10 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t6, 4U);
    xsi_driver_first_trans_delta(t8, 12U, 4U, 0LL);

LAB23:    goto LAB20;

LAB22:    xsi_set_current_line(76, ng0);
    t21 = (t0 + 5625);
    t24 = (4U != 4U);
    if (t24 == 1)
        goto LAB25;

LAB26:    t25 = (t0 + 3384);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t21, 4U);
    xsi_driver_first_trans_delta(t25, 12U, 4U, 0LL);
    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t17 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 4;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (4 - 7);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = (t0 + 5629);
    t8 = (t20 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t22 = (3 - 0);
    t19 = (t22 * 1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t17, t6, t20);
    if (t3 != 0)
        goto LAB27;

LAB29:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 7);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t20 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 7;
    t6 = (t5 + 4U);
    *((int *)t6) = 4;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (4 - 7);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t17, t1, t20, (unsigned char)3);
    t7 = (t17 + 12U);
    t19 = *((unsigned int *)t7);
    t30 = (1U * t19);
    t3 = (4U != t30);
    if (t3 == 1)
        goto LAB46;

LAB47:    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t21 = (t10 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t6, 4U);
    xsi_driver_first_trans_delta(t8, 8U, 4U, 0LL);

LAB28:    goto LAB23;

LAB25:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB26;

LAB27:    xsi_set_current_line(78, ng0);
    t9 = (t0 + 5633);
    t4 = (4U != 4U);
    if (t4 == 1)
        goto LAB30;

LAB31:    t21 = (t0 + 3384);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_delta(t21, 8U, 4U, 0LL);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 11);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t17 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 11;
    t6 = (t5 + 4U);
    *((int *)t6) = 8;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (8 - 11);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = (t0 + 5637);
    t8 = (t20 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t22 = (3 - 0);
    t19 = (t22 * 1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t17, t6, t20);
    if (t3 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 11);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t20 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 11;
    t6 = (t5 + 4U);
    *((int *)t6) = 8;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (8 - 11);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t17, t1, t20, (unsigned char)3);
    t7 = (t17 + 12U);
    t19 = *((unsigned int *)t7);
    t30 = (1U * t19);
    t3 = (4U != t30);
    if (t3 == 1)
        goto LAB44;

LAB45:    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t21 = (t10 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t6, 4U);
    xsi_driver_first_trans_delta(t8, 4U, 4U, 0LL);

LAB33:    goto LAB28;

LAB30:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(80, ng0);
    t9 = (t0 + 5641);
    t4 = (4U != 4U);
    if (t4 == 1)
        goto LAB35;

LAB36:    t21 = (t0 + 3384);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_delta(t21, 4U, 4U, 0LL);
    xsi_set_current_line(81, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t17 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 15;
    t6 = (t5 + 4U);
    *((int *)t6) = 12;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (12 - 15);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = (t0 + 5645);
    t8 = (t20 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t22 = (3 - 0);
    t19 = (t22 * 1);
    t19 = (t19 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t19;
    t3 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t1, t17, t6, t20);
    if (t3 != 0)
        goto LAB37;

LAB39:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t14 = (15 - 15);
    t15 = (t14 * 1U);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t5 = (t20 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 15;
    t6 = (t5 + 4U);
    *((int *)t6) = 12;
    t6 = (t5 + 8U);
    *((int *)t6) = -1;
    t18 = (12 - 15);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t19;
    t6 = ieee_p_3620187407_sub_16272557775307340295_3965413181(IEEE_P_3620187407, t17, t1, t20, (unsigned char)3);
    t7 = (t17 + 12U);
    t19 = *((unsigned int *)t7);
    t30 = (1U * t19);
    t3 = (4U != t30);
    if (t3 == 1)
        goto LAB42;

LAB43:    t8 = (t0 + 3384);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t21 = (t10 + 56U);
    t23 = *((char **)t21);
    memcpy(t23, t6, 4U);
    xsi_driver_first_trans_delta(t8, 0U, 4U, 0LL);

LAB38:    goto LAB33;

LAB35:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB36;

LAB37:    xsi_set_current_line(82, ng0);
    t9 = (t0 + 5649);
    t4 = (4U != 4U);
    if (t4 == 1)
        goto LAB40;

LAB41:    t21 = (t0 + 3384);
    t23 = (t21 + 56U);
    t25 = *((char **)t23);
    t26 = (t25 + 56U);
    t27 = *((char **)t26);
    memcpy(t27, t9, 4U);
    xsi_driver_first_trans_delta(t21, 0U, 4U, 0LL);
    goto LAB38;

LAB40:    xsi_size_not_matching(4U, 4U, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(4U, t30, 0);
    goto LAB43;

LAB44:    xsi_size_not_matching(4U, t30, 0);
    goto LAB45;

LAB46:    xsi_size_not_matching(4U, t30, 0);
    goto LAB47;

LAB48:    xsi_size_not_matching(4U, t30, 0);
    goto LAB49;

}


extern void work_a_1591325914_2582214024_init()
{
	static char *pe[] = {(void *)work_a_1591325914_2582214024_p_0};
	xsi_register_didat("work_a_1591325914_2582214024", "isim/tb_bcd_counter_isim_beh.exe.sim/work/a_1591325914_2582214024.didat");
	xsi_register_executes(pe);
}
