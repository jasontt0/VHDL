// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Nov 26 14:28:29 2023
//
// Verilog Description of module piano
//

module piano (switch, mode, clk, col, row, beep);   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(4[8:13])
    input switch;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(6[2:8])
    input mode;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(7[2:6])
    input clk;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(8[2:5])
    input [3:0]col;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(9[2:5])
    output [3:0]row;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(10[2:5])
    output beep;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(11[2:6])
    
    wire switch_c /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(6[2:8])
    wire mode_c /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(7[2:6])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(8[2:5])
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(20[9:16])
    wire mode_N_30 /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(17[9:17])
    wire switch_N_60 /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(23[9:18])
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(8[2:7])
    
    wire GND_net, VCC_net, col_c_3, col_c_2, col_c_1, col_c_0, n566, 
        row_c_1, beep_c, clk_music, mode_num;
    wire [19:0]cnt;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(18[9:12])
    wire [23:0]pitch;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(19[9:14])
    
    wire clk8hz;
    wire [3:0]tone1;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(22[9:14])
    wire [3:0]tone2;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(22[15:20])
    wire [3:0]tone;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(22[21:25])
    
    wire music_num, music_num_N_58, tmp, tmp_N_62, n565;
    wire [3:0]tone1_3__N_31;
    
    wire cnt_19__N_55, clk_music_N_56, n992, n1084;
    wire [7:0]ptr1;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(14[9:13])
    wire [7:0]ptr2;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(15[9:13])
    
    wire n4, n1103;
    wire [2:0]tone2_3__N_239;
    wire [3:0]tone2_3__N_235;
    
    wire clk_c_enable_20, n1204, n7, n1203, n14, n1201, n7_adj_290, 
        n1209, n8, n560, n564, n1194, n489, n1011, n1208, n1199, 
        n804, n803, n1042, n1180, n10, n802, n801, n800, n799, 
        n798, n1198, n1197, clk_c_enable_14, n797, n796, n1206, 
        n1205, n795, n794, n86, n87, n88, n89, n90, n91, n92, 
        n93, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104, n105, n683, n793, n792, n791, n790;
    
    VHI i2 (.Z(VCC_net));
    INV i908 (.A(switch_c), .Z(switch_N_60));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(6[2:8])
    FD1S1A tmp_I_0_72 (.D(tmp_N_62), .CK(clk40hz), .Q(tmp)) /* synthesis lse_init_val=0 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(77[2] 92[14])
    defparam tmp_I_0_72.GSR = "DISABLED";
    FD1S3AX clk_music_67 (.D(clk_music_N_56), .CK(clk_c), .Q(clk_music));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(144[3] 152[10])
    defparam clk_music_67.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), .Z(n992)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(100[5] 114[14])
    defparam i1_3_lut.init = 16'h5d5d;
    FD1S3AX beep_68 (.D(clk_music), .CK(clk_c), .Q(beep_c));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(144[3] 152[10])
    defparam beep_68.GSR = "DISABLED";
    FD1S3AX mode_num_62 (.D(n1204), .CK(mode_N_30), .Q(mode_num));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(57[3] 63[10])
    defparam mode_num_62.GSR = "DISABLED";
    ROM256X1A mux_16_Mux_0 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_235[0])) /* synthesis initstate=0x000000000000000000001B007400001801E28000C3C3600E800003003C500018 */ ;
    defparam mux_16_Mux_0.initval = 256'h000000000000000000001B007400001801E28000C3C3600E800003003C500018;
    CCU2D cnt_228_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n795), 
          .S1(n105));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_1.INIT0 = 16'hF000;
    defparam cnt_228_add_4_1.INIT1 = 16'h0555;
    defparam cnt_228_add_4_1.INJECT1_0 = "NO";
    defparam cnt_228_add_4_1.INJECT1_1 = "NO";
    OB beep_pad (.I(beep_c), .O(beep));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(11[2:6])
    FD1S3IX cnt_228__i0 (.D(n105), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i0.GSR = "DISABLED";
    ROM256X1A mux_15_Mux_0 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_239[0])) /* synthesis initstate=0x000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF */ ;
    defparam mux_15_Mux_0.initval = 256'h000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF;
    ROM256X1A mux_15_Mux_1 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_239[1])) /* synthesis initstate=0x0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000 */ ;
    defparam mux_15_Mux_1.initval = 256'h0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000;
    LUT4 i851_2_lut_3_lut (.A(clk8hz), .B(n565), .C(n1084), .Z(n564)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(38[4] 45[11])
    defparam i851_2_lut_3_lut.init = 16'h4040;
    LUT4 i311_4_lut (.A(n1203), .B(n1201), .C(col_c_3), .D(col_c_0), 
         .Z(tone1_3__N_31[2])) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(C)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(100[5] 114[14])
    defparam i311_4_lut.init = 16'h85a5;
    FD1P3IX tone1_i0_i3 (.D(n1203), .SP(clk_c_enable_14), .CD(n566), .CK(clk_c), 
            .Q(tone1[3]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i3.GSR = "DISABLED";
    LUT4 tone_1__bdd_4_lut (.A(n1198), .B(tone[3]), .C(n1199), .D(n1197), 
         .Z(pitch[5])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;
    defparam tone_1__bdd_4_lut.init = 16'h3426;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 tone_0__bdd_4_lut (.A(n1197), .B(n1198), .C(n1199), .D(tone[3]), 
         .Z(pitch[6])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam tone_0__bdd_4_lut.init = 16'h0726;
    LUT4 tone_1__bdd_4_lut_872 (.A(n1198), .B(tone[3]), .C(n1197), .D(n1199), 
         .Z(pitch[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam tone_1__bdd_4_lut_872.init = 16'h316a;
    LUT4 clk_music_I_0_2_lut (.A(clk_music), .B(cnt_19__N_55), .Z(clk_music_N_56)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(145[4] 150[11])
    defparam clk_music_I_0_2_lut.init = 16'h6666;
    LUT4 i20_2_lut_rep_20 (.A(col_c_1), .B(col_c_2), .Z(n1201)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_20.init = 16'h6666;
    IB switch_pad (.I(switch), .O(switch_c));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(6[2:8])
    LUT4 tone1_3__I_0_71_i4_3_lut (.A(tone2[3]), .B(tone1[3]), .C(mode_num), 
         .Z(tone[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i4_3_lut.init = 16'hcaca;
    ROM256X1A mux_15_Mux_2 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_239[2])) /* synthesis initstate=0x000000000001EF03DEF7BC00000007BDEF000007BDEF00000001EF03DEF7BC00 */ ;
    defparam mux_15_Mux_2.initval = 256'h000000000001EF03DEF7BC00000007BDEF000007BDEF00000001EF03DEF7BC00;
    ROM256X1A mux_16_Mux_1 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_235[1])) /* synthesis initstate=0x00000000000000000000C060000C3FC060003D8600000C000187F80C0007B0C0 */ ;
    defparam mux_16_Mux_1.initval = 256'h00000000000000000000C060000C3FC060003D8600000C000187F80C0007B0C0;
    ROM256X1A mux_16_Mux_2 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_235[2])) /* synthesis initstate=0x0000000000000000001E1B6F61E1BFDB0DEEBD86DBDB6DEC3C37FB61BDD7B0DB */ ;
    defparam mux_16_Mux_2.initval = 256'h0000000000000000001E1B6F61E1BFDB0DEEBD86DBDB6DEC3C37FB61BDD7B0DB;
    LUT4 i309_2_lut_3_lut (.A(col_c_1), .B(col_c_2), .C(col_c_0), .Z(n489)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i309_2_lut_3_lut.init = 16'h6060;
    LUT4 i2_3_lut_4_lut (.A(n1198), .B(n1199), .C(n1197), .D(tone[3]), 
         .Z(pitch[0])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam i2_3_lut_4_lut.init = 16'h0070;
    LUT4 tone_1__bdd_4_lut_875 (.A(n1198), .B(tone[3]), .C(n1199), .D(n1197), 
         .Z(pitch[11])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(D)))) */ ;
    defparam tone_1__bdd_4_lut_875.init = 16'h1120;
    LUT4 i3_4_lut_4_lut (.A(mode_num), .B(n560), .C(n1103), .D(n1042), 
         .Z(n8)) /* synthesis lut_function=(!(A (B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[6:20])
    defparam i3_4_lut_4_lut.init = 16'h77f7;
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_then_4_lut (.A(tone[3]), .B(n1199), 
         .C(tone1[0]), .D(n1198), .Z(n1206)) /* synthesis lut_function=(!(A (B+(C (D)))+!A !(B (C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_12_i15_4_lut_then_4_lut.init = 16'h4662;
    FD1S3AX music_num_63 (.D(music_num_N_58), .CK(switch_N_60), .Q(music_num));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(68[3] 74[10])
    defparam music_num_63.GSR = "DISABLED";
    FD1P3IX tone1_i0_i0 (.D(n992), .SP(clk_c_enable_14), .CD(n683), .CK(clk_c), 
            .Q(tone1[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i0.GSR = "DISABLED";
    FD1P3AX tone1_i0_i2 (.D(tone1_3__N_31[2]), .SP(clk_c_enable_14), .CK(clk_c), 
            .Q(tone1[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i2.GSR = "DISABLED";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_else_4_lut (.A(tone2[0]), .B(tone[3]), 
         .C(n1199), .D(n1198), .Z(n1205)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_12_i15_4_lut_else_4_lut.init = 16'h342c;
    LUT4 tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(n1194), .B(n7), .C(tone[3]), 
         .D(n1197), .Z(pitch[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 i467_2_lut_3_lut (.A(n1197), .B(n1198), .C(n1199), .Z(n14)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam i467_2_lut_3_lut.init = 16'h0606;
    FD1P3IX tone1_i0_i1 (.D(n489), .SP(clk_c_enable_14), .CD(n683), .CK(clk_c), 
            .Q(tone1[1]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i1.GSR = "DISABLED";
    LUT4 tone1_3__bdd_4_lut (.A(tone1[3]), .B(tone1[2]), .C(n1203), .D(n4), 
         .Z(n1180)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;
    defparam tone1_3__bdd_4_lut.init = 16'h4124;
    LUT4 tone_2__bdd_4_lut (.A(n1199), .B(tone[3]), .C(n1197), .D(n1198), 
         .Z(pitch[1])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam tone_2__bdd_4_lut.init = 16'h2242;
    LUT4 i864_4_lut (.A(clk40hz), .B(n8), .C(n1011), .D(n10), .Z(clk_c_enable_14)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i864_4_lut.init = 16'h1110;
    LUT4 tmp_I_1_2_lut_rep_22 (.A(tmp), .B(clk40hz), .Z(n1203)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(80[3] 86[10])
    defparam tmp_I_1_2_lut_rep_22.init = 16'h6666;
    LUT4 i461_4_lut_then_4_lut (.A(n1197), .B(tone1[1]), .C(tone[3]), 
         .D(n1199), .Z(n1209)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam i461_4_lut_then_4_lut.init = 16'h0820;
    OB row_pad_0 (.I(n1203), .O(row[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(10[2:5])
    LUT4 i461_4_lut_else_4_lut (.A(n1197), .B(tone2[1]), .C(tone[3]), 
         .D(n1199), .Z(n1208)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam i461_4_lut_else_4_lut.init = 16'h0820;
    LUT4 tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut (.A(n1199), .B(tone[3]), 
         .C(n1198), .Z(pitch[9])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;
    defparam tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut.init = 16'h3434;
    VLO i1 (.Z(GND_net));
    LUT4 i1_4_lut (.A(col_c_1), .B(col_c_3), .C(col_c_2), .D(col_c_0), 
         .Z(n1011)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc800;
    LUT4 tone1_3__I_0_71_i2_3_lut_rep_17 (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .Z(n1198)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i2_3_lut_rep_17.init = 16'hcaca;
    LUT4 tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut (.A(n1194), .B(n14), .C(tone[3]), 
         .D(n1197), .Z(pitch[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 tone_3__I_0_Mux_10_i7_3_lut_3_lut (.A(n1197), .B(n1198), .C(n1199), 
         .Z(n7_adj_290)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_10_i7_3_lut_3_lut.init = 16'ha6a6;
    CCU2D cnt_228_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n804), .S0(n86));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_21.INIT1 = 16'h0000;
    defparam cnt_228_add_4_21.INJECT1_0 = "NO";
    defparam cnt_228_add_4_21.INJECT1_1 = "NO";
    INV i907 (.A(mode_c), .Z(mode_N_30));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(7[2:6])
    CCU2D cnt_228_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n803), .COUT(n804), .S0(n88), .S1(n87));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_19.INJECT1_0 = "NO";
    defparam cnt_228_add_4_19.INJECT1_1 = "NO";
    LUT4 tone1_3__I_0_71_i1_3_lut_rep_16 (.A(tone2[0]), .B(tone1[0]), .C(mode_num), 
         .Z(n1197)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i1_3_lut_rep_16.init = 16'hcaca;
    LUT4 i845_2_lut_rep_12 (.A(clk8hz), .B(n565), .Z(clk_c_enable_20)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(38[4] 45[11])
    defparam i845_2_lut_rep_12.init = 16'h4444;
    CCU2D cnt_228_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n802), .COUT(n803), .S0(n90), .S1(n89));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_17.INJECT1_0 = "NO";
    defparam cnt_228_add_4_17.INJECT1_1 = "NO";
    LUT4 i805_3_lut (.A(col_c_1), .B(n1180), .C(col_c_2), .Z(n1042)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i805_3_lut.init = 16'hdede;
    CCU2D cnt_228_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n801), .COUT(n802), .S0(n92), .S1(n91));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_15.INJECT1_0 = "NO";
    defparam cnt_228_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_228_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n800), .COUT(n801), .S0(n94), .S1(n93));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_13.INJECT1_0 = "NO";
    defparam cnt_228_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_rep_5_2_lut (.A(col_c_3), .B(col_c_0), .Z(n1103)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_5_2_lut.init = 16'h8888;
    LUT4 row_num_I_0_1_lut_2_lut (.A(tmp), .B(clk40hz), .Z(row_c_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(80[3] 86[10])
    defparam row_num_I_0_1_lut_2_lut.init = 16'h9999;
    PFUMX i885 (.BLUT(n1208), .ALUT(n1209), .C0(mode_num), .Z(pitch[4]));
    LUT4 i384_2_lut (.A(clk_c_enable_14), .B(col_c_3), .Z(n566)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(98[3] 116[10])
    defparam i384_2_lut.init = 16'h8888;
    CCU2D cnt_228_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n799), 
          .COUT(n800), .S0(n96), .S1(n95));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_11.INJECT1_0 = "NO";
    defparam cnt_228_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_228_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n798), 
          .COUT(n799), .S0(n98), .S1(n97));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_9.INJECT1_0 = "NO";
    defparam cnt_228_add_4_9.INJECT1_1 = "NO";
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(10[2:5])
    OB row_pad_2 (.I(VCC_net), .O(row[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(10[2:5])
    OB row_pad_3 (.I(VCC_net), .O(row[3]));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(10[2:5])
    LUT4 i2_4_lut (.A(col_c_0), .B(col_c_1), .C(col_c_3), .D(col_c_2), 
         .Z(n10)) /* synthesis lut_function=(A (B (D))+!A (B (C (D)))) */ ;
    defparam i2_4_lut.init = 16'hc800;
    CCU2D cnt_228_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n797), 
          .COUT(n798), .S0(n100), .S1(n99));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_7.INJECT1_0 = "NO";
    defparam cnt_228_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_228_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n796), 
          .COUT(n797), .S0(n102), .S1(n101));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_5.INJECT1_0 = "NO";
    defparam cnt_228_add_4_5.INJECT1_1 = "NO";
    LUT4 tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut (.A(n1194), .B(n7_adj_290), 
         .C(tone[3]), .D(n1197), .Z(pitch[10])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 i256_2_lut (.A(tone1[0]), .B(tone1[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i256_2_lut.init = 16'heeee;
    LUT4 i840_2_lut_rep_13_2_lut_4_lut (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .D(n1199), .Z(n1194)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[3] 125[10])
    defparam i840_2_lut_rep_13_2_lut_4_lut.init = 16'h0035;
    LUT4 mode_num_I_0_1_lut_rep_23 (.A(mode_num), .Z(n1204)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[6:20])
    defparam mode_num_I_0_1_lut_rep_23.init = 16'h5555;
    LUT4 i483_3_lut_4_lut (.A(n1197), .B(n1198), .C(n1199), .D(tone[3]), 
         .Z(pitch[13])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam i483_3_lut_4_lut.init = 16'h001e;
    CCU2D cnt_228_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n795), 
          .COUT(n796), .S0(n104), .S1(n103));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_228_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_228_add_4_3.INJECT1_0 = "NO";
    defparam cnt_228_add_4_3.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(tone2_3__N_199));
    CCU2D equal_74_20 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n794), 
          .S0(cnt_19__N_55));
    defparam equal_74_20.INIT0 = 16'hFFFF;
    defparam equal_74_20.INIT1 = 16'h0000;
    defparam equal_74_20.INJECT1_0 = "NO";
    defparam equal_74_20.INJECT1_1 = "NO";
    LUT4 tone1_3__I_0_71_i3_3_lut_rep_18 (.A(tone2[2]), .B(tone1[2]), .C(mode_num), 
         .Z(n1199)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i3_3_lut_rep_18.init = 16'hcaca;
    LUT4 tmp_I_0_1_lut (.A(tmp), .Z(tmp_N_62)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(81[7:14])
    defparam tmp_I_0_1_lut.init = 16'h5555;
    PFUMX i883 (.BLUT(n1205), .ALUT(n1206), .C0(mode_num), .Z(pitch[12]));
    LUT4 tone_3__bdd_4_lut (.A(tone[3]), .B(n1198), .C(n1199), .D(n1197), 
         .Z(pitch[2])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam tone_3__bdd_4_lut.init = 16'h1418;
    FD1S3IX cnt_228__i19 (.D(n86), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i19.GSR = "DISABLED";
    song U2 (.tone2({tone2}), .tone2_3__N_199(tone2_3__N_199), .ptr2({ptr2}), 
         .GND_net(GND_net), .music_num(music_num), .ptr1({ptr1}), .clk_c(clk_c), 
         .clk_c_enable_20(clk_c_enable_20), .tone2_3__N_239({tone2_3__N_239}), 
         .\tone2_3__N_235[0] (tone2_3__N_235[0]), .n564(n564), .\tone2_3__N_235[1] (tone2_3__N_235[1]), 
         .\tone2_3__N_235[2] (tone2_3__N_235[2]), .n1084(n1084), .music_num_N_58(music_num_N_58));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(50[5:9])
    CCU2D equal_74_20_607 (.A0(cnt[3]), .B0(pitch[3]), .C0(cnt[2]), .D0(pitch[2]), 
          .A1(cnt[1]), .B1(pitch[1]), .C1(cnt[0]), .D1(pitch[0]), .CIN(n793), 
          .COUT(n794));
    defparam equal_74_20_607.INIT0 = 16'h9009;
    defparam equal_74_20_607.INIT1 = 16'h9009;
    defparam equal_74_20_607.INJECT1_0 = "YES";
    defparam equal_74_20_607.INJECT1_1 = "YES";
    CCU2D equal_74_18 (.A0(cnt[7]), .B0(pitch[7]), .C0(cnt[6]), .D0(pitch[6]), 
          .A1(cnt[5]), .B1(pitch[5]), .C1(cnt[4]), .D1(pitch[4]), .CIN(n792), 
          .COUT(n793));
    defparam equal_74_18.INIT0 = 16'h9009;
    defparam equal_74_18.INIT1 = 16'h9009;
    defparam equal_74_18.INJECT1_0 = "YES";
    defparam equal_74_18.INJECT1_1 = "YES";
    CCU2D equal_74_16 (.A0(cnt[11]), .B0(pitch[11]), .C0(cnt[10]), .D0(pitch[10]), 
          .A1(cnt[9]), .B1(pitch[9]), .C1(cnt[8]), .D1(pitch[8]), .CIN(n791), 
          .COUT(n792));
    defparam equal_74_16.INIT0 = 16'h9009;
    defparam equal_74_16.INIT1 = 16'h9009;
    defparam equal_74_16.INJECT1_0 = "YES";
    defparam equal_74_16.INJECT1_1 = "YES";
    CCU2D equal_74_14 (.A0(cnt[17]), .B0(cnt[16]), .C0(cnt[15]), .D0(cnt[14]), 
          .A1(cnt[13]), .B1(pitch[13]), .C1(cnt[12]), .D1(pitch[12]), 
          .CIN(n790), .COUT(n791));
    defparam equal_74_14.INIT0 = 16'h0001;
    defparam equal_74_14.INIT1 = 16'h9009;
    defparam equal_74_14.INJECT1_0 = "YES";
    defparam equal_74_14.INJECT1_1 = "YES";
    CCU2D equal_74_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[19]), .B1(cnt[18]), .C1(GND_net), .D1(GND_net), .COUT(n790));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(145[7:18])
    defparam equal_74_0.INIT0 = 16'hF000;
    defparam equal_74_0.INIT1 = 16'h1111;
    defparam equal_74_0.INJECT1_0 = "NO";
    defparam equal_74_0.INJECT1_1 = "YES";
    LUT4 tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut (.A(n1197), .B(n1198), .C(n1199), 
         .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut.init = 16'h9e9e;
    FD1S3IX cnt_228__i18 (.D(n87), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i18.GSR = "DISABLED";
    FD1S3IX cnt_228__i17 (.D(n88), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i17.GSR = "DISABLED";
    FD1S3IX cnt_228__i16 (.D(n89), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i16.GSR = "DISABLED";
    FD1S3IX cnt_228__i15 (.D(n90), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i15.GSR = "DISABLED";
    FD1S3IX cnt_228__i14 (.D(n91), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i14.GSR = "DISABLED";
    FD1S3IX cnt_228__i13 (.D(n92), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i13.GSR = "DISABLED";
    FD1S3IX cnt_228__i12 (.D(n93), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i12.GSR = "DISABLED";
    FD1S3IX cnt_228__i11 (.D(n94), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i11.GSR = "DISABLED";
    FD1S3IX cnt_228__i10 (.D(n95), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i10.GSR = "DISABLED";
    FD1S3IX cnt_228__i9 (.D(n96), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i9.GSR = "DISABLED";
    FD1S3IX cnt_228__i8 (.D(n97), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i8.GSR = "DISABLED";
    FD1S3IX cnt_228__i7 (.D(n98), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i7.GSR = "DISABLED";
    FD1S3IX cnt_228__i6 (.D(n99), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i6.GSR = "DISABLED";
    FD1S3IX cnt_228__i5 (.D(n100), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i5.GSR = "DISABLED";
    FD1S3IX cnt_228__i4 (.D(n101), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i4.GSR = "DISABLED";
    FD1S3IX cnt_228__i3 (.D(n102), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i3.GSR = "DISABLED";
    FD1S3IX cnt_228__i2 (.D(n103), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i2.GSR = "DISABLED";
    FD1S3IX cnt_228__i1 (.D(n104), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(149[12:15])
    defparam cnt_228__i1.GSR = "DISABLED";
    LUT4 i857_2_lut (.A(clk_c_enable_14), .B(col_c_3), .Z(n683)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i857_2_lut.init = 16'h2222;
    freqdivider U1 (.GND_net(GND_net), .clk40hz(clk40hz), .clk_c(clk_c), 
            .clk8hz(clk8hz), .n565(n565), .n560(n560));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(46[5:16])
    IB mode_pad (.I(mode), .O(mode_c));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(7[2:6])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(8[2:5])
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(9[2:5])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(9[2:5])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(9[2:5])
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(9[2:5])
    
endmodule
//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module song
//

module song (tone2, tone2_3__N_199, ptr2, GND_net, music_num, ptr1, 
            clk_c, clk_c_enable_20, tone2_3__N_239, \tone2_3__N_235[0] , 
            n564, \tone2_3__N_235[1] , \tone2_3__N_235[2] , n1084, music_num_N_58);
    output [3:0]tone2;
    output tone2_3__N_199;
    output [7:0]ptr2;
    input GND_net;
    input music_num;
    output [7:0]ptr1;
    input clk_c;
    input clk_c_enable_20;
    input [2:0]tone2_3__N_239;
    input \tone2_3__N_235[0] ;
    input n564;
    input \tone2_3__N_235[1] ;
    input \tone2_3__N_235[2] ;
    output n1084;
    output music_num_N_58;
    
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(8[2:7])
    wire mn_former_derived_1 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/mn_former_derived_1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(16[9:18])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(8[2:5])
    wire [3:0]tone2_3__N_195;
    
    wire n828;
    wire [7:0]n37;
    
    wire mn_former, n827, n826, n825, n502, n1192, n562;
    wire [7:0]n37_adj_289;
    
    wire n824, n823, n822, n821, n912, n1007, n6, n1202, n1048, 
        n1060, n11;
    
    FD1S1A tone2_3__I_0_i1 (.D(tone2_3__N_195[0]), .CK(tone2_3__N_199), 
           .Q(tone2[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i1.GSR = "DISABLED";
    CCU2D ptr2_232_add_4_9 (.A0(ptr2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n828), .S0(n37[7]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr2_232_add_4_9.INIT1 = 16'h0000;
    defparam ptr2_232_add_4_9.INJECT1_0 = "NO";
    defparam ptr2_232_add_4_9.INJECT1_1 = "NO";
    FD1S1A music_num_I_0 (.D(music_num), .CK(mn_former_derived_1), .Q(mn_former)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(31[2] 53[14])
    defparam music_num_I_0.GSR = "DISABLED";
    CCU2D ptr2_232_add_4_7 (.A0(ptr2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n827), .COUT(n828), .S0(n37[5]), .S1(n37[6]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr2_232_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr2_232_add_4_7.INJECT1_0 = "NO";
    defparam ptr2_232_add_4_7.INJECT1_1 = "NO";
    CCU2D ptr2_232_add_4_5 (.A0(ptr2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n826), .COUT(n827), .S0(n37[3]), .S1(n37[4]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr2_232_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr2_232_add_4_5.INJECT1_0 = "NO";
    defparam ptr2_232_add_4_5.INJECT1_1 = "NO";
    CCU2D ptr2_232_add_4_3 (.A0(ptr2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n825), .COUT(n826), .S0(n37[1]), .S1(n37[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr2_232_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr2_232_add_4_3.INJECT1_0 = "NO";
    defparam ptr2_232_add_4_3.INJECT1_1 = "NO";
    FD1S1A tone2_3__I_0_i2 (.D(tone2_3__N_195[1]), .CK(tone2_3__N_199), 
           .Q(tone2[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i2.GSR = "DISABLED";
    CCU2D ptr2_232_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n825), .S1(n37[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232_add_4_1.INIT0 = 16'hF000;
    defparam ptr2_232_add_4_1.INIT1 = 16'h0555;
    defparam ptr2_232_add_4_1.INJECT1_0 = "NO";
    defparam ptr2_232_add_4_1.INJECT1_1 = "NO";
    FD1S1A tone2_3__I_0_i3 (.D(tone2_3__N_195[2]), .CK(tone2_3__N_199), 
           .Q(tone2[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i3.GSR = "DISABLED";
    FD1S1I tone2_3__I_0_i4 (.D(n1192), .CK(tone2_3__N_199), .CD(n502), 
           .Q(tone2[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i4.GSR = "DISABLED";
    LUT4 i322_2_lut (.A(ptr2[7]), .B(music_num), .Z(n502)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(46[4] 51[13])
    defparam i322_2_lut.init = 16'hbbbb;
    FD1P3IX ptr1_231__i7 (.D(n37_adj_289[7]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i7.GSR = "ENABLED";
    LUT4 tone2_3__I_4_i1_3_lut (.A(tone2_3__N_239[0]), .B(\tone2_3__N_235[0] ), 
         .C(music_num), .Z(tone2_3__N_195[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i1_3_lut.init = 16'hcaca;
    CCU2D ptr1_231_add_4_9 (.A0(ptr1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n824), .S0(n37_adj_289[7]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr1_231_add_4_9.INIT1 = 16'h0000;
    defparam ptr1_231_add_4_9.INJECT1_0 = "NO";
    defparam ptr1_231_add_4_9.INJECT1_1 = "NO";
    CCU2D ptr1_231_add_4_7 (.A0(ptr1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n823), .COUT(n824), .S0(n37_adj_289[5]), .S1(n37_adj_289[6]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr1_231_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr1_231_add_4_7.INJECT1_0 = "NO";
    defparam ptr1_231_add_4_7.INJECT1_1 = "NO";
    LUT4 tone2_3__I_2_1_lut_2_lut (.A(mn_former), .B(music_num), .Z(tone2_3__N_199)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(33[6:28])
    defparam tone2_3__I_2_1_lut_2_lut.init = 16'h9999;
    FD1P3IX ptr2_232__i0 (.D(n37[0]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i0.GSR = "ENABLED";
    CCU2D ptr1_231_add_4_5 (.A0(ptr1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n822), .COUT(n823), .S0(n37_adj_289[3]), .S1(n37_adj_289[4]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr1_231_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr1_231_add_4_5.INJECT1_0 = "NO";
    defparam ptr1_231_add_4_5.INJECT1_1 = "NO";
    CCU2D ptr1_231_add_4_3 (.A0(ptr1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n821), .COUT(n822), .S0(n37_adj_289[1]), .S1(n37_adj_289[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr1_231_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr1_231_add_4_3.INJECT1_0 = "NO";
    defparam ptr1_231_add_4_3.INJECT1_1 = "NO";
    CCU2D ptr1_231_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n821), .S1(n37_adj_289[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231_add_4_1.INIT0 = 16'hF000;
    defparam ptr1_231_add_4_1.INIT1 = 16'h0555;
    defparam ptr1_231_add_4_1.INJECT1_0 = "NO";
    defparam ptr1_231_add_4_1.INJECT1_1 = "NO";
    LUT4 n912_bdd_4_lut (.A(n912), .B(n1007), .C(ptr2[6]), .D(ptr2[4]), 
         .Z(n1192)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n912_bdd_4_lut.init = 16'h00ca;
    LUT4 i2_2_lut (.A(ptr2[5]), .B(ptr2[3]), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    FD1P3IX ptr2_232__i1 (.D(n37[1]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i1.GSR = "ENABLED";
    FD1P3IX ptr2_232__i2 (.D(n37[2]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i2.GSR = "ENABLED";
    FD1P3IX ptr1_231__i0 (.D(n37_adj_289[0]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i0.GSR = "ENABLED";
    FD1P3IX ptr2_232__i3 (.D(n37[3]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i3.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_21 (.A(ptr2[2]), .B(ptr2[5]), .Z(n1202)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_21.init = 16'h8888;
    LUT4 i2_3_lut_4_lut (.A(ptr2[2]), .B(ptr2[5]), .C(ptr2[3]), .D(ptr2[1]), 
         .Z(n1007)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0008;
    FD1P3IX ptr2_232__i4 (.D(n37[4]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i4.GSR = "ENABLED";
    FD1P3IX ptr2_232__i5 (.D(n37[5]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i5.GSR = "ENABLED";
    FD1P3IX ptr2_232__i6 (.D(n37[6]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i6.GSR = "ENABLED";
    FD1P3IX ptr2_232__i7 (.D(n37[7]), .SP(clk_c_enable_20), .CD(n564), 
            .CK(clk_c), .Q(ptr2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(43[18:22])
    defparam ptr2_232__i7.GSR = "ENABLED";
    LUT4 tone2_3__I_4_i2_3_lut (.A(tone2_3__N_239[1]), .B(\tone2_3__N_235[1] ), 
         .C(music_num), .Z(tone2_3__N_195[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i2_3_lut.init = 16'hcaca;
    LUT4 tone2_3__I_4_i3_3_lut (.A(tone2_3__N_239[2]), .B(\tone2_3__N_235[2] ), 
         .C(music_num), .Z(tone2_3__N_195[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i3_3_lut.init = 16'hcaca;
    FD1P3IX ptr1_231__i1 (.D(n37_adj_289[1]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i1.GSR = "ENABLED";
    FD1P3IX ptr1_231__i2 (.D(n37_adj_289[2]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i2.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(ptr2[0]), .B(n6), .C(ptr2[2]), .D(ptr2[1]), .Z(n912)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0408;
    FD1P3IX ptr1_231__i3 (.D(n37_adj_289[3]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i3.GSR = "ENABLED";
    FD1P3IX ptr1_231__i4 (.D(n37_adj_289[4]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i4.GSR = "ENABLED";
    LUT4 i859_4_lut (.A(clk_c_enable_20), .B(ptr1[4]), .C(n1048), .D(n1060), 
         .Z(n562)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i859_4_lut.init = 16'h2000;
    FD1P3IX ptr1_231__i5 (.D(n37_adj_289[5]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i5.GSR = "ENABLED";
    LUT4 i811_3_lut (.A(ptr1[1]), .B(ptr1[0]), .C(ptr1[6]), .Z(n1048)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i811_3_lut.init = 16'h8080;
    LUT4 i823_4_lut (.A(ptr1[2]), .B(ptr1[5]), .C(ptr1[3]), .D(ptr1[7]), 
         .Z(n1060)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i823_4_lut.init = 16'h8000;
    LUT4 i850_4_lut (.A(n11), .B(ptr2[4]), .C(n1202), .D(ptr2[1]), .Z(n1084)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i850_4_lut.init = 16'h0040;
    LUT4 mn_former_I_3_2_lut_rep_19 (.A(mn_former), .B(music_num), .Z(mn_former_derived_1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(33[6:28])
    defparam mn_former_I_3_2_lut_rep_19.init = 16'h6666;
    LUT4 i4_4_lut (.A(ptr2[0]), .B(ptr2[6]), .C(ptr2[7]), .D(ptr2[3]), 
         .Z(n11)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut.init = 16'hffdf;
    LUT4 music_num_I_0_1_lut (.A(music_num), .Z(music_num_N_58)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(69[4] 73[11])
    defparam music_num_I_0_1_lut.init = 16'h5555;
    FD1P3IX ptr1_231__i6 (.D(n37_adj_289[6]), .SP(clk_c_enable_20), .CD(n562), 
            .CK(clk_c), .Q(ptr1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/songs.vhd(40[18:22])
    defparam ptr1_231__i6.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module freqdivider
//

module freqdivider (GND_net, clk40hz, clk_c, clk8hz, n565, n560);
    input GND_net;
    output clk40hz;
    input clk_c;
    output clk8hz;
    output n565;
    output n560;
    
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(20[9:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/lab5.vhd(8[2:5])
    
    wire n835;
    wire [31:0]cnt8;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(17[12:16])
    wire [31:0]n133;
    
    wire n836, n834, n833, n832, n831, n830, clk40hz_N_194, n829, 
        clk8hz_N_193, n32;
    wire [31:0]cnt40;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(31[12:17])
    
    wire n25, n40, n30, n44, n1058, n1062, n38, n28, n42, 
        n36, n38_adj_244, n26, n24, n820;
    wire [31:0]n133_adj_280;
    
    wire n819, n818, n817, n816, n815, n814, n813, n837, n838, 
        n812, n999, n1024, n31, n44_adj_248, n40_adj_249, n811, 
        n810, n809, n808, n807, n806, n805, n1030, n1038, n10, 
        n41, n46, n42_adj_279, n844, n843, n842, n841, n840, 
        n839;
    
    CCU2D cnt8_229_add_4_15 (.A0(cnt8[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n835), .COUT(n836), .S0(n133[13]), .S1(n133[14]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_15.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_13 (.A0(cnt8[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n834), .COUT(n835), .S0(n133[11]), .S1(n133[12]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_13.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_11 (.A0(cnt8[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n833), .COUT(n834), .S0(n133[9]), .S1(n133[10]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_11.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_9 (.A0(cnt8[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n832), .COUT(n833), .S0(n133[7]), .S1(n133[8]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_9.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_7 (.A0(cnt8[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n831), .COUT(n832), .S0(n133[5]), .S1(n133[6]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_7.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_5 (.A0(cnt8[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n830), .COUT(n831), .S0(n133[3]), .S1(n133[4]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_5.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_5.INJECT1_1 = "NO";
    FD1S3AX clk40hz_28 (.D(clk40hz_N_194), .CK(clk_c), .Q(clk40hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(33[3] 40[10])
    defparam clk40hz_28.GSR = "DISABLED";
    CCU2D cnt8_229_add_4_3 (.A0(cnt8[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n829), .COUT(n830), .S0(n133[1]), .S1(n133[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_3.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n829), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_1.INIT0 = 16'hF000;
    defparam cnt8_229_add_4_1.INIT1 = 16'h0555;
    defparam cnt8_229_add_4_1.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_1.INJECT1_1 = "NO";
    FD1S3AX clk8hz_26 (.D(clk8hz_N_193), .CK(clk_c), .Q(clk8hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(19[3] 26[10])
    defparam clk8hz_26.GSR = "DISABLED";
    LUT4 i9_2_lut (.A(cnt8[20]), .B(cnt8[15]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i1_2_lut (.A(cnt40[30]), .B(cnt40[2]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i20_4_lut (.A(cnt40[1]), .B(n40), .C(n30), .D(cnt40[31]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i825_3_lut (.A(cnt8[19]), .B(n1058), .C(cnt8[5]), .Z(n1062)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i825_3_lut.init = 16'h8080;
    LUT4 i19_4_lut (.A(cnt8[25]), .B(n38), .C(n28), .D(cnt8[26]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(cnt8[18]), .B(cnt8[11]), .C(cnt8[2]), .D(cnt8[21]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(cnt40[29]), .B(cnt40[18]), .C(cnt40[3]), .D(cnt40[24]), 
         .Z(n38_adj_244)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt40[15]), .B(cnt40[27]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX cnt8_229__i0 (.D(n133[0]), .CK(clk_c), .CD(n565), .Q(cnt8[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_5 (.A(cnt8[0]), .B(cnt8[28]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i1_2_lut_adj_5.init = 16'heeee;
    CCU2D cnt40_230_add_4_33 (.A0(cnt40[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n820), .S0(n133_adj_280[31]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_33.INIT1 = 16'h0000;
    defparam cnt40_230_add_4_33.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_33.INJECT1_1 = "NO";
    LUT4 i15_4_lut (.A(cnt8[1]), .B(cnt8[30]), .C(cnt8[27]), .D(cnt8[22]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i15_4_lut.init = 16'hfffe;
    CCU2D cnt40_230_add_4_31 (.A0(cnt40[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n819), .COUT(n820), .S0(n133_adj_280[29]), 
          .S1(n133_adj_280[30]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_31.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_29 (.A0(cnt40[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n818), .COUT(n819), .S0(n133_adj_280[27]), 
          .S1(n133_adj_280[28]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_29.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_27 (.A0(cnt40[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n817), .COUT(n818), .S0(n133_adj_280[25]), 
          .S1(n133_adj_280[26]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_27.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_25 (.A0(cnt40[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n816), .COUT(n817), .S0(n133_adj_280[23]), 
          .S1(n133_adj_280[24]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_25.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_23 (.A0(cnt40[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n815), .COUT(n816), .S0(n133_adj_280[21]), 
          .S1(n133_adj_280[22]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_23.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_23.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(cnt40[26]), .B(cnt40[10]), .C(cnt40[28]), .D(cnt40[12]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i16_4_lut.init = 16'hfffe;
    CCU2D cnt40_230_add_4_21 (.A0(cnt40[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n814), .COUT(n815), .S0(n133_adj_280[19]), 
          .S1(n133_adj_280[20]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_21.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_21.INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(cnt40[23]), .B(cnt40[22]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i6_2_lut.init = 16'heeee;
    CCU2D cnt40_230_add_4_19 (.A0(cnt40[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n813), .COUT(n814), .S0(n133_adj_280[17]), 
          .S1(n133_adj_280[18]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_19.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_6 (.A(clk8hz), .B(n565), .Z(clk8hz_N_193)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_6.init = 16'h6666;
    LUT4 i5_2_lut (.A(cnt8[9]), .B(cnt8[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i5_2_lut.init = 16'heeee;
    CCU2D cnt8_229_add_4_19 (.A0(cnt8[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n837), .COUT(n838), .S0(n133[17]), .S1(n133[18]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_19.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_19.INJECT1_1 = "NO";
    FD1S3IX cnt40_230__i0 (.D(n133_adj_280[0]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i0.GSR = "DISABLED";
    CCU2D cnt40_230_add_4_17 (.A0(cnt40[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n812), .COUT(n813), .S0(n133_adj_280[15]), 
          .S1(n133_adj_280[16]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_17.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_17.INJECT1_1 = "NO";
    LUT4 i821_4_lut (.A(cnt8[16]), .B(cnt8[17]), .C(cnt8[12]), .D(cnt8[7]), 
         .Z(n1058)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i821_4_lut.init = 16'h8000;
    LUT4 i849_4_lut (.A(n999), .B(cnt8[8]), .C(n1024), .D(cnt8[14]), 
         .Z(n565)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i849_4_lut.init = 16'h4000;
    LUT4 i22_4_lut (.A(n31), .B(n44_adj_248), .C(n40_adj_249), .D(n32), 
         .Z(n999)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i22_4_lut.init = 16'hfffe;
    CCU2D cnt40_230_add_4_15 (.A0(cnt40[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n811), .COUT(n812), .S0(n133_adj_280[13]), 
          .S1(n133_adj_280[14]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_15.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_15.INJECT1_1 = "NO";
    FD1S3IX cnt8_229__i31 (.D(n133[31]), .CK(clk_c), .CD(n565), .Q(cnt8[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i31.GSR = "DISABLED";
    FD1S3IX cnt8_229__i30 (.D(n133[30]), .CK(clk_c), .CD(n565), .Q(cnt8[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i30.GSR = "DISABLED";
    FD1S3IX cnt8_229__i29 (.D(n133[29]), .CK(clk_c), .CD(n565), .Q(cnt8[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i29.GSR = "DISABLED";
    FD1S3IX cnt8_229__i28 (.D(n133[28]), .CK(clk_c), .CD(n565), .Q(cnt8[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i28.GSR = "DISABLED";
    FD1S3IX cnt8_229__i27 (.D(n133[27]), .CK(clk_c), .CD(n565), .Q(cnt8[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i27.GSR = "DISABLED";
    FD1S3IX cnt8_229__i26 (.D(n133[26]), .CK(clk_c), .CD(n565), .Q(cnt8[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i26.GSR = "DISABLED";
    FD1S3IX cnt8_229__i25 (.D(n133[25]), .CK(clk_c), .CD(n565), .Q(cnt8[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i25.GSR = "DISABLED";
    FD1S3IX cnt8_229__i24 (.D(n133[24]), .CK(clk_c), .CD(n565), .Q(cnt8[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i24.GSR = "DISABLED";
    FD1S3IX cnt8_229__i23 (.D(n133[23]), .CK(clk_c), .CD(n565), .Q(cnt8[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i23.GSR = "DISABLED";
    FD1S3IX cnt8_229__i22 (.D(n133[22]), .CK(clk_c), .CD(n565), .Q(cnt8[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i22.GSR = "DISABLED";
    FD1S3IX cnt8_229__i21 (.D(n133[21]), .CK(clk_c), .CD(n565), .Q(cnt8[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i21.GSR = "DISABLED";
    LUT4 i787_2_lut (.A(cnt8[4]), .B(cnt8[13]), .Z(n1024)) /* synthesis lut_function=(A (B)) */ ;
    defparam i787_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_7 (.A(clk40hz), .B(n560), .Z(clk40hz_N_194)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_7.init = 16'h6666;
    FD1S3IX cnt8_229__i20 (.D(n133[20]), .CK(clk_c), .CD(n565), .Q(cnt8[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i20.GSR = "DISABLED";
    FD1S3IX cnt8_229__i19 (.D(n133[19]), .CK(clk_c), .CD(n565), .Q(cnt8[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i19.GSR = "DISABLED";
    FD1S3IX cnt8_229__i18 (.D(n133[18]), .CK(clk_c), .CD(n565), .Q(cnt8[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i18.GSR = "DISABLED";
    FD1S3IX cnt8_229__i17 (.D(n133[17]), .CK(clk_c), .CD(n565), .Q(cnt8[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i17.GSR = "DISABLED";
    FD1S3IX cnt8_229__i16 (.D(n133[16]), .CK(clk_c), .CD(n565), .Q(cnt8[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i16.GSR = "DISABLED";
    FD1S3IX cnt8_229__i15 (.D(n133[15]), .CK(clk_c), .CD(n565), .Q(cnt8[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i15.GSR = "DISABLED";
    FD1S3IX cnt8_229__i14 (.D(n133[14]), .CK(clk_c), .CD(n565), .Q(cnt8[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i14.GSR = "DISABLED";
    FD1S3IX cnt8_229__i13 (.D(n133[13]), .CK(clk_c), .CD(n565), .Q(cnt8[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i13.GSR = "DISABLED";
    FD1S3IX cnt8_229__i12 (.D(n133[12]), .CK(clk_c), .CD(n565), .Q(cnt8[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i12.GSR = "DISABLED";
    FD1S3IX cnt8_229__i11 (.D(n133[11]), .CK(clk_c), .CD(n565), .Q(cnt8[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i11.GSR = "DISABLED";
    FD1S3IX cnt8_229__i10 (.D(n133[10]), .CK(clk_c), .CD(n565), .Q(cnt8[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i10.GSR = "DISABLED";
    FD1S3IX cnt8_229__i9 (.D(n133[9]), .CK(clk_c), .CD(n565), .Q(cnt8[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i9.GSR = "DISABLED";
    FD1S3IX cnt8_229__i8 (.D(n133[8]), .CK(clk_c), .CD(n565), .Q(cnt8[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i8.GSR = "DISABLED";
    CCU2D cnt40_230_add_4_13 (.A0(cnt40[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n810), .COUT(n811), .S0(n133_adj_280[11]), 
          .S1(n133_adj_280[12]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_13.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_13.INJECT1_1 = "NO";
    FD1S3IX cnt8_229__i7 (.D(n133[7]), .CK(clk_c), .CD(n565), .Q(cnt8[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i7.GSR = "DISABLED";
    FD1S3IX cnt8_229__i6 (.D(n133[6]), .CK(clk_c), .CD(n565), .Q(cnt8[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i6.GSR = "DISABLED";
    CCU2D cnt40_230_add_4_11 (.A0(cnt40[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n809), .COUT(n810), .S0(n133_adj_280[9]), 
          .S1(n133_adj_280[10]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_11.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_11.INJECT1_1 = "NO";
    FD1S3IX cnt8_229__i5 (.D(n133[5]), .CK(clk_c), .CD(n565), .Q(cnt8[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i5.GSR = "DISABLED";
    FD1S3IX cnt8_229__i4 (.D(n133[4]), .CK(clk_c), .CD(n565), .Q(cnt8[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i4.GSR = "DISABLED";
    CCU2D cnt40_230_add_4_9 (.A0(cnt40[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n808), .COUT(n809), .S0(n133_adj_280[7]), .S1(n133_adj_280[8]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_9.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt8_229__i3 (.D(n133[3]), .CK(clk_c), .CD(n565), .Q(cnt8[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i3.GSR = "DISABLED";
    FD1S3IX cnt8_229__i2 (.D(n133[2]), .CK(clk_c), .CD(n565), .Q(cnt8[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i2.GSR = "DISABLED";
    CCU2D cnt40_230_add_4_7 (.A0(cnt40[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n807), .COUT(n808), .S0(n133_adj_280[5]), .S1(n133_adj_280[6]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_7.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_5 (.A0(cnt40[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n806), .COUT(n807), .S0(n133_adj_280[3]), .S1(n133_adj_280[4]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_5.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_3 (.A0(cnt40[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n805), .COUT(n806), .S0(n133_adj_280[1]), .S1(n133_adj_280[2]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt40_230_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt40_230_add_4_3.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt40_230_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n805), .S1(n133_adj_280[0]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230_add_4_1.INIT0 = 16'hF000;
    defparam cnt40_230_add_4_1.INIT1 = 16'h0555;
    defparam cnt40_230_add_4_1.INJECT1_0 = "NO";
    defparam cnt40_230_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt8_229__i1 (.D(n133[1]), .CK(clk_c), .CD(n565), .Q(cnt8[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229__i1.GSR = "DISABLED";
    LUT4 i8_2_lut (.A(cnt8[6]), .B(cnt8[10]), .Z(n31)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i8_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(cnt8[23]), .B(cnt8[3]), .C(cnt8[29]), .D(cnt8[31]), 
         .Z(n40_adj_249)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i835_4_lut (.A(n1030), .B(n1038), .C(cnt40[7]), .D(n10), .Z(n560)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i835_4_lut.init = 16'h0080;
    LUT4 i21_4_lut (.A(n1062), .B(n42), .C(n36), .D(n24), .Z(n44_adj_248)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(20[7:20])
    defparam i21_4_lut.init = 16'hfffd;
    LUT4 i793_4_lut (.A(cnt40[5]), .B(cnt40[4]), .C(cnt40[17]), .D(cnt40[11]), 
         .Z(n1030)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i793_4_lut.init = 16'h8000;
    LUT4 i801_2_lut (.A(cnt40[14]), .B(cnt40[6]), .Z(n1038)) /* synthesis lut_function=(A (B)) */ ;
    defparam i801_2_lut.init = 16'h8888;
    LUT4 i1_4_lut (.A(n41), .B(cnt40[8]), .C(n46), .D(n42_adj_279), 
         .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    CCU2D cnt8_229_add_4_17 (.A0(cnt8[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n836), .COUT(n837), .S0(n133[15]), .S1(n133[16]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_17.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_17.INJECT1_1 = "NO";
    LUT4 i17_4_lut_adj_8 (.A(cnt40[20]), .B(cnt40[19]), .C(cnt40[0]), 
         .D(cnt40[21]), .Z(n41)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i17_4_lut_adj_8.init = 16'hfffe;
    LUT4 i22_4_lut_adj_9 (.A(n25), .B(n44), .C(n38_adj_244), .D(n26), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i22_4_lut_adj_9.init = 16'hfffe;
    FD1S3IX cnt40_230__i31 (.D(n133_adj_280[31]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i31.GSR = "DISABLED";
    LUT4 i18_4_lut (.A(cnt40[25]), .B(cnt40[16]), .C(cnt40[9]), .D(cnt40[13]), 
         .Z(n42_adj_279)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(34[7:21])
    defparam i18_4_lut.init = 16'hfffe;
    CCU2D cnt8_229_add_4_33 (.A0(cnt8[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n844), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_33.INIT1 = 16'h0000;
    defparam cnt8_229_add_4_33.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_31 (.A0(cnt8[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n843), .COUT(n844), .S0(n133[29]), .S1(n133[30]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_31.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_29 (.A0(cnt8[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n842), .COUT(n843), .S0(n133[27]), .S1(n133[28]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_29.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_27 (.A0(cnt8[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n841), .COUT(n842), .S0(n133[25]), .S1(n133[26]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_27.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_25 (.A0(cnt8[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n840), .COUT(n841), .S0(n133[23]), .S1(n133[24]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_25.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_23 (.A0(cnt8[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n839), .COUT(n840), .S0(n133[21]), .S1(n133[22]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_23.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt8_229_add_4_21 (.A0(cnt8[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n838), .COUT(n839), .S0(n133[19]), .S1(n133[20]));   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt8_229_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt8_229_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt8_229_add_4_21.INJECT1_0 = "NO";
    defparam cnt8_229_add_4_21.INJECT1_1 = "NO";
    FD1S3IX cnt40_230__i30 (.D(n133_adj_280[30]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i30.GSR = "DISABLED";
    FD1S3IX cnt40_230__i29 (.D(n133_adj_280[29]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i29.GSR = "DISABLED";
    FD1S3IX cnt40_230__i28 (.D(n133_adj_280[28]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i28.GSR = "DISABLED";
    FD1S3IX cnt40_230__i27 (.D(n133_adj_280[27]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i27.GSR = "DISABLED";
    FD1S3IX cnt40_230__i26 (.D(n133_adj_280[26]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i26.GSR = "DISABLED";
    FD1S3IX cnt40_230__i25 (.D(n133_adj_280[25]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i25.GSR = "DISABLED";
    FD1S3IX cnt40_230__i24 (.D(n133_adj_280[24]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i24.GSR = "DISABLED";
    FD1S3IX cnt40_230__i23 (.D(n133_adj_280[23]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i23.GSR = "DISABLED";
    FD1S3IX cnt40_230__i22 (.D(n133_adj_280[22]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i22.GSR = "DISABLED";
    FD1S3IX cnt40_230__i21 (.D(n133_adj_280[21]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i21.GSR = "DISABLED";
    FD1S3IX cnt40_230__i20 (.D(n133_adj_280[20]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i20.GSR = "DISABLED";
    FD1S3IX cnt40_230__i19 (.D(n133_adj_280[19]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i19.GSR = "DISABLED";
    FD1S3IX cnt40_230__i18 (.D(n133_adj_280[18]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i18.GSR = "DISABLED";
    FD1S3IX cnt40_230__i17 (.D(n133_adj_280[17]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i17.GSR = "DISABLED";
    FD1S3IX cnt40_230__i16 (.D(n133_adj_280[16]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i16.GSR = "DISABLED";
    FD1S3IX cnt40_230__i15 (.D(n133_adj_280[15]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i15.GSR = "DISABLED";
    FD1S3IX cnt40_230__i14 (.D(n133_adj_280[14]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i14.GSR = "DISABLED";
    FD1S3IX cnt40_230__i13 (.D(n133_adj_280[13]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i13.GSR = "DISABLED";
    FD1S3IX cnt40_230__i12 (.D(n133_adj_280[12]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i12.GSR = "DISABLED";
    FD1S3IX cnt40_230__i11 (.D(n133_adj_280[11]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i11.GSR = "DISABLED";
    FD1S3IX cnt40_230__i10 (.D(n133_adj_280[10]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i10.GSR = "DISABLED";
    FD1S3IX cnt40_230__i9 (.D(n133_adj_280[9]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i9.GSR = "DISABLED";
    FD1S3IX cnt40_230__i8 (.D(n133_adj_280[8]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i8.GSR = "DISABLED";
    FD1S3IX cnt40_230__i7 (.D(n133_adj_280[7]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i7.GSR = "DISABLED";
    FD1S3IX cnt40_230__i6 (.D(n133_adj_280[6]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i6.GSR = "DISABLED";
    FD1S3IX cnt40_230__i5 (.D(n133_adj_280[5]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i5.GSR = "DISABLED";
    FD1S3IX cnt40_230__i4 (.D(n133_adj_280[4]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i4.GSR = "DISABLED";
    FD1S3IX cnt40_230__i3 (.D(n133_adj_280[3]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i3.GSR = "DISABLED";
    FD1S3IX cnt40_230__i2 (.D(n133_adj_280[2]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i2.GSR = "DISABLED";
    FD1S3IX cnt40_230__i1 (.D(n133_adj_280[1]), .CK(clk_c), .CD(n560), 
            .Q(cnt40[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab5/impl1/source/freq_div.vhd(38[14:19])
    defparam cnt40_230__i1.GSR = "DISABLED";
    
endmodule
