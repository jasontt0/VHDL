// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Mon Dec 19 16:06:44 2022
//
// Verilog Description of module lab1_top
//

module lab1_top (key, clk, col, row, seg_left, seg_right, sel_left, 
            sel_right);   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(4[8:16])
    input [0:3]key;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(6[2:5])
    input clk;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(7[2:5])
    input [0:3]col;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    output [0:3]row;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(9[2:5])
    output [0:6]seg_left;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    output [0:6]seg_right;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    output sel_left;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(12[2:10])
    output sel_right;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(13[2:11])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(7[2:5])
    
    wire GND_net, VCC_net, key_c_0, key_c_1, key_c_2, key_c_3, col_c_0, 
        col_c_1, col_c_2, col_c_3, row_c_0, row_c_1, row_c_2, row_c_3, 
        clk40hz;
    wire [4:0]btn_num;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(19[9:16])
    
    wire n1775;
    wire [31:0]row_num;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(54[12:19])
    
    wire row_0__N_15;
    wire [3:0]row_0__N_1;
    
    wire n2111;
    wire [1:0]row_num_31__N_10;
    
    wire n91, n2110, n2109, n332, n2108, n2107, n2105, n2104, 
        n2103, clk_c_enable_6, n2135, n2095, n2134, n2094, n2093, 
        n2133, n1047, n2092, n2132, n2144, n921, n996, n914, 
        n2129, n2143, n447, n446, n1053, n915, n2142, n911, 
        n984, n896, n406, seg_left_c_6, seg_left_c_5, seg_left_c_4, 
        seg_left_c_3, seg_left_c_2, seg_left_c_1, seg_left_c_0, seg_right_c_6, 
        seg_right_c_5, seg_right_c_4, seg_right_c_3, seg_right_c_2, 
        seg_right_c_1, seg_right_c_0, n248, n249, n250, n251, n252, 
        n2047, n481, n482, n2131, n2106, n2141, n2130, n41, 
        n2044, n2139, n1787, n44, n2004, n2091, n29, n2076, 
        n24, n891, n2075, n2074, n2043, n1987, n1616, n2066, 
        n1976, n875, n1037, n1035, n2067, n2146, n1785, n2145, 
        n2137, n2052;
    
    VHI i2 (.Z(VCC_net));
    seg U2 (.n256({n248, n249, n250, n251, n252}), .seg_right_c_0(seg_right_c_0), 
        .seg_right_c_1(seg_right_c_1), .seg_right_c_2(seg_right_c_2), .seg_right_c_3(seg_right_c_3), 
        .seg_right_c_4(seg_right_c_4), .seg_right_c_5(seg_right_c_5), .seg_right_c_6(seg_right_c_6), 
        .clk_c(clk_c), .GND_net(GND_net), .VCC_net(VCC_net), .seg_left_c_0(seg_left_c_0), 
        .seg_left_c_1(seg_left_c_1), .seg_left_c_2(seg_left_c_2), .seg_left_c_3(seg_left_c_3), 
        .seg_left_c_4(seg_left_c_4), .seg_left_c_5(seg_left_c_5), .seg_left_c_6(seg_left_c_6));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(47[5:8])
    FD1P3AX row_i3_i4 (.D(row_0__N_1[3]), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_c_0));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_i3_i4.GSR = "ENABLED";
    OB seg_left_pad_5 (.I(seg_left_c_1), .O(seg_left[5]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB seg_left_pad_4 (.I(seg_left_c_2), .O(seg_left[4]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB seg_left_pad_3 (.I(seg_left_c_3), .O(seg_left[3]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB seg_left_pad_2 (.I(seg_left_c_4), .O(seg_left[2]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB seg_left_pad_1 (.I(seg_left_c_5), .O(seg_left[1]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB seg_left_pad_0 (.I(seg_left_c_6), .O(seg_left[0]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(9[2:5])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(9[2:5])
    FD1S3AX btn_num_i0 (.D(n252), .CK(clk_c), .Q(btn_num[0]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam btn_num_i0.GSR = "ENABLED";
    FD1P3AX row_i3_i3 (.D(row_0__N_1[2]), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_c_1));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_i3_i3.GSR = "ENABLED";
    FD1P3AX row_i3_i2 (.D(row_0__N_1[1]), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_c_2));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_i3_i2.GSR = "ENABLED";
    OB seg_left_pad_6 (.I(seg_left_c_0), .O(seg_left[6]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(10[2:10])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(9[2:5])
    freqdivider U1 (.GND_net(GND_net), .clk40hz(clk40hz), .clk_c(clk_c), 
            .n2137(n2137), .clk_c_enable_6(clk_c_enable_6));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(43[5:16])
    OB seg_right_pad_0 (.I(seg_right_c_6), .O(seg_right[0]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    FD1S3AX btn_num_i4 (.D(n248), .CK(clk_c), .Q(btn_num[4]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam btn_num_i4.GSR = "ENABLED";
    OB sel_right_pad (.I(GND_net), .O(sel_right));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(13[2:11])
    PFUMX i1786 (.BLUT(n2111), .ALUT(n2106), .C0(n2134), .Z(n252));
    PFUMX i1784 (.BLUT(n2109), .ALUT(n2108), .C0(n2132), .Z(n2110));
    GSR GSR_INST (.GSR(VCC_net));
    OB sel_left_pad (.I(GND_net), .O(sel_left));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(12[2:10])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    LUT4 i2_2_lut_3_lut_4_lut_then_3_lut (.A(btn_num[3]), .B(btn_num[4]), 
         .C(btn_num[2]), .Z(n2146)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_then_3_lut.init = 16'h0404;
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    OB seg_right_pad_6 (.I(seg_right_c_0), .O(seg_right[6]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    PFUMX i1779 (.BLUT(n2104), .ALUT(n2103), .C0(row_c_2), .Z(n2105));
    LUT4 i2_2_lut_3_lut_4_lut_else_3_lut (.A(btn_num[3]), .B(btn_num[4]), 
         .C(btn_num[1]), .D(btn_num[2]), .Z(n2145)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_else_3_lut.init = 16'h0440;
    LUT4 n2044_bdd_4_lut (.A(n2044), .B(row_c_0), .C(n2043), .D(row_c_3), 
         .Z(n2129)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n2044_bdd_4_lut.init = 16'hf088;
    LUT4 i1715_2_lut (.A(row_num[0]), .B(row_num[1]), .Z(row_0__N_1[1])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1715_2_lut.init = 16'hbbbb;
    LUT4 i1332_4_lut_4_lut (.A(col_c_2), .B(n875), .C(n2132), .D(n332), 
         .Z(n446)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam i1332_4_lut_4_lut.init = 16'hf7f4;
    LUT4 i670_2_lut_rep_23 (.A(btn_num[0]), .B(btn_num[1]), .Z(n2144)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i670_2_lut_rep_23.init = 16'heeee;
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(9[2:5])
    LUT4 i1_2_lut_rep_10_3_lut_3_lut_4_lut (.A(clk40hz), .B(n2137), .C(n2139), 
         .D(row_c_2), .Z(n2131)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam i1_2_lut_rep_10_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_rep_13_4_lut (.A(clk40hz), .B(n2137), .C(n2139), .D(n1775), 
         .Z(n2134)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam i1_3_lut_rep_13_4_lut.init = 16'h4440;
    LUT4 n1616_bdd_3_lut_1766_4_lut (.A(clk40hz), .B(n2137), .C(col_c_2), 
         .D(n1775), .Z(n2074)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam n1616_bdd_3_lut_1766_4_lut.init = 16'hb0f0;
    LUT4 i2_3_lut_rep_9_4_lut (.A(row_c_2), .B(n2133), .C(row_c_3), .D(n24), 
         .Z(n2130)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_rep_9_4_lut.init = 16'h2000;
    PFUMX i1773 (.BLUT(n2095), .ALUT(n921), .C0(n2134), .Z(n251));
    LUT4 i1334_2_lut_4_lut (.A(n2131), .B(n24), .C(row_c_3), .D(n2143), 
         .Z(n914)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i1334_2_lut_4_lut.init = 16'h7f00;
    OB seg_right_pad_5 (.I(seg_right_c_1), .O(seg_right[5]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    IB clk_pad (.I(clk), .O(clk_c));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(7[2:5])
    LUT4 n4_bdd_3_lut_1750_4_lut (.A(btn_num[0]), .B(btn_num[1]), .C(btn_num[2]), 
         .D(btn_num[3]), .Z(n2066)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam n4_bdd_3_lut_1750_4_lut.init = 16'h01e0;
    LUT4 i1349_2_lut (.A(col_c_2), .B(row_c_2), .Z(n896)) /* synthesis lut_function=(A+(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1349_2_lut.init = 16'heeee;
    LUT4 n4_bdd_4_lut_1753 (.A(n2144), .B(btn_num[3]), .C(btn_num[4]), 
         .D(btn_num[2]), .Z(n2044)) /* synthesis lut_function=(!(A (B (C+!(D))+!B ((D)+!C))+!A (B+!(C)))) */ ;
    defparam n4_bdd_4_lut_1753.init = 16'h1830;
    LUT4 n1616_bdd_4_lut_1767 (.A(n1616), .B(clk_c_enable_6), .C(n1775), 
         .D(btn_num[4]), .Z(n2075)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;
    defparam n1616_bdd_4_lut_1767.init = 16'h2a00;
    LUT4 n4_bdd_3_lut_4_lut (.A(btn_num[0]), .B(btn_num[1]), .C(btn_num[2]), 
         .D(btn_num[3]), .Z(n2067)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam n4_bdd_3_lut_4_lut.init = 16'h1e00;
    PFUMX i1771 (.BLUT(n2093), .ALUT(n2092), .C0(n2132), .Z(n2094));
    IB key_pad_3 (.I(key[3]), .O(key_c_3));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(6[2:5])
    OB seg_right_pad_4 (.I(seg_right_c_2), .O(seg_right[4]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    LUT4 i2_3_lut_4_lut_4_lut (.A(clk_c_enable_6), .B(row_c_3), .C(n2105), 
         .D(n2139), .Z(n891)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1699_2_lut (.A(row_num[1]), .B(row_num[0]), .Z(row_num_31__N_10[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1699_2_lut.init = 16'h6666;
    LUT4 i1728_2_lut (.A(row_num[0]), .B(row_num[1]), .Z(row_0__N_15)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1728_2_lut.init = 16'h7777;
    FD1S3AX btn_num_i3 (.D(n249), .CK(clk_c), .Q(btn_num[3]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam btn_num_i3.GSR = "ENABLED";
    FD1S3AX btn_num_i2 (.D(n250), .CK(clk_c), .Q(btn_num[2]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam btn_num_i2.GSR = "ENABLED";
    LUT4 i668_1_lut (.A(row_num[0]), .Z(row_num_31__N_10[0])) /* synthesis lut_function=(!(A)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(61[10:11])
    defparam i668_1_lut.init = 16'h5555;
    FD1S3AX btn_num_i1 (.D(n251), .CK(clk_c), .Q(btn_num[1]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam btn_num_i1.GSR = "ENABLED";
    OB seg_right_pad_3 (.I(seg_right_c_3), .O(seg_right[3]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    IB key_pad_2 (.I(key[2]), .O(key_c_2));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(6[2:5])
    LUT4 i1668_2_lut_3_lut_4_lut_4_lut (.A(clk_c_enable_6), .B(n2135), .C(n891), 
         .D(n2139), .Z(n1976)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam i1668_2_lut_3_lut_4_lut_4_lut.init = 16'hf0f8;
    LUT4 mux_625_i2_3_lut_4_lut (.A(clk_c_enable_6), .B(n1037), .C(key_c_2), 
         .D(col_c_0), .Z(n911)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;
    defparam mux_625_i2_3_lut_4_lut.init = 16'h7f08;
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    IB key_pad_1 (.I(key[1]), .O(key_c_1));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(6[2:5])
    OB seg_right_pad_2 (.I(seg_right_c_4), .O(seg_right[2]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    LUT4 row_num_0__bdd_2_lut (.A(row_num[0]), .B(row_num[1]), .Z(row_0__N_1[3])) /* synthesis lut_function=(A+(B)) */ ;
    defparam row_num_0__bdd_2_lut.init = 16'heeee;
    FD1P3AX row_num__i2 (.D(row_num_31__N_10[1]), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_num[1])) /* synthesis lse_init_val=0 */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_num__i2.GSR = "ENABLED";
    FD1P3AX row_i3_i1 (.D(row_0__N_15), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_c_3));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_i3_i1.GSR = "ENABLED";
    LUT4 i1344_2_lut (.A(btn_num[3]), .B(n1616), .Z(n332)) /* synthesis lut_function=(A (B)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1344_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_18 (.A(n1035), .B(n1037), .Z(n2139)) /* synthesis lut_function=(A+(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(71[4] 110[11])
    defparam i1_2_lut_rep_18.init = 16'heeee;
    FD1P3AX row_num__i1 (.D(row_num_31__N_10[0]), .SP(clk_c_enable_6), .CK(clk_c), 
            .Q(row_num[0])) /* synthesis lse_init_val=0 */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(56[3] 63[10])
    defparam row_num__i1.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(clk_c_enable_6), .B(n1976), .C(n2139), .D(n2076), 
         .Z(n248)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1_4_lut.init = 16'hb3a0;
    LUT4 i1_2_lut_rep_12_2_lut_3_lut_4_lut (.A(n1035), .B(n1037), .C(n2137), 
         .D(clk40hz), .Z(n2133)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(71[4] 110[11])
    defparam i1_2_lut_rep_12_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_20 (.A(row_c_2), .B(row_c_1), .Z(n2141)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_20.init = 16'h8888;
    OB seg_right_pad_1 (.I(seg_right_c_5), .O(seg_right[1]));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(11[2:11])
    IB key_pad_0 (.I(key[0]), .O(key_c_0));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(6[2:5])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    LUT4 sel_right_c_bdd_2_lut_1742_3_lut (.A(row_c_2), .B(row_c_1), .C(n2129), 
         .Z(n2047)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam sel_right_c_bdd_2_lut_1742_3_lut.init = 16'h8080;
    LUT4 i39_4_lut (.A(row_c_1), .B(row_c_0), .C(n1047), .D(n1053), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i39_4_lut.init = 16'h6420;
    LUT4 i697_3_lut (.A(row_c_1), .B(row_c_0), .C(n2130), .Z(n996)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i697_3_lut.init = 16'hcaca;
    LUT4 n2094_bdd_3_lut (.A(n2094), .B(n2091), .C(n891), .Z(n2095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2094_bdd_3_lut.init = 16'hcaca;
    LUT4 mux_625_i1_3_lut_4_lut (.A(clk_c_enable_6), .B(n1037), .C(key_c_2), 
         .D(col_c_0), .Z(n984)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_625_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), .D(col_c_3), 
         .Z(n1047)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0880;
    LUT4 n4_bdd_4_lut_1736 (.A(n2144), .B(btn_num[3]), .C(row_c_0), .D(btn_num[2]), 
         .Z(n2043)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam n4_bdd_4_lut_1736.init = 16'h0102;
    LUT4 i2_3_lut_4_lut_4_lut_adj_2 (.A(clk_c_enable_6), .B(n1035), .C(key_c_2), 
         .D(n1037), .Z(n1787)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_2.init = 16'h2000;
    LUT4 i2_3_lut_4_lut (.A(col_c_2), .B(col_c_3), .C(col_c_0), .D(col_c_1), 
         .Z(n1053)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0880;
    LUT4 i1707_2_lut_3_lut_4_lut (.A(col_c_2), .B(col_c_3), .C(col_c_1), 
         .D(col_c_0), .Z(n2004)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i1707_2_lut_3_lut_4_lut.init = 16'h7fff;
    PFUMX mux_216_i4 (.BLUT(n446), .ALUT(n914), .C0(n891), .Z(n481));
    LUT4 n1616_bdd_1_lut_3_lut_4_lut (.A(clk_c_enable_6), .B(n1035), .C(key_c_0), 
         .D(n984), .Z(n2106)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam n1616_bdd_1_lut_3_lut_4_lut.init = 16'h087f;
    LUT4 n1616_bdd_3_lut_1782 (.A(n996), .B(col_c_2), .C(col_c_0), .Z(n2107)) /* synthesis lut_function=(!(A (C)+!A (B))) */ ;
    defparam n1616_bdd_3_lut_1782.init = 16'h1b1b;
    LUT4 n1047_bdd_3_lut_1815 (.A(n1053), .B(row_c_0), .C(row_c_1), .Z(n2104)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n1047_bdd_3_lut_1815.init = 16'h8080;
    LUT4 n1616_bdd_3_lut_1799 (.A(col_c_2), .B(col_c_0), .C(row_c_2), 
         .Z(n2108)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n1616_bdd_3_lut_1799.init = 16'h3535;
    L6MUX21 mux_224_i3 (.D0(n447), .D1(n482), .SD(n1987), .Z(n250));
    LUT4 i3_4_lut (.A(n2142), .B(n1047), .C(row_c_3), .D(n2131), .Z(n875)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 sel_right_c_bdd_2_lut_1752_rep_14_3_lut (.A(row_c_0), .B(row_c_1), 
         .C(n2052), .Z(n2135)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam sel_right_c_bdd_2_lut_1752_rep_14_3_lut.init = 16'h8080;
    LUT4 i1724_2_lut (.A(row_num[1]), .B(row_num[0]), .Z(row_0__N_1[2])) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1724_2_lut.init = 16'hbbbb;
    LUT4 i1_4_lut_4_lut (.A(btn_num[4]), .B(n2067), .C(n91), .D(row_c_1), 
         .Z(n41)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1_4_lut_4_lut.init = 16'hf400;
    LUT4 i1_4_lut_4_lut_4_lut (.A(btn_num[4]), .B(n91), .C(n2066), .D(row_c_1), 
         .Z(n44)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h00dc;
    LUT4 i1708_4_lut (.A(n2047), .B(n2004), .C(n2133), .D(n1785), .Z(n1616)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i1708_4_lut.init = 16'hfcfd;
    PFUMX mux_196_i3 (.BLUT(n406), .ALUT(n896), .C0(n2132), .Z(n447));
    LUT4 i2_4_lut (.A(key_c_2), .B(key_c_0), .C(key_c_3), .D(key_c_1), 
         .Z(n1035)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;
    defparam i2_4_lut.init = 16'h2080;
    LUT4 i2_4_lut_adj_3 (.A(key_c_0), .B(key_c_3), .C(key_c_1), .D(key_c_2), 
         .Z(n1037)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(71[4] 110[11])
    defparam i2_4_lut_adj_3.init = 16'h2080;
    LUT4 i3_4_lut_adj_4 (.A(row_c_3), .B(n1053), .C(row_c_0), .D(n2141), 
         .Z(n1775)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_4.init = 16'h0800;
    LUT4 n2110_bdd_3_lut (.A(n2110), .B(n2107), .C(n891), .Z(n2111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2110_bdd_3_lut.init = 16'hcaca;
    LUT4 i1338_2_lut_rep_22 (.A(col_c_2), .B(row_c_1), .Z(n2143)) /* synthesis lut_function=(A+(B)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam i1338_2_lut_rep_22.init = 16'heeee;
    LUT4 n1053_bdd_4_lut_1751 (.A(n1053), .B(n1047), .C(row_c_2), .D(row_c_3), 
         .Z(n2052)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam n1053_bdd_4_lut_1751.init = 16'h0ca0;
    LUT4 mux_627_i2_3_lut_4_lut (.A(clk_c_enable_6), .B(n1035), .C(key_c_0), 
         .D(n911), .Z(n921)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_627_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_180_i3_4_lut_4_lut (.A(col_c_2), .B(n1616), .C(n875), .D(btn_num[2]), 
         .Z(n406)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam mux_180_i3_4_lut_4_lut.init = 16'h5c50;
    LUT4 mux_626_i3_4_lut_4_lut (.A(col_c_2), .B(row_c_1), .C(row_c_0), 
         .D(n2130), .Z(n915)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (C+!(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(70[3] 111[10])
    defparam mux_626_i3_4_lut_4_lut.init = 16'hfa11;
    LUT4 n2053_bdd_2_lut_rep_11_3_lut_3_lut_4_lut (.A(n2052), .B(n2142), 
         .C(n2139), .D(clk_c_enable_6), .Z(n2132)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam n2053_bdd_2_lut_rep_11_3_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 n1616_bdd_3_lut_1775_3_lut (.A(col_c_2), .B(col_c_0), .C(row_c_2), 
         .Z(n2092)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam n1616_bdd_3_lut_1775_3_lut.init = 16'hc5c5;
    LUT4 i1329_2_lut_4_lut (.A(clk_c_enable_6), .B(n1775), .C(n2139), 
         .D(n481), .Z(n249)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam i1329_2_lut_4_lut.init = 16'h5700;
    PFUMX mux_216_i3 (.BLUT(n915), .ALUT(n1787), .C0(n2134), .Z(n482));
    LUT4 n1047_bdd_4_lut_1814 (.A(n1047), .B(n1053), .C(row_c_0), .D(row_c_1), 
         .Z(n2103)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (((D)+!C)+!B))) */ ;
    defparam n1047_bdd_4_lut_1814.init = 16'h0ae0;
    LUT4 i2_2_lut_rep_21 (.A(row_c_0), .B(row_c_1), .Z(n2142)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_21.init = 16'h8888;
    LUT4 n1616_bdd_3_lut_1770_3_lut (.A(col_c_2), .B(n996), .C(col_c_0), 
         .Z(n2091)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam n1616_bdd_3_lut_1770_3_lut.init = 16'hd1d1;
    LUT4 n1616_bdd_4_lut_1776_4_lut (.A(col_c_2), .B(btn_num[1]), .C(n875), 
         .D(n1616), .Z(n2093)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam n1616_bdd_4_lut_1776_4_lut.init = 16'h5c50;
    LUT4 i1730_2_lut_4_lut (.A(clk_c_enable_6), .B(n1775), .C(n2139), 
         .D(n891), .Z(n1987)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i1730_2_lut_4_lut.init = 16'hffa8;
    LUT4 i2_3_lut (.A(row_c_0), .B(row_c_3), .C(n29), .Z(n1785)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 n1616_bdd_4_lut_4_lut (.A(col_c_2), .B(btn_num[0]), .C(n875), 
         .D(n1616), .Z(n2109)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(8[2:5])
    defparam n1616_bdd_4_lut_4_lut.init = 16'h5c50;
    PFUMX i1757 (.BLUT(n2075), .ALUT(n2074), .C0(n875), .Z(n2076));
    PFUMX i60 (.BLUT(n41), .ALUT(n44), .C0(row_c_2), .Z(n29));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    PFUMX i1793 (.BLUT(n2145), .ALUT(n2146), .C0(btn_num[0]), .Z(n91));
    TSALL TSALL_INST (.TSALL(GND_net));
    
endmodule
//
// Verilog Description of module seg
//

module seg (n256, seg_right_c_0, seg_right_c_1, seg_right_c_2, seg_right_c_3, 
            seg_right_c_4, seg_right_c_5, seg_right_c_6, clk_c, GND_net, 
            VCC_net, seg_left_c_0, seg_left_c_1, seg_left_c_2, seg_left_c_3, 
            seg_left_c_4, seg_left_c_5, seg_left_c_6);
    input [4:0]n256;
    output seg_right_c_0;
    output seg_right_c_1;
    output seg_right_c_2;
    output seg_right_c_3;
    output seg_right_c_4;
    output seg_right_c_5;
    output seg_right_c_6;
    input clk_c;
    input GND_net;
    input VCC_net;
    output seg_left_c_0;
    output seg_left_c_1;
    output seg_left_c_2;
    output seg_left_c_3;
    output seg_left_c_4;
    output seg_left_c_5;
    output seg_left_c_6;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(7[2:5])
    
    SP8KC btn_num_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
          .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
          .DI7(GND_net), .DI8(GND_net), .AD0(GND_net), .AD1(GND_net), 
          .AD2(GND_net), .AD3(n256[0]), .AD4(n256[1]), .AD5(n256[2]), 
          .AD6(n256[3]), .AD7(n256[4]), .AD8(GND_net), .AD9(GND_net), 
          .AD10(GND_net), .AD11(GND_net), .AD12(GND_net), .CE(VCC_net), 
          .OCE(VCC_net), .CLK(clk_c), .WE(GND_net), .CS0(GND_net), .CS1(GND_net), 
          .CS2(GND_net), .RST(GND_net), .DO0(seg_right_c_0), .DO1(seg_right_c_1), 
          .DO2(seg_right_c_2), .DO3(seg_right_c_3), .DO4(seg_right_c_4), 
          .DO5(seg_right_c_5), .DO6(seg_right_c_6));
    defparam btn_num_4__I_0.DATA_WIDTH = 9;
    defparam btn_num_4__I_0.REGMODE = "OUTREG";
    defparam btn_num_4__I_0.CSDECODE = "0b000";
    defparam btn_num_4__I_0.WRITEMODE = "NORMAL";
    defparam btn_num_4__I_0.GSR = "DISABLED";
    defparam btn_num_4__I_0.RESETMODE = "ASYNC";
    defparam btn_num_4__I_0.ASYNC_RESET_RELEASE = "SYNC";
    defparam btn_num_4__I_0.INIT_DATA = "STATIC";
    defparam btn_num_4__I_0.INITVAL_00 = "0x00000000000000000000000000003D09C1F0EE5F0B6330F26D0607E0F67F0E05F0B6330F26D0607E";
    defparam btn_num_4__I_0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    SP8KC btn_num_4__I_0_13 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
          .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
          .DI7(GND_net), .DI8(GND_net), .AD0(GND_net), .AD1(GND_net), 
          .AD2(GND_net), .AD3(n256[0]), .AD4(n256[1]), .AD5(n256[2]), 
          .AD6(n256[3]), .AD7(n256[4]), .AD8(GND_net), .AD9(GND_net), 
          .AD10(GND_net), .AD11(GND_net), .AD12(GND_net), .CE(VCC_net), 
          .OCE(VCC_net), .CLK(clk_c), .WE(GND_net), .CS0(GND_net), .CS1(GND_net), 
          .CS2(GND_net), .RST(GND_net), .DO0(seg_left_c_0), .DO1(seg_left_c_1), 
          .DO2(seg_left_c_2), .DO3(seg_left_c_3), .DO4(seg_left_c_4), 
          .DO5(seg_left_c_5), .DO6(seg_left_c_6));
    defparam btn_num_4__I_0_13.DATA_WIDTH = 9;
    defparam btn_num_4__I_0_13.REGMODE = "OUTREG";
    defparam btn_num_4__I_0_13.CSDECODE = "0b000";
    defparam btn_num_4__I_0_13.WRITEMODE = "NORMAL";
    defparam btn_num_4__I_0_13.GSR = "DISABLED";
    defparam btn_num_4__I_0_13.RESETMODE = "ASYNC";
    defparam btn_num_4__I_0_13.ASYNC_RESET_RELEASE = "SYNC";
    defparam btn_num_4__I_0_13.INIT_DATA = "STATIC";
    defparam btn_num_4__I_0_13.INITVAL_00 = "0x00000000000000000000000000007E0FC7E0FC300603006030060300FC7E0FC7E0FC7E0FC7E0FC7E";
    defparam btn_num_4__I_0_13.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam btn_num_4__I_0_13.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    
endmodule
//
// Verilog Description of module freqdivider
//

module freqdivider (GND_net, clk40hz, clk_c, n2137, clk_c_enable_6);
    input GND_net;
    output clk40hz;
    input clk_c;
    output n2137;
    output clk_c_enable_6;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/lab1.vhd(7[2:5])
    
    wire n1771;
    wire [31:0]cnt1;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(17[12:16])
    wire [17:0]n77;
    
    wire clk40hz_N_152, n1766, n1767, n1770, n1769, n17, n16, 
        n2009, n13, n1768, n14, n1765, n1763, n1764;
    
    CCU2D cnt1_647_648_add_4_19 (.A0(cnt1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1771), .S0(n77[17]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_19.INIT1 = 16'h0000;
    defparam cnt1_647_648_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_19.INJECT1_1 = "NO";
    FD1S3AX clk40hz_26 (.D(clk40hz_N_152), .CK(clk_c), .Q(clk40hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=43, LSE_RLINE=43 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(19[3] 26[10])
    defparam clk40hz_26.GSR = "ENABLED";
    CCU2D cnt1_647_648_add_4_9 (.A0(cnt1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1766), .COUT(n1767), .S0(n77[7]), .S1(n77[8]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_9.INJECT1_1 = "NO";
    FD1S3IX cnt1_647_648__i17 (.D(n77[16]), .CK(clk_c), .CD(n2137), .Q(cnt1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i17.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i16 (.D(n77[15]), .CK(clk_c), .CD(n2137), .Q(cnt1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i16.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i15 (.D(n77[14]), .CK(clk_c), .CD(n2137), .Q(cnt1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i15.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i14 (.D(n77[13]), .CK(clk_c), .CD(n2137), .Q(cnt1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i14.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i13 (.D(n77[12]), .CK(clk_c), .CD(n2137), .Q(cnt1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i13.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i12 (.D(n77[11]), .CK(clk_c), .CD(n2137), .Q(cnt1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i12.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i11 (.D(n77[10]), .CK(clk_c), .CD(n2137), .Q(cnt1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i11.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i10 (.D(n77[9]), .CK(clk_c), .CD(n2137), .Q(cnt1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i10.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i9 (.D(n77[8]), .CK(clk_c), .CD(n2137), .Q(cnt1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i9.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i8 (.D(n77[7]), .CK(clk_c), .CD(n2137), .Q(cnt1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i8.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i7 (.D(n77[6]), .CK(clk_c), .CD(n2137), .Q(cnt1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i7.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i6 (.D(n77[5]), .CK(clk_c), .CD(n2137), .Q(cnt1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i6.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i5 (.D(n77[4]), .CK(clk_c), .CD(n2137), .Q(cnt1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i5.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i4 (.D(n77[3]), .CK(clk_c), .CD(n2137), .Q(cnt1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i4.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i3 (.D(n77[2]), .CK(clk_c), .CD(n2137), .Q(cnt1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i3.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i2 (.D(n77[1]), .CK(clk_c), .CD(n2137), .Q(cnt1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i2.GSR = "ENABLED";
    FD1S3IX cnt1_647_648__i1 (.D(n77[0]), .CK(clk_c), .CD(n2137), .Q(cnt1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i1.GSR = "ENABLED";
    CCU2D cnt1_647_648_add_4_17 (.A0(cnt1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1770), .COUT(n1771), .S0(n77[15]), .S1(n77[16]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt1_647_648_add_4_15 (.A0(cnt1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1769), .COUT(n1770), .S0(n77[13]), .S1(n77[14]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_15.INJECT1_1 = "NO";
    LUT4 i1712_4_lut (.A(n17), .B(cnt1[9]), .C(n16), .D(cnt1[10]), .Z(n2009)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i1712_4_lut.init = 16'h0001;
    LUT4 i5_4_lut (.A(cnt1[4]), .B(cnt1[6]), .C(cnt1[14]), .D(cnt1[11]), 
         .Z(n13)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    CCU2D cnt1_647_648_add_4_13 (.A0(cnt1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1768), .COUT(n1769), .S0(n77[11]), .S1(n77[12]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_13.INJECT1_1 = "NO";
    LUT4 i1713_3_lut_rep_16 (.A(n2009), .B(n13), .C(n14), .Z(n2137)) /* synthesis lut_function=(A (B (C))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i1713_3_lut_rep_16.init = 16'h8080;
    LUT4 i6_4_lut (.A(cnt1[8]), .B(cnt1[5]), .C(cnt1[7]), .D(cnt1[17]), 
         .Z(n14)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    LUT4 i7_4_lut (.A(cnt1[0]), .B(cnt1[13]), .C(cnt1[16]), .D(cnt1[1]), 
         .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i1705_2_lut_rep_15_4_lut (.A(n2009), .B(n13), .C(n14), .D(clk40hz), 
         .Z(clk_c_enable_6)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i1705_2_lut_rep_15_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_4_lut (.A(n2009), .B(n13), .C(n14), .D(clk40hz), .Z(clk40hz_N_152)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i1_2_lut_4_lut.init = 16'h7f80;
    FD1S3IX cnt1_647_648__i18 (.D(n77[17]), .CK(clk_c), .CD(n2137), .Q(cnt1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648__i18.GSR = "ENABLED";
    LUT4 i6_4_lut_adj_1 (.A(cnt1[3]), .B(cnt1[15]), .C(cnt1[12]), .D(cnt1[2]), 
         .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(20[7:20])
    defparam i6_4_lut_adj_1.init = 16'hfffe;
    CCU2D cnt1_647_648_add_4_7 (.A0(cnt1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1765), .COUT(n1766), .S0(n77[5]), .S1(n77[6]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt1_647_648_add_4_3 (.A0(cnt1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1763), .COUT(n1764), .S0(n77[1]), .S1(n77[2]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt1_647_648_add_4_11 (.A0(cnt1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1767), .COUT(n1768), .S0(n77[9]), .S1(n77[10]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt1_647_648_add_4_5 (.A0(cnt1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1764), .COUT(n1765), .S0(n77[3]), .S1(n77[4]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt1_647_648_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt1_647_648_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt1_647_648_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1763), .S1(n77[0]));   // e:/sjtu/learning/vhdl/final/lab1/freq_div.vhd(24[13:17])
    defparam cnt1_647_648_add_4_1.INIT0 = 16'hF000;
    defparam cnt1_647_648_add_4_1.INIT1 = 16'h0555;
    defparam cnt1_647_648_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_647_648_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

