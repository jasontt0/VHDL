// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Dec 11 18:19:55 2024
//
// Verilog Description of module piano
//

module piano (switch, mode, clk, col, row, beep);   // e:/desktop/vhdl_exp/exp5/exp5.vhd(6[8:13])
    input switch;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(8[3:9])
    input mode;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(9[3:7])
    input clk;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(10[3:6])
    input [3:0]col;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(11[3:6])
    output [3:0]row;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(12[3:6])
    output beep;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(13[3:7])
    
    wire switch_c /* synthesis is_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(8[3:9])
    wire mode_c /* synthesis is_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(9[3:7])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(10[3:6])
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(23[9:16])
    wire mode_N_30 /* synthesis is_inv_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(20[9:17])
    wire switch_N_34 /* synthesis is_inv_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(26[9:18])
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(9[3:8])
    
    wire GND_net, VCC_net, col_c_3, col_c_2, col_c_1, col_c_0, row_c_1, 
        beep_c, clk_music, mode_num;
    wire [19:0]cnt;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(21[9:12])
    wire [23:0]pitch;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(22[9:14])
    
    wire clk8hz;
    wire [3:0]tone1;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(25[9:14])
    wire [3:0]tone2;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(25[16:21])
    wire [3:0]tone;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(25[23:27])
    wire [1:0]music_num;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(26[9:18])
    wire [1:0]music_num_1__N_31;
    
    wire tmp, tmp_N_62, n1024, n1023, n1022;
    wire [3:0]tone1_3__N_35;
    
    wire cnt_19__N_59, n567, n574, clk_music_N_60, n1021, n1260, 
        n105, n104, n103, n102, n101, n100, n99, n98, n97, 
        n96, n95, n94, n1020, n1019, n1018, n1017, n1016, n1015, 
        n93, n92, n91, n90, n89, n88, n87, n86;
    wire [7:0]ptr1;   // e:/desktop/vhdl_exp/exp5/songs.vhd(16[9:13])
    wire [7:0]ptr2;   // e:/desktop/vhdl_exp/exp5/songs.vhd(17[9:13])
    wire [8:0]ptr3;   // e:/desktop/vhdl_exp/exp5/songs.vhd(18[9:13])
    
    wire n1, n655, n4, n1_adj_315;
    wire [2:0]tone2_3__N_262;
    wire [3:0]tone2_3__N_258;
    wire [3:0]tone2_3__N_254;
    wire [3:0]tone2_3__N_195;
    
    wire n283, n14, n7, n1457, n1451, n7_adj_316, n1456, n1225, 
        n1463, n676, n1217, n1365, n1455, n1312, n791, n1314, 
        n656, n2, n1462, n661, n1366, n670, n1454, n654, n1460, 
        clk_c_enable_29, clk_c_enable_18, n2_adj_317, n969, n2_adj_318, 
        n968, n967, n966, n1_adj_319, n1459, n965;
    
    VHI i2 (.Z(VCC_net));
    INV i1121 (.A(switch_c), .Z(switch_N_34));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(8[3:9])
    CCU2D cnt_261_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1022), .COUT(n1023), .S0(n90), .S1(n89));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_17.INJECT1_0 = "NO";
    defparam cnt_261_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1021), .COUT(n1022), .S0(n92), .S1(n91));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_15.INJECT1_0 = "NO";
    defparam cnt_261_add_4_15.INJECT1_1 = "NO";
    ROM256X1A mux_19_Mux_0 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_262[0])) /* synthesis initstate=0x000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF */ ;
    defparam mux_19_Mux_0.initval = 256'h000003C007BC0003C007BDEF001EF001EF001EF001EF03C007BC0003C007BDEF;
    FD1S3AX clk_music_67 (.D(clk_music_N_60), .CK(clk_c), .Q(clk_music));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(183[2] 191[9])
    defparam clk_music_67.GSR = "DISABLED";
    CCU2D cnt_261_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1020), .COUT(n1021), .S0(n94), .S1(n93));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_13.INJECT1_0 = "NO";
    defparam cnt_261_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1019), 
          .COUT(n1020), .S0(n96), .S1(n95));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_11.INJECT1_0 = "NO";
    defparam cnt_261_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1018), 
          .COUT(n1019), .S0(n98), .S1(n97));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_9.INJECT1_0 = "NO";
    defparam cnt_261_add_4_9.INJECT1_1 = "NO";
    ROM256X1A mux_20_Mux_0 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_258[0])) /* synthesis initstate=0x000000000000000000001B007400001801E28000C3C3600E800003003C500018 */ ;
    defparam mux_20_Mux_0.initval = 256'h000000000000000000001B007400001801E28000C3C3600E800003003C500018;
    CCU2D cnt_261_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1017), 
          .COUT(n1018), .S0(n100), .S1(n99));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_7.INJECT1_0 = "NO";
    defparam cnt_261_add_4_7.INJECT1_1 = "NO";
    FD1S3AX beep_68 (.D(clk_music), .CK(clk_c), .Q(beep_c));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(183[2] 191[9])
    defparam beep_68.GSR = "DISABLED";
    FD1S3AX mode_num_62 (.D(n1456), .CK(mode_N_30), .Q(mode_num));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(71[3] 77[10])
    defparam mode_num_62.GSR = "DISABLED";
    CCU2D cnt_261_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1016), 
          .COUT(n1017), .S0(n102), .S1(n101));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_5.INJECT1_0 = "NO";
    defparam cnt_261_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1015), 
          .COUT(n1016), .S0(n104), .S1(n103));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_3.INJECT1_0 = "NO";
    defparam cnt_261_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1015), 
          .S1(n105));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_1.INIT0 = 16'hF000;
    defparam cnt_261_add_4_1.INIT1 = 16'h0555;
    defparam cnt_261_add_4_1.INJECT1_0 = "NO";
    defparam cnt_261_add_4_1.INJECT1_1 = "NO";
    LUT4 i324_1_lut (.A(music_num[1]), .Z(music_num_1__N_31[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam i324_1_lut.init = 16'h5555;
    IB switch_pad (.I(switch), .O(switch_c));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(8[3:9])
    ROM256X1A mux_19_Mux_1 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_262[1])) /* synthesis initstate=0x0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000 */ ;
    defparam mux_19_Mux_1.initval = 256'h0000001EF7BC00001EF0000003DEF0000003DEF00000001EF7BC00001EF00000;
    ROM256X1A mux_21_Mux_1 (.AD0(ptr3[0]), .AD1(ptr3[1]), .AD2(ptr3[2]), 
            .AD3(ptr3[3]), .AD4(ptr3[4]), .AD5(ptr3[5]), .AD6(ptr3[6]), 
            .AD7(ptr3[7]), .DO0(tone2_3__N_254[1])) /* synthesis initstate=0x3FC03C3C333C00F0F0F003C3C3C000000003C3C333C001E1E1E000F0F0F00000 */ ;
    defparam mux_21_Mux_1.initval = 256'h3FC03C3C333C00F0F0F003C3C3C000000003C3C333C001E1E1E000F0F0F00000;
    ROM256X1A mux_21_Mux_0 (.AD0(ptr3[0]), .AD1(ptr3[1]), .AD2(ptr3[2]), 
            .AD3(ptr3[3]), .AD4(ptr3[4]), .AD5(ptr3[5]), .AD6(ptr3[6]), 
            .AD7(ptr3[7]), .DO0(tone2_3__N_254[0])) /* synthesis initstate=0x3FC3C3C000C00F0F00003C3C003C03C3FC3C3C000C01FE1E0000FF0F000F00F0 */ ;
    defparam mux_21_Mux_0.initval = 256'h3FC3C3C000C00F0F00003C3C003C03C3FC3C3C000C01FE1E0000FF0F000F00F0;
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(11[3:6])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(11[3:6])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(11[3:6])
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(11[3:6])
    IB clk_pad (.I(clk), .O(clk_c));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(10[3:6])
    FD1P3IX tone1_i0_i3 (.D(n1455), .SP(clk_c_enable_18), .CD(n656), .CK(clk_c), 
            .Q(tone1[3]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(132[3] 152[8])
    defparam tone1_i0_i3.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut (.A(n1451), .B(n7_adj_316), 
         .C(tone[3]), .D(tone[0]), .Z(pitch[10])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 tone1_3__I_0_71_i3_3_lut (.A(tone2[2]), .B(tone1[2]), .C(mode_num), 
         .Z(tone[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[2] 162[9])
    defparam tone1_3__I_0_71_i3_3_lut.init = 16'hcaca;
    LUT4 tone1_3__I_0_71_i4_3_lut (.A(tone2[3]), .B(tone1[3]), .C(mode_num), 
         .Z(tone[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[2] 162[9])
    defparam tone1_3__I_0_71_i4_3_lut.init = 16'hcaca;
    LUT4 tone_1__bdd_4_lut_1084 (.A(n1457), .B(tone[3]), .C(tone[0]), 
         .D(tone[2]), .Z(pitch[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam tone_1__bdd_4_lut_1084.init = 16'h316a;
    LUT4 clk_music_I_0_2_lut (.A(clk_music), .B(cnt_19__N_59), .Z(clk_music_N_60)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(184[3] 189[10])
    defparam clk_music_I_0_2_lut.init = 16'h6666;
    ROM256X1A mux_19_Mux_2 (.AD0(ptr1[0]), .AD1(ptr1[1]), .AD2(ptr1[2]), 
            .AD3(ptr1[3]), .AD4(ptr1[4]), .AD5(ptr1[5]), .AD6(ptr1[6]), 
            .AD7(ptr1[7]), .DO0(tone2_3__N_262[2])) /* synthesis initstate=0x000000000001EF03DEF7BC00000007BDEF000007BDEF00000001EF03DEF7BC00 */ ;
    defparam mux_19_Mux_2.initval = 256'h000000000001EF03DEF7BC00000007BDEF000007BDEF00000001EF03DEF7BC00;
    ROM256X1A mux_20_Mux_1 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_258[1])) /* synthesis initstate=0x00000000000000000000C060000C3FC060003D8600000C000187F80C0007B0C0 */ ;
    defparam mux_20_Mux_1.initval = 256'h00000000000000000000C060000C3FC060003D8600000C000187F80C0007B0C0;
    ROM256X1A mux_20_Mux_2 (.AD0(ptr2[0]), .AD1(ptr2[1]), .AD2(ptr2[2]), 
            .AD3(ptr2[3]), .AD4(ptr2[4]), .AD5(ptr2[5]), .AD6(ptr2[6]), 
            .AD7(ptr2[7]), .DO0(tone2_3__N_258[2])) /* synthesis initstate=0x0000000000000000001E1B6F61E1BFDB0DEEBD86DBDB6DEC3C37FB61BDD7B0DB */ ;
    defparam mux_20_Mux_2.initval = 256'h0000000000000000001E1B6F61E1BFDB0DEEBD86DBDB6DEC3C37FB61BDD7B0DB;
    LUT4 i1053_2_lut_3_lut (.A(clk8hz), .B(n655), .C(n1314), .Z(n670)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(89[4] 108[11])
    defparam i1053_2_lut_3_lut.init = 16'h4040;
    LUT4 i616_2_lut (.A(tone2_3__N_254[1]), .B(music_num[0]), .Z(n2_adj_318)) /* synthesis lut_function=(A (B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam i616_2_lut.init = 16'h8888;
    FD1S1A tmp_I_0_72 (.D(tmp_N_62), .CK(clk40hz), .Q(tmp)) /* synthesis lse_init_val=0 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(109[2] 124[14])
    defparam tmp_I_0_72.GSR = "DISABLED";
    FD1P3IX tone1_i0_i1 (.D(n567), .SP(clk_c_enable_18), .CD(n791), .CK(clk_c), 
            .Q(tone1[1]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(132[3] 152[8])
    defparam tone1_i0_i1.GSR = "DISABLED";
    LUT4 i1051_2_lut_3_lut (.A(clk8hz), .B(n655), .C(n1312), .Z(n661)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(89[4] 108[11])
    defparam i1051_2_lut_3_lut.init = 16'h4040;
    LUT4 i107_2_lut (.A(music_num[0]), .B(music_num[1]), .Z(n283)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i107_2_lut.init = 16'h6666;
    LUT4 mux_105_Mux_1_i1_3_lut (.A(tone2_3__N_262[1]), .B(tone2_3__N_258[1]), 
         .C(music_num[0]), .Z(n1_adj_315)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam mux_105_Mux_1_i1_3_lut.init = 16'hcaca;
    LUT4 i1047_2_lut_rep_14 (.A(clk8hz), .B(n655), .Z(clk_c_enable_29)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(89[4] 108[11])
    defparam i1047_2_lut_rep_14.init = 16'h4444;
    FD1P3AX tone1_i0_i2 (.D(tone1_3__N_35[2]), .SP(clk_c_enable_18), .CK(clk_c), 
            .Q(tone1[2]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(132[3] 152[8])
    defparam tone1_i0_i2.GSR = "DISABLED";
    FD1S3IX cnt_261__i19 (.D(n86), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i19.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_9_i15_3_lut_4_lut_3_lut (.A(n1457), .B(tone[3]), 
         .C(tone[2]), .Z(pitch[9])) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_9_i15_3_lut_4_lut_3_lut.init = 16'h2626;
    VLO i1 (.Z(GND_net));
    FD1S3IX cnt_261__i18 (.D(n87), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i18.GSR = "DISABLED";
    FD1S3IX cnt_261__i17 (.D(n88), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i17.GSR = "DISABLED";
    FD1S3IX cnt_261__i16 (.D(n89), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i16.GSR = "DISABLED";
    FD1S3IX cnt_261__i15 (.D(n90), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i15.GSR = "DISABLED";
    FD1S3IX cnt_261__i14 (.D(n91), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i14.GSR = "DISABLED";
    FD1S3IX cnt_261__i13 (.D(n92), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i13.GSR = "DISABLED";
    FD1S3IX cnt_261__i12 (.D(n93), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i12.GSR = "DISABLED";
    FD1S3IX cnt_261__i11 (.D(n94), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i11.GSR = "DISABLED";
    FD1S3IX cnt_261__i10 (.D(n95), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i10.GSR = "DISABLED";
    FD1S3IX cnt_261__i9 (.D(n96), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i9.GSR = "DISABLED";
    FD1S3IX cnt_261__i8 (.D(n97), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i8.GSR = "DISABLED";
    FD1S3IX cnt_261__i7 (.D(n98), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i7.GSR = "DISABLED";
    FD1S3IX cnt_261__i6 (.D(n99), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i6.GSR = "DISABLED";
    FD1S3IX cnt_261__i5 (.D(n100), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i5.GSR = "DISABLED";
    FD1S3IX cnt_261__i4 (.D(n101), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i4.GSR = "DISABLED";
    FD1S3IX cnt_261__i3 (.D(n102), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i3.GSR = "DISABLED";
    FD1S3IX cnt_261__i2 (.D(n103), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i2.GSR = "DISABLED";
    FD1S3IX cnt_261__i1 (.D(n104), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i1.GSR = "DISABLED";
    CCU2D cnt_261_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1024), .S0(n86));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_21.INIT1 = 16'h0000;
    defparam cnt_261_add_4_21.INJECT1_0 = "NO";
    defparam cnt_261_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_261_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1023), .COUT(n1024), .S0(n88), .S1(n87));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_261_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_261_add_4_19.INJECT1_0 = "NO";
    defparam cnt_261_add_4_19.INJECT1_1 = "NO";
    LUT4 tone_0__bdd_4_lut (.A(tone[0]), .B(n1457), .C(tone[2]), .D(tone[3]), 
         .Z(pitch[6])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam tone_0__bdd_4_lut.init = 16'h0726;
    LUT4 i1_4_lut (.A(n1260), .B(n1366), .C(col_c_3), .D(col_c_0), .Z(n1225)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h7333;
    LUT4 i20_2_lut_rep_18 (.A(col_c_1), .B(col_c_2), .Z(n1454)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i20_2_lut_rep_18.init = 16'h6666;
    LUT4 tone1_3__bdd_4_lut (.A(tone1[3]), .B(tone1[2]), .C(n1455), .D(n4), 
         .Z(n1365)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A !(B (C (D)+!C !(D))+!B !(C+!(D))))) */ ;
    defparam tone1_3__bdd_4_lut.init = 16'h4124;
    LUT4 i991_3_lut (.A(col_c_1), .B(n1365), .C(col_c_2), .Z(n1260)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i991_3_lut.init = 16'hdede;
    LUT4 tone1_3__I_0_71_i2_3_lut_rep_21 (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .Z(n1457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[2] 162[9])
    defparam tone1_3__I_0_71_i2_3_lut_rep_21.init = 16'hcaca;
    LUT4 tone_1__bdd_4_lut (.A(n1457), .B(tone[3]), .C(tone[2]), .D(tone[0]), 
         .Z(pitch[5])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;
    defparam tone_1__bdd_4_lut.init = 16'h3426;
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_then_4_lut (.A(tone[3]), .B(tone[2]), 
         .C(tone1[1]), .D(tone[0]), .Z(n1460)) /* synthesis lut_function=(!(A (B+(C (D)))+!A !(B (C+(D))))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam tone_3__I_0_Mux_12_i15_4_lut_then_4_lut.init = 16'h4662;
    LUT4 i356_2_lut_3_lut (.A(col_c_1), .B(col_c_2), .C(col_c_0), .Z(n567)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;
    defparam i356_2_lut_3_lut.init = 16'h6060;
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_else_4_lut (.A(tone2[1]), .B(tone[3]), 
         .C(tone[2]), .D(tone[0]), .Z(n1459)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C))+!A (B (C)+!B !(C (D))))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam tone_3__I_0_Mux_12_i15_4_lut_else_4_lut.init = 16'h342c;
    LUT4 tmp_I_1_2_lut_rep_19 (.A(tmp), .B(clk40hz), .Z(n1455)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(112[3] 118[10])
    defparam tmp_I_1_2_lut_rep_19.init = 16'h6666;
    LUT4 i617_2_lut (.A(tone2_3__N_254[2]), .B(music_num[0]), .Z(n2)) /* synthesis lut_function=(A (B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam i617_2_lut.init = 16'h8888;
    LUT4 mux_105_Mux_2_i1_3_lut (.A(tone2_3__N_262[2]), .B(tone2_3__N_258[2]), 
         .C(music_num[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam mux_105_Mux_2_i1_3_lut.init = 16'hcaca;
    LUT4 i1042_2_lut_rep_15_2_lut_4_lut (.A(tone2[1]), .B(tone1[1]), .C(mode_num), 
         .D(tone[2]), .Z(n1451)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[2] 162[9])
    defparam i1042_2_lut_rep_15_2_lut_4_lut.init = 16'h0035;
    LUT4 row_num_I_0_1_lut_2_lut (.A(tmp), .B(clk40hz), .Z(row_c_1)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(112[3] 118[10])
    defparam row_num_I_0_1_lut_2_lut.init = 16'h9999;
    LUT4 i575_2_lut (.A(tone2_3__N_254[0]), .B(music_num[0]), .Z(n2_adj_317)) /* synthesis lut_function=(A (B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam i575_2_lut.init = 16'h8888;
    ROM256X1A mux_21_Mux_2 (.AD0(ptr3[0]), .AD1(ptr3[1]), .AD2(ptr3[2]), 
            .AD3(ptr3[3]), .AD4(ptr3[4]), .AD5(ptr3[5]), .AD6(ptr3[6]), 
            .AD7(ptr3[7]), .DO0(tone2_3__N_254[2])) /* synthesis initstate=0x003FFFFFCC00FFFFF0F3FFFFC3FFFFFFFFFFFFFCC01FFFFFE1EFFFFFF0FFFFFF */ ;
    defparam mux_21_Mux_2.initval = 256'h003FFFFFCC00FFFFF0F3FFFFC3FFFFFFFFFFFFFCC01FFFFFE1EFFFFFF0FFFFFF;
    LUT4 mode_num_I_0_1_lut_rep_20 (.A(mode_num), .Z(n1456)) /* synthesis lut_function=(!(A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[5:19])
    defparam mode_num_I_0_1_lut_rep_20.init = 16'h5555;
    LUT4 mux_105_Mux_0_i1_3_lut (.A(tone2_3__N_262[0]), .B(tone2_3__N_258[0]), 
         .C(music_num[0]), .Z(n1_adj_319)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(84[4] 93[13])
    defparam mux_105_Mux_0_i1_3_lut.init = 16'hcaca;
    FD1S3IX cnt_261__i0 (.D(n105), .CK(clk_c), .CD(cnt_19__N_59), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(188[11:14])
    defparam cnt_261__i0.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    IB mode_pad (.I(mode), .O(mode_c));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(9[3:7])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i444_2_lut (.A(clk_c_enable_18), .B(col_c_3), .Z(n656)) /* synthesis lut_function=(A (B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(132[3] 152[8])
    defparam i444_2_lut.init = 16'h8888;
    LUT4 tone_3__I_0_Mux_10_i7_3_lut_3_lut (.A(tone[0]), .B(n1457), .C(tone[2]), 
         .Z(n7_adj_316)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam tone_3__I_0_Mux_10_i7_3_lut_3_lut.init = 16'ha6a6;
    LUT4 i442_1_lut (.A(music_num[0]), .Z(n654)) /* synthesis lut_function=(!(A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(83[3] 94[10])
    defparam i442_1_lut.init = 16'h5555;
    LUT4 i588_4_lut_then_4_lut (.A(tone[0]), .B(tone1[1]), .C(tone[3]), 
         .D(tone[2]), .Z(n1463)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam i588_4_lut_then_4_lut.init = 16'h0820;
    LUT4 i588_4_lut_else_4_lut (.A(tone[0]), .B(tone2[1]), .C(tone[3]), 
         .D(tone[2]), .Z(n1462)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam i588_4_lut_else_4_lut.init = 16'h0820;
    FD1P3IX tone1_i0_i0 (.D(n1217), .SP(clk_c_enable_18), .CD(n791), .CK(clk_c), 
            .Q(tone1[0]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(132[3] 152[8])
    defparam tone1_i0_i0.GSR = "DISABLED";
    LUT4 i597_3_lut_4_lut (.A(tone[0]), .B(n1457), .C(tone[2]), .D(tone[3]), 
         .Z(pitch[13])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam i597_3_lut_4_lut.init = 16'h001e;
    LUT4 i1038_2_lut (.A(clk_c_enable_18), .B(col_c_3), .Z(n791)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1038_2_lut.init = 16'h2222;
    LUT4 i301_2_lut (.A(tone1[0]), .B(tone1[1]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i301_2_lut.init = 16'heeee;
    LUT4 tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(n1451), .B(n7), .C(tone[3]), 
         .D(tone[0]), .Z(pitch[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut (.A(tone[0]), .B(n1457), 
         .C(tone[2]), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam tone_3__I_0_Mux_3_i7_3_lut_4_lut_3_lut.init = 16'h9e9e;
    OB beep_pad (.I(beep_c), .O(beep));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(13[3:7])
    LUT4 col_c_1_bdd_4_lut (.A(col_c_1), .B(col_c_2), .C(col_c_0), .D(col_c_3), 
         .Z(n1366)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A (B (C (D)))) */ ;
    defparam col_c_1_bdd_4_lut.init = 16'he880;
    PFUMX i363 (.BLUT(tone2_3__N_258[3]), .ALUT(tone2_3__N_254[3]), .C0(music_num[1]), 
          .Z(n574));
    LUT4 tmp_I_0_1_lut (.A(tmp), .Z(tmp_N_62)) /* synthesis lut_function=(!(A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(113[7:14])
    defparam tmp_I_0_1_lut.init = 16'h5555;
    LUT4 i358_4_lut (.A(n1455), .B(n1454), .C(col_c_3), .D(col_c_0), 
         .Z(tone1_3__N_35[2])) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(C)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(134[5] 150[12])
    defparam i358_4_lut.init = 16'h85a5;
    INV i1120 (.A(mode_c), .Z(mode_N_30));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(9[3:7])
    LUT4 i2_3_lut_4_lut (.A(n1457), .B(tone[2]), .C(tone[0]), .D(tone[3]), 
         .Z(pitch[0])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam i2_3_lut_4_lut.init = 16'h0070;
    LUT4 i1_3_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), .Z(n1217)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(134[5] 150[12])
    defparam i1_3_lut.init = 16'h5d5d;
    GSR GSR_INST (.GSR(tone2_3__N_199));
    LUT4 tone_3__bdd_4_lut (.A(tone[3]), .B(n1457), .C(tone[2]), .D(tone[0]), 
         .Z(pitch[2])) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam tone_3__bdd_4_lut.init = 16'h1418;
    PFUMX i1092 (.BLUT(n1462), .ALUT(n1463), .C0(mode_num), .Z(pitch[4]));
    LUT4 i584_2_lut_3_lut (.A(tone[0]), .B(n1457), .C(tone[2]), .Z(n14)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(165[2] 177[11])
    defparam i584_2_lut_3_lut.init = 16'h0606;
    PFUMX i1090 (.BLUT(n1459), .ALUT(n1460), .C0(mode_num), .Z(pitch[12]));
    PFUMX mux_105_Mux_0_i3 (.BLUT(n1_adj_319), .ALUT(n2_adj_317), .C0(music_num[1]), 
          .Z(tone2_3__N_195[0]));
    LUT4 tone_2__bdd_4_lut (.A(tone[2]), .B(tone[3]), .C(tone[0]), .D(n1457), 
         .Z(pitch[1])) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (((D)+!C)+!B))) */ ;
    defparam tone_2__bdd_4_lut.init = 16'h2242;
    PFUMX mux_105_Mux_2_i3 (.BLUT(n1), .ALUT(n2), .C0(music_num[1]), .Z(tone2_3__N_195[2]));
    LUT4 tone_1__bdd_4_lut_1085 (.A(n1457), .B(tone[3]), .C(tone[2]), 
         .D(tone[0]), .Z(pitch[11])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(D)))) */ ;
    defparam tone_1__bdd_4_lut_1085.init = 16'h1120;
    LUT4 tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut (.A(n1451), .B(n14), .C(tone[3]), 
         .D(tone[0]), .Z(pitch[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'hcfc5;
    FD1S3IX music_num_i1 (.D(music_num[0]), .CK(switch_N_34), .CD(music_num[1]), 
            .Q(music_num[1]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(83[3] 94[10])
    defparam music_num_i1.GSR = "DISABLED";
    CCU2D equal_74_20 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n969), 
          .S0(cnt_19__N_59));
    defparam equal_74_20.INIT0 = 16'hFFFF;
    defparam equal_74_20.INIT1 = 16'h0000;
    defparam equal_74_20.INJECT1_0 = "NO";
    defparam equal_74_20.INJECT1_1 = "NO";
    OB row_pad_0 (.I(n1455), .O(row[0]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(12[3:6])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(12[3:6])
    OB row_pad_2 (.I(VCC_net), .O(row[2]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(12[3:6])
    OB row_pad_3 (.I(VCC_net), .O(row[3]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(12[3:6])
    CCU2D equal_74_20_755 (.A0(cnt[3]), .B0(pitch[3]), .C0(cnt[2]), .D0(pitch[2]), 
          .A1(cnt[1]), .B1(pitch[1]), .C1(cnt[0]), .D1(pitch[0]), .CIN(n968), 
          .COUT(n969));
    defparam equal_74_20_755.INIT0 = 16'h9009;
    defparam equal_74_20_755.INIT1 = 16'h9009;
    defparam equal_74_20_755.INJECT1_0 = "YES";
    defparam equal_74_20_755.INJECT1_1 = "YES";
    FD1S3AX music_num_i0 (.D(music_num_1__N_31[0]), .CK(switch_N_34), .Q(music_num[0]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(83[3] 94[10])
    defparam music_num_i0.GSR = "DISABLED";
    CCU2D equal_74_18 (.A0(cnt[7]), .B0(pitch[7]), .C0(cnt[6]), .D0(pitch[6]), 
          .A1(cnt[5]), .B1(pitch[5]), .C1(cnt[4]), .D1(pitch[4]), .CIN(n967), 
          .COUT(n968));
    defparam equal_74_18.INIT0 = 16'h9009;
    defparam equal_74_18.INIT1 = 16'h9009;
    defparam equal_74_18.INJECT1_0 = "YES";
    defparam equal_74_18.INJECT1_1 = "YES";
    song U2 (.tone2({tone2}), .tone2_3__N_199(tone2_3__N_199), .\tone2_3__N_195[0] (tone2_3__N_195[0]), 
         .music_num({music_num}), .n283(n283), .ptr3({Open_0, ptr3[7], 
         Open_1, Open_2, Open_3, Open_4, Open_5, Open_6, Open_7}), 
         .GND_net(GND_net), .\ptr3[5] (ptr3[5]), .\ptr3[6] (ptr3[6]), 
         .\ptr3[3] (ptr3[3]), .\ptr3[4] (ptr3[4]), .\tone2_3__N_195[1] (tone2_3__N_195[1]), 
         .\tone2_3__N_195[2] (tone2_3__N_195[2]), .\ptr3[1] (ptr3[1]), .\ptr3[2] (ptr3[2]), 
         .\ptr3[0] (ptr3[0]), .clk_c(clk_c), .clk_c_enable_29(clk_c_enable_29), 
         .n661(n661), .ptr2({ptr2}), .ptr1({ptr1}), .n670(n670), .n1312(n1312), 
         .n654(n654), .n574(n574), .\tone2_3__N_258[3] (tone2_3__N_258[3]), 
         .n1314(n1314), .\tone2_3__N_254[3] (tone2_3__N_254[3]));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(59[7:11])
    PFUMX mux_105_Mux_1_i3 (.BLUT(n1_adj_315), .ALUT(n2_adj_318), .C0(music_num[1]), 
          .Z(tone2_3__N_195[1]));
    CCU2D equal_74_16 (.A0(cnt[11]), .B0(pitch[11]), .C0(cnt[10]), .D0(pitch[10]), 
          .A1(cnt[9]), .B1(pitch[9]), .C1(cnt[8]), .D1(pitch[8]), .CIN(n966), 
          .COUT(n967));
    defparam equal_74_16.INIT0 = 16'h9009;
    defparam equal_74_16.INIT1 = 16'h9009;
    defparam equal_74_16.INJECT1_0 = "YES";
    defparam equal_74_16.INJECT1_1 = "YES";
    CCU2D equal_74_14 (.A0(cnt[17]), .B0(cnt[16]), .C0(cnt[15]), .D0(cnt[14]), 
          .A1(cnt[13]), .B1(pitch[13]), .C1(cnt[12]), .D1(pitch[12]), 
          .CIN(n965), .COUT(n966));
    defparam equal_74_14.INIT0 = 16'h0001;
    defparam equal_74_14.INIT1 = 16'h9009;
    defparam equal_74_14.INJECT1_0 = "YES";
    defparam equal_74_14.INJECT1_1 = "YES";
    LUT4 i1064_4_lut_4_lut (.A(mode_num), .B(n1225), .C(n676), .D(clk40hz), 
         .Z(clk_c_enable_18)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[5:19])
    defparam i1064_4_lut_4_lut.init = 16'h0020;
    LUT4 tone1_3__I_0_71_i1_3_lut (.A(tone2[0]), .B(tone1[0]), .C(mode_num), 
         .Z(tone[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(158[2] 162[9])
    defparam tone1_3__I_0_71_i1_3_lut.init = 16'hcaca;
    CCU2D equal_74_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[19]), .B1(cnt[18]), .C1(GND_net), .D1(GND_net), .COUT(n965));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(184[6:17])
    defparam equal_74_0.INIT0 = 16'hF000;
    defparam equal_74_0.INIT1 = 16'h1111;
    defparam equal_74_0.INJECT1_0 = "NO";
    defparam equal_74_0.INJECT1_1 = "YES";
    freqdivider U1 (.clk40hz(clk40hz), .clk_c(clk_c), .GND_net(GND_net), 
            .clk8hz(clk8hz), .n676(n676), .n655(n655));   // e:/desktop/vhdl_exp/exp5/exp5.vhd(51[7:18])
    
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

module song (tone2, tone2_3__N_199, \tone2_3__N_195[0] , music_num, 
            n283, ptr3, GND_net, \ptr3[5] , \ptr3[6] , \ptr3[3] , 
            \ptr3[4] , \tone2_3__N_195[1] , \tone2_3__N_195[2] , \ptr3[1] , 
            \ptr3[2] , \ptr3[0] , clk_c, clk_c_enable_29, n661, ptr2, 
            ptr1, n670, n1312, n654, n574, \tone2_3__N_258[3] , 
            n1314, \tone2_3__N_254[3] );
    output [3:0]tone2;
    output tone2_3__N_199;
    input \tone2_3__N_195[0] ;
    input [1:0]music_num;
    input n283;
    output [8:0]ptr3;
    input GND_net;
    output \ptr3[5] ;
    output \ptr3[6] ;
    output \ptr3[3] ;
    output \ptr3[4] ;
    input \tone2_3__N_195[1] ;
    input \tone2_3__N_195[2] ;
    output \ptr3[1] ;
    output \ptr3[2] ;
    output \ptr3[0] ;
    input clk_c;
    input clk_c_enable_29;
    input n661;
    output [7:0]ptr2;
    output [7:0]ptr1;
    input n670;
    output n1312;
    input n654;
    input n574;
    output \tone2_3__N_258[3] ;
    output n1314;
    output \tone2_3__N_254[3] ;
    
    wire tone2_3__N_199 /* synthesis is_clock=1, SET_AS_NETWORK=\U2/tone2_3__N_199 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(9[3:8])
    wire music_num_1_derived_2 /* synthesis is_clock=1, SET_AS_NETWORK=music_num[1]_derived_2 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(26[9:18])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(10[3:6])
    wire [1:0]mn_former;   // e:/desktop/vhdl_exp/exp5/songs.vhd(19[9:18])
    
    wire n1013;
    wire [8:0]ptr3_c;   // e:/desktop/vhdl_exp/exp5/songs.vhd(18[9:13])
    wire [8:0]n1;
    
    wire n1012, n1011, n1010, n1009;
    wire [7:0]n37;
    
    wire n1008, n1007, n1006, n1005;
    wire [7:0]n37_adj_314;
    
    wire n1004, n1003, n678, n1002, n1280, n1278, n1415, n1416, 
        n1417, n15, n1282, n1111, n13, n1268, n1232, n6, n1109;
    
    FD1S1A tone2_3__I_0_i1 (.D(\tone2_3__N_195[0] ), .CK(tone2_3__N_199), 
           .Q(tone2[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam tone2_3__I_0_i1.GSR = "DISABLED";
    LUT4 mn_former_1__I_0_i4_1_lut_4_lut (.A(music_num[0]), .B(mn_former[1]), 
         .C(mn_former[0]), .D(music_num[1]), .Z(tone2_3__N_199)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+(D))))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(82[6:28])
    defparam mn_former_1__I_0_i4_1_lut_4_lut.init = 16'h4821;
    FD1S1A music_num_1__I_0_68_i1 (.D(n283), .CK(music_num_1_derived_2), 
           .Q(mn_former[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam music_num_1__I_0_68_i1.GSR = "DISABLED";
    CCU2D ptr3_266_add_4_9 (.A0(ptr3[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr3_c[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1013), .S0(n1[7]), .S1(n1[8]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr3_266_add_4_9.INIT1 = 16'hfaaa;
    defparam ptr3_266_add_4_9.INJECT1_0 = "NO";
    defparam ptr3_266_add_4_9.INJECT1_1 = "NO";
    CCU2D ptr3_266_add_4_7 (.A0(\ptr3[5] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ptr3[6] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1012), .COUT(n1013), .S0(n1[5]), .S1(n1[6]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr3_266_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr3_266_add_4_7.INJECT1_0 = "NO";
    defparam ptr3_266_add_4_7.INJECT1_1 = "NO";
    CCU2D ptr3_266_add_4_5 (.A0(\ptr3[3] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ptr3[4] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1011), .COUT(n1012), .S0(n1[3]), .S1(n1[4]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr3_266_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr3_266_add_4_5.INJECT1_0 = "NO";
    defparam ptr3_266_add_4_5.INJECT1_1 = "NO";
    FD1S1A tone2_3__I_0_i2 (.D(\tone2_3__N_195[1] ), .CK(tone2_3__N_199), 
           .Q(tone2[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam tone2_3__I_0_i2.GSR = "DISABLED";
    FD1S1A tone2_3__I_0_i3 (.D(\tone2_3__N_195[2] ), .CK(tone2_3__N_199), 
           .Q(tone2[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam tone2_3__I_0_i3.GSR = "DISABLED";
    FD1S1A music_num_1__I_0_68_i2 (.D(music_num[1]), .CK(music_num_1_derived_2), 
           .Q(mn_former[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam music_num_1__I_0_68_i2.GSR = "DISABLED";
    CCU2D ptr3_266_add_4_3 (.A0(\ptr3[1] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ptr3[2] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1010), .COUT(n1011), .S0(n1[1]), .S1(n1[2]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr3_266_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr3_266_add_4_3.INJECT1_0 = "NO";
    defparam ptr3_266_add_4_3.INJECT1_1 = "NO";
    CCU2D ptr3_266_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ptr3[0] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1010), .S1(n1[0]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266_add_4_1.INIT0 = 16'hF000;
    defparam ptr3_266_add_4_1.INIT1 = 16'h0555;
    defparam ptr3_266_add_4_1.INJECT1_0 = "NO";
    defparam ptr3_266_add_4_1.INJECT1_1 = "NO";
    FD1P3IX ptr3_266__i4 (.D(n1[4]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[4] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i4.GSR = "ENABLED";
    CCU2D ptr2_265_add_4_9 (.A0(ptr2[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1009), .S0(n37[7]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr2_265_add_4_9.INIT1 = 16'h0000;
    defparam ptr2_265_add_4_9.INJECT1_0 = "NO";
    defparam ptr2_265_add_4_9.INJECT1_1 = "NO";
    CCU2D ptr2_265_add_4_7 (.A0(ptr2[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1008), .COUT(n1009), .S0(n37[5]), .S1(n37[6]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr2_265_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr2_265_add_4_7.INJECT1_0 = "NO";
    defparam ptr2_265_add_4_7.INJECT1_1 = "NO";
    CCU2D ptr2_265_add_4_5 (.A0(ptr2[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1007), .COUT(n1008), .S0(n37[3]), .S1(n37[4]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr2_265_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr2_265_add_4_5.INJECT1_0 = "NO";
    defparam ptr2_265_add_4_5.INJECT1_1 = "NO";
    CCU2D ptr2_265_add_4_3 (.A0(ptr2[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1006), .COUT(n1007), .S0(n37[1]), .S1(n37[2]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr2_265_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr2_265_add_4_3.INJECT1_0 = "NO";
    defparam ptr2_265_add_4_3.INJECT1_1 = "NO";
    CCU2D ptr2_265_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr2[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1006), .S1(n37[0]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265_add_4_1.INIT0 = 16'hF000;
    defparam ptr2_265_add_4_1.INIT1 = 16'h0555;
    defparam ptr2_265_add_4_1.INJECT1_0 = "NO";
    defparam ptr2_265_add_4_1.INJECT1_1 = "NO";
    CCU2D ptr1_264_add_4_9 (.A0(ptr1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1005), .S0(n37_adj_314[7]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr1_264_add_4_9.INIT1 = 16'h0000;
    defparam ptr1_264_add_4_9.INJECT1_0 = "NO";
    defparam ptr1_264_add_4_9.INJECT1_1 = "NO";
    FD1P3IX ptr3_266__i5 (.D(n1[5]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[5] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i5.GSR = "ENABLED";
    FD1P3IX ptr3_266__i6 (.D(n1[6]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[6] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i6.GSR = "ENABLED";
    CCU2D ptr1_264_add_4_7 (.A0(ptr1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1004), .COUT(n1005), .S0(n37_adj_314[5]), .S1(n37_adj_314[6]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr1_264_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr1_264_add_4_7.INJECT1_0 = "NO";
    defparam ptr1_264_add_4_7.INJECT1_1 = "NO";
    CCU2D ptr1_264_add_4_5 (.A0(ptr1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1003), .COUT(n1004), .S0(n37_adj_314[3]), .S1(n37_adj_314[4]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr1_264_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr1_264_add_4_5.INJECT1_0 = "NO";
    defparam ptr1_264_add_4_5.INJECT1_1 = "NO";
    FD1P3IX ptr1_264__i0 (.D(n37_adj_314[0]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i0.GSR = "ENABLED";
    CCU2D ptr1_264_add_4_3 (.A0(ptr1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1002), .COUT(n1003), .S0(n37_adj_314[1]), .S1(n37_adj_314[2]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr1_264_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr1_264_add_4_3.INJECT1_0 = "NO";
    defparam ptr1_264_add_4_3.INJECT1_1 = "NO";
    CCU2D ptr1_264_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ptr1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1002), .S1(n37_adj_314[0]));   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264_add_4_1.INIT0 = 16'hF000;
    defparam ptr1_264_add_4_1.INIT1 = 16'h0555;
    defparam ptr1_264_add_4_1.INJECT1_0 = "NO";
    defparam ptr1_264_add_4_1.INJECT1_1 = "NO";
    LUT4 i1049_4_lut (.A(clk_c_enable_29), .B(ptr1[4]), .C(n1280), .D(n1278), 
         .Z(n678)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1049_4_lut.init = 16'h2000;
    FD1P3IX ptr1_264__i6 (.D(n37_adj_314[6]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i6.GSR = "ENABLED";
    LUT4 ptr3_0__bdd_1_lut (.A(\ptr3[2] ), .Z(n1415)) /* synthesis lut_function=(!(A)) */ ;
    defparam ptr3_0__bdd_1_lut.init = 16'h5555;
    PFUMX i1086 (.BLUT(n1416), .ALUT(n1415), .C0(\ptr3[1] ), .Z(n1417));
    FD1P3IX ptr1_264__i7 (.D(n37_adj_314[7]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i7.GSR = "ENABLED";
    FD1P3IX ptr3_266__i7 (.D(n1[7]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(ptr3[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i7.GSR = "ENABLED";
    FD1P3IX ptr2_265__i1 (.D(n37[1]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i1.GSR = "ENABLED";
    FD1P3IX ptr2_265__i2 (.D(n37[2]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i2.GSR = "ENABLED";
    LUT4 i1050_4_lut (.A(n15), .B(\ptr3[6] ), .C(n1282), .D(\ptr3[4] ), 
         .Z(n1312)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1050_4_lut.init = 16'h4000;
    FD1P3IX ptr2_265__i3 (.D(n37[3]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i3.GSR = "ENABLED";
    FD1P3IX ptr2_265__i4 (.D(n37[4]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i4.GSR = "ENABLED";
    FD1S1I tone2_3__I_0_i4 (.D(n574), .CK(tone2_3__N_199), .CD(n654), 
           .Q(tone2[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=11, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(79[2] 120[14])
    defparam tone2_3__I_0_i4.GSR = "DISABLED";
    FD1P3IX ptr2_265__i5 (.D(n37[5]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i5.GSR = "ENABLED";
    FD1P3IX ptr2_265__i6 (.D(n37[6]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i6.GSR = "ENABLED";
    FD1P3IX ptr2_265__i7 (.D(n37[7]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i7.GSR = "ENABLED";
    LUT4 i6_4_lut (.A(ptr3_c[8]), .B(\ptr3[0] ), .C(\ptr3[1] ), .D(\ptr3[5] ), 
         .Z(n15)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'hbfff;
    LUT4 i1013_3_lut (.A(\ptr3[3] ), .B(ptr3[7]), .C(\ptr3[2] ), .Z(n1282)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1013_3_lut.init = 16'h8080;
    LUT4 i660_3_lut_3_lut (.A(ptr2[4]), .B(n1111), .C(ptr2[7]), .Z(\tone2_3__N_258[3] )) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(97[8:18])
    defparam i660_3_lut_3_lut.init = 16'h0404;
    LUT4 mn_former_1__I_0_i3_4_lut_rep_22 (.A(music_num[0]), .B(mn_former[1]), 
         .C(mn_former[0]), .D(music_num[1]), .Z(music_num_1_derived_2)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))+!A !(B (C (D))+!B !(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(82[6:28])
    defparam mn_former_1__I_0_i3_4_lut_rep_22.init = 16'hb7de;
    LUT4 i1052_4_lut (.A(n13), .B(ptr2[1]), .C(n1268), .D(ptr2[5]), 
         .Z(n1314)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1052_4_lut.init = 16'h1000;
    LUT4 i5_4_lut (.A(ptr2[6]), .B(ptr2[3]), .C(ptr2[0]), .D(ptr2[4]), 
         .Z(n13)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i5_4_lut.init = 16'hefff;
    LUT4 ptr3_0__bdd_4_lut_1107 (.A(\ptr3[0] ), .B(\ptr3[2] ), .C(ptr3[7]), 
         .D(\ptr3[5] ), .Z(n1416)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam ptr3_0__bdd_4_lut_1107.init = 16'h36c3;
    LUT4 i1011_3_lut (.A(ptr1[1]), .B(ptr1[0]), .C(ptr1[6]), .Z(n1280)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1011_3_lut.init = 16'h8080;
    LUT4 i999_2_lut (.A(ptr2[2]), .B(ptr2[7]), .Z(n1268)) /* synthesis lut_function=(A (B)) */ ;
    defparam i999_2_lut.init = 16'h8888;
    FD1P3IX ptr3_266__i1 (.D(n1[1]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[1] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i1.GSR = "ENABLED";
    FD1P3IX ptr3_266__i0 (.D(n1[0]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[0] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i0.GSR = "ENABLED";
    FD1P3IX ptr1_264__i1 (.D(n37_adj_314[1]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i1.GSR = "ENABLED";
    LUT4 i1009_4_lut (.A(ptr1[2]), .B(ptr1[5]), .C(ptr1[3]), .D(ptr1[7]), 
         .Z(n1278)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1009_4_lut.init = 16'h8000;
    LUT4 i2_4_lut (.A(ptr2[1]), .B(ptr2[2]), .C(ptr2[3]), .D(ptr2[5]), 
         .Z(n1232)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_4_lut.init = 16'h0400;
    LUT4 i3_4_lut (.A(ptr2[0]), .B(n6), .C(ptr2[2]), .D(ptr2[1]), .Z(n1109)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i3_4_lut.init = 16'h0408;
    FD1P3IX ptr2_265__i0 (.D(n37[0]), .SP(clk_c_enable_29), .CD(n670), 
            .CK(clk_c), .Q(ptr2[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(100[14:18])
    defparam ptr2_265__i0.GSR = "ENABLED";
    LUT4 i3_4_lut_adj_8 (.A(n1417), .B(\ptr3[6] ), .C(\ptr3[3] ), .D(\ptr3[4] ), 
         .Z(\tone2_3__N_254[3] )) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(117[20:24])
    defparam i3_4_lut_adj_8.init = 16'h2000;
    FD1P3IX ptr3_266__i2 (.D(n1[2]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[2] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i2.GSR = "ENABLED";
    FD1P3IX ptr1_264__i2 (.D(n37_adj_314[2]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i2.GSR = "ENABLED";
    PFUMX i842 (.BLUT(n1109), .ALUT(n1232), .C0(ptr2[6]), .Z(n1111));
    FD1P3IX ptr1_264__i3 (.D(n37_adj_314[3]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i3.GSR = "ENABLED";
    FD1P3IX ptr1_264__i4 (.D(n37_adj_314[4]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i4.GSR = "ENABLED";
    LUT4 i2_2_lut (.A(ptr2[5]), .B(ptr2[3]), .Z(n6)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i2_2_lut.init = 16'h4444;
    FD1P3IX ptr3_266__i3 (.D(n1[3]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(\ptr3[3] )) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i3.GSR = "ENABLED";
    FD1P3IX ptr1_264__i5 (.D(n37_adj_314[5]), .SP(clk_c_enable_29), .CD(n678), 
            .CK(clk_c), .Q(ptr1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(94[14:18])
    defparam ptr1_264__i5.GSR = "ENABLED";
    FD1P3IX ptr3_266__i8 (.D(n1[8]), .SP(clk_c_enable_29), .CD(n661), 
            .CK(clk_c), .Q(ptr3_c[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/songs.vhd(106[14:18])
    defparam ptr3_266__i8.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module freqdivider
//

module freqdivider (clk40hz, clk_c, GND_net, clk8hz, n676, n655);
    output clk40hz;
    input clk_c;
    input GND_net;
    output clk8hz;
    output n676;
    output n655;
    
    wire clk40hz /* synthesis is_clock=1, SET_AS_NETWORK=clk40hz */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(23[9:16])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/desktop/vhdl_exp/exp5/exp5.vhd(10[3:6])
    wire [31:0]cnt40;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(32[12:17])
    
    wire n38, clk40hz_N_194;
    wire [31:0]cnt8;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(18[12:16])
    wire [31:0]n133;
    
    wire n970, clk8hz_N_193, n26, n985, n40, n25, n1284, n1256, 
        n10, n28, n1276, n1001;
    wire [31:0]n133_adj_301;
    
    wire n1000, n999, n30, n44, n1228, n1272, n998, n997, n31, 
        n44_adj_267, n40_adj_268, n32, n996, n995, n994, n1288, 
        n42, n36, n24, n38_adj_269, n993, n992, n41, n46, n42_adj_270, 
        n991, n990, n989, n988, n987, n986, n984, n983, n982, 
        n981, n980, n979, n978, n977, n976, n975, n974, n973, 
        n972, n971;
    
    LUT4 i14_4_lut (.A(cnt40[29]), .B(cnt40[18]), .C(cnt40[3]), .D(cnt40[24]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i14_4_lut.init = 16'hfffe;
    FD1S3AX clk40hz_28 (.D(clk40hz_N_194), .CK(clk_c), .Q(clk40hz)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=18, LSE_LLINE=51, LSE_RLINE=51 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(34[3] 41[10])
    defparam clk40hz_28.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n970), .S1(n133[0]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_1.INIT0 = 16'hF000;
    defparam cnt8_262_add_4_1.INIT1 = 16'h0555;
    defparam cnt8_262_add_4_1.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_1.INJECT1_1 = "NO";
    FD1S3AX clk8hz_26 (.D(clk8hz_N_193), .CK(clk_c), .Q(clk8hz)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=7, LSE_RCOL=18, LSE_LLINE=51, LSE_RLINE=51 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(20[3] 27[10])
    defparam clk8hz_26.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(cnt40[15]), .B(cnt40[27]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D cnt8_262_add_4_33 (.A0(cnt8[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n985), .S0(n133[31]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_33.INIT1 = 16'h0000;
    defparam cnt8_262_add_4_33.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_33.INJECT1_1 = "NO";
    LUT4 i16_4_lut (.A(cnt40[26]), .B(cnt40[10]), .C(cnt40[28]), .D(cnt40[12]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(cnt40[30]), .B(cnt40[2]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1057_4_lut (.A(n1284), .B(n1256), .C(cnt40[7]), .D(n10), .Z(n676)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i1057_4_lut.init = 16'h0080;
    LUT4 i5_2_lut (.A(cnt8[9]), .B(cnt8[24]), .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1007_4_lut (.A(cnt8[16]), .B(cnt8[17]), .C(cnt8[12]), .D(cnt8[7]), 
         .Z(n1276)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1007_4_lut.init = 16'h8000;
    FD1S3IX cnt8_262__i0 (.D(n133[0]), .CK(clk_c), .CD(n655), .Q(cnt8[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i0.GSR = "DISABLED";
    CCU2D cnt40_263_add_4_33 (.A0(cnt40[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1001), .S0(n133_adj_301[31]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_33.INIT1 = 16'h0000;
    defparam cnt40_263_add_4_33.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_31 (.A0(cnt40[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[30]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1000), .COUT(n1001), .S0(n133_adj_301[29]), 
          .S1(n133_adj_301[30]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_31.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_31.INJECT1_1 = "NO";
    FD1S3IX cnt40_263__i0 (.D(n133_adj_301[0]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i0.GSR = "DISABLED";
    CCU2D cnt40_263_add_4_29 (.A0(cnt40[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[28]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n999), .COUT(n1000), .S0(n133_adj_301[27]), 
          .S1(n133_adj_301[28]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_29.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_29.INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(cnt40[23]), .B(cnt40[22]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_3 (.A(clk8hz), .B(n655), .Z(clk8hz_N_193)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_3.init = 16'h6666;
    LUT4 i20_4_lut (.A(cnt40[1]), .B(n40), .C(n30), .D(cnt40[31]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i1035_4_lut (.A(n1228), .B(cnt8[8]), .C(n1272), .D(cnt8[14]), 
         .Z(n655)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i1035_4_lut.init = 16'h4000;
    CCU2D cnt40_263_add_4_27 (.A0(cnt40[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[26]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n998), .COUT(n999), .S0(n133_adj_301[25]), 
          .S1(n133_adj_301[26]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_27.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_25 (.A0(cnt40[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[24]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n997), .COUT(n998), .S0(n133_adj_301[23]), 
          .S1(n133_adj_301[24]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_25.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_25.INJECT1_1 = "NO";
    LUT4 i22_4_lut (.A(n31), .B(n44_adj_267), .C(n40_adj_268), .D(n32), 
         .Z(n1228)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i22_4_lut.init = 16'hfffe;
    CCU2D cnt40_263_add_4_23 (.A0(cnt40[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[22]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n996), .COUT(n997), .S0(n133_adj_301[21]), 
          .S1(n133_adj_301[22]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_23.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_23.INJECT1_1 = "NO";
    LUT4 i1015_4_lut (.A(cnt40[5]), .B(cnt40[4]), .C(cnt40[17]), .D(cnt40[11]), 
         .Z(n1284)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1015_4_lut.init = 16'h8000;
    LUT4 i1003_2_lut (.A(cnt8[4]), .B(cnt8[13]), .Z(n1272)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1003_2_lut.init = 16'h8888;
    CCU2D cnt40_263_add_4_21 (.A0(cnt40[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[20]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n995), .COUT(n996), .S0(n133_adj_301[19]), 
          .S1(n133_adj_301[20]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_21.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_21.INJECT1_1 = "NO";
    LUT4 i8_2_lut (.A(cnt8[6]), .B(cnt8[10]), .Z(n31)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i8_2_lut.init = 16'heeee;
    CCU2D cnt40_263_add_4_19 (.A0(cnt40[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n994), .COUT(n995), .S0(n133_adj_301[17]), 
          .S1(n133_adj_301[18]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_19.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_19.INJECT1_1 = "NO";
    LUT4 i987_2_lut (.A(cnt40[14]), .B(cnt40[6]), .Z(n1256)) /* synthesis lut_function=(A (B)) */ ;
    defparam i987_2_lut.init = 16'h8888;
    LUT4 i21_4_lut (.A(n1288), .B(n42), .C(n36), .D(n24), .Z(n44_adj_267)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i21_4_lut.init = 16'hfffd;
    FD1S3IX cnt40_263__i31 (.D(n133_adj_301[31]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[31])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i31.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_4 (.A(clk40hz), .B(n676), .Z(clk40hz_N_194)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_4.init = 16'h6666;
    LUT4 i17_4_lut (.A(cnt8[23]), .B(cnt8[3]), .C(cnt8[29]), .D(cnt8[31]), 
         .Z(n40_adj_268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i9_2_lut (.A(cnt8[20]), .B(cnt8[15]), .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(cnt8[25]), .B(n38_adj_269), .C(n28), .D(cnt8[26]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i19_4_lut.init = 16'hfffe;
    CCU2D cnt40_263_add_4_17 (.A0(cnt40[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n993), .COUT(n994), .S0(n133_adj_301[15]), 
          .S1(n133_adj_301[16]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_17.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_15 (.A0(cnt40[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n992), .COUT(n993), .S0(n133_adj_301[13]), 
          .S1(n133_adj_301[14]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_15.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n41), .B(cnt40[8]), .C(n46), .D(n42_adj_270), 
         .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    FD1S3IX cnt40_263__i30 (.D(n133_adj_301[30]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[30])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i30.GSR = "DISABLED";
    FD1S3IX cnt40_263__i29 (.D(n133_adj_301[29]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[29])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i29.GSR = "DISABLED";
    FD1S3IX cnt40_263__i28 (.D(n133_adj_301[28]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[28])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i28.GSR = "DISABLED";
    FD1S3IX cnt40_263__i27 (.D(n133_adj_301[27]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[27])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i27.GSR = "DISABLED";
    FD1S3IX cnt40_263__i26 (.D(n133_adj_301[26]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[26])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i26.GSR = "DISABLED";
    FD1S3IX cnt40_263__i25 (.D(n133_adj_301[25]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[25])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i25.GSR = "DISABLED";
    FD1S3IX cnt40_263__i24 (.D(n133_adj_301[24]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[24])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i24.GSR = "DISABLED";
    FD1S3IX cnt40_263__i23 (.D(n133_adj_301[23]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[23])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i23.GSR = "DISABLED";
    FD1S3IX cnt40_263__i22 (.D(n133_adj_301[22]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[22])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i22.GSR = "DISABLED";
    FD1S3IX cnt40_263__i21 (.D(n133_adj_301[21]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[21])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i21.GSR = "DISABLED";
    FD1S3IX cnt40_263__i20 (.D(n133_adj_301[20]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[20])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i20.GSR = "DISABLED";
    FD1S3IX cnt40_263__i19 (.D(n133_adj_301[19]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i19.GSR = "DISABLED";
    FD1S3IX cnt40_263__i18 (.D(n133_adj_301[18]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i18.GSR = "DISABLED";
    FD1S3IX cnt40_263__i17 (.D(n133_adj_301[17]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i17.GSR = "DISABLED";
    FD1S3IX cnt40_263__i16 (.D(n133_adj_301[16]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i16.GSR = "DISABLED";
    FD1S3IX cnt40_263__i15 (.D(n133_adj_301[15]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i15.GSR = "DISABLED";
    FD1S3IX cnt40_263__i14 (.D(n133_adj_301[14]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i14.GSR = "DISABLED";
    FD1S3IX cnt40_263__i13 (.D(n133_adj_301[13]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i13.GSR = "DISABLED";
    FD1S3IX cnt40_263__i12 (.D(n133_adj_301[12]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i12.GSR = "DISABLED";
    FD1S3IX cnt40_263__i11 (.D(n133_adj_301[11]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i11.GSR = "DISABLED";
    FD1S3IX cnt40_263__i10 (.D(n133_adj_301[10]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i10.GSR = "DISABLED";
    FD1S3IX cnt40_263__i9 (.D(n133_adj_301[9]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i9.GSR = "DISABLED";
    FD1S3IX cnt40_263__i8 (.D(n133_adj_301[8]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i8.GSR = "DISABLED";
    FD1S3IX cnt40_263__i7 (.D(n133_adj_301[7]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i7.GSR = "DISABLED";
    FD1S3IX cnt40_263__i6 (.D(n133_adj_301[6]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i6.GSR = "DISABLED";
    FD1S3IX cnt40_263__i5 (.D(n133_adj_301[5]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i5.GSR = "DISABLED";
    FD1S3IX cnt40_263__i4 (.D(n133_adj_301[4]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i4.GSR = "DISABLED";
    FD1S3IX cnt40_263__i3 (.D(n133_adj_301[3]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i3.GSR = "DISABLED";
    FD1S3IX cnt40_263__i2 (.D(n133_adj_301[2]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i2.GSR = "DISABLED";
    FD1S3IX cnt40_263__i1 (.D(n133_adj_301[1]), .CK(clk_c), .CD(n676), 
            .Q(cnt40[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263__i1.GSR = "DISABLED";
    FD1S3IX cnt8_262__i31 (.D(n133[31]), .CK(clk_c), .CD(n655), .Q(cnt8[31])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i31.GSR = "DISABLED";
    CCU2D cnt40_263_add_4_13 (.A0(cnt40[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n991), .COUT(n992), .S0(n133_adj_301[11]), 
          .S1(n133_adj_301[12]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_13.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_13.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i30 (.D(n133[30]), .CK(clk_c), .CD(n655), .Q(cnt8[30])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i30.GSR = "DISABLED";
    CCU2D cnt40_263_add_4_11 (.A0(cnt40[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n990), .COUT(n991), .S0(n133_adj_301[9]), 
          .S1(n133_adj_301[10]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_11.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_9 (.A0(cnt40[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n989), .COUT(n990), .S0(n133_adj_301[7]), .S1(n133_adj_301[8]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_9.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_7 (.A0(cnt40[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n988), .COUT(n989), .S0(n133_adj_301[5]), .S1(n133_adj_301[6]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_7.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_5 (.A0(cnt40[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n987), .COUT(n988), .S0(n133_adj_301[3]), .S1(n133_adj_301[4]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_5.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_3 (.A0(cnt40[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n986), .COUT(n987), .S0(n133_adj_301[1]), .S1(n133_adj_301[2]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt40_263_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt40_263_add_4_3.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt40_263_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt40[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n986), .S1(n133_adj_301[0]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(39[14:19])
    defparam cnt40_263_add_4_1.INIT0 = 16'hF000;
    defparam cnt40_263_add_4_1.INIT1 = 16'h0555;
    defparam cnt40_263_add_4_1.INJECT1_0 = "NO";
    defparam cnt40_263_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_31 (.A0(cnt8[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n984), .COUT(n985), .S0(n133[29]), .S1(n133[30]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_31.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_31.INJECT1_1 = "NO";
    LUT4 i17_4_lut_adj_5 (.A(cnt40[20]), .B(cnt40[19]), .C(cnt40[0]), 
         .D(cnt40[21]), .Z(n41)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i17_4_lut_adj_5.init = 16'hfffe;
    LUT4 i1019_3_lut (.A(cnt8[19]), .B(n1276), .C(cnt8[5]), .Z(n1288)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1019_3_lut.init = 16'h8080;
    FD1S3IX cnt8_262__i29 (.D(n133[29]), .CK(clk_c), .CD(n655), .Q(cnt8[29])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i29.GSR = "DISABLED";
    FD1S3IX cnt8_262__i28 (.D(n133[28]), .CK(clk_c), .CD(n655), .Q(cnt8[28])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i28.GSR = "DISABLED";
    FD1S3IX cnt8_262__i27 (.D(n133[27]), .CK(clk_c), .CD(n655), .Q(cnt8[27])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i27.GSR = "DISABLED";
    FD1S3IX cnt8_262__i26 (.D(n133[26]), .CK(clk_c), .CD(n655), .Q(cnt8[26])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i26.GSR = "DISABLED";
    FD1S3IX cnt8_262__i25 (.D(n133[25]), .CK(clk_c), .CD(n655), .Q(cnt8[25])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i25.GSR = "DISABLED";
    FD1S3IX cnt8_262__i24 (.D(n133[24]), .CK(clk_c), .CD(n655), .Q(cnt8[24])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i24.GSR = "DISABLED";
    FD1S3IX cnt8_262__i23 (.D(n133[23]), .CK(clk_c), .CD(n655), .Q(cnt8[23])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i23.GSR = "DISABLED";
    FD1S3IX cnt8_262__i22 (.D(n133[22]), .CK(clk_c), .CD(n655), .Q(cnt8[22])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i22.GSR = "DISABLED";
    FD1S3IX cnt8_262__i21 (.D(n133[21]), .CK(clk_c), .CD(n655), .Q(cnt8[21])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i21.GSR = "DISABLED";
    FD1S3IX cnt8_262__i20 (.D(n133[20]), .CK(clk_c), .CD(n655), .Q(cnt8[20])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i20.GSR = "DISABLED";
    FD1S3IX cnt8_262__i19 (.D(n133[19]), .CK(clk_c), .CD(n655), .Q(cnt8[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i19.GSR = "DISABLED";
    FD1S3IX cnt8_262__i18 (.D(n133[18]), .CK(clk_c), .CD(n655), .Q(cnt8[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i18.GSR = "DISABLED";
    FD1S3IX cnt8_262__i17 (.D(n133[17]), .CK(clk_c), .CD(n655), .Q(cnt8[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i17.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_29 (.A0(cnt8[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n983), .COUT(n984), .S0(n133[27]), .S1(n133[28]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_29.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_29.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i16 (.D(n133[16]), .CK(clk_c), .CD(n655), .Q(cnt8[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i16.GSR = "DISABLED";
    FD1S3IX cnt8_262__i15 (.D(n133[15]), .CK(clk_c), .CD(n655), .Q(cnt8[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i15.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_27 (.A0(cnt8[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n982), .COUT(n983), .S0(n133[25]), .S1(n133[26]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_27.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_27.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i14 (.D(n133[14]), .CK(clk_c), .CD(n655), .Q(cnt8[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i14.GSR = "DISABLED";
    FD1S3IX cnt8_262__i13 (.D(n133[13]), .CK(clk_c), .CD(n655), .Q(cnt8[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i13.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_25 (.A0(cnt8[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n981), .COUT(n982), .S0(n133[23]), .S1(n133[24]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_25.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_25.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i12 (.D(n133[12]), .CK(clk_c), .CD(n655), .Q(cnt8[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i12.GSR = "DISABLED";
    FD1S3IX cnt8_262__i11 (.D(n133[11]), .CK(clk_c), .CD(n655), .Q(cnt8[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i11.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_23 (.A0(cnt8[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n980), .COUT(n981), .S0(n133[21]), .S1(n133[22]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_23.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_21 (.A0(cnt8[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n979), .COUT(n980), .S0(n133[19]), .S1(n133[20]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_21.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_19 (.A0(cnt8[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n978), .COUT(n979), .S0(n133[17]), .S1(n133[18]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_19.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_17 (.A0(cnt8[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n977), .COUT(n978), .S0(n133[15]), .S1(n133[16]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_17.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_15 (.A0(cnt8[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n976), .COUT(n977), .S0(n133[13]), .S1(n133[14]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_15.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_15.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i10 (.D(n133[10]), .CK(clk_c), .CD(n655), .Q(cnt8[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i10.GSR = "DISABLED";
    FD1S3IX cnt8_262__i9 (.D(n133[9]), .CK(clk_c), .CD(n655), .Q(cnt8[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i9.GSR = "DISABLED";
    FD1S3IX cnt8_262__i8 (.D(n133[8]), .CK(clk_c), .CD(n655), .Q(cnt8[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i8.GSR = "DISABLED";
    FD1S3IX cnt8_262__i7 (.D(n133[7]), .CK(clk_c), .CD(n655), .Q(cnt8[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i7.GSR = "DISABLED";
    LUT4 i22_4_lut_adj_6 (.A(n25), .B(n44), .C(n38), .D(n26), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i22_4_lut_adj_6.init = 16'hfffe;
    LUT4 i18_4_lut (.A(cnt40[25]), .B(cnt40[16]), .C(cnt40[9]), .D(cnt40[13]), 
         .Z(n42_adj_270)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(35[7:21])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i13_4_lut (.A(cnt8[18]), .B(cnt8[11]), .C(cnt8[2]), .D(cnt8[21]), 
         .Z(n36)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_7 (.A(cnt8[0]), .B(cnt8[28]), .Z(n24)) /* synthesis lut_function=(A+(B)) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i1_2_lut_adj_7.init = 16'heeee;
    CCU2D cnt8_262_add_4_13 (.A0(cnt8[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n975), .COUT(n976), .S0(n133[11]), .S1(n133[12]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_13.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_11 (.A0(cnt8[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n974), .COUT(n975), .S0(n133[9]), .S1(n133[10]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_11.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_9 (.A0(cnt8[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n973), .COUT(n974), .S0(n133[7]), .S1(n133[8]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_9.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_7 (.A0(cnt8[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n972), .COUT(n973), .S0(n133[5]), .S1(n133[6]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_7.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i6 (.D(n133[6]), .CK(clk_c), .CD(n655), .Q(cnt8[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i6.GSR = "DISABLED";
    FD1S3IX cnt8_262__i5 (.D(n133[5]), .CK(clk_c), .CD(n655), .Q(cnt8[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i5.GSR = "DISABLED";
    FD1S3IX cnt8_262__i4 (.D(n133[4]), .CK(clk_c), .CD(n655), .Q(cnt8[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i4.GSR = "DISABLED";
    FD1S3IX cnt8_262__i3 (.D(n133[3]), .CK(clk_c), .CD(n655), .Q(cnt8[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i3.GSR = "DISABLED";
    CCU2D cnt8_262_add_4_5 (.A0(cnt8[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n971), .COUT(n972), .S0(n133[3]), .S1(n133[4]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_5.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt8_262_add_4_3 (.A0(cnt8[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n970), .COUT(n971), .S0(n133[1]), .S1(n133[2]));   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt8_262_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt8_262_add_4_3.INJECT1_0 = "NO";
    defparam cnt8_262_add_4_3.INJECT1_1 = "NO";
    FD1S3IX cnt8_262__i2 (.D(n133[2]), .CK(clk_c), .CD(n655), .Q(cnt8[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i2.GSR = "DISABLED";
    FD1S3IX cnt8_262__i1 (.D(n133[1]), .CK(clk_c), .CD(n655), .Q(cnt8[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(25[13:17])
    defparam cnt8_262__i1.GSR = "DISABLED";
    LUT4 i15_4_lut (.A(cnt8[1]), .B(cnt8[30]), .C(cnt8[27]), .D(cnt8[22]), 
         .Z(n38_adj_269)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/desktop/vhdl_exp/exp5/frequencydivider.vhd(21[7:20])
    defparam i15_4_lut.init = 16'hfffe;
    
endmodule
