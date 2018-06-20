`timescale 1ns / 1ps


module white (
    input a, b, c_in, s_in,
    output c_out, s_out
);
    assign s_out = s_in ^ c_in ^ (a & b);
    assign c_out = (s_in & c_in) | (s_in & (a&b)) | (c_in & (a&b));
endmodule


module grey (
    input a, b, c_in, s_in,
    output c_out, s_out
);
    assign s_out = s_in ^ c_in ^ (~(a & b));
    assign c_out = (s_in & c_in) | (s_in & ~(a&b)) | (c_in & ~(a&b));
endmodule


module FA (
    input s_in, c_in1, c_in2,
    output cout, result
);
    assign result = s_in ^ c_in1 ^ c_in2;
    assign cout = (s_in & c_in1) | (s_in & c_in2) | (c_in1 & c_in2);
endmodule


module Mul (
    input   [15:0] data,
    input   [15:0] weight,
    output  [15:0] m
);
    wire    ground;
    wire    vcc;
    wire  [31:0] p;

    assign ground = 1'b0;
    assign vcc = 1'b1;
    assign m = {p[31], p[26:24],p[23:12]};

    wire c_out_11, c_out_12, c_out_13, c_out_14, c_out_15, c_out_16, c_out_17, c_out_18, c_out_19, c_out_1a, c_out_1b, c_out_1c, c_out_1d, c_out_1e, c_out_1f, c_out_1g;
    wire c_out_21, c_out_22, c_out_23, c_out_24, c_out_25, c_out_26, c_out_27, c_out_28, c_out_29, c_out_2a, c_out_2b, c_out_2c, c_out_2d, c_out_2e, c_out_2f, c_out_2g;
    wire c_out_31, c_out_32, c_out_33, c_out_34, c_out_35, c_out_36, c_out_37, c_out_38, c_out_39, c_out_3a, c_out_3b, c_out_3c, c_out_3d, c_out_3e, c_out_3f, c_out_3g;
    wire c_out_41, c_out_42, c_out_43, c_out_44, c_out_45, c_out_46, c_out_47, c_out_48, c_out_49, c_out_4a, c_out_4b, c_out_4c, c_out_4d, c_out_4e, c_out_4f, c_out_4g;
    wire c_out_51, c_out_52, c_out_53, c_out_54, c_out_55, c_out_56, c_out_57, c_out_58, c_out_59, c_out_5a, c_out_5b, c_out_5c, c_out_5d, c_out_5e, c_out_5f, c_out_5g;
    wire c_out_61, c_out_62, c_out_63, c_out_64, c_out_65, c_out_66, c_out_67, c_out_68, c_out_69, c_out_6a, c_out_6b, c_out_6c, c_out_6d, c_out_6e, c_out_6f, c_out_6g;
    wire c_out_71, c_out_72, c_out_73, c_out_74, c_out_75, c_out_76, c_out_77, c_out_78, c_out_79, c_out_7a, c_out_7b, c_out_7c, c_out_7d, c_out_7e, c_out_7f, c_out_7g;
    wire c_out_81, c_out_82, c_out_83, c_out_84, c_out_85, c_out_86, c_out_87, c_out_88, c_out_89, c_out_8a, c_out_8b, c_out_8c, c_out_8d, c_out_8e, c_out_8f, c_out_8g;
    wire c_out_91, c_out_92, c_out_93, c_out_94, c_out_95, c_out_96, c_out_97, c_out_98, c_out_99, c_out_9a, c_out_9b, c_out_9c, c_out_9d, c_out_9e, c_out_9f, c_out_9g;
    wire c_out_a1, c_out_a2, c_out_a3, c_out_a4, c_out_a5, c_out_a6, c_out_a7, c_out_a8, c_out_a9, c_out_aa, c_out_ab, c_out_ac, c_out_ad, c_out_ae, c_out_af, c_out_ag;
    wire c_out_b1, c_out_b2, c_out_b3, c_out_b4, c_out_b5, c_out_b6, c_out_b7, c_out_b8, c_out_b9, c_out_ba, c_out_bb, c_out_bc, c_out_bd, c_out_be, c_out_bf, c_out_bg;
    wire c_out_c1, c_out_c2, c_out_c3, c_out_c4, c_out_c5, c_out_c6, c_out_c7, c_out_c8, c_out_c9, c_out_ca, c_out_cb, c_out_cc, c_out_cd, c_out_ce, c_out_cf, c_out_cg;
    wire c_out_d1, c_out_d2, c_out_d3, c_out_d4, c_out_d5, c_out_d6, c_out_d7, c_out_d8, c_out_d9, c_out_da, c_out_db, c_out_dc, c_out_dd, c_out_de, c_out_df, c_out_dg;
    wire c_out_e1, c_out_e2, c_out_e3, c_out_e4, c_out_e5, c_out_e6, c_out_e7, c_out_e8, c_out_e9, c_out_ea, c_out_eb, c_out_ec, c_out_ed, c_out_ee, c_out_ef, c_out_eg;
    wire c_out_f1, c_out_f2, c_out_f3, c_out_f4, c_out_f5, c_out_f6, c_out_f7, c_out_f8, c_out_f9, c_out_fa, c_out_fb, c_out_fc, c_out_fd, c_out_fe, c_out_ff, c_out_fg;
    wire c_out_g1, c_out_g2, c_out_g3, c_out_g4, c_out_g5, c_out_g6, c_out_g7, c_out_g8, c_out_g9, c_out_ga, c_out_gb, c_out_gc, c_out_gd, c_out_ge, c_out_gf, c_out_gg;
    wire c_out_h1, c_out_h2, c_out_h3, c_out_h4, c_out_h5, c_out_h6, c_out_h7, c_out_h8, c_out_h9, c_out_ha, c_out_hb, c_out_hc, c_out_hd, c_out_he, c_out_hf, c_out_hg;

    wire s_out_11, s_out_12, s_out_13, s_out_14, s_out_15, s_out_16, s_out_17, s_out_18, s_out_19, s_out_1a, s_out_1b, s_out_1c, s_out_1d, s_out_1e, s_out_1f;
    wire s_out_21, s_out_22, s_out_23, s_out_24, s_out_25, s_out_26, s_out_27, s_out_28, s_out_29, s_out_2a, s_out_2b, s_out_2c, s_out_2d, s_out_2e, s_out_2f;
    wire s_out_31, s_out_32, s_out_33, s_out_34, s_out_35, s_out_36, s_out_37, s_out_38, s_out_39, s_out_3a, s_out_3b, s_out_3c, s_out_3d, s_out_3e, s_out_3f;
    wire s_out_41, s_out_42, s_out_43, s_out_44, s_out_45, s_out_46, s_out_47, s_out_48, s_out_49, s_out_4a, s_out_4b, s_out_4c, s_out_4d, s_out_4e, s_out_4f;
    wire s_out_51, s_out_52, s_out_53, s_out_54, s_out_55, s_out_56, s_out_57, s_out_58, s_out_59, s_out_5a, s_out_5b, s_out_5c, s_out_5d, s_out_5e, s_out_5f;
    wire s_out_61, s_out_62, s_out_63, s_out_64, s_out_65, s_out_66, s_out_67, s_out_68, s_out_69, s_out_6a, s_out_6b, s_out_6c, s_out_6d, s_out_6e, s_out_6f;
    wire s_out_71, s_out_72, s_out_73, s_out_74, s_out_75, s_out_76, s_out_77, s_out_78, s_out_79, s_out_7a, s_out_7b, s_out_7c, s_out_7d, s_out_7e, s_out_7f;
    wire s_out_81, s_out_82, s_out_83, s_out_84, s_out_85, s_out_86, s_out_87, s_out_88, s_out_89, s_out_8a, s_out_8b, s_out_8c, s_out_8d, s_out_8e, s_out_8f;
    wire s_out_91, s_out_92, s_out_93, s_out_94, s_out_95, s_out_96, s_out_97, s_out_98, s_out_99, s_out_9a, s_out_9b, s_out_9c, s_out_9d, s_out_9e, s_out_9f;
    wire s_out_a1, s_out_a2, s_out_a3, s_out_a4, s_out_a5, s_out_a6, s_out_a7, s_out_a8, s_out_a9, s_out_aa, s_out_ab, s_out_ac, s_out_ad, s_out_ae, s_out_af;
    wire s_out_b1, s_out_b2, s_out_b3, s_out_b4, s_out_b5, s_out_b6, s_out_b7, s_out_b8, s_out_b9, s_out_ba, s_out_bb, s_out_bc, s_out_bd, s_out_be, s_out_bf;
    wire s_out_c1, s_out_c2, s_out_c3, s_out_c4, s_out_c5, s_out_c6, s_out_c7, s_out_c8, s_out_c9, s_out_ca, s_out_cb, s_out_cc, s_out_cd, s_out_ce, s_out_cf;
    wire s_out_d1, s_out_d2, s_out_d3, s_out_d4, s_out_d5, s_out_d6, s_out_d7, s_out_d8, s_out_d9, s_out_da, s_out_db, s_out_dc, s_out_dd, s_out_de, s_out_df;
    wire s_out_e1, s_out_e2, s_out_e3, s_out_e4, s_out_e5, s_out_e6, s_out_e7, s_out_e8, s_out_e9, s_out_ea, s_out_eb, s_out_ec, s_out_ed, s_out_ee, s_out_ef;
    wire s_out_f1, s_out_f2, s_out_f3, s_out_f4, s_out_f5, s_out_f6, s_out_f7, s_out_f8, s_out_f9, s_out_fa, s_out_fb, s_out_fc, s_out_fd, s_out_fe, s_out_ff;
    wire s_out_g1, s_out_g2, s_out_g3, s_out_g4, s_out_g5, s_out_g6, s_out_g7, s_out_g8, s_out_g9, s_out_ga, s_out_gb, s_out_gc, s_out_gd, s_out_ge, s_out_gf;

    grey  c_11(data[15], weight[0], ground, ground, c_out_11, s_out_11);
    white c_12(data[14], weight[0], ground, ground, c_out_12, s_out_12);
    white c_13(data[13], weight[0], ground, ground, c_out_13, s_out_13);
    white c_14(data[12], weight[0], ground, ground, c_out_14, s_out_14);
    white c_15(data[11], weight[0], ground, ground, c_out_15, s_out_15);
    white c_16(data[10], weight[0], ground, ground, c_out_16, s_out_16);
    white c_17(data[9],  weight[0], ground, ground, c_out_17, s_out_17);
    white c_18(data[8],  weight[0], ground, ground, c_out_18, s_out_18);
    white c_19(data[7],  weight[0], ground, ground, c_out_19, s_out_19);
    white c_1a(data[6],  weight[0], ground, ground, c_out_1a, s_out_1a);
    white c_1b(data[5],  weight[0], ground, ground, c_out_1b, s_out_1b);
    white c_1c(data[4],  weight[0], ground, ground, c_out_1c, s_out_1c);
    white c_1d(data[3],  weight[0], ground, ground, c_out_1d, s_out_1d);
    white c_1e(data[2],  weight[0], ground, ground, c_out_1e, s_out_1e);
    white c_1f(data[1],  weight[0], ground, ground, c_out_1f, s_out_1f);
    white c_1g(data[0],  weight[0], ground, ground, c_out_1g, p[0]);

    grey  c_21(data[15], weight[1], c_out_11, ground,   c_out_21, s_out_21);
    white c_22(data[14], weight[1], c_out_12, s_out_11, c_out_22, s_out_22);
    white c_23(data[13], weight[1], c_out_13, s_out_12, c_out_23, s_out_23);
    white c_24(data[12], weight[1], c_out_14, s_out_13, c_out_24, s_out_24);
    white c_25(data[11], weight[1], c_out_15, s_out_14, c_out_25, s_out_25);
    white c_26(data[10], weight[1], c_out_16, s_out_15, c_out_26, s_out_26);
    white c_27(data[9],  weight[1], c_out_17, s_out_16, c_out_27, s_out_27);
    white c_28(data[8],  weight[1], c_out_18, s_out_17, c_out_28, s_out_28);
    white c_29(data[7],  weight[1], c_out_19, s_out_18, c_out_29, s_out_29);
    white c_2a(data[6],  weight[1], c_out_1a, s_out_19, c_out_2a, s_out_2a);
    white c_2b(data[5],  weight[1], c_out_1b, s_out_1a, c_out_2b, s_out_2b);
    white c_2c(data[4],  weight[1], c_out_1c, s_out_1b, c_out_2c, s_out_2c);
    white c_2d(data[3],  weight[1], c_out_1d, s_out_1c, c_out_2d, s_out_2d);
    white c_2e(data[2],  weight[1], c_out_1e, s_out_1d, c_out_2e, s_out_2e);
    white c_2f(data[1],  weight[1], c_out_1f, s_out_1e, c_out_2f, s_out_2f);
    white c_2g(data[0],  weight[1], c_out_1g, s_out_1f, c_out_2g, p[1]);

    grey  c_31(data[15], weight[2], c_out_21, ground,   c_out_31, s_out_31);
    white c_32(data[14], weight[2], c_out_22, s_out_21, c_out_32, s_out_32);
    white c_33(data[13], weight[2], c_out_23, s_out_22, c_out_33, s_out_33);
    white c_34(data[12], weight[2], c_out_24, s_out_23, c_out_34, s_out_34);
    white c_35(data[11], weight[2], c_out_25, s_out_24, c_out_35, s_out_35);
    white c_36(data[10], weight[2], c_out_26, s_out_25, c_out_36, s_out_36);
    white c_37(data[9],  weight[2], c_out_27, s_out_26, c_out_37, s_out_37);
    white c_38(data[8],  weight[2], c_out_28, s_out_27, c_out_38, s_out_38);
    white c_39(data[7],  weight[2], c_out_29, s_out_28, c_out_39, s_out_39);
    white c_3a(data[6],  weight[2], c_out_2a, s_out_29, c_out_3a, s_out_3a);
    white c_3b(data[5],  weight[2], c_out_2b, s_out_2a, c_out_3b, s_out_3b);
    white c_3c(data[4],  weight[2], c_out_2c, s_out_2b, c_out_3c, s_out_3c);
    white c_3d(data[3],  weight[2], c_out_2d, s_out_2c, c_out_3d, s_out_3d);
    white c_3e(data[2],  weight[2], c_out_2e, s_out_2d, c_out_3e, s_out_3e);
    white c_3f(data[1],  weight[2], c_out_2f, s_out_2e, c_out_3f, s_out_3f);
    white c_3g(data[0],  weight[2], c_out_2g, s_out_2f, c_out_3g, p[2]);

    grey  c_41(data[15], weight[3], c_out_31, ground,   c_out_41, s_out_41);
    white c_42(data[14], weight[3], c_out_32, s_out_31, c_out_42, s_out_42);
    white c_43(data[13], weight[3], c_out_33, s_out_32, c_out_43, s_out_43);
    white c_44(data[12], weight[3], c_out_34, s_out_33, c_out_44, s_out_44);
    white c_45(data[11], weight[3], c_out_35, s_out_34, c_out_45, s_out_45);
    white c_46(data[10], weight[3], c_out_36, s_out_35, c_out_46, s_out_46);
    white c_47(data[9],  weight[3], c_out_37, s_out_36, c_out_47, s_out_47);
    white c_48(data[8],  weight[3], c_out_38, s_out_37, c_out_48, s_out_48);
    white c_49(data[7],  weight[3], c_out_39, s_out_38, c_out_49, s_out_49);
    white c_4a(data[6],  weight[3], c_out_3a, s_out_39, c_out_4a, s_out_4a);
    white c_4b(data[5],  weight[3], c_out_3b, s_out_3a, c_out_4b, s_out_4b);
    white c_4c(data[4],  weight[3], c_out_3c, s_out_3b, c_out_4c, s_out_4c);
    white c_4d(data[3],  weight[3], c_out_3d, s_out_3c, c_out_4d, s_out_4d);
    white c_4e(data[2],  weight[3], c_out_3e, s_out_3d, c_out_4e, s_out_4e);
    white c_4f(data[1],  weight[3], c_out_3f, s_out_3e, c_out_4f, s_out_4f);
    white c_4g(data[0],  weight[3], c_out_3g, s_out_3f, c_out_4g, p[3]);

    grey  c_51(data[15], weight[4], c_out_41, ground,   c_out_51, s_out_51);
    white c_52(data[14], weight[4], c_out_42, s_out_41, c_out_52, s_out_52);
    white c_53(data[13], weight[4], c_out_43, s_out_42, c_out_53, s_out_53);
    white c_54(data[12], weight[4], c_out_44, s_out_43, c_out_54, s_out_54);
    white c_55(data[11], weight[4], c_out_45, s_out_44, c_out_55, s_out_55);
    white c_56(data[10], weight[4], c_out_46, s_out_45, c_out_56, s_out_56);
    white c_57(data[9],  weight[4], c_out_47, s_out_46, c_out_57, s_out_57);
    white c_58(data[8],  weight[4], c_out_48, s_out_47, c_out_58, s_out_58);
    white c_59(data[7],  weight[4], c_out_49, s_out_48, c_out_59, s_out_59);
    white c_5a(data[6],  weight[4], c_out_4a, s_out_49, c_out_5a, s_out_5a);
    white c_5b(data[5],  weight[4], c_out_4b, s_out_4a, c_out_5b, s_out_5b);
    white c_5c(data[4],  weight[4], c_out_4c, s_out_4b, c_out_5c, s_out_5c);
    white c_5d(data[3],  weight[4], c_out_4d, s_out_4c, c_out_5d, s_out_5d);
    white c_5e(data[2],  weight[4], c_out_4e, s_out_4d, c_out_5e, s_out_5e);
    white c_5f(data[1],  weight[4], c_out_4f, s_out_4e, c_out_5f, s_out_5f);
    white c_5g(data[0],  weight[4], c_out_4g, s_out_4f, c_out_5g, p[4]);

    grey  c_61(data[15], weight[5], c_out_51, ground,   c_out_61, s_out_61);
    white c_62(data[14], weight[5], c_out_52, s_out_51, c_out_62, s_out_62);
    white c_63(data[13], weight[5], c_out_53, s_out_52, c_out_63, s_out_63);
    white c_64(data[12], weight[5], c_out_54, s_out_53, c_out_64, s_out_64);
    white c_65(data[11], weight[5], c_out_55, s_out_54, c_out_65, s_out_65);
    white c_66(data[10], weight[5], c_out_56, s_out_55, c_out_66, s_out_66);
    white c_67(data[9],  weight[5], c_out_57, s_out_56, c_out_67, s_out_67);
    white c_68(data[8],  weight[5], c_out_58, s_out_57, c_out_68, s_out_68);
    white c_69(data[7],  weight[5], c_out_59, s_out_58, c_out_69, s_out_69);
    white c_6a(data[6],  weight[5], c_out_5a, s_out_59, c_out_6a, s_out_6a);
    white c_6b(data[5],  weight[5], c_out_5b, s_out_5a, c_out_6b, s_out_6b);
    white c_6c(data[4],  weight[5], c_out_5c, s_out_5b, c_out_6c, s_out_6c);
    white c_6d(data[3],  weight[5], c_out_5d, s_out_5c, c_out_6d, s_out_6d);
    white c_6e(data[2],  weight[5], c_out_5e, s_out_5d, c_out_6e, s_out_6e);
    white c_6f(data[1],  weight[5], c_out_5f, s_out_5e, c_out_6f, s_out_6f);
    white c_6g(data[0],  weight[5], c_out_5g, s_out_5f, c_out_6g, p[5]);

    grey  c_71(data[15], weight[6], c_out_61, ground,   c_out_71, s_out_71);
    white c_72(data[14], weight[6], c_out_62, s_out_61, c_out_72, s_out_72);
    white c_73(data[13], weight[6], c_out_63, s_out_62, c_out_73, s_out_73);
    white c_74(data[12], weight[6], c_out_64, s_out_63, c_out_74, s_out_74);
    white c_75(data[11], weight[6], c_out_65, s_out_64, c_out_75, s_out_75);
    white c_76(data[10], weight[6], c_out_66, s_out_65, c_out_76, s_out_76);
    white c_77(data[9],  weight[6], c_out_67, s_out_66, c_out_77, s_out_77);
    white c_78(data[8],  weight[6], c_out_68, s_out_67, c_out_78, s_out_78);
    white c_79(data[7],  weight[6], c_out_69, s_out_68, c_out_79, s_out_79);
    white c_7a(data[6],  weight[6], c_out_6a, s_out_69, c_out_7a, s_out_7a);
    white c_7b(data[5],  weight[6], c_out_6b, s_out_6a, c_out_7b, s_out_7b);
    white c_7c(data[4],  weight[6], c_out_6c, s_out_6b, c_out_7c, s_out_7c);
    white c_7d(data[3],  weight[6], c_out_6d, s_out_6c, c_out_7d, s_out_7d);
    white c_7e(data[2],  weight[6], c_out_6e, s_out_6d, c_out_7e, s_out_7e);
    white c_7f(data[1],  weight[6], c_out_6f, s_out_6e, c_out_7f, s_out_7f);
    white c_7g(data[0],  weight[6], c_out_6g, s_out_6f, c_out_7g, p[6]);

    grey  c_81(data[15], weight[7], c_out_71, ground,   c_out_81, s_out_81);
    white c_82(data[14], weight[7], c_out_72, s_out_71, c_out_82, s_out_82);
    white c_83(data[13], weight[7], c_out_73, s_out_72, c_out_83, s_out_83);
    white c_84(data[12], weight[7], c_out_74, s_out_73, c_out_84, s_out_84);
    white c_85(data[11], weight[7], c_out_75, s_out_74, c_out_85, s_out_85);
    white c_86(data[10], weight[7], c_out_76, s_out_75, c_out_86, s_out_86);
    white c_87(data[9],  weight[7], c_out_77, s_out_76, c_out_87, s_out_87);
    white c_88(data[8],  weight[7], c_out_78, s_out_77, c_out_88, s_out_88);
    white c_89(data[7],  weight[7], c_out_79, s_out_78, c_out_89, s_out_89);
    white c_8a(data[6],  weight[7], c_out_7a, s_out_79, c_out_8a, s_out_8a);
    white c_8b(data[5],  weight[7], c_out_7b, s_out_7a, c_out_8b, s_out_8b);
    white c_8c(data[4],  weight[7], c_out_7c, s_out_7b, c_out_8c, s_out_8c);
    white c_8d(data[3],  weight[7], c_out_7d, s_out_7c, c_out_8d, s_out_8d);
    white c_8e(data[2],  weight[7], c_out_7e, s_out_7d, c_out_8e, s_out_8e);
    white c_8f(data[1],  weight[7], c_out_7f, s_out_7e, c_out_8f, s_out_8f);
    white c_8g(data[0],  weight[7], c_out_7g, s_out_7f, c_out_8g, p[7]);

    grey  c_91(data[15], weight[8], c_out_81, ground,   c_out_91, s_out_91);
    white c_92(data[14], weight[8], c_out_82, s_out_81, c_out_92, s_out_92);
    white c_93(data[13], weight[8], c_out_83, s_out_82, c_out_93, s_out_93);
    white c_94(data[12], weight[8], c_out_84, s_out_83, c_out_94, s_out_94);
    white c_95(data[11], weight[8], c_out_85, s_out_84, c_out_95, s_out_95);
    white c_96(data[10], weight[8], c_out_86, s_out_85, c_out_96, s_out_96);
    white c_97(data[9],  weight[8], c_out_87, s_out_86, c_out_97, s_out_97);
    white c_98(data[8],  weight[8], c_out_88, s_out_87, c_out_98, s_out_98);
    white c_99(data[7],  weight[8], c_out_89, s_out_88, c_out_99, s_out_99);
    white c_9a(data[6],  weight[8], c_out_8a, s_out_89, c_out_9a, s_out_9a);
    white c_9b(data[5],  weight[8], c_out_8b, s_out_8a, c_out_9b, s_out_9b);
    white c_9c(data[4],  weight[8], c_out_8c, s_out_8b, c_out_9c, s_out_9c);
    white c_9d(data[3],  weight[8], c_out_8d, s_out_8c, c_out_9d, s_out_9d);
    white c_9e(data[2],  weight[8], c_out_8e, s_out_8d, c_out_9e, s_out_9e);
    white c_9f(data[1],  weight[8], c_out_8f, s_out_8e, c_out_9f, s_out_9f);
    white c_9g(data[0],  weight[8], c_out_8g, s_out_8f, c_out_9g, p[8]);

    grey  c_a1(data[15], weight[9], c_out_91, ground,   c_out_a1, s_out_a1);
    white c_a2(data[14], weight[9], c_out_92, s_out_91, c_out_a2, s_out_a2);
    white c_a3(data[13], weight[9], c_out_93, s_out_92, c_out_a3, s_out_a3);
    white c_a4(data[12], weight[9], c_out_94, s_out_93, c_out_a4, s_out_a4);
    white c_a5(data[11], weight[9], c_out_95, s_out_94, c_out_a5, s_out_a5);
    white c_a6(data[10], weight[9], c_out_96, s_out_95, c_out_a6, s_out_a6);
    white c_a7(data[9],  weight[9], c_out_97, s_out_96, c_out_a7, s_out_a7);
    white c_a8(data[8],  weight[9], c_out_98, s_out_97, c_out_a8, s_out_a8);
    white c_a9(data[7],  weight[9], c_out_99, s_out_98, c_out_a9, s_out_a9);
    white c_aa(data[6],  weight[9], c_out_9a, s_out_99, c_out_aa, s_out_aa);
    white c_ab(data[5],  weight[9], c_out_9b, s_out_9a, c_out_ab, s_out_ab);
    white c_ac(data[4],  weight[9], c_out_9c, s_out_9b, c_out_ac, s_out_ac);
    white c_ad(data[3],  weight[9], c_out_9d, s_out_9c, c_out_ad, s_out_ad);
    white c_ae(data[2],  weight[9], c_out_9e, s_out_9d, c_out_ae, s_out_ae);
    white c_af(data[1],  weight[9], c_out_9f, s_out_9e, c_out_af, s_out_af);
    white c_ag(data[0],  weight[9], c_out_9g, s_out_9f, c_out_ag, p[9]);

    grey  c_b1(data[15], weight[10], c_out_a1, ground,   c_out_b1, s_out_b1);
    white c_b2(data[14], weight[10], c_out_a2, s_out_a1, c_out_b2, s_out_b2);
    white c_b3(data[13], weight[10], c_out_a3, s_out_a2, c_out_b3, s_out_b3);
    white c_b4(data[12], weight[10], c_out_a4, s_out_a3, c_out_b4, s_out_b4);
    white c_b5(data[11], weight[10], c_out_a5, s_out_a4, c_out_b5, s_out_b5);
    white c_b6(data[10], weight[10], c_out_a6, s_out_a5, c_out_b6, s_out_b6);
    white c_b7(data[9],  weight[10], c_out_a7, s_out_a6, c_out_b7, s_out_b7);
    white c_b8(data[8],  weight[10], c_out_a8, s_out_a7, c_out_b8, s_out_b8);
    white c_b9(data[7],  weight[10], c_out_a9, s_out_a8, c_out_b9, s_out_b9);
    white c_ba(data[6],  weight[10], c_out_aa, s_out_a9, c_out_ba, s_out_ba);
    white c_bb(data[5],  weight[10], c_out_ab, s_out_aa, c_out_bb, s_out_bb);
    white c_bc(data[4],  weight[10], c_out_ac, s_out_ab, c_out_bc, s_out_bc);
    white c_bd(data[3],  weight[10], c_out_ad, s_out_ac, c_out_bd, s_out_bd);
    white c_be(data[2],  weight[10], c_out_ae, s_out_ad, c_out_be, s_out_be);
    white c_bf(data[1],  weight[10], c_out_af, s_out_ae, c_out_bf, s_out_bf);
    white c_bg(data[0],  weight[10], c_out_ag, s_out_af, c_out_bg, p[10]);

    grey  c_c1(data[15], weight[11], c_out_b1, ground,   c_out_c1, s_out_c1);
    white c_c2(data[14], weight[11], c_out_b2, s_out_b1, c_out_c2, s_out_c2);
    white c_c3(data[13], weight[11], c_out_b3, s_out_b2, c_out_c3, s_out_c3);
    white c_c4(data[12], weight[11], c_out_b4, s_out_b3, c_out_c4, s_out_c4);
    white c_c5(data[11], weight[11], c_out_b5, s_out_b4, c_out_c5, s_out_c5);
    white c_c6(data[10], weight[11], c_out_b6, s_out_b5, c_out_c6, s_out_c6);
    white c_c7(data[9],  weight[11], c_out_b7, s_out_b6, c_out_c7, s_out_c7);
    white c_c8(data[8],  weight[11], c_out_b8, s_out_b7, c_out_c8, s_out_c8);
    white c_c9(data[7],  weight[11], c_out_b9, s_out_b8, c_out_c9, s_out_c9);
    white c_ca(data[6],  weight[11], c_out_ba, s_out_b9, c_out_ca, s_out_ca);
    white c_cb(data[5],  weight[11], c_out_bb, s_out_ba, c_out_cb, s_out_cb);
    white c_cc(data[4],  weight[11], c_out_bc, s_out_bb, c_out_cc, s_out_cc);
    white c_cd(data[3],  weight[11], c_out_bd, s_out_bc, c_out_cd, s_out_cd);
    white c_ce(data[2],  weight[11], c_out_be, s_out_bd, c_out_ce, s_out_ce);
    white c_cf(data[1],  weight[11], c_out_bf, s_out_be, c_out_cf, s_out_cf);
    white c_cg(data[0],  weight[11], c_out_bg, s_out_bf, c_out_cg, p[11]);

    grey  c_d1(data[15], weight[12], c_out_c1, ground,   c_out_d1, s_out_d1);
    white c_d2(data[14], weight[12], c_out_c2, s_out_c1, c_out_d2, s_out_d2);
    white c_d3(data[13], weight[12], c_out_c3, s_out_c2, c_out_d3, s_out_d3);
    white c_d4(data[12], weight[12], c_out_c4, s_out_c3, c_out_d4, s_out_d4);
    white c_d5(data[11], weight[12], c_out_c5, s_out_c4, c_out_d5, s_out_d5);
    white c_d6(data[10], weight[12], c_out_c6, s_out_c5, c_out_d6, s_out_d6);
    white c_d7(data[9],  weight[12], c_out_c7, s_out_c6, c_out_d7, s_out_d7);
    white c_d8(data[8],  weight[12], c_out_c8, s_out_c7, c_out_d8, s_out_d8);
    white c_d9(data[7],  weight[12], c_out_c9, s_out_c8, c_out_d9, s_out_d9);
    white c_da(data[6],  weight[12], c_out_ca, s_out_c9, c_out_da, s_out_da);
    white c_db(data[5],  weight[12], c_out_cb, s_out_ca, c_out_db, s_out_db);
    white c_dc(data[4],  weight[12], c_out_cc, s_out_cb, c_out_dc, s_out_dc);
    white c_dd(data[3],  weight[12], c_out_cd, s_out_cc, c_out_dd, s_out_dd);
    white c_de(data[2],  weight[12], c_out_ce, s_out_cd, c_out_de, s_out_de);
    white c_df(data[1],  weight[12], c_out_cf, s_out_ce, c_out_df, s_out_df);
    white c_dg(data[0],  weight[12], c_out_cg, s_out_cf, c_out_dg, p[12]);

    grey  c_e1(data[15], weight[13], c_out_d1, ground,   c_out_e1, s_out_e1);
    white c_e2(data[14], weight[13], c_out_d2, s_out_d1, c_out_e2, s_out_e2);
    white c_e3(data[13], weight[13], c_out_d3, s_out_d2, c_out_e3, s_out_e3);
    white c_e4(data[12], weight[13], c_out_d4, s_out_d3, c_out_e4, s_out_e4);
    white c_e5(data[11], weight[13], c_out_d5, s_out_d4, c_out_e5, s_out_e5);
    white c_e6(data[10], weight[13], c_out_d6, s_out_d5, c_out_e6, s_out_e6);
    white c_e7(data[9],  weight[13], c_out_d7, s_out_d6, c_out_e7, s_out_e7);
    white c_e8(data[8],  weight[13], c_out_d8, s_out_d7, c_out_e8, s_out_e8);
    white c_e9(data[7],  weight[13], c_out_d9, s_out_d8, c_out_e9, s_out_e9);
    white c_ea(data[6],  weight[13], c_out_da, s_out_d9, c_out_ea, s_out_ea);
    white c_eb(data[5],  weight[13], c_out_db, s_out_da, c_out_eb, s_out_eb);
    white c_ec(data[4],  weight[13], c_out_dc, s_out_db, c_out_ec, s_out_ec);
    white c_ed(data[3],  weight[13], c_out_dd, s_out_dc, c_out_ed, s_out_ed);
    white c_ee(data[2],  weight[13], c_out_de, s_out_dd, c_out_ee, s_out_ee);
    white c_ef(data[1],  weight[13], c_out_df, s_out_de, c_out_ef, s_out_ef);
    white c_eg(data[0],  weight[13], c_out_dg, s_out_df, c_out_eg, p[13]);

    grey  c_f1(data[15], weight[14], c_out_e1, ground,   c_out_f1, s_out_f1);
    white c_f2(data[14], weight[14], c_out_e2, s_out_e1, c_out_f2, s_out_f2);
    white c_f3(data[13], weight[14], c_out_e3, s_out_e2, c_out_f3, s_out_f3);
    white c_f4(data[12], weight[14], c_out_e4, s_out_e3, c_out_f4, s_out_f4);
    white c_f5(data[11], weight[14], c_out_e5, s_out_e4, c_out_f5, s_out_f5);
    white c_f6(data[10], weight[14], c_out_e6, s_out_e5, c_out_f6, s_out_f6);
    white c_f7(data[9],  weight[14], c_out_e7, s_out_e6, c_out_f7, s_out_f7);
    white c_f8(data[8],  weight[14], c_out_e8, s_out_e7, c_out_f8, s_out_f8);
    white c_f9(data[7],  weight[14], c_out_e9, s_out_e8, c_out_f9, s_out_f9);
    white c_fa(data[6],  weight[14], c_out_ea, s_out_e9, c_out_fa, s_out_fa);
    white c_fb(data[5],  weight[14], c_out_eb, s_out_ea, c_out_fb, s_out_fb);
    white c_fc(data[4],  weight[14], c_out_ec, s_out_eb, c_out_fc, s_out_fc);
    white c_fd(data[3],  weight[14], c_out_ed, s_out_ec, c_out_fd, s_out_fd);
    white c_fe(data[2],  weight[14], c_out_ee, s_out_ed, c_out_fe, s_out_fe);
    white c_ff(data[1],  weight[14], c_out_ef, s_out_ee, c_out_ff, s_out_ff);
    white c_fg(data[0],  weight[14], c_out_eg, s_out_ef, c_out_fg, p[14]);

    white c_g1(data[15], weight[15], c_out_f1, ground,   c_out_g1, s_out_g1);
    grey  c_g2(data[14], weight[15], c_out_f2, s_out_f1, c_out_g2, s_out_g2);
    grey  c_g3(data[13], weight[15], c_out_f3, s_out_f2, c_out_g3, s_out_g3);
    grey  c_g4(data[12], weight[15], c_out_f4, s_out_f3, c_out_g4, s_out_g4);
    grey  c_g5(data[11], weight[15], c_out_f5, s_out_f4, c_out_g5, s_out_g5);
    grey  c_g6(data[10], weight[15], c_out_f6, s_out_f5, c_out_g6, s_out_g6);
    grey  c_g7(data[9],  weight[15], c_out_f7, s_out_f6, c_out_g7, s_out_g7);
    grey  c_g8(data[8],  weight[15], c_out_f8, s_out_f7, c_out_g8, s_out_g8);
    grey  c_g9(data[7],  weight[15], c_out_f9, s_out_f8, c_out_g9, s_out_g9);
    grey  c_ga(data[6],  weight[15], c_out_fa, s_out_f9, c_out_ga, s_out_ga);
    grey  c_gb(data[5],  weight[15], c_out_fb, s_out_fa, c_out_gb, s_out_gb);
    grey  c_gc(data[4],  weight[15], c_out_fc, s_out_fb, c_out_gc, s_out_gc);
    grey  c_gd(data[3],  weight[15], c_out_fd, s_out_fc, c_out_gd, s_out_gd);
    grey  c_ge(data[2],  weight[15], c_out_fe, s_out_fd, c_out_ge, s_out_ge);
    grey  c_gf(data[1],  weight[15], c_out_ff, s_out_fe, c_out_gf, s_out_gf);
    grey  c_gg(data[0],  weight[15], c_out_fg, s_out_ff, c_out_gg, p[15]);

    FA    c_h1(vcc,      c_out_g1, c_out_h2, c_out_h1, p[31]);
    FA    c_h2(s_out_g1, c_out_g2, c_out_h3, c_out_h2, p[30]);
    FA    c_h3(s_out_g2, c_out_g3, c_out_h4, c_out_h3, p[29]);
    FA    c_h4(s_out_g3, c_out_g4, c_out_h5, c_out_h4, p[28]);
    FA    c_h5(s_out_g4, c_out_g5, c_out_h6, c_out_h5, p[27]);
    FA    c_h6(s_out_g5, c_out_g6, c_out_h7, c_out_h6, p[26]);
    FA    c_h7(s_out_g6, c_out_g7, c_out_h8, c_out_h7, p[25]);
    FA    c_h8(s_out_g7, c_out_g8, c_out_h9, c_out_h8, p[24]);
    FA    c_h9(s_out_g8, c_out_g9, c_out_ha, c_out_h9, p[23]);
    FA    c_ha(s_out_g9, c_out_ga, c_out_hb, c_out_ha, p[22]);
    FA    c_hb(s_out_ga, c_out_gb, c_out_hc, c_out_hb, p[21]);
    FA    c_hc(s_out_gb, c_out_gc, c_out_hd, c_out_hc, p[20]);
    FA    c_hd(s_out_gc, c_out_gd, c_out_he, c_out_hd, p[19]);
    FA    c_he(s_out_gd, c_out_ge, c_out_hf, c_out_he, p[18]);
    FA    c_hf(s_out_ge, c_out_gf, c_out_hg, c_out_hf, p[17]);
    FA    c_hg(s_out_gf, c_out_gg, vcc     , c_out_hg, p[16]);
endmodule
