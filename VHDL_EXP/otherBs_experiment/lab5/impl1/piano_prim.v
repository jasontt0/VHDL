// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Dec 19 21:11:10 2022
//
// Verilog Description of module piano
//

module piano (switch, mode, clk, col, row, beep);   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(4[8:13])
    input switch;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(6[2:8])
    input mode;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(7[2:6])
    input clk;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(8[2:5])
    input [3:0]col;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(9[2:5])
    output [3:0]row;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(10[2:5])
    output beep;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(11[2:6])
    
    wire switch_c /* synthesis is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(6[2:8])
    wire mode_c /* synthesis is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(7[2:6])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(8[2:5])
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(20[9:16])
    wire mode_N_30 /* synthesis is_inv_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(17[9:17])
    wire switch_N_60 /* synthesis is_inv_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(23[9:18])
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(8[2:7])
    
    wire GND_net, VCC_net, col_c_3, col_c_2, col_c_1, col_c_0, n940, 
        row_c_1, beep_c, clk_music, mode_num;
    wire [19:0]cnt;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(18[9:12])
    wire [23:0]pitch;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(19[9:14])
    
    wire clk8hz;
    wire [3:0]tone1;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(22[9:14])
    wire [3:0]tone2;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(22[15:20])
    wire [3:0]tone;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(22[21:25])
    
    wire music_num, music_num_N_58, tmp, tmp_N_62, n937, n8;
    wire [3:0]tone1_3__N_31;
    
    wire n943, cnt_19__N_55, clk_music_N_56, n939, n951, n942, n1205, 
        n569, n941, n938, n949, n948, n947;
    wire [7:0]ptr1;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(14[9:13])
    wire [7:0]ptr2;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(15[9:13])
    
    wire n4, n1285, n568;
    wire [2:0]tone2_3__N_239;
    wire [3:0]tone2_3__N_235;
    
    wire n6, n1296, n1295, n1294, n1293, n7, clk_c_enable_20, 
        n1284, n1221, clk_c_enable_15, n14, n1292, n1220, n566, 
        n7_adj_264, n1291, n946, n945, n944, n950, n985, n105, 
        n104, n103, n102, n101, n100, n99, n98, n97, n96, 
        n95, n94, n93, n92, n91, n90, n89, n88, n87, n86, 
        n1283, n1111, n651, n1301, n575, n1300, n1298, n1288, 
        n1297;
    
    VHI i2 (.Z(VCC_net));
    FD1S1A tmp_I_0_72 (.D(tmp_N_62), .CK(clk40hz), .Q(tmp)) /* synthesis lse_init_val=0 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(77[2] 92[14])
    defparam tmp_I_0_72.GSR = "DISABLED";
    FD1S3AX clk_music_67 (.D(clk_music_N_56), .CK(clk_c), .Q(clk_music));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(144[3] 152[10])
    defparam clk_music_67.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut (.A(n1294), .B(tone[3]), 
         .C(n1293), .Z(pitch[9])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;
    defparam tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut.init = 16'h3434;
    LUT4 tmp_I_1_2_lut_rep_24 (.A(tmp), .B(clk40hz), .Z(n1295)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(80[3] 86[10])
    defparam tmp_I_1_2_lut_rep_24.init = 16'h6666;
    LUT4 row_num_I_0_1_lut_2_lut (.A(tmp), .B(clk40hz), .Z(row_c_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(80[3] 86[10])
    defparam row_num_I_0_1_lut_2_lut.init = 16'h9999;
    LUT4 i20_2_lut_rep_25 (.A(col_c_1), .B(col_c_2), .Z(n1296)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_25.init = 16'h6666;
    FD1S3AX beep_68 (.D(clk_music), .CK(clk_c), .Q(beep_c));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(144[3] 152[10])
    defparam beep_68.GSR = "DISABLED";
    FD1S3AX mode_num_62 (.D(n1291), .CK(mode_N_30), .Q(mode_num));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(57[3] 63[10])
    defparam mode_num_62.GSR = "DISABLED";
    ROM256X1A mux_16_Mux_0 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_235[0])) /* synthesis initstate=0x000000000000000000001B007400001801E28000C3C3600E800003003C500018 */ ;
    defparam mux_16_Mux_0.initval = 256'h000000000000000000001B007400001801E28000C3C3600E800003003C500018;
    CCU2D cnt_235_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n942), 
          .S1(n105));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_1.INIT0 = 16'hF000;
    defparam cnt_235_add_4_1.INIT1 = 16'h0555;
    defparam cnt_235_add_4_1.INJECT1_0 = "NO";
    defparam cnt_235_add_4_1.INJECT1_1 = "NO";
    OB beep_pad (.I(beep_c), .O(beep));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(11[2:6])
    ROM256X1A mux_15_Mux_0 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_239[0])) /* synthesis initstate=0x000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF */ ;
    defparam mux_15_Mux_0.initval = 256'h000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF;
    LUT4 i316_2_lut_rep_17_3_lut (.A(col_c_1), .B(col_c_2), .C(col_c_0), 
         .Z(n1288)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i316_2_lut_rep_17_3_lut.init = 16'h6060;
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(9[2:5])
    FD1S3IX cnt_235__i0 (.D(n105), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i0.GSR = "DISABLED";
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(9[2:5])
    IB clk_pad (.I(clk), .O(clk_c));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(8[2:5])
    IB mode_pad (.I(mode), .O(mode_c));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(7[2:6])
    ROM256X1A mux_15_Mux_1 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_239[1])) /* synthesis initstate=0x0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000 */ ;
    defparam mux_15_Mux_1.initval = 256'h0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000;
    LUT4 n1220_bdd_2_lut_3_lut_4_lut (.A(col_c_1), .B(col_c_2), .C(n1220), 
         .D(col_c_0), .Z(n1221)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam n1220_bdd_2_lut_3_lut_4_lut.init = 16'hf6f0;
    LUT4 tone_1__bdd_4_lut (.A(n1293), .B(tone[3]), .C(n1294), .D(n1292), 
         .Z(pitch[5])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;
    defparam tone_1__bdd_4_lut.init = 16'h3426;
    CCU2D equal_74_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[19]), .B1(cnt[18]), .C1(GND_net), .D1(GND_net), .COUT(n937));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(145[7:18])
    defparam equal_74_0.INIT0 = 16'hF000;
    defparam equal_74_0.INIT1 = 16'h1111;
    defparam equal_74_0.INJECT1_0 = "NO";
    defparam equal_74_0.INJECT1_1 = "YES";
    LUT4 i979_2_lut_rep_11 (.A(clk8hz), .B(n569), .Z(clk_c_enable_20)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(38[4] 45[11])
    defparam i979_2_lut_rep_11.init = 16'h4444;
    LUT4 i513_3_lut_4_lut (.A(n1292), .B(n1293), .C(n1294), .D(tone[3]), 
         .Z(pitch[13])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam i513_3_lut_4_lut.init = 16'h001e;
    FD1P3IX tone1_i0_i1 (.D(n1288), .SP(clk_c_enable_15), .CD(n568), .CK(clk_c), 
            .Q(tone1[1]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i1.GSR = "DISABLED";
    CCU2D cnt_235_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n948), .COUT(n949), .S0(n92), .S1(n91));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_15.INJECT1_0 = "NO";
    defparam cnt_235_add_4_15.INJECT1_1 = "NO";
    CCU2D equal_74_18 (.A0(cnt[7]), .B0(pitch[7]), .C0(cnt[6]), .D0(pitch[6]), 
          .A1(cnt[5]), .B1(pitch[5]), .C1(cnt[4]), .D1(pitch[4]), .CIN(n939), 
          .COUT(n940));
    defparam equal_74_18.INIT0 = 16'h9009;
    defparam equal_74_18.INIT1 = 16'h9009;
    defparam equal_74_18.INJECT1_0 = "YES";
    defparam equal_74_18.INJECT1_1 = "YES";
    CCU2D cnt_235_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n951), .S0(n86));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_21.INIT1 = 16'h0000;
    defparam cnt_235_add_4_21.INJECT1_0 = "NO";
    defparam cnt_235_add_4_21.INJECT1_1 = "NO";
    CCU2D equal_74_16 (.A0(cnt[11]), .B0(pitch[11]), .C0(cnt[10]), .D0(pitch[10]), 
          .A1(cnt[9]), .B1(pitch[9]), .C1(cnt[8]), .D1(pitch[8]), .CIN(n938), 
          .COUT(n939));
    defparam equal_74_16.INIT0 = 16'h9009;
    defparam equal_74_16.INIT1 = 16'h9009;
    defparam equal_74_16.INJECT1_0 = "YES";
    defparam equal_74_16.INJECT1_1 = "YES";
    CCU2D cnt_235_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n942), 
          .COUT(n943), .S0(n104), .S1(n103));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_3.INJECT1_0 = "NO";
    defparam cnt_235_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_235_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n947), .COUT(n948), .S0(n94), .S1(n93));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_13.INJECT1_0 = "NO";
    defparam cnt_235_add_4_13.INJECT1_1 = "NO";
    CCU2D equal_74_20 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n941), 
          .S0(cnt_19__N_55));
    defparam equal_74_20.INIT0 = 16'hFFFF;
    defparam equal_74_20.INIT1 = 16'h0000;
    defparam equal_74_20.INJECT1_0 = "NO";
    defparam equal_74_20.INJECT1_1 = "NO";
    CCU2D equal_74_14 (.A0(cnt[17]), .B0(cnt[16]), .C0(cnt[15]), .D0(cnt[14]), 
          .A1(cnt[13]), .B1(pitch[13]), .C1(cnt[12]), .D1(pitch[12]), 
          .CIN(n937), .COUT(n938));
    defparam equal_74_14.INIT0 = 16'h0001;
    defparam equal_74_14.INIT1 = 16'h9009;
    defparam equal_74_14.INJECT1_0 = "YES";
    defparam equal_74_14.INJECT1_1 = "YES";
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
    FD1P3IX tone1_i0_i3 (.D(n1295), .SP(clk_c_enable_15), .CD(n566), .CK(clk_c), 
            .Q(tone1[3]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i3.GSR = "DISABLED";
    FD1P3AX tone1_i0_i2 (.D(tone1_3__N_31[2]), .SP(clk_c_enable_15), .CK(clk_c), 
            .Q(tone1[2]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i2.GSR = "DISABLED";
    CCU2D cnt_235_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n950), .COUT(n951), .S0(n88), .S1(n87));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_19.INJECT1_0 = "NO";
    defparam cnt_235_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_235_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n946), 
          .COUT(n947), .S0(n96), .S1(n95));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_11.INJECT1_0 = "NO";
    defparam cnt_235_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_235_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n945), 
          .COUT(n946), .S0(n98), .S1(n97));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_9.INJECT1_0 = "NO";
    defparam cnt_235_add_4_9.INJECT1_1 = "NO";
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_then_4_lut (.A(tone[3]), .B(n1294), 
         .C(tone1[0]), .D(n1293), .Z(n1298)) /* synthesis lut_function=(!(A (B+(C (D)))+!A !(B (C+(D))))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_12_i15_4_lut_then_4_lut.init = 16'h4662;
    LUT4 i1_4_lut (.A(mode_num), .B(n1285), .C(n8), .D(n651), .Z(n568)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut.init = 16'h2000;
    CCU2D cnt_235_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n949), .COUT(n950), .S0(n90), .S1(n89));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_17.INJECT1_0 = "NO";
    defparam cnt_235_add_4_17.INJECT1_1 = "NO";
    CCU2D equal_74_20_758 (.A0(cnt[3]), .B0(pitch[3]), .C0(cnt[2]), .D0(pitch[2]), 
          .A1(cnt[1]), .B1(pitch[1]), .C1(cnt[0]), .D1(pitch[0]), .CIN(n940), 
          .COUT(n941));
    defparam equal_74_20_758.INIT0 = 16'h9009;
    defparam equal_74_20_758.INIT1 = 16'h9009;
    defparam equal_74_20_758.INJECT1_0 = "YES";
    defparam equal_74_20_758.INJECT1_1 = "YES";
    CCU2D cnt_235_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n944), 
          .COUT(n945), .S0(n100), .S1(n99));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_7.INJECT1_0 = "NO";
    defparam cnt_235_add_4_7.INJECT1_1 = "NO";
    LUT4 tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(n1284), .B(n7), .C(tone[3]), 
         .D(n1292), .Z(pitch[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 i3_3_lut (.A(n985), .B(clk40hz), .C(col_c_3), .Z(n8)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i3_3_lut.init = 16'h0202;
    IB switch_pad (.I(switch), .O(switch_c));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(6[2:8])
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_else_4_lut (.A(tone2[0]), .B(tone[3]), 
         .C(n1294), .D(n1293), .Z(n1297)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C (D))))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_12_i15_4_lut_else_4_lut.init = 16'h342c;
    LUT4 i2_3_lut_4_lut (.A(n1293), .B(n1294), .C(n1292), .D(tone[3]), 
         .Z(pitch[0])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam i2_3_lut_4_lut.init = 16'h0070;
    LUT4 tmp_I_0_1_lut (.A(tmp), .Z(tmp_N_62)) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(81[7:14])
    defparam tmp_I_0_1_lut.init = 16'h5555;
    CCU2D cnt_235_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n943), 
          .COUT(n944), .S0(n102), .S1(n101));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_235_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_235_add_4_5.INJECT1_0 = "NO";
    defparam cnt_235_add_4_5.INJECT1_1 = "NO";
    LUT4 tone_1__bdd_4_lut_1008 (.A(n1293), .B(tone[3]), .C(n1292), .D(n1294), 
         .Z(pitch[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam tone_1__bdd_4_lut_1008.init = 16'h316a;
    FD1P3IX tone1_i0_i0 (.D(n1111), .SP(clk_c_enable_15), .CD(n568), .CK(clk_c), 
            .Q(tone1[0]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(98[3] 116[10])
    defparam tone1_i0_i0.GSR = "DISABLED";
    LUT4 i488_2_lut_3_lut (.A(n1292), .B(n1293), .C(n1294), .Z(n14)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam i488_2_lut_3_lut.init = 16'h0606;
    LUT4 i966_2_lut_rep_13_2_lut_4_lut (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .D(n1294), .Z(n1284)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[3] 125[10])
    defparam i966_2_lut_rep_13_2_lut_4_lut.init = 16'h0035;
    LUT4 n4_bdd_4_lut_996 (.A(n4), .B(tone1[3]), .C(n1295), .D(tone1[2]), 
         .Z(n1220)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam n4_bdd_4_lut_996.init = 16'h2142;
    LUT4 i482_4_lut_then_4_lut (.A(n1292), .B(tone1[1]), .C(tone[3]), 
         .D(n1294), .Z(n1301)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam i482_4_lut_then_4_lut.init = 16'h0820;
    FD1S3IX cnt_235__i19 (.D(n86), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i19.GSR = "DISABLED";
    LUT4 i482_4_lut_else_4_lut (.A(n1292), .B(tone2[1]), .C(tone[3]), 
         .D(n1294), .Z(n1300)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam i482_4_lut_else_4_lut.init = 16'h0820;
    LUT4 i387_2_lut (.A(clk_c_enable_15), .B(col_c_3), .Z(n566)) /* synthesis lut_function=(A (B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(98[3] 116[10])
    defparam i387_2_lut.init = 16'h8888;
    LUT4 tone_0__bdd_4_lut (.A(n1292), .B(n1293), .C(n1294), .D(tone[3]), 
         .Z(pitch[6])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam tone_0__bdd_4_lut.init = 16'h0726;
    LUT4 i318_4_lut (.A(n1295), .B(n1296), .C(col_c_3), .D(col_c_0), 
         .Z(tone1_3__N_31[2])) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(C)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(100[5] 114[14])
    defparam i318_4_lut.init = 16'h85a5;
    FD1S3IX cnt_235__i18 (.D(n87), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i18.GSR = "DISABLED";
    FD1S3IX cnt_235__i17 (.D(n88), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i17.GSR = "DISABLED";
    FD1S3IX cnt_235__i16 (.D(n89), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i16.GSR = "DISABLED";
    FD1S3IX cnt_235__i15 (.D(n90), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i15.GSR = "DISABLED";
    OB row_pad_0 (.I(n1295), .O(row[0]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(10[2:5])
    LUT4 clk_music_I_0_2_lut (.A(clk_music), .B(cnt_19__N_55), .Z(clk_music_N_56)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(145[4] 150[11])
    defparam clk_music_I_0_2_lut.init = 16'h6666;
    LUT4 col_c_0_bdd_4_lut (.A(col_c_0), .B(col_c_3), .C(col_c_1), .D(col_c_2), 
         .Z(n651)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam col_c_0_bdd_4_lut.init = 16'he880;
    LUT4 i267_2_lut (.A(tone1[0]), .B(tone1[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i267_2_lut.init = 16'heeee;
    LUT4 i1_3_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), .Z(n1111)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(100[5] 114[14])
    defparam i1_3_lut.init = 16'h5d5d;
    LUT4 tone1_3__I_0_71_i4_3_lut (.A(tone2[3]), .B(tone1[3]), .C(mode_num), 
         .Z(tone[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i4_3_lut.init = 16'hcaca;
    LUT4 tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut (.A(n1284), .B(n14), .C(tone[3]), 
         .D(n1292), .Z(pitch[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 tone_1__bdd_4_lut_1010 (.A(n1293), .B(tone[3]), .C(n1294), .D(n1292), 
         .Z(pitch[11])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(D)))) */ ;
    defparam tone_1__bdd_4_lut_1010.init = 16'h1120;
    FD1S3IX cnt_235__i14 (.D(n91), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i14.GSR = "DISABLED";
    FD1S3IX cnt_235__i13 (.D(n92), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i13.GSR = "DISABLED";
    FD1S3IX cnt_235__i12 (.D(n93), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i12.GSR = "DISABLED";
    FD1S3IX cnt_235__i11 (.D(n94), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i11.GSR = "DISABLED";
    FD1S3IX cnt_235__i10 (.D(n95), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i10.GSR = "DISABLED";
    FD1S3IX cnt_235__i9 (.D(n96), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i9.GSR = "DISABLED";
    LUT4 tone1_3__I_0_71_i3_3_lut_rep_23 (.A(tone2[2]), .B(tone1[2]), .C(mode_num), 
         .Z(n1294)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i3_3_lut_rep_23.init = 16'hcaca;
    FD1S3IX cnt_235__i8 (.D(n97), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i8.GSR = "DISABLED";
    FD1S3IX cnt_235__i7 (.D(n98), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i7.GSR = "DISABLED";
    FD1S3IX cnt_235__i6 (.D(n99), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i6.GSR = "DISABLED";
    FD1S3IX cnt_235__i5 (.D(n100), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i5.GSR = "DISABLED";
    FD1S3IX cnt_235__i4 (.D(n101), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i4.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut (.A(n1284), .B(n7_adj_264), 
         .C(tone[3]), .D(n1292), .Z(pitch[10])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    FD1S3IX cnt_235__i3 (.D(n102), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i3.GSR = "DISABLED";
    FD1S3IX cnt_235__i2 (.D(n103), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i2.GSR = "DISABLED";
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(10[2:5])
    OB row_pad_2 (.I(VCC_net), .O(row[2]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(10[2:5])
    OB row_pad_3 (.I(VCC_net), .O(row[3]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(10[2:5])
    FD1S3AX music_num_63 (.D(music_num_N_58), .CK(switch_N_60), .Q(music_num));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(68[3] 74[10])
    defparam music_num_63.GSR = "DISABLED";
    FD1S3IX cnt_235__i1 (.D(n104), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(149[12:15])
    defparam cnt_235__i1.GSR = "DISABLED";
    GSR GSR_INST (.GSR(tone2_3__N_199));
    LUT4 tone_3__bdd_4_lut (.A(tone[3]), .B(n1293), .C(n1294), .D(n1292), 
         .Z(pitch[2])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam tone_3__bdd_4_lut.init = 16'h1418;
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(9[2:5])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(9[2:5])
    LUT4 mode_num_I_0_1_lut_rep_20 (.A(mode_num), .Z(n1291)) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[6:20])
    defparam mode_num_I_0_1_lut_rep_20.init = 16'h5555;
    LUT4 i971_4_lut_4_lut (.A(mode_num), .B(n6), .C(n651), .D(n1283), 
         .Z(clk_c_enable_15)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[6:20])
    defparam i971_4_lut_4_lut.init = 16'h2000;
    LUT4 tone_2__bdd_4_lut (.A(n1294), .B(tone[3]), .C(n1292), .D(n1293), 
         .Z(pitch[1])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam tone_2__bdd_4_lut.init = 16'h2242;
    LUT4 tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut (.A(n1292), .B(n1293), .C(n1294), 
         .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 tone1_3__I_0_71_i1_3_lut_rep_21 (.A(tone2[0]), .B(tone1[0]), .C(mode_num), 
         .Z(n1292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i1_3_lut_rep_21.init = 16'hcaca;
    LUT4 tone_3__I_0_Mux_10_i7_3_lut_3_lut (.A(n1292), .B(n1293), .C(n1294), 
         .Z(n7_adj_264)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(126[3] 139[12])
    defparam tone_3__I_0_Mux_10_i7_3_lut_3_lut.init = 16'ha6a6;
    LUT4 i989_2_lut_3_lut (.A(clk8hz), .B(n569), .C(n1205), .Z(n575)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(38[4] 45[11])
    defparam i989_2_lut_3_lut.init = 16'h4040;
    INV i1042 (.A(mode_c), .Z(mode_N_30));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(7[2:6])
    LUT4 tone1_3__I_0_71_i2_3_lut_rep_22 (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .Z(n1293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(121[3] 125[10])
    defparam tone1_3__I_0_71_i2_3_lut_rep_22.init = 16'hcaca;
    freqdivider U1 (.clk40hz(clk40hz), .clk_c(clk_c), .clk8hz(clk8hz), 
            .GND_net(GND_net), .n569(n569), .n1285(n1285), .n985(n985), 
            .n1283(n1283));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(46[5:16])
    LUT4 i1_4_lut_adj_9 (.A(clk40hz), .B(n1221), .C(col_c_0), .D(col_c_3), 
         .Z(n6)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_9.init = 16'hbaaa;
    INV i1041 (.A(switch_c), .Z(switch_N_60));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(6[2:8])
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i1013 (.BLUT(n1300), .ALUT(n1301), .C0(mode_num), .Z(pitch[4]));
    PFUMX i1011 (.BLUT(n1297), .ALUT(n1298), .C0(mode_num), .Z(pitch[12]));
    song U2 (.clk_c_enable_20(clk_c_enable_20), .ptr1({ptr1}), .tone2({tone2}), 
         .tone2_3__N_199(tone2_3__N_199), .music_num(music_num), .ptr2({ptr2}), 
         .GND_net(GND_net), .clk_c(clk_c), .n575(n575), .n1205(n1205), 
         .music_num_N_58(music_num_N_58), .tone2_3__N_239({tone2_3__N_239}), 
         .\tone2_3__N_235[1] (tone2_3__N_235[1]), .\tone2_3__N_235[2] (tone2_3__N_235[2]), 
         .\tone2_3__N_235[0] (tone2_3__N_235[0]));   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(50[5:9])
    
endmodule
//
// Verilog Description of module freqdivider
//

module freqdivider (clk40hz, clk_c, clk8hz, GND_net, n569, n1285, 
            n985, n1283);
    output clk40hz;
    input clk_c;
    output clk8hz;
    input GND_net;
    output n569;
    output n1285;
    output n985;
    output n1283;
    
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(20[9:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(8[2:5])
    
    wire clk40hz_N_194, clk8hz_N_193, n975;
    wire [31:0]cnt8;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(17[12:16])
    wire [19:0]n1;
    
    wire n976, n974, n18, n973, n972, n953;
    wire [31:0]cnt40;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(31[12:17])
    wire [17:0]n77;
    
    wire n954, n959, n960, n952, n958, n957, n969, n970, n971, 
        n978, n956, n955, n1174, n977, n17, n16, n14, n10, 
        n1128, n6, n16_adj_263, n20, n1178;
    
    FD1S3AX clk40hz_28 (.D(clk40hz_N_194), .CK(clk_c), .Q(clk40hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(33[3] 40[10])
    defparam clk40hz_28.GSR = "DISABLED";
    FD1S3AX clk8hz_26 (.D(clk8hz_N_193), .CK(clk_c), .Q(clk8hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=46, LSE_RLINE=46 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(19[3] 26[10])
    defparam clk8hz_26.GSR = "DISABLED";
    CCU2D cnt8_236_237_add_4_15 (.A0(cnt8[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n975), .COUT(n976), .S0(n1[13]), .S1(n1[14]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_15.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt8_236_237_add_4_13 (.A0(cnt8[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n974), .COUT(n975), .S0(n1[11]), .S1(n1[12]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_13.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_13.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(cnt8[6]), .B(cnt8[9]), .C(cnt8[0]), .D(cnt8[1]), 
         .Z(n18)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(20[7:20])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D cnt8_236_237_add_4_11 (.A0(cnt8[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n973), .COUT(n974), .S0(n1[9]), .S1(n1[10]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_11.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt8_236_237_add_4_9 (.A0(cnt8[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n972), .COUT(n973), .S0(n1[7]), .S1(n1[8]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_9.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_5 (.A0(cnt40[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n953), .COUT(n954), .S0(n77[3]), .S1(n77[4]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_5.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_17 (.A0(cnt40[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n959), .COUT(n960), .S0(n77[15]), .S1(n77[16]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_17.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_3 (.A0(cnt40[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n952), .COUT(n953), .S0(n77[1]), .S1(n77[2]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_3.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_15 (.A0(cnt40[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n958), .COUT(n959), .S0(n77[13]), .S1(n77[14]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_15.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n952), .S1(n77[0]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_1.INIT0 = 16'hF000;
    defparam cnt40_238_239_add_4_1.INIT1 = 16'h0555;
    defparam cnt40_238_239_add_4_1.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_13 (.A0(cnt40[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n957), .COUT(n958), .S0(n77[11]), .S1(n77[12]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_13.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt8_236_237_add_4_3 (.A0(cnt8[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n969), .COUT(n970), .S0(n1[1]), .S1(n1[2]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_3.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt8_236_237_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n969), .S1(n1[0]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_1.INIT0 = 16'hF000;
    defparam cnt8_236_237_add_4_1.INIT1 = 16'h0555;
    defparam cnt8_236_237_add_4_1.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_1.INJECT1_1 = "NO";
    FD1S3IX cnt8_236_237__i20 (.D(n1[19]), .CK(clk_c), .CD(n569), .Q(cnt8[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i20.GSR = "DISABLED";
    CCU2D cnt8_236_237_add_4_7 (.A0(cnt8[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n971), .COUT(n972), .S0(n1[5]), .S1(n1[6]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_7.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt8_236_237_add_4_21 (.A0(cnt8[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n978), .S0(n1[19]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_21.INIT1 = 16'h0000;
    defparam cnt8_236_237_add_4_21.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_11 (.A0(cnt40[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n956), .COUT(n957), .S0(n77[9]), .S1(n77[10]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_11.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_11.INJECT1_1 = "NO";
    FD1S3IX cnt8_236_237__i19 (.D(n1[18]), .CK(clk_c), .CD(n569), .Q(cnt8[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i19.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i18 (.D(n1[17]), .CK(clk_c), .CD(n569), .Q(cnt8[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i18.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i17 (.D(n1[16]), .CK(clk_c), .CD(n569), .Q(cnt8[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i17.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i16 (.D(n1[15]), .CK(clk_c), .CD(n569), .Q(cnt8[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i16.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i15 (.D(n1[14]), .CK(clk_c), .CD(n569), .Q(cnt8[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i15.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i14 (.D(n1[13]), .CK(clk_c), .CD(n569), .Q(cnt8[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i14.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i13 (.D(n1[12]), .CK(clk_c), .CD(n569), .Q(cnt8[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i13.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i12 (.D(n1[11]), .CK(clk_c), .CD(n569), .Q(cnt8[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i12.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i11 (.D(n1[10]), .CK(clk_c), .CD(n569), .Q(cnt8[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i11.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i10 (.D(n1[9]), .CK(clk_c), .CD(n569), .Q(cnt8[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i10.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i9 (.D(n1[8]), .CK(clk_c), .CD(n569), .Q(cnt8[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i9.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i8 (.D(n1[7]), .CK(clk_c), .CD(n569), .Q(cnt8[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i8.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i7 (.D(n1[6]), .CK(clk_c), .CD(n569), .Q(cnt8[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i7.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i6 (.D(n1[5]), .CK(clk_c), .CD(n569), .Q(cnt8[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i6.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i5 (.D(n1[4]), .CK(clk_c), .CD(n569), .Q(cnt8[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i5.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i4 (.D(n1[3]), .CK(clk_c), .CD(n569), .Q(cnt8[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i4.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i3 (.D(n1[2]), .CK(clk_c), .CD(n569), .Q(cnt8[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i3.GSR = "DISABLED";
    FD1S3IX cnt8_236_237__i2 (.D(n1[1]), .CK(clk_c), .CD(n569), .Q(cnt8[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i2.GSR = "DISABLED";
    CCU2D cnt40_238_239_add_4_19 (.A0(cnt40[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n960), .S0(n77[17]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_19.INIT1 = 16'h0000;
    defparam cnt40_238_239_add_4_19.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt40_238_239_add_4_9 (.A0(cnt40[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n955), .COUT(n956), .S0(n77[7]), .S1(n77[8]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_9.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt8_236_237__i1 (.D(n1[0]), .CK(clk_c), .CD(n569), .Q(cnt8[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237__i1.GSR = "DISABLED";
    LUT4 i954_4_lut (.A(cnt8[7]), .B(cnt8[17]), .C(cnt8[14]), .D(cnt8[5]), 
         .Z(n1174)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i954_4_lut.init = 16'h8000;
    CCU2D cnt8_236_237_add_4_19 (.A0(cnt8[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n977), .COUT(n978), .S0(n1[17]), .S1(n1[18]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_19.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_19.INJECT1_1 = "NO";
    LUT4 i987_2_lut_rep_12_2_lut (.A(n1285), .B(n985), .Z(n1283)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(34[7:21])
    defparam i987_2_lut_rep_12_2_lut.init = 16'h4444;
    CCU2D cnt8_236_237_add_4_5 (.A0(cnt8[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n970), .COUT(n971), .S0(n1[3]), .S1(n1[4]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_5.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt40_238_239__i18 (.D(n77[17]), .CK(clk_c), .CD(n1283), .Q(cnt40[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i18.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i17 (.D(n77[16]), .CK(clk_c), .CD(n1283), .Q(cnt40[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i17.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i16 (.D(n77[15]), .CK(clk_c), .CD(n1283), .Q(cnt40[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i16.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i15 (.D(n77[14]), .CK(clk_c), .CD(n1283), .Q(cnt40[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i15.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i14 (.D(n77[13]), .CK(clk_c), .CD(n1283), .Q(cnt40[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i14.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i13 (.D(n77[12]), .CK(clk_c), .CD(n1283), .Q(cnt40[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i13.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i12 (.D(n77[11]), .CK(clk_c), .CD(n1283), .Q(cnt40[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i12.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i11 (.D(n77[10]), .CK(clk_c), .CD(n1283), .Q(cnt40[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i11.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i10 (.D(n77[9]), .CK(clk_c), .CD(n1283), .Q(cnt40[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i10.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i9 (.D(n77[8]), .CK(clk_c), .CD(n1283), .Q(cnt40[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i9.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i8 (.D(n77[7]), .CK(clk_c), .CD(n1283), .Q(cnt40[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i8.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i7 (.D(n77[6]), .CK(clk_c), .CD(n1283), .Q(cnt40[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i7.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i6 (.D(n77[5]), .CK(clk_c), .CD(n1283), .Q(cnt40[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i6.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i5 (.D(n77[4]), .CK(clk_c), .CD(n1283), .Q(cnt40[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i5.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i4 (.D(n77[3]), .CK(clk_c), .CD(n1283), .Q(cnt40[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i4.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i3 (.D(n77[2]), .CK(clk_c), .CD(n1283), .Q(cnt40[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i3.GSR = "DISABLED";
    FD1S3IX cnt40_238_239__i2 (.D(n77[1]), .CK(clk_c), .CD(n1283), .Q(cnt40[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i2.GSR = "DISABLED";
    CCU2D cnt8_236_237_add_4_17 (.A0(cnt8[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n976), .COUT(n977), .S0(n1[15]), .S1(n1[16]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(24[13:17])
    defparam cnt8_236_237_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt8_236_237_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt8_236_237_add_4_17.INJECT1_0 = "NO";
    defparam cnt8_236_237_add_4_17.INJECT1_1 = "NO";
    LUT4 i7_4_lut_adj_5 (.A(cnt40[0]), .B(cnt40[13]), .C(cnt40[16]), .D(cnt40[1]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(34[7:21])
    defparam i7_4_lut_adj_5.init = 16'hfffe;
    LUT4 i9_4_lut_rep_14 (.A(n17), .B(cnt40[9]), .C(n16), .D(cnt40[10]), 
         .Z(n1285)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(34[7:21])
    defparam i9_4_lut_rep_14.init = 16'hfffe;
    LUT4 i6_4_lut (.A(cnt40[3]), .B(cnt40[15]), .C(cnt40[12]), .D(cnt40[2]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(34[7:21])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i7_4_lut_adj_6 (.A(cnt40[4]), .B(n14), .C(n10), .D(cnt40[14]), 
         .Z(n985)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_6.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_3_lut (.A(n1285), .B(clk40hz), .C(n985), .Z(clk40hz_N_194)) /* synthesis lut_function=(A (B)+!A !(B (C)+!B !(C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(34[7:21])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h9c9c;
    LUT4 i6_4_lut_adj_7 (.A(cnt40[8]), .B(cnt40[5]), .C(cnt40[7]), .D(cnt40[17]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_7.init = 16'h8000;
    CCU2D cnt40_238_239_add_4_7 (.A0(cnt40[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n954), .COUT(n955), .S0(n77[5]), .S1(n77[6]));   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt40_238_239_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt40_238_239_add_4_7.INJECT1_0 = "NO";
    defparam cnt40_238_239_add_4_7.INJECT1_1 = "NO";
    LUT4 i2_2_lut (.A(cnt40[6]), .B(cnt40[11]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i1_2_lut (.A(clk8hz), .B(n569), .Z(clk8hz_N_193)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i983_4_lut (.A(n1128), .B(cnt8[16]), .C(n6), .D(cnt8[8]), .Z(n569)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(20[7:20])
    defparam i983_4_lut.init = 16'h4000;
    FD1S3IX cnt40_238_239__i1 (.D(n77[0]), .CK(clk_c), .CD(n1283), .Q(cnt40[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(38[14:19])
    defparam cnt40_238_239__i1.GSR = "DISABLED";
    LUT4 i5_2_lut (.A(cnt8[2]), .B(cnt8[11]), .Z(n16_adj_263)) /* synthesis lut_function=(A+(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(20[7:20])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i10_4_lut (.A(cnt8[10]), .B(n20), .C(n16_adj_263), .D(cnt8[15]), 
         .Z(n1128)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(20[7:20])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_8 (.A(cnt8[13]), .B(cnt8[4]), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_8.init = 16'h8888;
    LUT4 i9_4_lut (.A(n1178), .B(n18), .C(cnt8[18]), .D(cnt8[3]), .Z(n20)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/sjtu/learning/vhdl/final/lab5/freq_div.vhd(20[7:20])
    defparam i9_4_lut.init = 16'hfffd;
    LUT4 i958_3_lut (.A(cnt8[19]), .B(n1174), .C(cnt8[12]), .Z(n1178)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i958_3_lut.init = 16'h8080;
    
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

module song (clk_c_enable_20, ptr1, tone2, tone2_3__N_199, music_num, 
            ptr2, GND_net, clk_c, n575, n1205, music_num_N_58, tone2_3__N_239, 
            \tone2_3__N_235[1] , \tone2_3__N_235[2] , \tone2_3__N_235[0] );
    input clk_c_enable_20;
    output [7:0]ptr1;
    output [3:0]tone2;
    output tone2_3__N_199;
    input music_num;
    output [7:0]ptr2;
    input GND_net;
    input clk_c;
    input n575;
    output n1205;
    output music_num_N_58;
    input [2:0]tone2_3__N_239;
    input \tone2_3__N_235[1] ;
    input \tone2_3__N_235[2] ;
    input \tone2_3__N_235[0] ;
    
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(8[2:7])
    wire mn_former_derived_1 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/mn_former_derived_1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(16[9:18])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(8[2:5])
    
    wire n1154, n1172, n572;
    wire [3:0]tone2_3__N_195;
    
    wire mn_former, n6, n1029, n511, n1281;
    wire [7:0]n37;
    
    wire n965;
    wire [7:0]n37_adj_252;
    
    wire n964, n963, n962, n961, n968, n967, n966, n11, n1290, 
        n1134;
    
    LUT4 i974_4_lut (.A(clk_c_enable_20), .B(ptr1[4]), .C(n1154), .D(n1172), 
         .Z(n572)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i974_4_lut.init = 16'h2000;
    FD1S1A tone2_3__I_0_i1 (.D(tone2_3__N_195[0]), .CK(tone2_3__N_199), 
           .Q(tone2[0])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i1.GSR = "DISABLED";
    FD1S1A music_num_I_0 (.D(music_num), .CK(mn_former_derived_1), .Q(mn_former)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(31[2] 53[14])
    defparam music_num_I_0.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(ptr2[0]), .B(n6), .C(ptr2[2]), .D(ptr2[1]), .Z(n1029)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0408;
    FD1S1A tone2_3__I_0_i2 (.D(tone2_3__N_195[1]), .CK(tone2_3__N_199), 
           .Q(tone2[1])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i2.GSR = "DISABLED";
    FD1S1A tone2_3__I_0_i3 (.D(tone2_3__N_195[2]), .CK(tone2_3__N_199), 
           .Q(tone2[2])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i3.GSR = "DISABLED";
    FD1S1I tone2_3__I_0_i4 (.D(n1281), .CK(tone2_3__N_199), .CD(n511), 
           .Q(tone2[3])) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=9, LSE_LLINE=50, LSE_RLINE=50 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(31[2] 53[14])
    defparam tone2_3__I_0_i4.GSR = "DISABLED";
    CCU2D ptr2_241_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n965), .S1(n37[0]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241_add_4_1.INIT0 = 16'hF000;
    defparam ptr2_241_add_4_1.INIT1 = 16'h0555;
    defparam ptr2_241_add_4_1.INJECT1_0 = "NO";
    defparam ptr2_241_add_4_1.INJECT1_1 = "NO";
    FD1P3IX ptr1_240__i6 (.D(n37_adj_252[6]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i6.GSR = "ENABLED";
    CCU2D ptr1_240_add_4_9 (.A0(ptr1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n964), .S0(n37_adj_252[7]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr1_240_add_4_9.INIT1 = 16'h0000;
    defparam ptr1_240_add_4_9.INJECT1_0 = "NO";
    defparam ptr1_240_add_4_9.INJECT1_1 = "NO";
    FD1P3IX ptr1_240__i0 (.D(n37_adj_252[0]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i0.GSR = "ENABLED";
    CCU2D ptr1_240_add_4_7 (.A0(ptr1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n963), .COUT(n964), .S0(n37_adj_252[5]), .S1(n37_adj_252[6]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr1_240_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr1_240_add_4_7.INJECT1_0 = "NO";
    defparam ptr1_240_add_4_7.INJECT1_1 = "NO";
    CCU2D ptr1_240_add_4_5 (.A0(ptr1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n962), .COUT(n963), .S0(n37_adj_252[3]), .S1(n37_adj_252[4]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr1_240_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr1_240_add_4_5.INJECT1_0 = "NO";
    defparam ptr1_240_add_4_5.INJECT1_1 = "NO";
    CCU2D ptr1_240_add_4_3 (.A0(ptr1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n961), .COUT(n962), .S0(n37_adj_252[1]), .S1(n37_adj_252[2]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr1_240_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr1_240_add_4_3.INJECT1_0 = "NO";
    defparam ptr1_240_add_4_3.INJECT1_1 = "NO";
    FD1P3IX ptr1_240__i7 (.D(n37_adj_252[7]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i7.GSR = "ENABLED";
    FD1P3IX ptr2_241__i1 (.D(n37[1]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i1.GSR = "ENABLED";
    FD1P3IX ptr2_241__i2 (.D(n37[2]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i2.GSR = "ENABLED";
    FD1P3IX ptr2_241__i3 (.D(n37[3]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i3.GSR = "ENABLED";
    CCU2D ptr2_241_add_4_9 (.A0(ptr2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n968), .S0(n37[7]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr2_241_add_4_9.INIT1 = 16'h0000;
    defparam ptr2_241_add_4_9.INJECT1_0 = "NO";
    defparam ptr2_241_add_4_9.INJECT1_1 = "NO";
    CCU2D ptr1_240_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n961), .S1(n37_adj_252[0]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240_add_4_1.INIT0 = 16'hF000;
    defparam ptr1_240_add_4_1.INIT1 = 16'h0555;
    defparam ptr1_240_add_4_1.INJECT1_0 = "NO";
    defparam ptr1_240_add_4_1.INJECT1_1 = "NO";
    FD1P3IX ptr2_241__i4 (.D(n37[4]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i4.GSR = "ENABLED";
    CCU2D ptr2_241_add_4_7 (.A0(ptr2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n967), .COUT(n968), .S0(n37[5]), .S1(n37[6]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr2_241_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr2_241_add_4_7.INJECT1_0 = "NO";
    defparam ptr2_241_add_4_7.INJECT1_1 = "NO";
    FD1P3IX ptr2_241__i5 (.D(n37[5]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i5.GSR = "ENABLED";
    FD1P3IX ptr2_241__i6 (.D(n37[6]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i6.GSR = "ENABLED";
    FD1P3IX ptr2_241__i7 (.D(n37[7]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i7.GSR = "ENABLED";
    CCU2D ptr2_241_add_4_5 (.A0(ptr2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n966), .COUT(n967), .S0(n37[3]), .S1(n37[4]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr2_241_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr2_241_add_4_5.INJECT1_0 = "NO";
    defparam ptr2_241_add_4_5.INJECT1_1 = "NO";
    CCU2D ptr2_241_add_4_3 (.A0(ptr2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n965), .COUT(n966), .S0(n37[1]), .S1(n37[2]));   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr2_241_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr2_241_add_4_3.INJECT1_0 = "NO";
    defparam ptr2_241_add_4_3.INJECT1_1 = "NO";
    FD1P3IX ptr2_241__i0 (.D(n37[0]), .SP(clk_c_enable_20), .CD(n575), 
            .CK(clk_c), .Q(ptr2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(43[18:22])
    defparam ptr2_241__i0.GSR = "ENABLED";
    LUT4 i988_4_lut (.A(n11), .B(ptr2[4]), .C(n1290), .D(ptr2[1]), .Z(n1205)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i988_4_lut.init = 16'h0040;
    LUT4 i4_4_lut (.A(ptr2[0]), .B(ptr2[6]), .C(ptr2[7]), .D(ptr2[3]), 
         .Z(n11)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut.init = 16'hffdf;
    LUT4 mn_former_I_3_2_lut_rep_18 (.A(mn_former), .B(music_num), .Z(mn_former_derived_1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(33[6:28])
    defparam mn_former_I_3_2_lut_rep_18.init = 16'h6666;
    LUT4 n1029_bdd_4_lut (.A(n1029), .B(n1134), .C(ptr2[6]), .D(ptr2[4]), 
         .Z(n1281)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n1029_bdd_4_lut.init = 16'h00ca;
    LUT4 tone2_3__I_2_1_lut_2_lut (.A(mn_former), .B(music_num), .Z(tone2_3__N_199)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(33[6:28])
    defparam tone2_3__I_2_1_lut_2_lut.init = 16'h9999;
    LUT4 music_num_I_0_1_lut (.A(music_num), .Z(music_num_N_58)) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/lab5.vhd(69[4] 73[11])
    defparam music_num_I_0_1_lut.init = 16'h5555;
    LUT4 i2_2_lut (.A(ptr2[5]), .B(ptr2[3]), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    LUT4 i934_3_lut (.A(ptr1[3]), .B(ptr1[7]), .C(ptr1[1]), .Z(n1154)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i934_3_lut.init = 16'h8080;
    FD1P3IX ptr1_240__i1 (.D(n37_adj_252[1]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i1.GSR = "ENABLED";
    LUT4 tone2_3__I_4_i2_3_lut (.A(tone2_3__N_239[1]), .B(\tone2_3__N_235[1] ), 
         .C(music_num), .Z(tone2_3__N_195[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i2_3_lut.init = 16'hcaca;
    LUT4 i946_2_lut_rep_19 (.A(ptr2[5]), .B(ptr2[2]), .Z(n1290)) /* synthesis lut_function=(A (B)) */ ;
    defparam i946_2_lut_rep_19.init = 16'h8888;
    FD1P3IX ptr1_240__i2 (.D(n37_adj_252[2]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i2.GSR = "ENABLED";
    FD1P3IX ptr1_240__i3 (.D(n37_adj_252[3]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i3.GSR = "ENABLED";
    LUT4 i2_3_lut_4_lut (.A(ptr2[5]), .B(ptr2[2]), .C(ptr2[3]), .D(ptr2[1]), 
         .Z(n1134)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0008;
    LUT4 tone2_3__I_4_i3_3_lut (.A(tone2_3__N_239[2]), .B(\tone2_3__N_235[2] ), 
         .C(music_num), .Z(tone2_3__N_195[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i3_3_lut.init = 16'hcaca;
    FD1P3IX ptr1_240__i4 (.D(n37_adj_252[4]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i4.GSR = "ENABLED";
    FD1P3IX ptr1_240__i5 (.D(n37_adj_252[5]), .SP(clk_c_enable_20), .CD(n572), 
            .CK(clk_c), .Q(ptr1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(40[18:22])
    defparam ptr1_240__i5.GSR = "ENABLED";
    LUT4 i333_2_lut (.A(ptr2[7]), .B(music_num), .Z(n511)) /* synthesis lut_function=(A+!(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(46[4] 51[13])
    defparam i333_2_lut.init = 16'hbbbb;
    LUT4 tone2_3__I_4_i1_3_lut (.A(tone2_3__N_239[0]), .B(\tone2_3__N_235[0] ), 
         .C(music_num), .Z(tone2_3__N_195[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab5/songs.vhd(46[4] 51[13])
    defparam tone2_3__I_4_i1_3_lut.init = 16'hcaca;
    LUT4 i952_4_lut (.A(ptr1[0]), .B(ptr1[6]), .C(ptr1[5]), .D(ptr1[2]), 
         .Z(n1172)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i952_4_lut.init = 16'h8000;
    
endmodule
