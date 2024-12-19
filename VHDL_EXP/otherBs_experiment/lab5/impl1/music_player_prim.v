// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Tue Nov 29 23:40:38 2022
//
// Verilog Description of module music_player
//

module music_player (key, auto, clk, col, row, beep, digit, en);   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(3[8:20])
    input [2:0]key;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    input auto;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(6[4:8])
    input clk;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    input [3:0]col;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(8[4:7])
    output [3:0]row;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(9[4:7])
    output beep;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(10[4:8])
    output [7:0]digit;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    output en;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(12[4:6])
    
    wire auto_c /* synthesis is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(6[4:8])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    wire clk_10 /* synthesis is_clock=1, SET_AS_NETWORK=clk_10 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(21[8:14])
    wire music_num /* synthesis is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(24[8:17])
    wire auto_N_30 /* synthesis is_inv_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(18[8:13])
    wire music_num_N_62 /* synthesis is_inv_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(25[8:11])
    
    wire GND_net, VCC_net, key_c_2, key_c_1, key_c_0, col_c_3, col_c_2, 
        col_c_1, col_c_0, row_c_1, row_c_0, beep_c, digit_c_6, digit_c_5, 
        digit_c_4, digit_c_3, digit_c_2, digit_c_1, digit_c_0, clk_music, 
        auto1;
    wire [19:0]cnt;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(19[8:11])
    wire [23:0]N;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(20[8:9])
    
    wire clk8hz;
    wire [3:0]tone1;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(23[8:13])
    wire [3:0]tone2;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(23[14:19])
    wire [3:0]tone;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(23[20:24])
    
    wire num, n1304, music_num_N_58;
    wire [0:0]num_N_60;
    
    wire auto1_N_28, cnt_19__N_55, n1291, clk_music_N_56, n1266, n1262, 
        n1265, n1264, n1408, n1400, clk_c_enable_17;
    wire [7:0]digit_7__N_195;
    wire [7:0]ptr;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(14[8:11])
    
    wire n1398, n1503, n26, n27, n28, n30, n31, n32, n33, 
        n1300, n305, n304, n10, n1461, clk_c_enable_20, n582, 
        n1299, n105, n104, n103, n102, n101, n100, n99, n98, 
        n97, n96, n95, n94, n93, n92, n91, n90, n89, n88, 
        n87, n86, n7, n14, n1489, n465, n7_adj_253, n1298, n14_adj_254, 
        n1512, n1297, n7_adj_255, n1296, n1295, n1294, n7_adj_256, 
        n545, n7_adj_257, n1511, n1293, n1292, n1487, n302, n1263, 
        clk_c_enable_12, n1502, n307, n520, n1509, n1501, n1500, 
        n1499, n4, n1498, n1497, n470, n1508, n1496;
    
    VHI i2 (.Z(VCC_net));
    INV i1240 (.A(music_num), .Z(music_num_N_62));
    OB en_pad (.I(GND_net), .O(en));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(12[4:6])
    OB digit_pad_0 (.I(digit_c_0), .O(digit[0]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    OB digit_pad_1 (.I(digit_c_1), .O(digit[1]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    FD1S3AX clk_music_53 (.D(clk_music_N_56), .CK(clk_c), .Q(clk_music));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(173[1] 181[8])
    defparam clk_music_53.GSR = "DISABLED";
    OB digit_pad_2 (.I(digit_c_2), .O(digit[2]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    FD1S3AX beep_54 (.D(clk_music), .CK(clk_c), .Q(beep_c));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(173[1] 181[8])
    defparam beep_54.GSR = "DISABLED";
    FD1S3AX auto1_47 (.D(auto1_N_28), .CK(auto_N_30), .Q(auto1));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(70[1] 76[9])
    defparam auto1_47.GSR = "DISABLED";
    ROM256X1A mux_9_Mux_0 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), .AD3(ptr[3]), 
            .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), .AD7(ptr[7]), 
            .DO0(n28)) /* synthesis initstate=0x00000001E003DE0007800F7BDE00F7800F7803DE003DE1E003DE0007800F7BDE */ ;
    defparam mux_9_Mux_0.initval = 256'h00000001E003DE0007800F7BDE00F7800F7803DE003DE1E003DE0007800F7BDE;
    FD1P3AX tone1_i0_i0 (.D(n307), .SP(clk_c_enable_12), .CK(clk_c), .Q(tone1[0]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(103[1] 135[8])
    defparam tone1_i0_i0.GSR = "DISABLED";
    OB digit_pad_3 (.I(digit_c_3), .O(digit[3]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    OB digit_pad_4 (.I(digit_c_4), .O(digit[4]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    OB digit_pad_5 (.I(digit_c_5), .O(digit[5]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    OB digit_pad_6 (.I(digit_c_6), .O(digit[6]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    OB digit_pad_7 (.I(GND_net), .O(digit[7]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(11[4:9])
    ROM256X1A mux_9_Mux_1 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), .AD3(ptr[3]), 
            .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), .AD7(ptr[7]), 
            .DO0(n27)) /* synthesis initstate=0x000000000F7BDE00003DE000001EF78000007BDE0000000F7BDE00003DE00000 */ ;
    defparam mux_9_Mux_1.initval = 256'h000000000F7BDE00003DE000001EF78000007BDE0000000F7BDE00003DE00000;
    IB key_pad_2 (.I(key[2]), .O(key_c_2));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    CCU2D equal_59_20 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1266), 
          .S0(cnt_19__N_55));
    defparam equal_59_20.INIT0 = 16'hFFFF;
    defparam equal_59_20.INIT1 = 16'h0000;
    defparam equal_59_20.INJECT1_0 = "NO";
    defparam equal_59_20.INJECT1_1 = "NO";
    CCU2D cnt_254_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1300), .S0(n86));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_21.INIT1 = 16'h0000;
    defparam cnt_254_add_4_21.INJECT1_0 = "NO";
    defparam cnt_254_add_4_21.INJECT1_1 = "NO";
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(8[4:7])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(8[4:7])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(8[4:7])
    LUT4 i23_3_lut_4_lut_4_lut_4_lut (.A(n1501), .B(n1499), .C(n1500), 
         .D(tone[3]), .Z(N[5])) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B !(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i23_3_lut_4_lut_4_lut_4_lut.init = 16'h11ac;
    LUT4 tone_3__I_0_Mux_1_i15_3_lut_4_lut (.A(n1498), .B(n1501), .C(tone[3]), 
         .D(n7_adj_256), .Z(digit_7__N_195[1])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam tone_3__I_0_Mux_1_i15_3_lut_4_lut.init = 16'h1f10;
    CCU2D cnt_254_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1299), .COUT(n1300), .S0(n88), .S1(n87));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_19.INJECT1_0 = "NO";
    defparam cnt_254_add_4_19.INJECT1_1 = "NO";
    ROM256X1A mux_10_Mux_0 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), 
            .AD3(ptr[3]), .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), 
            .AD7(ptr[7]), .DO0(n33)) /* synthesis initstate=0x0000001E07E00F7E00300F7E00300C3F7BB7C030FC0060187E00300F7E003030 */ ;
    defparam mux_10_Mux_0.initval = 256'h0000001E07E00F7E00300F7E00300C3F7BB7C030FC0060187E00300F7E003030;
    LUT4 tone1_3__I_0_56_i4_4_lut (.A(n465), .B(tone1[3]), .C(auto1), 
         .D(n470), .Z(tone[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam tone1_3__I_0_56_i4_4_lut.init = 16'hcac0;
    LUT4 tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut (.A(n1489), .B(n14_adj_254), 
         .C(tone[3]), .D(n1500), .Z(N[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 tone_3__I_0_Mux_6_i15_3_lut_4_lut (.A(n1498), .B(n1501), .C(tone[3]), 
         .D(n7_adj_253), .Z(N[6])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam tone_3__I_0_Mux_6_i15_3_lut_4_lut.init = 16'h1f10;
    CCU2D cnt_254_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1298), .COUT(n1299), .S0(n90), .S1(n89));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_17.INJECT1_0 = "NO";
    defparam cnt_254_add_4_17.INJECT1_1 = "NO";
    LUT4 i325_2_lut (.A(col_c_1), .B(col_c_2), .Z(n520)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(107[1] 113[10])
    defparam i325_2_lut.init = 16'h6666;
    LUT4 tone_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut_4_lut (.A(n1501), .B(n1499), 
         .C(n1500), .D(tone[3]), .Z(digit_7__N_195[6])) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (D)+!B !(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_6_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h116e;
    LUT4 i1198_2_lut_rep_11_2_lut_4_lut (.A(tone2[1]), .B(tone1[1]), .C(auto1), 
         .D(n1501), .Z(n1489)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+(D))+!B (D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i1198_2_lut_rep_11_2_lut_4_lut.init = 16'h0035;
    LUT4 i1214_2_lut_rep_13 (.A(clk8hz), .B(n582), .Z(clk_c_enable_20)) /* synthesis lut_function=(!(A+!(B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam i1214_2_lut_rep_13.init = 16'h4444;
    LUT4 i3_4_lut (.A(col_c_0), .B(n520), .C(col_c_3), .D(n302), .Z(n1304)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(104[1] 134[8])
    defparam i3_4_lut.init = 16'h0080;
    LUT4 tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut (.A(n1489), .B(n7_adj_255), 
         .C(tone[3]), .D(n1500), .Z(N[10])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_10_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    LUT4 i1210_2_lut_3_lut (.A(clk8hz), .B(n582), .C(music_num), .Z(clk_c_enable_17)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam i1210_2_lut_3_lut.init = 16'h0404;
    LUT4 tone1_3__I_0_56_i1_3_lut_rep_22 (.A(tone2[0]), .B(tone1[0]), .C(auto1), 
         .Z(n1500)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam tone1_3__I_0_56_i1_3_lut_rep_22.init = 16'hcaca;
    LUT4 i238_1_lut_rep_19_3_lut (.A(tone2[0]), .B(tone1[0]), .C(auto1), 
         .Z(n1497)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i238_1_lut_rep_19_3_lut.init = 16'h3535;
    CCU2D cnt_254_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1297), .COUT(n1298), .S0(n92), .S1(n91));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_15.INJECT1_0 = "NO";
    defparam cnt_254_add_4_15.INJECT1_1 = "NO";
    LUT4 i723_4_lut_then_4_lut (.A(n1500), .B(tone1[1]), .C(tone[3]), 
         .D(n1501), .Z(n1509)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i723_4_lut_then_4_lut.init = 16'h0820;
    CCU2D cnt_254_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1296), .COUT(n1297), .S0(n94), .S1(n93));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_13.INJECT1_0 = "NO";
    defparam cnt_254_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_254_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1295), 
          .COUT(n1296), .S0(n96), .S1(n95));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_11.INJECT1_0 = "NO";
    defparam cnt_254_add_4_11.INJECT1_1 = "NO";
    LUT4 i193_1_lut (.A(row_c_0), .Z(row_c_1)) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(84[1] 88[8])
    defparam i193_1_lut.init = 16'h5555;
    LUT4 i723_4_lut_else_4_lut (.A(n1500), .B(tone2[1]), .C(tone[3]), 
         .D(n1501), .Z(n1508)) /* synthesis lut_function=(!((B (C+!(D))+!B ((D)+!C))+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i723_4_lut_else_4_lut.init = 16'h0820;
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_4_lut_then_4_lut (.A(n1501), .B(tone[3]), 
         .C(n1500), .D(tone1[1]), .Z(n1512)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A ((C (D))+!B))) */ ;
    defparam tone_3__I_0_Mux_12_i15_4_lut_4_lut_then_4_lut.init = 16'h2664;
    CCU2D cnt_254_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1294), 
          .COUT(n1295), .S0(n98), .S1(n97));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_9.INJECT1_0 = "NO";
    defparam cnt_254_add_4_9.INJECT1_1 = "NO";
    LUT4 tone_3__I_0_Mux_12_i15_4_lut_4_lut_else_4_lut (.A(n1501), .B(tone[3]), 
         .C(n1500), .D(tone2[1]), .Z(n1511)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A ((C (D))+!B))) */ ;
    defparam tone_3__I_0_Mux_12_i15_4_lut_4_lut_else_4_lut.init = 16'h2664;
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(9[4:7])
    LUT4 tone1_3__I_0_56_i3_3_lut_rep_23 (.A(tone2[2]), .B(tone1[2]), .C(auto1), 
         .Z(n1501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam tone1_3__I_0_56_i3_3_lut_rep_23.init = 16'hcaca;
    CCU2D cnt_254_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1293), 
          .COUT(n1294), .S0(n100), .S1(n99));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_7.INJECT1_0 = "NO";
    defparam cnt_254_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt_254__i19 (.D(n86), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i19.GSR = "DISABLED";
    FD1S3IX cnt_254__i18 (.D(n87), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i18.GSR = "DISABLED";
    FD1S3IX cnt_254__i17 (.D(n88), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i17.GSR = "DISABLED";
    FD1S3IX cnt_254__i16 (.D(n89), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i16.GSR = "DISABLED";
    FD1S3IX cnt_254__i15 (.D(n90), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i15.GSR = "DISABLED";
    FD1S3IX cnt_254__i14 (.D(n91), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i14.GSR = "DISABLED";
    FD1S3IX cnt_254__i13 (.D(n92), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i13.GSR = "DISABLED";
    FD1S3IX cnt_254__i12 (.D(n93), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i12.GSR = "DISABLED";
    FD1S3IX cnt_254__i11 (.D(n94), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i11.GSR = "DISABLED";
    FD1S3IX cnt_254__i10 (.D(n95), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i10.GSR = "DISABLED";
    FD1S3IX cnt_254__i9 (.D(n96), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i9.GSR = "DISABLED";
    FD1S3IX cnt_254__i8 (.D(n97), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i8.GSR = "DISABLED";
    FD1S3IX cnt_254__i7 (.D(n98), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i7.GSR = "DISABLED";
    FD1S3IX cnt_254__i6 (.D(n99), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i6.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut (.A(n1489), .B(n7_adj_256), 
         .C(tone[3]), .D(n1500), .Z(N[3])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h0cac;
    FD1S3IX cnt_254__i5 (.D(n100), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i5.GSR = "DISABLED";
    FD1S3IX cnt_254__i4 (.D(n101), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i4.GSR = "DISABLED";
    FD1S3IX cnt_254__i3 (.D(n102), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i3.GSR = "DISABLED";
    FD1S3IX cnt_254__i2 (.D(n103), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i2.GSR = "DISABLED";
    FD1S3IX cnt_254__i1 (.D(n104), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i1.GSR = "DISABLED";
    LUT4 tone_1__bdd_3_lut_1221 (.A(n1499), .B(n1500), .C(n1501), .Z(n1461)) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;
    defparam tone_1__bdd_3_lut_1221.init = 16'hdada;
    CCU2D cnt_254_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1292), 
          .COUT(n1293), .S0(n102), .S1(n101));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_5.INJECT1_0 = "NO";
    defparam cnt_254_add_4_5.INJECT1_1 = "NO";
    LUT4 tone_3__I_0_Mux_10_i7_3_lut_3_lut (.A(n1500), .B(n1499), .C(n1501), 
         .Z(n7_adj_255)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_10_i7_3_lut_3_lut.init = 16'ha6a6;
    LUT4 i349_2_lut_2_lut_4_lut (.A(tone2[2]), .B(tone1[2]), .C(auto1), 
         .D(tone[3]), .Z(n545)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i349_2_lut_2_lut_4_lut.init = 16'hca35;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(auto1), .B(clk_10), .C(n1398), 
         .D(n1496), .Z(clk_c_enable_12)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i2_3_lut_4_lut (.A(auto1), .B(clk_10), .C(n1398), .D(key_c_2), 
         .Z(n1408)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    defparam i2_3_lut_4_lut.init = 16'h2000;
    CCU2D equal_59_20_1070 (.A0(cnt[3]), .B0(N[3]), .C0(cnt[2]), .D0(N[2]), 
          .A1(cnt[1]), .B1(N[1]), .C1(cnt[0]), .D1(N[0]), .CIN(n1265), 
          .COUT(n1266));
    defparam equal_59_20_1070.INIT0 = 16'h9009;
    defparam equal_59_20_1070.INIT1 = 16'h9009;
    defparam equal_59_20_1070.INJECT1_0 = "YES";
    defparam equal_59_20_1070.INJECT1_1 = "YES";
    LUT4 tone_3__I_0_Mux_3_i7_3_lut_3_lut (.A(n1500), .B(n1499), .C(n1501), 
         .Z(n7_adj_257)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_3_i7_3_lut_3_lut.init = 16'h6c6c;
    LUT4 i2_3_lut (.A(key_c_0), .B(key_c_1), .C(key_c_2), .Z(music_num_N_58)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(130[1] 133[10])
    defparam i2_3_lut.init = 16'h0808;
    OB beep_pad (.I(beep_c), .O(beep));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(10[4:8])
    FD1P3AX tone1_i0_i3 (.D(n304), .SP(clk_c_enable_12), .CK(clk_c), .Q(tone1[3]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(103[1] 135[8])
    defparam tone1_i0_i3.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_1_i7_3_lut_4_lut_3_lut (.A(n1500), .B(n1499), .C(n1501), 
         .Z(n7_adj_256)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B !(C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam tone_3__I_0_Mux_1_i7_3_lut_4_lut_3_lut.init = 16'h9e9e;
    LUT4 mux_127_i4_4_lut (.A(row_c_0), .B(key_c_1), .C(n302), .D(n1400), 
         .Z(n304)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(104[1] 134[8])
    defparam mux_127_i4_4_lut.init = 16'h3a30;
    FD1P3AX tone1_i0_i1 (.D(n1304), .SP(clk_c_enable_12), .CK(clk_c), 
            .Q(tone1[1]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(103[1] 135[8])
    defparam tone1_i0_i1.GSR = "DISABLED";
    LUT4 i276_1_lut (.A(num), .Z(num_N_60[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(143[14:17])
    defparam i276_1_lut.init = 16'h5555;
    LUT4 i734_3_lut_4_lut (.A(n1500), .B(n1499), .C(n1501), .D(tone[3]), 
         .Z(N[13])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam i734_3_lut_4_lut.init = 16'h001e;
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(9[4:7])
    LUT4 i731_4_lut_then_4_lut (.A(tone[3]), .B(n1501), .C(tone1[1]), 
         .D(n1500), .Z(n1503)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B (C+!(D))))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i731_4_lut_then_4_lut.init = 16'h0540;
    CCU2D cnt_254_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1291), 
          .COUT(n1292), .S0(n104), .S1(n103));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_254_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_254_add_4_3.INJECT1_0 = "NO";
    defparam cnt_254_add_4_3.INJECT1_1 = "NO";
    LUT4 i710_2_lut_3_lut_3_lut (.A(n1501), .B(n1500), .C(n1499), .Z(n14)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i710_2_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i3_4_lut_adj_6 (.A(col_c_0), .B(col_c_1), .C(col_c_2), .D(col_c_3), 
         .Z(n1400)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(104[1] 134[8])
    defparam i3_4_lut_adj_6.init = 16'h0080;
    LUT4 clk_music_I_0_2_lut (.A(clk_music), .B(cnt_19__N_55), .Z(clk_music_N_56)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(174[3] 179[9])
    defparam clk_music_I_0_2_lut.init = 16'h6666;
    LUT4 col_c_1_bdd_4_lut (.A(col_c_1), .B(col_c_3), .C(col_c_0), .D(col_c_2), 
         .Z(n1487)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !(B (C (D))))) */ ;
    defparam col_c_1_bdd_4_lut.init = 16'h4880;
    LUT4 auto1_I_0_1_lut (.A(auto1), .Z(auto1_N_28)) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[4:15])
    defparam auto1_I_0_1_lut.init = 16'h5555;
    PFUMX i1224 (.BLUT(n1502), .ALUT(n1503), .C0(auto1), .Z(N[11]));
    FD1S3AX cq_48 (.D(row_c_1), .CK(clk_10), .Q(row_c_0)) /* synthesis lse_init_val=0 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(84[1] 88[8])
    defparam cq_48.GSR = "DISABLED";
    OB row_pad_2 (.I(VCC_net), .O(row[2]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(9[4:7])
    LUT4 i722_2_lut_rep_20_4_lut (.A(tone2[1]), .B(tone1[1]), .C(auto1), 
         .D(n1500), .Z(n1498)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i722_2_lut_rep_20_4_lut.init = 16'hca00;
    FD1P3AX tone1_i0_i2 (.D(n305), .SP(clk_c_enable_12), .CK(clk_c), .Q(tone1[2]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(103[1] 135[8])
    defparam tone1_i0_i2.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_3_i15_3_lut_4_lut (.A(n1498), .B(n1501), .C(tone[3]), 
         .D(n7_adj_257), .Z(digit_7__N_195[3])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam tone_3__I_0_Mux_3_i15_3_lut_4_lut.init = 16'h1f10;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB row_pad_3 (.I(VCC_net), .O(row[3]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(9[4:7])
    FD1S3IX cnt_254__i0 (.D(n105), .CK(clk_c), .CD(cnt_19__N_55), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254__i0.GSR = "DISABLED";
    CCU2D cnt_254_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1291), 
          .S1(n105));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(178[12:15])
    defparam cnt_254_add_4_1.INIT0 = 16'hF000;
    defparam cnt_254_add_4_1.INIT1 = 16'h0555;
    defparam cnt_254_add_4_1.INJECT1_0 = "NO";
    defparam cnt_254_add_4_1.INJECT1_1 = "NO";
    PFUMX i1215 (.BLUT(n1461), .ALUT(n14_adj_254), .C0(tone[3]), .Z(N[8]));
    LUT4 mux_127_i1_4_lut (.A(col_c_3), .B(key_c_1), .C(n302), .D(n4), 
         .Z(n307)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(104[1] 134[8])
    defparam mux_127_i1_4_lut.init = 16'hcac0;
    LUT4 tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut (.A(n1501), .B(tone[3]), 
         .C(n1499), .Z(N[9])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_9_i15_3_lut_3_lut_3_lut.init = 16'h3434;
    LUT4 i1_3_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), .Z(n4)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4848;
    LUT4 i731_4_lut_else_4_lut (.A(tone2[1]), .B(tone[3]), .C(n1501), 
         .D(n1500), .Z(n1502)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i731_4_lut_else_4_lut.init = 16'h1120;
    LUT4 i1_4_lut (.A(n1408), .B(n1496), .C(key_c_0), .D(key_c_1), .Z(n302)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    defparam i1_4_lut.init = 16'h0220;
    LUT4 i2_3_lut_4_lut_adj_7 (.A(n1499), .B(n1501), .C(n1500), .D(tone[3]), 
         .Z(N[0])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam i2_3_lut_4_lut_adj_7.init = 16'h0070;
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(8[4:7])
    IB clk_pad (.I(clk), .O(clk_c));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    IB auto_pad (.I(auto), .O(auto_c));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(6[4:8])
    IB key_pad_0 (.I(key[0]), .O(key_c_0));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    IB key_pad_1 (.I(key[1]), .O(key_c_1));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(5[4:7])
    LUT4 i729_4_lut (.A(n1400), .B(n302), .C(n1487), .D(row_c_0), .Z(n305)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(104[1] 134[8])
    defparam i729_4_lut.init = 16'h3022;
    ROM256X1A mux_9_Mux_2 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), .AD3(ptr[3]), 
            .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), .AD7(ptr[7]), 
            .DO0(n26)) /* synthesis initstate=0x00000000000000F787BDEF780000003DEF780000F7BDE0000000F787BDEF7800 */ ;
    defparam mux_9_Mux_2.initval = 256'h00000000000000F787BDEF780000003DEF780000F7BDE0000000F787BDEF7800;
    ROM256X1A mux_10_Mux_1 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), 
            .AD3(ptr[3]), .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), 
            .AD7(ptr[7]), .DO0(n32)) /* synthesis initstate=0x0000000007E00F000787EF7EF0300DBF7807C036FC00601B000787EF7EF03036 */ ;
    defparam mux_10_Mux_1.initval = 256'h0000000007E00F000787EF7EF0300DBF7807C036FC00601B000787EF7EF03036;
    ROM256X1A mux_10_Mux_2 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), 
            .AD3(ptr[3]), .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), 
            .AD7(ptr[7]), .DO0(n31)) /* synthesis initstate=0x0000000007E1E07E07B7E07E00300DBF7BB7C00000030FC07E07B7E07E003036 */ ;
    defparam mux_10_Mux_2.initval = 256'h0000000007E1E07E07B7E07E00300DBF7BB7C00000030FC07E07B7E07E003036;
    ROM256X1A mux_10_Mux_3 (.AD0(ptr[0]), .AD1(ptr[1]), .AD2(ptr[2]), 
            .AD3(ptr[3]), .AD4(ptr[4]), .AD5(ptr[5]), .AD6(ptr[6]), 
            .AD7(ptr[7]), .DO0(n30)) /* synthesis initstate=0x0000001EF00C0000F0000000F787E00000001F8001F8000000F0000000F78780 */ ;
    defparam mux_10_Mux_3.initval = 256'h0000001EF00C0000F0000000F787E00000001F8001F8000000F0000000F78780;
    FD1P3AX music_num_50 (.D(music_num_N_58), .SP(auto1_N_28), .CK(clk_10), 
            .Q(music_num));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(103[1] 135[8])
    defparam music_num_50.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut (.A(n1500), .B(n1499), 
         .C(tone[3]), .D(n1501), .Z(digit_7__N_195[2])) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (C (D)+!C !(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(156[1] 168[10])
    defparam tone_3__I_0_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'h0f7a;
    LUT4 tone_2__bdd_4_lut (.A(n1501), .B(tone[3]), .C(n1499), .D(n1500), 
         .Z(N[2])) /* synthesis lut_function=(!(A (B+(C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam tone_2__bdd_4_lut.init = 16'h1242;
    LUT4 i724_2_lut_3_lut_3_lut (.A(n1501), .B(n1499), .C(n1500), .Z(n14_adj_254)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i724_2_lut_3_lut_3_lut.init = 16'h1414;
    LUT4 tone1_3__I_0_56_i2_3_lut_rep_21 (.A(tone2[1]), .B(tone1[1]), .C(auto1), 
         .Z(n1499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam tone1_3__I_0_56_i2_3_lut_rep_21.init = 16'hcaca;
    LUT4 i777_1_lut_2_lut_4_lut (.A(tone2[1]), .B(tone1[1]), .C(auto1), 
         .D(n1500), .Z(n10)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (C (D))))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(151[1] 155[8])
    defparam i777_1_lut_2_lut_4_lut.init = 16'h35ff;
    PFUMX i1230 (.BLUT(n1511), .ALUT(n1512), .C0(auto1), .Z(N[12]));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX tone_3__I_0_Mux_1_i15 (.BLUT(n7), .ALUT(n14), .C0(tone[3]), 
          .Z(N[1]));
    PFUMX i1228 (.BLUT(n1508), .ALUT(n1509), .C0(auto1), .Z(N[4]));
    VLO i1 (.Z(GND_net));
    FD1S3AX num_51 (.D(num_N_60[0]), .CK(music_num_N_62), .Q(num));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(141[1] 145[8])
    defparam num_51.GSR = "DISABLED";
    GSR GSR_INST (.GSR(music_num_N_62));
    freqdivider U1 (.clk_c(clk_c), .GND_net(GND_net), .clk_10(clk_10), 
            .clk8hz(clk8hz), .n1496(n1496), .n1398(n1398), .n582(n582));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(55[4:15])
    song U3 (.clk_c(clk_c), .clk_c_enable_17(clk_c_enable_17), .n25({n26, 
         n27, n28}), .ptr({ptr}), .clk_c_enable_20(clk_c_enable_20), 
         .GND_net(GND_net), .n464({n465, Open_0, Open_1, Open_2}), 
         .n29({n30, n31, n32, n33}), .n470(n470), .\tone2[1] (tone2[1]), 
         .num(num), .\tone2[2] (tone2[2]), .\tone2[0] (tone2[0]));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(63[4:8])
    CCU2D equal_59_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[19]), .B1(cnt[18]), .C1(GND_net), .D1(GND_net), .COUT(n1262));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(174[6:13])
    defparam equal_59_0.INIT0 = 16'hF000;
    defparam equal_59_0.INIT1 = 16'h1111;
    defparam equal_59_0.INJECT1_0 = "NO";
    defparam equal_59_0.INJECT1_1 = "YES";
    CCU2D equal_59_18 (.A0(cnt[7]), .B0(N[7]), .C0(cnt[6]), .D0(N[6]), 
          .A1(cnt[5]), .B1(N[5]), .C1(cnt[4]), .D1(N[4]), .CIN(n1264), 
          .COUT(n1265));
    defparam equal_59_18.INIT0 = 16'h9009;
    defparam equal_59_18.INIT1 = 16'h9009;
    defparam equal_59_18.INJECT1_0 = "YES";
    defparam equal_59_18.INJECT1_1 = "YES";
    CCU2D equal_59_16 (.A0(cnt[11]), .B0(N[11]), .C0(cnt[10]), .D0(N[10]), 
          .A1(cnt[9]), .B1(N[9]), .C1(cnt[8]), .D1(N[8]), .CIN(n1263), 
          .COUT(n1264));
    defparam equal_59_16.INIT0 = 16'h9009;
    defparam equal_59_16.INIT1 = 16'h9009;
    defparam equal_59_16.INJECT1_0 = "YES";
    defparam equal_59_16.INJECT1_1 = "YES";
    INV i1239 (.A(auto_c), .Z(auto_N_30));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(6[4:8])
    seg U2 (.digit_c_0(digit_c_0), .clk_c(clk_c), .\tone[3] (tone[3]), 
        .n1499(n1499), .\tone1[0] (tone1[0]), .n1501(n1501), .\tone2[0] (tone2[0]), 
        .digit_c_4(digit_c_4), .n1497(n1497), .digit_c_5(digit_c_5), .n545(n545), 
        .n10(n10), .digit_c_6(digit_c_6), .\digit_7__N_195[6] (digit_7__N_195[6]), 
        .digit_c_3(digit_c_3), .\digit_7__N_195[3] (digit_7__N_195[3]), 
        .digit_c_2(digit_c_2), .\digit_7__N_195[2] (digit_7__N_195[2]), 
        .digit_c_1(digit_c_1), .\digit_7__N_195[1] (digit_7__N_195[1]), 
        .n1500(n1500), .n7(n7), .n7_adj_1(n7_adj_253), .auto1(auto1));   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(59[4:7])
    CCU2D equal_59_14 (.A0(cnt[17]), .B0(cnt[16]), .C0(cnt[15]), .D0(cnt[14]), 
          .A1(cnt[13]), .B1(N[13]), .C1(cnt[12]), .D1(N[12]), .CIN(n1262), 
          .COUT(n1263));
    defparam equal_59_14.INIT0 = 16'h0001;
    defparam equal_59_14.INIT1 = 16'h9009;
    defparam equal_59_14.INJECT1_0 = "YES";
    defparam equal_59_14.INJECT1_1 = "YES";
    
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
// Verilog Description of module freqdivider
//

module freqdivider (clk_c, GND_net, clk_10, clk8hz, n1496, n1398, 
            n582);
    input clk_c;
    input GND_net;
    output clk_10;
    output clk8hz;
    output n1496;
    output n1398;
    output n582;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    wire clk_10 /* synthesis is_clock=1, SET_AS_NETWORK=clk_10 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(21[8:14])
    wire [31:0]count;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(30[12:17])
    
    wire n1488;
    wire [19:0]n85;
    
    wire n1267, clk_10_N_194, clk8hz_N_193, n1281;
    wire [31:0]cnt8hz;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(16[12:18])
    wire [19:0]n85_adj_252;
    
    wire n1282, n1276, n1275, n1285, n1286, n1272, n1273, n1271, 
        n1284, n1280, n1279, n1283, n1270, n18, n20, n1278, 
        n14, n14_adj_238, n10, n1429, n17, n15, n16, n17_adj_239, 
        n16_adj_240, n22, n1269, n1268, n1277, n1274;
    
    FD1S3IX count_257_258__i1 (.D(n85[0]), .CK(clk_c), .CD(n1488), .Q(count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i1.GSR = "DISABLED";
    CCU2D count_257_258_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1267), .S1(n85[0]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_1.INIT0 = 16'hF000;
    defparam count_257_258_add_4_1.INIT1 = 16'h0555;
    defparam count_257_258_add_4_1.INJECT1_0 = "NO";
    defparam count_257_258_add_4_1.INJECT1_1 = "NO";
    FD1S3AX clk_10_28 (.D(clk_10_N_194), .CK(clk_c), .Q(clk_10)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=55, LSE_RLINE=55 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(32[3] 39[10])
    defparam clk_10_28.GSR = "DISABLED";
    FD1S3AX clk8hz_26 (.D(clk8hz_N_193), .CK(clk_c), .Q(clk8hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=15, LSE_LLINE=55, LSE_RLINE=55 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(18[3] 25[10])
    defparam clk8hz_26.GSR = "DISABLED";
    CCU2D cnt8hz_255_256_add_4_11 (.A0(cnt8hz[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1281), .COUT(n1282), .S0(n85_adj_252[9]), 
          .S1(n85_adj_252[10]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_11.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_11.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_21 (.A0(count[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1276), .S0(n85[19]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_21.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_21.INIT1 = 16'h0000;
    defparam count_257_258_add_4_21.INJECT1_0 = "NO";
    defparam count_257_258_add_4_21.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_19 (.A0(count[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1275), .COUT(n1276), .S0(n85[17]), .S1(n85[18]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_19.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_19.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_19.INJECT1_0 = "NO";
    defparam count_257_258_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_19 (.A0(cnt8hz[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[18]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1285), .COUT(n1286), .S0(n85_adj_252[17]), 
          .S1(n85_adj_252[18]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_19.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_19.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_13 (.A0(count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1272), .COUT(n1273), .S0(n85[11]), .S1(n85[12]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_13.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_13.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_13.INJECT1_0 = "NO";
    defparam count_257_258_add_4_13.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_11 (.A0(count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1271), .COUT(n1272), .S0(n85[9]), .S1(n85[10]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_11.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_11.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_11.INJECT1_0 = "NO";
    defparam count_257_258_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_17 (.A0(cnt8hz[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1284), .COUT(n1285), .S0(n85_adj_252[15]), 
          .S1(n85_adj_252[16]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_17.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_9 (.A0(cnt8hz[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1280), .COUT(n1281), .S0(n85_adj_252[7]), 
          .S1(n85_adj_252[8]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_9.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_7 (.A0(cnt8hz[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1279), .COUT(n1280), .S0(n85_adj_252[5]), 
          .S1(n85_adj_252[6]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_7.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_15 (.A0(cnt8hz[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1283), .COUT(n1284), .S0(n85_adj_252[13]), 
          .S1(n85_adj_252[14]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_15.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_15.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_9 (.A0(count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1270), .COUT(n1271), .S0(n85[7]), .S1(n85[8]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_9.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_9.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_9.INJECT1_0 = "NO";
    defparam count_257_258_add_4_9.INJECT1_1 = "NO";
    LUT4 i6_2_lut (.A(count[18]), .B(count[2]), .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i8_4_lut (.A(count[14]), .B(count[15]), .C(count[3]), .D(count[5]), 
         .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i1204_2_lut_rep_10_2_lut (.A(n1496), .B(n1398), .Z(n1488)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1204_2_lut_rep_10_2_lut.init = 16'h4444;
    LUT4 i1189_2_lut_3_lut_3_lut (.A(n1496), .B(clk_10), .C(n1398), .Z(clk_10_N_194)) /* synthesis lut_function=(A (B)+!A !(B (C)+!B !(C))) */ ;
    defparam i1189_2_lut_3_lut_3_lut.init = 16'h9c9c;
    CCU2D cnt8hz_255_256_add_4_5 (.A0(cnt8hz[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1278), .COUT(n1279), .S0(n85_adj_252[3]), 
          .S1(n85_adj_252[4]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_5.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_5.INJECT1_1 = "NO";
    FD1S3IX cnt8hz_255_256__i20 (.D(n85_adj_252[19]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i20.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i19 (.D(n85_adj_252[18]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i19.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i18 (.D(n85_adj_252[17]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i18.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i17 (.D(n85_adj_252[16]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i17.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i16 (.D(n85_adj_252[15]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i16.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i15 (.D(n85_adj_252[14]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i15.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i14 (.D(n85_adj_252[13]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i14.GSR = "DISABLED";
    LUT4 i2_2_lut (.A(count[17]), .B(count[1]), .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    FD1S3IX cnt8hz_255_256__i13 (.D(n85_adj_252[12]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i13.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i12 (.D(n85_adj_252[11]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i12.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i11 (.D(n85_adj_252[10]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i11.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i10 (.D(n85_adj_252[9]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i10.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i9 (.D(n85_adj_252[8]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i9.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i8 (.D(n85_adj_252[7]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i8.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i7 (.D(n85_adj_252[6]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i7.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i6 (.D(n85_adj_252[5]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i6.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i5 (.D(n85_adj_252[4]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i5.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i4 (.D(n85_adj_252[3]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i4.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(count[8]), .B(n14_adj_238), .C(n10), .D(count[6]), 
         .Z(n1398)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    FD1S3IX cnt8hz_255_256__i3 (.D(n85_adj_252[2]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i3.GSR = "DISABLED";
    FD1S3IX cnt8hz_255_256__i2 (.D(n85_adj_252[1]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i2.GSR = "DISABLED";
    LUT4 i6_4_lut (.A(count[10]), .B(count[19]), .C(count[13]), .D(count[9]), 
         .Z(n14_adj_238)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i1_2_lut (.A(clk8hz), .B(n582), .Z(clk8hz_N_193)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i2_2_lut_adj_1 (.A(count[7]), .B(count[16]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_adj_1.init = 16'h8888;
    LUT4 i1202_4_lut (.A(n1429), .B(n17), .C(n15), .D(n16), .Z(n582)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(19[7:22])
    defparam i1202_4_lut.init = 16'h8000;
    FD1S3IX count_257_258__i20 (.D(n85[19]), .CK(clk_c), .CD(n1488), .Q(count[19])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i20.GSR = "DISABLED";
    FD1S3IX count_257_258__i19 (.D(n85[18]), .CK(clk_c), .CD(n1488), .Q(count[18])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i19.GSR = "DISABLED";
    FD1S3IX count_257_258__i18 (.D(n85[17]), .CK(clk_c), .CD(n1488), .Q(count[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i18.GSR = "DISABLED";
    LUT4 i1201_4_lut (.A(n17_adj_239), .B(cnt8hz[10]), .C(n16_adj_240), 
         .D(cnt8hz[11]), .Z(n1429)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(19[7:22])
    defparam i1201_4_lut.init = 16'h0001;
    FD1S3IX count_257_258__i17 (.D(n85[16]), .CK(clk_c), .CD(n1488), .Q(count[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i17.GSR = "DISABLED";
    FD1S3IX count_257_258__i16 (.D(n85[15]), .CK(clk_c), .CD(n1488), .Q(count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i16.GSR = "DISABLED";
    FD1S3IX count_257_258__i15 (.D(n85[14]), .CK(clk_c), .CD(n1488), .Q(count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i15.GSR = "DISABLED";
    FD1S3IX count_257_258__i14 (.D(n85[13]), .CK(clk_c), .CD(n1488), .Q(count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i14.GSR = "DISABLED";
    FD1S3IX count_257_258__i13 (.D(n85[12]), .CK(clk_c), .CD(n1488), .Q(count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i13.GSR = "DISABLED";
    FD1S3IX count_257_258__i12 (.D(n85[11]), .CK(clk_c), .CD(n1488), .Q(count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i12.GSR = "DISABLED";
    FD1S3IX count_257_258__i11 (.D(n85[10]), .CK(clk_c), .CD(n1488), .Q(count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i11.GSR = "DISABLED";
    FD1S3IX count_257_258__i10 (.D(n85[9]), .CK(clk_c), .CD(n1488), .Q(count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i10.GSR = "DISABLED";
    FD1S3IX count_257_258__i9 (.D(n85[8]), .CK(clk_c), .CD(n1488), .Q(count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i9.GSR = "DISABLED";
    FD1S3IX count_257_258__i8 (.D(n85[7]), .CK(clk_c), .CD(n1488), .Q(count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i8.GSR = "DISABLED";
    FD1S3IX count_257_258__i7 (.D(n85[6]), .CK(clk_c), .CD(n1488), .Q(count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i7.GSR = "DISABLED";
    FD1S3IX count_257_258__i6 (.D(n85[5]), .CK(clk_c), .CD(n1488), .Q(count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i6.GSR = "DISABLED";
    LUT4 i7_4_lut_adj_2 (.A(cnt8hz[5]), .B(cnt8hz[4]), .C(cnt8hz[19]), 
         .D(cnt8hz[7]), .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_2.init = 16'h8000;
    FD1S3IX count_257_258__i5 (.D(n85[4]), .CK(clk_c), .CD(n1488), .Q(count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i5.GSR = "DISABLED";
    LUT4 i5_2_lut (.A(cnt8hz[12]), .B(cnt8hz[17]), .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1S3IX count_257_258__i4 (.D(n85[3]), .CK(clk_c), .CD(n1488), .Q(count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i4.GSR = "DISABLED";
    FD1S3IX count_257_258__i3 (.D(n85[2]), .CK(clk_c), .CD(n1488), .Q(count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i3.GSR = "DISABLED";
    FD1S3IX count_257_258__i2 (.D(n85[1]), .CK(clk_c), .CD(n1488), .Q(count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258__i2.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_3 (.A(cnt8hz[16]), .B(cnt8hz[8]), .C(cnt8hz[14]), 
         .D(cnt8hz[13]), .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_3.init = 16'h8000;
    LUT4 i7_4_lut_adj_4 (.A(cnt8hz[0]), .B(cnt8hz[15]), .C(cnt8hz[9]), 
         .D(cnt8hz[1]), .Z(n17_adj_239)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(19[7:22])
    defparam i7_4_lut_adj_4.init = 16'hfffe;
    LUT4 i6_4_lut_adj_5 (.A(cnt8hz[6]), .B(cnt8hz[3]), .C(cnt8hz[18]), 
         .D(cnt8hz[2]), .Z(n16_adj_240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(19[7:22])
    defparam i6_4_lut_adj_5.init = 16'hfffe;
    LUT4 i11_4_lut_rep_18 (.A(count[11]), .B(n22), .C(n18), .D(count[0]), 
         .Z(n1496)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut_rep_18.init = 16'hfffe;
    CCU2D cnt8hz_255_256_add_4_13 (.A0(cnt8hz[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1282), .COUT(n1283), .S0(n85_adj_252[11]), 
          .S1(n85_adj_252[12]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_13.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_13.INJECT1_1 = "NO";
    LUT4 i10_4_lut (.A(count[12]), .B(n20), .C(n14), .D(count[4]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.init = 16'hfffe;
    CCU2D count_257_258_add_4_7 (.A0(count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1269), .COUT(n1270), .S0(n85[5]), .S1(n85[6]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_7.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_7.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_7.INJECT1_0 = "NO";
    defparam count_257_258_add_4_7.INJECT1_1 = "NO";
    FD1S3IX cnt8hz_255_256__i1 (.D(n85_adj_252[0]), .CK(clk_c), .CD(n582), 
            .Q(cnt8hz[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256__i1.GSR = "DISABLED";
    CCU2D count_257_258_add_4_5 (.A0(count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1268), .COUT(n1269), .S0(n85[3]), .S1(n85[4]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_5.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_5.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_5.INJECT1_0 = "NO";
    defparam count_257_258_add_4_5.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_3 (.A0(count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1267), .COUT(n1268), .S0(n85[1]), .S1(n85[2]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_3.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_3.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_3.INJECT1_0 = "NO";
    defparam count_257_258_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_3 (.A0(cnt8hz[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1277), .COUT(n1278), .S0(n85_adj_252[1]), 
          .S1(n85_adj_252[2]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_3.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_3.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_17 (.A0(count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[16]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1274), .COUT(n1275), .S0(n85[15]), .S1(n85[16]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_17.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_17.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_17.INJECT1_0 = "NO";
    defparam count_257_258_add_4_17.INJECT1_1 = "NO";
    CCU2D count_257_258_add_4_15 (.A0(count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n1273), .COUT(n1274), .S0(n85[13]), .S1(n85[14]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(37[14:19])
    defparam count_257_258_add_4_15.INIT0 = 16'hfaaa;
    defparam count_257_258_add_4_15.INIT1 = 16'hfaaa;
    defparam count_257_258_add_4_15.INJECT1_0 = "NO";
    defparam count_257_258_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_21 (.A0(cnt8hz[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1286), .S0(n85_adj_252[19]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt8hz_255_256_add_4_21.INIT1 = 16'h0000;
    defparam cnt8hz_255_256_add_4_21.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt8hz_255_256_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt8hz[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n1277), .S1(n85_adj_252[0]));   // e:/sjtu/learning/vhdl/lab/lab5/freq_div.vhd(23[15:21])
    defparam cnt8hz_255_256_add_4_1.INIT0 = 16'hF000;
    defparam cnt8hz_255_256_add_4_1.INIT1 = 16'h0555;
    defparam cnt8hz_255_256_add_4_1.INJECT1_0 = "NO";
    defparam cnt8hz_255_256_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module song
//

module song (clk_c, clk_c_enable_17, n25, ptr, clk_c_enable_20, GND_net, 
            n464, n29, n470, \tone2[1] , num, \tone2[2] , \tone2[0] );
    input clk_c;
    input clk_c_enable_17;
    input [2:0]n25;
    output [7:0]ptr;
    input clk_c_enable_20;
    input GND_net;
    output [3:0]n464;
    input [3:0]n29;
    output n470;
    output \tone2[1] ;
    input num;
    output \tone2[2] ;
    output \tone2[0] ;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    wire [3:0]n458;
    
    wire n581;
    wire [7:0]n37;
    
    wire n1288, n1289, n1287;
    wire [3:0]n464_c;
    
    wire n8, n1415, n1290;
    
    FD1P3AX tone2_ret0_i0_i1 (.D(n25[0]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n458[0]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret0_i0_i1.GSR = "DISABLED";
    FD1P3IX ptr_259__i0 (.D(n37[0]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i0.GSR = "ENABLED";
    CCU2D ptr_259_add_4_5 (.A0(ptr[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ptr[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1288), 
          .COUT(n1289), .S0(n37[3]), .S1(n37[4]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259_add_4_5.INIT0 = 16'hfaaa;
    defparam ptr_259_add_4_5.INIT1 = 16'hfaaa;
    defparam ptr_259_add_4_5.INJECT1_0 = "NO";
    defparam ptr_259_add_4_5.INJECT1_1 = "NO";
    FD1P3IX ptr_259__i4 (.D(n37[4]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i4.GSR = "ENABLED";
    FD1P3AX tone2_ret1_i0_i3 (.D(n29[3]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n464[3]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret1_i0_i3.GSR = "DISABLED";
    FD1P3IX ptr_259__i5 (.D(n37[5]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i5.GSR = "ENABLED";
    CCU2D ptr_259_add_4_3 (.A0(ptr[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ptr[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1287), 
          .COUT(n1288), .S0(n37[1]), .S1(n37[2]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259_add_4_3.INIT0 = 16'hfaaa;
    defparam ptr_259_add_4_3.INIT1 = 16'hfaaa;
    defparam ptr_259_add_4_3.INJECT1_0 = "NO";
    defparam ptr_259_add_4_3.INJECT1_1 = "NO";
    FD1P3IX ptr_259__i6 (.D(n37[6]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i6.GSR = "ENABLED";
    FD1P3IX ptr_259__i7 (.D(n37[7]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i7.GSR = "ENABLED";
    CCU2D ptr_259_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ptr[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n1287), 
          .S1(n37[0]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259_add_4_1.INIT0 = 16'hF000;
    defparam ptr_259_add_4_1.INIT1 = 16'h0555;
    defparam ptr_259_add_4_1.INJECT1_0 = "NO";
    defparam ptr_259_add_4_1.INJECT1_1 = "NO";
    FD1P3AX tone2_ret1_i0_i2 (.D(n29[2]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n464_c[2]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret1_i0_i2.GSR = "DISABLED";
    LUT4 mux_12_i2_3_lut (.A(n458[1]), .B(n464_c[1]), .C(n470), .Z(\tone2[1] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(24[1] 489[10])
    defparam mux_12_i2_3_lut.init = 16'hcaca;
    FD1P3AX tone2_ret0_i0_i3 (.D(n25[2]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n458[2]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret0_i0_i3.GSR = "DISABLED";
    FD1P3AX tone2_ret0_i0_i2 (.D(n25[1]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n458[1]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret0_i0_i2.GSR = "DISABLED";
    FD1P3AX tone2_ret1_i0_i1 (.D(n29[1]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n464_c[1]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret1_i0_i1.GSR = "DISABLED";
    FD1P3AX tone2_ret1_i0_i0 (.D(n29[0]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(n464_c[0]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam tone2_ret1_i0_i0.GSR = "DISABLED";
    FD1P3AX i282 (.D(num), .SP(clk_c_enable_17), .CK(clk_c), .Q(n470));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(20[1] 490[8])
    defparam i282.GSR = "DISABLED";
    LUT4 i1193_4_lut (.A(clk_c_enable_20), .B(ptr[3]), .C(n8), .D(ptr[1]), 
         .Z(n581)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1193_4_lut.init = 16'h0002;
    LUT4 i3_3_lut (.A(n1415), .B(ptr[0]), .C(ptr[4]), .Z(n8)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam i3_3_lut.init = 16'hfdfd;
    LUT4 i1185_4_lut (.A(ptr[6]), .B(ptr[7]), .C(ptr[2]), .D(ptr[5]), 
         .Z(n1415)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1185_4_lut.init = 16'h8000;
    LUT4 mux_12_i3_3_lut (.A(n458[2]), .B(n464_c[2]), .C(n470), .Z(\tone2[2] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(24[1] 489[10])
    defparam mux_12_i3_3_lut.init = 16'hcaca;
    LUT4 mux_12_i1_3_lut (.A(n458[0]), .B(n464_c[0]), .C(n470), .Z(\tone2[0] )) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(24[1] 489[10])
    defparam mux_12_i1_3_lut.init = 16'hcaca;
    FD1P3IX ptr_259__i2 (.D(n37[2]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i2.GSR = "ENABLED";
    FD1P3IX ptr_259__i1 (.D(n37[1]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i1.GSR = "ENABLED";
    FD1P3IX ptr_259__i3 (.D(n37[3]), .SP(clk_c_enable_20), .CD(n581), 
            .CK(clk_c), .Q(ptr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259__i3.GSR = "ENABLED";
    CCU2D ptr_259_add_4_9 (.A0(ptr[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1290), 
          .S0(n37[7]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259_add_4_9.INIT0 = 16'hfaaa;
    defparam ptr_259_add_4_9.INIT1 = 16'h0000;
    defparam ptr_259_add_4_9.INJECT1_0 = "NO";
    defparam ptr_259_add_4_9.INJECT1_1 = "NO";
    CCU2D ptr_259_add_4_7 (.A0(ptr[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(ptr[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n1289), 
          .COUT(n1290), .S0(n37[5]), .S1(n37[6]));   // e:/sjtu/learning/vhdl/lab/lab5/two_songs.vhd(22[15:18])
    defparam ptr_259_add_4_7.INIT0 = 16'hfaaa;
    defparam ptr_259_add_4_7.INIT1 = 16'hfaaa;
    defparam ptr_259_add_4_7.INJECT1_0 = "NO";
    defparam ptr_259_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module seg
//

module seg (digit_c_0, clk_c, \tone[3] , n1499, \tone1[0] , n1501, 
            \tone2[0] , digit_c_4, n1497, digit_c_5, n545, n10, 
            digit_c_6, \digit_7__N_195[6] , digit_c_3, \digit_7__N_195[3] , 
            digit_c_2, \digit_7__N_195[2] , digit_c_1, \digit_7__N_195[1] , 
            n1500, n7, n7_adj_1, auto1);
    output digit_c_0;
    input clk_c;
    input \tone[3] ;
    input n1499;
    input \tone1[0] ;
    input n1501;
    input \tone2[0] ;
    output digit_c_4;
    input n1497;
    output digit_c_5;
    input n545;
    input n10;
    output digit_c_6;
    input \digit_7__N_195[6] ;
    output digit_c_3;
    input \digit_7__N_195[3] ;
    output digit_c_2;
    input \digit_7__N_195[2] ;
    output digit_c_1;
    input \digit_7__N_195[1] ;
    input n1500;
    output n7;
    output n7_adj_1;
    input auto1;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/lab5.vhd(7[4:7])
    wire [7:0]digit_7__N_195;
    
    wire n1506, n1505, n544;
    
    FD1S3AX digit_i1 (.D(digit_7__N_195[0]), .CK(clk_c), .Q(digit_c_0)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i1.GSR = "DISABLED";
    LUT4 tone_3__I_0_Mux_0_i15_4_lut_then_4_lut (.A(\tone[3] ), .B(n1499), 
         .C(\tone1[0] ), .D(n1501), .Z(n1506)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B+(C (D))))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam tone_3__I_0_Mux_0_i15_4_lut_then_4_lut.init = 16'h546e;
    LUT4 tone_3__I_0_Mux_0_i15_4_lut_else_4_lut (.A(\tone2[0] ), .B(\tone[3] ), 
         .C(n1499), .D(n1501), .Z(n1505)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (D)+!B !(C)))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam tone_3__I_0_Mux_0_i15_4_lut_else_4_lut.init = 16'h327c;
    FD1S3IX digit_i5 (.D(n1497), .CK(clk_c), .CD(n544), .Q(digit_c_4)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i5.GSR = "DISABLED";
    FD1S3IX digit_i6 (.D(n10), .CK(clk_c), .CD(n545), .Q(digit_c_5)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i6.GSR = "DISABLED";
    FD1S3AX digit_i7 (.D(\digit_7__N_195[6] ), .CK(clk_c), .Q(digit_c_6)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i7.GSR = "DISABLED";
    FD1S3AX digit_i4 (.D(\digit_7__N_195[3] ), .CK(clk_c), .Q(digit_c_3)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i4.GSR = "DISABLED";
    FD1S3AX digit_i3 (.D(\digit_7__N_195[2] ), .CK(clk_c), .Q(digit_c_2)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i3.GSR = "DISABLED";
    FD1S3AX digit_i2 (.D(\digit_7__N_195[1] ), .CK(clk_c), .Q(digit_c_1)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=4, LSE_RCOL=7, LSE_LLINE=59, LSE_RLINE=59 */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(17[2] 31[9])
    defparam digit_i2.GSR = "DISABLED";
    LUT4 i719_3_lut_3_lut (.A(n1500), .B(n1499), .C(n1501), .Z(n7)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam i719_3_lut_3_lut.init = 16'hd0d0;
    LUT4 i346_3_lut_3_lut (.A(n1499), .B(\tone[3] ), .C(n1501), .Z(n544)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam i346_3_lut_3_lut.init = 16'hd1d1;
    LUT4 tone_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_3_lut (.A(n1499), .B(n1501), 
         .C(n1500), .Z(n7_adj_1)) /* synthesis lut_function=(!(A (B+(C))+!A !(C))) */ ;   // e:/sjtu/learning/vhdl/lab/lab5/seg.vhd(18[2] 30[11])
    defparam tone_3__I_0_Mux_6_i7_3_lut_4_lut_4_lut_3_lut.init = 16'h5252;
    PFUMX i1226 (.BLUT(n1505), .ALUT(n1506), .C0(auto1), .Z(digit_7__N_195[0]));
    
endmodule
