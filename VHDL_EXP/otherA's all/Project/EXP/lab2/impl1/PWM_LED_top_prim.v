// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Sun Nov 26 15:53:22 2023
//
// Verilog Description of module PWM_LED_top
//

module PWM_LED_top (clk, led, lumUP, lumDN, frqUP, frqDN, col, 
            row);   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(6[8:19])
    input clk;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(8[5:8])
    output [7:0]led;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    input lumUP;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(10[2:7])
    input lumDN;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(11[2:7])
    input frqUP;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(12[2:7])
    input frqDN;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(13[2:7])
    input [3:0]col;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    output [3:0]row;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(15[2:5])
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(8[5:8])
    
    wire GND_net, VCC_net, led_c_1, lumUP_c, lumDN_c, frqUP_c, frqDN_c, 
        col_c_3, col_c_2, col_c_1, col_c_0, row_c_3, row_c_2, row_c_1, 
        row_c_0;
    wire [4:0]key_code;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    wire [15:0]sawtooth_cnt;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(20[9:21])
    wire [31:0]lumdivision;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(23[9:20])
    wire [31:0]frqnum;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(24[9:15])
    
    wire sawtooth_cnt_15__N_102, clk300hz_enable_5;
    wire [9:0]lumcnt;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(177[12:18])
    
    wire count_flag_N_192, n709, led_7__N_140, n3640, n561, n568, 
        n580, n581, n11419, n32, n8808, n8807, n10627, n926, 
        n56, n1108, n8806, n1463, n8805, n1638, n8804, n8803, 
        n2299, n8802, n11433, n8801, n8800, n8799, n9379, n11423, 
        n11422, n11421, n11420, n10753, n10645, n5898, n11408, 
        n47, n11378, n11060, n10717, n11866, n6, n11846, n11843, 
        n11842, n12202, n11834, n11829, n11825;
    
    VHI i7209 (.Z(VCC_net));
    OB led_pad_1 (.I(led_c_1), .O(led[1]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    LUT4 i9171_2_lut (.A(n11060), .B(n11423), .Z(clk300hz_enable_5)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i9171_2_lut.init = 16'h2222;
    LUT4 i9169_4_lut (.A(n32), .B(n11829), .C(n5898), .D(n568), .Z(n11060)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i9169_4_lut.init = 16'hfffb;
    OB led_pad_2 (.I(led_c_1), .O(led[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    PFUMX i8788 (.BLUT(n10753), .ALUT(n580), .C0(n11825), .Z(n10717));
    LUT4 key_code_4__bdd_4_lut_9387 (.A(key_code[4]), .B(key_code[2]), .C(key_code[3]), 
         .D(n11846), .Z(n11378)) /* synthesis lut_function=(A+(B (C+!(D))+!B ((D)+!C))) */ ;
    defparam key_code_4__bdd_4_lut_9387.init = 16'hfbef;
    GSR GSR_INST (.GSR(n11842));
    VLO i1 (.Z(GND_net));
    CCU2D sub_293_add_2_11 (.A0(sawtooth_cnt[12]), .B0(frqnum[12]), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8808), .S1(n709));
    defparam sub_293_add_2_11.INIT0 = 16'h5999;
    defparam sub_293_add_2_11.INIT1 = 16'h0000;
    defparam sub_293_add_2_11.INJECT1_0 = "NO";
    defparam sub_293_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_9 (.A0(sawtooth_cnt[10]), .B0(frqnum[10]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[11]), .B1(frqnum[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8807), .COUT(n8808));
    defparam sub_293_add_2_9.INIT0 = 16'h5999;
    defparam sub_293_add_2_9.INIT1 = 16'h5999;
    defparam sub_293_add_2_9.INJECT1_0 = "NO";
    defparam sub_293_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_7 (.A0(sawtooth_cnt[8]), .B0(frqnum[9]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[9]), .B1(frqnum[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8806), .COUT(n8807));
    defparam sub_293_add_2_7.INIT0 = 16'h5999;
    defparam sub_293_add_2_7.INIT1 = 16'h5999;
    defparam sub_293_add_2_7.INJECT1_0 = "NO";
    defparam sub_293_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_5 (.A0(sawtooth_cnt[6]), .B0(frqnum[6]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[7]), .B1(frqnum[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8805), .COUT(n8806));
    defparam sub_293_add_2_5.INIT0 = 16'h5999;
    defparam sub_293_add_2_5.INIT1 = 16'h5999;
    defparam sub_293_add_2_5.INJECT1_0 = "NO";
    defparam sub_293_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_3 (.A0(sawtooth_cnt[4]), .B0(frqnum[4]), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[5]), .B1(frqnum[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8804), .COUT(n8805));
    defparam sub_293_add_2_3.INIT0 = 16'h5999;
    defparam sub_293_add_2_3.INIT1 = 16'h5999;
    defparam sub_293_add_2_3.INJECT1_0 = "NO";
    defparam sub_293_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_293_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(sawtooth_cnt[3]), .B1(frqnum[3]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8804));
    defparam sub_293_add_2_1.INIT0 = 16'h0000;
    defparam sub_293_add_2_1.INIT1 = 16'h5999;
    defparam sub_293_add_2_1.INJECT1_0 = "NO";
    defparam sub_293_add_2_1.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_11 (.A0(lumcnt[9]), .B0(n12202), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8803), .S1(count_flag_N_192));
    defparam sub_292_add_2_11.INIT0 = 16'h5999;
    defparam sub_292_add_2_11.INIT1 = 16'h0000;
    defparam sub_292_add_2_11.INJECT1_0 = "NO";
    defparam sub_292_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_9 (.A0(lumcnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8802), .COUT(n8803));
    defparam sub_292_add_2_9.INIT0 = 16'h5555;
    defparam sub_292_add_2_9.INIT1 = 16'h5555;
    defparam sub_292_add_2_9.INJECT1_0 = "NO";
    defparam sub_292_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_7 (.A0(lumcnt[5]), .B0(lumdivision[6]), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[6]), .B1(lumdivision[6]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8801), .COUT(n8802));
    defparam sub_292_add_2_7.INIT0 = 16'h5999;
    defparam sub_292_add_2_7.INIT1 = 16'h5999;
    defparam sub_292_add_2_7.INJECT1_0 = "NO";
    defparam sub_292_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_5 (.A0(lumcnt[3]), .B0(lumdivision[3]), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[4]), .B1(lumdivision[4]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8800), .COUT(n8801));
    defparam sub_292_add_2_5.INIT0 = 16'h5999;
    defparam sub_292_add_2_5.INIT1 = 16'h5999;
    defparam sub_292_add_2_5.INJECT1_0 = "NO";
    defparam sub_292_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_3 (.A0(lumcnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(lumcnt[2]), .B1(lumdivision[2]), .C1(GND_net), 
          .D1(GND_net), .CIN(n8799), .COUT(n8800));
    defparam sub_292_add_2_3.INIT0 = 16'h5555;
    defparam sub_292_add_2_3.INIT1 = 16'h5999;
    defparam sub_292_add_2_3.INJECT1_0 = "NO";
    defparam sub_292_add_2_3.INJECT1_1 = "NO";
    CCU2D sub_292_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[0]), .B1(lumdivision[0]), .C1(GND_net), .D1(GND_net), 
          .COUT(n8799));
    defparam sub_292_add_2_1.INIT0 = 16'h0000;
    defparam sub_292_add_2_1.INIT1 = 16'h5999;
    defparam sub_292_add_2_1.INJECT1_0 = "NO";
    defparam sub_292_add_2_1.INJECT1_1 = "NO";
    LUT4 n568_bdd_4_lut_9225 (.A(n561), .B(n11378), .C(col_c_0), .D(col_c_2), 
         .Z(n11419)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n568_bdd_4_lut_9225.init = 16'h4000;
    LUT4 n568_bdd_4_lut_9226 (.A(n47), .B(n10627), .C(col_c_2), .D(col_c_3), 
         .Z(n11420)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;
    defparam n568_bdd_4_lut_9226.init = 16'hb000;
    LUT4 n568_bdd_4_lut_9308 (.A(n11408), .B(n10645), .C(col_c_0), .D(n11843), 
         .Z(n11421)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (C (D)))) */ ;
    defparam n568_bdd_4_lut_9308.init = 16'h0777;
    IB col_pad_0 (.I(col[0]), .O(col_c_0));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    IB col_pad_1 (.I(col[1]), .O(col_c_1));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    IB col_pad_2 (.I(col[2]), .O(col_c_2));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    IB col_pad_3 (.I(col[3]), .O(col_c_3));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    IB frqDN_pad (.I(frqDN), .O(frqDN_c));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(13[2:7])
    IB frqUP_pad (.I(frqUP), .O(frqUP_c));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(12[2:7])
    IB lumDN_pad (.I(lumDN), .O(lumDN_c));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(11[2:7])
    IB lumUP_pad (.I(lumUP), .O(lumUP_c));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(10[2:7])
    IB clk_pad (.I(clk), .O(clk_c));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(8[5:8])
    OB row_pad_0 (.I(row_c_0), .O(row[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(15[2:5])
    OB row_pad_1 (.I(row_c_1), .O(row[1]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(15[2:5])
    OB row_pad_2 (.I(row_c_2), .O(row[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(15[2:5])
    OB row_pad_3 (.I(row_c_3), .O(row[3]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(15[2:5])
    OB led_pad_0 (.I(led_c_1), .O(led[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    OB led_pad_3 (.I(led_c_1), .O(led[3]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    LUT4 sub_292_inv_0_i10_1_lut (.A(lumdivision[9]), .Z(n2299)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i10_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i7_1_lut (.A(lumdivision[6]), .Z(n1463)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i7_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i5_1_lut (.A(lumdivision[4]), .Z(n1638)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i5_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i3_1_lut (.A(lumdivision[2]), .Z(n926)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i3_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i4_1_lut (.A(lumdivision[3]), .Z(n1108)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i4_1_lut.init = 16'h5555;
    LUT4 sub_292_inv_0_i1_1_lut (.A(lumdivision[0]), .Z(n56)) /* synthesis lut_function=(!(A)) */ ;
    defparam sub_292_inv_0_i1_1_lut.init = 16'h5555;
    OB led_pad_4 (.I(led_c_1), .O(led[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    OB led_pad_5 (.I(led_c_1), .O(led[5]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    OB led_pad_6 (.I(led_c_1), .O(led[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    OB led_pad_7 (.I(led_c_1), .O(led[7]));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(9[2:5])
    LUT4 i3_4_lut (.A(col_c_0), .B(n561), .C(n11825), .D(row_c_0), .Z(n9379)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i3_4_lut.init = 16'h0010;
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    KEY_BOARD_SUB instant2 (.clk300hz_enable_5(clk300hz_enable_5), .clk_c(clk_c), 
            .row_c_2(row_c_2), .col_c_1(col_c_1), .col_c_0(col_c_0), .col_c_2(col_c_2), 
            .n11843(n11843), .n32(n32), .\key_code[4] (key_code[4]), .n9379(n9379), 
            .row_c_1(row_c_1), .row_c_0(row_c_0), .n10645(n10645), .col_c_3(col_c_3), 
            .row_c_3(row_c_3), .\key_code[2] (key_code[2]), .n3640(n3640), 
            .n581(n581), .n11825(n11825), .GND_net(GND_net), .n11433(n11433), 
            .n561(n561), .n5898(n5898), .n6(n6), .n11419(n11419), .n11422(n11422), 
            .n11423(n11423), .\key_code[3] (key_code[3]), .led_7__N_140(led_7__N_140), 
            .led_c_1(led_c_1), .n11866(n11866), .n11834(n11834), .n568(n568), 
            .n11846(n11846), .n47(n47), .n10717(n10717), .n11842(n11842), 
            .n10627(n10627), .n11408(n11408));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(58[12:25])
    LUT4 i2108_3_lut_4_lut (.A(n11834), .B(n568), .C(col_c_3), .D(col_c_1), 
         .Z(n3640)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (D)))) */ ;
    defparam i2108_3_lut_4_lut.init = 16'h0e1f;
    PFUMX i9227 (.BLUT(n11421), .ALUT(n11420), .C0(n568), .Z(n11422));
    LUT4 n56_bdd_2_lut_3_lut_4_lut (.A(col_c_0), .B(n11843), .C(n568), 
         .D(col_c_3), .Z(n11433)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam n56_bdd_2_lut_3_lut_4_lut.init = 16'h070f;
    LUT4 i1_2_lut_rep_392_3_lut (.A(col_c_0), .B(n11843), .C(col_c_3), 
         .Z(n11829)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i1_2_lut_rep_392_3_lut.init = 16'h8080;
    LUT4 i3_4_lut_adj_130 (.A(n709), .B(sawtooth_cnt[15]), .C(sawtooth_cnt[13]), 
         .D(sawtooth_cnt[14]), .Z(sawtooth_cnt_15__N_102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_130.init = 16'hfffe;
    LUT4 i8822_4_lut_4_lut (.A(col_c_3), .B(n568), .C(col_c_2), .D(n11834), 
         .Z(n10753)) /* synthesis lut_function=(!(A (B (C)+!B (D))+!A (B+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i8822_4_lut_4_lut.init = 16'h083b;
    LUT4 i4197_3_lut_3_lut (.A(col_c_2), .B(col_c_0), .C(n561), .Z(n580)) /* synthesis lut_function=(A (B (C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i4197_3_lut_3_lut.init = 16'hc4c4;
    LUT4 i1_2_lut (.A(col_c_0), .B(n561), .Z(n581)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i2_2_lut_3_lut_4_lut (.A(col_c_3), .B(col_c_2), .C(col_c_1), 
         .D(col_c_0), .Z(n6)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0880;
    LUT4 i1_2_lut_rep_429 (.A(col_c_2), .B(row_c_3), .Z(n11866)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i1_2_lut_rep_429.init = 16'h8888;
    LUT4 i2_3_lut_rep_406_4_lut (.A(col_c_2), .B(row_c_3), .C(col_c_1), 
         .D(n10645), .Z(n11843)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(14[2:5])
    defparam i2_3_lut_rep_406_4_lut.init = 16'h8000;
    PWM_LED instant1 (.clk_c(clk_c), .frqUP_c(frqUP_c), .frqDN_c(frqDN_c), 
            .\lumdivision[0] (lumdivision[0]), .\frqnum[3] (frqnum[3]), 
            .lumUP_c(lumUP_c), .lumcnt({lumcnt}), .\lumdivision[3] (lumdivision[3]), 
            .\lumdivision[2] (lumdivision[2]), .\frqnum[9] (frqnum[9]), 
            .sawtooth_cnt({sawtooth_cnt[15:3], Open_0, Open_1, Open_2}), 
            .GND_net(GND_net), .\frqnum[6] (frqnum[6]), .\frqnum[5] (frqnum[5]), 
            .\frqnum[4] (frqnum[4]), .\lumdivision[4] (lumdivision[4]), 
            .\lumdivision[6] (lumdivision[6]), .sawtooth_cnt_15__N_102(sawtooth_cnt_15__N_102), 
            .led_7__N_140(led_7__N_140), .\frqnum[10] (frqnum[10]), .\frqnum[11] (frqnum[11]), 
            .\lumdivision[9] (lumdivision[9]), .n12202(n12202), .n2299(n2299), 
            .n1463(n1463), .n1638(n1638), .n926(n926), .n1108(n1108), 
            .n56(n56), .\frqnum[12] (frqnum[12]), .lumDN_c(lumDN_c), .VCC_net(VCC_net), 
            .count_flag_N_192(count_flag_N_192));   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(47[12:19])
    
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
// Verilog Description of module KEY_BOARD_SUB
//

module KEY_BOARD_SUB (clk300hz_enable_5, clk_c, row_c_2, col_c_1, col_c_0, 
            col_c_2, n11843, n32, \key_code[4] , n9379, row_c_1, 
            row_c_0, n10645, col_c_3, row_c_3, \key_code[2] , n3640, 
            n581, n11825, GND_net, n11433, n561, n5898, n6, n11419, 
            n11422, n11423, \key_code[3] , led_7__N_140, led_c_1, 
            n11866, n11834, n568, n11846, n47, n10717, n11842, 
            n10627, n11408);
    input clk300hz_enable_5;
    input clk_c;
    output row_c_2;
    input col_c_1;
    input col_c_0;
    input col_c_2;
    input n11843;
    output n32;
    output \key_code[4] ;
    input n9379;
    output row_c_1;
    output row_c_0;
    output n10645;
    input col_c_3;
    output row_c_3;
    output \key_code[2] ;
    input n3640;
    input n581;
    output n11825;
    input GND_net;
    input n11433;
    output n561;
    output n5898;
    input n6;
    input n11419;
    input n11422;
    output n11423;
    output \key_code[3] ;
    input led_7__N_140;
    output led_c_1;
    input n11866;
    output n11834;
    output n568;
    output n11846;
    output n47;
    input n10717;
    output n11842;
    output n10627;
    output n11408;
    
    wire clk300hz /* synthesis is_clock=1, SET_AS_NETWORK=\instant2/clk300hz */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(17[9:17])
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(8[5:8])
    wire [1:0]row_num;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(48[12:19])
    wire [1:0]row_num_1__N_271;
    wire [4:0]key_code;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    wire [4:0]n590;
    wire [31:0]cnt;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(35[12:15])
    
    wire n4451;
    wire [31:0]n133;
    
    wire clk300hz_N_314, n35, n29, n6_c, n11679, n10659, cnt_31__N_270, 
        n9135, n9134, n9133, n9132, n9131, n11413, n9130, n9129, 
        n9128, n9127, n9126, n9125, n9124, n9123, n9122, n9121, 
        n9120, n9111, n9110, n9109, n11412, n9108, n9107, n9106, 
        n9105, n9104, n9103, n9102, n9101, n9100, n9099, n11407, 
        n9098, n9097, n9096, n11415, n11416, n4452, n11432, n11434, 
        n16, n20, n9242, n8, n10708, n11417, n11414, n11418, 
        n11863;
    
    LUT4 i550_1_lut (.A(row_num[0]), .Z(row_num_1__N_271[0])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(51[4] 67[13])
    defparam i550_1_lut.init = 16'h5555;
    FD1P3AX key_code_i0_i0 (.D(n590[0]), .SP(clk300hz_enable_5), .CK(clk300hz), 
            .Q(key_code[0])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(75[3] 103[10])
    defparam key_code_i0_i0.GSR = "DISABLED";
    FD1S3IX cnt_397__i7 (.D(n133[7]), .CK(clk_c), .CD(n4451), .Q(cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i7.GSR = "DISABLED";
    FD1S3AX clk300hz_59 (.D(clk300hz_N_314), .CK(clk_c), .Q(clk300hz)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(37[3] 44[10])
    defparam clk300hz_59.GSR = "DISABLED";
    FD1S3AX row_num_i0 (.D(row_num_1__N_271[0]), .CK(clk300hz), .Q(row_num[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_num_i0.GSR = "DISABLED";
    FD1S3IX cnt_397__i6 (.D(n133[6]), .CK(clk_c), .CD(n4451), .Q(cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i6.GSR = "DISABLED";
    FD1S3IX cnt_397__i5 (.D(n133[5]), .CK(clk_c), .CD(n4451), .Q(cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i5.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(row_c_2), .B(col_c_1), .C(col_c_0), 
         .D(col_c_2), .Z(n35)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h5440;
    FD1S3IX cnt_397__i4 (.D(n133[4]), .CK(clk_c), .CD(n4451), .Q(cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i4.GSR = "DISABLED";
    FD1S3IX cnt_397__i3 (.D(n133[3]), .CK(clk_c), .CD(n4451), .Q(cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i3.GSR = "DISABLED";
    FD1S3IX cnt_397__i2 (.D(n133[2]), .CK(clk_c), .CD(n4451), .Q(cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i2.GSR = "DISABLED";
    FD1S3IX cnt_397__i1 (.D(n133[1]), .CK(clk_c), .CD(n4451), .Q(cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(col_c_0), .B(n29), .C(n11843), .D(n6_c), .Z(n32)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hdc50;
    FD1S3IX cnt_397__i31 (.D(n133[31]), .CK(clk_c), .CD(n4451), .Q(cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i31.GSR = "DISABLED";
    FD1S3IX cnt_397__i30 (.D(n133[30]), .CK(clk_c), .CD(n4451), .Q(cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i30.GSR = "DISABLED";
    FD1P3AX key_code_i0_i4 (.D(n9379), .SP(clk300hz_enable_5), .CK(clk300hz), 
            .Q(\key_code[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(75[3] 103[10])
    defparam key_code_i0_i4.GSR = "DISABLED";
    FD1S3IX cnt_397__i29 (.D(n133[29]), .CK(clk_c), .CD(n4451), .Q(cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i29.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(row_c_1), .B(row_c_0), .Z(n6_c)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    FD1S3IX cnt_397__i28 (.D(n133[28]), .CK(clk_c), .CD(n4451), .Q(cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i28.GSR = "DISABLED";
    LUT4 i1_3_lut (.A(row_c_2), .B(row_c_0), .C(row_c_1), .Z(n10645)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h2828;
    LUT4 col_c_3_bdd_4_lut (.A(col_c_3), .B(row_c_2), .C(row_c_3), .D(col_c_2), 
         .Z(n11679)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam col_c_3_bdd_4_lut.init = 16'h1c08;
    LUT4 i1_2_lut_adj_127 (.A(\key_code[2] ), .B(key_code[1]), .Z(n10659)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i1_2_lut_adj_127.init = 16'heeee;
    LUT4 i545_2_lut (.A(clk300hz), .B(cnt_31__N_270), .Z(clk300hz_N_314)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(38[4] 43[11])
    defparam i545_2_lut.init = 16'h9999;
    PFUMX mux_275_i1 (.BLUT(n3640), .ALUT(n581), .C0(n11825), .Z(n590[0]));
    CCU2D add_6686_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9135), 
          .S0(cnt_31__N_270));
    defparam add_6686_cout.INIT0 = 16'h0000;
    defparam add_6686_cout.INIT1 = 16'h0000;
    defparam add_6686_cout.INJECT1_0 = "NO";
    defparam add_6686_cout.INJECT1_1 = "NO";
    CCU2D add_6686_31 (.A0(cnt[30]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[31]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9134), 
          .COUT(n9135));
    defparam add_6686_31.INIT0 = 16'hf555;
    defparam add_6686_31.INIT1 = 16'h5555;
    defparam add_6686_31.INJECT1_0 = "NO";
    defparam add_6686_31.INJECT1_1 = "NO";
    CCU2D add_6686_29 (.A0(cnt[28]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[29]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9133), 
          .COUT(n9134));
    defparam add_6686_29.INIT0 = 16'hf555;
    defparam add_6686_29.INIT1 = 16'hf555;
    defparam add_6686_29.INJECT1_0 = "NO";
    defparam add_6686_29.INJECT1_1 = "NO";
    CCU2D add_6686_27 (.A0(cnt[26]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[27]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9132), 
          .COUT(n9133));
    defparam add_6686_27.INIT0 = 16'hf555;
    defparam add_6686_27.INIT1 = 16'hf555;
    defparam add_6686_27.INJECT1_0 = "NO";
    defparam add_6686_27.INJECT1_1 = "NO";
    CCU2D add_6686_25 (.A0(cnt[24]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[25]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9131), 
          .COUT(n9132));
    defparam add_6686_25.INIT0 = 16'hf555;
    defparam add_6686_25.INIT1 = 16'hf555;
    defparam add_6686_25.INJECT1_0 = "NO";
    defparam add_6686_25.INJECT1_1 = "NO";
    LUT4 col_c_2_bdd_3_lut (.A(col_c_2), .B(col_c_0), .C(row_c_0), .Z(n11413)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam col_c_2_bdd_3_lut.init = 16'h7474;
    CCU2D add_6686_23 (.A0(cnt[22]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[23]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9130), 
          .COUT(n9131));
    defparam add_6686_23.INIT0 = 16'hf555;
    defparam add_6686_23.INIT1 = 16'hf555;
    defparam add_6686_23.INJECT1_0 = "NO";
    defparam add_6686_23.INJECT1_1 = "NO";
    CCU2D add_6686_21 (.A0(cnt[20]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[21]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9129), 
          .COUT(n9130));
    defparam add_6686_21.INIT0 = 16'hf555;
    defparam add_6686_21.INIT1 = 16'hf555;
    defparam add_6686_21.INJECT1_0 = "NO";
    defparam add_6686_21.INJECT1_1 = "NO";
    CCU2D add_6686_19 (.A0(cnt[18]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[19]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9128), 
          .COUT(n9129));
    defparam add_6686_19.INIT0 = 16'hf555;
    defparam add_6686_19.INIT1 = 16'hf555;
    defparam add_6686_19.INJECT1_0 = "NO";
    defparam add_6686_19.INJECT1_1 = "NO";
    CCU2D add_6686_17 (.A0(cnt[16]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[17]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9127), 
          .COUT(n9128));
    defparam add_6686_17.INIT0 = 16'hf555;
    defparam add_6686_17.INIT1 = 16'hf555;
    defparam add_6686_17.INJECT1_0 = "NO";
    defparam add_6686_17.INJECT1_1 = "NO";
    CCU2D add_6686_15 (.A0(cnt[14]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[15]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9126), 
          .COUT(n9127));
    defparam add_6686_15.INIT0 = 16'h0aaa;
    defparam add_6686_15.INIT1 = 16'hf555;
    defparam add_6686_15.INJECT1_0 = "NO";
    defparam add_6686_15.INJECT1_1 = "NO";
    CCU2D add_6686_13 (.A0(cnt[12]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[13]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9125), 
          .COUT(n9126));
    defparam add_6686_13.INIT0 = 16'hf555;
    defparam add_6686_13.INIT1 = 16'hf555;
    defparam add_6686_13.INJECT1_0 = "NO";
    defparam add_6686_13.INJECT1_1 = "NO";
    CCU2D add_6686_11 (.A0(cnt[10]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[11]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9124), 
          .COUT(n9125));
    defparam add_6686_11.INIT0 = 16'h0aaa;
    defparam add_6686_11.INIT1 = 16'h0aaa;
    defparam add_6686_11.INJECT1_0 = "NO";
    defparam add_6686_11.INJECT1_1 = "NO";
    CCU2D add_6686_9 (.A0(cnt[8]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[9]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9123), 
          .COUT(n9124));
    defparam add_6686_9.INIT0 = 16'hf555;
    defparam add_6686_9.INIT1 = 16'h0aaa;
    defparam add_6686_9.INJECT1_0 = "NO";
    defparam add_6686_9.INJECT1_1 = "NO";
    CCU2D add_6686_7 (.A0(cnt[6]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[7]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9122), 
          .COUT(n9123));
    defparam add_6686_7.INIT0 = 16'hf555;
    defparam add_6686_7.INIT1 = 16'hf555;
    defparam add_6686_7.INJECT1_0 = "NO";
    defparam add_6686_7.INJECT1_1 = "NO";
    CCU2D add_6686_5 (.A0(cnt[4]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[5]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9121), 
          .COUT(n9122));
    defparam add_6686_5.INIT0 = 16'hf555;
    defparam add_6686_5.INIT1 = 16'h0aaa;
    defparam add_6686_5.INJECT1_0 = "NO";
    defparam add_6686_5.INJECT1_1 = "NO";
    CCU2D add_6686_3 (.A0(cnt[2]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[3]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9120), 
          .COUT(n9121));
    defparam add_6686_3.INIT0 = 16'hf555;
    defparam add_6686_3.INIT1 = 16'hf555;
    defparam add_6686_3.INJECT1_0 = "NO";
    defparam add_6686_3.INJECT1_1 = "NO";
    CCU2D add_6686_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(cnt[1]), .C1(GND_net), .D1(GND_net), .COUT(n9120));
    defparam add_6686_1.INIT0 = 16'hF000;
    defparam add_6686_1.INIT1 = 16'ha666;
    defparam add_6686_1.INJECT1_0 = "NO";
    defparam add_6686_1.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_33 (.A0(cnt[31]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9111), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_33.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_33.INIT1 = 16'h0000;
    defparam cnt_397_add_4_33.INJECT1_0 = "NO";
    defparam cnt_397_add_4_33.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_31 (.A0(cnt[29]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[30]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9110), .COUT(n9111), .S0(n133[29]), .S1(n133[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_31.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_31.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_31.INJECT1_0 = "NO";
    defparam cnt_397_add_4_31.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_29 (.A0(cnt[27]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9109), .COUT(n9110), .S0(n133[27]), .S1(n133[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_29.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_29.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_29.INJECT1_0 = "NO";
    defparam cnt_397_add_4_29.INJECT1_1 = "NO";
    LUT4 col_c_2_bdd_2_lut (.A(col_c_0), .B(row_c_2), .Z(n11412)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam col_c_2_bdd_2_lut.init = 16'h6666;
    CCU2D cnt_397_add_4_27 (.A0(cnt[25]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9108), .COUT(n9109), .S0(n133[25]), .S1(n133[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_27.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_27.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_27.INJECT1_0 = "NO";
    defparam cnt_397_add_4_27.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_25 (.A0(cnt[23]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9107), .COUT(n9108), .S0(n133[23]), .S1(n133[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_25.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_25.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_25.INJECT1_0 = "NO";
    defparam cnt_397_add_4_25.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_23 (.A0(cnt[21]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9106), .COUT(n9107), .S0(n133[21]), .S1(n133[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_23.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_23.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_23.INJECT1_0 = "NO";
    defparam cnt_397_add_4_23.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_21 (.A0(cnt[19]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9105), .COUT(n9106), .S0(n133[19]), .S1(n133[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_21.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_21.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_21.INJECT1_0 = "NO";
    defparam cnt_397_add_4_21.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_19 (.A0(cnt[17]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9104), .COUT(n9105), .S0(n133[17]), .S1(n133[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_19.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_19.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_19.INJECT1_0 = "NO";
    defparam cnt_397_add_4_19.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9103), .COUT(n9104), .S0(n133[15]), .S1(n133[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_17.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_17.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_17.INJECT1_0 = "NO";
    defparam cnt_397_add_4_17.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9102), .COUT(n9103), .S0(n133[13]), .S1(n133[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_15.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_15.INJECT1_0 = "NO";
    defparam cnt_397_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9101), .COUT(n9102), .S0(n133[11]), .S1(n133[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_13.INJECT1_0 = "NO";
    defparam cnt_397_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9100), 
          .COUT(n9101), .S0(n133[9]), .S1(n133[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_11.INJECT1_0 = "NO";
    defparam cnt_397_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9099), 
          .COUT(n9100), .S0(n133[7]), .S1(n133[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_9.INJECT1_0 = "NO";
    defparam cnt_397_add_4_9.INJECT1_1 = "NO";
    LUT4 row_c_3_bdd_4_lut (.A(col_c_3), .B(col_c_2), .C(col_c_0), .D(col_c_1), 
         .Z(n11407)) /* synthesis lut_function=(!((B ((D)+!C)+!B !(C (D)))+!A)) */ ;
    defparam row_c_3_bdd_4_lut.init = 16'h2080;
    CCU2D cnt_397_add_4_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9098), 
          .COUT(n9099), .S0(n133[5]), .S1(n133[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_7.INJECT1_0 = "NO";
    defparam cnt_397_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9097), 
          .COUT(n9098), .S0(n133[3]), .S1(n133[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_5.INJECT1_0 = "NO";
    defparam cnt_397_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9096), 
          .COUT(n9097), .S0(n133[1]), .S1(n133[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_397_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_397_add_4_3.INJECT1_0 = "NO";
    defparam cnt_397_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_397_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n9096), 
          .S1(n133[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397_add_4_1.INIT0 = 16'hF000;
    defparam cnt_397_add_4_1.INIT1 = 16'h0555;
    defparam cnt_397_add_4_1.INJECT1_0 = "NO";
    defparam cnt_397_add_4_1.INJECT1_1 = "NO";
    LUT4 n568_bdd_2_lut_9231 (.A(row_c_2), .B(col_c_3), .Z(n11415)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n568_bdd_2_lut_9231.init = 16'h1111;
    LUT4 n568_bdd_4_lut_9224 (.A(col_c_0), .B(row_c_0), .C(col_c_3), .D(n11843), 
         .Z(n11416)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam n568_bdd_4_lut_9224.init = 16'h1333;
    FD1S3IX cnt_397__i8 (.D(n133[8]), .CK(clk_c), .CD(n4451), .Q(cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i8.GSR = "DISABLED";
    FD1S3JX row_i1 (.D(row_num_1__N_271[0]), .CK(clk300hz), .PD(n4452), 
            .Q(row_c_0)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_i1.GSR = "DISABLED";
    LUT4 i2906_1_lut (.A(row_num[1]), .Z(n4452)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam i2906_1_lut.init = 16'h5555;
    FD1S3AX row_num_i1 (.D(row_num_1__N_271[1]), .CK(clk300hz), .Q(row_num[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_num_i1.GSR = "DISABLED";
    PFUMX i9235 (.BLUT(n11433), .ALUT(n11432), .C0(n11825), .Z(n11434));
    FD1S3IX cnt_397__i0 (.D(n133[0]), .CK(clk_c), .CD(n4451), .Q(cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i0.GSR = "DISABLED";
    FD1S3JX row_i4 (.D(row_num[0]), .CK(clk300hz), .PD(row_num[1]), .Q(row_c_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_i4.GSR = "DISABLED";
    FD1S3JX row_i3 (.D(row_num_1__N_271[0]), .CK(clk300hz), .PD(row_num[1]), 
            .Q(row_c_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_i3.GSR = "DISABLED";
    FD1S3IX cnt_397__i27 (.D(n133[27]), .CK(clk_c), .CD(n4451), .Q(cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i27.GSR = "DISABLED";
    FD1S3IX cnt_397__i26 (.D(n133[26]), .CK(clk_c), .CD(n4451), .Q(cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i26.GSR = "DISABLED";
    LUT4 n56_bdd_4_lut (.A(n561), .B(row_c_2), .C(row_c_0), .D(col_c_0), 
         .Z(n11432)) /* synthesis lut_function=(!(A (B+(D))+!A ((D)+!C))) */ ;
    defparam n56_bdd_4_lut.init = 16'h0072;
    FD1S3IX cnt_397__i25 (.D(n133[25]), .CK(clk_c), .CD(n4451), .Q(cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i25.GSR = "DISABLED";
    FD1S3IX cnt_397__i24 (.D(n133[24]), .CK(clk_c), .CD(n4451), .Q(cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i24.GSR = "DISABLED";
    FD1S3IX cnt_397__i23 (.D(n133[23]), .CK(clk_c), .CD(n4451), .Q(cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i23.GSR = "DISABLED";
    PFUMX i34 (.BLUT(n16), .ALUT(n20), .C0(row_c_0), .Z(n5898));
    FD1S3IX cnt_397__i22 (.D(n133[22]), .CK(clk_c), .CD(n4451), .Q(cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i22.GSR = "DISABLED";
    PFUMX i55 (.BLUT(n9242), .ALUT(n35), .C0(row_c_3), .Z(n29));
    FD1S3IX cnt_397__i21 (.D(n133[21]), .CK(clk_c), .CD(n4451), .Q(cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i21.GSR = "DISABLED";
    LUT4 i3_4_lut (.A(row_c_2), .B(n6), .C(n6_c), .D(row_c_3), .Z(n561)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam i3_4_lut.init = 16'h4080;
    FD1S3IX cnt_397__i20 (.D(n133[20]), .CK(clk_c), .CD(n4451), .Q(cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i20.GSR = "DISABLED";
    FD1S3IX cnt_397__i19 (.D(n133[19]), .CK(clk_c), .CD(n4451), .Q(cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i19.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_388 (.A(col_c_3), .B(n32), .Z(n11825)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_388.init = 16'h8888;
    LUT4 n11422_bdd_3_lut_4_lut (.A(col_c_3), .B(n32), .C(n11419), .D(n11422), 
         .Z(n11423)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;
    defparam n11422_bdd_3_lut_4_lut.init = 16'hf780;
    FD1S3IX cnt_397__i18 (.D(n133[18]), .CK(clk_c), .CD(n4451), .Q(cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i18.GSR = "DISABLED";
    FD1S3IX cnt_397__i17 (.D(n133[17]), .CK(clk_c), .CD(n4451), .Q(cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i17.GSR = "DISABLED";
    FD1S3IX cnt_397__i16 (.D(n133[16]), .CK(clk_c), .CD(n4451), .Q(cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i16.GSR = "DISABLED";
    LUT4 i36_4_lut (.A(\key_code[4] ), .B(n8), .C(\key_code[3] ), .D(n10708), 
         .Z(n16)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i36_4_lut.init = 16'hc0ca;
    FD1S3IX cnt_397__i15 (.D(n133[15]), .CK(clk_c), .CD(n4451), .Q(cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i15.GSR = "DISABLED";
    FD1S3IX cnt_397__i14 (.D(n133[14]), .CK(clk_c), .CD(n4451), .Q(cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i14.GSR = "DISABLED";
    FD1S3IX cnt_397__i13 (.D(n133[13]), .CK(clk_c), .CD(n4451), .Q(cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i13.GSR = "DISABLED";
    FD1S3IX cnt_397__i12 (.D(n133[12]), .CK(clk_c), .CD(n4451), .Q(cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i12.GSR = "DISABLED";
    FD1S3IX cnt_397__i11 (.D(n133[11]), .CK(clk_c), .CD(n4451), .Q(cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i11.GSR = "DISABLED";
    FD1S3IX cnt_397__i10 (.D(n133[10]), .CK(clk_c), .CD(n4451), .Q(cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i10.GSR = "DISABLED";
    FD1S3IX cnt_397__i9 (.D(n133[9]), .CK(clk_c), .CD(n4451), .Q(cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(39[12:15])
    defparam cnt_397__i9.GSR = "DISABLED";
    L6MUX21 i9222 (.D0(n11417), .D1(n11414), .SD(n11825), .Z(n11418));
    LUT4 i9188_2_lut_2_lut_4_lut (.A(n10659), .B(key_code[0]), .C(n11863), 
         .D(led_7__N_140), .Z(led_c_1)) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i9188_2_lut_2_lut_4_lut.init = 16'h04ff;
    LUT4 i1_2_lut_rep_397_4_lut (.A(n10645), .B(col_c_1), .C(n11866), 
         .D(col_c_0), .Z(n11834)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_397_4_lut.init = 16'h8000;
    PFUMX i9220 (.BLUT(n11416), .ALUT(n11415), .C0(n568), .Z(n11417));
    LUT4 i2_3_lut_4_lut_4_lut (.A(\key_code[4] ), .B(\key_code[3] ), .C(\key_code[2] ), 
         .D(n11846), .Z(n20)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0440;
    LUT4 i1_2_lut_rep_409 (.A(key_code[1]), .B(key_code[0]), .Z(n11846)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i1_2_lut_rep_409.init = 16'heeee;
    LUT4 i2_3_lut_4_lut (.A(key_code[1]), .B(key_code[0]), .C(\key_code[4] ), 
         .D(\key_code[2] ), .Z(n8)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i2_3_lut_4_lut.init = 16'h0e00;
    PFUMX i9218 (.BLUT(n11413), .ALUT(n11412), .C0(n561), .Z(n11414));
    LUT4 i1_2_lut_3_lut (.A(key_code[1]), .B(key_code[0]), .C(\key_code[2] ), 
         .Z(n47)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i8779_2_lut_3_lut (.A(key_code[1]), .B(key_code[0]), .C(\key_code[2] ), 
         .Z(n10708)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(22[9:17])
    defparam i8779_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_128 (.A(col_c_0), .B(col_c_1), .C(col_c_2), 
         .D(row_c_2), .Z(n9242)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_128.init = 16'h6000;
    LUT4 i1_2_lut_rep_426 (.A(\key_code[4] ), .B(\key_code[3] ), .Z(n11863)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_426.init = 16'heeee;
    FD1P3AX key_code_i0_i3 (.D(n11434), .SP(clk300hz_enable_5), .CK(clk300hz), 
            .Q(\key_code[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(75[3] 103[10])
    defparam key_code_i0_i3.GSR = "DISABLED";
    FD1P3AX key_code_i0_i2 (.D(n11418), .SP(clk300hz_enable_5), .CK(clk300hz), 
            .Q(\key_code[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(75[3] 103[10])
    defparam key_code_i0_i2.GSR = "DISABLED";
    FD1P3AX key_code_i0_i1 (.D(n10717), .SP(clk300hz_enable_5), .CK(clk300hz), 
            .Q(key_code[1])) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(75[3] 103[10])
    defparam key_code_i0_i1.GSR = "DISABLED";
    FD1S3JX row_i2 (.D(row_num[0]), .CK(clk300hz), .PD(n4452), .Q(row_c_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=25, LSE_LLINE=58, LSE_RLINE=58 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(50[3] 68[10])
    defparam row_i2.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_405_4_lut (.A(\key_code[4] ), .B(\key_code[3] ), .C(key_code[0]), 
         .D(n10659), .Z(n11842)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_rep_405_4_lut.init = 16'hffef;
    LUT4 i1_3_lut_4_lut (.A(\key_code[4] ), .B(\key_code[3] ), .C(n10659), 
         .D(key_code[0]), .Z(n10627)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1110;
    LUT4 i2_3_lut_4_lut_adj_129 (.A(col_c_1), .B(col_c_0), .C(n6_c), .D(n11679), 
         .Z(n568)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_129.init = 16'h8000;
    LUT4 n31_bdd_2_lut_9217 (.A(n11407), .B(row_c_3), .Z(n11408)) /* synthesis lut_function=(A (B)) */ ;
    defparam n31_bdd_2_lut_9217.init = 16'h8888;
    LUT4 i585_2_lut (.A(row_num[0]), .B(row_num[1]), .Z(row_num_1__N_271[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(51[4] 67[13])
    defparam i585_2_lut.init = 16'h6666;
    LUT4 i2905_1_lut (.A(cnt_31__N_270), .Z(n4451)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/keyboard.vhd(35[12:15])
    defparam i2905_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module PWM_LED
//

module PWM_LED (clk_c, frqUP_c, frqDN_c, \lumdivision[0] , \frqnum[3] , 
            lumUP_c, lumcnt, \lumdivision[3] , \lumdivision[2] , \frqnum[9] , 
            sawtooth_cnt, GND_net, \frqnum[6] , \frqnum[5] , \frqnum[4] , 
            \lumdivision[4] , \lumdivision[6] , sawtooth_cnt_15__N_102, 
            led_7__N_140, \frqnum[10] , \frqnum[11] , \lumdivision[9] , 
            n12202, n2299, n1463, n1638, n926, n1108, n56, \frqnum[12] , 
            lumDN_c, VCC_net, count_flag_N_192);
    input clk_c;
    input frqUP_c;
    input frqDN_c;
    output \lumdivision[0] ;
    output \frqnum[3] ;
    input lumUP_c;
    output [9:0]lumcnt;
    output \lumdivision[3] ;
    output \lumdivision[2] ;
    output \frqnum[9] ;
    output [15:0]sawtooth_cnt;
    input GND_net;
    output \frqnum[6] ;
    output \frqnum[5] ;
    output \frqnum[4] ;
    output \lumdivision[4] ;
    output \lumdivision[6] ;
    input sawtooth_cnt_15__N_102;
    output led_7__N_140;
    output \frqnum[10] ;
    output \frqnum[11] ;
    output \lumdivision[9] ;
    output n12202;
    input n2299;
    input n1463;
    input n1638;
    input n926;
    input n1108;
    input n56;
    output \frqnum[12] ;
    input lumDN_c;
    input VCC_net;
    input count_flag_N_192;
    
    wire clk_c /* synthesis SET_AS_NETWORK=clk_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(8[5:8])
    
    wire frqUP_1, frqDN_1;
    wire [9:0]lumdivision_31__N_44;
    wire [2:0]frqlevel;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(25[9:17])
    wire [2:0]frqlevel_2__N_67;
    
    wire n2, n5655, count_flag, clk_c_enable_1, count_flag_N_155, 
        lumUP_1;
    wire [9:0]lumcnt_9__N_103;
    wire [2:0]lumlevel;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(22[9:17])
    wire [2:0]lumlevel_2__N_41;
    
    wire n9027;
    wire [26:0]n8997;
    
    wire n32, n31, n30;
    wire [27:0]n9014;
    
    wire n9028, n8, n9026, lumDN_2, n853, lumDN_1, n54, n11761;
    wire [31:0]n1527;
    
    wire n11766, n2868, n22, n4311;
    wire [31:0]n2071;
    
    wire n4779, n4881, n24, n11709;
    wire [31:0]n2037;
    wire [29:0]n9049;
    
    wire n4765, lumDN_3, n1047, n12206, n60, n62, n5942, lumUP_2, 
        n850, n4768, n4767, n4758, n11652, n2717, n2867, n4764, 
        n11833, n12204, n62_adj_319, frqUP_2, n856, frqDN_3, n859, 
        frqDN_2, n2720, n2870, n54_adj_320, n58, n11001, n62_adj_321;
    wire [3:0]btn;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(31[9:12])
    
    wire n11870, n5888, n8242, lumcnt_9__N_123, n4762, frqUP_3, 
        n8241, n9, n8_adj_322, n11764, n2871, n64, lumUP_3, n4759, 
        n56_c, n58_adj_323, n11009, n60_adj_324;
    wire [15:0]triangle_cnt;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(21[9:21])
    
    wire clk_c_enable_17;
    wire [15:0]n280;
    
    wire n2723, n2873, n11707, n10, n48, n11741;
    wire [31:0]n1629;
    
    wire n3166, n11738, n4778, n11700, n2724, n2874, n12195, n4760, 
        n2875, n2713, n11765, n10562, n12200, n12197, n5963, n11760, 
        n58_adj_325, n60_adj_326, n11005, n62_adj_327, n11820, n4217, 
        n10874, n1258_adj_328;
    wire [31:0]n1221;
    
    wire n11815, n1754, n1755, n52, n42, n2719, n11763, n44, 
        n2568;
    wire [31:0]n1493;
    
    wire n11767, n11762, n2559, n7, n2565, n48_adj_329, n4, n4776, 
        n4775, n11702, n56_adj_330, n4307, n1923, n11800, n50, 
        n11701, n10881, n2089_adj_331, n2090_adj_332, n48_adj_333, 
        n11710, n11711, n10888, n4_adj_334, n12196, n2252, n2253, 
        n46, n2412, n2413, n44_adj_335, n11712, n11713;
    wire [28:0]n9031;
    
    wire n10895, n10714, n11836, n11826, n11714, n11715, n10902, 
        n10726, n2569, n2570, n42_adj_336, n4754;
    wire [15:0]n69;
    
    wire n40, n11772, n4755, n4763, n39, n4751, n24_adj_337, n30_adj_338, 
        n10983, n11668, n11704, n11706, n11667, n11773, n2711, 
        n2561, n2714, n2562, n2715, n11771, n4757, n11716, n11717, 
        n10909;
    wire [25:0]n8981;
    
    wire n10738, n11718, n11719, n10916, n10648, n38, n4773, n11720, 
        n11721;
    wire [24:0]n8965;
    
    wire n10923, n3022, n3023, n36, n3167, n3168, n34, n11722, 
        n11723;
    wire [23:0]n8950;
    
    wire n10994, n3309, n3310, n32_adj_339, n2563, n2716, n11724, 
        n11725;
    wire [22:0]n8935;
    
    wire n10766;
    wire [21:0]n8921;
    
    wire n10718, n3448, n10724, n30_adj_340, n2566, n11703, n17, 
        n4772, n11726, n11727, n10773, n4_adj_341;
    wire [20:0]n8907;
    
    wire n28, n11770, n26, n11728, n11729, n10780, n24_adj_342, 
        n11732, n11731, n3447, n10787, n22_adj_343, n11737, n11736, 
        n3308, n10794, n20, n11743, n11742, n10801, n18, n11750, 
        n11749, n3021, n10808, n16, n14, n2722, n11756, n11755, 
        n10815, n12, n10_adj_344, n10822, n4780, n8_adj_345, n10_adj_346, 
        n4882, n3, n6, n11769, n11768, n10829, n11653, n11654, 
        n4875, n4_adj_347, n20_adj_348, n11777, n11776, n2411, n10836, 
        n14_adj_349, n44_adj_350, n11681, n46_adj_351, n11680;
    wire [31:0]n1459;
    
    wire n11774, n11784, n11783, n2251, n10843, n2408, n50_adj_352, 
        n4_adj_353, n2404, n6_adj_354, n11790, n11789, n2088_adj_355, 
        n10850, n3152, n3293, n3153, n3294, n11780, n5, n58_adj_356, 
        n11775, n4770, n2406, n2405, n11799, n11798, n1922, n10857, 
        n11805, n11806, n1753, n10864, n11759, n2403, n3157, n3298, 
        n11779, n38_adj_357, n10580, n11669, n42_adj_358, n31_adj_359, 
        n32_adj_360, n9184, n11708, n33, n40_adj_361, n23, n24_adj_362, 
        n4769, n45, n51, n2409, n11778, n12_adj_363, n3163, n11739, 
        n16_adj_364, n4_adj_365, n11705, n43, n26_adj_366, n57, 
        n25, n4766, n37, n46_adj_367, n48_adj_368, n12_adj_369, 
        n14_adj_370, n11740, n40_adj_371, n4_adj_372, n23_adj_373;
    wire [31:0]n1425;
    
    wire n11781, n2248, n52_adj_374, n4_adj_375, n11787, n4_adj_376, 
        n9119, n9118, n9117, n9116, n60_adj_377, n11782, n2245, 
        n27, n9115, n9114, n9113, n8783, n28_adj_378, n11786, 
        n2246, n9025, n9024, n9023, n9022, n9021, n9020, n9019, 
        n4315, n9018, n9017, n9016, n9015, n28_adj_384, n9010, 
        n30_adj_385, n29, n32_adj_386, n9009, n9008, n9007, n9006, 
        n9005, n9112;
    wire [15:0]sawtooth_cnt_c;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(20[9:21])
    
    wire n8782, count_flag_N_159, n2249, n11785, n1404, n9004, n9003, 
        n9002, n4316, n9001, n9000, n8999, n8998, n30_adj_389, 
        n8994, n28_adj_390, n27_adj_391, n34_adj_392, n8993, n8992, 
        n8991, n8990, n8989, n8988, n8987, n8986, n4317, n8985, 
        n8984, n8983, n8781, n2244, n1403, n8982, n32_adj_393, 
        n8977, n26_adj_394, n25_adj_395, n36_adj_396, n8976, n8975, 
        n8974, n8973, n8972, n8971, n8970, n4318, n8969, n8968, 
        n8967, n8966, n34_adj_397, n8962, n24_adj_398, n23_adj_399, 
        n38_adj_400, n8961, n8960, n8959, n12_adj_401, n28_adj_402, 
        n11011, n8780, n3155, n3296, n3159, n3300, n40_adj_403, 
        n36_adj_404, n38_adj_405, n32_adj_406, n14_adj_407, n16_adj_408, 
        n4771, n8958, n8957, n8956, n8955, n4320, n8954, n8953, 
        n8952, n8951, n36_adj_409, n8946, n22_adj_410, n21, n40_adj_411, 
        n8945, n8944, n8943, n8942, n8941, n8940, n4290, n8939, 
        n8938, n8937, n8936, n38_adj_412, n8779, n52_adj_413, n11754;
    wire [31:0]n1561;
    
    wire n34_adj_414, n24_adj_415, n48_adj_416, n8932, n20_adj_417, 
        n19, n42_adj_418, n8931, n8930, n8929, n8928, n8927, n8926, 
        n4300, n8925, n8924, n8923, n8922, n40_adj_419, n8917, 
        n3432, n11730, n17_adj_420, n44_adj_421, n3431, n8916, n3434, 
        n3433, n8915, n3436, n3435, n8914, n3438, n3437, n8913, 
        n3440, n3439, n8912, n3442, n3441, n4301, n8911, n3444, 
        n3443, n8910, n11734, n3445, n8909, n50_adj_422, n8778, 
        n3154, n3295;
    wire [31:0]n1391;
    
    wire n11788, n2085_adj_423, n54_adj_424, n4_adj_425, n9094, n4_adj_426, 
        n18_adj_427, n8908, n11733, n42_adj_428, n8903;
    wire [31:0]n1663;
    
    wire n8902, n8901, n3156, n8900, n3158, n8899, n3161, n3160, 
        n8898, n11745, n8897, n11744, n3164, n8896, n8895, n10570, 
        n10655, n8894, n11747, n50_adj_429;
    wire [31:0]n1595;
    
    wire n3008, n8893, n3010, n3009, n8892, n3012, n3011, n8891, 
        n3014, n3013, n8890, n11746, n3016, n3015, n8889, n3018, 
        n11752, n8888, n11751, n3019, n8887, n8886, n10582, n11748, 
        n8884, n2862, n2861, n8883, n2863, n9093, n3299, n8777, 
        n21_adj_430, n13, n20_adj_431, n14_adj_432, n5896, n3297, 
        n9092, n8882, n2866, n2865, n8881, n11753, n8880, n11758, 
        n8879, n11757, n8878, n8877, n10572, n9_adj_433, n8876, 
        n8875, n8874, n8873, n8872, n8871, n8870, n8869, n8867, 
        n8866, n8865, n8864, n8863, n8862, n8861, n8860, n8859, 
        n62_adj_434, n11793, n8776, n11853, n11852, n11851, n10951, 
        n11036, n2082_adj_435, n3301, n8858, n8857, n8856, n8855, 
        n8854, n8852, n8851, n8850, n8849, n8848, n8847, n8846, 
        n5857, n8845, n2083_adj_436, n8844, n11792, n8843, n11791, 
        n2086_adj_437, n8842, n8841, n8839, n11797;
    wire [31:0]n1357;
    
    wire n11802, n62_adj_438, n11803, n8838, n8837, n11801, n1920, 
        n8836, n8835, n8834, n11804;
    wire [31:0]n1323;
    
    wire n1748, n8775, n7_adj_439, n35, n16_adj_440, n22_adj_441, 
        n10970, n8833, n64_adj_442, n1750, n1749, n8832, n11807, 
        n1751, n8831, n8830, n8828, n64_adj_443;
    wire [31:0]n1289;
    
    wire n1578, n11812, n8827, n11808, n11811, n1579, n8826, n1582, 
        n1581, n8825, n1583, n8824, n64_adj_444;
    wire [31:0]n1255;
    
    wire n8823, n11813, n8822, n1407, n1406, n8821, n1408, n8819, 
        n11818;
    wire [32:0]count_flag_N_160;
    
    wire n8818, n11816, n1228, n8817, n8816, n8815, n11824, n12194, 
        n11822, n8814, n11819, n8813, n8812, n8811, n8810, n8809, 
        n9091, n9090, n9089, n13_adj_445, n12_adj_446, n9088, n9087, 
        n9086, n16_adj_447, n18_adj_448, n8798, n4410, n8797, n11841, 
        n8796, n11864, n8795, n11814, n8794, n60_adj_449, n8793, 
        n11795, n58_adj_450, n11796, n8792, n8791, n8790, n8789, 
        n46_adj_451, n4302, n8788, n8787, n8786, n8785, n8784, 
        n26_adj_452, n4313, n28_adj_453, n4314, n50_adj_454, n3303, 
        n52_adj_455, n9085, n1919, n56_adj_456, n4_adj_457, n1918, 
        n3302, n52_adj_458, n54_adj_459, n3305, n3306, n54_adj_460, 
        n56_adj_461, n9084, n9083, n9082, n13_adj_462, n12_adj_463, 
        n14_adj_464, n10_adj_465, n4_adj_466, n26_adj_467, n13_adj_468, 
        n11, n56_adj_469, n11810, n11809, n11_adj_470, n10_adj_471, 
        n28_adj_472, n13_adj_473, n12_adj_474, n9081, n9_adj_475, 
        n7_adj_476, n30_adj_477, n13_adj_478, n11_adj_479, n6_adj_480, 
        n11512, n11511, n11858, n11513, n32_adj_481, n18_adj_482, 
        n20_adj_483, n11849, n11848, n11855, n10938, n11101, n14_adj_484, 
        n10_adj_485, n34_adj_486, n11_adj_487, n10_adj_488;
    wire [2:0]n833;
    
    wire n11817, n36_adj_489;
    wire [2:0]n839;
    
    wire n11821, n10_adj_490, n36_adj_491, n15, n14_adj_492, n5940, 
        n20_adj_493, n22_adj_494, n38_adj_495, n4_adj_496, n4_adj_497, 
        n11838, n11830, n11516, n9080, n42_adj_498, n4_adj_499, 
        n17_adj_500, n30_adj_501, n26_adj_502, n18_adj_503, n28_adj_504, 
        n22_adj_505, n9079, n9078, n9077, n22_adj_506, n24_adj_507, 
        n9076, n9075, n9074, n4761, n24_adj_508, n26_adj_509, n11840, 
        n5_adj_510, n9073, n11847, n10965, n20_adj_511, n6_adj_512, 
        n26_adj_513, n28_adj_514, n10702, n11862, n9072, n10654, 
        n9_adj_515, n7_adj_516, n8_adj_517, n67, n9071, n9070, n9069, 
        n55, n11831, n9068, n11117, n4_adj_518, n31_adj_519, n11861, 
        n10662, n11850, n10987, n26_adj_520, n9067, n28_adj_521, 
        n30_adj_522, n9066, n9065, n9064, n36_adj_523, n35_adj_524, 
        n9063, n10961, n11034, n10946;
    wire [12:0]frqnum_31__N_54;
    
    wire n9062, n9061, n9060, n9059, n9058, n9057, n9056, n11856, 
        n11854, n10933, n9055, n11860, n11859, n11857, n5_adj_525, 
        n9054, n30_adj_526, n32_adj_527, n9053, n9052, n38_adj_528, 
        n9051, n9050, n24_adj_529, n40_adj_530, n9045, n34_adj_531, 
        n33_adj_532, n9044, n9043, n9042, n9041, n9040, n9039, 
        n18_adj_533, n9038, n9037, n14_adj_534, n8_adj_535, n9036, 
        n9035, n9034, n9033, n10_adj_536, n44_adj_537, n9032, n26_adj_538, 
        n32_adj_539, n8240, n34_adj_540, n4_adj_541, n6_adj_542, n8_adj_543, 
        n8_adj_544, n1, n8_adj_545, n11869, n11735, n20_adj_546, 
        n38_adj_547, n22_adj_548, n24_adj_549, n18_adj_550, n14_adj_551, 
        n15_adj_552, n12_adj_553, n40_adj_554, n36_adj_555, n42_adj_556, 
        n13_adj_557, n12_adj_558, n20_adj_559, n16_adj_560, n46_adj_561, 
        n17_adj_562, n13_adj_563, n13_adj_564, n11_adj_565, n34_adj_566, 
        n15_adj_567, n14_adj_568, n11868, n13_adj_569, n11_adj_570;
    
    FD1S3AX frqUP_1_95 (.D(frqUP_c), .CK(clk_c), .Q(frqUP_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqUP_1_95.GSR = "ENABLED";
    FD1S3AX frqDN_1_98 (.D(frqDN_c), .CK(clk_c), .Q(frqDN_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqDN_1_98.GSR = "ENABLED";
    FD1S3AX lumdivision_i1 (.D(lumdivision_31__N_44[0]), .CK(clk_c), .Q(\lumdivision[0] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i1.GSR = "DISABLED";
    FD1S3AY frqlevel_i0 (.D(frqlevel_2__N_67[0]), .CK(clk_c), .Q(frqlevel[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam frqlevel_i0.GSR = "ENABLED";
    FD1S3IX frqnum_i1 (.D(n5655), .CK(clk_c), .CD(n2), .Q(\frqnum[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i1.GSR = "DISABLED";
    FD1P3AY count_flag_109 (.D(count_flag_N_155), .SP(clk_c_enable_1), .CK(clk_c), 
            .Q(count_flag)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam count_flag_109.GSR = "ENABLED";
    FD1S3AX lumUP_1_89 (.D(lumUP_c), .CK(clk_c), .Q(lumUP_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumUP_1_89.GSR = "ENABLED";
    FD1S3AY lumcnt_i0 (.D(lumcnt_9__N_103[0]), .CK(clk_c), .Q(lumcnt[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i0.GSR = "ENABLED";
    FD1S3AY lumlevel_i0 (.D(lumlevel_2__N_41[0]), .CK(clk_c), .Q(lumlevel[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam lumlevel_i0.GSR = "ENABLED";
    FD1S3AY lumlevel_i1 (.D(lumlevel_2__N_41[1]), .CK(clk_c), .Q(lumlevel[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam lumlevel_i1.GSR = "ENABLED";
    FD1S3AX lumlevel_i2 (.D(lumlevel_2__N_41[2]), .CK(clk_c), .Q(lumlevel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam lumlevel_i2.GSR = "ENABLED";
    FD1S3AY frqlevel_i1 (.D(frqlevel_2__N_67[1]), .CK(clk_c), .Q(frqlevel[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam frqlevel_i1.GSR = "ENABLED";
    FD1S3AX frqlevel_i2 (.D(frqlevel_2__N_67[2]), .CK(clk_c), .Q(frqlevel[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(103[3] 136[10])
    defparam frqlevel_i2.GSR = "ENABLED";
    FD1S3AX lumcnt_i1 (.D(lumcnt_9__N_103[1]), .CK(clk_c), .Q(lumcnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i1.GSR = "ENABLED";
    FD1S3AX lumcnt_i2 (.D(lumcnt_9__N_103[2]), .CK(clk_c), .Q(lumcnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i2.GSR = "ENABLED";
    FD1S3AX lumcnt_i3 (.D(lumcnt_9__N_103[3]), .CK(clk_c), .Q(lumcnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i3.GSR = "ENABLED";
    FD1S3AX lumcnt_i4 (.D(lumcnt_9__N_103[4]), .CK(clk_c), .Q(lumcnt[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i4.GSR = "ENABLED";
    FD1S3AX lumcnt_i5 (.D(lumcnt_9__N_103[5]), .CK(clk_c), .Q(lumcnt[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i5.GSR = "ENABLED";
    FD1S3AX lumcnt_i6 (.D(lumcnt_9__N_103[6]), .CK(clk_c), .Q(lumcnt[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i6.GSR = "ENABLED";
    FD1S3AX lumcnt_i7 (.D(lumcnt_9__N_103[7]), .CK(clk_c), .Q(lumcnt[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i7.GSR = "ENABLED";
    FD1S3AX lumcnt_i8 (.D(lumcnt_9__N_103[8]), .CK(clk_c), .Q(lumcnt[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i8.GSR = "ENABLED";
    FD1S3AX lumcnt_i9 (.D(lumcnt_9__N_103[9]), .CK(clk_c), .Q(lumcnt[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam lumcnt_i9.GSR = "ENABLED";
    CCU2D add_576_27 (.A0(n8997[24]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[25]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9027), 
          .COUT(n9028), .S0(n9014[25]), .S1(n9014[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_27.INIT0 = 16'h5655;
    defparam add_576_27.INIT1 = 16'h5655;
    defparam add_576_27.INJECT1_0 = "NO";
    defparam add_576_27.INJECT1_1 = "NO";
    FD1S3IX lumdivision_i3 (.D(lumlevel[1]), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(\lumdivision[3] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i3.GSR = "DISABLED";
    FD1S3IX lumdivision_i2 (.D(n8), .CK(clk_c), .CD(lumlevel[0]), .Q(\lumdivision[2] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i2.GSR = "DISABLED";
    CCU2D add_576_25 (.A0(n8997[22]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[23]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9026), 
          .COUT(n9027), .S0(n9014[23]), .S1(n9014[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_25.INIT0 = 16'h5655;
    defparam add_576_25.INIT1 = 16'h5655;
    defparam add_576_25.INJECT1_0 = "NO";
    defparam add_576_25.INJECT1_1 = "NO";
    FD1S3IX lumDN_2_93 (.D(lumDN_1), .CK(clk_c), .CD(n853), .Q(lumDN_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumDN_2_93.GSR = "ENABLED";
    LUT4 i14_3_lut (.A(lumlevel[0]), .B(lumlevel[1]), .C(lumlevel[2]), 
         .Z(lumdivision_31__N_44[0])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(142[4] 149[13])
    defparam i14_3_lut.init = 16'h3e3e;
    LUT4 div_63_i1838_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[24]), 
         .D(n11766), .Z(n2868)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1838_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3203_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[3]), .D(n4779), 
         .Z(n4881)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3203_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3120_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[17]), 
         .D(n9049[15]), .Z(n4765)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3120_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX lumDN_3_94 (.D(lumDN_2), .CK(clk_c), .CD(n853), .Q(lumDN_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumDN_3_94.GSR = "ENABLED";
    LUT4 i2020_3_lut (.A(n1047), .B(n12206), .C(n60), .Z(n62)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2020_3_lut.init = 16'hb2b2;
    LUT4 i1_2_lut (.A(frqlevel[0]), .B(n5942), .Z(frqlevel_2__N_67[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut.init = 16'h9999;
    FD1S3IX lumUP_2_90 (.D(lumUP_1), .CK(clk_c), .CD(n850), .Q(lumUP_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumUP_2_90.GSR = "ENABLED";
    LUT4 n2089_bdd_4_lut_9323 (.A(n4768), .B(n4765), .C(n4767), .D(n4758), 
         .Z(n11652)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2089_bdd_4_lut_9323.init = 16'hfffe;
    LUT4 div_63_i1837_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[25]), 
         .D(n2717), .Z(n2867)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1837_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3119_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[18]), 
         .D(n9049[16]), .Z(n4764)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3119_3_lut_4_lut.init = 16'hf2d0;
    LUT4 lumdivision_0__bdd_4_lut (.A(\lumdivision[0] ), .B(n12206), .C(n11833), 
         .D(n12204), .Z(n62_adj_319)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B+(C (D)))) */ ;
    defparam lumdivision_0__bdd_4_lut.init = 16'hfce4;
    FD1S3IX frqUP_2_96 (.D(frqUP_1), .CK(clk_c), .CD(n856), .Q(frqUP_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqUP_2_96.GSR = "ENABLED";
    FD1S3IX frqDN_3_100 (.D(frqDN_2), .CK(clk_c), .CD(n859), .Q(frqDN_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqDN_3_100.GSR = "ENABLED";
    LUT4 div_63_i1840_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[22]), 
         .D(n2720), .Z(n2870)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1840_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2137 (.BLUT(n54_adj_320), .ALUT(n58), .C0(n11001), .Z(n62_adj_321));
    LUT4 i4390_4_lut (.A(btn[1]), .B(n11870), .C(n5888), .D(frqlevel[2]), 
         .Z(n5942)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i4390_4_lut.init = 16'hdccc;
    CCU2D equal_6_16 (.A0(\frqnum[9] ), .B0(sawtooth_cnt[9]), .C0(sawtooth_cnt[8]), 
          .D0(sawtooth_cnt[7]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8242), .S1(lumcnt_9__N_123));
    defparam equal_6_16.INIT0 = 16'h8001;
    defparam equal_6_16.INIT1 = 16'hFFFF;
    defparam equal_6_16.INJECT1_0 = "YES";
    defparam equal_6_16.INJECT1_1 = "NO";
    LUT4 div_63_i3117_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[20]), 
         .D(n9049[18]), .Z(n4762)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3117_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX frqUP_3_97 (.D(frqUP_2), .CK(clk_c), .CD(n856), .Q(frqUP_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqUP_3_97.GSR = "ENABLED";
    CCU2D equal_6_15 (.A0(sawtooth_cnt[6]), .B0(\frqnum[6] ), .C0(sawtooth_cnt[5]), 
          .D0(\frqnum[5] ), .A1(sawtooth_cnt[4]), .B1(\frqnum[4] ), .C1(sawtooth_cnt[3]), 
          .D1(\frqnum[3] ), .CIN(n8241), .COUT(n8242));
    defparam equal_6_15.INIT0 = 16'h9009;
    defparam equal_6_15.INIT1 = 16'h9009;
    defparam equal_6_15.INJECT1_0 = "YES";
    defparam equal_6_15.INJECT1_1 = "YES";
    LUT4 div_63_LessThan_3206_i8_3_lut (.A(\lumdivision[3] ), .B(\lumdivision[4] ), 
         .C(n9), .Z(n8_adj_322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3206_i8_3_lut.init = 16'hcaca;
    LUT4 div_63_i1841_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[21]), 
         .D(n11764), .Z(n2871)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1841_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4342_2_lut (.A(frqlevel[0]), .B(frqlevel[1]), .Z(n5888)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4342_2_lut.init = 16'heeee;
    LUT4 n11858_bdd_4_lut_9373 (.A(btn[1]), .B(frqUP_2), .C(frqUP_3), 
         .D(frqUP_1), .Z(n64)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam n11858_bdd_4_lut_9373.init = 16'h0400;
    FD1S3IX lumUP_3_91 (.D(lumUP_2), .CK(clk_c), .CD(n850), .Q(lumUP_3)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumUP_3_91.GSR = "ENABLED";
    FD1S3IX frqDN_2_99 (.D(frqDN_1), .CK(clk_c), .CD(n859), .Q(frqDN_2)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam frqDN_2_99.GSR = "ENABLED";
    LUT4 div_63_i3114_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[23]), 
         .D(n9049[21]), .Z(n4759)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3114_3_lut_4_lut.init = 16'hf2d0;
    PFUMX div_63_LessThan_881_i60 (.BLUT(n56_c), .ALUT(n58_adj_323), .C0(n11009), 
          .Z(n60_adj_324)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;
    FD1P3AY triangle_cnt_i0_i0 (.D(n280[0]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i0.GSR = "ENABLED";
    LUT4 div_63_i1843_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[19]), 
         .D(n2723), .Z(n2873)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1843_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i10_3_lut_3_lut (.A(n11707), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3137_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i2136_3_lut_rep_301_4_lut (.A(n48), .B(n11741), .C(n1629[17]), 
         .D(n3166), .Z(n11738)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2136_3_lut_rep_301_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3206_i9_4_lut (.A(n4778), .B(\lumdivision[4] ), 
         .C(n2071[4]), .D(n11700), .Z(n9)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A !(B ((D)+!C)+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3206_i9_4_lut.init = 16'h663c;
    LUT4 div_63_i1844_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[18]), 
         .D(n2724), .Z(n2874)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1844_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4181_4_lut_2_lut_rep_432 (.A(\lumdivision[0] ), .B(n11833), .Z(n12195)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i4181_4_lut_2_lut_rep_432.init = 16'h2222;
    LUT4 i8776_3_lut (.A(\lumdivision[0] ), .B(n11833), .C(n12204), .Z(n1047)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8776_3_lut.init = 16'h1212;
    LUT4 div_63_i3115_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[22]), 
         .D(n9049[20]), .Z(n4760)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3115_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4211_2_lut_3_lut (.A(n54), .B(n11761), .C(n1527[17]), .Z(n2875)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4211_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2_3_lut_rep_324 (.A(n2713), .B(n11765), .C(n10562), .Z(n11761)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_3_lut_rep_324.init = 16'hfefe;
    FD1P3AX triangle_cnt_i0_i15 (.D(n280[15]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i15.GSR = "ENABLED";
    LUT4 div_63_i731_4_lut_4_lut_4_lut (.A(n12200), .B(n62_adj_319), .C(n12197), 
         .D(n62), .Z(n5963)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam div_63_i731_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i4166_2_lut_rep_323_4_lut (.A(n2713), .B(n11765), .C(n10562), 
         .D(n54), .Z(n11760)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4166_2_lut_rep_323_4_lut.init = 16'h0100;
    PFUMX div_63_LessThan_762_i62 (.BLUT(n58_adj_325), .ALUT(n60_adj_326), 
          .C0(n11005), .Z(n62_adj_327)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;
    LUT4 i4200_2_lut_rep_383_4_lut (.A(\lumdivision[4] ), .B(n62_adj_319), 
         .C(n12197), .D(\lumdivision[0] ), .Z(n11820)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i4200_2_lut_rep_383_4_lut.init = 16'h0100;
    LUT4 i9162_4_lut (.A(n4217), .B(n9), .C(n4881), .D(\lumdivision[3] ), 
         .Z(n10874)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9162_4_lut.init = 16'heffe;
    LUT4 div_63_i852_3_lut_rep_378_4_lut (.A(\lumdivision[0] ), .B(n11833), 
         .C(n1258_adj_328), .D(n1221[29]), .Z(n11815)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam div_63_i852_3_lut_rep_378_4_lut.init = 16'h2f20;
    FD1P3AX triangle_cnt_i0_i14 (.D(n280[14]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i14.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i13 (.D(n280[13]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i13.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i12 (.D(n280[12]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i12.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i11 (.D(n280[11]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i11.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i10 (.D(n280[10]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i10.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i9 (.D(n280[9]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i9.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i8 (.D(n280[8]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i8.GSR = "ENABLED";
    LUT4 div_63_LessThan_1113_i52_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1754), .D(n1755), .Z(n52)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1113_i52_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_1761_i42_3_lut_3_lut (.A(n11764), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1761_i42_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2174_3_lut_rep_326 (.A(n2720), .B(n2719), .C(\lumdivision[6] ), 
         .Z(n11763)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2174_3_lut_rep_326.init = 16'h7e7e;
    LUT4 div_63_LessThan_1761_i44_3_lut_4_lut (.A(n2720), .B(n2719), .C(\lumdivision[6] ), 
         .D(n42), .Z(n44)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1761_i44_3_lut_4_lut.init = 16'hf170;
    FD1P3AX triangle_cnt_i0_i7 (.D(n280[7]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i7.GSR = "ENABLED";
    LUT4 div_63_LessThan_1761_i43_2_lut_rep_325_4_lut (.A(n2568), .B(n1493[21]), 
         .C(n11767), .D(\lumdivision[4] ), .Z(n11762)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1761_i43_2_lut_rep_325_4_lut.init = 16'h53ac;
    LUT4 div_63_i3123_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[14]), 
         .D(n9049[12]), .Z(n4768)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3123_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_2_lut_4_lut (.A(n2559), .B(n1493[30]), .C(n11767), .D(n2713), 
         .Z(n7)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_4_lut.init = 16'hffac;
    LUT4 i1_2_lut_4_lut (.A(n2565), .B(n1493[24]), .C(n11767), .D(n48_adj_329), 
         .Z(n4)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut.init = 16'h5300;
    LUT4 i2636_3_lut_rep_265 (.A(n4776), .B(n4775), .C(\lumdivision[6] ), 
         .Z(n11702)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2636_3_lut_rep_265.init = 16'h7e7e;
    LUT4 i4170_2_lut_rep_330 (.A(n56_adj_330), .B(n4307), .Z(n11767)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4170_2_lut_rep_330.init = 16'h2222;
    LUT4 div_63_LessThan_1226_i50_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1923), .D(n11800), .Z(n50)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1226_i50_4_lut.init = 16'h0c8e;
    LUT4 i9160_4_lut (.A(n11702), .B(n11701), .C(n4778), .D(\lumdivision[3] ), 
         .Z(n10881)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9160_4_lut.init = 16'heffe;
    FD1P3AX triangle_cnt_i0_i6 (.D(n280[6]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i6.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i5 (.D(n280[5]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i5.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i4 (.D(n280[4]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i4.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i3 (.D(n280[3]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i3.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i2 (.D(n280[2]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i2.GSR = "ENABLED";
    FD1P3AX triangle_cnt_i0_i1 (.D(n280[1]), .SP(clk_c_enable_17), .CK(clk_c), 
            .Q(triangle_cnt[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(179[3] 204[10])
    defparam triangle_cnt_i0_i1.GSR = "ENABLED";
    LUT4 div_63_LessThan_1337_i48_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2089_adj_331), .D(n2090_adj_332), .Z(n48_adj_333)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1337_i48_4_lut.init = 16'h0c8e;
    LUT4 i9158_4_lut (.A(n11710), .B(n11711), .C(n9049[3]), .D(\lumdivision[3] ), 
         .Z(n10888)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9158_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_adj_4 (.A(\lumdivision[0] ), .B(\frqnum[3] ), .Z(n4_adj_334)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_4.init = 16'h2222;
    LUT4 i2_3_lut_rep_433 (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), .Z(n12196)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i2_3_lut_rep_433.init = 16'h2020;
    LUT4 div_63_LessThan_1446_i46_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2252), .D(n2253), .Z(n46)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1446_i46_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_1553_i44_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2412), .D(n2413), .Z(n44_adj_335)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1553_i44_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1740_3_lut_rep_327_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[21]), 
         .D(n2568), .Z(n11764)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1740_3_lut_rep_327_4_lut.init = 16'hf2d0;
    LUT4 i9156_4_lut (.A(n11712), .B(n11713), .C(n9031[3]), .D(\lumdivision[3] ), 
         .Z(n10895)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9156_4_lut.init = 16'heffe;
    LUT4 i8785_2_lut (.A(\frqnum[4] ), .B(n9014[1]), .Z(n10714)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8785_2_lut.init = 16'heeee;
    LUT4 i4341_2_lut_rep_389_3_lut_4_lut_2_lut_4_lut (.A(lumDN_2), .B(lumDN_3), 
         .C(lumDN_1), .D(n11836), .Z(n11826)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i4341_2_lut_rep_389_3_lut_4_lut_2_lut_4_lut.init = 16'hffdf;
    LUT4 i9154_4_lut (.A(n11714), .B(n11715), .C(n9014[3]), .D(\lumdivision[3] ), 
         .Z(n10902)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9154_4_lut.init = 16'heffe;
    LUT4 i8797_2_lut (.A(\frqnum[5] ), .B(n8997[1]), .Z(n10726)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8797_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_1658_i42_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2569), .D(n2570), .Z(n42_adj_336)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1658_i42_4_lut.init = 16'h0c8e;
    LUT4 div_63_i3109_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[28]), 
         .D(n9049[26]), .Z(n4754)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3109_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX sawtooth_cnt_395__i15 (.D(n69[15]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i15.GSR = "ENABLED";
    LUT4 div_63_LessThan_1761_i40_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2723), .D(n2724), .Z(n40)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1761_i40_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1732_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[29]), 
         .D(n11772), .Z(n2713)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1732_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3110_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[27]), 
         .D(n9049[25]), .Z(n4755)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3110_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3187_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[19]), 
         .D(n4763), .Z(n39)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3187_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3106_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[31]), 
         .D(n9049[29]), .Z(n4751)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3106_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1731_3_lut_rep_328_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[30]), 
         .D(n2559), .Z(n11765)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1731_3_lut_rep_328_4_lut.init = 16'hf2d0;
    L6MUX21 sawtooth_cnt_15__I_0_i32 (.D0(n24_adj_337), .D1(n30_adj_338), 
            .SD(n10983), .Z(led_7__N_140)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;
    LUT4 div_63_i3118_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[19]), 
         .D(n9049[17]), .Z(n4763)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3118_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n2077_bdd_4_lut (.A(n2071[26]), .B(n2071[31]), .C(n2071[27]), 
         .D(n2071[30]), .Z(n11668)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2077_bdd_4_lut.init = 16'hfffe;
    LUT4 n2077_bdd_4_lut_9331 (.A(n11704), .B(n11706), .C(n4755), .D(n4751), 
         .Z(n11667)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2077_bdd_4_lut_9331.init = 16'hfffe;
    LUT4 div_63_i3113_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[24]), 
         .D(n9049[22]), .Z(n4758)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3113_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i2_3_lut (.A(frqDN_2), .B(frqDN_3), .C(frqDN_1), .Z(btn[1])) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i2_3_lut.init = 16'h2020;
    LUT4 div_63_i1730_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[31]), 
         .D(n11773), .Z(n2711)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1730_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1733_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[28]), 
         .D(n2561), .Z(n2714)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1733_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1737_3_lut_rep_329_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[24]), 
         .D(n2565), .Z(n11766)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1737_3_lut_rep_329_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1734_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[27]), 
         .D(n2562), .Z(n2715)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1734_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1736_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[25]), 
         .D(n11771), .Z(n2717)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1736_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3122_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[15]), 
         .D(n9049[13]), .Z(n4767)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3122_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX sawtooth_cnt_395__i14 (.D(n69[14]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i14.GSR = "ENABLED";
    FD1S3IX sawtooth_cnt_395__i13 (.D(n69[13]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i13.GSR = "ENABLED";
    LUT4 i4221_2_lut_rep_263 (.A(n22), .B(n4311), .Z(n11700)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4221_2_lut_rep_263.init = 16'h2222;
    LUT4 div_63_i3112_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[25]), 
         .D(n9049[23]), .Z(n4757)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3112_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9152_4_lut (.A(n11716), .B(n11717), .C(n8997[3]), .D(\lumdivision[3] ), 
         .Z(n10909)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9152_4_lut.init = 16'heffe;
    LUT4 i8808_2_lut (.A(\frqnum[6] ), .B(n8981[1]), .Z(n10738)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8808_2_lut.init = 16'heeee;
    LUT4 i9150_4_lut (.A(n11718), .B(n11719), .C(n8981[3]), .D(\lumdivision[3] ), 
         .Z(n10916)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9150_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_adj_5 (.A(\lumdivision[0] ), .B(\frqnum[9] ), .Z(n10648)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_5.init = 16'h2222;
    LUT4 div_63_LessThan_1862_i38_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n2874), .D(n2875), .Z(n38)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1862_i38_4_lut.init = 16'h0c8e;
    LUT4 div_63_i3128_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[9]), 
         .D(n9049[7]), .Z(n4773)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3128_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9148_4_lut (.A(n11720), .B(n11721), .C(n8965[3]), .D(\lumdivision[3] ), 
         .Z(n10923)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9148_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_1961_i36_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3022), .D(n3023), .Z(n36)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1961_i36_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_2058_i34_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3167), .D(n3168), .Z(n34)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2058_i34_4_lut.init = 16'h0c8e;
    LUT4 i9140_4_lut (.A(n11722), .B(n11723), .C(n8950[3]), .D(\lumdivision[3] ), 
         .Z(n10994)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9140_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2153_i32_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3309), .D(n3310), .Z(n32_adj_339)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2153_i32_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1735_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[26]), 
         .D(n2563), .Z(n2716)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1735_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9209_4_lut (.A(n11724), .B(n11725), .C(n8935[3]), .D(\lumdivision[3] ), 
         .Z(n10766)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9209_4_lut.init = 16'heffe;
    LUT4 i8789_2_lut (.A(\frqnum[10] ), .B(n8921[1]), .Z(n10718)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i8789_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_2246_i30_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n3448), .D(n10724), .Z(n30_adj_340)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2246_i30_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1738_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[23]), 
         .D(n2566), .Z(n2719)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1738_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3198_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[8]), .D(n11703), 
         .Z(n17)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3198_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3127_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[10]), 
         .D(n9049[8]), .Z(n4772)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3127_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9205_4_lut (.A(n11726), .B(n11727), .C(n8921[3]), .D(\lumdivision[3] ), 
         .Z(n10773)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9205_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_adj_6 (.A(\lumdivision[0] ), .B(\frqnum[11] ), .Z(n4_adj_341)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_6.init = 16'h2222;
    LUT4 div_63_LessThan_2337_i28_4_lut (.A(n8907[1]), .B(\lumdivision[2] ), 
         .C(n8907[2]), .D(n4_adj_341), .Z(n28)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2337_i28_4_lut.init = 16'h4d0c;
    LUT4 div_63_i1739_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[22]), 
         .D(n11770), .Z(n2720)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1739_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2426_i26_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8921[2]), .D(n10718), .Z(n26)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2426_i26_4_lut.init = 16'h0c8e;
    LUT4 i9202_4_lut (.A(n11728), .B(n11729), .C(n8907[3]), .D(\lumdivision[3] ), 
         .Z(n10780)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9202_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2513_i24_4_lut (.A(n8935[1]), .B(\lumdivision[2] ), 
         .C(n8935[2]), .D(n10648), .Z(n24_adj_342)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2513_i24_4_lut.init = 16'h4d0c;
    LUT4 i9180_4_lut (.A(n11732), .B(n11731), .C(n3447), .D(\lumdivision[3] ), 
         .Z(n10787)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9180_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2598_i22_4_lut (.A(n8950[1]), .B(\lumdivision[2] ), 
         .C(n8950[2]), .D(n10648), .Z(n22_adj_343)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2598_i22_4_lut.init = 16'h4d0c;
    LUT4 i9167_4_lut (.A(n11737), .B(n11736), .C(n3308), .D(\lumdivision[3] ), 
         .Z(n10794)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9167_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2681_i20_4_lut (.A(n8965[1]), .B(\lumdivision[2] ), 
         .C(n8965[2]), .D(n10648), .Z(n20)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2681_i20_4_lut.init = 16'h4d0c;
    LUT4 i9138_4_lut (.A(n11743), .B(n11742), .C(n3166), .D(\lumdivision[3] ), 
         .Z(n10801)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9138_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2762_i18_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8981[2]), .D(n10738), .Z(n18)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2762_i18_4_lut.init = 16'h0c8e;
    LUT4 i9207_4_lut (.A(n11750), .B(n11749), .C(n3021), .D(\lumdivision[3] ), 
         .Z(n10808)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9207_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2841_i16_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n8997[2]), .D(n10726), .Z(n16)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2841_i16_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_2918_i14_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n9014[2]), .D(n10714), .Z(n14)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2918_i14_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1741_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[20]), 
         .D(n2569), .Z(n2722)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1741_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9200_4_lut (.A(n11756), .B(n11755), .C(n2873), .D(\lumdivision[3] ), 
         .Z(n10815)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9200_4_lut.init = 16'heffe;
    LUT4 div_63_LessThan_2993_i12_4_lut (.A(n9031[1]), .B(\lumdivision[2] ), 
         .C(n9031[2]), .D(n4_adj_334), .Z(n12)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2993_i12_4_lut.init = 16'h4d0c;
    LUT4 div_63_LessThan_3066_i10_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n9049[2]), .D(n9049[1]), .Z(n10_adj_344)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3066_i10_4_lut.init = 16'h0c8e;
    LUT4 div_63_i1742_3_lut_4_lut (.A(n56_adj_330), .B(n4307), .C(n1493[19]), 
         .D(n2570), .Z(n2723)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1742_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9198_4_lut (.A(n11763), .B(n11762), .C(n2722), .D(\lumdivision[3] ), 
         .Z(n10822)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9198_4_lut.init = 16'heffe;
    LUT4 div_63_i3130_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[7]), 
         .D(n9049[5]), .Z(n4775)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3130_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i8_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n4779), .D(n4780), .Z(n8_adj_345)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3137_i8_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_3206_i10_3_lut (.A(n8_adj_322), .B(\lumdivision[6] ), 
         .C(n4217), .Z(n10_adj_346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3206_i10_3_lut.init = 16'hcaca;
    LUT4 div_63_LessThan_3206_i6_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n4882), .D(n3), .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3206_i6_4_lut.init = 16'h0c8e;
    LUT4 i9196_4_lut (.A(n11769), .B(n11768), .C(n2568), .D(\lumdivision[3] ), 
         .Z(n10829)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9196_4_lut.init = 16'heffe;
    LUT4 i4210_2_lut_3_lut (.A(n56_adj_330), .B(n4307), .C(n1493[18]), 
         .Z(n2724)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4210_2_lut_3_lut.init = 16'hd0d0;
    PFUMX i9324 (.BLUT(n11653), .ALUT(n11652), .C0(n11700), .Z(n11654));
    LUT4 div_63_i3129_3_lut_rep_266_4_lut (.A(n24), .B(n11709), .C(n2037[8]), 
         .D(n9049[6]), .Z(n11703)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3129_3_lut_rep_266_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3206_i20_4_lut (.A(n17), .B(\lumdivision[9] ), 
         .C(n4875), .D(n4_adj_347), .Z(n20_adj_348)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3206_i20_4_lut.init = 16'h4d0c;
    LUT4 i9194_4_lut (.A(n11777), .B(n11776), .C(n2411), .D(\lumdivision[3] ), 
         .Z(n10836)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9194_4_lut.init = 16'heffe;
    LUT4 i1_4_lut (.A(n14_adj_349), .B(n4775), .C(n2071[7]), .D(n11700), 
         .Z(n4_adj_347)) /* synthesis lut_function=(!((B (C+(D))+!B !((D)+!C))+!A)) */ ;
    defparam i1_4_lut.init = 16'h220a;
    LUT4 div_63_i3131_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[6]), 
         .D(n9049[4]), .Z(n4776)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3131_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1658_i44_3_lut_3_lut (.A(n11770), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n44_adj_350)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1658_i44_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2164_3_lut_rep_332 (.A(n2566), .B(n2565), .C(\lumdivision[6] ), 
         .Z(n11769)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2164_3_lut_rep_332.init = 16'h7e7e;
    LUT4 n2097_bdd_3_lut (.A(n2071[6]), .B(\lumdivision[6] ), .C(n2071[5]), 
         .Z(n11681)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam n2097_bdd_3_lut.init = 16'h7e7e;
    LUT4 div_63_LessThan_1658_i46_3_lut_4_lut (.A(n2566), .B(n2565), .C(\lumdivision[6] ), 
         .D(n44_adj_350), .Z(n46_adj_351)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1658_i46_3_lut_4_lut.init = 16'hf170;
    LUT4 n2097_bdd_3_lut_9337 (.A(\lumdivision[6] ), .B(n11707), .C(n4776), 
         .Z(n11680)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam n2097_bdd_3_lut_9337.init = 16'h7e7e;
    LUT4 div_63_LessThan_1658_i45_2_lut_rep_331_4_lut (.A(n2411), .B(n1459[22]), 
         .C(n11774), .D(\lumdivision[4] ), .Z(n11768)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1658_i45_2_lut_rep_331_4_lut.init = 16'h53ac;
    LUT4 i9192_4_lut (.A(n11784), .B(n11783), .C(n2251), .D(\lumdivision[3] ), 
         .Z(n10843)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9192_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_4_lut_adj_7 (.A(n2408), .B(n1459[25]), .C(n11774), .D(n50_adj_352), 
         .Z(n4_adj_353)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_7.init = 16'h5300;
    LUT4 i2_2_lut_4_lut_adj_8 (.A(n2404), .B(n1459[29]), .C(n11774), .D(n2559), 
         .Z(n6_adj_354)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_4_lut_adj_8.init = 16'hffac;
    LUT4 i9190_4_lut (.A(n11790), .B(n11789), .C(n2088_adj_355), .D(\lumdivision[3] ), 
         .Z(n10850)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9190_4_lut.init = 16'heffe;
    LUT4 div_63_i3111_3_lut_rep_267_4_lut (.A(n24), .B(n11709), .C(n2037[26]), 
         .D(n9049[24]), .Z(n11704)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3111_3_lut_rep_267_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2122_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[31]), 
         .D(n3152), .Z(n3293)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2122_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2123_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[30]), 
         .D(n3153), .Z(n3294)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2123_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_4_lut_adj_9 (.A(n11780), .B(n1459[31]), .C(n11774), 
         .D(n2561), .Z(n5)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_9.init = 16'hffac;
    LUT4 div_63_i1636_3_lut_rep_333_4_lut (.A(n58_adj_356), .B(n11775), 
         .C(n1459[22]), .D(n2411), .Z(n11770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1636_3_lut_rep_333_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3125_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[12]), 
         .D(n9049[10]), .Z(n4770)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3125_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1631_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[27]), 
         .D(n2406), .Z(n2562)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1631_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1630_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[28]), 
         .D(n2405), .Z(n2561)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1630_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i9185_4_lut (.A(n11799), .B(n11798), .C(n1922), .D(\lumdivision[3] ), 
         .Z(n10857)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9185_4_lut.init = 16'heffe;
    LUT4 i9182_4_lut (.A(n11805), .B(n11806), .C(n1753), .D(\lumdivision[3] ), 
         .Z(n10864)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9182_4_lut.init = 16'heffe;
    LUT4 div_63_i1834_3_lut_rep_322_4_lut (.A(n54), .B(n11761), .C(n1527[28]), 
         .D(n2714), .Z(n11759)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1834_3_lut_rep_322_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1633_3_lut_rep_334_4_lut (.A(n58_adj_356), .B(n11775), 
         .C(n1459[25]), .D(n2408), .Z(n11771)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1633_3_lut_rep_334_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3133_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[4]), 
         .D(n9049[2]), .Z(n4778)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3133_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1628_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[30]), 
         .D(n2403), .Z(n2559)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1628_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2127_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[26]), 
         .D(n3157), .Z(n3298)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2127_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1629_3_lut_rep_335_4_lut (.A(n58_adj_356), .B(n11775), 
         .C(n1459[29]), .D(n2404), .Z(n11772)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1629_3_lut_rep_335_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1632_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[26]), 
         .D(n11779), .Z(n2563)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1632_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3134_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[3]), 
         .D(n9049[1]), .Z(n4779)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3134_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_272 (.A(n38_adj_357), .B(n10580), .Z(n11709)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_rep_272.init = 16'heeee;
    LUT4 i21_4_lut (.A(n11669), .B(n42_adj_358), .C(n31_adj_359), .D(n32_adj_360), 
         .Z(n9184)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i4225_2_lut_rep_271_3_lut (.A(n38_adj_357), .B(n10580), .C(n24), 
         .Z(n11708)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4225_2_lut_rep_271_3_lut.init = 16'h1010;
    LUT4 i20_4_lut (.A(n33), .B(n40_adj_361), .C(n23), .D(n24_adj_362), 
         .Z(n42_adj_358)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 div_63_i1627_3_lut_rep_336_4_lut (.A(n58_adj_356), .B(n11775), 
         .C(n1459[31]), .D(n11780), .Z(n11773)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1627_3_lut_rep_336_4_lut.init = 16'hf2d0;
    LUT4 i9_4_lut (.A(n4769), .B(n45), .C(n2071[13]), .D(n11700), .Z(n31_adj_359)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9_4_lut.init = 16'heefc;
    LUT4 i10_4_lut (.A(n4759), .B(n51), .C(n2071[23]), .D(n11700), .Z(n32_adj_360)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i10_4_lut.init = 16'heefc;
    LUT4 div_63_i1634_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[24]), 
         .D(n2409), .Z(n2565)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1634_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1635_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[23]), 
         .D(n11778), .Z(n2566)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1635_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i12_3_lut_4_lut (.A(n4776), .B(n4775), .C(\lumdivision[6] ), 
         .D(n10), .Z(n12_adj_363)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3137_i12_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2133_3_lut_rep_302_4_lut (.A(n48), .B(n11741), .C(n1629[20]), 
         .D(n3163), .Z(n11739)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2133_3_lut_rep_302_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1637_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[21]), 
         .D(n2412), .Z(n2568)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1637_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_4_lut_adj_10 (.A(n9049[6]), .B(n2037[8]), .C(n11708), 
         .D(n16_adj_364), .Z(n4_adj_365)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_10.init = 16'h5300;
    LUT4 i11_4_lut (.A(n11705), .B(n43), .C(n2071[29]), .D(n11700), 
         .Z(n33)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i11_4_lut.init = 16'heefc;
    LUT4 div_63_i1638_3_lut_4_lut (.A(n58_adj_356), .B(n11775), .C(n1459[20]), 
         .D(n2413), .Z(n2569)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1638_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i18_4_lut (.A(n39), .B(n11654), .C(n26_adj_366), .D(n57), .Z(n40_adj_361)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(n4762), .B(n25), .C(n2071[20]), .D(n11700), 
         .Z(n23)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_4_lut_adj_11.init = 16'heefc;
    LUT4 i4209_2_lut_3_lut (.A(n58_adj_356), .B(n11775), .C(n1459[19]), 
         .Z(n2570)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4209_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i2_4_lut (.A(n4766), .B(n37), .C(n2071[16]), .D(n11700), .Z(n24_adj_362)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_4_lut.init = 16'heefc;
    LUT4 i2_3_lut_rep_338 (.A(n11780), .B(n2403), .C(n2404), .Z(n11775)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_3_lut_rep_338.init = 16'hfefe;
    LUT4 i4174_2_lut_rep_337_4_lut (.A(n11780), .B(n2403), .C(n2404), 
         .D(n58_adj_356), .Z(n11774)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4174_2_lut_rep_337_4_lut.init = 16'h0100;
    LUT4 i4266_2_lut_3_lut_4_lut (.A(n38_adj_357), .B(n10580), .C(n2037[2]), 
         .D(n24), .Z(n4780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4266_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 div_63_LessThan_1553_i46_3_lut_3_lut (.A(n11778), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n46_adj_367)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1553_i46_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2156_3_lut_rep_340 (.A(n2409), .B(n2408), .C(\lumdivision[6] ), 
         .Z(n11777)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2156_3_lut_rep_340.init = 16'h7e7e;
    LUT4 i2594_3_lut_rep_273 (.A(n9049[5]), .B(n9049[6]), .C(\lumdivision[6] ), 
         .Z(n11710)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2594_3_lut_rep_273.init = 16'h7e7e;
    LUT4 div_63_LessThan_1553_i48_3_lut_4_lut (.A(n2409), .B(n2408), .C(\lumdivision[6] ), 
         .D(n46_adj_367), .Z(n48_adj_368)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1553_i48_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_3066_i14_3_lut_4_lut (.A(n9049[5]), .B(n9049[6]), 
         .C(\lumdivision[6] ), .D(n12_adj_369), .Z(n14_adj_370)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3066_i14_3_lut_4_lut.init = 16'hf170;
    LUT4 i1_2_lut_4_lut_adj_12 (.A(n3163), .B(n1629[20]), .C(n11740), 
         .D(n40_adj_371), .Z(n4_adj_372)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_12.init = 16'h5300;
    LUT4 i4_4_lut (.A(n4772), .B(n23_adj_373), .C(n2071[10]), .D(n11700), 
         .Z(n26_adj_366)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_4_lut.init = 16'heefc;
    LUT4 div_63_LessThan_1553_i47_2_lut_rep_339_4_lut (.A(n2251), .B(n1425[23]), 
         .C(n11781), .D(\lumdivision[4] ), .Z(n11776)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1553_i47_2_lut_rep_339_4_lut.init = 16'h53ac;
    LUT4 i1_2_lut_4_lut_adj_13 (.A(n2248), .B(n1425[26]), .C(n11781), 
         .D(n52_adj_374), .Z(n4_adj_375)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_13.init = 16'h5300;
    LUT4 i1_2_lut_4_lut_adj_14 (.A(n11787), .B(n1425[31]), .C(n11781), 
         .D(n2404), .Z(n4_adj_376)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_14.init = 16'hffac;
    LUT4 i1_2_lut_rep_434 (.A(\lumdivision[6] ), .B(n12202), .Z(n12197)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_434.init = 16'heeee;
    CCU2D sawtooth_cnt_395_add_4_17 (.A0(sawtooth_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9119), .S0(n69[15]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_17.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_17.INIT1 = 16'h0000;
    defparam sawtooth_cnt_395_add_4_17.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_17.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_15 (.A0(sawtooth_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9118), .COUT(n9119), .S0(n69[13]), 
          .S1(n69[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_15.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_15.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_15.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_15.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_13 (.A0(sawtooth_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9117), .COUT(n9118), .S0(n69[11]), 
          .S1(n69[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_13.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_13.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_13.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_13.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_11 (.A0(sawtooth_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9116), .COUT(n9117), .S0(n69[9]), 
          .S1(n69[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_11.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_11.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_11.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_11.INJECT1_1 = "NO";
    LUT4 div_63_i1530_3_lut_rep_341_4_lut (.A(n60_adj_377), .B(n11782), 
         .C(n1425[23]), .D(n2251), .Z(n11778)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1530_3_lut_rep_341_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1524_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[29]), 
         .D(n2245), .Z(n2404)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1524_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3066_i13_2_lut_rep_274 (.A(n9049[4]), .B(\lumdivision[4] ), 
         .Z(n11711)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3066_i13_2_lut_rep_274.init = 16'h6666;
    LUT4 i6_2_lut_4_lut (.A(n9049[24]), .B(n2037[26]), .C(n11708), .D(n4763), 
         .Z(n27)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_2_lut_4_lut.init = 16'hffac;
    LUT4 div_63_i1527_3_lut_rep_342_4_lut (.A(n60_adj_377), .B(n11782), 
         .C(n1425[26]), .D(n2248), .Z(n11779)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1527_3_lut_rep_342_4_lut.init = 16'hf2d0;
    CCU2D sawtooth_cnt_395_add_4_9 (.A0(sawtooth_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9115), .COUT(n9116), .S0(n69[7]), 
          .S1(n69[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_9.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_9.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_9.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_9.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_7 (.A0(sawtooth_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9114), .COUT(n9115), .S0(n69[5]), 
          .S1(n69[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_7.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_7.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_7.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_7.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_3066_i12_3_lut_3_lut (.A(n9049[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n12_adj_369)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3066_i12_3_lut_3_lut.init = 16'hd4d4;
    CCU2D sawtooth_cnt_395_add_4_5 (.A0(sawtooth_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9113), .COUT(n9114), .S0(n69[3]), 
          .S1(n69[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_5.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_5.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_5.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_5.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n20_adj_348), .B1(n9184), .C1(triangle_cnt[0]), .D1(GND_net), 
          .COUT(n8783));
    defparam sub_290_add_2_1.INIT0 = 16'h0000;
    defparam sub_290_add_2_1.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_1.INJECT1_0 = "NO";
    defparam sub_290_add_2_1.INJECT1_1 = "NO";
    LUT4 i7_2_lut_4_lut (.A(n9049[27]), .B(n2037[29]), .C(n11708), .D(n4754), 
         .Z(n28_adj_378)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_2_lut_4_lut.init = 16'hffac;
    LUT4 i2554_3_lut_rep_275 (.A(n9031[5]), .B(n9031[6]), .C(\lumdivision[6] ), 
         .Z(n11712)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2554_3_lut_rep_275.init = 16'h7e7e;
    LUT4 div_63_i1526_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[27]), 
         .D(n11786), .Z(n2406)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1526_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1525_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[28]), 
         .D(n2246), .Z(n2405)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1525_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_576_23 (.A0(n8997[20]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[21]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9025), 
          .COUT(n9026), .S0(n9014[21]), .S1(n9014[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_23.INIT0 = 16'h5655;
    defparam add_576_23.INIT1 = 16'h5655;
    defparam add_576_23.INJECT1_0 = "NO";
    defparam add_576_23.INJECT1_1 = "NO";
    CCU2D add_576_21 (.A0(n8997[18]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[19]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9024), 
          .COUT(n9025), .S0(n9014[19]), .S1(n9014[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_21.INIT0 = 16'h5655;
    defparam add_576_21.INIT1 = 16'h5655;
    defparam add_576_21.INJECT1_0 = "NO";
    defparam add_576_21.INJECT1_1 = "NO";
    CCU2D add_576_19 (.A0(n8997[16]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[17]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9023), 
          .COUT(n9024), .S0(n9014[17]), .S1(n9014[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_19.INIT0 = 16'h5655;
    defparam add_576_19.INIT1 = 16'h5655;
    defparam add_576_19.INJECT1_0 = "NO";
    defparam add_576_19.INJECT1_1 = "NO";
    CCU2D add_576_17 (.A0(n8997[14]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[15]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9022), 
          .COUT(n9023), .S0(n9014[15]), .S1(n9014[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_17.INIT0 = 16'h5655;
    defparam add_576_17.INIT1 = 16'h5655;
    defparam add_576_17.INJECT1_0 = "NO";
    defparam add_576_17.INJECT1_1 = "NO";
    CCU2D add_576_15 (.A0(n8997[12]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[13]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9021), 
          .COUT(n9022), .S0(n9014[13]), .S1(n9014[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_15.INIT0 = 16'h5655;
    defparam add_576_15.INIT1 = 16'h5655;
    defparam add_576_15.INJECT1_0 = "NO";
    defparam add_576_15.INJECT1_1 = "NO";
    CCU2D add_576_13 (.A0(n8997[10]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(n8997[11]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9020), 
          .COUT(n9021), .S0(n9014[11]), .S1(n9014[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_13.INIT0 = 16'h5655;
    defparam add_576_13.INIT1 = 16'h5655;
    defparam add_576_13.INJECT1_0 = "NO";
    defparam add_576_13.INJECT1_1 = "NO";
    CCU2D add_576_11 (.A0(n8997[8]), .B0(n32), .C0(n31), .D0(n30), .A1(n8997[9]), 
          .B1(n30), .C1(n2299), .D1(n4315), .CIN(n9019), .COUT(n9020), 
          .S0(n9014[9]), .S1(n9014[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_11.INIT0 = 16'h5655;
    defparam add_576_11.INIT1 = 16'h5a9a;
    defparam add_576_11.INJECT1_0 = "NO";
    defparam add_576_11.INJECT1_1 = "NO";
    CCU2D add_576_9 (.A0(n8997[6]), .B0(n30), .C0(n1463), .D0(n4315), 
          .A1(n8997[7]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9018), 
          .COUT(n9019), .S0(n9014[7]), .S1(n9014[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_9.INIT0 = 16'h5a9a;
    defparam add_576_9.INIT1 = 16'h5655;
    defparam add_576_9.INJECT1_0 = "NO";
    defparam add_576_9.INJECT1_1 = "NO";
    CCU2D add_576_7 (.A0(n8997[4]), .B0(n30), .C0(n1638), .D0(n4315), 
          .A1(n8997[5]), .B1(n30), .C1(n1463), .D1(n4315), .CIN(n9017), 
          .COUT(n9018), .S0(n9014[5]), .S1(n9014[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_7.INIT0 = 16'h5a9a;
    defparam add_576_7.INIT1 = 16'h5a9a;
    defparam add_576_7.INJECT1_0 = "NO";
    defparam add_576_7.INJECT1_1 = "NO";
    CCU2D add_576_5 (.A0(n8997[2]), .B0(n30), .C0(n926), .D0(n4315), 
          .A1(n8997[3]), .B1(n30), .C1(n1108), .D1(n4315), .CIN(n9016), 
          .COUT(n9017), .S0(n9014[3]), .S1(n9014[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_5.INIT0 = 16'h5a9a;
    defparam add_576_5.INIT1 = 16'h5a9a;
    defparam add_576_5.INJECT1_0 = "NO";
    defparam add_576_5.INJECT1_1 = "NO";
    CCU2D add_576_3 (.A0(\frqnum[5] ), .B0(n30), .C0(n56), .D0(n4315), 
          .A1(n8997[1]), .B1(n32), .C1(n31), .D1(n30), .CIN(n9015), 
          .COUT(n9016), .S0(n9014[1]), .S1(n9014[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_3.INIT0 = 16'h5a9a;
    defparam add_576_3.INIT1 = 16'h5655;
    defparam add_576_3.INJECT1_0 = "NO";
    defparam add_576_3.INJECT1_1 = "NO";
    CCU2D add_576_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8997[9]), .B1(n28_adj_384), .C1(n4315), .D1(\lumdivision[9] ), 
          .COUT(n9015));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_1.INIT0 = 16'hF000;
    defparam add_576_1.INIT1 = 16'h0d04;
    defparam add_576_1.INJECT1_0 = "NO";
    defparam add_576_1.INJECT1_1 = "NO";
    CCU2D add_575_27 (.A0(n8981[24]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[25]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9010), .S0(n8997[25]), .S1(n8997[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_27.INIT0 = 16'h5655;
    defparam add_575_27.INIT1 = 16'h5655;
    defparam add_575_27.INJECT1_0 = "NO";
    defparam add_575_27.INJECT1_1 = "NO";
    CCU2D add_575_25 (.A0(n8981[22]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[23]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9009), .COUT(n9010), .S0(n8997[23]), .S1(n8997[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_25.INIT0 = 16'h5655;
    defparam add_575_25.INIT1 = 16'h5655;
    defparam add_575_25.INJECT1_0 = "NO";
    defparam add_575_25.INJECT1_1 = "NO";
    CCU2D add_575_23 (.A0(n8981[20]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[21]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9008), .COUT(n9009), .S0(n8997[21]), .S1(n8997[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_23.INIT0 = 16'h5655;
    defparam add_575_23.INIT1 = 16'h5655;
    defparam add_575_23.INJECT1_0 = "NO";
    defparam add_575_23.INJECT1_1 = "NO";
    CCU2D add_575_21 (.A0(n8981[18]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[19]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9007), .COUT(n9008), .S0(n8997[19]), .S1(n8997[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_21.INIT0 = 16'h5655;
    defparam add_575_21.INIT1 = 16'h5655;
    defparam add_575_21.INJECT1_0 = "NO";
    defparam add_575_21.INJECT1_1 = "NO";
    CCU2D add_575_19 (.A0(n8981[16]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[17]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9006), .COUT(n9007), .S0(n8997[17]), .S1(n8997[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_19.INIT0 = 16'h5655;
    defparam add_575_19.INIT1 = 16'h5655;
    defparam add_575_19.INJECT1_0 = "NO";
    defparam add_575_19.INJECT1_1 = "NO";
    CCU2D add_575_17 (.A0(n8981[14]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[15]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9005), .COUT(n9006), .S0(n8997[15]), .S1(n8997[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_17.INIT0 = 16'h5655;
    defparam add_575_17.INIT1 = 16'h5655;
    defparam add_575_17.INJECT1_0 = "NO";
    defparam add_575_17.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_3 (.A0(sawtooth_cnt_c[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(sawtooth_cnt_c[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n9112), .COUT(n9113), .S0(n69[1]), 
          .S1(n69[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_3.INIT0 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_3.INIT1 = 16'hfaaa;
    defparam sawtooth_cnt_395_add_4_3.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_3.INJECT1_1 = "NO";
    CCU2D sawtooth_cnt_395_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt_c[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n9112), .S1(n69[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395_add_4_1.INIT0 = 16'hF000;
    defparam sawtooth_cnt_395_add_4_1.INIT1 = 16'h0555;
    defparam sawtooth_cnt_395_add_4_1.INJECT1_0 = "NO";
    defparam sawtooth_cnt_395_add_4_1.INJECT1_1 = "NO";
    CCU2D add_197_17 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[15]), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8782), .S0(n280[15]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_17.INIT0 = 16'h4b4b;
    defparam add_197_17.INIT1 = 16'h0000;
    defparam add_197_17.INJECT1_0 = "NO";
    defparam add_197_17.INJECT1_1 = "NO";
    LUT4 div_63_i1528_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[25]), 
         .D(n2249), .Z(n2408)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1528_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1529_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[24]), 
         .D(n11785), .Z(n2409)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1529_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i851_3_lut (.A(n1047), .B(n1221[30]), .C(n1258_adj_328), 
         .Z(n1404)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i851_3_lut.init = 16'hacac;
    CCU2D add_575_15 (.A0(n8981[12]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[13]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9004), .COUT(n9005), .S0(n8997[13]), .S1(n8997[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_15.INIT0 = 16'h5655;
    defparam add_575_15.INIT1 = 16'h5655;
    defparam add_575_15.INJECT1_0 = "NO";
    defparam add_575_15.INJECT1_1 = "NO";
    CCU2D add_575_13 (.A0(n8981[10]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[11]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9003), .COUT(n9004), .S0(n8997[11]), .S1(n8997[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_13.INIT0 = 16'h5655;
    defparam add_575_13.INIT1 = 16'h5655;
    defparam add_575_13.INJECT1_0 = "NO";
    defparam add_575_13.INJECT1_1 = "NO";
    CCU2D add_575_11 (.A0(n8981[8]), .B0(n30_adj_385), .C0(n29), .D0(n32_adj_386), 
          .A1(n8981[9]), .B1(n32_adj_386), .C1(n2299), .D1(n4316), .CIN(n9002), 
          .COUT(n9003), .S0(n8997[9]), .S1(n8997[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_11.INIT0 = 16'h5655;
    defparam add_575_11.INIT1 = 16'h5a9a;
    defparam add_575_11.INJECT1_0 = "NO";
    defparam add_575_11.INJECT1_1 = "NO";
    CCU2D add_575_9 (.A0(n8981[6]), .B0(n32_adj_386), .C0(n1463), .D0(n4316), 
          .A1(n8981[7]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n9001), .COUT(n9002), .S0(n8997[7]), .S1(n8997[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_9.INIT0 = 16'h5a9a;
    defparam add_575_9.INIT1 = 16'h5655;
    defparam add_575_9.INJECT1_0 = "NO";
    defparam add_575_9.INJECT1_1 = "NO";
    CCU2D add_575_7 (.A0(n8981[4]), .B0(n32_adj_386), .C0(n1638), .D0(n4316), 
          .A1(n8981[5]), .B1(n32_adj_386), .C1(n1463), .D1(n4316), .CIN(n9000), 
          .COUT(n9001), .S0(n8997[5]), .S1(n8997[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_7.INIT0 = 16'h5a9a;
    defparam add_575_7.INIT1 = 16'h5a9a;
    defparam add_575_7.INJECT1_0 = "NO";
    defparam add_575_7.INJECT1_1 = "NO";
    CCU2D add_575_5 (.A0(n8981[2]), .B0(n32_adj_386), .C0(n926), .D0(n4316), 
          .A1(n8981[3]), .B1(n32_adj_386), .C1(n1108), .D1(n4316), .CIN(n8999), 
          .COUT(n9000), .S0(n8997[3]), .S1(n8997[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_5.INIT0 = 16'h5a9a;
    defparam add_575_5.INIT1 = 16'h5a9a;
    defparam add_575_5.INJECT1_0 = "NO";
    defparam add_575_5.INJECT1_1 = "NO";
    CCU2D add_575_3 (.A0(\frqnum[6] ), .B0(n32_adj_386), .C0(n56), .D0(n4316), 
          .A1(n8981[1]), .B1(n30_adj_385), .C1(n29), .D1(n32_adj_386), 
          .CIN(n8998), .COUT(n8999), .S0(n8997[1]), .S1(n8997[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_3.INIT0 = 16'h5a9a;
    defparam add_575_3.INIT1 = 16'h5655;
    defparam add_575_3.INJECT1_0 = "NO";
    defparam add_575_3.INJECT1_1 = "NO";
    CCU2D add_575_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8981[9]), .B1(n30_adj_389), .C1(n4316), .D1(\lumdivision[9] ), 
          .COUT(n8998));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_575_1.INIT0 = 16'hF000;
    defparam add_575_1.INIT1 = 16'h0d04;
    defparam add_575_1.INJECT1_0 = "NO";
    defparam add_575_1.INJECT1_1 = "NO";
    CCU2D add_574_27 (.A0(n8965[24]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8994), .S0(n8981[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_27.INIT0 = 16'h5655;
    defparam add_574_27.INIT1 = 16'h0000;
    defparam add_574_27.INJECT1_0 = "NO";
    defparam add_574_27.INJECT1_1 = "NO";
    CCU2D add_574_25 (.A0(n8965[22]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[23]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8993), .COUT(n8994), .S0(n8981[23]), 
          .S1(n8981[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_25.INIT0 = 16'h5655;
    defparam add_574_25.INIT1 = 16'h5655;
    defparam add_574_25.INJECT1_0 = "NO";
    defparam add_574_25.INJECT1_1 = "NO";
    CCU2D add_574_23 (.A0(n8965[20]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[21]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8992), .COUT(n8993), .S0(n8981[21]), 
          .S1(n8981[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_23.INIT0 = 16'h5655;
    defparam add_574_23.INIT1 = 16'h5655;
    defparam add_574_23.INJECT1_0 = "NO";
    defparam add_574_23.INJECT1_1 = "NO";
    CCU2D add_574_21 (.A0(n8965[18]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[19]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8991), .COUT(n8992), .S0(n8981[19]), 
          .S1(n8981[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_21.INIT0 = 16'h5655;
    defparam add_574_21.INIT1 = 16'h5655;
    defparam add_574_21.INJECT1_0 = "NO";
    defparam add_574_21.INJECT1_1 = "NO";
    CCU2D add_574_19 (.A0(n8965[16]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[17]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8990), .COUT(n8991), .S0(n8981[17]), 
          .S1(n8981[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_19.INIT0 = 16'h5655;
    defparam add_574_19.INIT1 = 16'h5655;
    defparam add_574_19.INJECT1_0 = "NO";
    defparam add_574_19.INJECT1_1 = "NO";
    CCU2D add_574_17 (.A0(n8965[14]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[15]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8989), .COUT(n8990), .S0(n8981[15]), 
          .S1(n8981[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_17.INIT0 = 16'h5655;
    defparam add_574_17.INIT1 = 16'h5655;
    defparam add_574_17.INJECT1_0 = "NO";
    defparam add_574_17.INJECT1_1 = "NO";
    CCU2D add_574_15 (.A0(n8965[12]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[13]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8988), .COUT(n8989), .S0(n8981[13]), 
          .S1(n8981[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_15.INIT0 = 16'h5655;
    defparam add_574_15.INIT1 = 16'h5655;
    defparam add_574_15.INJECT1_0 = "NO";
    defparam add_574_15.INJECT1_1 = "NO";
    CCU2D add_574_13 (.A0(n8965[10]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[11]), .B1(n28_adj_390), .C1(n27_adj_391), 
          .D1(n34_adj_392), .CIN(n8987), .COUT(n8988), .S0(n8981[11]), 
          .S1(n8981[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_13.INIT0 = 16'h5655;
    defparam add_574_13.INIT1 = 16'h5655;
    defparam add_574_13.INJECT1_0 = "NO";
    defparam add_574_13.INJECT1_1 = "NO";
    CCU2D add_574_11 (.A0(n8965[8]), .B0(n28_adj_390), .C0(n27_adj_391), 
          .D0(n34_adj_392), .A1(n8965[9]), .B1(n34_adj_392), .C1(n2299), 
          .D1(n4317), .CIN(n8986), .COUT(n8987), .S0(n8981[9]), .S1(n8981[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_11.INIT0 = 16'h5655;
    defparam add_574_11.INIT1 = 16'h5a9a;
    defparam add_574_11.INJECT1_0 = "NO";
    defparam add_574_11.INJECT1_1 = "NO";
    CCU2D add_574_9 (.A0(n8965[6]), .B0(n34_adj_392), .C0(n1463), .D0(n4317), 
          .A1(n8965[7]), .B1(n28_adj_390), .C1(n27_adj_391), .D1(n34_adj_392), 
          .CIN(n8985), .COUT(n8986), .S0(n8981[7]), .S1(n8981[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_9.INIT0 = 16'h5a9a;
    defparam add_574_9.INIT1 = 16'h5655;
    defparam add_574_9.INJECT1_0 = "NO";
    defparam add_574_9.INJECT1_1 = "NO";
    CCU2D add_574_7 (.A0(n8965[4]), .B0(n34_adj_392), .C0(n1638), .D0(n4317), 
          .A1(n8965[5]), .B1(n34_adj_392), .C1(n1463), .D1(n4317), .CIN(n8984), 
          .COUT(n8985), .S0(n8981[5]), .S1(n8981[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_7.INIT0 = 16'h5a9a;
    defparam add_574_7.INIT1 = 16'h5a9a;
    defparam add_574_7.INJECT1_0 = "NO";
    defparam add_574_7.INJECT1_1 = "NO";
    CCU2D add_574_5 (.A0(n8965[2]), .B0(n34_adj_392), .C0(n926), .D0(n4317), 
          .A1(n8965[3]), .B1(n34_adj_392), .C1(n1108), .D1(n4317), .CIN(n8983), 
          .COUT(n8984), .S0(n8981[3]), .S1(n8981[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_5.INIT0 = 16'h5a9a;
    defparam add_574_5.INIT1 = 16'h5a9a;
    defparam add_574_5.INJECT1_0 = "NO";
    defparam add_574_5.INJECT1_1 = "NO";
    LUT4 div_63_i1531_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[22]), 
         .D(n2252), .Z(n2411)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1531_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1532_3_lut_4_lut (.A(n60_adj_377), .B(n11782), .C(n1425[21]), 
         .D(n2253), .Z(n2412)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1532_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_197_15 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[13]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[14]), 
          .D1(GND_net), .CIN(n8781), .COUT(n8782), .S0(n280[13]), .S1(n280[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_15.INIT0 = 16'h4b4b;
    defparam add_197_15.INIT1 = 16'h4b4b;
    defparam add_197_15.INJECT1_0 = "NO";
    defparam add_197_15.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_3137_i22_4_lut (.A(n4773), .B(\lumdivision[9] ), 
         .C(n4772), .D(n4_adj_365), .Z(n22)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3137_i22_4_lut.init = 16'h4d0c;
    LUT4 i4178_2_lut_rep_344_3_lut (.A(n2244), .B(n11787), .C(n60_adj_377), 
         .Z(n11781)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4178_2_lut_rep_344_3_lut.init = 16'h1010;
    LUT4 div_63_i850_3_lut (.A(n5963), .B(n1221[31]), .C(n1258_adj_328), 
         .Z(n1403)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i850_3_lut.init = 16'h5c5c;
    CCU2D add_574_3 (.A0(\frqnum[9] ), .B0(n34_adj_392), .C0(n56), .D0(n4317), 
          .A1(n8965[1]), .B1(n28_adj_390), .C1(n27_adj_391), .D1(n34_adj_392), 
          .CIN(n8982), .COUT(n8983), .S0(n8981[1]), .S1(n8981[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_3.INIT0 = 16'h5a9a;
    defparam add_574_3.INIT1 = 16'h5655;
    defparam add_574_3.INJECT1_0 = "NO";
    defparam add_574_3.INJECT1_1 = "NO";
    CCU2D add_574_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8965[9]), .B1(n32_adj_393), .C1(n4317), .D1(\lumdivision[9] ), 
          .COUT(n8982));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_574_1.INIT0 = 16'hF000;
    defparam add_574_1.INIT1 = 16'h0d04;
    defparam add_574_1.INJECT1_0 = "NO";
    defparam add_574_1.INJECT1_1 = "NO";
    CCU2D add_573_25 (.A0(n8950[22]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[23]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8977), .S0(n8965[23]), .S1(n8965[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_25.INIT0 = 16'h5655;
    defparam add_573_25.INIT1 = 16'h5655;
    defparam add_573_25.INJECT1_0 = "NO";
    defparam add_573_25.INJECT1_1 = "NO";
    CCU2D add_573_23 (.A0(n8950[20]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[21]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8976), .COUT(n8977), .S0(n8965[21]), 
          .S1(n8965[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_23.INIT0 = 16'h5655;
    defparam add_573_23.INIT1 = 16'h5655;
    defparam add_573_23.INJECT1_0 = "NO";
    defparam add_573_23.INJECT1_1 = "NO";
    CCU2D add_573_21 (.A0(n8950[18]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[19]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8975), .COUT(n8976), .S0(n8965[19]), 
          .S1(n8965[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_21.INIT0 = 16'h5655;
    defparam add_573_21.INIT1 = 16'h5655;
    defparam add_573_21.INJECT1_0 = "NO";
    defparam add_573_21.INJECT1_1 = "NO";
    CCU2D add_573_19 (.A0(n8950[16]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[17]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8974), .COUT(n8975), .S0(n8965[17]), 
          .S1(n8965[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_19.INIT0 = 16'h5655;
    defparam add_573_19.INIT1 = 16'h5655;
    defparam add_573_19.INJECT1_0 = "NO";
    defparam add_573_19.INJECT1_1 = "NO";
    CCU2D add_573_17 (.A0(n8950[14]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[15]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8973), .COUT(n8974), .S0(n8965[15]), 
          .S1(n8965[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_17.INIT0 = 16'h5655;
    defparam add_573_17.INIT1 = 16'h5655;
    defparam add_573_17.INJECT1_0 = "NO";
    defparam add_573_17.INJECT1_1 = "NO";
    CCU2D add_573_15 (.A0(n8950[12]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[13]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8972), .COUT(n8973), .S0(n8965[13]), 
          .S1(n8965[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_15.INIT0 = 16'h5655;
    defparam add_573_15.INIT1 = 16'h5655;
    defparam add_573_15.INJECT1_0 = "NO";
    defparam add_573_15.INJECT1_1 = "NO";
    CCU2D add_573_13 (.A0(n8950[10]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[11]), .B1(n26_adj_394), .C1(n25_adj_395), 
          .D1(n36_adj_396), .CIN(n8971), .COUT(n8972), .S0(n8965[11]), 
          .S1(n8965[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_13.INIT0 = 16'h5655;
    defparam add_573_13.INIT1 = 16'h5655;
    defparam add_573_13.INJECT1_0 = "NO";
    defparam add_573_13.INJECT1_1 = "NO";
    CCU2D add_573_11 (.A0(n8950[8]), .B0(n26_adj_394), .C0(n25_adj_395), 
          .D0(n36_adj_396), .A1(n8950[9]), .B1(n36_adj_396), .C1(n2299), 
          .D1(n4318), .CIN(n8970), .COUT(n8971), .S0(n8965[9]), .S1(n8965[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_11.INIT0 = 16'h5655;
    defparam add_573_11.INIT1 = 16'h5a9a;
    defparam add_573_11.INJECT1_0 = "NO";
    defparam add_573_11.INJECT1_1 = "NO";
    CCU2D add_573_9 (.A0(n8950[6]), .B0(n36_adj_396), .C0(n1463), .D0(n4318), 
          .A1(n8950[7]), .B1(n26_adj_394), .C1(n25_adj_395), .D1(n36_adj_396), 
          .CIN(n8969), .COUT(n8970), .S0(n8965[7]), .S1(n8965[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_9.INIT0 = 16'h5a9a;
    defparam add_573_9.INIT1 = 16'h5655;
    defparam add_573_9.INJECT1_0 = "NO";
    defparam add_573_9.INJECT1_1 = "NO";
    CCU2D add_573_7 (.A0(n8950[4]), .B0(n36_adj_396), .C0(n1638), .D0(n4318), 
          .A1(n8950[5]), .B1(n36_adj_396), .C1(n1463), .D1(n4318), .CIN(n8968), 
          .COUT(n8969), .S0(n8965[5]), .S1(n8965[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_7.INIT0 = 16'h5a9a;
    defparam add_573_7.INIT1 = 16'h5a9a;
    defparam add_573_7.INJECT1_0 = "NO";
    defparam add_573_7.INJECT1_1 = "NO";
    CCU2D add_573_5 (.A0(n8950[2]), .B0(n36_adj_396), .C0(n926), .D0(n4318), 
          .A1(n8950[3]), .B1(n36_adj_396), .C1(n1108), .D1(n4318), .CIN(n8967), 
          .COUT(n8968), .S0(n8965[3]), .S1(n8965[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_5.INIT0 = 16'h5a9a;
    defparam add_573_5.INIT1 = 16'h5a9a;
    defparam add_573_5.INJECT1_0 = "NO";
    defparam add_573_5.INJECT1_1 = "NO";
    CCU2D add_573_3 (.A0(\frqnum[9] ), .B0(n36_adj_396), .C0(n56), .D0(n4318), 
          .A1(n8950[1]), .B1(n26_adj_394), .C1(n25_adj_395), .D1(n36_adj_396), 
          .CIN(n8966), .COUT(n8967), .S0(n8965[1]), .S1(n8965[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_3.INIT0 = 16'h5a9a;
    defparam add_573_3.INIT1 = 16'h5655;
    defparam add_573_3.INJECT1_0 = "NO";
    defparam add_573_3.INJECT1_1 = "NO";
    CCU2D add_573_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8950[9]), .B1(n34_adj_397), .C1(n4318), .D1(\lumdivision[9] ), 
          .COUT(n8966));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_573_1.INIT0 = 16'hF000;
    defparam add_573_1.INIT1 = 16'h0d04;
    defparam add_573_1.INJECT1_0 = "NO";
    defparam add_573_1.INJECT1_1 = "NO";
    CCU2D add_572_25 (.A0(n8935[22]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n8962), .S0(n8950[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_25.INIT0 = 16'h5655;
    defparam add_572_25.INIT1 = 16'h0000;
    defparam add_572_25.INJECT1_0 = "NO";
    defparam add_572_25.INJECT1_1 = "NO";
    CCU2D add_572_23 (.A0(n8935[20]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[21]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8961), .COUT(n8962), .S0(n8950[21]), 
          .S1(n8950[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_23.INIT0 = 16'h5655;
    defparam add_572_23.INIT1 = 16'h5655;
    defparam add_572_23.INJECT1_0 = "NO";
    defparam add_572_23.INJECT1_1 = "NO";
    CCU2D add_572_21 (.A0(n8935[18]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[19]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8960), .COUT(n8961), .S0(n8950[19]), 
          .S1(n8950[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_21.INIT0 = 16'h5655;
    defparam add_572_21.INIT1 = 16'h5655;
    defparam add_572_21.INJECT1_0 = "NO";
    defparam add_572_21.INJECT1_1 = "NO";
    CCU2D add_572_19 (.A0(n8935[16]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[17]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8959), .COUT(n8960), .S0(n8950[17]), 
          .S1(n8950[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_19.INIT0 = 16'h5655;
    defparam add_572_19.INIT1 = 16'h5655;
    defparam add_572_19.INJECT1_0 = "NO";
    defparam add_572_19.INJECT1_1 = "NO";
    PFUMX sawtooth_cnt_15__I_0_i30 (.BLUT(n12_adj_401), .ALUT(n28_adj_402), 
          .C0(n11011), .Z(n30_adj_338)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;
    CCU2D add_197_13 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[11]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[12]), 
          .D1(GND_net), .CIN(n8780), .COUT(n8781), .S0(n280[11]), .S1(n280[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_13.INIT0 = 16'h4b4b;
    defparam add_197_13.INIT1 = 16'h4b4b;
    defparam add_197_13.INJECT1_0 = "NO";
    defparam add_197_13.INJECT1_1 = "NO";
    LUT4 div_63_i2125_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[28]), 
         .D(n3155), .Z(n3296)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2125_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2129_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[24]), 
         .D(n3159), .Z(n3300)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2129_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i20_4_lut_adj_15 (.A(n27), .B(n40_adj_403), .C(n36_adj_404), 
         .D(n28_adj_378), .Z(n4311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i20_4_lut_adj_15.init = 16'hfffe;
    LUT4 i19_4_lut (.A(n4755), .B(n38_adj_405), .C(n32_adj_406), .D(n4751), 
         .Z(n40_adj_403)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 div_63_LessThan_2993_i16_3_lut_4_lut (.A(n9031[5]), .B(n9031[6]), 
         .C(\lumdivision[6] ), .D(n14_adj_407), .Z(n16_adj_408)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2993_i16_3_lut_4_lut.init = 16'hf170;
    LUT4 i15_4_lut (.A(n4771), .B(n4758), .C(n4767), .D(n4757), .Z(n36_adj_404)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 div_63_i1523_3_lut_4_lut_4_lut (.A(n2244), .B(n11787), .C(n1425[30]), 
         .D(n60_adj_377), .Z(n2403)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1523_3_lut_4_lut_4_lut.init = 16'he0f0;
    CCU2D add_572_17 (.A0(n8935[14]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[15]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8958), .COUT(n8959), .S0(n8950[15]), 
          .S1(n8950[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_17.INIT0 = 16'h5655;
    defparam add_572_17.INIT1 = 16'h5655;
    defparam add_572_17.INJECT1_0 = "NO";
    defparam add_572_17.INJECT1_1 = "NO";
    CCU2D add_572_15 (.A0(n8935[12]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[13]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8957), .COUT(n8958), .S0(n8950[13]), 
          .S1(n8950[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_15.INIT0 = 16'h5655;
    defparam add_572_15.INIT1 = 16'h5655;
    defparam add_572_15.INJECT1_0 = "NO";
    defparam add_572_15.INJECT1_1 = "NO";
    CCU2D add_572_13 (.A0(n8935[10]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[11]), .B1(n24_adj_398), .C1(n23_adj_399), 
          .D1(n38_adj_400), .CIN(n8956), .COUT(n8957), .S0(n8950[11]), 
          .S1(n8950[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_13.INIT0 = 16'h5655;
    defparam add_572_13.INIT1 = 16'h5655;
    defparam add_572_13.INJECT1_0 = "NO";
    defparam add_572_13.INJECT1_1 = "NO";
    CCU2D add_572_11 (.A0(n8935[8]), .B0(n24_adj_398), .C0(n23_adj_399), 
          .D0(n38_adj_400), .A1(n8935[9]), .B1(n38_adj_400), .C1(n2299), 
          .D1(n4320), .CIN(n8955), .COUT(n8956), .S0(n8950[9]), .S1(n8950[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_11.INIT0 = 16'h5655;
    defparam add_572_11.INIT1 = 16'h5a9a;
    defparam add_572_11.INJECT1_0 = "NO";
    defparam add_572_11.INJECT1_1 = "NO";
    CCU2D add_572_9 (.A0(n8935[6]), .B0(n38_adj_400), .C0(n1463), .D0(n4320), 
          .A1(n8935[7]), .B1(n24_adj_398), .C1(n23_adj_399), .D1(n38_adj_400), 
          .CIN(n8954), .COUT(n8955), .S0(n8950[7]), .S1(n8950[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_9.INIT0 = 16'h5a9a;
    defparam add_572_9.INIT1 = 16'h5655;
    defparam add_572_9.INJECT1_0 = "NO";
    defparam add_572_9.INJECT1_1 = "NO";
    CCU2D add_572_7 (.A0(n8935[4]), .B0(n38_adj_400), .C0(n1638), .D0(n4320), 
          .A1(n8935[5]), .B1(n38_adj_400), .C1(n1463), .D1(n4320), .CIN(n8953), 
          .COUT(n8954), .S0(n8950[5]), .S1(n8950[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_7.INIT0 = 16'h5a9a;
    defparam add_572_7.INIT1 = 16'h5a9a;
    defparam add_572_7.INJECT1_0 = "NO";
    defparam add_572_7.INJECT1_1 = "NO";
    CCU2D add_572_5 (.A0(n8935[2]), .B0(n38_adj_400), .C0(n926), .D0(n4320), 
          .A1(n8935[3]), .B1(n38_adj_400), .C1(n1108), .D1(n4320), .CIN(n8952), 
          .COUT(n8953), .S0(n8950[3]), .S1(n8950[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_5.INIT0 = 16'h5a9a;
    defparam add_572_5.INIT1 = 16'h5a9a;
    defparam add_572_5.INJECT1_0 = "NO";
    defparam add_572_5.INJECT1_1 = "NO";
    CCU2D add_572_3 (.A0(\frqnum[9] ), .B0(n38_adj_400), .C0(n56), .D0(n4320), 
          .A1(n8935[1]), .B1(n24_adj_398), .C1(n23_adj_399), .D1(n38_adj_400), 
          .CIN(n8951), .COUT(n8952), .S0(n8950[1]), .S1(n8950[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_3.INIT0 = 16'h5a9a;
    defparam add_572_3.INIT1 = 16'h5655;
    defparam add_572_3.INJECT1_0 = "NO";
    defparam add_572_3.INJECT1_1 = "NO";
    CCU2D add_572_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8935[9]), .B1(n36_adj_409), .C1(n4320), .D1(\lumdivision[9] ), 
          .COUT(n8951));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_572_1.INIT0 = 16'hF000;
    defparam add_572_1.INIT1 = 16'h0d04;
    defparam add_572_1.INJECT1_0 = "NO";
    defparam add_572_1.INJECT1_1 = "NO";
    CCU2D add_571_23 (.A0(n8921[20]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[21]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8946), .S0(n8935[21]), .S1(n8935[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_23.INIT0 = 16'h5655;
    defparam add_571_23.INIT1 = 16'h5655;
    defparam add_571_23.INJECT1_0 = "NO";
    defparam add_571_23.INJECT1_1 = "NO";
    CCU2D add_571_21 (.A0(n8921[18]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[19]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8945), .COUT(n8946), .S0(n8935[19]), .S1(n8935[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_21.INIT0 = 16'h5655;
    defparam add_571_21.INIT1 = 16'h5655;
    defparam add_571_21.INJECT1_0 = "NO";
    defparam add_571_21.INJECT1_1 = "NO";
    CCU2D add_571_19 (.A0(n8921[16]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[17]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8944), .COUT(n8945), .S0(n8935[17]), .S1(n8935[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_19.INIT0 = 16'h5655;
    defparam add_571_19.INIT1 = 16'h5655;
    defparam add_571_19.INJECT1_0 = "NO";
    defparam add_571_19.INJECT1_1 = "NO";
    CCU2D add_571_17 (.A0(n8921[14]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[15]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8943), .COUT(n8944), .S0(n8935[15]), .S1(n8935[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_17.INIT0 = 16'h5655;
    defparam add_571_17.INIT1 = 16'h5655;
    defparam add_571_17.INJECT1_0 = "NO";
    defparam add_571_17.INJECT1_1 = "NO";
    CCU2D add_571_15 (.A0(n8921[12]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[13]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8942), .COUT(n8943), .S0(n8935[13]), .S1(n8935[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_15.INIT0 = 16'h5655;
    defparam add_571_15.INIT1 = 16'h5655;
    defparam add_571_15.INJECT1_0 = "NO";
    defparam add_571_15.INJECT1_1 = "NO";
    CCU2D add_571_13 (.A0(n8921[10]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[11]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8941), .COUT(n8942), .S0(n8935[11]), .S1(n8935[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_13.INIT0 = 16'h5655;
    defparam add_571_13.INIT1 = 16'h5655;
    defparam add_571_13.INJECT1_0 = "NO";
    defparam add_571_13.INJECT1_1 = "NO";
    CCU2D add_571_11 (.A0(n8921[8]), .B0(n22_adj_410), .C0(n21), .D0(n40_adj_411), 
          .A1(n8921[9]), .B1(n40_adj_411), .C1(n2299), .D1(n4290), .CIN(n8940), 
          .COUT(n8941), .S0(n8935[9]), .S1(n8935[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_11.INIT0 = 16'h5655;
    defparam add_571_11.INIT1 = 16'h5a9a;
    defparam add_571_11.INJECT1_0 = "NO";
    defparam add_571_11.INJECT1_1 = "NO";
    CCU2D add_571_9 (.A0(n8921[6]), .B0(n40_adj_411), .C0(n1463), .D0(n4290), 
          .A1(n8921[7]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8939), .COUT(n8940), .S0(n8935[7]), .S1(n8935[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_9.INIT0 = 16'h5a9a;
    defparam add_571_9.INIT1 = 16'h5655;
    defparam add_571_9.INJECT1_0 = "NO";
    defparam add_571_9.INJECT1_1 = "NO";
    CCU2D add_571_7 (.A0(n8921[4]), .B0(n40_adj_411), .C0(n1638), .D0(n4290), 
          .A1(n8921[5]), .B1(n40_adj_411), .C1(n1463), .D1(n4290), .CIN(n8938), 
          .COUT(n8939), .S0(n8935[5]), .S1(n8935[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_7.INIT0 = 16'h5a9a;
    defparam add_571_7.INIT1 = 16'h5a9a;
    defparam add_571_7.INJECT1_0 = "NO";
    defparam add_571_7.INJECT1_1 = "NO";
    CCU2D add_571_5 (.A0(n8921[2]), .B0(n40_adj_411), .C0(n926), .D0(n4290), 
          .A1(n8921[3]), .B1(n40_adj_411), .C1(n1108), .D1(n4290), .CIN(n8937), 
          .COUT(n8938), .S0(n8935[3]), .S1(n8935[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_5.INIT0 = 16'h5a9a;
    defparam add_571_5.INIT1 = 16'h5a9a;
    defparam add_571_5.INJECT1_0 = "NO";
    defparam add_571_5.INJECT1_1 = "NO";
    CCU2D add_571_3 (.A0(\frqnum[10] ), .B0(n40_adj_411), .C0(n56), .D0(n4290), 
          .A1(n8921[1]), .B1(n22_adj_410), .C1(n21), .D1(n40_adj_411), 
          .CIN(n8936), .COUT(n8937), .S0(n8935[1]), .S1(n8935[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_3.INIT0 = 16'h5a9a;
    defparam add_571_3.INIT1 = 16'h5655;
    defparam add_571_3.INJECT1_0 = "NO";
    defparam add_571_3.INJECT1_1 = "NO";
    CCU2D add_571_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8921[9]), .B1(n38_adj_412), .C1(n4290), .D1(\lumdivision[9] ), 
          .COUT(n8936));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_571_1.INIT0 = 16'hF000;
    defparam add_571_1.INIT1 = 16'h0d04;
    defparam add_571_1.INJECT1_0 = "NO";
    defparam add_571_1.INJECT1_1 = "NO";
    CCU2D add_197_11 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[9]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[10]), 
          .D1(GND_net), .CIN(n8779), .COUT(n8780), .S0(n280[9]), .S1(n280[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_11.INIT0 = 16'h4b4b;
    defparam add_197_11.INIT1 = 16'h4b4b;
    defparam add_197_11.INJECT1_0 = "NO";
    defparam add_197_11.INJECT1_1 = "NO";
    LUT4 div_63_i1522_3_lut_rep_343_4_lut_4_lut (.A(n2244), .B(n11787), 
         .C(n1425[31]), .D(n60_adj_377), .Z(n11780)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1522_3_lut_rep_343_4_lut_4_lut.init = 16'he0f0;
    LUT4 i4212_2_lut_3_lut (.A(n52_adj_413), .B(n11754), .C(n1561[16]), 
         .Z(n3023)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4212_2_lut_3_lut.init = 16'hd0d0;
    LUT4 i4208_2_lut_3_lut_4_lut (.A(n2244), .B(n11787), .C(n1425[20]), 
         .D(n60_adj_377), .Z(n2413)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4208_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 i17_4_lut (.A(n4764), .B(n34_adj_414), .C(n24_adj_415), .D(n4762), 
         .Z(n38_adj_405)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i11_3_lut (.A(n4759), .B(n4760), .C(n4768), .Z(n32_adj_406)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i11_3_lut.init = 16'hfefe;
    LUT4 i13_4_lut (.A(n4770), .B(n4766), .C(n4769), .D(n4765), .Z(n34_adj_414)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i13_4_lut.init = 16'hfffe;
    LUT4 div_63_LessThan_1446_i48_3_lut_3_lut (.A(n11785), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n48_adj_416)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1446_i48_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2150_3_lut_rep_347 (.A(n2249), .B(n2248), .C(\lumdivision[6] ), 
         .Z(n11784)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2150_3_lut_rep_347.init = 16'h7e7e;
    CCU2D add_570_23 (.A0(n8907[20]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8932), 
          .S0(n8921[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_23.INIT0 = 16'h5655;
    defparam add_570_23.INIT1 = 16'h0000;
    defparam add_570_23.INJECT1_0 = "NO";
    defparam add_570_23.INJECT1_1 = "NO";
    CCU2D add_570_21 (.A0(n8907[18]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[19]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8931), .COUT(n8932), .S0(n8921[19]), .S1(n8921[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_21.INIT0 = 16'h5655;
    defparam add_570_21.INIT1 = 16'h5655;
    defparam add_570_21.INJECT1_0 = "NO";
    defparam add_570_21.INJECT1_1 = "NO";
    CCU2D add_570_19 (.A0(n8907[16]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[17]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8930), .COUT(n8931), .S0(n8921[17]), .S1(n8921[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_19.INIT0 = 16'h5655;
    defparam add_570_19.INIT1 = 16'h5655;
    defparam add_570_19.INJECT1_0 = "NO";
    defparam add_570_19.INJECT1_1 = "NO";
    CCU2D add_570_17 (.A0(n8907[14]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[15]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8929), .COUT(n8930), .S0(n8921[15]), .S1(n8921[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_17.INIT0 = 16'h5655;
    defparam add_570_17.INIT1 = 16'h5655;
    defparam add_570_17.INJECT1_0 = "NO";
    defparam add_570_17.INJECT1_1 = "NO";
    CCU2D add_570_15 (.A0(n8907[12]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[13]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8928), .COUT(n8929), .S0(n8921[13]), .S1(n8921[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_15.INIT0 = 16'h5655;
    defparam add_570_15.INIT1 = 16'h5655;
    defparam add_570_15.INJECT1_0 = "NO";
    defparam add_570_15.INJECT1_1 = "NO";
    CCU2D add_570_13 (.A0(n8907[10]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[11]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8927), .COUT(n8928), .S0(n8921[11]), .S1(n8921[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_13.INIT0 = 16'h5655;
    defparam add_570_13.INIT1 = 16'h5655;
    defparam add_570_13.INJECT1_0 = "NO";
    defparam add_570_13.INJECT1_1 = "NO";
    CCU2D add_570_11 (.A0(n8907[8]), .B0(n20_adj_417), .C0(n19), .D0(n42_adj_418), 
          .A1(n8907[9]), .B1(n42_adj_418), .C1(n2299), .D1(n4300), .CIN(n8926), 
          .COUT(n8927), .S0(n8921[9]), .S1(n8921[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_11.INIT0 = 16'h5655;
    defparam add_570_11.INIT1 = 16'h5a9a;
    defparam add_570_11.INJECT1_0 = "NO";
    defparam add_570_11.INJECT1_1 = "NO";
    CCU2D add_570_9 (.A0(n8907[6]), .B0(n42_adj_418), .C0(n1463), .D0(n4300), 
          .A1(n8907[7]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8925), .COUT(n8926), .S0(n8921[7]), .S1(n8921[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_9.INIT0 = 16'h5a9a;
    defparam add_570_9.INIT1 = 16'h5655;
    defparam add_570_9.INJECT1_0 = "NO";
    defparam add_570_9.INJECT1_1 = "NO";
    CCU2D add_570_7 (.A0(n8907[4]), .B0(n42_adj_418), .C0(n1638), .D0(n4300), 
          .A1(n8907[5]), .B1(n42_adj_418), .C1(n1463), .D1(n4300), .CIN(n8924), 
          .COUT(n8925), .S0(n8921[5]), .S1(n8921[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_7.INIT0 = 16'h5a9a;
    defparam add_570_7.INIT1 = 16'h5a9a;
    defparam add_570_7.INJECT1_0 = "NO";
    defparam add_570_7.INJECT1_1 = "NO";
    CCU2D add_570_5 (.A0(n8907[2]), .B0(n42_adj_418), .C0(n926), .D0(n4300), 
          .A1(n8907[3]), .B1(n42_adj_418), .C1(n1108), .D1(n4300), .CIN(n8923), 
          .COUT(n8924), .S0(n8921[3]), .S1(n8921[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_5.INIT0 = 16'h5a9a;
    defparam add_570_5.INIT1 = 16'h5a9a;
    defparam add_570_5.INJECT1_0 = "NO";
    defparam add_570_5.INJECT1_1 = "NO";
    CCU2D add_570_3 (.A0(\frqnum[11] ), .B0(n42_adj_418), .C0(n56), .D0(n4300), 
          .A1(n8907[1]), .B1(n20_adj_417), .C1(n19), .D1(n42_adj_418), 
          .CIN(n8922), .COUT(n8923), .S0(n8921[1]), .S1(n8921[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_3.INIT0 = 16'h5a9a;
    defparam add_570_3.INIT1 = 16'h5655;
    defparam add_570_3.INJECT1_0 = "NO";
    defparam add_570_3.INJECT1_1 = "NO";
    CCU2D add_570_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n8907[9]), .B1(n40_adj_419), .C1(n4300), .D1(\lumdivision[9] ), 
          .COUT(n8922));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_570_1.INIT0 = 16'hF000;
    defparam add_570_1.INIT1 = 16'h0d04;
    defparam add_570_1.INJECT1_0 = "NO";
    defparam add_570_1.INJECT1_1 = "NO";
    CCU2D add_569_21 (.A0(n3432), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3431), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8917), .S0(n8907[19]), .S1(n8907[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_21.INIT0 = 16'h5655;
    defparam add_569_21.INIT1 = 16'h5655;
    defparam add_569_21.INJECT1_0 = "NO";
    defparam add_569_21.INJECT1_1 = "NO";
    CCU2D add_569_19 (.A0(n3434), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3433), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8916), .COUT(n8917), .S0(n8907[17]), .S1(n8907[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_19.INIT0 = 16'h5655;
    defparam add_569_19.INIT1 = 16'h5655;
    defparam add_569_19.INJECT1_0 = "NO";
    defparam add_569_19.INJECT1_1 = "NO";
    CCU2D add_569_17 (.A0(n3436), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3435), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8915), .COUT(n8916), .S0(n8907[15]), .S1(n8907[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_17.INIT0 = 16'h5655;
    defparam add_569_17.INIT1 = 16'h5655;
    defparam add_569_17.INJECT1_0 = "NO";
    defparam add_569_17.INJECT1_1 = "NO";
    CCU2D add_569_15 (.A0(n3438), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3437), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8914), .COUT(n8915), .S0(n8907[13]), .S1(n8907[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_15.INIT0 = 16'h5655;
    defparam add_569_15.INIT1 = 16'h5655;
    defparam add_569_15.INJECT1_0 = "NO";
    defparam add_569_15.INJECT1_1 = "NO";
    CCU2D add_569_13 (.A0(n3440), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3439), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8913), .COUT(n8914), .S0(n8907[11]), .S1(n8907[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_13.INIT0 = 16'h5655;
    defparam add_569_13.INIT1 = 16'h5655;
    defparam add_569_13.INJECT1_0 = "NO";
    defparam add_569_13.INJECT1_1 = "NO";
    CCU2D add_569_11 (.A0(n3442), .B0(n11730), .C0(n17_adj_420), .D0(n44_adj_421), 
          .A1(n3441), .B1(n44_adj_421), .C1(n2299), .D1(n4301), .CIN(n8912), 
          .COUT(n8913), .S0(n8907[9]), .S1(n8907[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_11.INIT0 = 16'h5655;
    defparam add_569_11.INIT1 = 16'h5a9a;
    defparam add_569_11.INJECT1_0 = "NO";
    defparam add_569_11.INJECT1_1 = "NO";
    CCU2D add_569_9 (.A0(n3444), .B0(n44_adj_421), .C0(n1463), .D0(n4301), 
          .A1(n3443), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8911), .COUT(n8912), .S0(n8907[7]), .S1(n8907[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_9.INIT0 = 16'h5a9a;
    defparam add_569_9.INIT1 = 16'h5655;
    defparam add_569_9.INJECT1_0 = "NO";
    defparam add_569_9.INJECT1_1 = "NO";
    CCU2D add_569_7 (.A0(n11734), .B0(n44_adj_421), .C0(n1638), .D0(n4301), 
          .A1(n3445), .B1(n44_adj_421), .C1(n1463), .D1(n4301), .CIN(n8910), 
          .COUT(n8911), .S0(n8907[5]), .S1(n8907[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_7.INIT0 = 16'h5a9a;
    defparam add_569_7.INIT1 = 16'h5a9a;
    defparam add_569_7.INJECT1_0 = "NO";
    defparam add_569_7.INJECT1_1 = "NO";
    CCU2D add_569_5 (.A0(n3448), .B0(n44_adj_421), .C0(n926), .D0(n4301), 
          .A1(n3447), .B1(n44_adj_421), .C1(n1108), .D1(n4301), .CIN(n8909), 
          .COUT(n8910), .S0(n8907[3]), .S1(n8907[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_5.INIT0 = 16'h5a9a;
    defparam add_569_5.INIT1 = 16'h5a9a;
    defparam add_569_5.INJECT1_0 = "NO";
    defparam add_569_5.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1446_i50_3_lut_4_lut (.A(n2249), .B(n2248), .C(\lumdivision[6] ), 
         .D(n48_adj_416), .Z(n50_adj_422)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1446_i50_3_lut_4_lut.init = 16'hf170;
    CCU2D add_197_9 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[7]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[8]), 
          .D1(GND_net), .CIN(n8778), .COUT(n8779), .S0(n280[7]), .S1(n280[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_9.INIT0 = 16'h4b4b;
    defparam add_197_9.INIT1 = 16'h4b4b;
    defparam add_197_9.INJECT1_0 = "NO";
    defparam add_197_9.INJECT1_1 = "NO";
    LUT4 div_63_i2124_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[29]), 
         .D(n3154), .Z(n3295)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2124_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1446_i49_2_lut_rep_346_4_lut (.A(n2088_adj_355), 
         .B(n1391[24]), .C(n11788), .D(\lumdivision[4] ), .Z(n11783)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1446_i49_2_lut_rep_346_4_lut.init = 16'h53ac;
    LUT4 i1_2_lut_4_lut_adj_16 (.A(n2085_adj_423), .B(n1391[27]), .C(n11788), 
         .D(n54_adj_424), .Z(n4_adj_425)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_16.init = 16'h5300;
    CCU2D add_580_32 (.A0(n11709), .B0(n24), .C0(n2037[30]), .D0(n9049[28]), 
          .A1(n11709), .B1(n24), .C1(n2037[31]), .D1(n9049[29]), .CIN(n9094), 
          .S0(n2071[30]), .S1(n2071[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_32.INIT0 = 16'h0b4f;
    defparam add_580_32.INIT1 = 16'h0b4f;
    defparam add_580_32.INJECT1_0 = "NO";
    defparam add_580_32.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_3066_i24_4_lut (.A(n9049[8]), .B(n12202), .C(n9049[9]), 
         .D(n4_adj_426), .Z(n24)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3066_i24_4_lut.init = 16'h4d0c;
    LUT4 i1_2_lut_adj_17 (.A(n18_adj_427), .B(n9049[7]), .Z(n4_adj_426)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_17.init = 16'h2222;
    LUT4 div_63_LessThan_2153_i35_2_lut_rep_299_4_lut (.A(n3166), .B(n1629[17]), 
         .C(n11740), .D(\lumdivision[4] ), .Z(n11736)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2153_i35_2_lut_rep_299_4_lut.init = 16'h53ac;
    CCU2D add_569_3 (.A0(\frqnum[12] ), .B0(n44_adj_421), .C0(n56), .D0(n4301), 
          .A1(n11733), .B1(n11730), .C1(n17_adj_420), .D1(n44_adj_421), 
          .CIN(n8908), .COUT(n8909), .S0(n8907[1]), .S1(n8907[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_3.INIT0 = 16'h5a9a;
    defparam add_569_3.INIT1 = 16'h5655;
    defparam add_569_3.INJECT1_0 = "NO";
    defparam add_569_3.INJECT1_1 = "NO";
    CCU2D add_569_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n3441), .B1(n42_adj_428), .C1(n4301), .D1(\lumdivision[9] ), 
          .COUT(n8908));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_569_1.INIT0 = 16'hF000;
    defparam add_569_1.INIT1 = 16'h0d04;
    defparam add_569_1.INJECT1_0 = "NO";
    defparam add_569_1.INJECT1_1 = "NO";
    CCU2D add_568_19 (.A0(n11741), .B0(n48), .C0(n1629[30]), .D0(n3153), 
          .A1(n11741), .B1(n48), .C1(n1629[31]), .D1(n3152), .CIN(n8903), 
          .S0(n1663[30]), .S1(n1663[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_19.INIT0 = 16'h0b4f;
    defparam add_568_19.INIT1 = 16'h0b4f;
    defparam add_568_19.INJECT1_0 = "NO";
    defparam add_568_19.INJECT1_1 = "NO";
    CCU2D add_568_17 (.A0(n11741), .B0(n48), .C0(n1629[28]), .D0(n3155), 
          .A1(n11741), .B1(n48), .C1(n1629[29]), .D1(n3154), .CIN(n8902), 
          .COUT(n8903), .S0(n1663[28]), .S1(n1663[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_17.INIT0 = 16'h0b4f;
    defparam add_568_17.INIT1 = 16'h0b4f;
    defparam add_568_17.INJECT1_0 = "NO";
    defparam add_568_17.INJECT1_1 = "NO";
    CCU2D add_568_15 (.A0(n11741), .B0(n48), .C0(n1629[26]), .D0(n3157), 
          .A1(n11741), .B1(n48), .C1(n1629[27]), .D1(n3156), .CIN(n8901), 
          .COUT(n8902), .S0(n1663[26]), .S1(n1663[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_15.INIT0 = 16'h0b4f;
    defparam add_568_15.INIT1 = 16'h0b4f;
    defparam add_568_15.INJECT1_0 = "NO";
    defparam add_568_15.INJECT1_1 = "NO";
    CCU2D add_568_13 (.A0(n11741), .B0(n48), .C0(n1629[24]), .D0(n3159), 
          .A1(n11741), .B1(n48), .C1(n1629[25]), .D1(n3158), .CIN(n8900), 
          .COUT(n8901), .S0(n1663[24]), .S1(n1663[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_13.INIT0 = 16'h0b4f;
    defparam add_568_13.INIT1 = 16'h0b4f;
    defparam add_568_13.INJECT1_0 = "NO";
    defparam add_568_13.INJECT1_1 = "NO";
    CCU2D add_568_11 (.A0(\lumdivision[9] ), .B0(n11740), .C0(n1629[22]), 
          .D0(n3161), .A1(n11741), .B1(n48), .C1(n1629[23]), .D1(n3160), 
          .CIN(n8899), .COUT(n8900), .S0(n1663[22]), .S1(n1663[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_11.INIT0 = 16'ha965;
    defparam add_568_11.INIT1 = 16'h0b4f;
    defparam add_568_11.INJECT1_0 = "NO";
    defparam add_568_11.INJECT1_1 = "NO";
    CCU2D add_568_9 (.A0(n11741), .B0(n48), .C0(n1629[20]), .D0(n3163), 
          .A1(n11741), .B1(n48), .C1(n1629[21]), .D1(n11745), .CIN(n8898), 
          .COUT(n8899), .S0(n1663[20]), .S1(n1663[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_9.INIT0 = 16'h0b4f;
    defparam add_568_9.INIT1 = 16'h0b4f;
    defparam add_568_9.INJECT1_0 = "NO";
    defparam add_568_9.INJECT1_1 = "NO";
    CCU2D add_568_7 (.A0(\lumdivision[6] ), .B0(n11740), .C0(n1629[18]), 
          .D0(n11744), .A1(\lumdivision[6] ), .B1(n11740), .C1(n1629[19]), 
          .D1(n3164), .CIN(n8897), .COUT(n8898), .S0(n1663[18]), .S1(n1663[19]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_7.INIT0 = 16'ha965;
    defparam add_568_7.INIT1 = 16'ha965;
    defparam add_568_7.INJECT1_0 = "NO";
    defparam add_568_7.INJECT1_1 = "NO";
    CCU2D add_568_5 (.A0(\lumdivision[3] ), .B0(n11740), .C0(n1629[16]), 
          .D0(n3167), .A1(n12200), .B1(n11740), .C1(n1629[17]), .D1(n3166), 
          .CIN(n8896), .COUT(n8897), .S0(n1663[16]), .S1(n1663[17]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_5.INIT0 = 16'ha965;
    defparam add_568_5.INIT1 = 16'ha965;
    defparam add_568_5.INJECT1_0 = "NO";
    defparam add_568_5.INJECT1_1 = "NO";
    CCU2D add_568_3 (.A0(n10570), .B0(n48), .C0(n10655), .D0(n1629[14]), 
          .A1(n12204), .B1(n11740), .C1(n1629[15]), .D1(n3168), .CIN(n8895), 
          .COUT(n8896), .S0(n1663[14]), .S1(n1663[15]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_3.INIT0 = 16'h04ff;
    defparam add_568_3.INIT1 = 16'ha965;
    defparam add_568_3.INJECT1_0 = "NO";
    defparam add_568_3.INJECT1_1 = "NO";
    CCU2D add_568_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8895), .S1(n1663[13]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_568_1.INIT0 = 16'hF000;
    defparam add_568_1.INIT1 = 16'h0aaa;
    defparam add_568_1.INJECT1_0 = "NO";
    defparam add_568_1.INJECT1_1 = "NO";
    CCU2D add_567_19 (.A0(n11747), .B0(n50_adj_429), .C0(n1595[31]), .D0(n3008), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8894), 
          .S0(n1629[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_19.INIT0 = 16'h0b4f;
    defparam add_567_19.INIT1 = 16'h0000;
    defparam add_567_19.INJECT1_0 = "NO";
    defparam add_567_19.INJECT1_1 = "NO";
    CCU2D add_567_17 (.A0(n11747), .B0(n50_adj_429), .C0(n1595[29]), .D0(n3010), 
          .A1(n11747), .B1(n50_adj_429), .C1(n1595[30]), .D1(n3009), 
          .CIN(n8893), .COUT(n8894), .S0(n1629[29]), .S1(n1629[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_17.INIT0 = 16'h0b4f;
    defparam add_567_17.INIT1 = 16'h0b4f;
    defparam add_567_17.INJECT1_0 = "NO";
    defparam add_567_17.INJECT1_1 = "NO";
    CCU2D add_567_15 (.A0(n11747), .B0(n50_adj_429), .C0(n1595[27]), .D0(n3012), 
          .A1(n11747), .B1(n50_adj_429), .C1(n1595[28]), .D1(n3011), 
          .CIN(n8892), .COUT(n8893), .S0(n1629[27]), .S1(n1629[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_15.INIT0 = 16'h0b4f;
    defparam add_567_15.INIT1 = 16'h0b4f;
    defparam add_567_15.INJECT1_0 = "NO";
    defparam add_567_15.INJECT1_1 = "NO";
    CCU2D add_567_13 (.A0(n11747), .B0(n50_adj_429), .C0(n1595[25]), .D0(n3014), 
          .A1(n11747), .B1(n50_adj_429), .C1(n1595[26]), .D1(n3013), 
          .CIN(n8891), .COUT(n8892), .S0(n1629[25]), .S1(n1629[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_13.INIT0 = 16'h0b4f;
    defparam add_567_13.INIT1 = 16'h0b4f;
    defparam add_567_13.INJECT1_0 = "NO";
    defparam add_567_13.INJECT1_1 = "NO";
    CCU2D add_567_11 (.A0(n12202), .B0(n11746), .C0(n1595[23]), .D0(n3016), 
          .A1(n11747), .B1(n50_adj_429), .C1(n1595[24]), .D1(n3015), 
          .CIN(n8890), .COUT(n8891), .S0(n1629[23]), .S1(n1629[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_11.INIT0 = 16'ha965;
    defparam add_567_11.INIT1 = 16'h0b4f;
    defparam add_567_11.INJECT1_0 = "NO";
    defparam add_567_11.INJECT1_1 = "NO";
    CCU2D add_567_9 (.A0(n11747), .B0(n50_adj_429), .C0(n1595[21]), .D0(n3018), 
          .A1(n11747), .B1(n50_adj_429), .C1(n1595[22]), .D1(n11752), 
          .CIN(n8889), .COUT(n8890), .S0(n1629[21]), .S1(n1629[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_9.INIT0 = 16'h0b4f;
    defparam add_567_9.INIT1 = 16'h0b4f;
    defparam add_567_9.INJECT1_0 = "NO";
    defparam add_567_9.INJECT1_1 = "NO";
    CCU2D add_567_7 (.A0(\lumdivision[6] ), .B0(n11746), .C0(n1595[19]), 
          .D0(n11751), .A1(\lumdivision[6] ), .B1(n11746), .C1(n1595[20]), 
          .D1(n3019), .CIN(n8888), .COUT(n8889), .S0(n1629[19]), .S1(n1629[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_7.INIT0 = 16'ha965;
    defparam add_567_7.INIT1 = 16'ha965;
    defparam add_567_7.INJECT1_0 = "NO";
    defparam add_567_7.INJECT1_1 = "NO";
    CCU2D add_567_5 (.A0(n12206), .B0(n11746), .C0(n1595[17]), .D0(n3022), 
          .A1(\lumdivision[4] ), .B1(n11746), .C1(n1595[18]), .D1(n3021), 
          .CIN(n8887), .COUT(n8888), .S0(n1629[17]), .S1(n1629[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_5.INIT0 = 16'ha965;
    defparam add_567_5.INIT1 = 16'ha965;
    defparam add_567_5.INJECT1_0 = "NO";
    defparam add_567_5.INJECT1_1 = "NO";
    CCU2D add_567_3 (.A0(n10582), .B0(n50_adj_429), .C0(n11748), .D0(n1595[15]), 
          .A1(n12204), .B1(n11746), .C1(n1595[16]), .D1(n3023), .CIN(n8886), 
          .COUT(n8887), .S0(n1629[15]), .S1(n1629[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_3.INIT0 = 16'h04ff;
    defparam add_567_3.INIT1 = 16'ha965;
    defparam add_567_3.INJECT1_0 = "NO";
    defparam add_567_3.INJECT1_1 = "NO";
    CCU2D add_567_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8886), .S1(n1629[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_567_1.INIT0 = 16'hF000;
    defparam add_567_1.INIT1 = 16'h0aaa;
    defparam add_567_1.INJECT1_0 = "NO";
    defparam add_567_1.INJECT1_1 = "NO";
    CCU2D add_566_17 (.A0(n11754), .B0(n52_adj_413), .C0(n1561[30]), .D0(n2862), 
          .A1(n11754), .B1(n52_adj_413), .C1(n1561[31]), .D1(n2861), 
          .CIN(n8884), .S0(n1595[30]), .S1(n1595[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_17.INIT0 = 16'h0b4f;
    defparam add_566_17.INIT1 = 16'h0b4f;
    defparam add_566_17.INJECT1_0 = "NO";
    defparam add_566_17.INJECT1_1 = "NO";
    CCU2D add_566_15 (.A0(n11754), .B0(n52_adj_413), .C0(n1561[28]), .D0(n11759), 
          .A1(n11754), .B1(n52_adj_413), .C1(n1561[29]), .D1(n2863), 
          .CIN(n8883), .COUT(n8884), .S0(n1595[28]), .S1(n1595[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_15.INIT0 = 16'h0b4f;
    defparam add_566_15.INIT1 = 16'h0b4f;
    defparam add_566_15.INJECT1_0 = "NO";
    defparam add_566_15.INJECT1_1 = "NO";
    CCU2D add_580_30 (.A0(n11709), .B0(n24), .C0(n2037[28]), .D0(n9049[26]), 
          .A1(n11709), .B1(n24), .C1(n2037[29]), .D1(n9049[27]), .CIN(n9093), 
          .COUT(n9094), .S0(n2071[28]), .S1(n2071[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_30.INIT0 = 16'h0b4f;
    defparam add_580_30.INIT1 = 16'h0b4f;
    defparam add_580_30.INJECT1_0 = "NO";
    defparam add_580_30.INJECT1_1 = "NO";
    LUT4 div_63_i2128_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[25]), 
         .D(n3158), .Z(n3299)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2128_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_197_7 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[5]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[6]), 
          .D1(GND_net), .CIN(n8777), .COUT(n8778), .S0(n280[5]), .S1(n280[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_7.INIT0 = 16'h4b4b;
    defparam add_197_7.INIT1 = 16'h4b4b;
    defparam add_197_7.INJECT1_0 = "NO";
    defparam add_197_7.INJECT1_1 = "NO";
    LUT4 i11_4_lut_adj_18 (.A(n21_adj_430), .B(n13), .C(n20_adj_431), 
         .D(n14_adj_432), .Z(n38_adj_357)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i11_4_lut_adj_18.init = 16'hfffe;
    FD1S3IX lumdivision_i4_rep_435 (.D(n5896), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(n12200)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i4_rep_435.GSR = "DISABLED";
    LUT4 div_63_i2126_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[27]), 
         .D(n3156), .Z(n3297)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2126_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_580_28 (.A0(n11709), .B0(n24), .C0(n2037[26]), .D0(n9049[24]), 
          .A1(n11709), .B1(n24), .C1(n2037[27]), .D1(n9049[25]), .CIN(n9092), 
          .COUT(n9093), .S0(n2071[26]), .S1(n2071[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_28.INIT0 = 16'h0b4f;
    defparam add_580_28.INIT1 = 16'h0b4f;
    defparam add_580_28.INJECT1_0 = "NO";
    defparam add_580_28.INJECT1_1 = "NO";
    CCU2D add_566_13 (.A0(n11754), .B0(n52_adj_413), .C0(n1561[26]), .D0(n2866), 
          .A1(n11754), .B1(n52_adj_413), .C1(n1561[27]), .D1(n2865), 
          .CIN(n8882), .COUT(n8883), .S0(n1595[26]), .S1(n1595[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_13.INIT0 = 16'h0b4f;
    defparam add_566_13.INIT1 = 16'h0b4f;
    defparam add_566_13.INJECT1_0 = "NO";
    defparam add_566_13.INJECT1_1 = "NO";
    CCU2D add_566_11 (.A0(\lumdivision[9] ), .B0(n11753), .C0(n1561[24]), 
          .D0(n2868), .A1(n11754), .B1(n52_adj_413), .C1(n1561[25]), 
          .D1(n2867), .CIN(n8881), .COUT(n8882), .S0(n1595[24]), .S1(n1595[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_11.INIT0 = 16'ha965;
    defparam add_566_11.INIT1 = 16'h0b4f;
    defparam add_566_11.INJECT1_0 = "NO";
    defparam add_566_11.INJECT1_1 = "NO";
    CCU2D add_566_9 (.A0(n11754), .B0(n52_adj_413), .C0(n1561[22]), .D0(n2870), 
          .A1(n11754), .B1(n52_adj_413), .C1(n1561[23]), .D1(n11758), 
          .CIN(n8880), .COUT(n8881), .S0(n1595[22]), .S1(n1595[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_9.INIT0 = 16'h0b4f;
    defparam add_566_9.INIT1 = 16'h0b4f;
    defparam add_566_9.INJECT1_0 = "NO";
    defparam add_566_9.INJECT1_1 = "NO";
    CCU2D add_566_7 (.A0(\lumdivision[6] ), .B0(n11753), .C0(n1561[20]), 
          .D0(n11757), .A1(\lumdivision[6] ), .B1(n11753), .C1(n1561[21]), 
          .D1(n2871), .CIN(n8879), .COUT(n8880), .S0(n1595[20]), .S1(n1595[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_7.INIT0 = 16'ha965;
    defparam add_566_7.INIT1 = 16'ha965;
    defparam add_566_7.INJECT1_0 = "NO";
    defparam add_566_7.INJECT1_1 = "NO";
    CCU2D add_566_5 (.A0(n12206), .B0(n11753), .C0(n1561[18]), .D0(n2874), 
          .A1(n12200), .B1(n11753), .C1(n1561[19]), .D1(n2873), .CIN(n8878), 
          .COUT(n8879), .S0(n1595[18]), .S1(n1595[19]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_5.INIT0 = 16'ha965;
    defparam add_566_5.INIT1 = 16'ha965;
    defparam add_566_5.INJECT1_0 = "NO";
    defparam add_566_5.INJECT1_1 = "NO";
    CCU2D add_566_3 (.A0(n10572), .B0(n52_adj_413), .C0(n9_adj_433), .D0(n1561[16]), 
          .A1(n12204), .B1(n11753), .C1(n1561[17]), .D1(n2875), .CIN(n8877), 
          .COUT(n8878), .S0(n1595[16]), .S1(n1595[17]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_3.INIT0 = 16'h04ff;
    defparam add_566_3.INIT1 = 16'ha965;
    defparam add_566_3.INJECT1_0 = "NO";
    defparam add_566_3.INJECT1_1 = "NO";
    CCU2D add_566_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8877), .S1(n1595[15]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_566_1.INIT0 = 16'hF000;
    defparam add_566_1.INIT1 = 16'h0aaa;
    defparam add_566_1.INJECT1_0 = "NO";
    defparam add_566_1.INJECT1_1 = "NO";
    CCU2D add_565_17 (.A0(n11761), .B0(n54), .C0(n1527[31]), .D0(n2711), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8876), 
          .S0(n1561[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_17.INIT0 = 16'h0b4f;
    defparam add_565_17.INIT1 = 16'h0000;
    defparam add_565_17.INJECT1_0 = "NO";
    defparam add_565_17.INJECT1_1 = "NO";
    CCU2D add_565_15 (.A0(n11761), .B0(n54), .C0(n1527[29]), .D0(n2713), 
          .A1(n11761), .B1(n54), .C1(n1527[30]), .D1(n11765), .CIN(n8875), 
          .COUT(n8876), .S0(n1561[29]), .S1(n1561[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_15.INIT0 = 16'h0b4f;
    defparam add_565_15.INIT1 = 16'h0b4f;
    defparam add_565_15.INJECT1_0 = "NO";
    defparam add_565_15.INJECT1_1 = "NO";
    CCU2D add_565_13 (.A0(n11761), .B0(n54), .C0(n1527[27]), .D0(n2715), 
          .A1(n11761), .B1(n54), .C1(n1527[28]), .D1(n2714), .CIN(n8874), 
          .COUT(n8875), .S0(n1561[27]), .S1(n1561[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_13.INIT0 = 16'h0b4f;
    defparam add_565_13.INIT1 = 16'h0b4f;
    defparam add_565_13.INJECT1_0 = "NO";
    defparam add_565_13.INJECT1_1 = "NO";
    CCU2D add_565_11 (.A0(n12202), .B0(n11760), .C0(n1527[25]), .D0(n2717), 
          .A1(n11761), .B1(n54), .C1(n1527[26]), .D1(n2716), .CIN(n8873), 
          .COUT(n8874), .S0(n1561[25]), .S1(n1561[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_11.INIT0 = 16'ha965;
    defparam add_565_11.INIT1 = 16'h0b4f;
    defparam add_565_11.INJECT1_0 = "NO";
    defparam add_565_11.INJECT1_1 = "NO";
    CCU2D add_565_9 (.A0(n11761), .B0(n54), .C0(n1527[23]), .D0(n2719), 
          .A1(n11761), .B1(n54), .C1(n1527[24]), .D1(n11766), .CIN(n8872), 
          .COUT(n8873), .S0(n1561[23]), .S1(n1561[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_9.INIT0 = 16'h0b4f;
    defparam add_565_9.INIT1 = 16'h0b4f;
    defparam add_565_9.INJECT1_0 = "NO";
    defparam add_565_9.INJECT1_1 = "NO";
    CCU2D add_565_7 (.A0(\lumdivision[6] ), .B0(n11760), .C0(n1527[21]), 
          .D0(n11764), .A1(\lumdivision[6] ), .B1(n11760), .C1(n1527[22]), 
          .D1(n2720), .CIN(n8871), .COUT(n8872), .S0(n1561[21]), .S1(n1561[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_7.INIT0 = 16'ha965;
    defparam add_565_7.INIT1 = 16'ha965;
    defparam add_565_7.INJECT1_0 = "NO";
    defparam add_565_7.INJECT1_1 = "NO";
    CCU2D add_565_5 (.A0(n12206), .B0(n11760), .C0(n1527[19]), .D0(n2723), 
          .A1(\lumdivision[4] ), .B1(n11760), .C1(n1527[20]), .D1(n2722), 
          .CIN(n8870), .COUT(n8871), .S0(n1561[19]), .S1(n1561[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_5.INIT0 = 16'ha965;
    defparam add_565_5.INIT1 = 16'ha965;
    defparam add_565_5.INJECT1_0 = "NO";
    defparam add_565_5.INJECT1_1 = "NO";
    CCU2D add_565_3 (.A0(n10562), .B0(n54), .C0(n7), .D0(n1527[17]), 
          .A1(\lumdivision[2] ), .B1(n11760), .C1(n1527[18]), .D1(n2724), 
          .CIN(n8869), .COUT(n8870), .S0(n1561[17]), .S1(n1561[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_3.INIT0 = 16'h04ff;
    defparam add_565_3.INIT1 = 16'ha965;
    defparam add_565_3.INJECT1_0 = "NO";
    defparam add_565_3.INJECT1_1 = "NO";
    CCU2D add_565_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8869), .S1(n1561[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_565_1.INIT0 = 16'hF000;
    defparam add_565_1.INIT1 = 16'h0aaa;
    defparam add_565_1.INJECT1_0 = "NO";
    defparam add_565_1.INJECT1_1 = "NO";
    CCU2D add_564_15 (.A0(n4307), .B0(n56_adj_330), .C0(n1493[30]), .D0(n2559), 
          .A1(n4307), .B1(n56_adj_330), .C1(n1493[31]), .D1(n11773), 
          .CIN(n8867), .S0(n1527[30]), .S1(n1527[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_15.INIT0 = 16'h0b4f;
    defparam add_564_15.INIT1 = 16'h0b4f;
    defparam add_564_15.INJECT1_0 = "NO";
    defparam add_564_15.INJECT1_1 = "NO";
    CCU2D add_564_13 (.A0(n4307), .B0(n56_adj_330), .C0(n1493[28]), .D0(n2561), 
          .A1(n4307), .B1(n56_adj_330), .C1(n1493[29]), .D1(n11772), 
          .CIN(n8866), .COUT(n8867), .S0(n1527[28]), .S1(n1527[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_13.INIT0 = 16'h0b4f;
    defparam add_564_13.INIT1 = 16'h0b4f;
    defparam add_564_13.INJECT1_0 = "NO";
    defparam add_564_13.INJECT1_1 = "NO";
    CCU2D add_564_11 (.A0(n12202), .B0(n11767), .C0(n1493[26]), .D0(n2563), 
          .A1(n4307), .B1(n56_adj_330), .C1(n1493[27]), .D1(n2562), 
          .CIN(n8865), .COUT(n8866), .S0(n1527[26]), .S1(n1527[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_11.INIT0 = 16'ha965;
    defparam add_564_11.INIT1 = 16'h0b4f;
    defparam add_564_11.INJECT1_0 = "NO";
    defparam add_564_11.INJECT1_1 = "NO";
    CCU2D add_564_9 (.A0(n4307), .B0(n56_adj_330), .C0(n1493[24]), .D0(n2565), 
          .A1(n4307), .B1(n56_adj_330), .C1(n1493[25]), .D1(n11771), 
          .CIN(n8864), .COUT(n8865), .S0(n1527[24]), .S1(n1527[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_9.INIT0 = 16'h0b4f;
    defparam add_564_9.INIT1 = 16'h0b4f;
    defparam add_564_9.INJECT1_0 = "NO";
    defparam add_564_9.INJECT1_1 = "NO";
    CCU2D add_564_7 (.A0(\lumdivision[6] ), .B0(n11767), .C0(n1493[22]), 
          .D0(n11770), .A1(\lumdivision[6] ), .B1(n11767), .C1(n1493[23]), 
          .D1(n2566), .CIN(n8863), .COUT(n8864), .S0(n1527[22]), .S1(n1527[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_7.INIT0 = 16'ha965;
    defparam add_564_7.INIT1 = 16'ha965;
    defparam add_564_7.INJECT1_0 = "NO";
    defparam add_564_7.INJECT1_1 = "NO";
    CCU2D add_564_5 (.A0(n12206), .B0(n11767), .C0(n1493[20]), .D0(n2569), 
          .A1(n12200), .B1(n11767), .C1(n1493[21]), .D1(n2568), .CIN(n8862), 
          .COUT(n8863), .S0(n1527[20]), .S1(n1527[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_5.INIT0 = 16'ha965;
    defparam add_564_5.INIT1 = 16'ha965;
    defparam add_564_5.INJECT1_0 = "NO";
    defparam add_564_5.INJECT1_1 = "NO";
    CCU2D add_564_3 (.A0(n6_adj_354), .B0(n56_adj_330), .C0(n5), .D0(n1493[18]), 
          .A1(n12204), .B1(n11767), .C1(n1493[19]), .D1(n2570), .CIN(n8861), 
          .COUT(n8862), .S0(n1527[18]), .S1(n1527[19]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_3.INIT0 = 16'h04ff;
    defparam add_564_3.INIT1 = 16'ha965;
    defparam add_564_3.INJECT1_0 = "NO";
    defparam add_564_3.INJECT1_1 = "NO";
    CCU2D add_564_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8861), .S1(n1527[17]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_564_1.INIT0 = 16'hF000;
    defparam add_564_1.INIT1 = 16'h0aaa;
    defparam add_564_1.INJECT1_0 = "NO";
    defparam add_564_1.INJECT1_1 = "NO";
    CCU2D add_563_15 (.A0(n11775), .B0(n58_adj_356), .C0(n1459[31]), .D0(n11780), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8860), 
          .S0(n1493[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_15.INIT0 = 16'h0b4f;
    defparam add_563_15.INIT1 = 16'h0000;
    defparam add_563_15.INJECT1_0 = "NO";
    defparam add_563_15.INJECT1_1 = "NO";
    CCU2D add_563_13 (.A0(n11775), .B0(n58_adj_356), .C0(n1459[29]), .D0(n2404), 
          .A1(n4_adj_376), .B1(n58_adj_356), .C1(n1459[30]), .D1(n2403), 
          .CIN(n8859), .COUT(n8860), .S0(n1493[29]), .S1(n1493[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_13.INIT0 = 16'h0b4f;
    defparam add_563_13.INIT1 = 16'h0f4f;
    defparam add_563_13.INJECT1_0 = "NO";
    defparam add_563_13.INJECT1_1 = "NO";
    LUT4 i9_4_lut_adj_19 (.A(n9049[24]), .B(n9049[27]), .C(n9049[25]), 
         .D(n9049[23]), .Z(n21_adj_430)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9_4_lut_adj_19.init = 16'hfffe;
    LUT4 div_63_i1422_3_lut_rep_348_4_lut (.A(n62_adj_434), .B(n11793), 
         .C(n1391[24]), .D(n2088_adj_355), .Z(n11785)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1422_3_lut_rep_348_4_lut.init = 16'hf2d0;
    CCU2D add_197_5 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[3]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[4]), 
          .D1(GND_net), .CIN(n8776), .COUT(n8777), .S0(n280[3]), .S1(n280[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_5.INIT0 = 16'h4b4b;
    defparam add_197_5.INIT1 = 16'h4b4b;
    defparam add_197_5.INJECT1_0 = "NO";
    defparam add_197_5.INJECT1_1 = "NO";
    LUT4 i9145_4_lut (.A(n11853), .B(n11852), .C(n11851), .D(n10951), 
         .Z(n11036)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9145_4_lut.init = 16'hefee;
    LUT4 div_63_i1416_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[30]), 
         .D(n2082_adj_435), .Z(n2244)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1416_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2130_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[23]), 
         .D(n3160), .Z(n3301)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2130_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_20 (.A(n9049[14]), .B(n9049[10]), .Z(n13)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_20.init = 16'heeee;
    FD1S3AX lumDN_1_92 (.D(lumDN_c), .CK(clk_c), .Q(lumDN_1)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(37[3] 90[10])
    defparam lumDN_1_92.GSR = "ENABLED";
    LUT4 i8_4_lut (.A(n9049[26]), .B(n9049[29]), .C(n9049[28]), .D(n9049[11]), 
         .Z(n20_adj_431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(n9049[12]), .B(n9049[13]), .Z(n14_adj_432)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut.init = 16'heeee;
    CCU2D add_563_11 (.A0(n12202), .B0(n11774), .C0(n1459[27]), .D0(n2406), 
          .A1(n11775), .B1(n58_adj_356), .C1(n1459[28]), .D1(n2405), 
          .CIN(n8858), .COUT(n8859), .S0(n1493[27]), .S1(n1493[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_11.INIT0 = 16'ha965;
    defparam add_563_11.INIT1 = 16'h0b4f;
    defparam add_563_11.INJECT1_0 = "NO";
    defparam add_563_11.INJECT1_1 = "NO";
    CCU2D add_563_9 (.A0(n11775), .B0(n58_adj_356), .C0(n1459[25]), .D0(n2408), 
          .A1(n11775), .B1(n58_adj_356), .C1(n1459[26]), .D1(n11779), 
          .CIN(n8857), .COUT(n8858), .S0(n1493[25]), .S1(n1493[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_9.INIT0 = 16'h0b4f;
    defparam add_563_9.INIT1 = 16'h0b4f;
    defparam add_563_9.INJECT1_0 = "NO";
    defparam add_563_9.INJECT1_1 = "NO";
    CCU2D add_563_7 (.A0(\lumdivision[6] ), .B0(n11774), .C0(n1459[23]), 
          .D0(n11778), .A1(\lumdivision[6] ), .B1(n11774), .C1(n1459[24]), 
          .D1(n2409), .CIN(n8856), .COUT(n8857), .S0(n1493[23]), .S1(n1493[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_7.INIT0 = 16'ha965;
    defparam add_563_7.INIT1 = 16'ha965;
    defparam add_563_7.INJECT1_0 = "NO";
    defparam add_563_7.INJECT1_1 = "NO";
    CCU2D add_563_5 (.A0(n12206), .B0(n11774), .C0(n1459[21]), .D0(n2412), 
          .A1(n12200), .B1(n11774), .C1(n1459[22]), .D1(n2411), .CIN(n8855), 
          .COUT(n8856), .S0(n1493[21]), .S1(n1493[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_5.INIT0 = 16'ha965;
    defparam add_563_5.INIT1 = 16'ha965;
    defparam add_563_5.INJECT1_0 = "NO";
    defparam add_563_5.INJECT1_1 = "NO";
    CCU2D add_563_3 (.A0(n4_adj_376), .B0(n58_adj_356), .C0(n2403), .D0(n1459[19]), 
          .A1(n12204), .B1(n11774), .C1(n1459[20]), .D1(n2413), .CIN(n8854), 
          .COUT(n8855), .S0(n1493[19]), .S1(n1493[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_3.INIT0 = 16'h04ff;
    defparam add_563_3.INIT1 = 16'ha965;
    defparam add_563_3.INJECT1_0 = "NO";
    defparam add_563_3.INJECT1_1 = "NO";
    CCU2D add_563_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8854), .S1(n1493[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_563_1.INIT0 = 16'hF000;
    defparam add_563_1.INIT1 = 16'h0aaa;
    defparam add_563_1.INJECT1_0 = "NO";
    defparam add_563_1.INJECT1_1 = "NO";
    CCU2D add_562_13 (.A0(n11787), .B0(n60_adj_377), .C0(n1425[30]), .D0(n2244), 
          .A1(n2244), .B1(n60_adj_377), .C1(n1425[31]), .D1(n11787), 
          .CIN(n8852), .S0(n1459[30]), .S1(n1459[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_13.INIT0 = 16'h0f4f;
    defparam add_562_13.INIT1 = 16'h0f4f;
    defparam add_562_13.INJECT1_0 = "NO";
    defparam add_562_13.INJECT1_1 = "NO";
    CCU2D add_562_11 (.A0(n12202), .B0(n11781), .C0(n1425[28]), .D0(n2246), 
          .A1(n11782), .B1(n60_adj_377), .C1(n1425[29]), .D1(n2245), 
          .CIN(n8851), .COUT(n8852), .S0(n1459[28]), .S1(n1459[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_11.INIT0 = 16'ha965;
    defparam add_562_11.INIT1 = 16'h0b4f;
    defparam add_562_11.INJECT1_0 = "NO";
    defparam add_562_11.INJECT1_1 = "NO";
    CCU2D add_562_9 (.A0(n11782), .B0(n60_adj_377), .C0(n1425[26]), .D0(n2248), 
          .A1(n11782), .B1(n60_adj_377), .C1(n1425[27]), .D1(n11786), 
          .CIN(n8850), .COUT(n8851), .S0(n1459[26]), .S1(n1459[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_9.INIT0 = 16'h0b4f;
    defparam add_562_9.INIT1 = 16'h0b4f;
    defparam add_562_9.INJECT1_0 = "NO";
    defparam add_562_9.INJECT1_1 = "NO";
    CCU2D add_562_7 (.A0(\lumdivision[6] ), .B0(n11781), .C0(n1425[24]), 
          .D0(n11785), .A1(\lumdivision[6] ), .B1(n11781), .C1(n1425[25]), 
          .D1(n2249), .CIN(n8849), .COUT(n8850), .S0(n1459[24]), .S1(n1459[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_7.INIT0 = 16'ha965;
    defparam add_562_7.INIT1 = 16'ha965;
    defparam add_562_7.INJECT1_0 = "NO";
    defparam add_562_7.INJECT1_1 = "NO";
    CCU2D add_562_5 (.A0(\lumdivision[3] ), .B0(n11781), .C0(n1425[22]), 
          .D0(n2252), .A1(n12200), .B1(n11781), .C1(n1425[23]), .D1(n2251), 
          .CIN(n8848), .COUT(n8849), .S0(n1459[22]), .S1(n1459[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_5.INIT0 = 16'ha965;
    defparam add_562_5.INIT1 = 16'ha965;
    defparam add_562_5.INJECT1_0 = "NO";
    defparam add_562_5.INJECT1_1 = "NO";
    CCU2D add_562_3 (.A0(n11787), .B0(n60_adj_377), .C0(n2244), .D0(n1425[20]), 
          .A1(n12204), .B1(n11781), .C1(n1425[21]), .D1(n2253), .CIN(n8847), 
          .COUT(n8848), .S0(n1459[20]), .S1(n1459[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_3.INIT0 = 16'h04ff;
    defparam add_562_3.INIT1 = 16'ha965;
    defparam add_562_3.INJECT1_0 = "NO";
    defparam add_562_3.INJECT1_1 = "NO";
    CCU2D add_562_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8847), .S1(n1459[19]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_562_1.INIT0 = 16'hF000;
    defparam add_562_1.INIT1 = 16'h0aaa;
    defparam add_562_1.INJECT1_0 = "NO";
    defparam add_562_1.INJECT1_1 = "NO";
    CCU2D add_561_13 (.A0(n5857), .B0(n62_adj_434), .C0(n1391[31]), .D0(n11793), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8846), 
          .S0(n1425[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_13.INIT0 = 16'h078f;
    defparam add_561_13.INIT1 = 16'h0000;
    defparam add_561_13.INJECT1_0 = "NO";
    defparam add_561_13.INJECT1_1 = "NO";
    CCU2D add_561_11 (.A0(n12202), .B0(n11788), .C0(n1391[29]), .D0(n2083_adj_436), 
          .A1(n11793), .B1(n62_adj_434), .C1(n1391[30]), .D1(n2082_adj_435), 
          .CIN(n8845), .COUT(n8846), .S0(n1425[29]), .S1(n1425[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_11.INIT0 = 16'ha965;
    defparam add_561_11.INIT1 = 16'h0b4f;
    defparam add_561_11.INJECT1_0 = "NO";
    defparam add_561_11.INJECT1_1 = "NO";
    CCU2D add_561_9 (.A0(n11793), .B0(n62_adj_434), .C0(n1391[27]), .D0(n2085_adj_423), 
          .A1(n11793), .B1(n62_adj_434), .C1(n1391[28]), .D1(n11792), 
          .CIN(n8844), .COUT(n8845), .S0(n1425[27]), .S1(n1425[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_9.INIT0 = 16'h0b4f;
    defparam add_561_9.INIT1 = 16'h0b4f;
    defparam add_561_9.INJECT1_0 = "NO";
    defparam add_561_9.INJECT1_1 = "NO";
    CCU2D add_561_7 (.A0(\lumdivision[6] ), .B0(n11788), .C0(n1391[25]), 
          .D0(n11791), .A1(\lumdivision[6] ), .B1(n11788), .C1(n1391[26]), 
          .D1(n2086_adj_437), .CIN(n8843), .COUT(n8844), .S0(n1425[25]), 
          .S1(n1425[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_7.INIT0 = 16'ha965;
    defparam add_561_7.INIT1 = 16'ha965;
    defparam add_561_7.INJECT1_0 = "NO";
    defparam add_561_7.INJECT1_1 = "NO";
    CCU2D add_561_5 (.A0(n12206), .B0(n11788), .C0(n1391[23]), .D0(n2089_adj_331), 
          .A1(n12200), .B1(n11788), .C1(n1391[24]), .D1(n2088_adj_355), 
          .CIN(n8842), .COUT(n8843), .S0(n1425[23]), .S1(n1425[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_5.INIT0 = 16'ha965;
    defparam add_561_5.INIT1 = 16'ha965;
    defparam add_561_5.INJECT1_0 = "NO";
    defparam add_561_5.INJECT1_1 = "NO";
    CCU2D add_561_3 (.A0(n1391[21]), .B0(n11788), .C0(GND_net), .D0(GND_net), 
          .A1(n12204), .B1(n11788), .C1(n1391[22]), .D1(n2090_adj_332), 
          .CIN(n8841), .COUT(n8842), .S0(n1425[21]), .S1(n1425[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_3.INIT0 = 16'hdddd;
    defparam add_561_3.INIT1 = 16'ha965;
    defparam add_561_3.INJECT1_0 = "NO";
    defparam add_561_3.INJECT1_1 = "NO";
    CCU2D add_561_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8841), .S1(n1425[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_561_1.INIT0 = 16'hF000;
    defparam add_561_1.INIT1 = 16'h0aaa;
    defparam add_561_1.INJECT1_0 = "NO";
    defparam add_561_1.INJECT1_1 = "NO";
    CCU2D add_560_11 (.A0(n12202), .B0(n11797), .C0(n1357[30]), .D0(n11802), 
          .A1(n62_adj_438), .B1(n12202), .C1(n1357[31]), .D1(n11803), 
          .CIN(n8839), .S0(n1391[30]), .S1(n1391[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_11.INIT0 = 16'ha965;
    defparam add_560_11.INIT1 = 16'h07ef;
    defparam add_560_11.INJECT1_0 = "NO";
    defparam add_560_11.INJECT1_1 = "NO";
    CCU2D add_560_9 (.A0(n11792), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n2083_adj_436), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8838), .COUT(n8839), .S0(n1391[28]), .S1(n1391[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_9.INIT0 = 16'h5555;
    defparam add_560_9.INIT1 = 16'h5555;
    defparam add_560_9.INJECT1_0 = "NO";
    defparam add_560_9.INJECT1_1 = "NO";
    CCU2D add_560_7 (.A0(\lumdivision[6] ), .B0(n11797), .C0(n1357[26]), 
          .D0(n11801), .A1(\lumdivision[6] ), .B1(n11797), .C1(n1357[27]), 
          .D1(n1920), .CIN(n8837), .COUT(n8838), .S0(n1391[26]), .S1(n1391[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_7.INIT0 = 16'ha965;
    defparam add_560_7.INIT1 = 16'ha965;
    defparam add_560_7.INJECT1_0 = "NO";
    defparam add_560_7.INJECT1_1 = "NO";
    CCU2D add_560_5 (.A0(n12206), .B0(n11797), .C0(n1357[24]), .D0(n1923), 
          .A1(n12200), .B1(n11797), .C1(n1357[25]), .D1(n1922), .CIN(n8836), 
          .COUT(n8837), .S0(n1391[24]), .S1(n1391[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_5.INIT0 = 16'ha965;
    defparam add_560_5.INIT1 = 16'ha965;
    defparam add_560_5.INJECT1_0 = "NO";
    defparam add_560_5.INJECT1_1 = "NO";
    CCU2D add_560_3 (.A0(n1357[22]), .B0(n11797), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[2] ), .B1(n11797), .C1(n1357[23]), .D1(n11800), 
          .CIN(n8835), .COUT(n8836), .S0(n1391[22]), .S1(n1391[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_3.INIT0 = 16'hdddd;
    defparam add_560_3.INIT1 = 16'ha965;
    defparam add_560_3.INJECT1_0 = "NO";
    defparam add_560_3.INJECT1_1 = "NO";
    CCU2D add_560_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8835), .S1(n1391[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_560_1.INIT0 = 16'hF000;
    defparam add_560_1.INIT1 = 16'h0aaa;
    defparam add_560_1.INJECT1_0 = "NO";
    defparam add_560_1.INJECT1_1 = "NO";
    CCU2D add_559_11 (.A0(n12202), .B0(n11804), .C0(n1323[31]), .D0(n1748), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8834), 
          .S0(n1357[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_11.INIT0 = 16'ha965;
    defparam add_559_11.INIT1 = 16'h0000;
    defparam add_559_11.INJECT1_0 = "NO";
    defparam add_559_11.INJECT1_1 = "NO";
    LUT4 div_63_i1833_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[29]), 
         .D(n2713), .Z(n2863)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1833_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_197_3 (.A0(count_flag_N_159), .B0(count_flag), .C0(triangle_cnt[1]), 
          .D0(GND_net), .A1(count_flag_N_159), .B1(count_flag), .C1(triangle_cnt[2]), 
          .D1(GND_net), .CIN(n8775), .COUT(n8776), .S0(n280[1]), .S1(n280[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_3.INIT0 = 16'h4b4b;
    defparam add_197_3.INIT1 = 16'h4b4b;
    defparam add_197_3.INJECT1_0 = "NO";
    defparam add_197_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_21 (.A(n7_adj_439), .B(n35), .C(count_flag_N_159), 
         .D(count_flag), .Z(clk_c_enable_1)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_21.init = 16'hc044;
    LUT4 div_63_LessThan_2993_i15_2_lut_rep_276 (.A(n9031[4]), .B(\lumdivision[4] ), 
         .Z(n11713)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2993_i15_2_lut_rep_276.init = 16'h6666;
    LUT4 div_63_i1419_3_lut_rep_349_4_lut (.A(n62_adj_434), .B(n11793), 
         .C(n1391[27]), .D(n2085_adj_423), .Z(n11786)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1419_3_lut_rep_349_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2993_i14_3_lut_3_lut (.A(n9031[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n14_adj_407)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2993_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i1418_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[28]), 
         .D(n11792), .Z(n2246)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1418_3_lut_4_lut.init = 16'hf2d0;
    PFUMX sawtooth_cnt_15__I_0_i24 (.BLUT(n16_adj_440), .ALUT(n22_adj_441), 
          .C0(n10970), .Z(n24_adj_337)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;
    LUT4 n2089_bdd_4_lut (.A(n2071[14]), .B(n2071[17]), .C(n2071[24]), 
         .D(n2071[15]), .Z(n11653)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam n2089_bdd_4_lut.init = 16'hfffe;
    LUT4 i2513_3_lut_rep_277 (.A(n9014[5]), .B(n9014[6]), .C(\lumdivision[6] ), 
         .Z(n11714)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2513_3_lut_rep_277.init = 16'h7e7e;
    LUT4 div_63_i1417_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[29]), 
         .D(n2083_adj_436), .Z(n2245)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1417_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_559_9 (.A0(\lumdivision[9] ), .B0(n64_adj_442), .C0(n1323[29]), 
          .D0(n1750), .A1(\lumdivision[9] ), .B1(n64_adj_442), .C1(n1323[30]), 
          .D1(n1749), .CIN(n8833), .COUT(n8834), .S0(n1357[29]), .S1(n1357[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_9.INIT0 = 16'h01ef;
    defparam add_559_9.INIT1 = 16'h01ef;
    defparam add_559_9.INJECT1_0 = "NO";
    defparam add_559_9.INJECT1_1 = "NO";
    CCU2D add_559_7 (.A0(\lumdivision[6] ), .B0(n11804), .C0(n1323[27]), 
          .D0(n11807), .A1(\lumdivision[6] ), .B1(n11804), .C1(n1323[28]), 
          .D1(n1751), .CIN(n8832), .COUT(n8833), .S0(n1357[27]), .S1(n1357[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_7.INIT0 = 16'ha965;
    defparam add_559_7.INIT1 = 16'ha965;
    defparam add_559_7.INJECT1_0 = "NO";
    defparam add_559_7.INJECT1_1 = "NO";
    CCU2D add_559_5 (.A0(\lumdivision[3] ), .B0(n11804), .C0(n1323[25]), 
          .D0(n1754), .A1(n12200), .B1(n11804), .C1(n1323[26]), .D1(n1753), 
          .CIN(n8831), .COUT(n8832), .S0(n1357[25]), .S1(n1357[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_5.INIT0 = 16'ha965;
    defparam add_559_5.INIT1 = 16'ha965;
    defparam add_559_5.INJECT1_0 = "NO";
    defparam add_559_5.INJECT1_1 = "NO";
    CCU2D add_559_3 (.A0(n1323[23]), .B0(n11804), .C0(GND_net), .D0(GND_net), 
          .A1(n12204), .B1(n11804), .C1(n1323[24]), .D1(n1755), .CIN(n8830), 
          .COUT(n8831), .S0(n1357[23]), .S1(n1357[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_3.INIT0 = 16'hdddd;
    defparam add_559_3.INIT1 = 16'ha965;
    defparam add_559_3.INJECT1_0 = "NO";
    defparam add_559_3.INJECT1_1 = "NO";
    CCU2D add_559_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8830), .S1(n1357[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_559_1.INIT0 = 16'hF000;
    defparam add_559_1.INIT1 = 16'h0aaa;
    defparam add_559_1.INJECT1_0 = "NO";
    defparam add_559_1.INJECT1_1 = "NO";
    CCU2D add_558_9 (.A0(n12202), .B0(n64_adj_443), .C0(n1289[30]), .D0(n1578), 
          .A1(n62_adj_321), .B1(n12202), .C1(n1289[31]), .D1(n11812), 
          .CIN(n8828), .S0(n1323[30]), .S1(n1323[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_558_9.INIT0 = 16'h01ef;
    defparam add_558_9.INIT1 = 16'h03ef;
    defparam add_558_9.INJECT1_0 = "NO";
    defparam add_558_9.INJECT1_1 = "NO";
    CCU2D add_558_7 (.A0(\lumdivision[6] ), .B0(n1289[28]), .C0(n11808), 
          .D0(n11811), .A1(\lumdivision[6] ), .B1(n1289[29]), .C1(n11808), 
          .D1(n1579), .CIN(n8827), .COUT(n8828), .S0(n1323[28]), .S1(n1323[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_558_7.INIT0 = 16'ha959;
    defparam add_558_7.INIT1 = 16'ha959;
    defparam add_558_7.INJECT1_0 = "NO";
    defparam add_558_7.INJECT1_1 = "NO";
    CCU2D add_558_5 (.A0(n12206), .B0(n11808), .C0(n1289[26]), .D0(n1582), 
          .A1(n12200), .B1(n11808), .C1(n1289[27]), .D1(n1581), .CIN(n8826), 
          .COUT(n8827), .S0(n1323[26]), .S1(n1323[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_558_5.INIT0 = 16'ha965;
    defparam add_558_5.INIT1 = 16'ha965;
    defparam add_558_5.INJECT1_0 = "NO";
    defparam add_558_5.INJECT1_1 = "NO";
    CCU2D add_558_3 (.A0(n1289[24]), .B0(n11808), .C0(GND_net), .D0(GND_net), 
          .A1(n12204), .B1(n11808), .C1(n1289[25]), .D1(n1583), .CIN(n8825), 
          .COUT(n8826), .S0(n1323[24]), .S1(n1323[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_558_3.INIT0 = 16'hdddd;
    defparam add_558_3.INIT1 = 16'ha965;
    defparam add_558_3.INJECT1_0 = "NO";
    defparam add_558_3.INJECT1_1 = "NO";
    CCU2D add_558_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8825), .S1(n1323[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_558_1.INIT0 = 16'hF000;
    defparam add_558_1.INIT1 = 16'h0aaa;
    defparam add_558_1.INJECT1_0 = "NO";
    defparam add_558_1.INJECT1_1 = "NO";
    CCU2D add_557_9 (.A0(n12202), .B0(n64_adj_444), .C0(n1255[31]), .D0(n1403), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8824), 
          .S0(n1289[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_557_9.INIT0 = 16'h01ef;
    defparam add_557_9.INIT1 = 16'h0000;
    defparam add_557_9.INJECT1_0 = "NO";
    defparam add_557_9.INJECT1_1 = "NO";
    CCU2D add_557_7 (.A0(\lumdivision[6] ), .B0(n1255[29]), .C0(n11813), 
          .D0(n11815), .A1(\lumdivision[6] ), .B1(n1255[30]), .C1(n11813), 
          .D1(n1404), .CIN(n8823), .COUT(n8824), .S0(n1289[29]), .S1(n1289[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_557_7.INIT0 = 16'ha959;
    defparam add_557_7.INIT1 = 16'ha959;
    defparam add_557_7.INJECT1_0 = "NO";
    defparam add_557_7.INJECT1_1 = "NO";
    CCU2D add_557_5 (.A0(n12206), .B0(n1255[27]), .C0(n11813), .D0(n1407), 
          .A1(n12200), .B1(n1255[28]), .C1(n11813), .D1(n1406), .CIN(n8822), 
          .COUT(n8823), .S0(n1289[27]), .S1(n1289[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_557_5.INIT0 = 16'ha959;
    defparam add_557_5.INIT1 = 16'ha959;
    defparam add_557_5.INJECT1_0 = "NO";
    defparam add_557_5.INJECT1_1 = "NO";
    CCU2D add_557_3 (.A0(n1255[25]), .B0(n11813), .C0(GND_net), .D0(GND_net), 
          .A1(n12204), .B1(n1255[26]), .C1(n11813), .D1(n1408), .CIN(n8821), 
          .COUT(n8822), .S0(n1289[25]), .S1(n1289[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_557_3.INIT0 = 16'hdddd;
    defparam add_557_3.INIT1 = 16'ha959;
    defparam add_557_3.INJECT1_0 = "NO";
    defparam add_557_3.INJECT1_1 = "NO";
    CCU2D add_557_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8821), .S1(n1289[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_557_1.INIT0 = 16'hF000;
    defparam add_557_1.INIT1 = 16'h0aaa;
    defparam add_557_1.INJECT1_0 = "NO";
    defparam add_557_1.INJECT1_1 = "NO";
    CCU2D add_556_7 (.A0(\lumdivision[6] ), .B0(n1221[30]), .C0(n1258_adj_328), 
          .D0(n11818), .A1(\lumdivision[6] ), .B1(n5963), .C1(n1221[31]), 
          .D1(count_flag_N_160[26]), .CIN(n8819), .S0(n1255[30]), .S1(n1255[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_556_7.INIT0 = 16'ha959;
    defparam add_556_7.INIT1 = 16'ha566;
    defparam add_556_7.INJECT1_0 = "NO";
    defparam add_556_7.INJECT1_1 = "NO";
    CCU2D add_556_5 (.A0(n12206), .B0(n1221[28]), .C0(n1258_adj_328), 
          .D0(n11816), .A1(n12200), .B1(n1221[29]), .C1(n1258_adj_328), 
          .D1(n1228), .CIN(n8818), .COUT(n8819), .S0(n1255[28]), .S1(n1255[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_556_5.INIT0 = 16'ha959;
    defparam add_556_5.INIT1 = 16'ha959;
    defparam add_556_5.INJECT1_0 = "NO";
    defparam add_556_5.INJECT1_1 = "NO";
    CCU2D add_556_3 (.A0(n1221[26]), .B0(n1258_adj_328), .C0(GND_net), 
          .D0(GND_net), .A1(\lumdivision[2] ), .B1(n1221[27]), .C1(n1258_adj_328), 
          .D1(n11820), .CIN(n8817), .COUT(n8818), .S0(n1255[26]), .S1(n1255[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_556_3.INIT0 = 16'hdddd;
    defparam add_556_3.INIT1 = 16'ha959;
    defparam add_556_3.INJECT1_0 = "NO";
    defparam add_556_3.INJECT1_1 = "NO";
    CCU2D add_556_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8817), .S1(n1255[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_556_1.INIT0 = 16'hF000;
    defparam add_556_1.INIT1 = 16'h0aaa;
    defparam add_556_1.INJECT1_0 = "NO";
    defparam add_556_1.INJECT1_1 = "NO";
    CCU2D add_555_7 (.A0(n5963), .B0(\lumdivision[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8816), .S0(n1221[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_555_7.INIT0 = 16'ha666;
    defparam add_555_7.INIT1 = 16'h0000;
    defparam add_555_7.INJECT1_0 = "NO";
    defparam add_555_7.INJECT1_1 = "NO";
    CCU2D add_555_5 (.A0(n12206), .B0(n11824), .C0(n12194), .D0(n12195), 
          .A1(\lumdivision[4] ), .B1(n11822), .C1(n12194), .D1(n1047), 
          .CIN(n8815), .COUT(n8816), .S0(n1221[29]), .S1(n1221[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_555_5.INIT0 = 16'ha656;
    defparam add_555_5.INIT1 = 16'ha656;
    defparam add_555_5.INJECT1_0 = "NO";
    defparam add_555_5.INJECT1_1 = "NO";
    CCU2D add_555_3 (.A0(\lumdivision[0] ), .B0(n12194), .C0(GND_net), 
          .D0(GND_net), .A1(\lumdivision[0] ), .B1(n11819), .C1(\lumdivision[2] ), 
          .D1(GND_net), .CIN(n8814), .COUT(n8815), .S0(n1221[27]), .S1(n1221[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_555_3.INIT0 = 16'hdddd;
    defparam add_555_3.INIT1 = 16'h7787;
    defparam add_555_3.INJECT1_0 = "NO";
    defparam add_555_3.INJECT1_1 = "NO";
    CCU2D add_555_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8814), .S1(n1221[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_555_1.INIT0 = 16'hF000;
    defparam add_555_1.INIT1 = 16'h0aaa;
    defparam add_555_1.INJECT1_0 = "NO";
    defparam add_555_1.INJECT1_1 = "NO";
    CCU2D add_205_11 (.A0(lumcnt[9]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n8813), 
          .S0(lumcnt_9__N_103[9]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_11.INIT0 = 16'hd222;
    defparam add_205_11.INIT1 = 16'h0000;
    defparam add_205_11.INJECT1_0 = "NO";
    defparam add_205_11.INJECT1_1 = "NO";
    CCU2D add_205_9 (.A0(lumcnt[7]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[8]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8812), 
          .COUT(n8813), .S0(lumcnt_9__N_103[7]), .S1(lumcnt_9__N_103[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_9.INIT0 = 16'hd222;
    defparam add_205_9.INIT1 = 16'hd222;
    defparam add_205_9.INJECT1_0 = "NO";
    defparam add_205_9.INJECT1_1 = "NO";
    CCU2D add_205_7 (.A0(lumcnt[5]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[6]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8811), 
          .COUT(n8812), .S0(lumcnt_9__N_103[5]), .S1(lumcnt_9__N_103[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_7.INIT0 = 16'hd222;
    defparam add_205_7.INIT1 = 16'hd222;
    defparam add_205_7.INJECT1_0 = "NO";
    defparam add_205_7.INJECT1_1 = "NO";
    CCU2D add_205_5 (.A0(lumcnt[3]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[4]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8810), 
          .COUT(n8811), .S0(lumcnt_9__N_103[3]), .S1(lumcnt_9__N_103[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_5.INIT0 = 16'hd222;
    defparam add_205_5.INIT1 = 16'hd222;
    defparam add_205_5.INJECT1_0 = "NO";
    defparam add_205_5.INJECT1_1 = "NO";
    CCU2D add_205_3 (.A0(lumcnt[1]), .B0(n35), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[2]), .B1(n35), .C1(GND_net), .D1(GND_net), .CIN(n8809), 
          .COUT(n8810), .S0(lumcnt_9__N_103[1]), .S1(lumcnt_9__N_103[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_3.INIT0 = 16'hd222;
    defparam add_205_3.INIT1 = 16'hd222;
    defparam add_205_3.INJECT1_0 = "NO";
    defparam add_205_3.INJECT1_1 = "NO";
    CCU2D add_580_26 (.A0(n11709), .B0(n24), .C0(n2037[24]), .D0(n9049[22]), 
          .A1(n11709), .B1(n24), .C1(n2037[25]), .D1(n9049[23]), .CIN(n9091), 
          .COUT(n9092), .S0(n2071[24]), .S1(n2071[25]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_26.INIT0 = 16'h0b4f;
    defparam add_580_26.INIT1 = 16'h0b4f;
    defparam add_580_26.INJECT1_0 = "NO";
    defparam add_580_26.INJECT1_1 = "NO";
    CCU2D add_197_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(triangle_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n8775), .S1(n280[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(187[6] 199[13])
    defparam add_197_1.INIT0 = 16'hF000;
    defparam add_197_1.INIT1 = 16'h5555;
    defparam add_197_1.INJECT1_0 = "NO";
    defparam add_197_1.INJECT1_1 = "NO";
    CCU2D add_580_24 (.A0(n11709), .B0(n24), .C0(n2037[22]), .D0(n9049[20]), 
          .A1(n11709), .B1(n24), .C1(n2037[23]), .D1(n9049[21]), .CIN(n9090), 
          .COUT(n9091), .S0(n2071[22]), .S1(n2071[23]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_24.INIT0 = 16'h0b4f;
    defparam add_580_24.INIT1 = 16'h0b4f;
    defparam add_580_24.INJECT1_0 = "NO";
    defparam add_580_24.INJECT1_1 = "NO";
    CCU2D add_580_22 (.A0(n11709), .B0(n24), .C0(n2037[20]), .D0(n9049[18]), 
          .A1(n11709), .B1(n24), .C1(n2037[21]), .D1(n9049[19]), .CIN(n9089), 
          .COUT(n9090), .S0(n2071[20]), .S1(n2071[21]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_22.INIT0 = 16'h0b4f;
    defparam add_580_22.INIT1 = 16'h0b4f;
    defparam add_580_22.INJECT1_0 = "NO";
    defparam add_580_22.INJECT1_1 = "NO";
    LUT4 i7_4_lut (.A(n13_adj_445), .B(n9049[16]), .C(n12_adj_446), .D(n9049[17]), 
         .Z(n10580)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut.init = 16'hfffe;
    CCU2D add_580_20 (.A0(n11709), .B0(n24), .C0(n2037[18]), .D0(n9049[16]), 
          .A1(n11709), .B1(n24), .C1(n2037[19]), .D1(n9049[17]), .CIN(n9088), 
          .COUT(n9089), .S0(n2071[18]), .S1(n2071[19]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_20.INIT0 = 16'h0b4f;
    defparam add_580_20.INIT1 = 16'h0b4f;
    defparam add_580_20.INJECT1_0 = "NO";
    defparam add_580_20.INJECT1_1 = "NO";
    LUT4 i5_4_lut (.A(n9049[22]), .B(n9049[20]), .C(n9049[18]), .D(n9049[21]), 
         .Z(n13_adj_445)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i4_2_lut (.A(n9049[19]), .B(n9049[15]), .Z(n12_adj_446)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_2_lut.init = 16'heeee;
    CCU2D add_580_18 (.A0(n11709), .B0(n24), .C0(n2037[16]), .D0(n9049[14]), 
          .A1(n11709), .B1(n24), .C1(n2037[17]), .D1(n9049[15]), .CIN(n9087), 
          .COUT(n9088), .S0(n2071[16]), .S1(n2071[17]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_18.INIT0 = 16'h0b4f;
    defparam add_580_18.INIT1 = 16'h0b4f;
    defparam add_580_18.INJECT1_0 = "NO";
    defparam add_580_18.INJECT1_1 = "NO";
    CCU2D add_580_16 (.A0(n11709), .B0(n24), .C0(n2037[14]), .D0(n9049[12]), 
          .A1(n11709), .B1(n24), .C1(n2037[15]), .D1(n9049[13]), .CIN(n9086), 
          .COUT(n9087), .S0(n2071[14]), .S1(n2071[15]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_16.INIT0 = 16'h0b4f;
    defparam add_580_16.INIT1 = 16'h0b4f;
    defparam add_580_16.INJECT1_0 = "NO";
    defparam add_580_16.INJECT1_1 = "NO";
    LUT4 div_63_i1415_3_lut_rep_350_3_lut (.A(n62_adj_434), .B(n11793), 
         .C(n1391[31]), .Z(n11787)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1415_3_lut_rep_350_3_lut.init = 16'hd0d0;
    LUT4 div_63_i1420_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[26]), 
         .D(n2086_adj_437), .Z(n2248)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1420_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2918_i18_3_lut_4_lut (.A(n9014[5]), .B(n9014[6]), 
         .C(\lumdivision[6] ), .D(n16_adj_447), .Z(n18_adj_448)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2918_i18_3_lut_4_lut.init = 16'hf170;
    LUT4 i2154_2_lut_rep_345_4_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n2244), 
         .D(n1391[31]), .Z(n11782)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2154_2_lut_rep_345_4_lut_4_lut.init = 16'hfdf0;
    CCU2D add_205_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(lumcnt[0]), .B1(n35), .C1(lumcnt_9__N_123), .D1(GND_net), 
          .COUT(n8809), .S1(lumcnt_9__N_103[0]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[4] 203[11])
    defparam add_205_1.INIT0 = 16'hF000;
    defparam add_205_1.INIT1 = 16'hd2d2;
    defparam add_205_1.INJECT1_0 = "NO";
    defparam add_205_1.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_33 (.A0(\lumdivision[0] ), .B0(n4410), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n8798), .S1(count_flag_N_159));
    defparam sub_290_add_2_33.INIT0 = 16'heeee;
    defparam sub_290_add_2_33.INIT1 = 16'h0000;
    defparam sub_290_add_2_33.INJECT1_0 = "NO";
    defparam sub_290_add_2_33.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_31 (.A0(n11841), .B0(\lumdivision[3] ), .C0(\lumdivision[2] ), 
          .D0(\lumdivision[0] ), .A1(n11841), .B1(\lumdivision[3] ), .C1(\lumdivision[2] ), 
          .D1(\lumdivision[0] ), .CIN(n8797), .COUT(n8798));
    defparam sub_290_add_2_31.INIT0 = 16'hfffe;
    defparam sub_290_add_2_31.INIT1 = 16'hfffe;
    defparam sub_290_add_2_31.INJECT1_0 = "NO";
    defparam sub_290_add_2_31.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_29 (.A0(VCC_net), .B0(n62_adj_319), .C0(\lumdivision[4] ), 
          .D0(n12197), .A1(VCC_net), .B1(n11864), .C1(\lumdivision[3] ), 
          .D1(n11841), .CIN(n8796), .COUT(n8797));
    defparam sub_290_add_2_29.INIT0 = 16'hffe8;
    defparam sub_290_add_2_29.INIT1 = 16'hffe8;
    defparam sub_290_add_2_29.INJECT1_0 = "NO";
    defparam sub_290_add_2_29.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_27 (.A0(n11814), .B0(\lumdivision[6] ), .C0(n60_adj_324), 
          .D0(\lumdivision[9] ), .A1(n5963), .B1(\lumdivision[9] ), .C1(n62_adj_327), 
          .D1(\lumdivision[6] ), .CIN(n8795), .COUT(n8796));
    defparam sub_290_add_2_27.INIT0 = 16'hffd8;
    defparam sub_290_add_2_27.INIT1 = 16'hffec;
    defparam sub_290_add_2_27.INJECT1_0 = "NO";
    defparam sub_290_add_2_27.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_25 (.A0(n1748), .B0(n1749), .C0(n60_adj_449), 
          .D0(\lumdivision[9] ), .A1(n64_adj_443), .B1(\lumdivision[9] ), 
          .C1(GND_net), .D1(GND_net), .CIN(n8794), .COUT(n8795));
    defparam sub_290_add_2_25.INIT0 = 16'hff10;
    defparam sub_290_add_2_25.INIT1 = 16'h1eee;
    defparam sub_290_add_2_25.INJECT1_0 = "NO";
    defparam sub_290_add_2_25.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_23 (.A0(n62_adj_434), .B0(n11793), .C0(GND_net), 
          .D0(GND_net), .A1(n11795), .B1(n58_adj_450), .C1(n11796), 
          .D1(\lumdivision[9] ), .CIN(n8793), .COUT(n8794));
    defparam sub_290_add_2_23.INIT0 = 16'hd222;
    defparam sub_290_add_2_23.INIT1 = 16'hf404;
    defparam sub_290_add_2_23.INJECT1_0 = "NO";
    defparam sub_290_add_2_23.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_21 (.A0(n58_adj_356), .B0(n11775), .C0(GND_net), 
          .D0(GND_net), .A1(n60_adj_377), .B1(n11782), .C1(GND_net), 
          .D1(GND_net), .CIN(n8792), .COUT(n8793));
    defparam sub_290_add_2_21.INIT0 = 16'hd222;
    defparam sub_290_add_2_21.INIT1 = 16'hd222;
    defparam sub_290_add_2_21.INJECT1_0 = "NO";
    defparam sub_290_add_2_21.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_19 (.A0(n54), .B0(n11761), .C0(GND_net), .D0(GND_net), 
          .A1(n56_adj_330), .B1(n4307), .C1(GND_net), .D1(GND_net), 
          .CIN(n8791), .COUT(n8792));
    defparam sub_290_add_2_19.INIT0 = 16'hd222;
    defparam sub_290_add_2_19.INIT1 = 16'hd222;
    defparam sub_290_add_2_19.INJECT1_0 = "NO";
    defparam sub_290_add_2_19.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_17 (.A0(n50_adj_429), .B0(n11747), .C0(triangle_cnt[15]), 
          .D0(GND_net), .A1(n52_adj_413), .B1(n11754), .C1(GND_net), 
          .D1(GND_net), .CIN(n8790), .COUT(n8791));
    defparam sub_290_add_2_17.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_17.INIT1 = 16'hd222;
    defparam sub_290_add_2_17.INJECT1_0 = "NO";
    defparam sub_290_add_2_17.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_15 (.A0(n46_adj_451), .B0(n4302), .C0(triangle_cnt[13]), 
          .D0(GND_net), .A1(n48), .B1(n11741), .C1(triangle_cnt[14]), 
          .D1(GND_net), .CIN(n8789), .COUT(n8790));
    defparam sub_290_add_2_15.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_15.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_15.INJECT1_0 = "NO";
    defparam sub_290_add_2_15.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_13 (.A0(n42_adj_418), .B0(n4300), .C0(triangle_cnt[11]), 
          .D0(GND_net), .A1(n44_adj_421), .B1(n4301), .C1(triangle_cnt[12]), 
          .D1(GND_net), .CIN(n8788), .COUT(n8789));
    defparam sub_290_add_2_13.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_13.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_13.INJECT1_0 = "NO";
    defparam sub_290_add_2_13.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_11 (.A0(n38_adj_400), .B0(n4320), .C0(triangle_cnt[9]), 
          .D0(GND_net), .A1(n40_adj_411), .B1(n4290), .C1(triangle_cnt[10]), 
          .D1(GND_net), .CIN(n8787), .COUT(n8788));
    defparam sub_290_add_2_11.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_11.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_11.INJECT1_0 = "NO";
    defparam sub_290_add_2_11.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_9 (.A0(n34_adj_392), .B0(n4317), .C0(triangle_cnt[7]), 
          .D0(GND_net), .A1(n36_adj_396), .B1(n4318), .C1(triangle_cnt[8]), 
          .D1(GND_net), .CIN(n8786), .COUT(n8787));
    defparam sub_290_add_2_9.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_9.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_9.INJECT1_0 = "NO";
    defparam sub_290_add_2_9.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_7 (.A0(n30), .B0(n4315), .C0(triangle_cnt[5]), 
          .D0(GND_net), .A1(n32_adj_386), .B1(n4316), .C1(triangle_cnt[6]), 
          .D1(GND_net), .CIN(n8785), .COUT(n8786));
    defparam sub_290_add_2_7.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_7.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_7.INJECT1_0 = "NO";
    defparam sub_290_add_2_7.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_5 (.A0(n26_adj_452), .B0(n4313), .C0(triangle_cnt[3]), 
          .D0(GND_net), .A1(n28_adj_453), .B1(n4314), .C1(triangle_cnt[4]), 
          .D1(GND_net), .CIN(n8784), .COUT(n8785));
    defparam sub_290_add_2_5.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_5.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_5.INJECT1_0 = "NO";
    defparam sub_290_add_2_5.INJECT1_1 = "NO";
    CCU2D sub_290_add_2_3 (.A0(n22), .B0(n4311), .C0(triangle_cnt[1]), 
          .D0(GND_net), .A1(n24), .B1(n11709), .C1(triangle_cnt[2]), 
          .D1(GND_net), .CIN(n8783), .COUT(n8784));
    defparam sub_290_add_2_3.INIT0 = 16'hd2d2;
    defparam sub_290_add_2_3.INIT1 = 16'hd2d2;
    defparam sub_290_add_2_3.INJECT1_0 = "NO";
    defparam sub_290_add_2_3.INJECT1_1 = "NO";
    LUT4 div_63_i1421_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[25]), 
         .D(n11791), .Z(n2249)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1421_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1423_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[23]), 
         .D(n2089_adj_331), .Z(n2251)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1423_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1424_3_lut_4_lut (.A(n62_adj_434), .B(n11793), .C(n1391[22]), 
         .D(n2090_adj_332), .Z(n2252)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1424_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i4207_2_lut_3_lut (.A(n62_adj_434), .B(n11793), .C(n1391[21]), 
         .Z(n2253)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4207_2_lut_3_lut.init = 16'hd0d0;
    LUT4 div_63_LessThan_1337_i50_3_lut_3_lut (.A(n11791), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n50_adj_454)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1337_i50_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i2132_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[21]), 
         .D(n11745), .Z(n3303)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2132_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i764_1_lut (.A(n1258_adj_328), .Z(count_flag_N_160[26])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i764_1_lut.init = 16'h5555;
    LUT4 i2146_3_lut_rep_353 (.A(n2086_adj_437), .B(n2085_adj_423), .C(\lumdivision[6] ), 
         .Z(n11790)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2146_3_lut_rep_353.init = 16'h7e7e;
    LUT4 div_63_LessThan_1337_i52_3_lut_4_lut (.A(n2086_adj_437), .B(n2085_adj_423), 
         .C(\lumdivision[6] ), .D(n50_adj_454), .Z(n52_adj_455)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1337_i52_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i1312_3_lut_rep_354 (.A(n1922), .B(n1357[25]), .C(n11797), 
         .Z(n11791)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1312_3_lut_rep_354.init = 16'hacac;
    LUT4 div_63_LessThan_1337_i51_2_lut_rep_352_4_lut (.A(n1922), .B(n1357[25]), 
         .C(n11797), .D(\lumdivision[4] ), .Z(n11789)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1337_i51_2_lut_rep_352_4_lut.init = 16'h53ac;
    LUT4 div_63_LessThan_2918_i17_2_lut_rep_278 (.A(n9014[4]), .B(\lumdivision[4] ), 
         .Z(n11715)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2918_i17_2_lut_rep_278.init = 16'h6666;
    CCU2D add_580_14 (.A0(n11709), .B0(n24), .C0(n2037[12]), .D0(n9049[10]), 
          .A1(n11709), .B1(n24), .C1(n2037[13]), .D1(n9049[11]), .CIN(n9085), 
          .COUT(n9086), .S0(n2071[12]), .S1(n2071[13]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_14.INIT0 = 16'h0b4f;
    defparam add_580_14.INIT1 = 16'h0b4f;
    defparam add_580_14.INJECT1_0 = "NO";
    defparam add_580_14.INJECT1_1 = "NO";
    LUT4 div_63_i1309_3_lut_rep_355 (.A(n1919), .B(n1357[28]), .C(n11797), 
         .Z(n11792)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1309_3_lut_rep_355.init = 16'hacac;
    LUT4 i1_2_lut_4_lut_adj_22 (.A(n1919), .B(n1357[28]), .C(n11797), 
         .D(n56_adj_456), .Z(n4_adj_457)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_22.init = 16'h5300;
    LUT4 i4315_2_lut_rep_351_4_lut (.A(n11803), .B(n1357[31]), .C(n11797), 
         .D(n62_adj_434), .Z(n11788)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4315_2_lut_rep_351_4_lut.init = 16'h5300;
    LUT4 i4191_2_lut_3_lut (.A(n1918), .B(n11802), .C(n58_adj_450), .Z(n62_adj_438)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4191_2_lut_3_lut.init = 16'h1010;
    LUT4 i4206_2_lut_4_lut_4_lut (.A(n11803), .B(\lumdivision[9] ), .C(n1357[22]), 
         .D(n62_adj_438), .Z(n2090_adj_332)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A (B+((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4206_2_lut_4_lut_4_lut.init = 16'h20b0;
    LUT4 div_63_i2131_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[22]), 
         .D(n3161), .Z(n3302)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2131_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1226_i64_3_lut_rep_360 (.A(n11803), .B(\lumdivision[9] ), 
         .C(n62_adj_438), .Z(n11797)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1226_i64_3_lut_rep_360.init = 16'hd4d4;
    LUT4 div_63_i1306_3_lut_rep_356_4_lut (.A(n11803), .B(n12202), .C(n62_adj_438), 
         .D(n1357[31]), .Z(n11793)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A !(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1306_3_lut_rep_356_4_lut.init = 16'hab80;
    LUT4 i4314_1_lut_3_lut_4_lut (.A(n11803), .B(\lumdivision[9] ), .C(n62_adj_438), 
         .D(n1357[31]), .Z(n5857)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A !(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4314_1_lut_3_lut_4_lut.init = 16'h547f;
    LUT4 div_63_LessThan_1226_i52_3_lut_3_lut (.A(n11801), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n52_adj_458)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1226_i52_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2142_3_lut_rep_362 (.A(n1920), .B(n1919), .C(\lumdivision[6] ), 
         .Z(n11799)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2142_3_lut_rep_362.init = 16'h7e7e;
    FD1S3IX lumdivision_i3_rep_441 (.D(lumlevel[1]), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(n12206)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i3_rep_441.GSR = "DISABLED";
    LUT4 div_63_LessThan_1226_i54_3_lut_4_lut (.A(n1920), .B(n1919), .C(\lumdivision[6] ), 
         .D(n52_adj_458), .Z(n54_adj_459)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1226_i54_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i1314_3_lut_4_lut (.A(n1323[23]), .B(n11804), .C(n11797), 
         .D(n1357[23]), .Z(n2089_adj_331)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1314_3_lut_4_lut.init = 16'h2f20;
    LUT4 div_63_LessThan_1226_i53_2_lut_rep_361_4_lut (.A(n1753), .B(n1323[26]), 
         .C(n11804), .D(\lumdivision[4] ), .Z(n11798)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1226_i53_2_lut_rep_361_4_lut.init = 16'h53ac;
    LUT4 i2144_2_lut_rep_358_4_lut (.A(n1749), .B(n1323[30]), .C(n11804), 
         .D(n1918), .Z(n11795)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2144_2_lut_rep_358_4_lut.init = 16'hffac;
    LUT4 div_63_i2134_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[19]), 
         .D(n3164), .Z(n3305)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2134_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i409_1_lut (.A(lumDN_c), .Z(n853)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(11[2:7])
    defparam i409_1_lut.init = 16'h5555;
    LUT4 i648_2_lut_rep_367 (.A(n64_adj_442), .B(n12202), .Z(n11804)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i648_2_lut_rep_367.init = 16'heeee;
    LUT4 div_63_i1195_3_lut_rep_366_4_lut (.A(n64_adj_442), .B(\lumdivision[9] ), 
         .C(n1323[31]), .D(n1748), .Z(n11803)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1195_3_lut_rep_366_4_lut.init = 16'hfe10;
    LUT4 i4205_2_lut_rep_363_3_lut (.A(n64_adj_442), .B(\lumdivision[9] ), 
         .C(n1323[23]), .Z(n11800)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4205_2_lut_rep_363_3_lut.init = 16'h1010;
    LUT4 div_63_i1197_3_lut_4_lut (.A(n64_adj_442), .B(\lumdivision[9] ), 
         .C(n1323[29]), .D(n1750), .Z(n1918)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1197_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1200_3_lut_rep_364_4_lut (.A(n64_adj_442), .B(\lumdivision[9] ), 
         .C(n1323[26]), .D(n1753), .Z(n11801)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1200_3_lut_rep_364_4_lut.init = 16'hfe10;
    LUT4 div_63_i2135_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[18]), 
         .D(n11744), .Z(n3306)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2135_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1198_3_lut_4_lut (.A(n64_adj_442), .B(n12202), .C(n1323[28]), 
         .D(n1751), .Z(n1919)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1198_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1199_3_lut_4_lut (.A(n64_adj_442), .B(n12202), .C(n1323[27]), 
         .D(n11807), .Z(n1920)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1199_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1196_3_lut_rep_365_4_lut (.A(n64_adj_442), .B(n12202), 
         .C(n1323[30]), .D(n1749), .Z(n11802)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1196_3_lut_rep_365_4_lut.init = 16'hfe10;
    LUT4 div_63_i1201_3_lut_4_lut (.A(n64_adj_442), .B(n12202), .C(n1323[25]), 
         .D(n1754), .Z(n1922)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1201_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1202_3_lut_4_lut (.A(n64_adj_442), .B(n12202), .C(n1323[24]), 
         .D(n1755), .Z(n1923)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1202_3_lut_4_lut.init = 16'hfe10;
    LUT4 i405_1_lut (.A(lumUP_c), .Z(n850)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(10[2:7])
    defparam i405_1_lut.init = 16'h5555;
    LUT4 div_63_LessThan_2918_i16_3_lut_3_lut (.A(n9014[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n16_adj_447)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2918_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i414_1_lut (.A(frqUP_c), .Z(n856)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(12[2:7])
    defparam i414_1_lut.init = 16'h5555;
    LUT4 div_63_LessThan_1226_i63_2_lut_rep_359_4_lut_4_lut (.A(n64_adj_442), 
         .B(\lumdivision[9] ), .C(n1323[31]), .D(n1748), .Z(n11796)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (D)+!B !(C)))) */ ;
    defparam div_63_LessThan_1226_i63_2_lut_rep_359_4_lut_4_lut.init = 16'h32dc;
    LUT4 i2138_3_lut_rep_368 (.A(n1751), .B(n1750), .C(\lumdivision[6] ), 
         .Z(n11805)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2138_3_lut_rep_368.init = 16'h7e7e;
    LUT4 div_63_LessThan_1113_i56_3_lut_4_lut (.A(n1751), .B(n1750), .C(\lumdivision[6] ), 
         .D(n54_adj_460), .Z(n56_adj_461)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1113_i56_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_1113_i54_3_lut_3_lut (.A(n11807), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n54_adj_460)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1113_i54_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_580_12 (.A0(n12202), .B0(n11708), .C0(n2037[10]), .D0(n9049[8]), 
          .A1(n11709), .B1(n24), .C1(n2037[11]), .D1(n9049[9]), .CIN(n9084), 
          .COUT(n9085), .S0(n2071[10]), .S1(n2071[11]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_12.INIT0 = 16'ha965;
    defparam add_580_12.INIT1 = 16'h0b4f;
    defparam add_580_12.INJECT1_0 = "NO";
    defparam add_580_12.INJECT1_1 = "NO";
    FD1S3IX sawtooth_cnt_395__i0 (.D(n69[0]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i0.GSR = "ENABLED";
    CCU2D add_580_10 (.A0(n11709), .B0(n24), .C0(n2037[8]), .D0(n9049[6]), 
          .A1(n11709), .B1(n24), .C1(n2037[9]), .D1(n9049[7]), .CIN(n9083), 
          .COUT(n9084), .S0(n2071[8]), .S1(n2071[9]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_10.INIT0 = 16'h0b4f;
    defparam add_580_10.INIT1 = 16'h0b4f;
    defparam add_580_10.INJECT1_0 = "NO";
    defparam add_580_10.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1113_i55_2_lut_rep_369_4_lut (.A(n1581), .B(n1289[27]), 
         .C(n11808), .D(\lumdivision[4] ), .Z(n11806)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1113_i55_2_lut_rep_369_4_lut.init = 16'h53ac;
    LUT4 div_63_i2137_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[16]), 
         .D(n3167), .Z(n3308)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2137_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i647_2_lut_rep_371 (.A(n64_adj_443), .B(\lumdivision[9] ), .Z(n11808)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i647_2_lut_rep_371.init = 16'heeee;
    LUT4 div_63_i1085_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[28]), .D(n11811), .Z(n1751)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1085_3_lut_4_lut.init = 16'hfe10;
    LUT4 i419_1_lut (.A(frqDN_c), .Z(n859)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/top.vhd(13[2:7])
    defparam i419_1_lut.init = 16'h5555;
    CCU2D add_580_8 (.A0(\lumdivision[6] ), .B0(n11708), .C0(n2037[6]), 
          .D0(n9049[4]), .A1(\lumdivision[6] ), .B1(n11708), .C1(n2037[7]), 
          .D1(n9049[5]), .CIN(n9082), .COUT(n9083), .S0(n2071[6]), .S1(n2071[7]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_8.INIT0 = 16'ha965;
    defparam add_580_8.INIT1 = 16'ha965;
    defparam add_580_8.INJECT1_0 = "NO";
    defparam add_580_8.INJECT1_1 = "NO";
    LUT4 div_63_i1084_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[29]), .D(n1579), .Z(n1750)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1084_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1086_3_lut_rep_370_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[27]), .D(n1581), .Z(n11807)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1086_3_lut_rep_370_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_adj_23 (.A(n32), .B(n31), .Z(n4315)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_23.init = 16'heeee;
    LUT4 i7_4_lut_adj_24 (.A(n13_adj_462), .B(n8981[12]), .C(n12_adj_463), 
         .D(n8981[13]), .Z(n30_adj_385)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_24.init = 16'hfffe;
    LUT4 i5_4_lut_adj_25 (.A(n8981[18]), .B(n8981[16]), .C(n8981[14]), 
         .D(n8981[17]), .Z(n13_adj_462)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_25.init = 16'hfffe;
    LUT4 i4_2_lut_adj_26 (.A(n8981[15]), .B(n8981[11]), .Z(n12_adj_463)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_2_lut_adj_26.init = 16'heeee;
    LUT4 i7_4_lut_adj_27 (.A(n8981[25]), .B(n14_adj_464), .C(n10_adj_465), 
         .D(n8981[10]), .Z(n29)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_27.init = 16'hfffe;
    LUT4 div_63_i1082_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[31]), .D(n11812), .Z(n1748)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1082_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1083_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[30]), .D(n1578), .Z(n1749)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1083_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1087_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[26]), .D(n1582), .Z(n1753)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1087_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i1088_3_lut_4_lut (.A(n64_adj_443), .B(\lumdivision[9] ), 
         .C(n1289[25]), .D(n1583), .Z(n1754)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i1088_3_lut_4_lut.init = 16'hfe10;
    LUT4 i6_4_lut (.A(n8981[20]), .B(n8981[23]), .C(n8981[21]), .D(n8981[19]), 
         .Z(n14_adj_464)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut_adj_28 (.A(n8981[22]), .B(n8981[24]), .Z(n10_adj_465)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_adj_28.init = 16'heeee;
    LUT4 sawtooth_cnt_15__I_0_i4_4_lut (.A(triangle_cnt[0]), .B(triangle_cnt[1]), 
         .C(sawtooth_cnt_c[1]), .D(sawtooth_cnt_c[0]), .Z(n4_adj_466)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i4_4_lut.init = 16'h0c8e;
    LUT4 i4203_2_lut_3_lut (.A(n64_adj_443), .B(\lumdivision[9] ), .C(n1289[24]), 
         .Z(n1755)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4203_2_lut_3_lut.init = 16'h1010;
    LUT4 div_63_LessThan_2762_i32_3_lut (.A(n30_adj_389), .B(\lumdivision[9] ), 
         .C(n8981[9]), .Z(n32_adj_386)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2762_i32_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_29 (.A(n8981[8]), .B(n26_adj_467), .C(n8981[7]), 
         .Z(n30_adj_389)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_29.init = 16'h0404;
    LUT4 i1_2_lut_adj_30 (.A(n30_adj_385), .B(n29), .Z(n4316)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_30.init = 16'heeee;
    LUT4 i7_4_lut_adj_31 (.A(n13_adj_468), .B(n11), .C(n8965[16]), .D(n8965[12]), 
         .Z(n28_adj_390)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_31.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_395__i12 (.D(n69[12]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i12.GSR = "ENABLED";
    LUT4 div_63_LessThan_998_i56_3_lut_3_lut (.A(n11811), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n56_adj_469)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_998_i56_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2136_3_lut_rep_373 (.A(n1579), .B(n1578), .C(\lumdivision[6] ), 
         .Z(n11810)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2136_3_lut_rep_373.init = 16'h7e7e;
    LUT4 i5_4_lut_adj_32 (.A(n8965[18]), .B(n8965[15]), .C(n8965[19]), 
         .D(n8965[17]), .Z(n13_adj_468)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_32.init = 16'hfffe;
    LUT4 div_63_LessThan_998_i58_3_lut_4_lut (.A(n1579), .B(n1578), .C(\lumdivision[6] ), 
         .D(n56_adj_469), .Z(n58)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_998_i58_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_998_i57_2_lut_rep_372_4_lut (.A(n1406), .B(n1255[28]), 
         .C(n11813), .D(\lumdivision[4] ), .Z(n11809)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_998_i57_2_lut_rep_372_4_lut.init = 16'h53ac;
    LUT4 i3_2_lut (.A(n8965[13]), .B(n8965[14]), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 div_63_i2138_3_lut_4_lut (.A(n48), .B(n11741), .C(n1629[15]), 
         .D(n3168), .Z(n3309)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2138_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i6_4_lut_adj_33 (.A(n11_adj_470), .B(n8965[10]), .C(n10_adj_471), 
         .D(n8965[21]), .Z(n27_adj_391)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut_adj_33.init = 16'hfffe;
    LUT4 i4_3_lut (.A(n8965[20]), .B(n8965[11]), .C(n8965[23]), .Z(n11_adj_470)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_adj_34 (.A(n8965[22]), .B(n8965[24]), .Z(n10_adj_471)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_34.init = 16'heeee;
    LUT4 div_63_LessThan_2681_i34_3_lut (.A(n32_adj_393), .B(\lumdivision[9] ), 
         .C(n8965[9]), .Z(n34_adj_392)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2681_i34_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_35 (.A(n8965[8]), .B(n28_adj_472), .C(n8965[7]), 
         .Z(n32_adj_393)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_35.init = 16'h0404;
    LUT4 i1_2_lut_rep_304 (.A(n10570), .B(n10655), .Z(n11741)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_rep_304.init = 16'heeee;
    FD1S3IX sawtooth_cnt_395__i11 (.D(n69[11]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i11.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_36 (.A(n27_adj_391), .B(n28_adj_390), .Z(n4317)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_36.init = 16'heeee;
    LUT4 i7_4_lut_adj_37 (.A(n13_adj_473), .B(n8950[14]), .C(n12_adj_474), 
         .D(n8950[15]), .Z(n26_adj_394)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_37.init = 16'hfffe;
    LUT4 i5_4_lut_adj_38 (.A(n8950[20]), .B(n8950[18]), .C(n8950[16]), 
         .D(n8950[19]), .Z(n13_adj_473)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_38.init = 16'hfffe;
    LUT4 i4307_2_lut_4_lut (.A(n1403), .B(n1255[31]), .C(n11813), .D(n62_adj_321), 
         .Z(n64_adj_443)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4307_2_lut_4_lut.init = 16'h5300;
    FD1S3IX sawtooth_cnt_395__i10 (.D(n69[10]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i10.GSR = "ENABLED";
    LUT4 i4_2_lut_adj_39 (.A(n8950[17]), .B(n8950[13]), .Z(n12_adj_474)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_2_lut_adj_39.init = 16'heeee;
    CCU2D add_580_6 (.A0(n12206), .B0(n11708), .C0(n2037[4]), .D0(n9049[2]), 
          .A1(n12200), .B1(n11708), .C1(n2037[5]), .D1(n9049[3]), .CIN(n9081), 
          .COUT(n9082), .S0(n2071[4]), .S1(n2071[5]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_6.INIT0 = 16'ha965;
    defparam add_580_6.INIT1 = 16'ha965;
    defparam add_580_6.INJECT1_0 = "NO";
    defparam add_580_6.INJECT1_1 = "NO";
    LUT4 i5_4_lut_adj_40 (.A(n9_adj_475), .B(n7_adj_476), .C(n8950[10]), 
         .D(n8950[22]), .Z(n25_adj_395)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_40.init = 16'hfffe;
    LUT4 i3_2_lut_adj_41 (.A(n8950[23]), .B(n8950[21]), .Z(n9_adj_475)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_41.init = 16'heeee;
    LUT4 i646_2_lut_rep_376 (.A(n64_adj_444), .B(\lumdivision[9] ), .Z(n11813)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i646_2_lut_rep_376.init = 16'heeee;
    LUT4 div_63_i1944_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[17]), 
         .D(n2875), .Z(n3022)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1944_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i969_3_lut_4_lut (.A(n64_adj_444), .B(\lumdivision[9] ), 
         .C(n1255[29]), .D(n11815), .Z(n1579)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i969_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_i970_3_lut_rep_374_4_lut (.A(n64_adj_444), .B(\lumdivision[9] ), 
         .C(n1255[28]), .D(n1406), .Z(n11811)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i970_3_lut_rep_374_4_lut.init = 16'hfe10;
    LUT4 i4201_2_lut (.A(n1221[26]), .B(n1258_adj_328), .Z(n1408)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4201_2_lut.init = 16'h2222;
    LUT4 i2474_3_lut_rep_279 (.A(n8997[5]), .B(n8997[6]), .C(\lumdivision[6] ), 
         .Z(n11716)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2474_3_lut_rep_279.init = 16'h7e7e;
    LUT4 div_63_i971_3_lut_4_lut (.A(n64_adj_444), .B(\lumdivision[9] ), 
         .C(n1255[27]), .D(n1407), .Z(n1581)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i971_3_lut_4_lut.init = 16'hfe10;
    LUT4 i1_2_lut_adj_42 (.A(n8950[11]), .B(n8950[12]), .Z(n7_adj_476)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_42.init = 16'heeee;
    LUT4 div_63_LessThan_2598_i36_3_lut (.A(n34_adj_397), .B(\lumdivision[9] ), 
         .C(n8950[9]), .Z(n36_adj_396)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2598_i36_3_lut.init = 16'h8e8e;
    LUT4 i4152_2_lut_rep_303_3_lut (.A(n10570), .B(n10655), .C(n48), .Z(n11740)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4152_2_lut_rep_303_3_lut.init = 16'h1010;
    LUT4 i2_3_lut_adj_43 (.A(n8950[8]), .B(n30_adj_477), .C(n8950[7]), 
         .Z(n34_adj_397)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_43.init = 16'h0404;
    LUT4 i1_2_lut_adj_44 (.A(n26_adj_394), .B(n25_adj_395), .Z(n4318)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_44.init = 16'heeee;
    LUT4 i7_4_lut_adj_45 (.A(n13_adj_478), .B(n11_adj_479), .C(n8935[18]), 
         .D(n8935[14]), .Z(n24_adj_398)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_45.init = 16'hfffe;
    LUT4 i5_4_lut_adj_46 (.A(n8935[21]), .B(n8935[19]), .C(n8935[17]), 
         .D(n8935[20]), .Z(n13_adj_478)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_46.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_395__i9 (.D(n69[9]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i9.GSR = "ENABLED";
    LUT4 i3_2_lut_adj_47 (.A(n8935[15]), .B(n8935[16]), .Z(n11_adj_479)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_47.init = 16'heeee;
    LUT4 i4_4_lut_adj_48 (.A(n8935[11]), .B(n8935[22]), .C(n8935[10]), 
         .D(n6_adj_480), .Z(n23_adj_399)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_4_lut_adj_48.init = 16'hfffe;
    LUT4 i1_2_lut_adj_49 (.A(n8935[12]), .B(n8935[13]), .Z(n6_adj_480)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_49.init = 16'heeee;
    LUT4 div_63_LessThan_2513_i38_3_lut (.A(n36_adj_409), .B(\lumdivision[9] ), 
         .C(n8935[9]), .Z(n38_adj_400)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2513_i38_3_lut.init = 16'h8e8e;
    PFUMX i9281 (.BLUT(n11512), .ALUT(n11511), .C0(n11858), .Z(n11513));
    LUT4 i2_3_lut_adj_50 (.A(n8935[8]), .B(n32_adj_481), .C(n8935[7]), 
         .Z(n36_adj_409)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_50.init = 16'h0404;
    LUT4 div_63_i967_3_lut_rep_375_4_lut (.A(n64_adj_444), .B(\lumdivision[9] ), 
         .C(n1255[31]), .D(n1403), .Z(n11812)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i967_3_lut_rep_375_4_lut.init = 16'hfe10;
    LUT4 div_63_i972_3_lut_4_lut (.A(n64_adj_444), .B(\lumdivision[9] ), 
         .C(n1255[26]), .D(n1408), .Z(n1582)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i972_3_lut_4_lut.init = 16'hfe10;
    LUT4 i4202_2_lut_3_lut (.A(n64_adj_444), .B(\lumdivision[9] ), .C(n1255[25]), 
         .Z(n1583)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i4202_2_lut_3_lut.init = 16'h1010;
    LUT4 div_63_i968_3_lut_4_lut (.A(n64_adj_444), .B(n12202), .C(n1255[30]), 
         .D(n1404), .Z(n1578)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam div_63_i968_3_lut_4_lut.init = 16'hfe10;
    LUT4 div_63_LessThan_2841_i20_3_lut_4_lut (.A(n8997[5]), .B(n8997[6]), 
         .C(\lumdivision[6] ), .D(n18_adj_482), .Z(n20_adj_483)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2841_i20_3_lut_4_lut.init = 16'hf170;
    LUT4 i9212_3_lut_4_lut (.A(n11815), .B(\lumdivision[4] ), .C(\lumdivision[3] ), 
         .D(n1406), .Z(n11009)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9212_3_lut_4_lut.init = 16'h6ff6;
    LUT4 div_63_LessThan_881_i58_3_lut_3_lut (.A(n11815), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n58_adj_323)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_881_i58_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2134_3_lut_rep_377 (.A(n1404), .B(n1403), .C(\lumdivision[6] ), 
         .Z(n11814)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2134_3_lut_rep_377.init = 16'h7e7e;
    LUT4 i2135_3_lut_4_lut (.A(n1404), .B(n1403), .C(\lumdivision[6] ), 
         .D(n60_adj_324), .Z(n64_adj_444)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2135_3_lut_4_lut.init = 16'hf170;
    LUT4 i9210_4_lut (.A(n11849), .B(n11848), .C(n11855), .D(n10938), 
         .Z(n11101)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9210_4_lut.init = 16'hefee;
    LUT4 i1_2_lut_adj_51 (.A(n24_adj_398), .B(n23_adj_399), .Z(n4320)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_51.init = 16'heeee;
    FD1S3IX sawtooth_cnt_395__i8 (.D(n69[8]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i8.GSR = "ENABLED";
    LUT4 i7_4_lut_adj_52 (.A(n8921[21]), .B(n14_adj_484), .C(n10_adj_485), 
         .D(n8921[10]), .Z(n22_adj_410)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_52.init = 16'hfffe;
    LUT4 i6_4_lut_adj_53 (.A(n8921[16]), .B(n8921[19]), .C(n8921[17]), 
         .D(n8921[15]), .Z(n14_adj_484)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut_adj_53.init = 16'hfffe;
    LUT4 i2_2_lut_adj_54 (.A(n8921[18]), .B(n8921[20]), .Z(n10_adj_485)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_adj_54.init = 16'heeee;
    LUT4 i3_4_lut (.A(n8921[14]), .B(n8921[13]), .C(n8921[12]), .D(n8921[11]), 
         .Z(n21)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 div_63_LessThan_2426_i40_3_lut (.A(n38_adj_412), .B(\lumdivision[9] ), 
         .C(n8921[9]), .Z(n40_adj_411)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2426_i40_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_55 (.A(n8921[8]), .B(n34_adj_486), .C(n8921[7]), 
         .Z(n38_adj_412)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_55.init = 16'h0404;
    LUT4 i1_2_lut_adj_56 (.A(n21), .B(n22_adj_410), .Z(n4290)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_56.init = 16'heeee;
    LUT4 i6_4_lut_adj_57 (.A(n11_adj_487), .B(n8907[19]), .C(n10_adj_488), 
         .D(n8907[10]), .Z(n20_adj_417)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut_adj_57.init = 16'hfffe;
    LUT4 div_63_i733_3_lut_3_lut_4_lut_4_lut_4_lut (.A(\lumdivision[0] ), 
         .B(n12194), .C(n11833), .D(\lumdivision[2] ), .Z(n1228)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (B+!(D)))) */ ;
    defparam div_63_i733_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h1b28;
    LUT4 i2_4_lut_4_lut (.A(frqlevel[1]), .B(n833[1]), .C(n11817), .D(frqlevel[2]), 
         .Z(frqlevel_2__N_67[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i2_4_lut_4_lut.init = 16'hdb24;
    LUT4 div_63_LessThan_2841_i19_2_lut_rep_280 (.A(n8997[4]), .B(\lumdivision[4] ), 
         .Z(n11717)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2841_i19_2_lut_rep_280.init = 16'h6666;
    LUT4 i9215_4_lut (.A(n11810), .B(n11809), .C(n1581), .D(\lumdivision[3] ), 
         .Z(n11001)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9215_4_lut.init = 16'heffe;
    LUT4 i9213_3_lut_4_lut (.A(n11818), .B(\lumdivision[4] ), .C(\lumdivision[3] ), 
         .D(n1228), .Z(n11005)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9213_3_lut_4_lut.init = 16'h6ff6;
    FD1S3IX sawtooth_cnt_395__i7 (.D(n69[7]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i7.GSR = "ENABLED";
    LUT4 i4_3_lut_adj_58 (.A(n8907[16]), .B(n8907[17]), .C(n8907[11]), 
         .Z(n11_adj_487)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_3_lut_adj_58.init = 16'hfefe;
    LUT4 i3_2_lut_adj_59 (.A(n8907[18]), .B(n8907[20]), .Z(n10_adj_488)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_59.init = 16'heeee;
    LUT4 i3_4_lut_adj_60 (.A(n8907[15]), .B(n8907[14]), .C(n8907[13]), 
         .D(n8907[12]), .Z(n19)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_60.init = 16'hfffe;
    LUT4 div_63_LessThan_762_i60_3_lut_3_lut (.A(n11818), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n60_adj_326)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_762_i60_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4214_2_lut_3_lut_4_lut (.A(n10570), .B(n10655), .C(n1629[14]), 
         .D(n48), .Z(n3310)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4214_2_lut_3_lut_4_lut.init = 16'he0f0;
    LUT4 div_63_LessThan_2841_i18_3_lut_3_lut (.A(n8997[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n18_adj_482)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2841_i18_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i853_3_lut_4_lut (.A(\lumdivision[0] ), .B(n11819), .C(n1258_adj_328), 
         .D(n1221[28]), .Z(n1406)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i853_3_lut_4_lut.init = 16'h8f80;
    LUT4 i470_2_lut_rep_380 (.A(frqlevel[0]), .B(n5942), .Z(n11817)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i470_2_lut_rep_380.init = 16'h2222;
    LUT4 div_63_LessThan_2337_i42_3_lut (.A(n40_adj_419), .B(\lumdivision[9] ), 
         .C(n8907[9]), .Z(n42_adj_418)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2337_i42_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_61 (.A(n8907[8]), .B(n36_adj_489), .C(n8907[7]), 
         .Z(n40_adj_419)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_61.init = 16'h0404;
    LUT4 i2_3_lut_4_lut (.A(frqlevel[0]), .B(n5942), .C(frqlevel[1]), 
         .D(n833[1]), .Z(frqlevel_2__N_67[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i2_3_lut_4_lut.init = 16'h2dd2;
    LUT4 i1_2_lut_adj_62 (.A(n19), .B(n20_adj_417), .Z(n4300)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_62.init = 16'heeee;
    FD1S3IX lumdivision_i2_rep_439 (.D(n8), .CK(clk_c), .CD(lumlevel[0]), 
            .Q(n12204)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i2_rep_439.GSR = "DISABLED";
    LUT4 i2_4_lut_4_lut_adj_63 (.A(lumlevel[1]), .B(n839[1]), .C(n11821), 
         .D(lumlevel[2]), .Z(lumlevel_2__N_41[2])) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i2_4_lut_4_lut_adj_63.init = 16'hdb24;
    LUT4 i2437_3_lut_rep_281 (.A(n8981[5]), .B(n8981[6]), .C(\lumdivision[6] ), 
         .Z(n11718)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2437_3_lut_rep_281.init = 16'h7e7e;
    FD1S3IX sawtooth_cnt_395__i6 (.D(n69[6]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i6.GSR = "ENABLED";
    LUT4 i4_4_lut_adj_64 (.A(n3438), .B(n3439), .C(n3440), .D(n3432), 
         .Z(n10_adj_490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_4_lut_adj_64.init = 16'hfffe;
    LUT4 i3_4_lut_adj_65 (.A(n3436), .B(n3435), .C(n3434), .D(n3437), 
         .Z(n17_adj_420)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_65.init = 16'hfffe;
    LUT4 div_63_LessThan_2246_i44_3_lut (.A(n42_adj_428), .B(\lumdivision[9] ), 
         .C(n3441), .Z(n44_adj_421)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2246_i44_3_lut.init = 16'h8e8e;
    LUT4 div_63_LessThan_2058_i36_3_lut_3_lut (.A(n11744), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n36_adj_491)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2058_i36_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i2216_3_lut_rep_306 (.A(n3164), .B(n3163), .C(\lumdivision[6] ), 
         .Z(n11743)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2216_3_lut_rep_306.init = 16'h7e7e;
    LUT4 div_63_LessThan_2153_i46_4_lut (.A(n3303), .B(n12202), .C(n3302), 
         .D(n4_adj_372), .Z(n46_adj_451)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2153_i46_4_lut.init = 16'h4d0c;
    LUT4 i8_4_lut_adj_66 (.A(n15), .B(n3297), .C(n14_adj_492), .D(n3301), 
         .Z(n4302)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8_4_lut_adj_66.init = 16'hfffe;
    LUT4 div_63_i854_3_lut_4_lut (.A(\lumdivision[0] ), .B(n12194), .C(n1258_adj_328), 
         .D(n1221[27]), .Z(n1407)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i854_3_lut_4_lut.init = 16'h2f20;
    LUT4 i491_2_lut_rep_384 (.A(lumlevel[0]), .B(n5940), .Z(n11821)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i491_2_lut_rep_384.init = 16'h2222;
    LUT4 div_63_LessThan_2762_i22_3_lut_4_lut (.A(n8981[5]), .B(n8981[6]), 
         .C(\lumdivision[6] ), .D(n20_adj_493), .Z(n22_adj_494)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2762_i22_3_lut_4_lut.init = 16'hf170;
    LUT4 i2_3_lut_4_lut_adj_67 (.A(lumlevel[0]), .B(n5940), .C(lumlevel[1]), 
         .D(n839[1]), .Z(lumlevel_2__N_41[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i2_3_lut_4_lut_adj_67.init = 16'h2dd2;
    LUT4 i6_4_lut_adj_68 (.A(n3296), .B(n3300), .C(n3295), .D(n3299), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut_adj_68.init = 16'hfffe;
    LUT4 i5_3_lut (.A(n3293), .B(n3294), .C(n3298), .Z(n14_adj_492)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_rep_385 (.A(n60), .B(\lumdivision[3] ), .C(n1047), .Z(n11822)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i2_3_lut_rep_385.init = 16'h9696;
    FD1S3IX sawtooth_cnt_395__i5 (.D(n69[5]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i5.GSR = "ENABLED";
    LUT4 div_63_i732_3_lut_rep_381_4_lut (.A(n60), .B(n12206), .C(n1047), 
         .D(n12194), .Z(n11818)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (B (C)+!B (C (D)+!C !(D)))) */ ;
    defparam div_63_i732_3_lut_rep_381_4_lut.init = 16'hf069;
    LUT4 div_63_LessThan_2058_i38_3_lut_4_lut (.A(n3164), .B(n3163), .C(\lumdivision[6] ), 
         .D(n36_adj_491), .Z(n38_adj_495)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2058_i38_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_2058_i48_4_lut (.A(n3161), .B(n12202), .C(n3160), 
         .D(n4_adj_496), .Z(n48)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2058_i48_4_lut.init = 16'h4d0c;
    LUT4 i3_4_lut_adj_69 (.A(n3155), .B(n3156), .C(n3157), .D(n3158), 
         .Z(n10570)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_69.init = 16'hfffe;
    LUT4 i3_4_lut_adj_70 (.A(n3153), .B(n3152), .C(n3159), .D(n3154), 
         .Z(n10655)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_70.init = 16'hfffe;
    LUT4 i1_4_lut_adj_71 (.A(n7_adj_439), .B(n35), .C(count_flag_N_159), 
         .D(count_flag), .Z(clk_c_enable_17)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_71.init = 16'h0c88;
    LUT4 div_63_LessThan_1961_i50_4_lut (.A(n3016), .B(n12202), .C(n3015), 
         .D(n4_adj_497), .Z(n50_adj_429)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1961_i50_4_lut.init = 16'h4d0c;
    LUT4 n11515_bdd_3_lut_4_lut (.A(n11838), .B(n11830), .C(btn[1]), .D(n11513), 
         .Z(n11516)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C))) */ ;
    defparam n11515_bdd_3_lut_4_lut.init = 16'hfb0b;
    LUT4 i3_4_lut_adj_72 (.A(n3009), .B(n3010), .C(n3011), .D(n3012), 
         .Z(n10582)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_72.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_395__i4 (.D(n69[4]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i4.GSR = "ENABLED";
    LUT4 div_63_LessThan_2058_i37_2_lut_rep_305_4_lut (.A(n3021), .B(n1595[18]), 
         .C(n11746), .D(\lumdivision[4] ), .Z(n11742)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2058_i37_2_lut_rep_305_4_lut.init = 16'h53ac;
    LUT4 div_63_LessThan_2762_i21_2_lut_rep_282 (.A(n8981[4]), .B(\lumdivision[4] ), 
         .Z(n11719)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2762_i21_2_lut_rep_282.init = 16'h6666;
    LUT4 i4199_2_lut_rep_379_3_lut_3_lut (.A(n11833), .B(\lumdivision[0] ), 
         .C(n12194), .Z(n11816)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4199_2_lut_rep_379_3_lut_3_lut.init = 16'h4848;
    LUT4 div_63_LessThan_762_i58_4_lut_4_lut_4_lut_4_lut (.A(n11833), .B(\lumdivision[0] ), 
         .C(\lumdivision[2] ), .D(n12194), .Z(n58_adj_325)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_762_i58_4_lut_4_lut_4_lut_4_lut.init = 16'hf870;
    CCU2D add_580_4 (.A0(n38_adj_357), .B0(n24), .C0(n10580), .D0(n2037[2]), 
          .A1(n12204), .B1(n11708), .C1(n2037[3]), .D1(n9049[1]), .CIN(n9080), 
          .COUT(n9081), .S0(n2071[2]), .S1(n2071[3]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_4.INIT0 = 16'h04ff;
    defparam add_580_4.INIT1 = 16'ha965;
    defparam add_580_4.INJECT1_0 = "NO";
    defparam add_580_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_73 (.A(n3018), .B(n1595[21]), .C(n11746), 
         .D(n42_adj_498), .Z(n4_adj_496)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_73.init = 16'h5300;
    LUT4 div_63_LessThan_1862_i52_4_lut (.A(n2868), .B(n12202), .C(n2867), 
         .D(n4_adj_499), .Z(n52_adj_413)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1862_i52_4_lut.init = 16'h4d0c;
    LUT4 i9165_2_lut (.A(count_flag), .B(n7_adj_439), .Z(count_flag_N_155)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9165_2_lut.init = 16'h1111;
    LUT4 i15_4_lut_adj_74 (.A(n17_adj_500), .B(n30_adj_501), .C(n26_adj_502), 
         .D(n18_adj_503), .Z(n7_adj_439)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i15_4_lut_adj_74.init = 16'hfffe;
    FD1S3IX sawtooth_cnt_395__i3 (.D(n69[3]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i3.GSR = "ENABLED";
    LUT4 div_63_LessThan_2762_i20_3_lut_3_lut (.A(n8981[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n20_adj_493)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2762_i20_3_lut_3_lut.init = 16'hd4d4;
    FD1S3IX sawtooth_cnt_395__i2 (.D(n69[2]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i2.GSR = "ENABLED";
    LUT4 div_63_i2032_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[26]), 
         .D(n3013), .Z(n3157)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2032_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_580_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9080), .S1(n2071[1]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_580_2.INIT0 = 16'h0000;
    defparam add_580_2.INIT1 = 16'hf555;
    defparam add_580_2.INJECT1_0 = "NO";
    defparam add_580_2.INJECT1_1 = "NO";
    LUT4 i2402_3_lut_rep_283 (.A(n8965[5]), .B(n8965[6]), .C(\lumdivision[6] ), 
         .Z(n11720)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2402_3_lut_rep_283.init = 16'h7e7e;
    LUT4 i3_4_lut_adj_75 (.A(n2866), .B(n2861), .C(n2862), .D(n2863), 
         .Z(n10572)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_75.init = 16'hfffe;
    LUT4 div_63_i2040_3_lut_rep_307_4_lut (.A(n50_adj_429), .B(n11747), 
         .C(n1595[18]), .D(n3021), .Z(n11744)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2040_3_lut_rep_307_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3178_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[28]), 
         .D(n4754), .Z(n57)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3178_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX sawtooth_cnt_395__i1 (.D(n69[1]), .CK(clk_c), .CD(sawtooth_cnt_15__N_102), 
            .Q(sawtooth_cnt_c[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(169[21:33])
    defparam sawtooth_cnt_395__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_76 (.A(triangle_cnt[10]), .B(triangle_cnt[13]), .Z(n17_adj_500)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_76.init = 16'heeee;
    LUT4 i14_4_lut (.A(triangle_cnt[8]), .B(n28_adj_504), .C(n22_adj_505), 
         .D(triangle_cnt[1]), .Z(n30_adj_501)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i14_4_lut.init = 16'hfffe;
    CCU2D add_579_31 (.A0(n9049[29]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9079), 
          .S0(n2037[31]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_31.INIT0 = 16'h5555;
    defparam add_579_31.INIT1 = 16'h0000;
    defparam add_579_31.INJECT1_0 = "NO";
    defparam add_579_31.INJECT1_1 = "NO";
    CCU2D add_579_29 (.A0(n9049[27]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[28]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9078), .COUT(n9079), .S0(n2037[29]), .S1(n2037[30]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_29.INIT0 = 16'h5555;
    defparam add_579_29.INIT1 = 16'h5555;
    defparam add_579_29.INJECT1_0 = "NO";
    defparam add_579_29.INJECT1_1 = "NO";
    CCU2D add_579_27 (.A0(n9049[25]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[26]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9077), .COUT(n9078), .S0(n2037[27]), .S1(n2037[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_27.INIT0 = 16'h5555;
    defparam add_579_27.INIT1 = 16'h5555;
    defparam add_579_27.INJECT1_0 = "NO";
    defparam add_579_27.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_2681_i24_3_lut_4_lut (.A(n8965[5]), .B(n8965[6]), 
         .C(\lumdivision[6] ), .D(n22_adj_506), .Z(n24_adj_507)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2681_i24_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2028_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[30]), 
         .D(n3009), .Z(n3153)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2028_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3184_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[22]), 
         .D(n4760), .Z(n45)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3184_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2681_i23_2_lut_rep_284 (.A(n8965[4]), .B(\lumdivision[4] ), 
         .Z(n11721)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2681_i23_2_lut_rep_284.init = 16'h6666;
    LUT4 div_63_LessThan_1761_i54_4_lut (.A(n2717), .B(n12202), .C(n2716), 
         .D(n4), .Z(n54)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1761_i54_4_lut.init = 16'h4d0c;
    LUT4 i2_3_lut_adj_77 (.A(n2711), .B(n2714), .C(n2715), .Z(n10562)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_3_lut_adj_77.init = 16'hfefe;
    CCU2D add_579_25 (.A0(n9049[23]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[24]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9076), .COUT(n9077), .S0(n2037[25]), .S1(n2037[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_25.INIT0 = 16'h5555;
    defparam add_579_25.INIT1 = 16'h5555;
    defparam add_579_25.INJECT1_0 = "NO";
    defparam add_579_25.INJECT1_1 = "NO";
    LUT4 div_63_i2027_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[31]), 
         .D(n3008), .Z(n3152)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2027_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10_4_lut_adj_78 (.A(triangle_cnt[6]), .B(triangle_cnt[11]), .C(triangle_cnt[7]), 
         .D(triangle_cnt[4]), .Z(n26_adj_502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut_adj_78.init = 16'hfffe;
    CCU2D add_579_23 (.A0(n9049[21]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[22]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9075), .COUT(n9076), .S0(n2037[23]), .S1(n2037[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_23.INIT0 = 16'h5555;
    defparam add_579_23.INIT1 = 16'h5555;
    defparam add_579_23.INJECT1_0 = "NO";
    defparam add_579_23.INJECT1_1 = "NO";
    LUT4 i2_2_lut_adj_79 (.A(triangle_cnt[0]), .B(triangle_cnt[9]), .Z(n18_adj_503)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_adj_79.init = 16'heeee;
    LUT4 div_63_LessThan_2681_i22_3_lut_3_lut (.A(n8965[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n22_adj_506)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2681_i22_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_579_21 (.A0(n9049[19]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[20]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9074), .COUT(n9075), .S0(n2037[21]), .S1(n2037[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_21.INIT0 = 16'h5555;
    defparam add_579_21.INIT1 = 16'h5555;
    defparam add_579_21.INJECT1_0 = "NO";
    defparam add_579_21.INJECT1_1 = "NO";
    LUT4 i2369_3_lut_rep_285 (.A(n8950[5]), .B(n8950[6]), .C(\lumdivision[6] ), 
         .Z(n11722)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2369_3_lut_rep_285.init = 16'h7e7e;
    LUT4 div_63_i2037_3_lut_rep_308_4_lut (.A(n50_adj_429), .B(n11747), 
         .C(n1595[21]), .D(n3018), .Z(n11745)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2037_3_lut_rep_308_4_lut.init = 16'hf2d0;
    LUT4 i9130_2_lut_rep_382_2_lut_4_lut (.A(n12206), .B(n11841), .C(n11864), 
         .D(n12194), .Z(n11819)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i9130_2_lut_rep_382_2_lut_4_lut.init = 16'h01fe;
    LUT4 div_63_LessThan_1658_i56_4_lut (.A(n2563), .B(\lumdivision[9] ), 
         .C(n2562), .D(n4_adj_353), .Z(n56_adj_330)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1658_i56_4_lut.init = 16'h4d0c;
    LUT4 i3_4_lut_adj_80 (.A(n2561), .B(n11773), .C(n2559), .D(n11772), 
         .Z(n4307)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_4_lut_adj_80.init = 16'hfffe;
    LUT4 i3_2_lut_4_lut (.A(n9049[28]), .B(n2037[30]), .C(n11708), .D(n4761), 
         .Z(n24_adj_415)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_4_lut.init = 16'hffac;
    LUT4 i12_4_lut (.A(triangle_cnt[15]), .B(triangle_cnt[12]), .C(triangle_cnt[2]), 
         .D(triangle_cnt[14]), .Z(n28_adj_504)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12_4_lut.init = 16'hfffe;
    LUT4 i6_2_lut (.A(triangle_cnt[3]), .B(triangle_cnt[5]), .Z(n22_adj_505)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i6_2_lut.init = 16'heeee;
    LUT4 div_63_LessThan_2598_i26_3_lut_4_lut (.A(n8950[5]), .B(n8950[6]), 
         .C(\lumdivision[6] ), .D(n24_adj_508), .Z(n26_adj_509)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2598_i26_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2034_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[24]), 
         .D(n3015), .Z(n3159)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2034_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_81 (.A(lumcnt_9__N_123), .B(count_flag_N_192), .Z(n35)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_81.init = 16'h8888;
    LUT4 i1_2_lut_adj_82 (.A(lumlevel[0]), .B(n5940), .Z(lumlevel_2__N_41[0])) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_82.init = 16'h9999;
    LUT4 div_63_LessThan_2598_i25_2_lut_rep_286 (.A(n8950[4]), .B(\lumdivision[4] ), 
         .Z(n11723)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2598_i25_2_lut_rep_286.init = 16'h6666;
    LUT4 div_63_LessThan_1553_i58_4_lut (.A(n2406), .B(n12202), .C(n2405), 
         .D(n4_adj_375), .Z(n58_adj_356)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1553_i58_4_lut.init = 16'h4d0c;
    LUT4 div_63_LessThan_2598_i24_3_lut_3_lut (.A(n8950[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n24_adj_508)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2598_i24_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_i3181_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[25]), 
         .D(n4757), .Z(n51)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3181_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2029_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[29]), 
         .D(n3010), .Z(n3154)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2029_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_3_lut_4_lut (.A(n11858), .B(n12196), .C(n64), .D(n11840), 
         .Z(n5_adj_510)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfdf0;
    LUT4 i2338_3_lut_rep_287 (.A(n8935[5]), .B(n8935[6]), .C(\lumdivision[6] ), 
         .Z(n11724)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2338_3_lut_rep_287.init = 16'h7e7e;
    LUT4 div_63_i3194_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[12]), 
         .D(n4770), .Z(n25)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3194_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2030_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[28]), 
         .D(n3011), .Z(n3155)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2030_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_579_19 (.A0(n9049[17]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[18]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9073), .COUT(n9074), .S0(n2037[19]), .S1(n2037[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_19.INIT0 = 16'h5555;
    defparam add_579_19.INIT1 = 16'h5555;
    defparam add_579_19.INJECT1_0 = "NO";
    defparam add_579_19.INJECT1_1 = "NO";
    LUT4 i9091_4_lut_4_lut (.A(n11847), .B(n10965), .C(n20_adj_511), .D(n6_adj_512), 
         .Z(n22_adj_441)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9091_4_lut_4_lut.init = 16'hf4b0;
    LUT4 div_63_i2031_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[27]), 
         .D(n3012), .Z(n3156)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2031_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2513_i28_3_lut_4_lut (.A(n8935[5]), .B(n8935[6]), 
         .C(\lumdivision[6] ), .D(n26_adj_513), .Z(n28_adj_514)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2513_i28_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i2033_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[25]), 
         .D(n3014), .Z(n3158)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2033_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n5673_bdd_4_lut (.A(frqlevel[2]), .B(n10702), .C(n12196), .D(n11862), 
         .Z(n11512)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam n5673_bdd_4_lut.init = 16'hff01;
    CCU2D add_579_17 (.A0(n9049[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[16]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9072), .COUT(n9073), .S0(n2037[17]), .S1(n2037[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_17.INIT0 = 16'h5555;
    defparam add_579_17.INIT1 = 16'h5555;
    defparam add_579_17.INJECT1_0 = "NO";
    defparam add_579_17.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1446_i60_4_lut (.A(n2246), .B(n12202), .C(n2245), 
         .D(n4_adj_425), .Z(n60_adj_377)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1446_i60_4_lut.init = 16'h4d0c;
    LUT4 div_63_i2036_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[22]), 
         .D(n11752), .Z(n3161)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2036_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2035_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[23]), 
         .D(n3016), .Z(n3160)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2035_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2513_i27_2_lut_rep_288 (.A(n8935[4]), .B(\lumdivision[4] ), 
         .Z(n11725)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2513_i27_2_lut_rep_288.init = 16'h6666;
    LUT4 div_63_i2038_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[20]), 
         .D(n3019), .Z(n3163)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2038_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2513_i26_3_lut_3_lut (.A(n8935[4]), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n26_adj_513)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2513_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_83 (.A(n10654), .B(n9_adj_515), .C(n7_adj_516), 
         .D(n8_adj_517), .Z(n5940)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_83.init = 16'hfffe;
    LUT4 div_63_i2039_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[19]), 
         .D(n11751), .Z(n3164)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2039_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2042_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[16]), 
         .D(n3023), .Z(n3167)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2042_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i3_4_lut_adj_84 (.A(n11840), .B(n67), .C(n11858), .D(n12196), 
         .Z(n9_adj_515)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3_4_lut_adj_84.init = 16'heccc;
    CCU2D add_579_15 (.A0(n9049[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9071), .COUT(n9072), .S0(n2037[15]), .S1(n2037[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_15.INIT0 = 16'h5555;
    defparam add_579_15.INIT1 = 16'h5555;
    defparam add_579_15.INJECT1_0 = "NO";
    defparam add_579_15.INJECT1_1 = "NO";
    CCU2D add_579_13 (.A0(n9049[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9070), .COUT(n9071), .S0(n2037[13]), .S1(n2037[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_13.INIT0 = 16'h5555;
    defparam add_579_13.INIT1 = 16'h5555;
    defparam add_579_13.INJECT1_0 = "NO";
    defparam add_579_13.INJECT1_1 = "NO";
    CCU2D add_579_11 (.A0(n9049[9]), .B0(n12202), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n9069), .COUT(n9070), .S0(n2037[11]), .S1(n2037[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_11.INIT0 = 16'h5999;
    defparam add_579_11.INIT1 = 16'h5555;
    defparam add_579_11.INJECT1_0 = "NO";
    defparam add_579_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(btn[1]), .B(n12196), .C(n11858), .Z(n10654)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_adj_85 (.A(n5896), .B(n55), .C(lumlevel[2]), .D(n12196), 
         .Z(n7_adj_516)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_85.init = 16'hccec;
    LUT4 i2309_3_lut_rep_289 (.A(n8921[5]), .B(n8921[6]), .C(\lumdivision[6] ), 
         .Z(n11726)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2309_3_lut_rep_289.init = 16'h7e7e;
    LUT4 div_63_i2041_3_lut_4_lut (.A(n50_adj_429), .B(n11747), .C(n1595[17]), 
         .D(n3022), .Z(n3166)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2041_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1310_3_lut (.A(n1920), .B(n1357[27]), .C(n11797), .Z(n2085_adj_423)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1310_3_lut.init = 16'hacac;
    LUT4 i4275_2_lut_3_lut_4_lut_4_lut (.A(n11862), .B(btn[1]), .C(n11516), 
         .D(n11831), .Z(n833[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i4275_2_lut_3_lut_4_lut_4_lut.init = 16'h0c08;
    CCU2D add_579_9 (.A0(n9049[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9068), 
          .COUT(n9069), .S0(n2037[9]), .S1(n2037[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_9.INIT0 = 16'h5555;
    defparam add_579_9.INIT1 = 16'h5555;
    defparam add_579_9.INJECT1_0 = "NO";
    defparam add_579_9.INJECT1_1 = "NO";
    LUT4 div_63_i3197_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[9]), .D(n4773), 
         .Z(n4875)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3197_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_1337_i62_4_lut (.A(n2083_adj_436), .B(n12202), 
         .C(n2082_adj_435), .D(n4_adj_457), .Z(n62_adj_434)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1337_i62_4_lut.init = 16'h4d0c;
    LUT4 i2_4_lut_adj_86 (.A(n11836), .B(n64), .C(n11831), .D(n11117), 
         .Z(n8_adj_517)) /* synthesis lut_function=(A (B)+!A (B+!(C (D)))) */ ;
    defparam i2_4_lut_adj_86.init = 16'hcddd;
    LUT4 n5673_bdd_3_lut_3_lut (.A(n11858), .B(n12196), .C(n11862), .Z(n11511)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam n5673_bdd_3_lut_3_lut.init = 16'hb3b3;
    LUT4 i1_4_lut_4_lut (.A(n11858), .B(n12196), .C(n4_adj_518), .D(btn[1]), 
         .Z(n31_adj_519)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h00d8;
    LUT4 n5914_bdd_4_lut_3_lut_rep_401 (.A(n11858), .B(n12196), .C(n11862), 
         .Z(n11838)) /* synthesis lut_function=(A (B)+!A !(B+(C))) */ ;
    defparam n5914_bdd_4_lut_3_lut_rep_401.init = 16'h8989;
    LUT4 i1_2_lut_3_lut_adj_87 (.A(n11862), .B(btn[1]), .C(n11858), .Z(n55)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_87.init = 16'h0808;
    LUT4 i2_4_lut_4_lut_4_lut (.A(n11861), .B(n11858), .C(n10662), .D(n12196), 
         .Z(n67)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C+!(D))+!B (C+(D))))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h0e03;
    LUT4 i9093_4_lut_4_lut (.A(n11850), .B(n10987), .C(n26_adj_520), .D(n4_adj_466), 
         .Z(n28_adj_402)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9093_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(\lumdivision[4] ), .B(n12197), .C(\lumdivision[2] ), 
         .D(\lumdivision[3] ), .Z(n4410)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_396_4_lut (.A(n12200), .B(n12197), .C(n11864), .D(\lumdivision[3] ), 
         .Z(n11833)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_396_4_lut.init = 16'hfffe;
    CCU2D add_579_7 (.A0(n9049[5]), .B0(\lumdivision[6] ), .C0(GND_net), 
          .D0(GND_net), .A1(n9049[6]), .B1(\lumdivision[6] ), .C1(GND_net), 
          .D1(GND_net), .CIN(n9067), .COUT(n9068), .S0(n2037[7]), .S1(n2037[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_7.INIT0 = 16'h5999;
    defparam add_579_7.INIT1 = 16'h5999;
    defparam add_579_7.INJECT1_0 = "NO";
    defparam add_579_7.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_2426_i30_3_lut_4_lut (.A(n8921[5]), .B(n8921[6]), 
         .C(\lumdivision[6] ), .D(n28_adj_521), .Z(n30_adj_522)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2426_i30_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_LessThan_2426_i29_2_lut_rep_290 (.A(n8921[4]), .B(\lumdivision[4] ), 
         .Z(n11727)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2426_i29_2_lut_rep_290.init = 16'h6666;
    LUT4 div_63_LessThan_2426_i28_3_lut_3_lut (.A(n8921[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n28_adj_521)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2426_i28_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut (.A(n60_adj_449), .B(n1749), .C(n1748), .Z(n64_adj_442)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_3_lut.init = 16'h0202;
    CCU2D add_579_5 (.A0(n9049[3]), .B0(n12206), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[4]), .B1(n12200), .C1(GND_net), .D1(GND_net), .CIN(n9066), 
          .COUT(n9067), .S0(n2037[5]), .S1(n2037[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_5.INIT0 = 16'h5999;
    defparam add_579_5.INIT1 = 16'h5999;
    defparam add_579_5.INJECT1_0 = "NO";
    defparam add_579_5.INJECT1_1 = "NO";
    CCU2D add_579_3 (.A0(n9049[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9049[2]), .B1(n12204), .C1(GND_net), .D1(GND_net), .CIN(n9065), 
          .COUT(n9066), .S0(n2037[3]), .S1(n2037[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_3.INIT0 = 16'h5555;
    defparam add_579_3.INIT1 = 16'h5999;
    defparam add_579_3.INJECT1_0 = "NO";
    defparam add_579_3.INJECT1_1 = "NO";
    CCU2D add_579_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(\lumdivision[0] ), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n9065), .S1(n2037[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_579_1.INIT0 = 16'hF000;
    defparam add_579_1.INIT1 = 16'h0aaa;
    defparam add_579_1.INJECT1_0 = "NO";
    defparam add_579_1.INJECT1_1 = "NO";
    LUT4 i4156_2_lut_rep_309_3_lut (.A(n10582), .B(n11748), .C(n50_adj_429), 
         .Z(n11746)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4156_2_lut_rep_309_3_lut.init = 16'h1010;
    CCU2D add_578_31 (.A0(n9031[28]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n9064), .S0(n9049[29]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_31.INIT0 = 16'h5655;
    defparam add_578_31.INIT1 = 16'h0000;
    defparam add_578_31.INJECT1_0 = "NO";
    defparam add_578_31.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_404_3_lut (.A(\lumdivision[6] ), .B(n12202), .C(n12200), 
         .Z(n11841)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_404_3_lut.init = 16'hfefe;
    CCU2D add_578_29 (.A0(n9031[26]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[27]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9063), .COUT(n9064), .S0(n9049[27]), 
          .S1(n9049[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_29.INIT0 = 16'h5655;
    defparam add_578_29.INIT1 = 16'h5655;
    defparam add_578_29.INJECT1_0 = "NO";
    defparam add_578_29.INJECT1_1 = "NO";
    LUT4 i9143_4_lut (.A(n11849), .B(n11848), .C(n11847), .D(n10961), 
         .Z(n11034)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9143_4_lut.init = 16'hefee;
    LUT4 i9029_4_lut (.A(n11853), .B(n11852), .C(n11851), .D(n10946), 
         .Z(n10961)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9029_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_4_lut_adj_88 (.A(\lumdivision[6] ), .B(n12202), .C(n5963), 
         .D(n62_adj_327), .Z(n1258_adj_328)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_88.init = 16'hfeee;
    LUT4 i13_4_lut_3_lut (.A(frqlevel[1]), .B(frqlevel[2]), .C(frqlevel[0]), 
         .Z(frqnum_31__N_54[11])) /* synthesis lut_function=(!(A (B+!(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i13_4_lut_3_lut.init = 16'h2424;
    CCU2D add_578_27 (.A0(n9031[24]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[25]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9062), .COUT(n9063), .S0(n9049[25]), 
          .S1(n9049[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_27.INIT0 = 16'h5655;
    defparam add_578_27.INIT1 = 16'h5655;
    defparam add_578_27.INJECT1_0 = "NO";
    defparam add_578_27.INJECT1_1 = "NO";
    CCU2D add_578_25 (.A0(n9031[22]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[23]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9061), .COUT(n9062), .S0(n9049[23]), 
          .S1(n9049[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_25.INIT0 = 16'h5655;
    defparam add_578_25.INIT1 = 16'h5655;
    defparam add_578_25.INJECT1_0 = "NO";
    defparam add_578_25.INJECT1_1 = "NO";
    LUT4 i13_3_lut_3_lut (.A(frqlevel[1]), .B(frqlevel[2]), .C(frqlevel[0]), 
         .Z(frqnum_31__N_54[5])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i13_3_lut_3_lut.init = 16'h3434;
    LUT4 i2282_3_lut_rep_291 (.A(n8907[5]), .B(n8907[6]), .C(\lumdivision[6] ), 
         .Z(n11728)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2282_3_lut_rep_291.init = 16'h7e7e;
    LUT4 i4213_2_lut_3_lut_4_lut (.A(n10582), .B(n11748), .C(n1595[15]), 
         .D(n50_adj_429), .Z(n3168)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4213_2_lut_3_lut_4_lut.init = 16'he0f0;
    CCU2D add_578_23 (.A0(n9031[20]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[21]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9060), .COUT(n9061), .S0(n9049[21]), 
          .S1(n9049[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_23.INIT0 = 16'h5655;
    defparam add_578_23.INIT1 = 16'h5655;
    defparam add_578_23.INJECT1_0 = "NO";
    defparam add_578_23.INJECT1_1 = "NO";
    LUT4 div_63_i3185_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[21]), 
         .D(n4761), .Z(n43)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3185_3_lut_4_lut.init = 16'hf2d0;
    CCU2D add_578_21 (.A0(n9031[18]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[19]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9059), .COUT(n9060), .S0(n9049[19]), 
          .S1(n9049[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_21.INIT0 = 16'h5655;
    defparam add_578_21.INIT1 = 16'h5655;
    defparam add_578_21.INJECT1_0 = "NO";
    defparam add_578_21.INJECT1_1 = "NO";
    CCU2D add_578_19 (.A0(n9031[16]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[17]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9058), .COUT(n9059), .S0(n9049[17]), 
          .S1(n9049[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_19.INIT0 = 16'h5655;
    defparam add_578_19.INIT1 = 16'h5655;
    defparam add_578_19.INJECT1_0 = "NO";
    defparam add_578_19.INJECT1_1 = "NO";
    CCU2D add_578_17 (.A0(n9031[14]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[15]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9057), .COUT(n9058), .S0(n9049[15]), 
          .S1(n9049[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_17.INIT0 = 16'h5655;
    defparam add_578_17.INIT1 = 16'h5655;
    defparam add_578_17.INJECT1_0 = "NO";
    defparam add_578_17.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_311 (.A(n3008), .B(n3014), .C(n3013), .Z(n11748)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_3_lut_rep_311.init = 16'hfefe;
    CCU2D add_578_15 (.A0(n9031[12]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[13]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9056), .COUT(n9057), .S0(n9049[13]), 
          .S1(n9049[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_15.INIT0 = 16'h5655;
    defparam add_578_15.INIT1 = 16'h5655;
    defparam add_578_15.INJECT1_0 = "NO";
    defparam add_578_15.INJECT1_1 = "NO";
    LUT4 i9014_4_lut (.A(n11856), .B(n11855), .C(n11854), .D(n10933), 
         .Z(n10946)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9014_4_lut.init = 16'h5455;
    CCU2D add_578_13 (.A0(n9031[10]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[11]), .B1(n36_adj_523), .C1(n35_adj_524), 
          .D1(n26_adj_452), .CIN(n9055), .COUT(n9056), .S0(n9049[11]), 
          .S1(n9049[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_13.INIT0 = 16'h5655;
    defparam add_578_13.INIT1 = 16'h5655;
    defparam add_578_13.INJECT1_0 = "NO";
    defparam add_578_13.INJECT1_1 = "NO";
    LUT4 i9001_4_lut (.A(n11860), .B(n11859), .C(n11857), .D(n5_adj_525), 
         .Z(n10933)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9001_4_lut.init = 16'h5554;
    CCU2D add_578_11 (.A0(n9031[8]), .B0(n36_adj_523), .C0(n35_adj_524), 
          .D0(n26_adj_452), .A1(n9031[9]), .B1(n26_adj_452), .C1(n2299), 
          .D1(n4313), .CIN(n9054), .COUT(n9055), .S0(n9049[9]), .S1(n9049[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_11.INIT0 = 16'h5655;
    defparam add_578_11.INIT1 = 16'h5a9a;
    defparam add_578_11.INJECT1_0 = "NO";
    defparam add_578_11.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_2337_i32_3_lut_4_lut (.A(n8907[5]), .B(n8907[6]), 
         .C(\lumdivision[6] ), .D(n30_adj_526), .Z(n32_adj_527)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2337_i32_3_lut_4_lut.init = 16'hf170;
    CCU2D add_578_9 (.A0(n9031[6]), .B0(n26_adj_452), .C0(n1463), .D0(n4313), 
          .A1(n9031[7]), .B1(n36_adj_523), .C1(n35_adj_524), .D1(n26_adj_452), 
          .CIN(n9053), .COUT(n9054), .S0(n9049[7]), .S1(n9049[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_9.INIT0 = 16'h5a9a;
    defparam add_578_9.INIT1 = 16'h5655;
    defparam add_578_9.INJECT1_0 = "NO";
    defparam add_578_9.INJECT1_1 = "NO";
    CCU2D add_578_7 (.A0(n9031[4]), .B0(n26_adj_452), .C0(n1638), .D0(n4313), 
          .A1(n9031[5]), .B1(n26_adj_452), .C1(n1463), .D1(n4313), .CIN(n9052), 
          .COUT(n9053), .S0(n9049[5]), .S1(n9049[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_7.INIT0 = 16'h5a9a;
    defparam add_578_7.INIT1 = 16'h5a9a;
    defparam add_578_7.INJECT1_0 = "NO";
    defparam add_578_7.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i5_2_lut (.A(sawtooth_cnt_c[2]), .B(triangle_cnt[2]), 
         .Z(n5_adj_525)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i5_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_4_lut_adj_89 (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), 
         .D(n11861), .Z(n4_adj_518)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i1_2_lut_4_lut_adj_89.init = 16'h2000;
    LUT4 i4240_2_lut_rep_393_3_lut_2_lut_4_lut (.A(lumDN_2), .B(lumDN_3), 
         .C(lumDN_1), .D(n11858), .Z(n11830)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i4240_2_lut_rep_393_3_lut_2_lut_4_lut.init = 16'h20df;
    LUT4 div_63_i1308_3_lut (.A(n1918), .B(n1357[29]), .C(n11797), .Z(n2083_adj_436)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1308_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_rep_310_4_lut (.A(n3008), .B(n3014), .C(n3013), .D(n10582), 
         .Z(n11747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_rep_310_4_lut.init = 16'hfffe;
    LUT4 div_63_i1307_3_lut (.A(n11802), .B(n1357[30]), .C(n11797), .Z(n2082_adj_435)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1307_3_lut.init = 16'hacac;
    LUT4 div_63_LessThan_1961_i38_3_lut_3_lut (.A(n11751), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n38_adj_528)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1961_i38_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i4244_2_lut_rep_394_3_lut_1_lut_3_lut (.A(lumDN_2), .B(lumDN_3), 
         .C(lumDN_1), .Z(n11831)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i4244_2_lut_rep_394_3_lut_1_lut_3_lut.init = 16'hdfdf;
    CCU2D add_578_5 (.A0(n9031[2]), .B0(n26_adj_452), .C0(n926), .D0(n4313), 
          .A1(n9031[3]), .B1(n26_adj_452), .C1(n1108), .D1(n4313), .CIN(n9051), 
          .COUT(n9052), .S0(n9049[3]), .S1(n9049[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_5.INIT0 = 16'h5a9a;
    defparam add_578_5.INIT1 = 16'h5a9a;
    defparam add_578_5.INJECT1_0 = "NO";
    defparam add_578_5.INJECT1_1 = "NO";
    CCU2D add_578_3 (.A0(\frqnum[3] ), .B0(n26_adj_452), .C0(n56), .D0(n4313), 
          .A1(n9031[1]), .B1(n36_adj_523), .C1(n35_adj_524), .D1(n26_adj_452), 
          .CIN(n9050), .COUT(n9051), .S0(n9049[1]), .S1(n9049[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_3.INIT0 = 16'h5a9a;
    defparam add_578_3.INIT1 = 16'h5655;
    defparam add_578_3.INJECT1_0 = "NO";
    defparam add_578_3.INJECT1_1 = "NO";
    CCU2D add_578_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9031[9]), .B1(n24_adj_529), .C1(n4313), .D1(\lumdivision[9] ), 
          .COUT(n9050));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_578_1.INIT0 = 16'hF000;
    defparam add_578_1.INIT1 = 16'h0d04;
    defparam add_578_1.INJECT1_0 = "NO";
    defparam add_578_1.INJECT1_1 = "NO";
    LUT4 equal_150_i6_rep_11_2_lut_4_lut (.A(lumDN_2), .B(lumDN_3), .C(lumDN_1), 
         .D(n11858), .Z(n11117)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam equal_150_i6_rep_11_2_lut_4_lut.init = 16'hff20;
    LUT4 i2200_3_lut_rep_313 (.A(n3019), .B(n3018), .C(\lumdivision[6] ), 
         .Z(n11750)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2200_3_lut_rep_313.init = 16'h7e7e;
    LUT4 div_63_LessThan_1961_i40_3_lut_4_lut (.A(n3019), .B(n3018), .C(\lumdivision[6] ), 
         .D(n38_adj_528), .Z(n40_adj_530)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1961_i40_3_lut_4_lut.init = 16'hf170;
    CCU2D add_577_29 (.A0(n9014[26]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[27]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9045), .S0(n9031[27]), .S1(n9031[28]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_29.INIT0 = 16'h5655;
    defparam add_577_29.INIT1 = 16'h5655;
    defparam add_577_29.INJECT1_0 = "NO";
    defparam add_577_29.INJECT1_1 = "NO";
    CCU2D add_577_27 (.A0(n9014[24]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[25]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9044), .COUT(n9045), .S0(n9031[25]), 
          .S1(n9031[26]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_27.INIT0 = 16'h5655;
    defparam add_577_27.INIT1 = 16'h5655;
    defparam add_577_27.INJECT1_0 = "NO";
    defparam add_577_27.INJECT1_1 = "NO";
    CCU2D add_577_25 (.A0(n9014[22]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[23]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9043), .COUT(n9044), .S0(n9031[23]), 
          .S1(n9031[24]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_25.INIT0 = 16'h5655;
    defparam add_577_25.INIT1 = 16'h5655;
    defparam add_577_25.INJECT1_0 = "NO";
    defparam add_577_25.INJECT1_1 = "NO";
    CCU2D add_577_23 (.A0(n9014[20]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[21]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9042), .COUT(n9043), .S0(n9031[21]), 
          .S1(n9031[22]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_23.INIT0 = 16'h5655;
    defparam add_577_23.INIT1 = 16'h5655;
    defparam add_577_23.INJECT1_0 = "NO";
    defparam add_577_23.INJECT1_1 = "NO";
    CCU2D add_577_21 (.A0(n9014[18]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[19]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9041), .COUT(n9042), .S0(n9031[19]), 
          .S1(n9031[20]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_21.INIT0 = 16'h5655;
    defparam add_577_21.INIT1 = 16'h5655;
    defparam add_577_21.INJECT1_0 = "NO";
    defparam add_577_21.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_2337_i31_2_lut_rep_292 (.A(n8907[4]), .B(\lumdivision[4] ), 
         .Z(n11729)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2337_i31_2_lut_rep_292.init = 16'h6666;
    LUT4 div_63_LessThan_2337_i30_3_lut_3_lut (.A(n8907[4]), .B(\lumdivision[4] ), 
         .C(n12206), .Z(n30_adj_526)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2337_i30_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_577_19 (.A0(n9014[16]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[17]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9040), .COUT(n9041), .S0(n9031[17]), 
          .S1(n9031[18]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_19.INIT0 = 16'h5655;
    defparam add_577_19.INIT1 = 16'h5655;
    defparam add_577_19.INJECT1_0 = "NO";
    defparam add_577_19.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i25_2_lut_rep_410 (.A(sawtooth_cnt[12]), .B(triangle_cnt[12]), 
         .Z(n11847)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i25_2_lut_rep_410.init = 16'h6666;
    CCU2D add_577_17 (.A0(n9014[14]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[15]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9039), .COUT(n9040), .S0(n9031[15]), 
          .S1(n9031[16]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_17.INIT0 = 16'h5655;
    defparam add_577_17.INIT1 = 16'h5655;
    defparam add_577_17.INJECT1_0 = "NO";
    defparam add_577_17.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i20_3_lut_3_lut (.A(sawtooth_cnt[12]), .B(triangle_cnt[12]), 
         .C(n18_adj_533), .Z(n20_adj_511)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i20_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i9146_2_lut_3_lut (.A(sawtooth_cnt[12]), .B(triangle_cnt[12]), 
         .C(n11036), .Z(n10970)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9146_2_lut_3_lut.init = 16'hf6f6;
    LUT4 sawtooth_cnt_15__I_0_i27_2_lut_rep_411 (.A(sawtooth_cnt[13]), .B(triangle_cnt[13]), 
         .Z(n11848)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i27_2_lut_rep_411.init = 16'h6666;
    CCU2D add_577_15 (.A0(n9014[12]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[13]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9038), .COUT(n9039), .S0(n9031[13]), 
          .S1(n9031[14]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_15.INIT0 = 16'h5655;
    defparam add_577_15.INIT1 = 16'h5655;
    defparam add_577_15.INJECT1_0 = "NO";
    defparam add_577_15.INJECT1_1 = "NO";
    CCU2D add_577_13 (.A0(n9014[10]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[11]), .B1(n34_adj_531), .C1(n33_adj_532), 
          .D1(n28_adj_453), .CIN(n9037), .COUT(n9038), .S0(n9031[11]), 
          .S1(n9031[12]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_13.INIT0 = 16'h5655;
    defparam add_577_13.INIT1 = 16'h5655;
    defparam add_577_13.INJECT1_0 = "NO";
    defparam add_577_13.INJECT1_1 = "NO";
    LUT4 div_63_LessThan_1961_i39_2_lut_rep_312_4_lut (.A(n2873), .B(n1561[19]), 
         .C(n11753), .D(\lumdivision[4] ), .Z(n11749)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1961_i39_2_lut_rep_312_4_lut.init = 16'h53ac;
    LUT4 sawtooth_cnt_15__I_0_i29_2_lut_rep_412 (.A(sawtooth_cnt[14]), .B(triangle_cnt[14]), 
         .Z(n11849)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i29_2_lut_rep_412.init = 16'h6666;
    LUT4 i9055_2_lut_3_lut_4_lut (.A(sawtooth_cnt[14]), .B(triangle_cnt[14]), 
         .C(triangle_cnt[13]), .D(sawtooth_cnt[13]), .Z(n10987)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9055_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 div_63_i1311_3_lut (.A(n11801), .B(n1357[26]), .C(n11797), .Z(n2086_adj_437)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1311_3_lut.init = 16'hacac;
    LUT4 sawtooth_cnt_15__I_0_i14_3_lut_3_lut (.A(sawtooth_cnt[14]), .B(triangle_cnt[14]), 
         .C(triangle_cnt[13]), .Z(n14_adj_534)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 sawtooth_cnt_15__I_0_i31_2_lut_rep_413 (.A(sawtooth_cnt[15]), .B(triangle_cnt[15]), 
         .Z(n11850)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i31_2_lut_rep_413.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i26_3_lut_3_lut (.A(sawtooth_cnt[15]), .B(triangle_cnt[15]), 
         .C(n14_adj_534), .Z(n26_adj_520)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i26_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i9144_2_lut_3_lut (.A(sawtooth_cnt[15]), .B(triangle_cnt[15]), 
         .C(n11034), .Z(n10983)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9144_2_lut_3_lut.init = 16'hf6f6;
    LUT4 i9211_2_lut_3_lut (.A(sawtooth_cnt[15]), .B(triangle_cnt[15]), 
         .C(n11101), .Z(n11011)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9211_2_lut_3_lut.init = 16'hf6f6;
    LUT4 sawtooth_cnt_15__I_0_i19_2_lut_rep_414 (.A(sawtooth_cnt[9]), .B(triangle_cnt[9]), 
         .Z(n11851)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i19_2_lut_rep_414.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i16_3_lut_3_lut (.A(sawtooth_cnt[9]), .B(triangle_cnt[9]), 
         .C(n8_adj_535), .Z(n16_adj_440)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i16_3_lut_3_lut.init = 16'hd4d4;
    LUT4 sawtooth_cnt_15__I_0_i21_2_lut_rep_415 (.A(sawtooth_cnt[10]), .B(triangle_cnt[10]), 
         .Z(n11852)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i21_2_lut_rep_415.init = 16'h6666;
    CCU2D add_577_11 (.A0(n9014[8]), .B0(n34_adj_531), .C0(n33_adj_532), 
          .D0(n28_adj_453), .A1(n9014[9]), .B1(n28_adj_453), .C1(n2299), 
          .D1(n4314), .CIN(n9036), .COUT(n9037), .S0(n9031[9]), .S1(n9031[10]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_11.INIT0 = 16'h5655;
    defparam add_577_11.INIT1 = 16'h5a9a;
    defparam add_577_11.INJECT1_0 = "NO";
    defparam add_577_11.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i23_2_lut_rep_416 (.A(sawtooth_cnt[11]), .B(triangle_cnt[11]), 
         .Z(n11853)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i23_2_lut_rep_416.init = 16'h6666;
    LUT4 i9033_2_lut_3_lut_4_lut (.A(sawtooth_cnt[11]), .B(triangle_cnt[11]), 
         .C(triangle_cnt[10]), .D(sawtooth_cnt[10]), .Z(n10965)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9033_2_lut_3_lut_4_lut.init = 16'h9009;
    CCU2D add_577_9 (.A0(n9014[6]), .B0(n28_adj_453), .C0(n1463), .D0(n4314), 
          .A1(n9014[7]), .B1(n34_adj_531), .C1(n33_adj_532), .D1(n28_adj_453), 
          .CIN(n9035), .COUT(n9036), .S0(n9031[7]), .S1(n9031[8]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_9.INIT0 = 16'h5a9a;
    defparam add_577_9.INIT1 = 16'h5655;
    defparam add_577_9.INJECT1_0 = "NO";
    defparam add_577_9.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i18_3_lut_3_lut (.A(sawtooth_cnt[11]), .B(triangle_cnt[11]), 
         .C(triangle_cnt[10]), .Z(n18_adj_533)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i18_3_lut_3_lut.init = 16'hd4d4;
    CCU2D add_577_7 (.A0(n9014[4]), .B0(n28_adj_453), .C0(n1638), .D0(n4314), 
          .A1(n9014[5]), .B1(n28_adj_453), .C1(n1463), .D1(n4314), .CIN(n9034), 
          .COUT(n9035), .S0(n9031[5]), .S1(n9031[6]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_7.INIT0 = 16'h5a9a;
    defparam add_577_7.INIT1 = 16'h5a9a;
    defparam add_577_7.INJECT1_0 = "NO";
    defparam add_577_7.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i13_2_lut_rep_417 (.A(sawtooth_cnt[6]), .B(triangle_cnt[6]), 
         .Z(n11854)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i13_2_lut_rep_417.init = 16'h6666;
    CCU2D add_577_5 (.A0(n9014[2]), .B0(n28_adj_453), .C0(n926), .D0(n4314), 
          .A1(n9014[3]), .B1(n28_adj_453), .C1(n1108), .D1(n4314), .CIN(n9033), 
          .COUT(n9034), .S0(n9031[3]), .S1(n9031[4]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_5.INIT0 = 16'h5a9a;
    defparam add_577_5.INIT1 = 16'h5a9a;
    defparam add_577_5.INJECT1_0 = "NO";
    defparam add_577_5.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i10_3_lut_3_lut (.A(sawtooth_cnt[6]), .B(triangle_cnt[6]), 
         .C(triangle_cnt[5]), .Z(n10_adj_536)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i5_3_lut_rep_293 (.A(n3431), .B(n10_adj_490), .C(n3433), .Z(n11730)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_3_lut_rep_293.init = 16'hfefe;
    LUT4 sawtooth_cnt_15__I_0_i15_2_lut_rep_418 (.A(sawtooth_cnt[7]), .B(triangle_cnt[7]), 
         .Z(n11855)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i15_2_lut_rep_418.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i12_3_lut_3_lut (.A(sawtooth_cnt[7]), .B(triangle_cnt[7]), 
         .C(n10_adj_536), .Z(n12_adj_401)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_4_lut_adj_90 (.A(n3431), .B(n10_adj_490), .C(n3433), 
         .D(n17_adj_420), .Z(n4301)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_90.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut_adj_91 (.A(n2870), .B(n1561[22]), .C(n11753), 
         .D(n44_adj_537), .Z(n4_adj_497)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_91.init = 16'h5300;
    CCU2D add_577_3 (.A0(\frqnum[4] ), .B0(n28_adj_453), .C0(n56), .D0(n4314), 
          .A1(n9014[1]), .B1(n34_adj_531), .C1(n33_adj_532), .D1(n28_adj_453), 
          .CIN(n9032), .COUT(n9033), .S0(n9031[1]), .S1(n9031[2]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_3.INIT0 = 16'h5a9a;
    defparam add_577_3.INIT1 = 16'h5655;
    defparam add_577_3.INJECT1_0 = "NO";
    defparam add_577_3.INJECT1_1 = "NO";
    CCU2D add_577_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n9014[9]), .B1(n26_adj_538), .C1(n4314), .D1(\lumdivision[9] ), 
          .COUT(n9032));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_577_1.INIT0 = 16'hF000;
    defparam add_577_1.INIT1 = 16'h0d04;
    defparam add_577_1.INJECT1_0 = "NO";
    defparam add_577_1.INJECT1_1 = "NO";
    LUT4 sawtooth_cnt_15__I_0_i17_2_lut_rep_419 (.A(sawtooth_cnt[8]), .B(triangle_cnt[8]), 
         .Z(n11856)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i17_2_lut_rep_419.init = 16'h6666;
    CCU2D add_576_29 (.A0(n8997[26]), .B0(n32), .C0(n31), .D0(n30), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n9028), 
          .S0(n9014[27]));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam add_576_29.INIT0 = 16'h5655;
    defparam add_576_29.INIT1 = 16'h0000;
    defparam add_576_29.INJECT1_0 = "NO";
    defparam add_576_29.INJECT1_1 = "NO";
    LUT4 i4350_2_lut (.A(lumlevel[0]), .B(lumlevel[1]), .Z(n5896)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4350_2_lut.init = 16'heeee;
    LUT4 sawtooth_cnt_15__I_0_i8_3_lut_3_lut (.A(sawtooth_cnt[8]), .B(triangle_cnt[8]), 
         .C(triangle_cnt[4]), .Z(n8_adj_535)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 sawtooth_cnt_15__I_0_i7_2_lut_rep_420 (.A(sawtooth_cnt[3]), .B(triangle_cnt[3]), 
         .Z(n11857)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i7_2_lut_rep_420.init = 16'h6666;
    LUT4 sawtooth_cnt_15__I_0_i6_3_lut_3_lut (.A(sawtooth_cnt[3]), .B(triangle_cnt[3]), 
         .C(triangle_cnt[2]), .Z(n6_adj_512)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 div_63_LessThan_2246_i32_3_lut_3_lut (.A(n11734), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n32_adj_539)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2246_i32_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i8825_3_lut_rep_421 (.A(lumUP_2), .B(lumUP_3), .C(lumUP_1), .Z(n11858)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i8825_3_lut_rep_421.init = 16'h2020;
    LUT4 i8773_2_lut_4_lut (.A(lumUP_2), .B(lumUP_3), .C(lumUP_1), .D(frqlevel[1]), 
         .Z(n10702)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i8773_2_lut_4_lut.init = 16'hff20;
    LUT4 sawtooth_cnt_15__I_0_i9_2_lut_rep_422 (.A(sawtooth_cnt[4]), .B(triangle_cnt[4]), 
         .Z(n11859)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i9_2_lut_rep_422.init = 16'h6666;
    LUT4 div_63_i1313_3_lut (.A(n1923), .B(n1357[24]), .C(n11797), .Z(n2088_adj_355)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1313_3_lut.init = 16'hacac;
    CCU2D equal_6_13 (.A0(sawtooth_cnt[13]), .B0(sawtooth_cnt_c[2]), .C0(sawtooth_cnt_c[1]), 
          .D0(sawtooth_cnt_c[0]), .A1(sawtooth_cnt[11]), .B1(\frqnum[11] ), 
          .C1(sawtooth_cnt[10]), .D1(\frqnum[10] ), .CIN(n8240), .COUT(n8241));
    defparam equal_6_13.INIT0 = 16'h0001;
    defparam equal_6_13.INIT1 = 16'h9009;
    defparam equal_6_13.INJECT1_0 = "YES";
    defparam equal_6_13.INJECT1_1 = "YES";
    CCU2D equal_6_0 (.A0(sawtooth_cnt[12]), .B0(\frqnum[12] ), .C0(GND_net), 
          .D0(GND_net), .A1(sawtooth_cnt[15]), .B1(sawtooth_cnt[14]), 
          .C1(GND_net), .D1(GND_net), .COUT(n8240));   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(184[8:29])
    defparam equal_6_0.INIT0 = 16'h9000;
    defparam equal_6_0.INIT1 = 16'h1111;
    defparam equal_6_0.INJECT1_0 = "NO";
    defparam equal_6_0.INJECT1_1 = "YES";
    LUT4 i9019_2_lut_3_lut_4_lut (.A(sawtooth_cnt[4]), .B(triangle_cnt[4]), 
         .C(triangle_cnt[8]), .D(sawtooth_cnt[8]), .Z(n10951)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9019_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 sawtooth_cnt_15__I_0_i11_2_lut_rep_423 (.A(sawtooth_cnt[5]), .B(triangle_cnt[5]), 
         .Z(n11860)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam sawtooth_cnt_15__I_0_i11_2_lut_rep_423.init = 16'h6666;
    LUT4 i9006_2_lut_3_lut_4_lut (.A(sawtooth_cnt[5]), .B(triangle_cnt[5]), 
         .C(triangle_cnt[6]), .D(sawtooth_cnt[6]), .Z(n10938)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(211[10:37])
    defparam i9006_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i9176_2_lut_rep_424 (.A(lumlevel[2]), .B(lumlevel[1]), .Z(n11861)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i9176_2_lut_rep_424.init = 16'h1111;
    LUT4 i2_3_lut_rep_425 (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), .Z(n11862)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i2_3_lut_rep_425.init = 16'h2020;
    LUT4 div_63_i1942_3_lut_rep_314_4_lut (.A(n52_adj_413), .B(n11754), 
         .C(n1561[19]), .D(n2873), .Z(n11751)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1942_3_lut_rep_314_4_lut.init = 16'hf2d0;
    LUT4 i2257_3_lut_rep_295 (.A(n3445), .B(n3444), .C(\lumdivision[6] ), 
         .Z(n11732)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2257_3_lut_rep_295.init = 16'h7e7e;
    LUT4 equal_180_i5_2_lut_rep_399_4_lut (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), 
         .D(btn[1]), .Z(n11836)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam equal_180_i5_2_lut_rep_399_4_lut.init = 16'h20ff;
    LUT4 i1_2_lut_4_lut_adj_92 (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), 
         .D(btn[1]), .Z(n10662)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i1_2_lut_4_lut_adj_92.init = 16'hff20;
    LUT4 i1_4_lut_4_lut_rep_431_4_lut (.A(\lumdivision[6] ), .B(n12202), 
         .C(n62_adj_319), .D(n12200), .Z(n12194)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_4_lut_rep_431_4_lut.init = 16'hfffe;
    LUT4 i4122_2_lut_rep_403_4_lut (.A(frqUP_2), .B(frqUP_3), .C(frqUP_1), 
         .D(btn[1]), .Z(n11840)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(98[13:52])
    defparam i4122_2_lut_rep_403_4_lut.init = 16'h2000;
    LUT4 div_63_LessThan_2246_i34_3_lut_4_lut (.A(n3445), .B(n3444), .C(\lumdivision[6] ), 
         .D(n32_adj_539), .Z(n34_adj_540)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2246_i34_3_lut_4_lut.init = 16'hf170;
    LUT4 div_63_i1932_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[29]), 
         .D(n2863), .Z(n3010)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1932_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_rep_427 (.A(\lumdivision[0] ), .B(\lumdivision[2] ), .Z(n11864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_427.init = 16'heeee;
    LUT4 div_63_i1930_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[31]), 
         .D(n2861), .Z(n3008)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1930_3_lut_4_lut.init = 16'hf2d0;
    FD1S3IX frqnum_i8 (.D(n4_adj_541), .CK(clk_c), .CD(frqlevel[1]), .Q(\frqnum[12] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i8.GSR = "DISABLED";
    LUT4 i4204_4_lut (.A(n12196), .B(n10654), .C(n5_adj_510), .D(n6_adj_542), 
         .Z(n839[1])) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(107[4] 135[13])
    defparam i4204_4_lut.init = 16'h0002;
    FD1S3AX frqnum_i7 (.D(frqnum_31__N_54[11]), .CK(clk_c), .Q(\frqnum[11] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i7.GSR = "DISABLED";
    FD1S3IX frqnum_i6 (.D(n8_adj_543), .CK(clk_c), .CD(frqlevel[0]), .Q(\frqnum[10] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i6.GSR = "DISABLED";
    FD1S3AX frqnum_i5 (.D(frqnum_31__N_54[8]), .CK(clk_c), .Q(\frqnum[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i5.GSR = "DISABLED";
    FD1S3IX frqnum_i4 (.D(n8_adj_544), .CK(clk_c), .CD(frqlevel[2]), .Q(\frqnum[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i4.GSR = "DISABLED";
    FD1S3AX frqnum_i3 (.D(frqnum_31__N_54[5]), .CK(clk_c), .Q(\frqnum[5] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i3.GSR = "DISABLED";
    FD1S3IX frqnum_i2 (.D(frqlevel[1]), .CK(clk_c), .CD(frqlevel[2]), 
            .Q(\frqnum[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam frqnum_i2.GSR = "DISABLED";
    FD1S3IX lumdivision_i6 (.D(n11861), .CK(clk_c), .CD(n1), .Q(\lumdivision[9] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i6.GSR = "DISABLED";
    FD1S3IX lumdivision_i5 (.D(n8_adj_545), .CK(clk_c), .CD(lumlevel[2]), 
            .Q(\lumdivision[6] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i5.GSR = "DISABLED";
    FD1S3IX lumdivision_i4 (.D(n5896), .CK(clk_c), .CD(lumlevel[2]), .Q(\lumdivision[4] )) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i4.GSR = "DISABLED";
    LUT4 i2_3_lut_rep_387_4_lut_2_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .Z(n11824)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i2_3_lut_rep_387_4_lut_2_lut.init = 16'h9999;
    LUT4 i2013_4_lut_3_lut_4_lut_3_lut (.A(\lumdivision[0] ), .B(n11833), 
         .C(n12204), .Z(n60)) /* synthesis lut_function=(!(A (B)+!A (C))) */ ;
    defparam i2013_4_lut_3_lut_4_lut_3_lut.init = 16'h2727;
    LUT4 div_63_i1936_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[25]), 
         .D(n2867), .Z(n3014)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1936_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_3137_i11_2_lut_rep_264_4_lut (.A(n9049[3]), .B(n2037[5]), 
         .C(n11708), .D(\lumdivision[4] ), .Z(n11701)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_3137_i11_2_lut_rep_264_4_lut.init = 16'h53ac;
    LUT4 div_63_i1939_3_lut_rep_315_4_lut (.A(n52_adj_413), .B(n11754), 
         .C(n1561[22]), .D(n2870), .Z(n11752)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1939_3_lut_rep_315_4_lut.init = 16'hf2d0;
    LUT4 pwr_bdd_2_lut_rep_386_3_lut_4_lut_then_1_lut (.A(n11516), .Z(n11869)) /* synthesis lut_function=(A) */ ;
    defparam pwr_bdd_2_lut_rep_386_3_lut_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i2_4_lut_adj_93 (.A(n11826), .B(n11862), .C(n11117), .D(n31_adj_519), 
         .Z(n6_adj_542)) /* synthesis lut_function=(!(A (B+!((D)+!C)))) */ ;
    defparam i2_4_lut_adj_93.init = 16'h7757;
    PFUMX i2681 (.BLUT(n6), .ALUT(n10_adj_346), .C0(n10874), .Z(n14_adj_349));
    LUT4 div_63_LessThan_2246_i33_2_lut_rep_294_4_lut (.A(n3308), .B(n1663[16]), 
         .C(n11735), .D(\lumdivision[4] ), .Z(n11731)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2246_i33_2_lut_rep_294_4_lut.init = 16'h53ac;
    LUT4 div_63_i1935_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[26]), 
         .D(n2866), .Z(n3013)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1935_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2637 (.BLUT(n8_adj_345), .ALUT(n12_adj_363), .C0(n10881), .Z(n16_adj_364));
    LUT4 i4147_2_lut_rep_298 (.A(n46_adj_451), .B(n4302), .Z(n11735)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4147_2_lut_rep_298.init = 16'h2222;
    LUT4 div_63_i2230_3_lut_rep_297_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[16]), 
         .D(n3308), .Z(n11734)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2230_3_lut_rep_297_4_lut.init = 16'hf2d0;
    LUT4 i4215_2_lut_rep_296_3_lut (.A(n46_adj_451), .B(n4302), .C(n1663[13]), 
         .Z(n11733)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4215_2_lut_rep_296_3_lut.init = 16'hd0d0;
    PFUMX i2595 (.BLUT(n10_adj_344), .ALUT(n14_adj_370), .C0(n10888), 
          .Z(n18_adj_427));
    LUT4 div_63_i2216_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[30]), 
         .D(n3294), .Z(n3432)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2216_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1931_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[30]), 
         .D(n2862), .Z(n3009)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1931_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i8795_2_lut_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(\frqnum[12] ), 
         .D(n1663[13]), .Z(n10724)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8795_2_lut_3_lut_4_lut.init = 16'hfdf0;
    PFUMX i2555 (.BLUT(n12), .ALUT(n16_adj_408), .C0(n10895), .Z(n20_adj_546));
    LUT4 i2_3_lut_adj_94 (.A(n3442), .B(n38_adj_547), .C(n3443), .Z(n42_adj_428)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_94.init = 16'h0404;
    PFUMX i2514 (.BLUT(n14), .ALUT(n18_adj_448), .C0(n10902), .Z(n22_adj_548));
    LUT4 div_63_i1933_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[28]), 
         .D(n11759), .Z(n3011)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1933_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1934_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[27]), 
         .D(n2865), .Z(n3012)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1934_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2215_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[31]), 
         .D(n3293), .Z(n3431)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2215_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2225_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[21]), 
         .D(n3303), .Z(n3441)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2225_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2475 (.BLUT(n16), .ALUT(n20_adj_483), .C0(n10909), .Z(n24_adj_549));
    LUT4 div_63_i1938_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[23]), 
         .D(n11758), .Z(n3016)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1938_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3108_3_lut_rep_268_4_lut (.A(n24), .B(n11709), .C(n2037[29]), 
         .D(n9049[27]), .Z(n11705)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3108_3_lut_rep_268_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2226_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[20]), 
         .D(n11739), .Z(n3442)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2226_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2438 (.BLUT(n18), .ALUT(n22_adj_494), .C0(n10916), .Z(n26_adj_467));
    LUT4 div_63_i1937_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[24]), 
         .D(n2868), .Z(n3015)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1937_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2227_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[19]), 
         .D(n3305), .Z(n3443)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2227_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3126_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[11]), 
         .D(n9049[9]), .Z(n4771)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3126_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2220_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[26]), 
         .D(n3298), .Z(n3436)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2220_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3116_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[21]), 
         .D(n9049[19]), .Z(n4761)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3116_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2403 (.BLUT(n20), .ALUT(n24_adj_507), .C0(n10923), .Z(n28_adj_472));
    LUT4 div_63_i2219_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[27]), 
         .D(n3297), .Z(n3435)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2219_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2218_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[28]), 
         .D(n3296), .Z(n3434)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2218_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i22_2_lut (.A(lumlevel[2]), .B(lumlevel[1]), .Z(n8)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(142[4] 149[13])
    defparam i22_2_lut.init = 16'h6666;
    LUT4 div_63_i1940_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[21]), 
         .D(n2871), .Z(n3018)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1940_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2370 (.BLUT(n22_adj_343), .ALUT(n26_adj_509), .C0(n10994), 
          .Z(n30_adj_477));
    LUT4 div_63_i2228_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[18]), 
         .D(n3306), .Z(n3444)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2228_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2217_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[29]), 
         .D(n3295), .Z(n3433)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2217_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2993_i26_3_lut (.A(n24_adj_529), .B(\lumdivision[9] ), 
         .C(n9031[9]), .Z(n26_adj_452)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2993_i26_3_lut.init = 16'h8e8e;
    PFUMX i2339 (.BLUT(n24_adj_342), .ALUT(n28_adj_514), .C0(n10766), 
          .Z(n32_adj_481));
    LUT4 i2_3_lut_rep_317 (.A(n2865), .B(n11759), .C(n10572), .Z(n11754)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_3_lut_rep_317.init = 16'hfefe;
    PFUMX i2310 (.BLUT(n26), .ALUT(n30_adj_522), .C0(n10773), .Z(n34_adj_486));
    LUT4 div_63_i2224_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[22]), 
         .D(n3302), .Z(n3440)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2224_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2223_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[23]), 
         .D(n3301), .Z(n3439)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2223_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_95 (.A(n36_adj_523), .B(n35_adj_524), .Z(n4313)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_95.init = 16'heeee;
    LUT4 div_63_LessThan_2918_i28_3_lut (.A(n26_adj_538), .B(\lumdivision[9] ), 
         .C(n9014[9]), .Z(n28_adj_453)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2918_i28_3_lut.init = 16'h8e8e;
    LUT4 div_63_i2222_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[24]), 
         .D(n3300), .Z(n3438)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2222_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3195_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[11]), 
         .D(n4771), .Z(n23_adj_373)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3195_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2283 (.BLUT(n28), .ALUT(n32_adj_527), .C0(n10780), .Z(n36_adj_489));
    LUT4 div_63_i3188_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[18]), 
         .D(n4764), .Z(n37)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3188_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3107_3_lut_rep_269_4_lut (.A(n24), .B(n11709), .C(n2037[30]), 
         .D(n9049[28]), .Z(n11706)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3107_3_lut_rep_269_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1943_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[18]), 
         .D(n2874), .Z(n3021)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1943_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_881_i56_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1407), .D(n1408), .Z(n56_c)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_881_i56_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_adj_96 (.A(n34_adj_531), .B(n33_adj_532), .Z(n4314)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_adj_96.init = 16'heeee;
    LUT4 i9_4_lut_adj_97 (.A(n9014[10]), .B(n18_adj_550), .C(n14_adj_551), 
         .D(n9014[11]), .Z(n34_adj_531)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9_4_lut_adj_97.init = 16'hfffe;
    LUT4 i8_4_lut_adj_98 (.A(n15_adj_552), .B(n9014[16]), .C(n12_adj_553), 
         .D(n9014[12]), .Z(n18_adj_550)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8_4_lut_adj_98.init = 16'hfffe;
    LUT4 i4160_2_lut_rep_316_4_lut (.A(n2865), .B(n11759), .C(n10572), 
         .D(n52_adj_413), .Z(n11753)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4160_2_lut_rep_316_4_lut.init = 16'h0100;
    LUT4 div_63_LessThan_1862_i40_3_lut_3_lut (.A(n11757), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n40_adj_554)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1862_i40_3_lut_3_lut.init = 16'hd4d4;
    PFUMX i2258 (.BLUT(n30_adj_340), .ALUT(n34_adj_540), .C0(n10787), 
          .Z(n38_adj_547));
    LUT4 i4_2_lut_adj_99 (.A(n9014[13]), .B(n9014[26]), .Z(n14_adj_551)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_2_lut_adj_99.init = 16'heeee;
    LUT4 i5_2_lut (.A(n9014[27]), .B(n9014[25]), .Z(n15_adj_552)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_adj_100 (.A(n9014[14]), .B(n9014[15]), .Z(n12_adj_553)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_adj_100.init = 16'heeee;
    LUT4 i2186_3_lut_rep_319 (.A(n2871), .B(n2870), .C(\lumdivision[6] ), 
         .Z(n11756)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2186_3_lut_rep_319.init = 16'h7e7e;
    PFUMX i2235 (.BLUT(n32_adj_339), .ALUT(n36_adj_555), .C0(n10794), 
          .Z(n40_adj_371));
    LUT4 div_63_LessThan_1862_i42_3_lut_4_lut (.A(n2871), .B(n2870), .C(\lumdivision[6] ), 
         .D(n40_adj_554), .Z(n42_adj_556)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1862_i42_3_lut_4_lut.init = 16'hf170;
    LUT4 i7_4_lut_adj_101 (.A(n13_adj_557), .B(n9014[18]), .C(n12_adj_558), 
         .D(n9014[19]), .Z(n33_adj_532)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_101.init = 16'hfffe;
    LUT4 div_63_i2221_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[25]), 
         .D(n3299), .Z(n3437)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2221_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2217 (.BLUT(n34), .ALUT(n38_adj_495), .C0(n10801), .Z(n42_adj_498));
    LUT4 div_63_i1941_3_lut_4_lut (.A(n52_adj_413), .B(n11754), .C(n1561[20]), 
         .D(n11757), .Z(n3019)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1941_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2229_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[17]), 
         .D(n11738), .Z(n3445)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2229_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i2232_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[14]), 
         .D(n3310), .Z(n3448)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2232_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2201 (.BLUT(n36), .ALUT(n40_adj_530), .C0(n10808), .Z(n44_adj_537));
    LUT4 i5_4_lut_adj_102 (.A(n9014[24]), .B(n9014[22]), .C(n9014[20]), 
         .D(n9014[23]), .Z(n13_adj_557)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_102.init = 16'hfffe;
    LUT4 i4_2_lut_adj_103 (.A(n9014[21]), .B(n9014[17]), .Z(n12_adj_558)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4_2_lut_adj_103.init = 16'heeee;
    LUT4 i2_3_lut_adj_104 (.A(n9014[8]), .B(n22_adj_548), .C(n9014[7]), 
         .Z(n26_adj_538)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_104.init = 16'h0404;
    LUT4 div_63_i2231_3_lut_4_lut (.A(n46_adj_451), .B(n4302), .C(n1663[15]), 
         .D(n3309), .Z(n3447)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i2231_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i10_4_lut_adj_105 (.A(n9031[12]), .B(n20_adj_559), .C(n16_adj_560), 
         .D(n9031[25]), .Z(n36_adj_523)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i10_4_lut_adj_105.init = 16'hfffe;
    PFUMX i2187 (.BLUT(n38), .ALUT(n42_adj_556), .C0(n10815), .Z(n46_adj_561));
    LUT4 i9_4_lut_adj_106 (.A(n17_adj_562), .B(n13_adj_563), .C(n9031[27]), 
         .D(n9031[10]), .Z(n20_adj_559)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i9_4_lut_adj_106.init = 16'hfffe;
    LUT4 div_63_i3204_3_lut_4_lut (.A(n22), .B(n4311), .C(n2071[2]), .D(n4780), 
         .Z(n4882)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3204_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i2175 (.BLUT(n40), .ALUT(n44), .C0(n10822), .Z(n48_adj_329));
    LUT4 i5_2_lut_adj_107 (.A(n9031[26]), .B(n9031[28]), .Z(n16_adj_560)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_2_lut_adj_107.init = 16'heeee;
    LUT4 i6_3_lut (.A(n9031[24]), .B(n9031[15]), .C(n9031[11]), .Z(n17_adj_562)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_3_lut.init = 16'hfefe;
    LUT4 i2_2_lut_adj_108 (.A(n9031[13]), .B(n9031[14]), .Z(n13_adj_563)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2_2_lut_adj_108.init = 16'heeee;
    LUT4 i7_4_lut_adj_109 (.A(n13_adj_564), .B(n11_adj_565), .C(n9031[20]), 
         .D(n9031[16]), .Z(n35_adj_524)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_109.init = 16'hfffe;
    LUT4 i5_4_lut_adj_110 (.A(n9031[23]), .B(n9031[21]), .C(n9031[19]), 
         .D(n9031[22]), .Z(n13_adj_564)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_110.init = 16'hfffe;
    LUT4 i3_2_lut_adj_111 (.A(n9031[17]), .B(n9031[18]), .Z(n11_adj_565)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_111.init = 16'heeee;
    LUT4 i2_3_lut_adj_112 (.A(n9031[8]), .B(n20_adj_546), .C(n9031[7]), 
         .Z(n24_adj_529)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_112.init = 16'h0404;
    LUT4 div_63_i3132_3_lut_rep_270_4_lut (.A(n24), .B(n11709), .C(n2037[5]), 
         .D(n9049[3]), .Z(n11707)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3132_3_lut_rep_270_4_lut.init = 16'hf2d0;
    LUT4 div_63_i3121_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[16]), 
         .D(n9049[14]), .Z(n4766)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3121_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2153_i34_3_lut_3_lut (.A(n11738), .B(\lumdivision[4] ), 
         .C(\lumdivision[3] ), .Z(n34_adj_566)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2153_i34_3_lut_3_lut.init = 16'hd4d4;
    PFUMX i9332 (.BLUT(n11668), .ALUT(n11667), .C0(n11700), .Z(n11669));
    LUT4 div_63_i3124_3_lut_4_lut (.A(n24), .B(n11709), .C(n2037[13]), 
         .D(n9049[11]), .Z(n4769)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i3124_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_998_i54_4_lut (.A(\lumdivision[0] ), .B(\lumdivision[2] ), 
         .C(n1582), .D(n1583), .Z(n54_adj_320)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_998_i54_4_lut.init = 16'h0c8e;
    LUT4 div_63_LessThan_1862_i41_2_lut_rep_318_4_lut (.A(n2722), .B(n1527[20]), 
         .C(n11760), .D(\lumdivision[4] ), .Z(n11755)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_1862_i41_2_lut_rep_318_4_lut.init = 16'h53ac;
    PFUMX i2165 (.BLUT(n42_adj_336), .ALUT(n46_adj_351), .C0(n10829), 
          .Z(n50_adj_352));
    LUT4 i8_4_lut_adj_113 (.A(n15_adj_567), .B(n8997[14]), .C(n14_adj_568), 
         .D(n8997[10]), .Z(n32)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i8_4_lut_adj_113.init = 16'hfffe;
    LUT4 i6_4_lut_adj_114 (.A(n8997[15]), .B(n8997[11]), .C(n8997[16]), 
         .D(n8997[12]), .Z(n15_adj_567)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i6_4_lut_adj_114.init = 16'hfffe;
    LUT4 i5_3_lut_adj_115 (.A(n8997[26]), .B(n8997[17]), .C(n8997[13]), 
         .Z(n14_adj_568)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_3_lut_adj_115.init = 16'hfefe;
    PFUMX i2157 (.BLUT(n44_adj_335), .ALUT(n48_adj_368), .C0(n10836), 
          .Z(n52_adj_374));
    LUT4 pwr_bdd_2_lut_rep_386_3_lut_4_lut_else_1_lut (.A(lumDN_2), .B(n11516), 
         .C(n11836), .D(lumDN_1), .Z(n11868)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam pwr_bdd_2_lut_rep_386_3_lut_4_lut_else_1_lut.init = 16'hcecc;
    PFUMX i2151 (.BLUT(n46), .ALUT(n50_adj_422), .C0(n10843), .Z(n54_adj_424));
    LUT4 i1_2_lut_adj_116 (.A(frqlevel[2]), .B(frqlevel[0]), .Z(n4_adj_541)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i1_2_lut_adj_116.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_117 (.A(n2719), .B(n1527[23]), .C(n11760), 
         .D(n46_adj_561), .Z(n4_adj_499)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i1_2_lut_4_lut_adj_117.init = 16'h5300;
    LUT4 i7_4_lut_adj_118 (.A(n13_adj_569), .B(n11_adj_570), .C(n8997[22]), 
         .D(n8997[18]), .Z(n31)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i7_4_lut_adj_118.init = 16'hfffe;
    PFUMX i2147 (.BLUT(n48_adj_333), .ALUT(n52_adj_455), .C0(n10850), 
          .Z(n56_adj_456));
    LUT4 i3_2_lut_4_lut_adj_119 (.A(n2714), .B(n1527[28]), .C(n11760), 
         .D(n2865), .Z(n9_adj_433)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_4_lut_adj_119.init = 16'hffac;
    LUT4 i2234_3_lut_rep_300 (.A(n3306), .B(n3305), .C(\lumdivision[6] ), 
         .Z(n11737)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i2234_3_lut_rep_300.init = 16'h7e7e;
    LUT4 div_63_LessThan_2153_i36_3_lut_4_lut (.A(n3306), .B(n3305), .C(\lumdivision[6] ), 
         .D(n34_adj_566), .Z(n36_adj_555)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2153_i36_3_lut_4_lut.init = 16'hf170;
    LUT4 i4274_2_lut_3_lut (.A(n22), .B(n4311), .C(n2071[1]), .Z(n3)) /* synthesis lut_function=(A (B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i4274_2_lut_3_lut.init = 16'hd0d0;
    PFUMX i2143 (.BLUT(n50), .ALUT(n54_adj_459), .C0(n10857), .Z(n58_adj_450));
    LUT4 div_63_i1842_3_lut_rep_320_4_lut (.A(n54), .B(n11761), .C(n1527[20]), 
         .D(n2722), .Z(n11757)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1842_3_lut_rep_320_4_lut.init = 16'hf2d0;
    LUT4 i22_2_lut_adj_120 (.A(frqlevel[2]), .B(frqlevel[1]), .Z(n8_adj_543)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i22_2_lut_adj_120.init = 16'h6666;
    LUT4 div_63_i1836_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[26]), 
         .D(n2716), .Z(n2866)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1836_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i14_3_lut_adj_121 (.A(frqlevel[0]), .B(frqlevel[1]), .C(frqlevel[2]), 
         .Z(frqnum_31__N_54[8])) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i14_3_lut_adj_121.init = 16'h3e3e;
    LUT4 i22_2_lut_adj_122 (.A(frqlevel[1]), .B(frqlevel[0]), .Z(n8_adj_544)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(150[4] 157[13])
    defparam i22_2_lut_adj_122.init = 16'h6666;
    PFUMX i9338 (.BLUT(n11681), .ALUT(n11680), .C0(n11700), .Z(n4217));
    LUT4 i426_1_lut (.A(frqlevel[0]), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(109[10:22])
    defparam i426_1_lut.init = 16'h5555;
    LUT4 i5_4_lut_adj_123 (.A(n8997[24]), .B(n8997[21]), .C(n8997[25]), 
         .D(n8997[23]), .Z(n13_adj_569)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i5_4_lut_adj_123.init = 16'hfffe;
    LUT4 i3_2_lut_adj_124 (.A(n8997[19]), .B(n8997[20]), .Z(n11_adj_570)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam i3_2_lut_adj_124.init = 16'heeee;
    FD1S3IX lumdivision_i6_rep_437 (.D(n11861), .CK(clk_c), .CD(n1), .Q(n12202)) /* synthesis LSE_LINE_FILE_ID=22, LSE_LCOL=12, LSE_RCOL=19, LSE_LLINE=47, LSE_RLINE=47 */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(141[3] 158[10])
    defparam lumdivision_i6_rep_437.GSR = "DISABLED";
    PFUMX i2139 (.BLUT(n52), .ALUT(n56_adj_461), .C0(n10864), .Z(n60_adj_449));
    LUT4 i9136_2_lut (.A(frqlevel[1]), .B(frqlevel[2]), .Z(n5655)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i9136_2_lut.init = 16'h7777;
    LUT4 div_63_i1835_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[27]), 
         .D(n2715), .Z(n2865)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1835_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_LessThan_2841_i30_3_lut (.A(n28_adj_384), .B(\lumdivision[9] ), 
         .C(n8997[9]), .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_LessThan_2841_i30_3_lut.init = 16'h8e8e;
    LUT4 i2_3_lut_adj_125 (.A(n8997[8]), .B(n24_adj_549), .C(n8997[7]), 
         .Z(n28_adj_384)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_125.init = 16'h0404;
    LUT4 i1_1_lut (.A(lumlevel[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(142[4] 149[13])
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i22_2_lut_adj_126 (.A(lumlevel[1]), .B(lumlevel[0]), .Z(n8_adj_545)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(142[4] 149[13])
    defparam i22_2_lut_adj_126.init = 16'h6666;
    LUT4 div_63_i1839_3_lut_rep_321_4_lut (.A(n54), .B(n11761), .C(n1527[23]), 
         .D(n2719), .Z(n11758)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1839_3_lut_rep_321_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1831_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[31]), 
         .D(n2711), .Z(n2861)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1831_3_lut_4_lut.init = 16'hf2d0;
    LUT4 div_63_i1832_3_lut_4_lut (.A(n54), .B(n11761), .C(n1527[30]), 
         .D(n11765), .Z(n2862)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab2/impl1/source/breathingled.vhd(188[27:33])
    defparam div_63_i1832_3_lut_4_lut.init = 16'hf2d0;
    PFUMX i9350 (.BLUT(n11868), .ALUT(n11869), .C0(lumDN_3), .Z(n11870));
    
endmodule
