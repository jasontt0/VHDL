// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Mon Nov 20 16:19:44 2023
//
// Verilog Description of module lab1_top
//

module lab1_top (key, clk, col, row, seg_left, seg_right, sel_left, 
            sel_right);   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(4[8:16])
    input [0:3]key;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(6[2:5])
    input clk;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(7[2:5])
    input [0:3]col;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    output [0:3]row;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(9[2:5])
    output [0:6]seg_left;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    output [0:6]seg_right;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    output sel_left;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(12[2:10])
    output sel_right;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(13[2:11])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(7[2:5])
    
    wire GND_net, VCC_net, key_c_0, key_c_1, key_c_2, key_c_3, col_c_0, 
        col_c_1, col_c_2, col_c_3, row_c_0, row_c_1, row_c_2, row_c_3, 
        clk40hz;
    wire [4:0]btn_num;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(19[9:16])
    
    wire n1956, n2151, n1614;
    wire [31:0]row_num;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(55[12:19])
    wire [31:0]row_num_31__N_10;
    
    wire n122, n2285, n394, n2284, n2283, n2282, n1347, n6, 
        n1366, n2230, n2335, n1339, n2281, n2279, n2278, n1219, 
        n1212, n509, n508, n1213, n2277, n1209, n1281, n1194, 
        n468, n2275, clk_c_enable_5, n1303, seg_left_c_6, seg_left_c_5, 
        seg_left_c_4, seg_left_c_3, seg_left_c_2, seg_left_c_1, seg_left_c_0, 
        seg_right_c_6, seg_right_c_5, seg_right_c_4, seg_right_c_3, 
        seg_right_c_2, seg_right_c_1, seg_right_c_0, n308, n309, n310, 
        n311, n312, n2274, n543, n544, n2273, n2182, n2272, 
        n41, n2342, n1966, n2271, n2332, n1365, n2280, n1645, 
        n44, n29, n24, n953, n2222, n2341, n2252, n2175, n2139, 
        n2331, n2249, n1350, n2340, n2330, n1, n1960, n2247, 
        n2221, n2220, n2339, n2338, n2329, n2344, n1337, n937, 
        n947, n2337, n2133, n2343, n2179;
    
    VHI i2 (.Z(VCC_net));
    seg U2 (.n316({n308, n309, n310, n311, n312}), .seg_right_c_0(seg_right_c_0), 
        .seg_right_c_1(seg_right_c_1), .seg_right_c_2(seg_right_c_2), .seg_right_c_3(seg_right_c_3), 
        .seg_right_c_4(seg_right_c_4), .seg_right_c_5(seg_right_c_5), .seg_right_c_6(seg_right_c_6), 
        .clk_c(clk_c), .GND_net(GND_net), .VCC_net(VCC_net), .seg_left_c_0(seg_left_c_0), 
        .seg_left_c_1(seg_left_c_1), .seg_left_c_2(seg_left_c_2), .seg_left_c_3(seg_left_c_3), 
        .seg_left_c_4(seg_left_c_4), .seg_left_c_5(seg_left_c_5), .seg_left_c_6(seg_left_c_6));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(47[5:8])
    FD1S3AX btn_num_i0 (.D(n312), .CK(clk_c), .Q(btn_num[0]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam btn_num_i0.GSR = "ENABLED";
    FD1S3AX btn_num_i2 (.D(n310), .CK(clk_c), .Q(btn_num[2]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam btn_num_i2.GSR = "ENABLED";
    FD1S3AX btn_num_i1 (.D(n311), .CK(clk_c), .Q(btn_num[1]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam btn_num_i1.GSR = "ENABLED";
    LUT4 n4_bdd_4_lut_1676 (.A(n2339), .B(btn_num[2]), .C(btn_num[3]), 
         .D(btn_num[4]), .Z(n2247)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A (C+!(D)))) */ ;
    defparam n4_bdd_4_lut_1676.init = 16'h0780;
    LUT4 n1362_bdd_4_lut_1671 (.A(n2338), .B(n2337), .C(row_c_1), .D(row_c_0), 
         .Z(n2220)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A ((C+!(D))+!B))) */ ;
    defparam n1362_bdd_4_lut_1671.init = 16'h0ea0;
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(9[2:5])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(9[2:5])
    FD1P3AX row_num__i2 (.D(row_num_31__N_10[1]), .SP(clk_c_enable_5), .CK(clk_c), 
            .Q(row_num[1])) /* synthesis lse_init_val=0 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_num__i2.GSR = "ENABLED";
    freqdivider U1 (.GND_net(GND_net), .clk40hz(clk40hz), .clk_c(clk_c), 
            .n1365(n1365));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(43[5:16])
    LUT4 i821_2_lut_3_lut (.A(clk40hz), .B(n1365), .C(row_num[1]), .Z(n1366)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i821_2_lut_3_lut.init = 16'h4040;
    LUT4 i2_2_lut_3_lut_4_lut_then_3_lut (.A(btn_num[3]), .B(btn_num[4]), 
         .C(btn_num[2]), .Z(n2344)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_then_3_lut.init = 16'h0404;
    LUT4 i2_2_lut_3_lut_4_lut_else_3_lut (.A(btn_num[3]), .B(btn_num[4]), 
         .C(btn_num[1]), .D(btn_num[2]), .Z(n2343)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i2_2_lut_3_lut_4_lut_else_3_lut.init = 16'h0440;
    LUT4 i1633_2_lut_3_lut (.A(clk40hz), .B(n1365), .C(row_num[0]), .Z(n2179)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;
    defparam i1633_2_lut_3_lut.init = 16'hb4b4;
    LUT4 n2247_bdd_4_lut (.A(n2247), .B(row_c_3), .C(n2249), .D(row_c_0), 
         .Z(n2329)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n2247_bdd_4_lut.init = 16'h22f0;
    LUT4 i1112_2_lut_4_lut (.A(n2133), .B(n24), .C(n2331), .D(n2342), 
         .Z(n1212)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i1112_2_lut_4_lut.init = 16'hf700;
    LUT4 i1088_2_lut (.A(col_c_2), .B(row_c_2), .Z(n1194)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i1088_2_lut.init = 16'heeee;
    LUT4 i1106_2_lut_4_lut (.A(clk_c_enable_5), .B(n1960), .C(n2335), 
         .D(n543), .Z(n309)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(D))) */ ;
    defparam i1106_2_lut_4_lut.init = 16'h5700;
    LUT4 i1652_2_lut_4_lut (.A(clk_c_enable_5), .B(n1960), .C(n2335), 
         .D(n953), .Z(n2175)) /* synthesis lut_function=(A (B+(C+(D)))+!A (D)) */ ;
    defparam i1652_2_lut_4_lut.init = 16'hffa8;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(clk40hz), .B(n1365), .C(n2335), 
         .D(n6), .Z(n2139)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 sel_right_c_bdd_2_lut_1686_3_lut (.A(n2329), .B(row_c_1), .C(row_c_2), 
         .Z(n2252)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam sel_right_c_bdd_2_lut_1686_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_rep_7_4_lut_4_lut (.A(clk_c_enable_5), .B(n2133), .C(n24), 
         .D(n2335), .Z(n2330)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_rep_7_4_lut_4_lut.init = 16'h0080;
    LUT4 n2274_bdd_3_lut (.A(n2274), .B(n2271), .C(n953), .Z(n2275)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2274_bdd_3_lut.init = 16'hcaca;
    LUT4 n937_bdd_4_lut_1717 (.A(clk_c_enable_5), .B(n1960), .C(n1614), 
         .D(btn_num[4]), .Z(n2278)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam n937_bdd_4_lut_1717.init = 16'h7000;
    LUT4 i1055_3_lut_4_lut_3_lut_4_lut (.A(btn_num[0]), .B(btn_num[1]), 
         .C(btn_num[3]), .D(btn_num[2]), .Z(n1)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam i1055_3_lut_4_lut_3_lut_4_lut.init = 16'h0e10;
    PFUMX i60 (.BLUT(n41), .ALUT(n44), .C0(row_c_2), .Z(n29));
    LUT4 i39_4_lut (.A(row_c_1), .B(row_c_0), .C(n2338), .D(n2337), 
         .Z(n24)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)))) */ ;
    defparam i39_4_lut.init = 16'h6420;
    LUT4 i2_4_lut (.A(key_c_2), .B(key_c_0), .C(key_c_3), .D(key_c_1), 
         .Z(n1339)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(73[4] 112[11])
    defparam i2_4_lut.init = 16'h2080;
    LUT4 i743_2_lut (.A(row_num[0]), .B(row_num[1]), .Z(row_num_31__N_10[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(58[4] 64[13])
    defparam i743_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(clk_c_enable_5), .B(n2151), .C(n2335), .D(n2279), 
         .Z(n308)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i1_4_lut.init = 16'hb3a0;
    LUT4 n947_bdd_3_lut_1697 (.A(n1303), .B(col_c_2), .C(col_c_0), .Z(n2281)) /* synthesis lut_function=(!(A (C)+!A (B))) */ ;
    defparam n947_bdd_3_lut_1697.init = 16'h1b1b;
    LUT4 i1594_2_lut (.A(n947), .B(n953), .Z(n2151)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1594_2_lut.init = 16'heeee;
    LUT4 n947_bdd_3_lut_1734 (.A(col_c_2), .B(col_c_0), .C(row_c_2), .Z(n2282)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam n947_bdd_3_lut_1734.init = 16'h3535;
    LUT4 i1_2_lut (.A(row_c_2), .B(row_c_3), .Z(n2133)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_12 (.A(n1339), .B(n1337), .Z(n2335)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(73[4] 112[11])
    defparam i1_2_lut_rep_12.init = 16'heeee;
    LUT4 i1_2_lut_rep_8_2_lut_3_lut_4_lut (.A(n1339), .B(n1337), .C(n1365), 
         .D(clk40hz), .Z(n2331)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(73[4] 112[11])
    defparam i1_2_lut_rep_8_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 n2284_bdd_3_lut (.A(n2284), .B(n2281), .C(n953), .Z(n2285)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2284_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_4_lut (.A(clk_c_enable_5), .B(n2222), .C(row_c_3), 
         .D(n2335), .Z(n953)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1651_2_lut_rep_10 (.A(clk40hz), .B(n1365), .Z(clk_c_enable_5)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1651_2_lut_rep_10.init = 16'h4444;
    LUT4 i1_3_lut_rep_9_4_lut (.A(clk40hz), .B(n1365), .C(n2335), .D(n1960), 
         .Z(n2332)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i1_3_lut_rep_9_4_lut.init = 16'h4440;
    LUT4 n4_bdd_4_lut_1703 (.A(n2339), .B(row_c_3), .C(btn_num[2]), .D(btn_num[3]), 
         .Z(n2249)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam n4_bdd_4_lut_1703.init = 16'h0048;
    LUT4 i1_4_lut_adj_2 (.A(n1347), .B(n2139), .C(n1350), .D(row_c_2), 
         .Z(n947)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_2.init = 16'hc088;
    LUT4 n937_bdd_3_lut_1715_4_lut (.A(clk40hz), .B(n1365), .C(col_c_2), 
         .D(n1960), .Z(n2277)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;
    defparam n937_bdd_3_lut_1715_4_lut.init = 16'hb0f0;
    LUT4 i1_2_lut_4_lut (.A(col_c_1), .B(n2340), .C(col_c_0), .D(row_c_3), 
         .Z(n1350)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h0048;
    LUT4 mux_681_i2_3_lut_4_lut (.A(clk_c_enable_5), .B(n1337), .C(key_c_2), 
         .D(col_c_0), .Z(n1209)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A !(D))) */ ;
    defparam mux_681_i2_3_lut_4_lut.init = 16'h7f08;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i3_4_lut (.A(row_c_2), .B(n2338), .C(row_c_3), .D(n2139), .Z(n937)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_4_lut_adj_3 (.A(col_c_3), .B(n2341), .C(col_c_2), .D(row_c_3), 
         .Z(n1347)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_3.init = 16'h4800;
    LUT4 mux_681_i1_3_lut_4_lut (.A(clk_c_enable_5), .B(n1337), .C(key_c_2), 
         .D(col_c_0), .Z(n1281)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_681_i1_3_lut_4_lut.init = 16'hf780;
    PFUMX i1701 (.BLUT(n2285), .ALUT(n2280), .C0(n2332), .Z(n312));
    PFUMX i1658 (.BLUT(n2221), .ALUT(n2220), .C0(row_c_2), .Z(n2222));
    LUT4 i1637_4_lut (.A(n2252), .B(n2182), .C(n2331), .D(n1966), .Z(n1614)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i1637_4_lut.init = 16'hfcfd;
    LUT4 n947_bdd_3_lut_1689_3_lut (.A(col_c_2), .B(n1303), .C(col_c_0), 
         .Z(n2271)) /* synthesis lut_function=(A (B (C))+!A ((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam n947_bdd_3_lut_1689_3_lut.init = 16'hd1d1;
    LUT4 n947_bdd_4_lut_1698_4_lut (.A(col_c_2), .B(btn_num[1]), .C(n1614), 
         .D(n937), .Z(n2273)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam n947_bdd_4_lut_1698_4_lut.init = 16'h55c0;
    LUT4 n947_bdd_3_lut_1696_3_lut (.A(col_c_2), .B(col_c_0), .C(row_c_2), 
         .Z(n2272)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam n947_bdd_3_lut_1696_3_lut.init = 16'hc5c5;
    LUT4 n947_bdd_4_lut_1712_4_lut (.A(col_c_2), .B(btn_num[0]), .C(n1614), 
         .D(n937), .Z(n2283)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam n947_bdd_4_lut_1712_4_lut.init = 16'h55c0;
    LUT4 mux_180_i3_4_lut_4_lut (.A(col_c_2), .B(n1614), .C(n937), .D(btn_num[2]), 
         .Z(n468)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam mux_180_i3_4_lut_4_lut.init = 16'h5c50;
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    LUT4 i1110_4_lut_4_lut (.A(col_c_2), .B(n937), .C(n947), .D(n394), 
         .Z(n508)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    defparam i1110_4_lut_4_lut.init = 16'hf7f4;
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(8[2:5])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(7[2:5])
    LUT4 i2_3_lut (.A(row_c_0), .B(row_c_3), .C(n29), .Z(n1966)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    IB key_pad_3 (.I(key[3]), .O(key_c_3));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(6[2:5])
    IB key_pad_2 (.I(key[2]), .O(key_c_2));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(6[2:5])
    IB key_pad_1 (.I(key[1]), .O(key_c_1));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(6[2:5])
    IB key_pad_0 (.I(key[0]), .O(key_c_0));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(6[2:5])
    OB sel_right_pad (.I(GND_net), .O(sel_right));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(13[2:11])
    OB sel_left_pad (.I(GND_net), .O(sel_left));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(12[2:10])
    OB seg_right_pad_6 (.I(seg_right_c_0), .O(seg_right[6]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_right_pad_5 (.I(seg_right_c_1), .O(seg_right[5]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_right_pad_4 (.I(seg_right_c_2), .O(seg_right[4]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    LUT4 i718_2_lut_rep_16 (.A(btn_num[0]), .B(btn_num[1]), .Z(n2339)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i718_2_lut_rep_16.init = 16'heeee;
    FD1P3JX row_i3_i1 (.D(row_num_31__N_10[0]), .SP(clk_c_enable_5), .PD(n1645), 
            .CK(clk_c), .Q(row_c_3));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_i3_i1.GSR = "ENABLED";
    OB seg_right_pad_3 (.I(seg_right_c_3), .O(seg_right[3]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_right_pad_2 (.I(seg_right_c_4), .O(seg_right[2]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_right_pad_1 (.I(seg_right_c_5), .O(seg_right[1]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_right_pad_0 (.I(seg_right_c_6), .O(seg_right[0]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(11[2:11])
    OB seg_left_pad_6 (.I(seg_left_c_0), .O(seg_left[6]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    OB seg_left_pad_5 (.I(seg_left_c_1), .O(seg_left[5]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    FD1P3JX row_i3_i2 (.D(row_num[0]), .SP(clk_c_enable_5), .PD(n1645), 
            .CK(clk_c), .Q(row_c_2));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_i3_i2.GSR = "ENABLED";
    OB seg_left_pad_4 (.I(seg_left_c_2), .O(seg_left[4]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    OB seg_left_pad_3 (.I(seg_left_c_3), .O(seg_left[3]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    LUT4 n4_bdd_3_lut_4_lut (.A(btn_num[0]), .B(btn_num[1]), .C(btn_num[2]), 
         .D(btn_num[3]), .Z(n2230)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam n4_bdd_3_lut_4_lut.init = 16'h1e00;
    OB seg_left_pad_2 (.I(seg_left_c_4), .O(seg_left[2]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    OB seg_left_pad_1 (.I(seg_left_c_5), .O(seg_left[1]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    OB seg_left_pad_0 (.I(seg_left_c_6), .O(seg_left[0]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(10[2:10])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(9[2:5])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(9[2:5])
    PFUMX i1699 (.BLUT(n2283), .ALUT(n2282), .C0(n947), .Z(n2284));
    FD1P3JX row_i3_i4 (.D(row_num[0]), .SP(clk_c_enable_5), .PD(n1366), 
            .CK(clk_c), .Q(row_c_0));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_i3_i4.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(btn_num[4]), .B(n2230), .C(n122), .D(row_c_1), 
         .Z(n41)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i1_4_lut_4_lut.init = 16'hf400;
    LUT4 i1_2_lut_rep_17 (.A(col_c_2), .B(col_c_3), .Z(n2340)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_17.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_4_lut (.A(btn_num[4]), .B(n122), .C(n1), .D(row_c_1), 
         .Z(n44)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h00dc;
    LUT4 i1_2_lut_rep_18 (.A(col_c_0), .B(col_c_1), .Z(n2341)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_18.init = 16'h8888;
    LUT4 n1362_bdd_3_lut_1672 (.A(n2337), .B(row_c_1), .C(row_c_0), .Z(n2221)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n1362_bdd_3_lut_1672.init = 16'h8080;
    LUT4 i1_2_lut_adj_4 (.A(row_c_0), .B(row_c_1), .Z(n6)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.init = 16'h8888;
    PFUMX i1694 (.BLUT(n2278), .ALUT(n2277), .C0(n937), .Z(n2279));
    FD1S3AX row_num__i1 (.D(n2179), .CK(clk_c), .Q(row_num[0])) /* synthesis lse_init_val=0 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_num__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_15_4_lut (.A(col_c_0), .B(col_c_1), .C(col_c_2), 
         .D(col_c_3), .Z(n2338)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i1_3_lut_rep_15_4_lut.init = 16'h0880;
    LUT4 i2_4_lut_adj_5 (.A(key_c_0), .B(key_c_3), .C(key_c_1), .D(key_c_2), 
         .Z(n1337)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(73[4] 112[11])
    defparam i2_4_lut_adj_5.init = 16'h2080;
    LUT4 i2_3_lut_4_lut_4_lut_adj_6 (.A(clk_c_enable_5), .B(n1339), .C(key_c_2), 
         .D(n1337), .Z(n1956)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_6.init = 16'h2000;
    PFUMX i1692 (.BLUT(n2275), .ALUT(n1219), .C0(n2332), .Z(n311));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 n947_bdd_1_lut_3_lut_4_lut (.A(clk_c_enable_5), .B(n1339), .C(key_c_0), 
         .D(n1281), .Z(n2280)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (D))) */ ;
    defparam n947_bdd_1_lut_3_lut_4_lut.init = 16'h087f;
    LUT4 mux_683_i2_3_lut_4_lut (.A(clk_c_enable_5), .B(n1339), .C(key_c_0), 
         .D(n1209), .Z(n1219)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam mux_683_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 i1636_2_lut_3_lut_4_lut (.A(col_c_0), .B(col_c_1), .C(col_c_3), 
         .D(col_c_2), .Z(n2182)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i1636_2_lut_3_lut_4_lut.init = 16'h7fff;
    PFUMX mux_216_i4 (.BLUT(n508), .ALUT(n1212), .C0(n953), .Z(n543));
    LUT4 i3_4_lut_adj_7 (.A(n2337), .B(row_c_1), .C(row_c_0), .D(n2133), 
         .Z(n1960)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut_adj_7.init = 16'h0800;
    PFUMX i1690 (.BLUT(n2273), .ALUT(n2272), .C0(n947), .Z(n2274));
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i1139_2_lut_rep_19 (.A(col_c_2), .B(row_c_1), .Z(n2342)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1139_2_lut_rep_19.init = 16'heeee;
    L6MUX21 mux_224_i3 (.D0(n509), .D1(n544), .SD(n2175), .Z(n310));
    FD1S3AX btn_num_i4 (.D(n308), .CK(clk_c), .Q(btn_num[4]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam btn_num_i4.GSR = "ENABLED";
    FD1S3AX btn_num_i3 (.D(n309), .CK(clk_c), .Q(btn_num[3]));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam btn_num_i3.GSR = "ENABLED";
    FD1P3JX row_i3_i3 (.D(row_num_31__N_10[0]), .SP(clk_c_enable_5), .PD(n1366), 
            .CK(clk_c), .Q(row_c_1));   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam row_i3_i3.GSR = "ENABLED";
    LUT4 mux_682_i3_4_lut_4_lut (.A(col_c_2), .B(row_c_1), .C(row_c_0), 
         .D(n2330), .Z(n1213)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam mux_682_i3_4_lut_4_lut.init = 16'hfa11;
    LUT4 i2_3_lut_rep_14_4_lut (.A(col_c_2), .B(col_c_3), .C(col_c_0), 
         .D(col_c_1), .Z(n2337)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;
    defparam i2_3_lut_rep_14_4_lut.init = 16'h0880;
    PFUMX mux_196_i3 (.BLUT(n468), .ALUT(n1194), .C0(n947), .Z(n509));
    LUT4 i1657_2_lut_3_lut (.A(clk40hz), .B(n1365), .C(row_num[1]), .Z(n1645)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1657_2_lut_3_lut.init = 16'h0404;
    PFUMX mux_216_i3 (.BLUT(n1213), .ALUT(n1956), .C0(n2332), .Z(n544));
    LUT4 i624_1_lut (.A(row_num[0]), .Z(row_num_31__N_10[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(57[3] 65[10])
    defparam i624_1_lut.init = 16'h5555;
    LUT4 i1119_2_lut (.A(btn_num[3]), .B(n1614), .Z(n394)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i1119_2_lut.init = 16'h8888;
    LUT4 i758_3_lut (.A(row_c_1), .B(row_c_0), .C(n2330), .Z(n1303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(72[3] 113[10])
    defparam i758_3_lut.init = 16'hcaca;
    PFUMX i1730 (.BLUT(n2343), .ALUT(n2344), .C0(btn_num[0]), .Z(n122));
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module seg
//

module seg (n316, seg_right_c_0, seg_right_c_1, seg_right_c_2, seg_right_c_3, 
            seg_right_c_4, seg_right_c_5, seg_right_c_6, clk_c, GND_net, 
            VCC_net, seg_left_c_0, seg_left_c_1, seg_left_c_2, seg_left_c_3, 
            seg_left_c_4, seg_left_c_5, seg_left_c_6);
    input [4:0]n316;
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
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(7[2:5])
    
    SP8KC btn_num_4__I_0 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), 
          .DI3(GND_net), .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), 
          .DI7(GND_net), .DI8(GND_net), .AD0(GND_net), .AD1(GND_net), 
          .AD2(GND_net), .AD3(n316[0]), .AD4(n316[1]), .AD5(n316[2]), 
          .AD6(n316[3]), .AD7(n316[4]), .AD8(GND_net), .AD9(GND_net), 
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
          .AD2(GND_net), .AD3(n316[0]), .AD4(n316[1]), .AD5(n316[2]), 
          .AD6(n316[3]), .AD7(n316[4]), .AD8(GND_net), .AD9(GND_net), 
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

module freqdivider (GND_net, clk40hz, clk_c, n1365);
    input GND_net;
    output clk40hz;
    input clk_c;
    output n1365;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/lab1.vhd(7[2:5])
    
    wire n1943;
    wire [31:0]cnt1;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(17[12:16])
    wire [31:0]n133;
    
    wire n1944, clk40hz_N_183, n25, n40, n30, n44, n38, n26, 
        n1941, n1942, n1940, n1946, n1947, n1939, n1950, n1951, 
        n2167, n2157, n10, n1945, n1949, n1954, n1948, n1953, 
        n41, n46, n42, n1952;
    
    CCU2D cnt1_706_add_4_11 (.A0(cnt1[9]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1943), .COUT(n1944), .S0(n133[9]), .S1(n133[10]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_11.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_11.INJECT1_1 = "NO";
    FD1S3AX clk40hz_26 (.D(clk40hz_N_183), .CK(clk_c), .Q(clk40hz)) /* synthesis LSE_LINE_FILE_ID=21, LSE_LCOL=5, LSE_RCOL=16, LSE_LLINE=43, LSE_RLINE=43 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(19[3] 26[10])
    defparam clk40hz_26.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(cnt1[30]), .B(cnt1[2]), .Z(n25)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i20_4_lut (.A(cnt1[1]), .B(n40), .C(n30), .D(cnt1[31]), .Z(n44)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i14_4_lut (.A(cnt1[29]), .B(cnt1[18]), .C(cnt1[3]), .D(cnt1[24]), 
         .Z(n38)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i14_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(cnt1[15]), .B(cnt1[27]), .Z(n26)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i16_4_lut (.A(cnt1[26]), .B(cnt1[10]), .C(cnt1[28]), .D(cnt1[12]), 
         .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i16_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(cnt1[23]), .B(cnt1[22]), .Z(n30)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_1 (.A(clk40hz), .B(n1365), .Z(clk40hz_N_183)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_1.init = 16'h6666;
    CCU2D cnt1_706_add_4_7 (.A0(cnt1[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1941), .COUT(n1942), .S0(n133[5]), .S1(n133[6]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_7.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_5 (.A0(cnt1[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1940), .COUT(n1941), .S0(n133[3]), .S1(n133[4]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_5.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_17 (.A0(cnt1[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1946), .COUT(n1947), .S0(n133[15]), .S1(n133[16]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_17.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_3 (.A0(cnt1[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1939), .COUT(n1940), .S0(n133[1]), .S1(n133[2]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_3.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_25 (.A0(cnt1[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1950), .COUT(n1951), .S0(n133[23]), .S1(n133[24]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_25.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_25.INJECT1_1 = "NO";
    LUT4 i1641_4_lut (.A(n2167), .B(n2157), .C(cnt1[7]), .D(n10), .Z(n1365)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i1641_4_lut.init = 16'h0080;
    CCU2D cnt1_706_add_4_15 (.A0(cnt1[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1945), .COUT(n1946), .S0(n133[13]), .S1(n133[14]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_15.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_23 (.A0(cnt1[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1949), .COUT(n1950), .S0(n133[21]), .S1(n133[22]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_23.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_23.INJECT1_1 = "NO";
    LUT4 i1609_4_lut (.A(cnt1[5]), .B(cnt1[4]), .C(cnt1[17]), .D(cnt1[11]), 
         .Z(n2167)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1609_4_lut.init = 16'h8000;
    CCU2D cnt1_706_add_4_33 (.A0(cnt1[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1954), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_33.INIT1 = 16'h0000;
    defparam cnt1_706_add_4_33.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_33.INJECT1_1 = "NO";
    LUT4 i1599_2_lut (.A(cnt1[14]), .B(cnt1[6]), .Z(n2157)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1599_2_lut.init = 16'h8888;
    CCU2D cnt1_706_add_4_21 (.A0(cnt1[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1948), .COUT(n1949), .S0(n133[19]), .S1(n133[20]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_21.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_31 (.A0(cnt1[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1953), .COUT(n1954), .S0(n133[29]), .S1(n133[30]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_31.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_31.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(n41), .B(cnt1[8]), .C(n46), .D(n42), .Z(n10)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    CCU2D cnt1_706_add_4_19 (.A0(cnt1[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1947), .COUT(n1948), .S0(n133[17]), .S1(n133[18]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_19.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n1939), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_1.INIT0 = 16'hF000;
    defparam cnt1_706_add_4_1.INIT1 = 16'h0555;
    defparam cnt1_706_add_4_1.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_1.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_13 (.A0(cnt1[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1944), .COUT(n1945), .S0(n133[11]), .S1(n133[12]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_13.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_13.INJECT1_1 = "NO";
    FD1S3IX cnt1_706__i0 (.D(n133[0]), .CK(clk_c), .CD(n1365), .Q(cnt1[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i0.GSR = "ENABLED";
    CCU2D cnt1_706_add_4_29 (.A0(cnt1[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1952), .COUT(n1953), .S0(n133[27]), .S1(n133[28]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_29.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_29.INJECT1_1 = "NO";
    CCU2D cnt1_706_add_4_27 (.A0(cnt1[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1951), .COUT(n1952), .S0(n133[25]), .S1(n133[26]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_27.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_27.INJECT1_1 = "NO";
    FD1S3IX cnt1_706__i31 (.D(n133[31]), .CK(clk_c), .CD(n1365), .Q(cnt1[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i31.GSR = "ENABLED";
    FD1S3IX cnt1_706__i30 (.D(n133[30]), .CK(clk_c), .CD(n1365), .Q(cnt1[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i30.GSR = "ENABLED";
    FD1S3IX cnt1_706__i29 (.D(n133[29]), .CK(clk_c), .CD(n1365), .Q(cnt1[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i29.GSR = "ENABLED";
    FD1S3IX cnt1_706__i28 (.D(n133[28]), .CK(clk_c), .CD(n1365), .Q(cnt1[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i28.GSR = "ENABLED";
    FD1S3IX cnt1_706__i27 (.D(n133[27]), .CK(clk_c), .CD(n1365), .Q(cnt1[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i27.GSR = "ENABLED";
    FD1S3IX cnt1_706__i26 (.D(n133[26]), .CK(clk_c), .CD(n1365), .Q(cnt1[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i26.GSR = "ENABLED";
    FD1S3IX cnt1_706__i25 (.D(n133[25]), .CK(clk_c), .CD(n1365), .Q(cnt1[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i25.GSR = "ENABLED";
    FD1S3IX cnt1_706__i24 (.D(n133[24]), .CK(clk_c), .CD(n1365), .Q(cnt1[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i24.GSR = "ENABLED";
    FD1S3IX cnt1_706__i23 (.D(n133[23]), .CK(clk_c), .CD(n1365), .Q(cnt1[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i23.GSR = "ENABLED";
    FD1S3IX cnt1_706__i22 (.D(n133[22]), .CK(clk_c), .CD(n1365), .Q(cnt1[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i22.GSR = "ENABLED";
    FD1S3IX cnt1_706__i21 (.D(n133[21]), .CK(clk_c), .CD(n1365), .Q(cnt1[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i21.GSR = "ENABLED";
    FD1S3IX cnt1_706__i20 (.D(n133[20]), .CK(clk_c), .CD(n1365), .Q(cnt1[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i20.GSR = "ENABLED";
    FD1S3IX cnt1_706__i19 (.D(n133[19]), .CK(clk_c), .CD(n1365), .Q(cnt1[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i19.GSR = "ENABLED";
    FD1S3IX cnt1_706__i18 (.D(n133[18]), .CK(clk_c), .CD(n1365), .Q(cnt1[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i18.GSR = "ENABLED";
    FD1S3IX cnt1_706__i17 (.D(n133[17]), .CK(clk_c), .CD(n1365), .Q(cnt1[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i17.GSR = "ENABLED";
    FD1S3IX cnt1_706__i16 (.D(n133[16]), .CK(clk_c), .CD(n1365), .Q(cnt1[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i16.GSR = "ENABLED";
    FD1S3IX cnt1_706__i15 (.D(n133[15]), .CK(clk_c), .CD(n1365), .Q(cnt1[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i15.GSR = "ENABLED";
    FD1S3IX cnt1_706__i14 (.D(n133[14]), .CK(clk_c), .CD(n1365), .Q(cnt1[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i14.GSR = "ENABLED";
    FD1S3IX cnt1_706__i13 (.D(n133[13]), .CK(clk_c), .CD(n1365), .Q(cnt1[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i13.GSR = "ENABLED";
    FD1S3IX cnt1_706__i12 (.D(n133[12]), .CK(clk_c), .CD(n1365), .Q(cnt1[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i12.GSR = "ENABLED";
    FD1S3IX cnt1_706__i11 (.D(n133[11]), .CK(clk_c), .CD(n1365), .Q(cnt1[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i11.GSR = "ENABLED";
    FD1S3IX cnt1_706__i10 (.D(n133[10]), .CK(clk_c), .CD(n1365), .Q(cnt1[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i10.GSR = "ENABLED";
    FD1S3IX cnt1_706__i9 (.D(n133[9]), .CK(clk_c), .CD(n1365), .Q(cnt1[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i9.GSR = "ENABLED";
    FD1S3IX cnt1_706__i8 (.D(n133[8]), .CK(clk_c), .CD(n1365), .Q(cnt1[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i8.GSR = "ENABLED";
    FD1S3IX cnt1_706__i7 (.D(n133[7]), .CK(clk_c), .CD(n1365), .Q(cnt1[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i7.GSR = "ENABLED";
    FD1S3IX cnt1_706__i6 (.D(n133[6]), .CK(clk_c), .CD(n1365), .Q(cnt1[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i6.GSR = "ENABLED";
    FD1S3IX cnt1_706__i5 (.D(n133[5]), .CK(clk_c), .CD(n1365), .Q(cnt1[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i5.GSR = "ENABLED";
    FD1S3IX cnt1_706__i4 (.D(n133[4]), .CK(clk_c), .CD(n1365), .Q(cnt1[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i4.GSR = "ENABLED";
    FD1S3IX cnt1_706__i3 (.D(n133[3]), .CK(clk_c), .CD(n1365), .Q(cnt1[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i3.GSR = "ENABLED";
    FD1S3IX cnt1_706__i2 (.D(n133[2]), .CK(clk_c), .CD(n1365), .Q(cnt1[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i2.GSR = "ENABLED";
    FD1S3IX cnt1_706__i1 (.D(n133[1]), .CK(clk_c), .CD(n1365), .Q(cnt1[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706__i1.GSR = "ENABLED";
    CCU2D cnt1_706_add_4_9 (.A0(cnt1[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt1[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n1942), .COUT(n1943), .S0(n133[7]), .S1(n133[8]));   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(24[13:17])
    defparam cnt1_706_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt1_706_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt1_706_add_4_9.INJECT1_0 = "NO";
    defparam cnt1_706_add_4_9.INJECT1_1 = "NO";
    LUT4 i17_4_lut (.A(cnt1[20]), .B(cnt1[19]), .C(cnt1[0]), .D(cnt1[21]), 
         .Z(n41)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(n25), .B(n44), .C(n38), .D(n26), .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(cnt1[25]), .B(cnt1[16]), .C(cnt1[9]), .D(cnt1[13]), 
         .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab1/impl1/source/freq_div.vhd(20[7:20])
    defparam i18_4_lut.init = 16'hfffe;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

