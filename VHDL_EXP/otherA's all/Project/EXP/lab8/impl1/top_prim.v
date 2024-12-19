// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Thu Dec 14 18:17:20 2023
//
// Verilog Description of module top
//

module top (clk_in, rst_n_in, mode_btn_in, adcdisplay, scl_out, sda_out, 
            din, sck, rck, DA_LCD, CLK_LCD, RST_LCD, DC_LCD, BL_LCD);   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(6[8:11])
    input clk_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    input rst_n_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    input mode_btn_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(11[2:13])
    output [7:0]adcdisplay;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    output scl_out;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(14[2:9])
    inout sda_out;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(15[2:9])
    output din;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(16[2:5])
    output sck;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(17[2:5])
    output rck;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(18[2:5])
    output DA_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[2:8])
    output CLK_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[9:16])
    output RST_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[17:24])
    output DC_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[25:31])
    output BL_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[32:38])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    wire [15:0]ctrlword_595_3 /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    wire ctrlword_595_3_13_inv /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    
    wire GND_net, rst_n_in_c, mode_btn_in_c, adcdisplay_c_7, adcdisplay_c_6, 
        adcdisplay_c_5, adcdisplay_c_4, adcdisplay_c_3, adcdisplay_c_2, 
        adcdisplay_c_1, adcdisplay_c_0, scl_out_c, din_c, sck_c, rck_c, 
        DA_LCD_c, CLK_LCD_c, RST_LCD_c, DC_LCD_c, BL_LCD_c;
    wire [7:0]ADC_level;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(24[9:18])
    
    wire btn_state;
    wire [3:0]realv_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(27[41:48])
    wire [3:0]decade;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(28[18:24])
    wire [3:0]unit;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(28[25:29])
    wire [15:0]ctrlword_595_1;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(31[9:23])
    wire [15:0]voltage_code;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(46[9:21])
    wire [15:0]ctrlword_595_4;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    
    wire n31756;
    wire [15:0]ctrlword_595_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(35[9:23])
    
    wire n59;
    wire [15:0]ctrlword_595_6;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(36[9:23])
    wire [7:0]adcdisplay_7__N_1;
    
    wire clk_divided_N_170;
    wire [3:0]cnt_start;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    wire [3:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[26:35])
    wire [3:0]cnt_stop;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[36:44])
    wire [3:0]cnt_main;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(49[12:20])
    wire [4:0]cnt_read;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    
    wire n3;
    wire [3:0]scl_out_N_162;
    
    wire n31052, n31755, n299;
    wire [3:0]scl_out_N_146;
    
    wire scl_out_N_143, n8679, sda_out_N_166, decade_3__N_561, decade_3__N_576, 
        decade_3__N_580, realv_1_1__N_283, realv_1_1__N_293, realv_1_1__N_292, 
        realv_1_1__N_303, realv_1_1__N_322, realv_1_1__N_326, realv_1_1__N_321, 
        n32927, n32926, realv_1_1__N_275, realv_1_1__N_368, realv_1_1__N_372, 
        n4, n2, realv_2_0__N_506;
    wire [7:0]ctrlword_595_4_15__N_630;
    wire [7:0]ctrlword_595_5_15__N_646;
    wire [7:0]ctrlword_595_6_15__N_662;
    wire [7:0]ctrlword_595_4_15__N_622;
    wire [7:0]ctrlword_595_5_15__N_638;
    wire [7:0]ctrlword_595_6_15__N_654;
    
    wire n5, n45;
    wire [7:0]x_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    wire [7:0]y_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    
    wire n30918, n32063, n2_adj_1556, n32061, n30942, n44, n6, 
        n2240, n1, n2884, n2886, n2896, n2898, n2913, n2973, 
        n2975, n2991, n3003, n3008, n3016, n33180, n33181, n432, 
        n1427, n32768, clk_divided_enable_26, n4_adj_1557, n30227, 
        n30331, n9480, clk_divided_enable_32, n8, n4_adj_1558, n2_adj_1559, 
        n32791, n32915, n1_adj_1560, n30964, n32912, n32911, n32909, 
        n32906, n32905, n32904, n32903, n32902, n32899, n32898, 
        n32790, n30228, n14498, n32897, n707, n708, n710, n711, 
        n712, n3_adj_1561, n32896, n5_adj_1562, n7, n2_adj_1563, 
        n32767, n6_adj_1564, n30915, n14, n14_adj_1565, n3_adj_1566, 
        n30951, n31978, n1_adj_1567, n30799, n32711, n32875, n14496, 
        n32872, n30924, n9357, n32692, n33174, n33169, n32766, 
        n32765, n32785, n13307, n30785, n30784, n30783, n32621, 
        n32589, n32587, n30933, n30930, n32783, n5_adj_1568, n4_adj_1569, 
        n1_adj_1570, n8_adj_1571, n7_adj_1572, n7_adj_1573, n1_adj_1574, 
        n6_adj_1575, n32508, n293, n33143, n32782, n2_adj_1576, 
        n4_adj_1577, n33134, n33132, n5_adj_1578, n4_adj_1579, n30798, 
        n5_adj_1580, n5_adj_1581, n2_adj_1582, n33120, n33119, n5_adj_1583, 
        n4_adj_1584, n2_adj_1585, n5_adj_1586, n17032, n31877, n5_adj_1587, 
        n4_adj_1588, n5_adj_1589, n4_adj_1590, n31874, n4_adj_1591, 
        n5_adj_1592, clk_divided_enable_8, n31873, n33111, n33110, 
        n33108, n1_adj_1593, n2_adj_1594, n34297, n6706, n6715, 
        n6719, n33103, n32376, n27858, n32778, n3_adj_1595, n32777, 
        n4_adj_1596, n5_adj_1597, n23, n2_adj_1598, n1_adj_1599, n14_adj_1600, 
        sda_out_out, n32350, n33081, n32477, n33077, n32761, n33076, 
        n9188, n33074, n23_adj_1601, n32774, n31071, n31070, n31068, 
        n31067, n31065, n31064, n31062, n31061, n31059, n31058, 
        n31056, n31055, n31053, n34161, n33065, n33061, n33059, 
        n18705, n30736, clk_divided_enable_29, n32809, n33041, n33038, 
        n33037, n32258, n33035, n32773, n32806, n32772, n32771, 
        n33022, n26595, n9124, n33013, n33012, n34286, n30968, 
        n30967, n30965, n107, n30952, n32800, n30943, n32185, 
        n30934, n34280, n32176, n30925, n30919, n30916, n31694, 
        n29984, n31693, VCC_net, n32760, n32770, n32797, n30876, 
        n32769, n33173, clk_divided_enable_40, n32796, n32762, n32794;
    
    FD1S3AX adcdisplay_i1 (.D(n33134), .CK(clk_in_c), .Q(adcdisplay_c_0));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i1.GSR = "DISABLED";
    PFUMX mux_6247_i3 (.BLUT(n6706), .ALUT(n27858), .C0(n32875), .Z(realv_1_1__N_275));
    FD1S3AX adcdisplay_i2 (.D(n33119), .CK(clk_in_c), .Q(adcdisplay_c_1));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i2.GSR = "DISABLED";
    PFUMX mux_6248_i3 (.BLUT(n6715), .ALUT(n6719), .C0(n32909), .Z(realv_1_1__N_303));
    OB adcdisplay_pad_6 (.I(adcdisplay_c_6), .O(adcdisplay[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    VHI i30075 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    TSALL TSALL_INST (.TSALL(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB adcdisplay_pad_7 (.I(adcdisplay_c_7), .O(adcdisplay[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    BB sda_out_pad (.I(sda_out_N_166), .T(n8679), .B(sda_out), .O(sda_out_out));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(43[2] 191[14])
    mode_shift mode_control (.clk_in_c(clk_in_c), .btn_state(btn_state), 
            .\ctrlword_595_3[13] (ctrlword_595_3[13]), .\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), 
            .n707(n707), .n33081(n33081), .n33059(n33059), .n32258(n32258), 
            .clk_divided_enable_26(clk_divided_enable_26), .n3(n3_adj_1561), 
            .scl_out_N_143(scl_out_N_143), .rst_n_in_c(rst_n_in_c), .n712(n712), 
            .n711(n711), .clk_divided_enable_29(clk_divided_enable_29), 
            .n33076(n33076), .n6(n6_adj_1575), .\scl_out_N_146[1] (scl_out_N_146[1]), 
            .n7(n7_adj_1572), .\scl_out_N_162[1] (scl_out_N_162[1]), .n7_adj_84(n7_adj_1573), 
            .n17032(n17032), .n59(n59), .n30227(n30227));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(130[15:25])
    FD1S3AX adcdisplay_i8 (.D(adcdisplay_7__N_1[7]), .CK(clk_in_c), .Q(adcdisplay_c_7));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i8.GSR = "DISABLED";
    PFUMX i29516 (.BLUT(n33180), .ALUT(n33181), .C0(ADC_level[7]), .Z(decade_3__N_561));
    FD1S3AX adcdisplay_i7 (.D(adcdisplay_7__N_1[6]), .CK(clk_in_c), .Q(adcdisplay_c_6));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i7.GSR = "DISABLED";
    FD1S3AX adcdisplay_i6 (.D(n33108), .CK(clk_in_c), .Q(adcdisplay_c_5));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i6.GSR = "DISABLED";
    FD1S3AX adcdisplay_i5 (.D(adcdisplay_7__N_1[4]), .CK(clk_in_c), .Q(adcdisplay_c_4));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i5.GSR = "DISABLED";
    FD1S3AX adcdisplay_i4 (.D(adcdisplay_7__N_1[3]), .CK(clk_in_c), .Q(adcdisplay_c_3));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i4.GSR = "DISABLED";
    PFUMX i29512 (.BLUT(n33173), .ALUT(n33174), .C0(voltage_code[14]), 
          .Z(realv_1_1__N_283));
    LUT4 voltage_code_4__bdd_4_lut_29869 (.A(voltage_code[4]), .B(voltage_code[6]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_580)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut_29869.init = 16'h0db0;
    LUT4 realv_1_1__N_302_bdd_4_lut (.A(n32875), .B(realv_1_1__N_303), .C(realv_1_1__N_321), 
         .D(n32872), .Z(n31694)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam realv_1_1__N_302_bdd_4_lut.init = 16'h399c;
    FD1S3AX adcdisplay_i3 (.D(adcdisplay_7__N_1[2]), .CK(clk_in_c), .Q(adcdisplay_c_2));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(137[3] 139[10])
    defparam adcdisplay_i3.GSR = "DISABLED";
    LUT4 voltage_code_6__bdd_4_lut (.A(voltage_code[6]), .B(voltage_code[4]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_576)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+!(D))+!B))) */ ;
    defparam voltage_code_6__bdd_4_lut.init = 16'h2402;
    OB adcdisplay_pad_5 (.I(adcdisplay_c_5), .O(adcdisplay[5]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB adcdisplay_pad_4 (.I(adcdisplay_c_4), .O(adcdisplay[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB adcdisplay_pad_3 (.I(adcdisplay_c_3), .O(adcdisplay[3]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB adcdisplay_pad_2 (.I(adcdisplay_c_2), .O(adcdisplay[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB adcdisplay_pad_1 (.I(adcdisplay_c_1), .O(adcdisplay[1]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB adcdisplay_pad_0 (.I(adcdisplay_c_0), .O(adcdisplay[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[2:12])
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(14[2:9])
    OB din_pad (.I(din_c), .O(din));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(16[2:5])
    OB sck_pad (.I(sck_c), .O(sck));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(17[2:5])
    OB rck_pad (.I(rck_c), .O(rck));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(18[2:5])
    OB DA_LCD_pad (.I(DA_LCD_c), .O(DA_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[2:8])
    OB CLK_LCD_pad (.I(CLK_LCD_c), .O(CLK_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[9:16])
    OB RST_LCD_pad (.I(RST_LCD_c), .O(RST_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[17:24])
    OB DC_LCD_pad (.I(DC_LCD_c), .O(DC_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[25:31])
    OB BL_LCD_pad (.I(BL_LCD_c), .O(BL_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[32:38])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    IB mode_btn_in_pad (.I(mode_btn_in), .O(mode_btn_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(11[2:13])
    LUT4 i2_4_lut (.A(n23), .B(realv_1_1__N_292), .C(n32899), .D(n32909), 
         .Z(realv_1_1__N_326)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut.init = 16'h36c9;
    LUT4 ADC_level_7__I_0_i3_1_lut (.A(voltage_code[2]), .Z(adcdisplay_7__N_1[2])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 realv_1_1__N_279_bdd_4_lut (.A(n32909), .B(realv_1_1__N_283), .C(realv_1_1__N_292), 
         .D(n32899), .Z(n31756)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam realv_1_1__N_279_bdd_4_lut.init = 16'h399c;
    LUT4 i2_4_lut_adj_334 (.A(n23_adj_1601), .B(realv_1_1__N_321), .C(n32872), 
         .D(n32875), .Z(realv_1_1__N_372)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_adj_334.init = 16'h36c9;
    LUT4 mux_6249_i3_else_4_lut (.A(voltage_code[15]), .B(voltage_code[13]), 
         .Z(n33173)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam mux_6249_i3_else_4_lut.init = 16'h2222;
    PFUMX i28828 (.BLUT(n31756), .ALUT(n31755), .C0(n23), .Z(realv_1_1__N_322));
    LUT4 ADC_level_7__I_0_i8_1_lut (.A(ADC_level[7]), .Z(adcdisplay_7__N_1[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i8_1_lut.init = 16'h5555;
    ctrlword_595 datato595 (.GND_net(GND_net), .clk_in_c(clk_in_c), .sck_c(sck_c), 
            .din_c(din_c), .\ctrlword_595_3[13] (ctrlword_595_3[13]), .n32766(n32766), 
            .n32772(n32772), .n32773(n32773), .n32774(n32774), .\ctrlword_595_4_15__N_630[5] (ctrlword_595_4_15__N_630[5]), 
            .n32771(n32771), .n32778(n32778), .n32785(n32785), .n32777(n32777), 
            .n7(n7), .n30736(n30736), .n9357(n9357), .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), 
            .n33041(n33041), .n432(n432), .\ctrlword_595_4_15__N_630[2] (ctrlword_595_4_15__N_630[2]), 
            .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), .\ctrlword_595_6_15__N_662[7] (ctrlword_595_6_15__N_662[7]), 
            .\ctrlword_595_6_15__N_654[7] (ctrlword_595_6_15__N_654[7]), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .\ctrlword_595_3[1] (ctrlword_595_3[1]), .\ctrlword_595_3[2] (ctrlword_595_3[2]), 
            .\decade[3] (decade[3]), .n32905(n32905), .n32906(n32906), 
            .n32904(n32904), .rst_n_in_c(rst_n_in_c), .\ctrlword_595_4[7] (ctrlword_595_4[7]), 
            .\ctrlword_595_5[4] (ctrlword_595_5[4]), .\ctrlword_595_5[5] (ctrlword_595_5[5]), 
            .\ctrlword_595_1[7] (ctrlword_595_1[7]), .rck_c(rck_c), .\ctrlword_595_5_15__N_638[3] (ctrlword_595_5_15__N_638[3]), 
            .\ctrlword_595_3[4] (ctrlword_595_3[4]), .\ctrlword_595_6[3] (ctrlword_595_6[3]), 
            .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), .\ctrlword_595_5[6] (ctrlword_595_5[6]), 
            .\ctrlword_595_6[4] (ctrlword_595_6[4]), .\ctrlword_595_6[5] (ctrlword_595_6[5]), 
            .n33103(n33103), .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), 
            .\ctrlword_595_6[6] (ctrlword_595_6[6]), .\ctrlword_595_4_15__N_630[3] (ctrlword_595_4_15__N_630[3]), 
            .\ctrlword_595_5_15__N_638[1] (ctrlword_595_5_15__N_638[1]), .\ctrlword_595_3[3] (ctrlword_595_3[3]), 
            .\ctrlword_595_5_15__N_638[2] (ctrlword_595_5_15__N_638[2]), .n32350(n32350));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(132[12:24])
    LUT4 ADC_level_7__I_0_i5_1_lut (.A(voltage_code[4]), .Z(adcdisplay_7__N_1[4])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i5_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i4_1_lut (.A(voltage_code[3]), .Z(adcdisplay_7__N_1[3])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i4_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i6_1_lut_rep_651 (.A(voltage_code[5]), .Z(n33108)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i6_1_lut_rep_651.init = 16'h5555;
    LUT4 voltage_code_13__bdd_4_lut (.A(voltage_code[13]), .B(voltage_code[12]), 
         .C(voltage_code[14]), .D(voltage_code[15]), .Z(realv_1_1__N_293)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam voltage_code_13__bdd_4_lut.init = 16'h2410;
    LUT4 ADC_level_7__I_0_i2_1_lut_rep_662 (.A(voltage_code[1]), .Z(n33119)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam ADC_level_7__I_0_i2_1_lut_rep_662.init = 16'h5555;
    LUT4 i5301_3_lut_rep_455_4_lut_4_lut (.A(voltage_code[1]), .B(n32915), 
         .C(n32927), .D(voltage_code[2]), .Z(n32912)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam i5301_3_lut_rep_455_4_lut_4_lut.init = 16'h4bb4;
    LUT4 i6736_2_lut_2_lut_3_lut_4_lut_3_lut (.A(voltage_code[1]), .B(n32915), 
         .C(n32926), .Z(n9480)) /* synthesis lut_function=(!(A (B (C))+!A !(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam i6736_2_lut_2_lut_3_lut_4_lut_3_lut.init = 16'h6f6f;
    LUT4 i6931_2_lut_rep_445_3_lut_4_lut_3_lut (.A(voltage_code[1]), .B(n32915), 
         .C(n32926), .Z(n32902)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam i6931_2_lut_rep_445_3_lut_4_lut_3_lut.init = 16'hf6f6;
    LUT4 i1_2_lut_rep_446_4_lut_4_lut (.A(voltage_code[1]), .B(realv_5[0]), 
         .C(n32915), .D(n32926), .Z(n32903)) /* synthesis lut_function=(A (B+(D))+!A (B+!(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[21:30])
    defparam i1_2_lut_rep_446_4_lut_4_lut.init = 16'hefdc;
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 m0_lut (.Z(n34297)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    ADC ADC_work (.n18705(n18705), .n34297(n34297), .n30227(n30227), .n7(n7_adj_1572), 
        .n33111(n33111), .sda_out_N_166(sda_out_N_166), .cnt_start({Open_0, 
        Open_1, Open_2, cnt_start[0]}), .clk_divided_enable_8(clk_divided_enable_8), 
        .n293(n293), .n6(n6_adj_1575), .n7_adj_83(n7_adj_1573), .clk_divided_enable_40(clk_divided_enable_40), 
        .clk_divided_enable_29(clk_divided_enable_29), .n708(n708), .n32258(n32258), 
        .\cnt_main[0] (cnt_main[0]), .\cnt_main[1] (cnt_main[1]), .n712(n712), 
        .\cnt_read[0] (cnt_read[0]), .n34280(n34280), .\cnt_write[0] (cnt_write[0]), 
        .n710(n710), .n711(n711), .n33012(n33012), .clk_in_c(clk_in_c), 
        .\scl_out_N_162[1] (scl_out_N_162[1]), .n107(n107), .n3(n3_adj_1561), 
        .rst_n_in_c(rst_n_in_c), .n33076(n33076), .n707(n707), .sda_out_out(sda_out_out), 
        .n26595(n26595), .n1427(n1427), .\voltage_code[1] (voltage_code[1]), 
        .n33120(n33120), .n34286(n34286), .\voltage_code[2] (voltage_code[2]), 
        .\voltage_code[3] (voltage_code[3]), .\voltage_code[4] (voltage_code[4]), 
        .\cnt_stop[0] (cnt_stop[0]), .n59(n59), .GND_net(GND_net), .n299(n299), 
        .\voltage_code[5] (voltage_code[5]), .\voltage_code[6] (voltage_code[6]), 
        .\ADC_level[7] (ADC_level[7]), .n45(n45), .n17032(n17032), .\scl_out_N_146[1] (scl_out_N_146[1]), 
        .n8679(n8679), .clk_divided_N_170(clk_divided_N_170), .scl_out_c(scl_out_c), 
        .clk_divided_enable_26(clk_divided_enable_26), .scl_out_N_143(scl_out_N_143), 
        .n33059(n33059), .\realv_5[0] (realv_5[0]), .clk_divided_enable_32(clk_divided_enable_32), 
        .n44(n44), .n8(n8_adj_1571), .n30228(n30228));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(128[11:14])
    btn_debouncing btn_debounce (.clk_in_c(clk_in_c), .btn_state(btn_state), 
            .GND_net(GND_net), .mode_btn_in_c(mode_btn_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(129[15:29])
    PFUMX i28794 (.BLUT(n31694), .ALUT(n31693), .C0(n23_adj_1601), .Z(realv_1_1__N_368));
    trans_BCD BCD_transform (.realv_1_1__N_326(realv_1_1__N_326), .realv_1_1__N_322(realv_1_1__N_322), 
            .realv_1_1__N_321(realv_1_1__N_321), .n32791(n32791), .n32800(n32800), 
            .n32872(n32872), .\voltage_code[1] (voltage_code[1]), .n32915(n32915), 
            .\realv_5[0] (realv_5[0]), .n32912(n32912), .\ctrlword_595_1[7] (ctrlword_595_1[7]), 
            .GND_net(GND_net), .\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), 
            .n34297(n34297), .\ctrlword_595_3[1] (ctrlword_595_3[1]), .n32790(n32790), 
            .\ctrlword_595_3[2] (ctrlword_595_3[2]), .\ctrlword_595_3[3] (ctrlword_595_3[3]), 
            .\ctrlword_595_3[4] (ctrlword_595_3[4]), .n5(n5_adj_1592), .n4(n4_adj_1591), 
            .n31062(n31062), .\voltage_code[6] (voltage_code[6]), .\y_cnt[3] (y_cnt[3]), 
            .n5_adj_42(n5_adj_1568), .n4_adj_43(n4), .n31053(n31053), 
            .n2(n2_adj_1576), .n9188(n9188), .n31064(n31064), .n2_adj_44(n2), 
            .n1(n1_adj_1567), .n31052(n31052), .n13307(n13307), .\decade[3] (decade[3]), 
            .n32767(n32767), .n2_adj_45(n2_adj_1598), .n33132(n33132), 
            .n32760(n32760), .n23(n23), .\voltage_code[15] (voltage_code[15]), 
            .\ADC_level[7] (ADC_level[7]), .\unit[3] (unit[3]), .\voltage_code[13] (voltage_code[13]), 
            .\voltage_code[14] (voltage_code[14]), .\voltage_code[4] (voltage_code[4]), 
            .\voltage_code[5] (voltage_code[5]), .\voltage_code[12] (voltage_code[12]), 
            .\voltage_code[2] (voltage_code[2]), .\voltage_code[3] (voltage_code[3]), 
            .realv_1_1__N_303(realv_1_1__N_303), .n32909(n32909), .n31693(n31693), 
            .realv_1_1__N_292(realv_1_1__N_292), .realv_1_1__N_283(realv_1_1__N_283), 
            .n31755(n31755), .n32899(n32899), .n32785(n32785), .n33169(n33169), 
            .\ctrlword_595_3[13] (ctrlword_595_3[13]), .n30736(n30736), 
            .decade_3__N_561(decade_3__N_561), .n32875(n32875), .realv_1_1__N_275(realv_1_1__N_275), 
            .n32783(n32783), .n32796(n32796), .n33180(n33180), .n32773(n32773), 
            .n32766(n32766), .n32765(n32765), .\ctrlword_595_4_15__N_630[3] (ctrlword_595_4_15__N_630[3]), 
            .n32782(n32782), .n33181(n33181), .n32061(n32061), .n32063(n32063), 
            .n2240(n2240), .n5_adj_46(n5_adj_1589), .n4_adj_47(n4_adj_1590), 
            .n30968(n30968), .n2_adj_48(n2_adj_1582), .n1_adj_49(n1_adj_1570), 
            .n30964(n30964), .n5_adj_50(n5_adj_1578), .n4_adj_51(n4_adj_1579), 
            .n30952(n30952), .n32904(n32904), .n32905(n32905), .n32906(n32906), 
            .\ctrlword_595_5_15__N_638[3] (ctrlword_595_5_15__N_638[3]), .n2_adj_52(n2_adj_1556), 
            .n30942(n30942), .n30951(n30951), .n2_adj_53(n2_adj_1563), 
            .n30967(n30967), .n32806(n32806), .n29984(n29984), .n31877(n31877), 
            .n30919(n30919), .n30918(n30918), .n5_adj_54(n5_adj_1586), 
            .n4_adj_55(n4_adj_1557), .n31873(n31873), .n5_adj_56(n5_adj_1581), 
            .n4_adj_57(n4_adj_1569), .n30916(n30916), .n33022(n33022), 
            .n30915(n30915), .n5_adj_58(n5_adj_1580), .n4_adj_59(n4_adj_1577), 
            .n30965(n30965), .n5_adj_60(n5_adj_1562), .n6(n6_adj_1564), 
            .n2_adj_61(n2_adj_1594), .n1_adj_62(n1_adj_1593), .n30933(n30933), 
            .decade_3__N_580(decade_3__N_580), .decade_3__N_576(decade_3__N_576), 
            .n33174(n33174), .n5_adj_63(n5_adj_1587), .n4_adj_64(n4_adj_1588), 
            .n30934(n30934), .n32761(n32761), .n5_adj_65(n5_adj_1583), 
            .n4_adj_66(n4_adj_1584), .n30925(n30925), .n30943(n30943), 
            .n32762(n32762), .n2_adj_67(n2_adj_1585), .n30924(n30924), 
            .n32774(n32774), .n32772(n32772), .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), 
            .n14(n14_adj_1565), .n32711(n32711), .n30799(n30799), .n14_adj_68(n14), 
            .n34161(n34161), .n30798(n30798), .n33037(n33037), .n32589(n32589), 
            .n32692(n32692), .\ctrlword_595_6[6] (ctrlword_595_6[6]), .\realv_5[3] (realv_5[3]), 
            .n32809(n32809), .n32797(n32797), .n14_adj_69(n14_adj_1600), 
            .n30785(n30785), .n30930(n30930), .realv_2_0__N_506(realv_2_0__N_506), 
            .n1_adj_70(n1_adj_1560), .n32376(n32376), .n30331(n30331), 
            .n9357(n9357), .\ctrlword_595_5_15__N_638[1] (ctrlword_595_5_15__N_638[1]), 
            .\ctrlword_595_5_15__N_638[2] (ctrlword_595_5_15__N_638[2]), .realv_1_1__N_293(realv_1_1__N_293), 
            .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), .n6715(n6715), 
            .n23_adj_71(n23_adj_1601), .\ctrlword_595_5[6] (ctrlword_595_5[6]), 
            .n32771(n32771), .n32778(n32778), .n32777(n32777), .n432(n432), 
            .n33038(n33038), .n3(n3_adj_1595), .n32794(n32794), .n3003(n3003), 
            .n33061(n33061), .n2991(n2991), .n3016(n3016), .n32911(n32911), 
            .\ctrlword_595_6_15__N_654[7] (ctrlword_595_6_15__N_654[7]), .\ctrlword_595_6_15__N_662[7] (ctrlword_595_6_15__N_662[7]), 
            .n7(n7), .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), 
            .n5_adj_72(n5_adj_1597), .n4_adj_73(n4_adj_1596), .n30876(n30876), 
            .realv_1_1__N_372(realv_1_1__N_372), .n32896(n32896), .n33041(n33041), 
            .n2896(n2896), .n32176(n32176), .n33074(n33074), .n33143(n33143), 
            .n32477(n32477), .n2886(n2886), .n33035(n33035), .n32621(n32621), 
            .n33077(n33077), .n31978(n31978), .\ctrlword_595_4[7] (ctrlword_595_4[7]), 
            .n2898(n2898), .n2884(n2884), .n1_adj_74(n1_adj_1574), .n2913(n2913), 
            .n3_adj_75(n3), .realv_1_1__N_368(realv_1_1__N_368), .n1_adj_76(n1), 
            .\ctrlword_595_4_15__N_630[2] (ctrlword_595_4_15__N_630[2]), .n27858(n27858), 
            .\ctrlword_595_5[5] (ctrlword_595_5[5]), .n32769(n32769), .n6719(n6719), 
            .\ctrlword_595_5[4] (ctrlword_595_5[4]), .n32898(n32898), .n2_adj_77(n2_adj_1559), 
            .n30783(n30783), .n6706(n6706), .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), 
            .n33103(n33103), .\ctrlword_595_6[3] (ctrlword_595_6[3]), .n1_adj_78(n1_adj_1599), 
            .n2975(n2975), .n14498(n14498), .n9124(n9124), .n2973(n2973), 
            .n14496(n14496), .n31071(n31071), .n31070(n31070), .n31067(n31067), 
            .\adcdisplay_7__N_1[6] (adcdisplay_7__N_1[6]), .\ctrlword_595_6[4] (ctrlword_595_6[4]), 
            .\ctrlword_595_6[5] (ctrlword_595_6[5]), .n6_adj_79(n6), .n31059(n31059), 
            .n31056(n31056), .n31068(n31068), .n31061(n31061), .n8(n8), 
            .n32587(n32587), .n31058(n31058), .n31055(n31055), .n31065(n31065), 
            .n3_adj_80(n3_adj_1566), .n32897(n32897), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .\y_cnt[2] (y_cnt[2]), .\y_cnt[1] (y_cnt[1]), .\y_cnt[0] (y_cnt[0]), 
            .n32926(n32926), .n3008(n3008), .n32508(n32508), .n32927(n32927), 
            .n5_adj_81(n5), .n4_adj_82(n4_adj_1558), .n30784(n30784), 
            .n32770(n32770), .n32768(n32768), .n33134(n33134), .n33110(n33110), 
            .n33013(n33013), .n9480(n9480), .n32902(n32902), .n33065(n33065), 
            .\x_cnt[0] (x_cnt[0]), .n32185(n32185), .n31874(n31874));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(131[19:28])
    LCD_display LCDdisplay (.clk_in_c(clk_in_c), .n30915(n30915), .n30916(n30916), 
            .n32806(n32806), .n30918(n30918), .n30919(n30919), .y_cnt({Open_3, 
            Open_4, Open_5, Open_6, y_cnt[3:0]}), .n30924(n30924), 
            .n30925(n30925), .n30933(n30933), .n30934(n30934), .n30942(n30942), 
            .n30943(n30943), .GND_net(GND_net), .n30951(n30951), .n30952(n30952), 
            .n30964(n30964), .n30965(n30965), .\x_cnt[0] (x_cnt[0]), .n30967(n30967), 
            .n30968(n30968), .n33038(n33038), .n32762(n32762), .n33065(n33065), 
            .n32912(n32912), .rst_n_in_c(rst_n_in_c), .n32185(n32185), 
            .n32911(n32911), .n710(n710), .n712(n712), .n32176(n32176), 
            .BL_LCD_c(BL_LCD_c), .n33077(n33077), .\unit[3] (unit[3]), 
            .\realv_5[0] (realv_5[0]), .n2(n2), .n32906(n32906), .n3008(n3008), 
            .n32904(n32904), .n32761(n32761), .n2_adj_1(n2_adj_1598), 
            .n32790(n32790), .n30876(n30876), .n32772(n32772), .n32063(n32063), 
            .n31052(n31052), .n31053(n31053), .n31055(n31055), .n31056(n31056), 
            .n31058(n31058), .n31059(n31059), .n31061(n31061), .n31062(n31062), 
            .n31064(n31064), .n31065(n31065), .n31067(n31067), .n31068(n31068), 
            .n31070(n31070), .n31071(n31071), .n32769(n32769), .n32785(n32785), 
            .n14(n14_adj_1600), .n32771(n32771), .n33037(n33037), .n2884(n2884), 
            .n2913(n2913), .n32809(n32809), .n33013(n33013), .n6(n6_adj_1564), 
            .n3016(n3016), .n2898(n2898), .n32800(n32800), .n32905(n32905), 
            .DA_LCD_c(DA_LCD_c), .n2896(n2896), .n33132(n33132), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .n2240(n2240), .n3(n3_adj_1595), .n32773(n32773), .n2973(n2973), 
            .n31978(n31978), .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), 
            .n31877(n31877), .n32796(n32796), .n32711(n32711), .n1(n1_adj_1574), 
            .n32692(n32692), .n32791(n32791), .n1_adj_2(n1_adj_1593), 
            .n2975(n2975), .n2_adj_3(n2_adj_1585), .n2991(n2991), .n4(n4_adj_1584), 
            .n5(n5_adj_1583), .n3_adj_4(n3_adj_1566), .n34161(n34161), 
            .n4_adj_5(n4_adj_1558), .n32797(n32797), .\realv_5[3] (realv_5[3]), 
            .n2_adj_6(n2_adj_1594), .n4_adj_7(n4_adj_1588), .n2_adj_8(n2_adj_1556), 
            .n13307(n13307), .n33143(n33143), .n4_adj_9(n4_adj_1591), 
            .n5_adj_10(n5_adj_1592), .n33041(n33041), .n2_adj_11(n2_adj_1576), 
            .n4_adj_12(n4_adj_1579), .n5_adj_13(n5_adj_1578), .n33061(n33061), 
            .n4_adj_14(n4_adj_1577), .n5_adj_15(n5_adj_1580), .n3003(n3003), 
            .n4_adj_16(n4_adj_1596), .n4_adj_17(n4_adj_1590), .n33169(n33169), 
            .n32778(n32778), .n32767(n32767), .n32765(n32765), .n32760(n32760), 
            .n32621(n32621), .n32777(n32777), .n33022(n33022), .n5_adj_18(n5_adj_1587), 
            .n32587(n32587), .n32783(n32783), .n32589(n32589), .n3_adj_19(n3), 
            .n4_adj_20(n4_adj_1557), .n29984(n29984), .n32903(n32903), 
            .n5_adj_21(n5_adj_1562), .n32794(n32794), .realv_2_0__N_506(realv_2_0__N_506), 
            .n30930(n30930), .n5_adj_22(n5_adj_1589), .n5_adj_23(n5), 
            .n5_adj_24(n5_adj_1597), .n711(n711), .n33081(n33081), .n107(n107), 
            .\cnt_start[0] (cnt_start[0]), .n293(n293), .\cnt_write[0] (cnt_write[0]), 
            .n34280(n34280), .n44(n44), .n33012(n33012), .\cnt_read[0] (cnt_read[0]), 
            .n30228(n30228), .n33120(n33120), .n45(n45), .n299(n299), 
            .\cnt_stop[0] (cnt_stop[0]), .n8(n8_adj_1571), .n32766(n32766), 
            .n1_adj_25(n1), .n30331(n30331), .n32774(n32774), .\decade[3] (decade[3]), 
            .n32898(n32898), .n32768(n32768), .n32508(n32508), .n4_adj_26(n4_adj_1569), 
            .n32897(n32897), .n32061(n32061), .n5_adj_27(n5_adj_1581), 
            .n2886(n2886), .n1_adj_28(n1_adj_1567), .n32902(n32902), .n33110(n33110), 
            .n1_adj_29(n1_adj_1599), .n9124(n9124), .n32782(n32782), .n14_adj_30(n14), 
            .n32915(n32915), .\voltage_code[1] (voltage_code[1]), .n14_adj_31(n14_adj_1565), 
            .n6_adj_32(n6), .n8_adj_33(n8), .n5_adj_34(n5_adj_1586), .n1_adj_35(n1_adj_1560), 
            .n32477(n32477), .n1_adj_36(n1_adj_1570), .n9188(n9188), .n30783(n30783), 
            .n30784(n30784), .n30785(n30785), .n30798(n30798), .n30799(n30799), 
            .n32770(n32770), .RST_LCD_c(RST_LCD_c), .CLK_LCD_c(CLK_LCD_c), 
            .DC_LCD_c(DC_LCD_c), .n4_adj_37(n4), .n33111(n33111), .n5_adj_38(n5_adj_1568), 
            .n26595(n26595), .clk_divided_enable_40(clk_divided_enable_40), 
            .clk_divided_N_170(clk_divided_N_170), .n1427(n1427), .n708(n708), 
            .n18705(n18705), .clk_divided_enable_32(clk_divided_enable_32), 
            .n32896(n32896), .n31874(n31874), .n31873(n31873), .\ctrlword_595_4_15__N_630[5] (ctrlword_595_4_15__N_630[5]), 
            .n32350(n32350), .n2_adj_39(n2_adj_1563), .n2_adj_40(n2_adj_1582), 
            .n2_adj_41(n2_adj_1559), .n14496(n14496), .n14498(n14498), 
            .n32376(n32376), .n33074(n33074), .clk_divided_enable_8(clk_divided_enable_8), 
            .\cnt_main[1] (cnt_main[1]), .\cnt_main[0] (cnt_main[0]), .n34286(n34286), 
            .n33035(n33035));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(133[13:24])
    
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
// Verilog Description of module mode_shift
//

module mode_shift (clk_in_c, btn_state, \ctrlword_595_3[13] , \ctrlword_595_3[13]__inv , 
            n707, n33081, n33059, n32258, clk_divided_enable_26, n3, 
            scl_out_N_143, rst_n_in_c, n712, n711, clk_divided_enable_29, 
            n33076, n6, \scl_out_N_146[1] , n7, \scl_out_N_162[1] , 
            n7_adj_84, n17032, n59, n30227);
    input clk_in_c;
    input btn_state;
    output \ctrlword_595_3[13] ;
    output \ctrlword_595_3[13]__inv ;
    input n707;
    output n33081;
    input n33059;
    input n32258;
    output clk_divided_enable_26;
    input n3;
    output scl_out_N_143;
    input rst_n_in_c;
    input n712;
    input n711;
    output clk_divided_enable_29;
    input n33076;
    output n6;
    input \scl_out_N_146[1] ;
    output n7;
    input \scl_out_N_162[1] ;
    output n7_adj_84;
    output n17032;
    input n59;
    output n30227;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    
    wire btn_state_ls, moderec, moderec_N_267;
    
    FD1S3AX btn_state_ls_19 (.D(btn_state), .CK(clk_in_c), .Q(btn_state_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(34[3] 37[10])
    defparam btn_state_ls_19.GSR = "DISABLED";
    FD1S3AX mode_20 (.D(moderec), .CK(clk_in_c), .Q(\ctrlword_595_3[13] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(34[3] 37[10])
    defparam mode_20.GSR = "DISABLED";
    FD1S3AX moderec_18 (.D(moderec_N_267), .CK(clk_in_c), .Q(moderec)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(23[3] 29[10])
    defparam moderec_18.GSR = "ENABLED";
    INV i30077 (.A(\ctrlword_595_3[13] ), .Z(\ctrlword_595_3[13]__inv ));
    LUT4 moderec_I_0_3_lut (.A(moderec), .B(btn_state), .C(btn_state_ls), 
         .Z(moderec_N_267)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(26[4] 28[11])
    defparam moderec_I_0_3_lut.init = 16'h9a9a;
    LUT4 i1_3_lut_4_lut (.A(n707), .B(n33081), .C(n33059), .D(n32258), 
         .Z(clk_divided_enable_26)) /* synthesis lut_function=(A (B+(C))+!A (B+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_3_lut_4_lut.init = 16'hfdec;
    LUT4 i1_3_lut_4_lut_adj_332 (.A(n707), .B(n33081), .C(n33059), .D(n3), 
         .Z(scl_out_N_143)) /* synthesis lut_function=(A (B+(C))+!A (B+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_3_lut_4_lut_adj_332.init = 16'hfdec;
    LUT4 i1_2_lut_rep_624 (.A(rst_n_in_c), .B(n712), .Z(n33081)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_rep_624.init = 16'hdddd;
    LUT4 i1_2_lut_rep_587_3_lut (.A(rst_n_in_c), .B(n712), .C(n711), .Z(clk_divided_enable_29)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_rep_587_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(rst_n_in_c), .B(n712), .C(n33076), 
         .D(n711), .Z(n6)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rst_n_in_c), .B(n712), .C(\scl_out_N_146[1] ), 
         .D(n711), .Z(n7)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_333 (.A(rst_n_in_c), .B(n712), .C(\scl_out_N_162[1] ), 
         .D(n711), .Z(n7_adj_84)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_4_lut_adj_333.init = 16'h0020;
    LUT4 i14003_3_lut_3_lut_3_lut (.A(rst_n_in_c), .B(n712), .C(n711), 
         .Z(n17032)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i14003_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i28655_2_lut_2_lut_3_lut_4_lut (.A(rst_n_in_c), .B(n712), .C(n59), 
         .D(n711), .Z(n30227)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i28655_2_lut_2_lut_3_lut_4_lut.init = 16'h0002;
    
endmodule
//
// Verilog Description of module ctrlword_595
//

module ctrlword_595 (GND_net, clk_in_c, sck_c, din_c, \ctrlword_595_3[13] , 
            n32766, n32772, n32773, n32774, \ctrlword_595_4_15__N_630[5] , 
            n32771, n32778, n32785, n32777, n7, n30736, n9357, 
            \ctrlword_595_4_15__N_622[1] , n33041, n432, \ctrlword_595_4_15__N_630[2] , 
            \ctrlword_595_4_15__N_630[1] , \ctrlword_595_6_15__N_662[7] , 
            \ctrlword_595_6_15__N_654[7] , \ctrlword_595_3[5] , \ctrlword_595_3[1] , 
            \ctrlword_595_3[2] , \decade[3] , n32905, n32906, n32904, 
            rst_n_in_c, \ctrlword_595_4[7] , \ctrlword_595_5[4] , \ctrlword_595_5[5] , 
            \ctrlword_595_1[7] , rck_c, \ctrlword_595_5_15__N_638[3] , 
            \ctrlword_595_3[4] , \ctrlword_595_6[3] , \ctrlword_595_5_15__N_646[3] , 
            \ctrlword_595_5[6] , \ctrlword_595_6[4] , \ctrlword_595_6[5] , 
            n33103, \ctrlword_595_6_15__N_662[3] , \ctrlword_595_6[6] , 
            \ctrlword_595_4_15__N_630[3] , \ctrlword_595_5_15__N_638[1] , 
            \ctrlword_595_3[3] , \ctrlword_595_5_15__N_638[2] , n32350);
    input GND_net;
    input clk_in_c;
    output sck_c;
    output din_c;
    input \ctrlword_595_3[13] ;
    input n32766;
    input n32772;
    input n32773;
    input n32774;
    output \ctrlword_595_4_15__N_630[5] ;
    input n32771;
    input n32778;
    input n32785;
    input n32777;
    input n7;
    input n30736;
    input n9357;
    input \ctrlword_595_4_15__N_622[1] ;
    input n33041;
    output n432;
    input \ctrlword_595_4_15__N_630[2] ;
    input \ctrlword_595_4_15__N_630[1] ;
    input \ctrlword_595_6_15__N_662[7] ;
    input \ctrlword_595_6_15__N_654[7] ;
    input \ctrlword_595_3[5] ;
    input \ctrlword_595_3[1] ;
    input \ctrlword_595_3[2] ;
    input \decade[3] ;
    input n32905;
    input n32906;
    input n32904;
    input rst_n_in_c;
    input \ctrlword_595_4[7] ;
    input \ctrlword_595_5[4] ;
    input \ctrlword_595_5[5] ;
    input \ctrlword_595_1[7] ;
    output rck_c;
    input \ctrlword_595_5_15__N_638[3] ;
    input \ctrlword_595_3[4] ;
    input \ctrlword_595_6[3] ;
    input \ctrlword_595_5_15__N_646[3] ;
    input \ctrlword_595_5[6] ;
    input \ctrlword_595_6[4] ;
    input \ctrlword_595_6[5] ;
    output n33103;
    input \ctrlword_595_6_15__N_662[3] ;
    input \ctrlword_595_6[6] ;
    input \ctrlword_595_4_15__N_630[3] ;
    input \ctrlword_595_5_15__N_638[1] ;
    input \ctrlword_595_3[3] ;
    input \ctrlword_595_5_15__N_638[2] ;
    input n32350;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    
    wire n27576;
    wire [31:0]shift_clock_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(26[9:24])
    wire [31:0]n133;
    
    wire n27575;
    wire [15:0]n33;
    
    wire clk_in_c_enable_97;
    wire [15:0]n418;
    
    wire n27574, n27573, shift_clock_ls, sck_N_765;
    wire [2:0]codeword_partnum;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(32[9:25])
    
    wire n6781;
    wire [2:0]n12;
    
    wire n27572, n27571, n33910, n12901, n30738, n12637, n27570, 
        n27569, n27568, n27567, n27566, n27565, n27564, n27563, 
        n27562, n27561, n12554, n30243, n3238;
    wire [0:0]n2980;
    wire [0:0]n3060;
    
    wire n32281, n32282, n30855, din_N_761, n32283, din_N_762, din_N_755, 
        n32348, n32349, n17080, n32403, n33904, n33905, n33903, 
        n33902, n33906, n33907, n33908, n33909, n32401;
    wire [15:0]ctrlword_595_6;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(36[9:23])
    
    wire n17059, n49, n31341, n58, n50, n41, n60, n54, n42, 
        n51, n39, n56, n46, n9643, n9644;
    wire [0:0]n2921;
    
    wire n32479, n32480, clk_in_c_enable_46, n3, n29866, n30750, 
        n31927;
    wire [15:0]ctrlword_595_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(35[9:23])
    
    wire n31928, n9616, n12885, n12541, n12543;
    wire [0:0]n3050;
    
    wire n32351, n31090, n31089, n31925, n9371, n31929, n9619, 
        n30853, n30854, n27797;
    wire [0:0]n3149;
    
    wire n27737, n31926, n9370, n33057, n12881, n12884, n33102, 
        n9615, n33106, n33105, n30715, n12880, n10, n33058;
    
    CCU2D shift_clock_cnt_3778_add_4_33 (.A0(shift_clock_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27576), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_33.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_33.INIT1 = 16'h0000;
    defparam shift_clock_cnt_3778_add_4_33.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_33.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_31 (.A0(shift_clock_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27575), .COUT(n27576), .S0(n133[29]), 
          .S1(n133[30]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_31.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_31.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_31.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_31.INJECT1_1 = "NO";
    FD1P3AY shift_cnt_FSM__i0 (.D(n418[15]), .SP(clk_in_c_enable_97), .CK(clk_in_c), 
            .Q(n33[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i0.GSR = "ENABLED";
    CCU2D shift_clock_cnt_3778_add_4_29 (.A0(shift_clock_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27574), .COUT(n27575), .S0(n133[27]), 
          .S1(n133[28]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_29.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_29.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_29.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_29.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_27 (.A0(shift_clock_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27573), .COUT(n27574), .S0(n133[25]), 
          .S1(n133[26]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_27.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_27.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_27.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_27.INJECT1_1 = "NO";
    FD1S3AX shift_clock_ls_60 (.D(sck_c), .CK(clk_in_c), .Q(shift_clock_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(66[3] 68[10])
    defparam shift_clock_ls_60.GSR = "DISABLED";
    FD1S3AY shift_clock_59 (.D(sck_N_765), .CK(clk_in_c), .Q(sck_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(51[3] 60[10])
    defparam shift_clock_59.GSR = "ENABLED";
    FD1S3IX codeword_partnum__i0 (.D(n12[0]), .CK(clk_in_c), .CD(n6781), 
            .Q(codeword_partnum[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i0.GSR = "DISABLED";
    CCU2D shift_clock_cnt_3778_add_4_25 (.A0(shift_clock_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27572), .COUT(n27573), .S0(n133[23]), 
          .S1(n133[24]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_25.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_25.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_25.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_25.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_23 (.A0(shift_clock_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27571), .COUT(n27572), .S0(n133[21]), 
          .S1(n133[22]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_23.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_23.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_23.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_23.INJECT1_1 = "NO";
    LUT4 i28537_4_lut (.A(n33910), .B(n12901), .C(n418[7]), .D(n30738), 
         .Z(n12637)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i28537_4_lut.init = 16'hcacc;
    CCU2D shift_clock_cnt_3778_add_4_21 (.A0(shift_clock_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27570), .COUT(n27571), .S0(n133[19]), 
          .S1(n133[20]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_21.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_21.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_21.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_21.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_19 (.A0(shift_clock_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27569), .COUT(n27570), .S0(n133[17]), 
          .S1(n133[18]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_19.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_19.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_19.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_19.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_17 (.A0(shift_clock_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27568), .COUT(n27569), .S0(n133[15]), 
          .S1(n133[16]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_17.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_17.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_17.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_17.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_15 (.A0(shift_clock_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27567), .COUT(n27568), .S0(n133[13]), 
          .S1(n133[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_15.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_15.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_15.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_15.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_13 (.A0(shift_clock_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27566), .COUT(n27567), .S0(n133[11]), 
          .S1(n133[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_13.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_13.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_13.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_13.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_11 (.A0(shift_clock_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27565), .COUT(n27566), .S0(n133[9]), 
          .S1(n133[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_11.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_11.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_11.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_11.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_9 (.A0(shift_clock_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27564), .COUT(n27565), .S0(n133[7]), 
          .S1(n133[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_9.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_9.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_9.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_9.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_7 (.A0(shift_clock_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27563), .COUT(n27564), .S0(n133[5]), 
          .S1(n133[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_7.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_7.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_7.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_7.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_5 (.A0(shift_clock_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27562), .COUT(n27563), .S0(n133[3]), 
          .S1(n133[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_5.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_5.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_5.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_5.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_3 (.A0(shift_clock_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27561), .COUT(n27562), .S0(n133[1]), 
          .S1(n133[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_3.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_3.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3778_add_4_3.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_3.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3778_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_clock_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n27561), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778_add_4_1.INIT0 = 16'hF000;
    defparam shift_clock_cnt_3778_add_4_1.INIT1 = 16'h0555;
    defparam shift_clock_cnt_3778_add_4_1.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3778_add_4_1.INJECT1_1 = "NO";
    LUT4 i27796_2_lut (.A(n418[6]), .B(n418[5]), .Z(n30738)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i27796_2_lut.init = 16'h1111;
    LUT4 sck_I_0_73_2_lut_rep_688 (.A(sck_c), .B(shift_clock_ls), .Z(clk_in_c_enable_97)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(77[8:46])
    defparam sck_I_0_73_2_lut_rep_688.init = 16'h2222;
    PFUMX mux_1418_i1 (.BLUT(n12554), .ALUT(n30243), .C0(n3238), .Z(n2980[0]));
    LUT4 n3061_bdd_4_lut_29494 (.A(n3060[0]), .B(n2980[0]), .C(codeword_partnum[0]), 
         .D(n33[0]), .Z(n32281)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam n3061_bdd_4_lut_29494.init = 16'h0fac;
    LUT4 n32281_bdd_2_lut (.A(n32281), .B(codeword_partnum[2]), .Z(n32282)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n32281_bdd_2_lut.init = 16'h2222;
    LUT4 n30855_bdd_4_lut_29495 (.A(n30855), .B(din_N_761), .C(n33[0]), 
         .D(codeword_partnum[2]), .Z(n32283)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A ((D)+!B))) */ ;
    defparam n30855_bdd_4_lut_29495.init = 16'h0acc;
    FD1P3AX din_62 (.D(din_N_755), .SP(din_N_762), .CK(clk_in_c), .Q(din_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam din_62.GSR = "ENABLED";
    LUT4 n32348_bdd_2_lut (.A(n32348), .B(\ctrlword_595_3[13] ), .Z(n32349)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n32348_bdd_2_lut.init = 16'heeee;
    LUT4 realv_2_3__bdd_4_lut_29189 (.A(n32766), .B(n32772), .C(n32773), 
         .D(n32774), .Z(n32348)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A !((C (D)+!C !(D))+!B))) */ ;
    defparam realv_2_3__bdd_4_lut_29189.init = 16'h53b7;
    LUT4 realv_2_1__bdd_4_lut (.A(n32774), .B(n32766), .C(n32772), .D(n32773), 
         .Z(\ctrlword_595_4_15__N_630[5] )) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B))) */ ;
    defparam realv_2_1__bdd_4_lut.init = 16'h7f3d;
    LUT4 i14063_2_lut_3_lut (.A(sck_c), .B(shift_clock_ls), .C(n418[15]), 
         .Z(n17080)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(77[8:46])
    defparam i14063_2_lut_3_lut.init = 16'h2020;
    LUT4 ctrlword_595_5_15__N_638_2__bdd_4_lut (.A(n32771), .B(n32778), 
         .C(n32785), .D(n32777), .Z(n32403)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C (D))+!B (C+(D)))) */ ;
    defparam ctrlword_595_5_15__N_638_2__bdd_4_lut.init = 16'hae6f;
    LUT4 n7_bdd_3_lut_30007 (.A(n7), .B(n33904), .C(n30736), .Z(n33905)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7_bdd_3_lut_30007.init = 16'hcaca;
    LUT4 ctrlword_595_4_15__N_622_1__bdd_2_lut (.A(n32774), .B(n9357), .Z(n33903)) /* synthesis lut_function=((B)+!A) */ ;
    defparam ctrlword_595_4_15__N_622_1__bdd_2_lut.init = 16'hdddd;
    LUT4 ctrlword_595_4_15__N_622_1__bdd_2_lut_29885 (.A(\ctrlword_595_4_15__N_622[1] ), 
         .B(n33041), .Z(n33902)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam ctrlword_595_4_15__N_622_1__bdd_2_lut_29885.init = 16'hbbbb;
    LUT4 ctrlword_595_4_15__N_630_2__bdd_4_lut_30000 (.A(\ctrlword_595_4_15__N_622[1] ), 
         .B(n33041), .C(n418[3]), .D(n432), .Z(n33906)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B+!(C+(D)))) */ ;
    defparam ctrlword_595_4_15__N_630_2__bdd_4_lut_30000.init = 16'hb3ba;
    LUT4 ctrlword_595_4_15__N_630_2__bdd_3_lut_30001 (.A(\ctrlword_595_4_15__N_630[2] ), 
         .B(n432), .C(\ctrlword_595_4_15__N_630[1] ), .Z(n33907)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam ctrlword_595_4_15__N_630_2__bdd_3_lut_30001.init = 16'hb8b8;
    LUT4 n33908_bdd_3_lut (.A(n33908), .B(n33906), .C(\ctrlword_595_3[13] ), 
         .Z(n33909)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n33908_bdd_3_lut.init = 16'hcaca;
    LUT4 realv_3_3__bdd_4_lut_29261 (.A(n32771), .B(n32777), .C(n32778), 
         .D(n32785), .Z(n32401)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam realv_3_3__bdd_4_lut_29261.init = 16'hbede;
    LUT4 i28483_3_lut (.A(\ctrlword_595_6_15__N_662[7] ), .B(\ctrlword_595_6_15__N_654[7] ), 
         .C(\ctrlword_595_3[13] ), .Z(ctrlword_595_6[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(112[35:44])
    defparam i28483_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut (.A(sck_c), .B(n17059), .Z(sck_N_765)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i28693_4_lut (.A(n49), .B(n31341), .C(n58), .D(n50), .Z(n17059)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i28693_4_lut.init = 16'h0004;
    LUT4 i17_4_lut (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[18]), .C(shift_clock_cnt[28]), 
         .D(shift_clock_cnt[2]), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i28692_4_lut (.A(n41), .B(n60), .C(n54), .D(n42), .Z(n31341)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i28692_4_lut.init = 16'h0001;
    LUT4 i26_4_lut (.A(n51), .B(n39), .C(shift_clock_cnt[1]), .D(shift_clock_cnt[4]), 
         .Z(n58)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i26_4_lut.init = 16'hffef;
    LUT4 i18_4_lut (.A(shift_clock_cnt[8]), .B(shift_clock_cnt[11]), .C(shift_clock_cnt[16]), 
         .D(shift_clock_cnt[21]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i9_2_lut (.A(shift_clock_cnt[27]), .B(shift_clock_cnt[30]), .Z(n41)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i9_2_lut.init = 16'heeee;
    LUT4 i28_4_lut (.A(shift_clock_cnt[10]), .B(n56), .C(n46), .D(shift_clock_cnt[20]), 
         .Z(n60)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i28_4_lut.init = 16'hfffe;
    LUT4 i22_4_lut (.A(shift_clock_cnt[19]), .B(shift_clock_cnt[5]), .C(shift_clock_cnt[22]), 
         .D(shift_clock_cnt[6]), .Z(n54)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i10_2_lut (.A(shift_clock_cnt[7]), .B(shift_clock_cnt[14]), .Z(n42)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i10_2_lut.init = 16'heeee;
    LUT4 i6898_3_lut (.A(n9643), .B(\ctrlword_595_3[5] ), .C(n418[5]), 
         .Z(n9644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i6898_3_lut.init = 16'hcaca;
    LUT4 i24_4_lut (.A(shift_clock_cnt[29]), .B(shift_clock_cnt[3]), .C(shift_clock_cnt[13]), 
         .D(shift_clock_cnt[31]), .Z(n56)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i24_4_lut.init = 16'hfffe;
    LUT4 i14_2_lut (.A(shift_clock_cnt[15]), .B(shift_clock_cnt[23]), .Z(n46)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i14_2_lut.init = 16'heeee;
    LUT4 i19_4_lut (.A(shift_clock_cnt[25]), .B(shift_clock_cnt[9]), .C(shift_clock_cnt[26]), 
         .D(shift_clock_cnt[12]), .Z(n51)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i19_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(shift_clock_cnt[17]), .B(shift_clock_cnt[24]), .Z(n39)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 mux_1372_i1_3_lut (.A(\ctrlword_595_3[1] ), .B(\ctrlword_595_3[2] ), 
         .C(n432), .Z(n2921[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam mux_1372_i1_3_lut.init = 16'hcaca;
    LUT4 realv_3_3__bdd_4_lut_29287 (.A(\decade[3] ), .B(n32905), .C(n32906), 
         .D(n32904), .Z(n32479)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam realv_3_3__bdd_4_lut_29287.init = 16'hf76b;
    LUT4 realv_3_3__bdd_4_lut_29307 (.A(n32771), .B(n32777), .C(n32778), 
         .D(n32785), .Z(n32480)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam realv_3_3__bdd_4_lut_29307.init = 16'hd6ef;
    FD1P3IX codeword_partnum__i1 (.D(n3), .SP(clk_in_c_enable_46), .CD(n6781), 
            .CK(clk_in_c), .Q(codeword_partnum[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i1.GSR = "DISABLED";
    FD1P3IX codeword_partnum__i2 (.D(n29866), .SP(clk_in_c_enable_46), .CD(n6781), 
            .CK(clk_in_c), .Q(codeword_partnum[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i2.GSR = "DISABLED";
    LUT4 i28703_4_lut (.A(n418[7]), .B(n418[6]), .C(n418[5]), .D(n418[4]), 
         .Z(n30750)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i28703_4_lut.init = 16'heeef;
    LUT4 n31927_bdd_3_lut (.A(n31927), .B(ctrlword_595_5[7]), .C(n418[7]), 
         .Z(n31928)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31927_bdd_3_lut.init = 16'hcaca;
    LUT4 i18261_4_lut (.A(n9616), .B(n418[8]), .C(n12885), .D(n30750), 
         .Z(n12541)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(112[35:44])
    defparam i18261_4_lut.init = 16'hfcee;
    PFUMX mux_1482_i1 (.BLUT(n12543), .ALUT(n3050[0]), .C0(n3238), .Z(n3060[0]));
    LUT4 i3_4_lut (.A(clk_in_c_enable_46), .B(codeword_partnum[0]), .C(codeword_partnum[1]), 
         .D(codeword_partnum[2]), .Z(n6781)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i6270_2_lut (.A(codeword_partnum[0]), .B(clk_in_c_enable_46), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam i6270_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_329 (.A(sck_c), .B(rst_n_in_c), .C(n418[15]), .D(shift_clock_ls), 
         .Z(clk_in_c_enable_46)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(105[8:46])
    defparam i3_4_lut_adj_329.init = 16'h4000;
    LUT4 i28532_3_lut (.A(n32351), .B(\ctrlword_595_4[7] ), .C(n418[7]), 
         .Z(n12901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i28532_3_lut.init = 16'hcaca;
    LUT4 n31090_bdd_3_lut_29177 (.A(n31090), .B(n31089), .C(n432), .Z(n31925)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n31090_bdd_3_lut_29177.init = 16'hacac;
    LUT4 i6627_3_lut (.A(\ctrlword_595_5[4] ), .B(\ctrlword_595_5[5] ), 
         .C(n418[5]), .Z(n9371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i6627_3_lut.init = 16'hcaca;
    LUT4 i18017_2_lut (.A(n31929), .B(n418[8]), .Z(n9619)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i18017_2_lut.init = 16'heeee;
    L6MUX21 i27913 (.D0(n30853), .D1(n30854), .SD(codeword_partnum[0]), 
            .Z(n30855));
    LUT4 i18260_2_lut (.A(n12637), .B(n418[8]), .Z(n12543)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i18260_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(n418[8]), .B(\ctrlword_595_1[7] ), .C(n3238), .D(n27797), 
         .Z(din_N_761)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(107[35:44])
    defparam i2_4_lut.init = 16'hfefa;
    PFUMX i27911 (.BLUT(n9619), .ALUT(n3149[0]), .C0(n3238), .Z(n30853));
    PFUMX i28949 (.BLUT(n9371), .ALUT(n31928), .C0(n30750), .Z(n31929));
    LUT4 i17928_2_lut (.A(n33[0]), .B(rst_n_in_c), .Z(rck_c)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(90[3] 96[10])
    defparam i17928_2_lut.init = 16'h8888;
    LUT4 i2630_2_lut (.A(codeword_partnum[0]), .B(codeword_partnum[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(119[25:41])
    defparam i2630_2_lut.init = 16'h6666;
    LUT4 i15_3_lut (.A(codeword_partnum[0]), .B(codeword_partnum[2]), .C(codeword_partnum[1]), 
         .Z(n29866)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(119[25:41])
    defparam i15_3_lut.init = 16'h6c6c;
    PFUMX i27912 (.BLUT(n12541), .ALUT(n27737), .C0(n3238), .Z(n30854));
    PFUMX i28945 (.BLUT(n31925), .ALUT(\ctrlword_595_5_15__N_638[3] ), .C0(n418[3]), 
          .Z(n31926));
    L6MUX21 i28947 (.D0(n31926), .D1(n9370), .SD(n33057), .Z(n31927));
    FD1P3IX shift_cnt_FSM__i1 (.D(n33[0]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[1]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i1.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i2 (.D(n418[1]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n432));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i2.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i3 (.D(n432), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[3]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i3.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i4 (.D(n418[3]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i4.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i5 (.D(n418[4]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[5]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i5.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i6 (.D(n418[5]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i6.GSR = "ENABLED";
    LUT4 i18031_4_lut (.A(n12881), .B(n418[8]), .C(\ctrlword_595_3[4] ), 
         .D(n418[7]), .Z(n12554)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i18031_4_lut.init = 16'hfcee;
    PFUMX i9994 (.BLUT(n12884), .ALUT(ctrlword_595_6[7]), .C0(n418[7]), 
          .Z(n12885));
    FD1P3IX shift_cnt_FSM__i7 (.D(n418[6]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i7.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i8 (.D(n418[7]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i8.GSR = "ENABLED";
    LUT4 i9993_3_lut_4_lut (.A(n418[6]), .B(n33102), .C(n9615), .D(\ctrlword_595_6[3] ), 
         .Z(n12884)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i9993_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut (.A(n418[13]), .B(n33106), .C(n33105), .D(n418[10]), 
         .Z(n27737)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    PFUMX i6626 (.BLUT(\ctrlword_595_5_15__N_646[3] ), .ALUT(\ctrlword_595_5[6] ), 
          .C0(n418[6]), .Z(n9370));
    PFUMX i29288 (.BLUT(n32480), .ALUT(n32479), .C0(\ctrlword_595_3[13] ), 
          .Z(ctrlword_595_5[7]));
    PFUMX i9990 (.BLUT(n2921[0]), .ALUT(n9644), .C0(n30715), .Z(n12880));
    FD1P3IX shift_cnt_FSM__i9 (.D(n418[8]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[9]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i9.GSR = "ENABLED";
    L6MUX21 i6870 (.D0(\ctrlword_595_6[4] ), .D1(\ctrlword_595_6[5] ), .SD(n418[5]), 
            .Z(n9616));
    FD1P3IX shift_cnt_FSM__i10 (.D(n418[9]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i10.GSR = "ENABLED";
    LUT4 i5_3_lut (.A(n418[7]), .B(n10), .C(n418[5]), .Z(n27797)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(107[35:44])
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3IX shift_cnt_FSM__i11 (.D(n418[10]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[11]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i11.GSR = "ENABLED";
    LUT4 i4_4_lut (.A(n418[6]), .B(n418[4]), .C(n418[3]), .D(n432), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(107[35:44])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i18185_2_lut (.A(n12880), .B(n418[6]), .Z(n12881)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i18185_2_lut.init = 16'heeee;
    LUT4 i28720_2_lut_rep_645 (.A(n418[3]), .B(\ctrlword_595_3[13] ), .Z(n33102)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i28720_2_lut_rep_645.init = 16'hdddd;
    LUT4 i28698_2_lut_rep_600_3_lut (.A(n418[3]), .B(\ctrlword_595_3[13] ), 
         .C(n418[6]), .Z(n33057)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i28698_2_lut_rep_600_3_lut.init = 16'hf2f2;
    LUT4 i4_4_lut_adj_330 (.A(n33105), .B(n418[9]), .C(n418[10]), .D(n33058), 
         .Z(n3238)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i4_4_lut_adj_330.init = 16'hfffe;
    LUT4 i27769_1_lut_rep_646 (.A(n418[3]), .Z(n33103)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i27769_1_lut_rep_646.init = 16'h5555;
    LUT4 i28736_3_lut_3_lut (.A(n418[3]), .B(n418[4]), .C(n418[5]), .Z(n30715)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i28736_3_lut_3_lut.init = 16'hfefe;
    PFUMX i6869 (.BLUT(\ctrlword_595_6_15__N_662[3] ), .ALUT(\ctrlword_595_6[6] ), 
          .C0(n418[6]), .Z(n9615));
    LUT4 i1496_2_lut_rep_648 (.A(n418[12]), .B(n418[11]), .Z(n33105)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1496_2_lut_rep_648.init = 16'heeee;
    LUT4 i17982_3_lut_3_lut_4_lut_4_lut (.A(n418[12]), .B(n418[11]), .C(n33106), 
         .D(n418[13]), .Z(n3149[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i17982_3_lut_3_lut_4_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_rep_649 (.A(n418[15]), .B(n418[14]), .Z(n33106)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1_2_lut_rep_649.init = 16'heeee;
    LUT4 i1_2_lut_rep_601_3_lut (.A(n418[15]), .B(n418[14]), .C(n418[13]), 
         .Z(n33058)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1_2_lut_rep_601_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_331 (.A(n418[15]), .B(n418[14]), .C(n418[13]), 
         .D(\ctrlword_595_3[13] ), .Z(n30243)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i2_3_lut_4_lut_adj_331.init = 16'hffef;
    LUT4 i18170_2_lut_2_lut_3_lut_4_lut (.A(n418[15]), .B(n418[14]), .C(n418[12]), 
         .D(n418[13]), .Z(n3050[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i18170_2_lut_2_lut_3_lut_4_lut.init = 16'hffef;
    FD1P3IX shift_cnt_FSM__i12 (.D(n418[11]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i12.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i13 (.D(n418[12]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[13]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i13.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i14 (.D(n418[13]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i14.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i15 (.D(n418[14]), .SP(clk_in_c_enable_97), .CD(n17080), 
            .CK(clk_in_c), .Q(n418[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i0 (.D(n133[0]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i0.GSR = "ENABLED";
    PFUMX i29890 (.BLUT(n33909), .ALUT(n33905), .C0(n418[4]), .Z(n33910));
    PFUMX i29888 (.BLUT(n33907), .ALUT(\ctrlword_595_4_15__N_630[3] ), .C0(n418[3]), 
          .Z(n33908));
    PFUMX i29217 (.BLUT(n32401), .ALUT(\ctrlword_595_5_15__N_638[1] ), .C0(\ctrlword_595_3[13] ), 
          .Z(n31089));
    LUT4 i6897_3_lut (.A(\ctrlword_595_3[3] ), .B(\ctrlword_595_3[4] ), 
         .C(n418[4]), .Z(n9643)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i6897_3_lut.init = 16'hcaca;
    PFUMX i29219 (.BLUT(n32403), .ALUT(\ctrlword_595_5_15__N_638[2] ), .C0(\ctrlword_595_3[13] ), 
          .Z(n31090));
    PFUMX i29886 (.BLUT(n33903), .ALUT(n33902), .C0(\ctrlword_595_3[13] ), 
          .Z(n33904));
    PFUMX i29187 (.BLUT(n32350), .ALUT(n32349), .C0(n418[6]), .Z(n32351));
    LUT4 din_I_48_2_lut (.A(sck_c), .B(shift_clock_ls), .Z(din_N_762)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(105[8:46])
    defparam din_I_48_2_lut.init = 16'h4444;
    PFUMX i29142 (.BLUT(n32283), .ALUT(n32282), .C0(codeword_partnum[1]), 
          .Z(din_N_755));
    FD1S3IX shift_clock_cnt_3778__i1 (.D(n133[1]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i1.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i2 (.D(n133[2]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i2.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i3 (.D(n133[3]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i3.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i4 (.D(n133[4]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i4.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i5 (.D(n133[5]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i5.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i6 (.D(n133[6]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i6.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i7 (.D(n133[7]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i7.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i8 (.D(n133[8]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i8.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i9 (.D(n133[9]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i9.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i10 (.D(n133[10]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i10.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i11 (.D(n133[11]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i11.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i12 (.D(n133[12]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i12.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i13 (.D(n133[13]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i13.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i14 (.D(n133[14]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i14.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i15 (.D(n133[15]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i16 (.D(n133[16]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i16.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i17 (.D(n133[17]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i17.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i18 (.D(n133[18]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i18.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i19 (.D(n133[19]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i19.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i20 (.D(n133[20]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i20.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i21 (.D(n133[21]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i21.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i22 (.D(n133[22]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i22.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i23 (.D(n133[23]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i23.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i24 (.D(n133[24]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i24.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i25 (.D(n133[25]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i25.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i26 (.D(n133[26]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i26.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i27 (.D(n133[27]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i27.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i28 (.D(n133[28]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i28.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i29 (.D(n133[29]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i29.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i30 (.D(n133[30]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i30.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3778__i31 (.D(n133[31]), .CK(clk_in_c), .CD(n17059), 
            .Q(shift_clock_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3778__i31.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module ADC
//

module ADC (n18705, n34297, n30227, n7, n33111, sda_out_N_166, cnt_start, 
            clk_divided_enable_8, n293, n6, n7_adj_83, clk_divided_enable_40, 
            clk_divided_enable_29, n708, n32258, \cnt_main[0] , \cnt_main[1] , 
            n712, \cnt_read[0] , n34280, \cnt_write[0] , n710, n711, 
            n33012, clk_in_c, \scl_out_N_162[1] , n107, n3, rst_n_in_c, 
            n33076, n707, sda_out_out, n26595, n1427, \voltage_code[1] , 
            n33120, n34286, \voltage_code[2] , \voltage_code[3] , \voltage_code[4] , 
            \cnt_stop[0] , n59, GND_net, n299, \voltage_code[5] , 
            \voltage_code[6] , \ADC_level[7] , n45, n17032, \scl_out_N_146[1] , 
            n8679, clk_divided_N_170, scl_out_c, clk_divided_enable_26, 
            scl_out_N_143, n33059, \realv_5[0] , clk_divided_enable_32, 
            n44, n8, n30228);
    output n18705;
    input n34297;
    input n30227;
    input n7;
    input n33111;
    output sda_out_N_166;
    output [3:0]cnt_start;
    input clk_divided_enable_8;
    input n293;
    input n6;
    input n7_adj_83;
    input clk_divided_enable_40;
    input clk_divided_enable_29;
    output n708;
    output n32258;
    output \cnt_main[0] ;
    output \cnt_main[1] ;
    output n712;
    output \cnt_read[0] ;
    output n34280;
    output \cnt_write[0] ;
    output n710;
    output n711;
    output n33012;
    input clk_in_c;
    output \scl_out_N_162[1] ;
    output n107;
    output n3;
    input rst_n_in_c;
    output n33076;
    output n707;
    input sda_out_out;
    output n26595;
    input n1427;
    output \voltage_code[1] ;
    output n33120;
    output n34286;
    output \voltage_code[2] ;
    output \voltage_code[3] ;
    output \voltage_code[4] ;
    output \cnt_stop[0] ;
    output n59;
    input GND_net;
    output n299;
    output \voltage_code[5] ;
    output \voltage_code[6] ;
    output \ADC_level[7] ;
    input n45;
    input n17032;
    output \scl_out_N_146[1] ;
    output n8679;
    output clk_divided_N_170;
    output scl_out_c;
    input clk_divided_enable_26;
    input scl_out_N_143;
    output n33059;
    output \realv_5[0] ;
    input clk_divided_enable_32;
    input n44;
    input n8;
    input n30228;
    
    wire clk_divided /* synthesis is_clock=1, SET_AS_NETWORK=\ADC_work/clk_divided */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(18[9:20])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    
    wire n32995, n32994, n21671, n32986;
    wire [3:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[26:35])
    
    wire clk_divided_enable_36, n29968;
    wire [3:0]cnt_stop;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[36:44])
    
    wire clk_divided_enable_38;
    wire [3:0]cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[12:15])
    wire [3:0]cnt_3__N_91;
    
    wire n31793;
    wire [3:0]cnt_start_c;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    wire [4:0]cnt_read;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    
    wire n29972, n29969, n29971, n29973;
    wire [3:0]cnt_main;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(49[12:20])
    wire [7:0]data_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(47[12:22])
    
    wire clk_divided_enable_14, n7_adj_1546, clk_divided_enable_15;
    wire [3:0]n77;
    
    wire n32257, n32256, n5, n19127, n31, n29256, n33089, n60, 
        n33051, n14465, n31791, n31790, n31792;
    wire [7:0]n704;
    
    wire n30641, n33090, n32949, n30153, n29967, clk_divided_N_169, 
        n32955, n33048, n20690, n33205, n33204, n33206, n4, n33188, 
        n33189, n33190, n33053, n9620, n28, n33148, n30019, n3_adj_1547, 
        sda_out_N_182, n32963, n33147, n34287, n30414, n33047;
    wire [7:0]ADC_level_r;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(46[12:23])
    
    wire n30154, n11;
    wire [3:0]n239;
    
    wire n32969, n32989, n13606, clk_divided_enable_37, clk_divided_enable_35;
    wire [3:0]n174;
    
    wire n4_adj_1548, clk_divided_enable_33, clk_divided_enable_34, clk_divided_enable_30, 
        clk_divided_enable_31, clk_divided_enable_27, clk_divided_enable_39, 
        n34284, n31863, n31862, n13614, n4_adj_1549, n34285, n34, 
        n30643, n27644;
    wire [3:0]n1296;
    
    wire n20698, n32967, n28035;
    wire [13:0]cnt_divided;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(26[12:23])
    wire [13:0]n61;
    
    wire clk_divided_enable_23, n18763, n29970, n33149, n33028, n33084, 
        n33024, n33036, n9252, n33025, n32983, n29994, n9254, 
        n29390, n29530, n30136, sda_out_N_177, n32210, n33179, n32953, 
        n9038, n27599, n27598, n29916, n32010, n4_adj_1550, n3_adj_1551, 
        n27961, n6_adj_1552, n27597, n27596, n27595, n27594, n27593, 
        n33141, n33085, n33171, n33018, n32996, n26706, n33086, 
        n32984, n33113, n76, n27667, n29918, sda_out_N_167, n27679, 
        n27821, n27699, n6_adj_1553, n35, n4_adj_1554, n30593, n33032, 
        n32311, sda_out_N_190, n51, n30417;
    
    LUT4 i1_2_lut_3_lut_4_lut (.A(n32995), .B(n32994), .C(n21671), .D(n32986), 
         .Z(n18705)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0002;
    FD1P3AX cnt_write__i2 (.D(n29968), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i2.GSR = "DISABLED";
    FD1P3AX cnt_stop__i3 (.D(n34297), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_stop[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i3.GSR = "DISABLED";
    FD1P3AX cnt_stop__i2 (.D(n30227), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i2.GSR = "DISABLED";
    FD1P3AX cnt_stop__i1 (.D(n7), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i1.GSR = "DISABLED";
    FD1S3IX cnt__i3 (.D(cnt_3__N_91[3]), .CK(clk_divided), .CD(n33111), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i3.GSR = "DISABLED";
    FD1S3IX cnt__i2 (.D(cnt_3__N_91[2]), .CK(clk_divided), .CD(n33111), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i2.GSR = "DISABLED";
    FD1S3JX sda_out_r_155 (.D(n31793), .CK(clk_divided), .PD(n33111), 
            .Q(sda_out_N_166)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam sda_out_r_155.GSR = "DISABLED";
    FD1P3AX cnt_start__i0 (.D(n293), .SP(clk_divided_enable_8), .CK(clk_divided), 
            .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i0.GSR = "DISABLED";
    FD1S3IX cnt__i1 (.D(cnt_3__N_91[1]), .CK(clk_divided), .CD(n33111), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i1.GSR = "DISABLED";
    FD1P3AX cnt_start__i3 (.D(n34297), .SP(clk_divided_enable_8), .CK(clk_divided), 
            .Q(cnt_start_c[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i3.GSR = "DISABLED";
    FD1P3AX cnt_start__i2 (.D(n6), .SP(clk_divided_enable_8), .CK(clk_divided), 
            .Q(cnt_start_c[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i2.GSR = "DISABLED";
    FD1P3AX cnt_start__i1 (.D(n7_adj_83), .SP(clk_divided_enable_8), .CK(clk_divided), 
            .Q(cnt_start_c[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i1.GSR = "DISABLED";
    FD1P3AX cnt_read__i4 (.D(n29972), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i4.GSR = "DISABLED";
    FD1P3AX cnt_read__i3 (.D(n29969), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i3.GSR = "DISABLED";
    FD1P3AX cnt_read__i2 (.D(n29971), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i2.GSR = "DISABLED";
    FD1P3AX cnt_read__i1 (.D(n29973), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i1.GSR = "DISABLED";
    FD1P3AX cnt_main__i3 (.D(n34297), .SP(clk_divided_enable_29), .CK(clk_divided), 
            .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i3.GSR = "DISABLED";
    FD1P3AX data_write__i7 (.D(n7_adj_1546), .SP(clk_divided_enable_14), 
            .CK(clk_divided), .Q(data_write[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam data_write__i7.GSR = "DISABLED";
    FD1P3AX data_write__i0 (.D(n77[2]), .SP(clk_divided_enable_15), .CK(clk_divided), 
            .Q(data_write[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam data_write__i0.GSR = "DISABLED";
    PFUMX i29131 (.BLUT(n32257), .ALUT(n32256), .C0(n708), .Z(n32258));
    LUT4 i2_3_lut_3_lut_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n5)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i23860_3_lut_4_lut_3_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), 
         .C(cnt_main[2]), .Z(n19127)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam i23860_3_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_4_lut_3_lut (.A(\cnt_main[1] ), .B(cnt_main[3]), .C(cnt_main[2]), 
         .Z(n31)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_4_lut_3_lut.init = 16'hecec;
    FD1S3IX cnt__i0 (.D(cnt_3__N_91[0]), .CK(clk_divided), .CD(n33111), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i0.GSR = "DISABLED";
    FD1S3JX state_FSM_i1 (.D(n29256), .CK(clk_divided), .PD(n33111), .Q(n712));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i1.GSR = "DISABLED";
    LUT4 i2_4_lut_3_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(cnt_main[3]), 
         .Z(n7_adj_1546)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_4_lut_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n77[2])) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i1_4_lut_4_lut.init = 16'hfff8;
    LUT4 i7246_2_lut_rep_632 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n33089)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i7246_2_lut_rep_632.init = 16'h8888;
    LUT4 n1433_bdd_4_lut_29212 (.A(n34280), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(\cnt_write[0] ), .Z(n60)) /* synthesis lut_function=(A+!(B (C)+!B !((D)+!C))) */ ;
    defparam n1433_bdd_4_lut_29212.init = 16'hbfaf;
    LUT4 i1_2_lut_rep_594_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(cnt_read[2]), 
         .Z(n33051)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_594_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n14465)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h7ff8;
    PFUMX i28848 (.BLUT(n31791), .ALUT(n31790), .C0(n708), .Z(n31792));
    LUT4 i27705_3_lut (.A(n710), .B(n711), .C(n704[3]), .Z(n30641)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27705_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_538_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n33012), .D(cnt_read[2]), .Z(n32995)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_538_3_lut_4_lut.init = 16'h7080;
    LUT4 i7241_2_lut_rep_633 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n33090)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i7241_2_lut_rep_633.init = 16'h6666;
    LUT4 i2_3_lut_4_lut (.A(n32986), .B(n32949), .C(n21671), .D(n708), 
         .Z(n30153)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_2_lut_rep_537_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(n33012), 
         .Z(n32994)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_537_3_lut.init = 16'h6060;
    LUT4 i1_2_lut_3_lut_4_lut_adj_299 (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n29967), .D(n33012), .Z(n29973)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_adj_299.init = 16'h6000;
    FD1S3IX temp_divided_153 (.D(clk_divided_N_169), .CK(clk_in_c), .CD(n33111), 
            .Q(clk_divided)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(29[3] 39[10])
    defparam temp_divided_153.GSR = "DISABLED";
    LUT4 i22833_4_lut (.A(n710), .B(n32955), .C(n704[3]), .D(n33048), 
         .Z(n20690)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i22833_4_lut.init = 16'hcac0;
    PFUMX i29531 (.BLUT(n33205), .ALUT(n33204), .C0(n708), .Z(n33206));
    LUT4 i1_4_lut (.A(n710), .B(cnt_start[0]), .C(\scl_out_N_162[1] ), 
         .D(n107), .Z(n4)) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B (C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut.init = 16'h0a82;
    PFUMX i29521 (.BLUT(n33188), .ALUT(n33189), .C0(\cnt_write[0] ), .Z(n33190));
    LUT4 i23763_3_lut_rep_596_4_lut_3_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), 
         .C(cnt_main[2]), .Z(n33053)) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(49[12:20])
    defparam i23763_3_lut_rep_596_4_lut_3_lut.init = 16'h2626;
    PFUMX i15013 (.BLUT(n9620), .ALUT(n28), .C0(n708), .Z(n3));
    LUT4 i29129_then_4_lut (.A(\cnt_read[0] ), .B(n33012), .C(cnt_read[2]), 
         .D(cnt_read[3]), .Z(n33148)) /* synthesis lut_function=(!(A (B (D))+!A (B ((D)+!C)))) */ ;
    defparam i29129_then_4_lut.init = 16'h33fb;
    LUT4 i1_4_lut_adj_300 (.A(n33012), .B(n708), .C(n14465), .D(rst_n_in_c), 
         .Z(n30019)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;
    defparam i1_4_lut_adj_300.init = 16'hb3ff;
    LUT4 i12_4_lut_rep_619_4_lut (.A(cnt_start[0]), .B(cnt_start_c[1]), 
         .C(cnt_start_c[3]), .D(cnt_start_c[2]), .Z(n33076)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    defparam i12_4_lut_rep_619_4_lut.init = 16'hfcf7;
    LUT4 i1_2_lut_rep_492_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .D(n33012), .Z(n32949)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    defparam i1_2_lut_rep_492_3_lut_3_lut_4_lut_4_lut.init = 16'h1800;
    LUT4 i1_2_lut_4_lut_4_lut (.A(cnt_main[2]), .B(cnt_main[3]), .C(\cnt_main[0] ), 
         .D(\cnt_main[1] ), .Z(n77[1])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C (D)+!C !(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'heffc;
    LUT4 pwr_bdd_2_lut_29537_4_lut (.A(n33206), .B(n3_adj_1547), .C(n707), 
         .D(rst_n_in_c), .Z(sda_out_N_182)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam pwr_bdd_2_lut_29537_4_lut.init = 16'hcaff;
    LUT4 n10062_bdd_3_lut_rep_506_4_lut_4_lut (.A(cnt_write[2]), .B(\cnt_write[0] ), 
         .C(cnt_write[1]), .D(n34280), .Z(n32963)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam n10062_bdd_3_lut_rep_506_4_lut_4_lut.init = 16'h007e;
    LUT4 i29129_else_4_lut (.A(\cnt_read[0] ), .B(n33012), .C(cnt_read[2]), 
         .D(cnt_read[3]), .Z(n33147)) /* synthesis lut_function=(!(A (B (D))+!A (B (C+(D))))) */ ;
    defparam i29129_else_4_lut.init = 16'h33bf;
    LUT4 i23799_4_lut_4_lut (.A(cnt_start_c[2]), .B(cnt_start_c[1]), .C(cnt_start_c[3]), 
         .D(cnt_start[0]), .Z(\scl_out_N_162[1] )) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    defparam i23799_4_lut_4_lut.init = 16'h0304;
    LUT4 i9982_3_lut_rep_700 (.A(\cnt_write[0] ), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(cnt_write[3]), .Z(n34287)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i9982_3_lut_rep_700.init = 16'h7f80;
    LUT4 i1_3_lut_3_lut_3_lut (.A(\cnt_write[0] ), .B(cnt_write[1]), .C(cnt_write[3]), 
         .Z(n30414)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_3_lut_3_lut.init = 16'hfefe;
    LUT4 i857_3_lut_rep_693 (.A(n33047), .B(cnt[3]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n34280)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i857_3_lut_rep_693.init = 16'h1110;
    LUT4 i2_3_lut (.A(n30153), .B(rst_n_in_c), .C(ADC_level_r[0]), .Z(n30154)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 n11_bdd_4_lut (.A(n11), .B(n5), .C(n711), .D(rst_n_in_c), .Z(clk_divided_enable_38)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B !(D))) */ ;
    defparam n11_bdd_4_lut.init = 16'hcaff;
    LUT4 i1_4_lut_4_lut_else_4_lut_3_lut (.A(n33047), .B(cnt[3]), .C(cnt_write[3]), 
         .Z(n33188)) /* synthesis lut_function=(!(A (C)+!A (B (C)))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut_3_lut.init = 16'h1f1f;
    LUT4 i28739_2_lut_2_lut_3_lut_4_lut (.A(n239[1]), .B(n32969), .C(n32989), 
         .D(n13606), .Z(clk_divided_enable_37)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28739_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i28742_2_lut_3_lut_3_lut_4_lut (.A(n239[1]), .B(n32969), .C(n32989), 
         .D(n13606), .Z(clk_divided_enable_35)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28742_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_301 (.A(n174[1]), .B(n239[1]), .C(n704[3]), .D(n708), 
         .Z(n4_adj_1548)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_301.init = 16'heca0;
    LUT4 i28748_2_lut_3_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n32989), 
         .D(n13606), .Z(clk_divided_enable_33)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28748_2_lut_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i28745_2_lut_2_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n32989), 
         .D(n13606), .Z(clk_divided_enable_34)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28745_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 i28754_2_lut_2_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n13606), 
         .D(n32989), .Z(clk_divided_enable_30)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28754_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i28751_2_lut_3_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n13606), 
         .D(n32989), .Z(clk_divided_enable_31)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i28751_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i28629_2_lut_2_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n32989), 
         .D(n13606), .Z(clk_divided_enable_27)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i28629_2_lut_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i28712_2_lut_2_lut_3_lut_4_lut (.A(n32969), .B(n239[1]), .C(n13606), 
         .D(n32989), .Z(clk_divided_enable_39)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i28712_2_lut_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_rep_697 (.A(n707), .B(n710), .Z(n34284)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_2_lut_rep_697.init = 16'heeee;
    LUT4 i2_3_lut_adj_302 (.A(rst_n_in_c), .B(n712), .C(n711), .Z(n29967)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_302.init = 16'h0202;
    LUT4 cnt_0__bdd_4_lut_29216 (.A(cnt[0]), .B(data_write[7]), .C(cnt[1]), 
         .D(n34280), .Z(n31863)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)+!C !(D)))) */ ;
    defparam cnt_0__bdd_4_lut_29216.init = 16'hc084;
    LUT4 cnt_0__bdd_4_lut_28891 (.A(cnt[0]), .B(data_write[0]), .C(cnt[1]), 
         .D(n34280), .Z(n31862)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_28891.init = 16'h4080;
    LUT4 n21122_bdd_2_lut_4_lut (.A(n33012), .B(\cnt_read[0] ), .C(n13614), 
         .D(sda_out_out), .Z(n31790)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam n21122_bdd_2_lut_4_lut.init = 16'ha800;
    LUT4 i2_4_lut_4_lut (.A(n707), .B(n710), .C(n4_adj_1549), .D(cnt[0]), 
         .Z(cnt_3__N_91[0])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_4_lut_4_lut.init = 16'hfef0;
    LUT4 i23755_3_lut (.A(n708), .B(n31), .C(n711), .Z(n26595)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i23755_3_lut.init = 16'hcaca;
    LUT4 i24_2_lut_rep_698 (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(cnt_read[2]), 
         .Z(n34285)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i24_2_lut_rep_698.init = 16'h7878;
    LUT4 n34_bdd_4_lut_29609 (.A(n34), .B(n34280), .C(n30643), .D(n704[3]), 
         .Z(n33205)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B+!(C (D)))) */ ;
    defparam n34_bdd_4_lut_29609.init = 16'hcf55;
    PFUMX i17697 (.BLUT(n27644), .ALUT(n1296[1]), .C0(n704[3]), .Z(n20698));
    LUT4 i3_4_lut_4_lut (.A(n34280), .B(n704[3]), .C(n30414), .D(n32967), 
         .Z(n28035)) /* synthesis lut_function=(!(A (B (D))+!A !((C+!(D))+!B))) */ ;
    defparam i3_4_lut_4_lut.init = 16'h73ff;
    FD1S3IX cnt_divided_3776__i0 (.D(n61[0]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_529 (.A(n33012), .B(\cnt_read[0] ), .Z(n32986)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i1_2_lut_rep_529.init = 16'h8888;
    FD1P3IX ADC_level__i2 (.D(ADC_level_r[1]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i2.GSR = "DISABLED";
    LUT4 i5921_2_lut_rep_532 (.A(cnt[0]), .B(n33012), .Z(n32989)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i5921_2_lut_rep_532.init = 16'h9999;
    FD1P3AX cnt_write__i3 (.D(n29970), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i3.GSR = "DISABLED";
    LUT4 n330_bdd_2_lut_29144_3_lut_3_lut (.A(n33012), .B(n33149), .C(n33028), 
         .Z(n32256)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam n330_bdd_2_lut_29144_3_lut_3_lut.init = 16'h4c4c;
    LUT4 i1_2_lut_2_lut_3_lut_3_lut (.A(n33012), .B(n29967), .C(n33028), 
         .Z(n29972)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i1_2_lut_2_lut_3_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut (.A(n33084), .B(n33024), .C(n33036), .D(n710), 
         .Z(n9252)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf444;
    LUT4 i5920_2_lut_4_lut (.A(cnt_write[2]), .B(n33025), .C(cnt_write[3]), 
         .D(cnt[0]), .Z(n174[0])) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i5920_2_lut_4_lut.init = 16'hcd32;
    LUT4 i27502_2_lut_rep_498_4_lut (.A(cnt_write[2]), .B(n33025), .C(cnt_write[3]), 
         .D(n30643), .Z(n32955)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i27502_2_lut_rep_498_4_lut.init = 16'h32ff;
    LUT4 i1_2_lut_rep_526_4_lut (.A(cnt_write[2]), .B(n33025), .C(cnt_write[3]), 
         .D(n33120), .Z(n32983)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i1_2_lut_rep_526_4_lut.init = 16'hcd00;
    LUT4 i1_4_lut_adj_303 (.A(n32989), .B(n174[0]), .C(n708), .D(n704[3]), 
         .Z(n4_adj_1549)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_303.init = 16'heca0;
    FD1S3IX state_FSM_i2 (.D(n29994), .CK(clk_divided), .CD(n33111), .Q(n711));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i2.GSR = "DISABLED";
    FD1S3IX state_FSM_i3 (.D(n9252), .CK(clk_divided), .CD(n33111), .Q(n710));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i3.GSR = "DISABLED";
    FD1S3IX state_FSM_i4 (.D(n9254), .CK(clk_divided), .CD(n33111), .Q(n704[3]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i4.GSR = "DISABLED";
    FD1S3IX state_FSM_i5 (.D(n29390), .CK(clk_divided), .CD(n33111), .Q(n708));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i5.GSR = "DISABLED";
    FD1S3IX state_FSM_i6 (.D(n29530), .CK(clk_divided), .CD(n33111), .Q(n707));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i6.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .D(n33012), .Z(n30136)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h8000;
    LUT4 i18811_4_lut (.A(sda_out_N_177), .B(n34280), .C(n30643), .D(cnt_write[2]), 
         .Z(n1296[1])) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(121[7] 130[16])
    defparam i18811_4_lut.init = 16'h888a;
    LUT4 i28772_4_lut_rep_555 (.A(cnt_read[4]), .B(n33025), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n33012)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i28772_4_lut_rep_555.init = 16'hcccd;
    LUT4 i1_2_lut (.A(n712), .B(n707), .Z(n11)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(n33076), .B(n4), .Z(n27644)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_2_lut.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_304 (.A(n711), .B(n34286), .C(rst_n_in_c), 
         .D(n33053), .Z(clk_divided_enable_14)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_304.init = 16'h2000;
    LUT4 i3_4_lut (.A(n32210), .B(n708), .C(n33179), .Z(n29256)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i3_4_lut.init = 16'heaea;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_4_lut_adj_305 (.A(n33051), .B(cnt_read[3]), 
         .C(n33090), .D(n33012), .Z(n28)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(144[7] 166[16])
    defparam i1_2_lut_3_lut_4_lut_3_lut_4_lut_adj_305.init = 16'h9000;
    LUT4 i1_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n33051), .B(cnt_read[3]), 
         .C(n29967), .D(n33012), .Z(n29969)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(144[7] 166[16])
    defparam i1_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h6000;
    LUT4 i18664_2_lut_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), 
         .C(n33051), .D(n33012), .Z(n21671)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i18664_2_lut_3_lut_4_lut_4_lut.init = 16'h7e00;
    LUT4 i2_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), .C(n33051), 
         .D(n33090), .Z(n13614)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hff7e;
    FD1P3IX ADC_level__i3 (.D(ADC_level_r[2]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i3.GSR = "DISABLED";
    FD1P3IX ADC_level__i4 (.D(ADC_level_r[3]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i4.GSR = "DISABLED";
    LUT4 i28607_2_lut_rep_496_2_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), 
         .C(n33051), .D(n33012), .Z(n32953)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i28607_2_lut_rep_496_2_lut_4_lut.init = 16'h95ff;
    FD1P3IX ADC_level__i5 (.D(ADC_level_r[4]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i5.GSR = "DISABLED";
    LUT4 i28566_3_lut_4_lut (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[3]), 
         .Z(n3_adj_1547)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(173[7] 185[16])
    defparam i28566_3_lut_4_lut.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_306 (.A(n34280), .B(n32963), .C(\cnt_write[0] ), 
         .D(n34287), .Z(n9038)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(121[7] 130[16])
    defparam i1_4_lut_adj_306.init = 16'h0110;
    LUT4 cnt_stop_3__bdd_4_lut (.A(cnt_stop[3]), .B(\cnt_stop[0] ), .C(cnt_stop[1]), 
         .D(cnt_stop[2]), .Z(n59)) /* synthesis lut_function=(A+(B (C (D)+!C !(D))+!B (C+!(D)))) */ ;
    defparam cnt_stop_3__bdd_4_lut.init = 16'hfabf;
    LUT4 i2_3_lut_4_lut_adj_307 (.A(n34286), .B(n33053), .C(n711), .D(rst_n_in_c), 
         .Z(clk_divided_enable_15)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_307.init = 16'h4000;
    CCU2D cnt_divided_3776_add_4_15 (.A0(cnt_divided[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27599), .S0(n61[13]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_15.INIT1 = 16'h0000;
    defparam cnt_divided_3776_add_4_15.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_divided_3776_add_4_13 (.A0(cnt_divided[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27598), .COUT(n27599), .S0(n61[11]), 
          .S1(n61[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_13.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_13.INJECT1_1 = "NO";
    LUT4 i2_3_lut_adj_308 (.A(n707), .B(\cnt_stop[0] ), .C(cnt_stop[3]), 
         .Z(n29916)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut_adj_308.init = 16'h0808;
    LUT4 i4337_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n299)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i4337_3_lut.init = 16'hecec;
    LUT4 n32009_bdd_2_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .D(n33012), .Z(n32010)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam n32009_bdd_2_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h7fff;
    LUT4 select_968_Select_3_i4_4_lut_4_lut (.A(cnt[3]), .B(n33047), .C(n33012), 
         .D(n708), .Z(n4_adj_1550)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam select_968_Select_3_i4_4_lut_4_lut.init = 16'ha600;
    LUT4 select_968_Select_3_i3_4_lut_4_lut (.A(cnt[3]), .B(n33047), .C(n34280), 
         .D(n704[3]), .Z(n3_adj_1551)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam select_968_Select_3_i3_4_lut_4_lut.init = 16'h6a00;
    LUT4 i2_3_lut_4_lut_adj_309 (.A(cnt_start[0]), .B(n33048), .C(n710), 
         .D(n27961), .Z(n6_adj_1552)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i2_3_lut_4_lut_adj_309.init = 16'hff20;
    CCU2D cnt_divided_3776_add_4_11 (.A0(cnt_divided[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27597), .COUT(n27598), .S0(n61[9]), 
          .S1(n61[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_11.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_11.INJECT1_1 = "NO";
    FD1P3IX ADC_level__i6 (.D(ADC_level_r[5]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i6.GSR = "DISABLED";
    CCU2D cnt_divided_3776_add_4_9 (.A0(cnt_divided[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27596), .COUT(n27597), .S0(n61[7]), .S1(n61[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_9.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_9.INJECT1_1 = "NO";
    FD1P3IX ADC_level__i7 (.D(ADC_level_r[6]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\voltage_code[6] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i7.GSR = "DISABLED";
    FD1P3IX ADC_level__i8 (.D(ADC_level_r[7]), .SP(clk_divided_enable_23), 
            .CD(n18763), .CK(clk_divided), .Q(\ADC_level[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i8.GSR = "DISABLED";
    LUT4 i1_2_lut_2_lut_3_lut_3_lut_adj_310 (.A(n34287), .B(n29967), .C(n34280), 
         .Z(n29970)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i1_2_lut_2_lut_3_lut_3_lut_adj_310.init = 16'h0808;
    CCU2D cnt_divided_3776_add_4_7 (.A0(cnt_divided[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27595), .COUT(n27596), .S0(n61[5]), .S1(n61[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_7.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_divided_3776_add_4_5 (.A0(cnt_divided[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27594), .COUT(n27595), .S0(n61[3]), .S1(n61[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_5.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_divided_3776_add_4_3 (.A0(cnt_divided[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27593), .COUT(n27594), .S0(n61[1]), .S1(n61[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_divided_3776_add_4_3.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_divided_3776_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n27593), .S1(n61[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776_add_4_1.INIT0 = 16'hF000;
    defparam cnt_divided_3776_add_4_1.INIT1 = 16'h0555;
    defparam cnt_divided_3776_add_4_1.INJECT1_0 = "NO";
    defparam cnt_divided_3776_add_4_1.INJECT1_1 = "NO";
    LUT4 i53_3_lut_4_lut (.A(cnt_start_c[2]), .B(n33141), .C(n710), .D(n711), 
         .Z(n34)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i53_3_lut_4_lut.init = 16'h8f80;
    LUT4 i7237_2_lut_rep_510_4_lut_4_lut (.A(cnt_write[2]), .B(n33085), 
         .C(cnt_write[3]), .D(n33025), .Z(n32967)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i7237_2_lut_rep_510_4_lut_4_lut.init = 16'h6604;
    LUT4 i1_2_lut_3_lut_4_lut_adj_311 (.A(cnt_write[2]), .B(n33085), .C(n29967), 
         .D(n34280), .Z(n29968)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i1_2_lut_3_lut_4_lut_adj_311.init = 16'h0060;
    LUT4 sda_out_out_bdd_4_lut (.A(sda_out_out), .B(cnt_stop[2]), .C(cnt_stop[1]), 
         .D(cnt_stop[3]), .Z(n33171)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam sda_out_out_bdd_4_lut.init = 16'h002c;
    LUT4 i18582_2_lut_rep_561_3_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n33089), 
         .C(cnt_read[3]), .D(cnt_read[4]), .Z(n33018)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i18582_2_lut_rep_561_3_lut_3_lut_4_lut.init = 16'h7ff8;
    FD1P3AX cnt_write__i1 (.D(n45), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i1.GSR = "DISABLED";
    LUT4 i28647_2_lut_rep_539_3_lut_4_lut (.A(cnt_read[2]), .B(n33089), 
         .C(n33012), .D(cnt_read[3]), .Z(n32996)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i28647_2_lut_rep_539_3_lut_4_lut.init = 16'h8f7f;
    LUT4 i10034_3_lut_rep_571_4_lut (.A(cnt_read[2]), .B(n33089), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n33028)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i10034_3_lut_rep_571_4_lut.init = 16'h7f80;
    FD1P3IX cnt_main__i0 (.D(n26706), .SP(clk_divided_enable_29), .CD(n17032), 
            .CK(clk_divided), .Q(\cnt_main[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i0.GSR = "DISABLED";
    LUT4 n34_bdd_3_lut_29608 (.A(n33012), .B(n13614), .C(\cnt_read[0] ), 
         .Z(n33204)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam n34_bdd_3_lut_29608.init = 16'h5757;
    LUT4 i1_2_lut_rep_567_4_lut (.A(cnt_main[2]), .B(cnt_main[3]), .C(n33086), 
         .D(n711), .Z(n33024)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam i1_2_lut_rep_567_4_lut.init = 16'h1300;
    LUT4 cnt_stop_1__bdd_4_lut_29511 (.A(cnt_stop[1]), .B(cnt_stop[2]), 
         .C(\cnt_stop[0] ), .D(cnt_stop[3]), .Z(\scl_out_N_146[1] )) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((D)+!C))) */ ;
    defparam cnt_stop_1__bdd_4_lut_29511.init = 16'h0052;
    LUT4 i23823_4_lut (.A(n33076), .B(n32983), .C(n704[3]), .D(n32984), 
         .Z(n9620)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i23823_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_adj_312 (.A(cnt_stop[2]), .B(n33113), .C(\cnt_stop[0] ), 
         .D(n707), .Z(n76)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i1_3_lut_4_lut_adj_312.init = 16'hdf00;
    LUT4 i1_4_lut_adj_313 (.A(n712), .B(n27667), .C(n6_adj_1552), .D(n29918), 
         .Z(n29994)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_313.init = 16'hfffe;
    LUT4 i3_4_lut_adj_314 (.A(n32984), .B(\cnt_write[0] ), .C(n32963), 
         .D(n704[3]), .Z(n27667)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i3_4_lut_adj_314.init = 16'h0400;
    LUT4 i3_4_lut_adj_315 (.A(n32953), .B(n32996), .C(n708), .D(n30136), 
         .Z(n27961)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i3_4_lut_adj_315.init = 16'h2000;
    LUT4 i6511_4_lut (.A(n704[3]), .B(n33053), .C(n33190), .D(n33024), 
         .Z(n9254)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i6511_4_lut.init = 16'heca0;
    LUT4 i5970_1_lut (.A(sda_out_N_167), .Z(n8679)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(43[2] 191[14])
    defparam i5970_1_lut.init = 16'h5555;
    LUT4 clk_divided_I_0_2_lut (.A(clk_divided), .B(clk_divided_N_170), 
         .Z(clk_divided_N_169)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(30[4] 38[11])
    defparam clk_divided_I_0_2_lut.init = 16'h6666;
    LUT4 i4416_4_lut (.A(cnt_divided[12]), .B(cnt_divided[13]), .C(cnt_divided[11]), 
         .D(n27679), .Z(clk_divided_N_170)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i4416_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_316 (.A(n27821), .B(cnt_divided[10]), .C(cnt_divided[9]), 
         .D(cnt_divided[8]), .Z(n27679)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_316.init = 16'h8000;
    LUT4 i4_4_lut (.A(cnt_divided[5]), .B(cnt_divided[7]), .C(n27699), 
         .D(n6_adj_1553), .Z(n27821)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i28612_2_lut_rep_527_4_lut_4_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(n33085), .D(n33025), .Z(n32984)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i28612_2_lut_rep_527_4_lut_4_lut_4_lut.init = 16'h95ff;
    LUT4 i3_4_lut_adj_317 (.A(cnt_divided[0]), .B(cnt_divided[3]), .C(cnt_divided[2]), 
         .D(cnt_divided[1]), .Z(n27699)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_317.init = 16'h8000;
    LUT4 i1_2_lut_adj_318 (.A(cnt_divided[6]), .B(cnt_divided[4]), .Z(n6_adj_1553)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_318.init = 16'heeee;
    LUT4 i1_3_lut (.A(n711), .B(n35), .C(n31), .Z(n29390)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_319 (.A(n708), .B(n33018), .C(n33012), .D(n32010), 
         .Z(n35)) /* synthesis lut_function=(!((B (C+!(D))+!B !(D))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_319.init = 16'h2a00;
    LUT4 i2_4_lut (.A(cnt[3]), .B(n3_adj_1551), .C(n34284), .D(n4_adj_1550), 
         .Z(cnt_3__N_91[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i1_4_lut_adj_320 (.A(n711), .B(n76), .C(n26706), .D(n19127), 
         .Z(n29530)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_320.init = 16'hcecc;
    LUT4 cnt_read_3__bdd_3_lut (.A(cnt_read[3]), .B(cnt_read[4]), .C(n33025), 
         .Z(n33179)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam cnt_read_3__bdd_3_lut.init = 16'he0e0;
    PFUMX i29497 (.BLUT(n33147), .ALUT(n33148), .C0(cnt_read[1]), .Z(n33149));
    LUT4 i1_2_lut_3_lut_4_lut_adj_321 (.A(n33089), .B(cnt_read[2]), .C(n29967), 
         .D(n33012), .Z(n29971)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    defparam i1_2_lut_3_lut_4_lut_adj_321.init = 16'h6000;
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(n34280), .B(cnt_write[3]), .C(cnt_write[1]), 
         .D(cnt_write[2]), .Z(n33189)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'habbb;
    LUT4 i1_2_lut_3_lut (.A(cnt_start_c[2]), .B(cnt_start_c[1]), .C(cnt_start_c[3]), 
         .Z(n107)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut.init = 16'hf8f8;
    LUT4 i1_4_lut_adj_322 (.A(n174[2]), .B(n32969), .C(n704[3]), .D(n708), 
         .Z(n4_adj_1554)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_322.init = 16'heca0;
    LUT4 i4474_2_lut_rep_590_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .Z(n33047)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam i4474_2_lut_rep_590_3_lut.init = 16'h8080;
    LUT4 i18742_2_lut_rep_568_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n33025)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam i18742_2_lut_rep_568_3_lut_4_lut.init = 16'hf8f0;
    LUT4 mux_51_i3_3_lut_rep_512_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n33012), 
         .D(cnt[2]), .Z(n32969)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_51_i3_3_lut_rep_512_3_lut_4_lut.init = 16'hf708;
    LUT4 mux_35_i3_3_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n34280), 
         .D(cnt[2]), .Z(n174[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_35_i3_3_lut_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_627 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .Z(n33084)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_627.init = 16'heeee;
    LUT4 i28734_4_lut (.A(rst_n_in_c), .B(n30593), .C(n33032), .D(n711), 
         .Z(clk_divided_enable_36)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i28734_4_lut.init = 16'hf5dd;
    LUT4 i27694_2_lut_rep_628 (.A(\cnt_write[0] ), .B(cnt_write[1]), .Z(n33085)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27694_2_lut_rep_628.init = 16'h8888;
    LUT4 i27660_2_lut (.A(n712), .B(n704[3]), .Z(n30593)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27660_2_lut.init = 16'heeee;
    LUT4 n4_bdd_4_lut_4_lut (.A(\cnt_write[0] ), .B(cnt_write[1]), .C(cnt_write[2]), 
         .D(n34280), .Z(n32311)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_629 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .Z(n33086)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_629.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_4_lut_adj_323 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), 
         .C(cnt_main[3]), .D(cnt_main[2]), .Z(n26706)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_323.init = 16'hfdf5;
    LUT4 i2_3_lut_4_lut_adj_324 (.A(n707), .B(n710), .C(n4_adj_1554), 
         .D(cnt[2]), .Z(cnt_3__N_91[2])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut_4_lut_adj_324.init = 16'hfef0;
    FD1P3AX scl_out_r_154 (.D(scl_out_N_143), .SP(clk_divided_enable_26), 
            .CK(clk_divided), .Q(scl_out_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam scl_out_r_154.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_325 (.A(n707), .B(n710), .C(n4_adj_1548), 
         .D(cnt[1]), .Z(cnt_3__N_91[1])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut_4_lut_adj_325.init = 16'hfef0;
    FD1P3JX i148_166 (.D(sda_out_N_190), .SP(sda_out_N_182), .PD(n33111), 
            .CK(clk_divided), .Q(sda_out_N_167)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i148_166.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i0 (.D(sda_out_out), .SP(clk_divided_enable_27), 
            .CK(clk_divided), .Q(ADC_level_r[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i0.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_699 (.A(\cnt_main[0] ), .B(\cnt_main[1] ), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n34286)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_rep_699.init = 16'hf8f0;
    LUT4 i3_4_lut_4_lut_adj_326 (.A(n32953), .B(n30019), .C(n32986), .D(n32994), 
         .Z(n13606)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i3_4_lut_4_lut_adj_326.init = 16'hfdff;
    LUT4 i1_2_lut_rep_602_3_lut (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[3]), 
         .Z(n33059)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_rep_602_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_adj_327 (.A(cnt_stop[2]), .B(cnt_stop[1]), .C(n29916), 
         .Z(n29918)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_327.init = 16'h2020;
    LUT4 i1_2_lut_rep_656 (.A(cnt_stop[1]), .B(cnt_stop[3]), .Z(n33113)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_656.init = 16'heeee;
    LUT4 i7231_2_lut_rep_663 (.A(cnt_write[1]), .B(\cnt_write[0] ), .Z(n33120)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i7231_2_lut_rep_663.init = 16'h6666;
    LUT4 i27707_3_lut_3_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), .C(cnt_write[3]), 
         .Z(n30643)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i27707_3_lut_3_lut.init = 16'hfefe;
    LUT4 n21122_bdd_4_lut (.A(n30641), .B(sda_out_out), .C(n20698), .D(n20690), 
         .Z(n31791)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam n21122_bdd_4_lut.init = 16'hf5dd;
    LUT4 n60_bdd_4_lut (.A(n60), .B(n51), .C(n32984), .D(n704[3]), .Z(n32257)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;
    defparam n60_bdd_4_lut.init = 16'haccc;
    LUT4 n31792_bdd_3_lut (.A(n31792), .B(n33171), .C(n707), .Z(n31793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31792_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_2_lut_3_lut (.A(n712), .B(n708), .C(rst_n_in_c), .Z(n18763)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h2f2f;
    LUT4 i2_3_lut_3_lut_4_lut_adj_328 (.A(n712), .B(n708), .C(n30153), 
         .D(rst_n_in_c), .Z(clk_divided_enable_23)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A (C+!(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut_3_lut_4_lut_adj_328.init = 16'hf2ff;
    FD1P3IX cnt_main__i1 (.D(n77[1]), .SP(clk_divided_enable_29), .CD(n17032), 
            .CK(clk_divided), .Q(\cnt_main[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i1.GSR = "DISABLED";
    FD1P3IX cnt_main__i2 (.D(n77[2]), .SP(clk_divided_enable_29), .CD(n17032), 
            .CK(clk_divided), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i2.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i7 (.D(sda_out_out), .SP(clk_divided_enable_30), 
            .CK(clk_divided), .Q(ADC_level_r[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i7.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i6 (.D(sda_out_out), .SP(clk_divided_enable_31), 
            .CK(clk_divided), .Q(ADC_level_r[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i6.GSR = "DISABLED";
    FD1P3AX ADC_level__i1 (.D(n30154), .SP(clk_divided_enable_32), .CK(clk_divided), 
            .Q(\realv_5[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i1.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i5 (.D(sda_out_out), .SP(clk_divided_enable_33), 
            .CK(clk_divided), .Q(ADC_level_r[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i5.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i4 (.D(sda_out_out), .SP(clk_divided_enable_34), 
            .CK(clk_divided), .Q(ADC_level_r[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i4.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i3 (.D(sda_out_out), .SP(clk_divided_enable_35), 
            .CK(clk_divided), .Q(ADC_level_r[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i3.GSR = "DISABLED";
    FD1P3AX cnt_write__i0 (.D(n44), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(\cnt_write[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i0.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i2 (.D(sda_out_out), .SP(clk_divided_enable_37), 
            .CK(clk_divided), .Q(ADC_level_r[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i2.GSR = "DISABLED";
    FD1P3AX cnt_stop__i0 (.D(n8), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(\cnt_stop[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i0.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i1 (.D(sda_out_out), .SP(clk_divided_enable_39), 
            .CK(clk_divided), .Q(ADC_level_r[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i1.GSR = "DISABLED";
    FD1P3AX cnt_read__i0 (.D(n30228), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=128, LSE_RLINE=128 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i0.GSR = "DISABLED";
    LUT4 i27501_4_lut (.A(n33012), .B(\cnt_read[0] ), .C(n13614), .D(n34285), 
         .Z(n30417)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i27501_4_lut.init = 16'haaa8;
    LUT4 i1_2_lut_rep_575_4_lut_4_lut_4_lut (.A(\cnt_main[0] ), .B(\cnt_main[1] ), 
         .C(cnt_main[3]), .D(cnt_main[2]), .Z(n33032)) /* synthesis lut_function=(!(A (B+(C))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_rep_575_4_lut_4_lut_4_lut.init = 16'h0206;
    PFUMX i28892 (.BLUT(n31863), .ALUT(n31862), .C0(n174[2]), .Z(sda_out_N_177));
    LUT4 n709_bdd_4_lut_29727 (.A(n704[3]), .B(n9038), .C(n32963), .D(n32984), 
         .Z(n32210)) /* synthesis lut_function=(A (B+!((D)+!C))) */ ;
    defparam n709_bdd_4_lut_29727.init = 16'h88a8;
    LUT4 i28659_2_lut_rep_684 (.A(cnt_start_c[1]), .B(cnt_start_c[3]), .Z(n33141)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    defparam i28659_2_lut_rep_684.init = 16'h1111;
    LUT4 i1_2_lut_rep_591_3_lut (.A(cnt_start_c[1]), .B(cnt_start_c[3]), 
         .C(cnt_start_c[2]), .Z(n33048)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    defparam i1_2_lut_rep_591_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_579_3_lut_4_lut (.A(cnt_start_c[1]), .B(cnt_start_c[3]), 
         .C(cnt_start[0]), .D(cnt_start_c[2]), .Z(n33036)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    defparam i1_2_lut_rep_579_3_lut_4_lut.init = 16'hefff;
    LUT4 mux_35_i2_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(n34280), .Z(n174[1])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_35_i2_3_lut_3_lut.init = 16'h6a6a;
    LUT4 mux_51_i2_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(n33012), .Z(n239[1])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_51_i2_3_lut_3_lut.init = 16'ha6a6;
    PFUMX i29159 (.BLUT(n4), .ALUT(n32311), .C0(n704[3]), .Z(n51));
    PFUMX i22825 (.BLUT(n28035), .ALUT(n30417), .C0(n708), .Z(sda_out_N_190));
    FD1S3IX cnt_divided_3776__i1 (.D(n61[1]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i1.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i2 (.D(n61[2]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i2.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i3 (.D(n61[3]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i3.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i4 (.D(n61[4]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i4.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i5 (.D(n61[5]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i5.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i6 (.D(n61[6]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i6.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i7 (.D(n61[7]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i7.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i8 (.D(n61[8]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i8.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i9 (.D(n61[9]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i9.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i10 (.D(n61[10]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i10.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i11 (.D(n61[11]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i11.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i12 (.D(n61[12]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i12.GSR = "DISABLED";
    FD1S3IX cnt_divided_3776__i13 (.D(n61[13]), .CK(clk_in_c), .CD(n1427), 
            .Q(cnt_divided[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3776__i13.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module btn_debouncing
//

module btn_debouncing (clk_in_c, btn_state, GND_net, mode_btn_in_c);
    input clk_in_c;
    output btn_state;
    input GND_net;
    input mode_btn_in_c;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    
    wire btnsampler_clk, btnsampler_clk_N_266, btnsampler_clk_ls, btn_state_N_264;
    wire [2:0]btnsamp_store;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(18[9:22])
    
    wire btnsamp_store_2__N_261, n17060, n9, n30685;
    wire [31:0]btnsampler_clk_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(15[9:27])
    
    wire n47, n45, n46, n43, n38, n40, n28, n42, n32, n27592;
    wire [31:0]n133;
    
    wire n27591, n27590, n27589, n27588, n27587, n27586, n27585, 
        n27584, n27583, n27582, n27581, n27580, n27579, n27578, 
        n27577;
    
    FD1S3AX btnsampler_clk_30 (.D(btnsampler_clk_N_266), .CK(clk_in_c), 
            .Q(btnsampler_clk)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(24[3] 30[10])
    defparam btnsampler_clk_30.GSR = "DISABLED";
    FD1S3AX btnsampler_clk_ls_31 (.D(btnsampler_clk), .CK(clk_in_c), .Q(btnsampler_clk_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(35[3] 37[10])
    defparam btnsampler_clk_ls_31.GSR = "DISABLED";
    FD1S3AX btn_state_33 (.D(btn_state_N_264), .CK(clk_in_c), .Q(btn_state)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btn_state_33.GSR = "DISABLED";
    FD1P3AX btnsamp_store_i0_i0 (.D(btnsamp_store[1]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(btnsampler_clk), .B(n17060), .Z(btnsampler_clk_N_266)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i28697_4_lut (.A(n9), .B(n30685), .C(btnsampler_clk_cnt[10]), 
         .D(btnsampler_clk_cnt[16]), .Z(n17060)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i28697_4_lut.init = 16'h4000;
    LUT4 i1_4_lut (.A(n47), .B(btnsampler_clk_cnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    LUT4 i27747_4_lut (.A(btnsampler_clk_cnt[14]), .B(btnsampler_clk_cnt[12]), 
         .C(btnsampler_clk_cnt[6]), .D(btnsampler_clk_cnt[7]), .Z(n30685)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27747_4_lut.init = 16'h8000;
    LUT4 i22_4_lut (.A(n43), .B(btnsampler_clk_cnt[3]), .C(n38), .D(btnsampler_clk_cnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i22_4_lut.init = 16'hfffe;
    LUT4 i20_4_lut (.A(btnsampler_clk_cnt[31]), .B(n40), .C(n28), .D(btnsampler_clk_cnt[27]), 
         .Z(n45)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i20_4_lut.init = 16'hfffe;
    LUT4 i21_4_lut (.A(btnsampler_clk_cnt[23]), .B(n42), .C(n32), .D(btnsampler_clk_cnt[21]), 
         .Z(n46)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i21_4_lut.init = 16'hfffe;
    LUT4 i18_4_lut (.A(btnsampler_clk_cnt[8]), .B(btnsampler_clk_cnt[19]), 
         .C(btnsampler_clk_cnt[13]), .D(btnsampler_clk_cnt[22]), .Z(n43)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i18_4_lut.init = 16'hfffe;
    LUT4 i13_3_lut (.A(btnsampler_clk_cnt[11]), .B(btnsampler_clk_cnt[30]), 
         .C(btnsampler_clk_cnt[1]), .Z(n38)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i13_3_lut.init = 16'hfefe;
    LUT4 i15_4_lut (.A(btnsampler_clk_cnt[17]), .B(btnsampler_clk_cnt[24]), 
         .C(btnsampler_clk_cnt[20]), .D(btnsampler_clk_cnt[0]), .Z(n40)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i15_4_lut.init = 16'hfffe;
    LUT4 i3_2_lut (.A(btnsampler_clk_cnt[29]), .B(btnsampler_clk_cnt[28]), 
         .Z(n28)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i3_2_lut.init = 16'heeee;
    LUT4 i17_4_lut (.A(btnsampler_clk_cnt[5]), .B(btnsampler_clk_cnt[18]), 
         .C(btnsampler_clk_cnt[9]), .D(btnsampler_clk_cnt[4]), .Z(n42)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i7_2_lut (.A(btnsampler_clk_cnt[25]), .B(btnsampler_clk_cnt[26]), 
         .Z(n32)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i7_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(btnsamp_store[2]), .B(btnsamp_store[1]), .C(btnsamp_store[0]), 
         .Z(btn_state_N_264)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(48[15:73])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D btnsampler_clk_cnt_3777_add_4_33 (.A0(btnsampler_clk_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27592), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_33.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_33.INIT1 = 16'h0000;
    defparam btnsampler_clk_cnt_3777_add_4_33.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_33.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_31 (.A0(btnsampler_clk_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27591), .COUT(n27592), .S0(n133[29]), 
          .S1(n133[30]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_31.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_31.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_31.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_31.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_29 (.A0(btnsampler_clk_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27590), .COUT(n27591), .S0(n133[27]), 
          .S1(n133[28]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_29.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_29.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_29.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_29.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_27 (.A0(btnsampler_clk_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27589), .COUT(n27590), .S0(n133[25]), 
          .S1(n133[26]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_27.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_27.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_27.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_27.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_25 (.A0(btnsampler_clk_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27588), .COUT(n27589), .S0(n133[23]), 
          .S1(n133[24]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_25.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_25.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_25.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_25.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_23 (.A0(btnsampler_clk_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27587), .COUT(n27588), .S0(n133[21]), 
          .S1(n133[22]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_23.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_23.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_23.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_23.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_21 (.A0(btnsampler_clk_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27586), .COUT(n27587), .S0(n133[19]), 
          .S1(n133[20]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_21.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_21.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_21.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_21.INJECT1_1 = "NO";
    FD1S3IX btnsampler_clk_cnt_3777__i0 (.D(n133[0]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i0.GSR = "DISABLED";
    CCU2D btnsampler_clk_cnt_3777_add_4_19 (.A0(btnsampler_clk_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27585), .COUT(n27586), .S0(n133[17]), 
          .S1(n133[18]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_19.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_19.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_19.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_19.INJECT1_1 = "NO";
    FD1P3AX btnsamp_store_i0_i1 (.D(btnsamp_store[2]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i1.GSR = "DISABLED";
    CCU2D btnsampler_clk_cnt_3777_add_4_17 (.A0(btnsampler_clk_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27584), .COUT(n27585), .S0(n133[15]), 
          .S1(n133[16]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_17.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_17.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_17.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_17.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_15 (.A0(btnsampler_clk_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27583), .COUT(n27584), .S0(n133[13]), 
          .S1(n133[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_15.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_15.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_15.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_15.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_13 (.A0(btnsampler_clk_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27582), .COUT(n27583), .S0(n133[11]), 
          .S1(n133[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_13.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_13.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_13.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_13.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_11 (.A0(btnsampler_clk_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27581), .COUT(n27582), .S0(n133[9]), 
          .S1(n133[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_11.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_11.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_11.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_11.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_9 (.A0(btnsampler_clk_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27580), .COUT(n27581), .S0(n133[7]), 
          .S1(n133[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_9.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_9.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_9.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_9.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_7 (.A0(btnsampler_clk_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27579), .COUT(n27580), .S0(n133[5]), 
          .S1(n133[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_7.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_7.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_7.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_7.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_5 (.A0(btnsampler_clk_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27578), .COUT(n27579), .S0(n133[3]), 
          .S1(n133[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_5.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_5.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_5.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_5.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_3 (.A0(btnsampler_clk_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n27577), .COUT(n27578), .S0(n133[1]), 
          .S1(n133[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_3.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_3.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3777_add_4_3.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_3.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3777_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(btnsampler_clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n27577), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777_add_4_1.INIT0 = 16'hF000;
    defparam btnsampler_clk_cnt_3777_add_4_1.INIT1 = 16'h0555;
    defparam btnsampler_clk_cnt_3777_add_4_1.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3777_add_4_1.INJECT1_1 = "NO";
    LUT4 btnsampler_clk_I_0_36_2_lut (.A(btnsampler_clk), .B(btnsampler_clk_ls), 
         .Z(btnsamp_store_2__N_261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(43[8:52])
    defparam btnsampler_clk_I_0_36_2_lut.init = 16'h2222;
    FD1P3AX btnsamp_store_i0_i2 (.D(mode_btn_in_c), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i2.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i1 (.D(n133[1]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i1.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i2 (.D(n133[2]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i2.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i3 (.D(n133[3]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i3.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i4 (.D(n133[4]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i4.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i5 (.D(n133[5]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i5.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i6 (.D(n133[6]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i6.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i7 (.D(n133[7]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i7.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i8 (.D(n133[8]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i8.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i9 (.D(n133[9]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i9.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i10 (.D(n133[10]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i10.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i11 (.D(n133[11]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i11.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i12 (.D(n133[12]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i12.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i13 (.D(n133[13]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i13.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i14 (.D(n133[14]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i14.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i15 (.D(n133[15]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i15.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i16 (.D(n133[16]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i16.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i17 (.D(n133[17]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i17.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i18 (.D(n133[18]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i18.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i19 (.D(n133[19]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i19.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i20 (.D(n133[20]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i20.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i21 (.D(n133[21]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i21.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i22 (.D(n133[22]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i22.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i23 (.D(n133[23]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i23.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i24 (.D(n133[24]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i24.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i25 (.D(n133[25]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i25.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i26 (.D(n133[26]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i26.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i27 (.D(n133[27]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i27.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i28 (.D(n133[28]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i28.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i29 (.D(n133[29]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i29.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i30 (.D(n133[30]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i30.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3777__i31 (.D(n133[31]), .CK(clk_in_c), .CD(n17060), 
            .Q(btnsampler_clk_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3777__i31.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module trans_BCD
//

module trans_BCD (realv_1_1__N_326, realv_1_1__N_322, realv_1_1__N_321, 
            n32791, n32800, n32872, \voltage_code[1] , n32915, \realv_5[0] , 
            n32912, \ctrlword_595_1[7] , GND_net, \ctrlword_595_3[13]__inv , 
            n34297, \ctrlword_595_3[1] , n32790, \ctrlword_595_3[2] , 
            \ctrlword_595_3[3] , \ctrlword_595_3[4] , n5, n4, n31062, 
            \voltage_code[6] , \y_cnt[3] , n5_adj_42, n4_adj_43, n31053, 
            n2, n9188, n31064, n2_adj_44, n1, n31052, n13307, 
            \decade[3] , n32767, n2_adj_45, n33132, n32760, n23, 
            \voltage_code[15] , \ADC_level[7] , \unit[3] , \voltage_code[13] , 
            \voltage_code[14] , \voltage_code[4] , \voltage_code[5] , 
            \voltage_code[12] , \voltage_code[2] , \voltage_code[3] , 
            realv_1_1__N_303, n32909, n31693, realv_1_1__N_292, realv_1_1__N_283, 
            n31755, n32899, n32785, n33169, \ctrlword_595_3[13] , 
            n30736, decade_3__N_561, n32875, realv_1_1__N_275, n32783, 
            n32796, n33180, n32773, n32766, n32765, \ctrlword_595_4_15__N_630[3] , 
            n32782, n33181, n32061, n32063, n2240, n5_adj_46, n4_adj_47, 
            n30968, n2_adj_48, n1_adj_49, n30964, n5_adj_50, n4_adj_51, 
            n30952, n32904, n32905, n32906, \ctrlword_595_5_15__N_638[3] , 
            n2_adj_52, n30942, n30951, n2_adj_53, n30967, n32806, 
            n29984, n31877, n30919, n30918, n5_adj_54, n4_adj_55, 
            n31873, n5_adj_56, n4_adj_57, n30916, n33022, n30915, 
            n5_adj_58, n4_adj_59, n30965, n5_adj_60, n6, n2_adj_61, 
            n1_adj_62, n30933, decade_3__N_580, decade_3__N_576, n33174, 
            n5_adj_63, n4_adj_64, n30934, n32761, n5_adj_65, n4_adj_66, 
            n30925, n30943, n32762, n2_adj_67, n30924, n32774, n32772, 
            \ctrlword_595_4_15__N_630[1] , n14, n32711, n30799, n14_adj_68, 
            n34161, n30798, n33037, n32589, n32692, \ctrlword_595_6[6] , 
            \realv_5[3] , n32809, n32797, n14_adj_69, n30785, n30930, 
            realv_2_0__N_506, n1_adj_70, n32376, n30331, n9357, \ctrlword_595_5_15__N_638[1] , 
            \ctrlword_595_5_15__N_638[2] , realv_1_1__N_293, \ctrlword_595_4_15__N_622[1] , 
            n6715, n23_adj_71, \ctrlword_595_5[6] , n32771, n32778, 
            n32777, n432, n33038, n3, n32794, n3003, n33061, n2991, 
            n3016, n32911, \ctrlword_595_6_15__N_654[7] , \ctrlword_595_6_15__N_662[7] , 
            n7, \ctrlword_595_6_15__N_662[3] , n5_adj_72, n4_adj_73, 
            n30876, realv_1_1__N_372, n32896, n33041, n2896, n32176, 
            n33074, n33143, n32477, n2886, n33035, n32621, n33077, 
            n31978, \ctrlword_595_4[7] , n2898, n2884, n1_adj_74, 
            n2913, n3_adj_75, realv_1_1__N_368, n1_adj_76, \ctrlword_595_4_15__N_630[2] , 
            n27858, \ctrlword_595_5[5] , n32769, n6719, \ctrlword_595_5[4] , 
            n32898, n2_adj_77, n30783, n6706, \ctrlword_595_5_15__N_646[3] , 
            n33103, \ctrlword_595_6[3] , n1_adj_78, n2975, n14498, 
            n9124, n2973, n14496, n31071, n31070, n31067, \adcdisplay_7__N_1[6] , 
            \ctrlword_595_6[4] , \ctrlword_595_6[5] , n6_adj_79, n31059, 
            n31056, n31068, n31061, n8, n32587, n31058, n31055, 
            n31065, n3_adj_80, n32897, \ctrlword_595_3[5] , \y_cnt[2] , 
            \y_cnt[1] , \y_cnt[0] , n32926, n3008, n32508, n32927, 
            n5_adj_81, n4_adj_82, n30784, n32770, n32768, n33134, 
            n33110, n33013, n9480, n32902, n33065, \x_cnt[0] , n32185, 
            n31874);
    input realv_1_1__N_326;
    input realv_1_1__N_322;
    output realv_1_1__N_321;
    output n32791;
    output n32800;
    output n32872;
    input \voltage_code[1] ;
    output n32915;
    input \realv_5[0] ;
    input n32912;
    output \ctrlword_595_1[7] ;
    input GND_net;
    input \ctrlword_595_3[13]__inv ;
    input n34297;
    output \ctrlword_595_3[1] ;
    output n32790;
    output \ctrlword_595_3[2] ;
    output \ctrlword_595_3[3] ;
    output \ctrlword_595_3[4] ;
    input n5;
    input n4;
    output n31062;
    input \voltage_code[6] ;
    input \y_cnt[3] ;
    input n5_adj_42;
    input n4_adj_43;
    output n31053;
    input n2;
    input n9188;
    output n31064;
    input n2_adj_44;
    input n1;
    output n31052;
    output n13307;
    output \decade[3] ;
    output n32767;
    input n2_adj_45;
    input n33132;
    output n32760;
    output n23;
    output \voltage_code[15] ;
    input \ADC_level[7] ;
    output \unit[3] ;
    output \voltage_code[13] ;
    output \voltage_code[14] ;
    input \voltage_code[4] ;
    input \voltage_code[5] ;
    output \voltage_code[12] ;
    input \voltage_code[2] ;
    input \voltage_code[3] ;
    input realv_1_1__N_303;
    output n32909;
    output n31693;
    output realv_1_1__N_292;
    input realv_1_1__N_283;
    output n31755;
    output n32899;
    output n32785;
    output n33169;
    input \ctrlword_595_3[13] ;
    output n30736;
    input decade_3__N_561;
    output n32875;
    input realv_1_1__N_275;
    output n32783;
    output n32796;
    output n33180;
    output n32773;
    output n32766;
    output n32765;
    output \ctrlword_595_4_15__N_630[3] ;
    output n32782;
    output n33181;
    input n32061;
    input n32063;
    output n2240;
    input n5_adj_46;
    input n4_adj_47;
    output n30968;
    input n2_adj_48;
    input n1_adj_49;
    output n30964;
    input n5_adj_50;
    input n4_adj_51;
    output n30952;
    output n32904;
    output n32905;
    output n32906;
    output \ctrlword_595_5_15__N_638[3] ;
    input n2_adj_52;
    output n30942;
    output n30951;
    input n2_adj_53;
    output n30967;
    output n32806;
    output n29984;
    output n31877;
    output n30919;
    output n30918;
    input n5_adj_54;
    input n4_adj_55;
    output n31873;
    input n5_adj_56;
    input n4_adj_57;
    output n30916;
    input n33022;
    output n30915;
    input n5_adj_58;
    input n4_adj_59;
    output n30965;
    input n5_adj_60;
    output n6;
    input n2_adj_61;
    input n1_adj_62;
    output n30933;
    input decade_3__N_580;
    input decade_3__N_576;
    output n33174;
    input n5_adj_63;
    input n4_adj_64;
    output n30934;
    output n32761;
    input n5_adj_65;
    input n4_adj_66;
    output n30925;
    output n30943;
    output n32762;
    input n2_adj_67;
    output n30924;
    output n32774;
    output n32772;
    output \ctrlword_595_4_15__N_630[1] ;
    input n14;
    input n32711;
    output n30799;
    input n14_adj_68;
    input n34161;
    output n30798;
    input n33037;
    output n32589;
    output n32692;
    output \ctrlword_595_6[6] ;
    output \realv_5[3] ;
    output n32809;
    output n32797;
    input n14_adj_69;
    input n30785;
    output n30930;
    output realv_2_0__N_506;
    output n1_adj_70;
    output n32376;
    output n30331;
    output n9357;
    output \ctrlword_595_5_15__N_638[1] ;
    output \ctrlword_595_5_15__N_638[2] ;
    input realv_1_1__N_293;
    output \ctrlword_595_4_15__N_622[1] ;
    output n6715;
    output n23_adj_71;
    output \ctrlword_595_5[6] ;
    output n32771;
    output n32778;
    output n32777;
    input n432;
    input n33038;
    output n3;
    output n32794;
    input n3003;
    input n33061;
    input n2991;
    input n3016;
    output n32911;
    output \ctrlword_595_6_15__N_654[7] ;
    output \ctrlword_595_6_15__N_662[7] ;
    output n7;
    output \ctrlword_595_6_15__N_662[3] ;
    input n5_adj_72;
    input n4_adj_73;
    output n30876;
    input realv_1_1__N_372;
    output n32896;
    output n33041;
    input n2896;
    output n32176;
    input n33074;
    input n33143;
    output n32477;
    input n2886;
    input n33035;
    output n32621;
    input n33077;
    output n31978;
    output \ctrlword_595_4[7] ;
    input n2898;
    input n2884;
    output n1_adj_74;
    input n2913;
    output n3_adj_75;
    input realv_1_1__N_368;
    output n1_adj_76;
    output \ctrlword_595_4_15__N_630[2] ;
    output n27858;
    output \ctrlword_595_5[5] ;
    output n32769;
    output n6719;
    output \ctrlword_595_5[4] ;
    output n32898;
    input n2_adj_77;
    output n30783;
    output n6706;
    output \ctrlword_595_5_15__N_646[3] ;
    input n33103;
    output \ctrlword_595_6[3] ;
    input n1_adj_78;
    input n2975;
    output n14498;
    input n9124;
    input n2973;
    output n14496;
    output n31071;
    output n31070;
    output n31067;
    output \adcdisplay_7__N_1[6] ;
    output \ctrlword_595_6[4] ;
    output \ctrlword_595_6[5] ;
    output n6_adj_79;
    output n31059;
    output n31056;
    output n31068;
    output n31061;
    input n8;
    output n32587;
    output n31058;
    output n31055;
    output n31065;
    output n3_adj_80;
    output n32897;
    output \ctrlword_595_3[5] ;
    input \y_cnt[2] ;
    input \y_cnt[1] ;
    input \y_cnt[0] ;
    output n32926;
    input n3008;
    output n32508;
    output n32927;
    input n5_adj_81;
    input n4_adj_82;
    output n30784;
    output n32770;
    output n32768;
    output n33134;
    input n33110;
    output n33013;
    input n9480;
    input n32902;
    input n33065;
    input \x_cnt[0] ;
    output n32185;
    output n31874;
    
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    
    wire n6670, n32888;
    wire [3:0]n368;
    
    wire n32874;
    wire [3:0]n369;
    
    wire n32862;
    wire [3:0]n384;
    
    wire n32805, n21678;
    wire [3:0]n366;
    
    wire n32885;
    wire [3:0]n367;
    
    wire n8_c, n32763;
    wire [7:0]ctrlword_595_3_15__N_614;
    
    wire n32860, n30212;
    wire [3:0]n372;
    
    wire n33158, n33159, n33160, n14_c, n33155, n33156, n4_adj_1482, 
        n32059, n30272, n33192, n33193;
    wire [3:0]n385;
    
    wire n7_c, n9448;
    wire [7:0]ctrlword_595_5_15__N_638;
    
    wire n14_adj_1486, n32545, n21702, n8_adj_1487, n30436, n32917, 
        n32916;
    wire [3:0]n361;
    
    wire n32890, n27520;
    wire [15:0]voltage_code;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(46[9:21])
    
    wire n27517;
    wire [7:0]ctrlword_595_6_15__N_654;
    
    wire n7_adj_1489, n9487, n21709, n30438, n27519, n27518, n32058, 
        n29, n32991, n29_adj_1490, n33167, n33168, n32788, realv_1_0__N_460, 
        realv_1_0__N_464, n34295, n33118, n32919, n6685, n32990, 
        n4_adj_1491, n4_adj_1492;
    wire [3:0]n376;
    wire [2:0]n370;
    
    wire n32, n32_adj_1493, n32826, n6655, n32810, n32799, n34288, 
        n32764, n9307;
    wire [3:0]n383;
    
    wire n32812;
    wire [2:0]n380;
    
    wire n32781, n32795, n32776, n32808, n32813, n34277, n1_adj_1502, 
        n33165, n32980, n34296;
    wire [3:0]n381;
    
    wire n32819, n32804, n33164, n32815;
    wire [3:0]n382;
    wire [3:0]n386;
    
    wire n32801, n32811, n31227, n32817, n32816, n30528, n32820, 
        n32818, n32947, n32824, n32937;
    wire [3:0]n354;
    
    wire n32787, n32823, n32793, n32789, n32825, n32935;
    wire [3:0]n360;
    
    wire n34294, n33135, n8394;
    wire [7:0]ctrlword_595_4_15__N_630;
    
    wire n4_adj_1522, n32831, n30530, n32936, n32504, n32832;
    wire [3:0]n378;
    wire [3:0]n379;
    wire [3:0]n377;
    
    wire n32834, n32829, n32836, n32828, n32543, n32547, n32546, 
        n32548, n4_adj_1523, n21697, n32838, n32839, n32841, n32840, 
        n14_adj_1525, n32846, n32837, n4_adj_1528;
    wire [3:0]n375;
    
    wire n32845;
    wire [3:0]n374;
    
    wire n32847, n32843, n32921, n32920;
    wire [3:0]n355;
    
    wire n32848, n32842, n6682, n32852, n32850, n32851, n32856;
    wire [3:0]n371;
    
    wire n32858, n32854, n32857, n32853, n4_adj_1531, n33114, n32887, 
        n32881, n32892, n32882, n30246, n31127, n32861, n32544, 
        n32886, n32918, n32893;
    wire [3:0]n364;
    
    wire n4_adj_1533, n32900;
    wire [3:0]n362;
    
    wire n31903, n32908, n9344, n32869, n32866;
    wire [7:0]ctrlword_595_5_15__N_646;
    
    wire n32865, n32932, n32870, n32873, n32913, n30432, n7_adj_1535, 
        n9337, n32922, n7_adj_1537, n21686, n8_adj_1538;
    wire [7:0]ctrlword_595_6_15__N_662;
    
    wire n8_adj_1540, n9316, n32923, n32924, n32883, n32928, n30430, 
        n32929, n32878, n34291, n32933;
    
    LUT4 i4846_3_lut_4_lut (.A(n6670), .B(n32888), .C(realv_1_1__N_326), 
         .D(realv_1_1__N_322), .Z(realv_1_1__N_321)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4846_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4964_2_lut_rep_405_4_lut_4_lut (.A(n368[3]), .B(n32874), .C(n369[1]), 
         .D(n369[2]), .Z(n32862)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4964_2_lut_rep_405_4_lut_4_lut.init = 16'h554a;
    LUT4 i18670_2_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n32791), 
         .D(n32800), .Z(n21678)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18670_2_lut_3_lut_4_lut.init = 16'h9060;
    LUT4 i4902_3_lut_rep_415_4_lut_3_lut_4_lut (.A(n366[3]), .B(n32885), 
         .C(n367[1]), .D(n367[2]), .Z(n32872)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4902_3_lut_rep_415_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i13_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(\realv_5[0] ), 
         .D(n32912), .Z(n8_c)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut.init = 16'h6f60;
    FD1S1B mode_N_613_I_0_i2 (.D(n34297), .CK(GND_net), .PD(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_1[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam mode_N_613_I_0_i2.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i2 (.D(n32790), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_3[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i2.GSR = "DISABLED";
    FD1S1I ctrlword_595_3_15__N_614_7__I_0_i3 (.D(n32763), .CK(\ctrlword_595_3[13]__inv ), 
           .CD(n32790), .Q(\ctrlword_595_3[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i4 (.D(n32763), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_3[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i5 (.D(ctrlword_595_3_15__N_614[4]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i5.GSR = "DISABLED";
    LUT4 i4986_3_lut_rep_403_4_lut_3_lut_4_lut (.A(n368[3]), .B(n32874), 
         .C(n369[1]), .D(n369[2]), .Z(n32860)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4986_3_lut_rep_403_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i28120_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5), 
         .D(n4), .Z(n31062)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28120_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), 
         .C(n32912), .D(\realv_5[0] ), .Z(n30212)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_2_lut_3_lut_4_lut.init = 16'hfff9;
    LUT4 i4972_3_lut_4_lut (.A(n368[3]), .B(n32874), .C(n369[1]), .D(n369[2]), 
         .Z(n372[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4972_3_lut_4_lut.init = 16'h998c;
    PFUMX i29503 (.BLUT(n33158), .ALUT(n33159), .C0(\voltage_code[6] ), 
          .Z(n33160));
    LUT4 i18022_3_lut_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), 
         .C(n32912), .D(\realv_5[0] ), .Z(n14_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18022_3_lut_3_lut_3_lut_4_lut.init = 16'h9f0f;
    PFUMX i29501 (.BLUT(n33155), .ALUT(n33156), .C0(\y_cnt[3] ), .Z(n4_adj_1482));
    LUT4 unit_3__bdd_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(\realv_5[0] ), 
         .D(n32912), .Z(n32059)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam unit_3__bdd_3_lut_4_lut.init = 16'h9f09;
    LUT4 i28111_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_42), 
         .D(n4_adj_43), .Z(n31053)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28111_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n32800), 
         .D(n32791), .Z(n30272)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfff9;
    LUT4 i28122_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2), 
         .D(n9188), .Z(n31064)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28122_3_lut_4_lut.init = 16'hf960;
    LUT4 i28110_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_44), 
         .D(n1), .Z(n31052)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28110_3_lut_4_lut.init = 16'hf960;
    PFUMX i29524 (.BLUT(n33192), .ALUT(n33193), .C0(n385[1]), .Z(n13307));
    PFUMX decade_3__I_0_Mux_4_i15 (.BLUT(n7_c), .ALUT(n9448), .C0(\decade[3] ), 
          .Z(ctrlword_595_5_15__N_638[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i17952_3_lut_3_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n32791), 
         .D(n32800), .Z(n14_adj_1486)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i17952_3_lut_3_lut_3_lut_4_lut.init = 16'h9f0f;
    LUT4 n1_bdd_3_lut_29408_4_lut (.A(n384[3]), .B(n32805), .C(n32800), 
         .D(n32791), .Z(n32545)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_29408_4_lut.init = 16'h9f09;
    PFUMX decade_3__I_0_Mux_6_i15 (.BLUT(n21702), .ALUT(n8_adj_1487), .C0(\decade[3] ), 
          .Z(n30436)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 Mux_241_i3_3_lut_rep_303_4_lut_4_lut (.A(n32767), .B(n2_adj_45), 
         .C(n32790), .D(n33132), .Z(n32760)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(159[54:63])
    defparam Mux_241_i3_3_lut_rep_303_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5668_2_lut_rep_433_4_lut_4_lut (.A(n32917), .B(n32916), .C(n361[1]), 
         .D(n23), .Z(n32890)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i5668_2_lut_rep_433_4_lut_4_lut.init = 16'h6c93;
    CCU2D add_426_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27520), 
          .S0(\voltage_code[15] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_426_cout.INIT0 = 16'h0000;
    defparam add_426_cout.INIT1 = 16'h0000;
    defparam add_426_cout.INJECT1_0 = "NO";
    defparam add_426_cout.INJECT1_1 = "NO";
    CCU2D add_426_2 (.A0(\realv_5[0] ), .B0(\ADC_level[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[1] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n27517), .S1(voltage_code[8]));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_426_2.INIT0 = 16'h7000;
    defparam add_426_2.INIT1 = 16'h5aaa;
    defparam add_426_2.INJECT1_0 = "NO";
    defparam add_426_2.INJECT1_1 = "NO";
    PFUMX unit_3__I_0_Mux_5_i15 (.BLUT(n30212), .ALUT(n14_c), .C0(\unit[3] ), 
          .Z(ctrlword_595_6_15__N_654[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    PFUMX unit_3__I_0_Mux_4_i15 (.BLUT(n7_adj_1489), .ALUT(n9487), .C0(\unit[3] ), 
          .Z(ctrlword_595_6_15__N_654[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    PFUMX unit_3__I_0_Mux_6_i15 (.BLUT(n21709), .ALUT(n8_c), .C0(\unit[3] ), 
          .Z(n30438)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    CCU2D add_426_8 (.A0(\voltage_code[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ADC_level[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27519), .COUT(n27520), .S0(\voltage_code[13] ), 
          .S1(\voltage_code[14] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_426_8.INIT0 = 16'h5aaa;
    defparam add_426_8.INIT1 = 16'h5aaa;
    defparam add_426_8.INJECT1_0 = "NO";
    defparam add_426_8.INJECT1_1 = "NO";
    CCU2D add_426_6 (.A0(\voltage_code[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27518), .COUT(n27519), .S0(voltage_code[11]), 
          .S1(\voltage_code[12] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_426_6.INIT0 = 16'h5aaa;
    defparam add_426_6.INIT1 = 16'h5aaa;
    defparam add_426_6.INJECT1_0 = "NO";
    defparam add_426_6.INJECT1_1 = "NO";
    CCU2D add_426_4 (.A0(\voltage_code[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27517), .COUT(n27518), .S0(voltage_code[9]), 
          .S1(voltage_code[10]));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_426_4.INIT0 = 16'h5aaa;
    defparam add_426_4.INIT1 = 16'h5aaa;
    defparam add_426_4.INJECT1_0 = "NO";
    defparam add_426_4.INJECT1_1 = "NO";
    PFUMX i29027 (.BLUT(n32059), .ALUT(n32058), .C0(\unit[3] ), .Z(ctrlword_595_6_15__N_654[2]));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), 
         .C(n32909), .D(n32872), .Z(n29)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h00b5;
    LUT4 realv_1_1__N_302_bdd_3_lut_4_lut_3_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), 
         .C(n32909), .Z(n31693)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam realv_1_1__N_302_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 realv_1_1__N_279_bdd_3_lut_4_lut_3_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n32991), .Z(n31755)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam realv_1_1__N_279_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_291 (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n32991), .D(n32899), .Z(n29_adj_1490)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_291.init = 16'h00b5;
    PFUMX i29509 (.BLUT(n33167), .ALUT(n33168), .C0(n32785), .Z(n33169));
    LUT4 i28717_2_lut_3_lut_4_lut_4_lut (.A(n32788), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(\ctrlword_595_3[13] ), .Z(n30736)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (C+(D))) */ ;
    defparam i28717_2_lut_3_lut_4_lut_4_lut.init = 16'hff58;
    LUT4 n12512_bdd_4_lut_4_lut (.A(n34295), .B(decade_3__N_561), .C(n33118), 
         .D(n32919), .Z(n6685)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B (C+!(D))+!B !(C))) */ ;
    defparam n12512_bdd_4_lut_4_lut.init = 16'h9c18;
    LUT4 i4389_2_lut_rep_418_3_lut_4_lut (.A(n32990), .B(\voltage_code[15] ), 
         .C(n4_adj_1491), .D(n4_adj_1492), .Z(n32875)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4389_2_lut_rep_418_3_lut_4_lut.init = 16'h8000;
    LUT4 i5753_3_lut_4_lut_3_lut (.A(n376[3]), .B(realv_1_1__N_275), .C(n32875), 
         .Z(n370[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i5753_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1_4_lut_4_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), .C(n32991), 
         .D(n32899), .Z(n32)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h60e4;
    LUT4 i1_4_lut_4_lut_adj_292 (.A(realv_1_1__N_321), .B(realv_1_1__N_303), 
         .C(n32909), .D(n32872), .Z(n32_adj_1493)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_292.init = 16'h60e4;
    LUT4 n4_bdd_4_lut_4_lut (.A(n376[3]), .B(realv_1_1__N_275), .C(n32875), 
         .D(n32826), .Z(n6655)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B (C+!(D))+!B !(C))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h9c18;
    LUT4 i5364_2_lut_rep_326_3_lut_3_lut_4_lut (.A(n384[3]), .B(n32810), 
         .C(n385[1]), .D(n385[2]), .Z(n32783)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5364_2_lut_rep_326_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5371_3_lut_rep_328_4_lut_3_lut_4_lut (.A(n384[3]), .B(n32810), 
         .C(n385[1]), .D(n385[2]), .Z(n32785)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5371_3_lut_rep_328_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5349_2_lut_rep_339_4_lut_4_lut (.A(n384[3]), .B(n32810), .C(n385[1]), 
         .D(n385[2]), .Z(n32796)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5349_2_lut_rep_339_4_lut_4_lut.init = 16'h554a;
    LUT4 i10037_2_lut_rep_342_4_lut (.A(n384[3]), .B(n32810), .C(n385[1]), 
         .D(n385[2]), .Z(n32799)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10037_2_lut_rep_342_4_lut.init = 16'heee0;
    LUT4 i4296_3_lut_rep_348 (.A(n384[3]), .B(n32810), .C(n385[1]), .D(n385[2]), 
         .Z(n32805)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4296_3_lut_rep_348.init = 16'hffe0;
    LUT4 voltage_code_4__bdd_4_lut_rep_701 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n34288)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_4__bdd_4_lut_rep_701.init = 16'h83c8;
    LUT4 mux_6250_i3_else_4_lut_4_lut (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n33180)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_6250_i3_else_4_lut_4_lut.init = 16'h80c8;
    LUT4 i5357_3_lut_rep_334_4_lut (.A(n384[3]), .B(n32810), .C(n385[1]), 
         .D(n385[2]), .Z(n32791)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5357_3_lut_rep_334_4_lut.init = 16'h998c;
    LUT4 realv_2_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n32773), .B(n32764), .C(n32766), 
         .D(n32765), .Z(\ctrlword_595_4_15__N_630[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(161[51:60])
    defparam realv_2_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i7186_2_lut_rep_325_4_lut_3_lut_4_lut (.A(n384[3]), .B(n32810), 
         .C(n385[1]), .D(n385[2]), .Z(n32782)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7186_2_lut_rep_325_4_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i6564_2_lut_4_lut_3_lut_4_lut (.A(n384[3]), .B(n32810), .C(n385[1]), 
         .D(n385[2]), .Z(n9307)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6564_2_lut_4_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 mux_6250_i3_then_4_lut_3_lut (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .Z(n33181)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_6250_i3_then_4_lut_3_lut.init = 16'h8383;
    LUT4 i5259_3_lut_rep_333_4_lut_3_lut_4_lut (.A(n383[3]), .B(n32812), 
         .C(n380[1]), .D(n380[2]), .Z(n32790)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5259_3_lut_rep_333_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5252_2_lut_3_lut_3_lut_4_lut (.A(n383[3]), .B(n32812), .C(n380[1]), 
         .D(n380[2]), .Z(realv_1_0__N_460)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5252_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 n32063_bdd_3_lut_4_lut (.A(realv_1_0__N_464), .B(n32781), .C(n32061), 
         .D(n32063), .Z(n2240)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n32063_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i5237_2_lut_rep_338_4_lut_4_lut (.A(n383[3]), .B(n32812), .C(n380[1]), 
         .D(n380[2]), .Z(n32795)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5237_2_lut_rep_338_4_lut_4_lut.init = 16'h554a;
    LUT4 i14024_1_lut_rep_319_3_lut_4_lut_3_lut_4_lut (.A(n383[3]), .B(n32812), 
         .C(n380[1]), .D(n380[2]), .Z(n32776)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i14024_1_lut_rep_319_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i4292_3_lut_rep_351 (.A(n383[3]), .B(n32812), .C(n380[1]), .D(n380[2]), 
         .Z(n32808)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4292_3_lut_rep_351.init = 16'hffe0;
    LUT4 i5245_3_lut_4_lut (.A(n383[3]), .B(n32812), .C(n380[1]), .D(n380[2]), 
         .Z(realv_1_0__N_464)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5245_3_lut_4_lut.init = 16'h998c;
    LUT4 i17957_2_lut_2_lut_4_lut_4_lut (.A(n32788), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n32790), .Z(ctrlword_595_3_15__N_614[4])) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B)) */ ;
    defparam i17957_2_lut_2_lut_4_lut_4_lut.init = 16'hff93;
    LUT4 i28026_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_46), 
         .D(n4_adj_47), .Z(n30968)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28026_3_lut_4_lut.init = 16'hf960;
    LUT4 voltage_code_12__bdd_4_lut_rep_690 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n34277)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_rep_690.init = 16'h83e0;
    LUT4 i28022_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_48), 
         .D(n1_adj_49), .Z(n30964)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28022_3_lut_4_lut.init = 16'hf960;
    LUT4 i28010_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_50), 
         .D(n4_adj_51), .Z(n30952)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28010_3_lut_4_lut.init = 16'hf960;
    LUT4 decade_1__bdd_4_lut (.A(n32904), .B(\decade[3] ), .C(n32905), 
         .D(n32906), .Z(\ctrlword_595_5_15__N_638[3] )) /* synthesis lut_function=(A (B+!(C))+!A (B ((D)+!C)+!B !(C+(D)))) */ ;
    defparam decade_1__bdd_4_lut.init = 16'hce8f;
    LUT4 i28000_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_52), 
         .D(n9188), .Z(n30942)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28000_3_lut_4_lut.init = 16'hf960;
    LUT4 i28009_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2), 
         .D(n9188), .Z(n30951)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28009_3_lut_4_lut.init = 16'hf960;
    LUT4 i28025_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_53), 
         .D(n1_adj_1502), .Z(n30967)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28025_3_lut_4_lut.init = 16'hf960;
    LUT4 n30917_bdd_3_lut_29392_4_lut (.A(\voltage_code[1] ), .B(n32813), 
         .C(n32806), .D(n29984), .Z(n31877)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B+(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n30917_bdd_3_lut_29392_4_lut.init = 16'h0900;
    LUT4 i27977_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_42), 
         .D(n4_adj_43), .Z(n30919)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27977_3_lut_4_lut.init = 16'hf960;
    LUT4 i27976_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_44), 
         .D(n1), .Z(n30918)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27976_3_lut_4_lut.init = 16'hf960;
    LUT4 n30069_bdd_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_54), 
         .D(n4_adj_55), .Z(n31873)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n30069_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i27974_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_56), 
         .D(n4_adj_57), .Z(n30916)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27974_3_lut_4_lut.init = 16'hf960;
    LUT4 i5203_3_lut_4_lut_then_4_lut (.A(n32919), .B(n33118), .C(decade_3__N_561), 
         .D(n34295), .Z(n33165)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5203_3_lut_4_lut_then_4_lut.init = 16'h401c;
    LUT4 i27973_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n33022), 
         .D(n1_adj_1502), .Z(n30915)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27973_3_lut_4_lut.init = 16'hf960;
    LUT4 i28023_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_58), 
         .D(n4_adj_59), .Z(n30965)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28023_3_lut_4_lut.init = 16'hf960;
    LUT4 Mux_321_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_60), 
         .D(n4_adj_1482), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_321_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i27991_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_61), 
         .D(n1_adj_62), .Z(n30933)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27991_3_lut_4_lut.init = 16'hf960;
    LUT4 i4290_3_lut_4_lut_rep_704 (.A(\voltage_code[3] ), .B(n32980), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n34296)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4290_3_lut_4_lut_rep_704.init = 16'hffe0;
    LUT4 mux_6249_i3_then_4_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n33174)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_6249_i3_then_4_lut_4_lut.init = 16'h80e0;
    LUT4 i27992_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_63), 
         .D(n4_adj_64), .Z(n30934)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27992_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_304_2_lut_4_lut_4_lut (.A(n32788), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n33132), .Z(n32761)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_304_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i27983_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5_adj_65), 
         .D(n4_adj_66), .Z(n30925)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27983_3_lut_4_lut.init = 16'hf960;
    LUT4 i28001_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n5), 
         .D(n4), .Z(n30943)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28001_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_305_4_lut_4_lut (.A(n32788), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n32790), .Z(n32762)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_305_4_lut_4_lut.init = 16'hff6c;
    LUT4 i27982_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32813), .C(n2_adj_67), 
         .D(n1_adj_62), .Z(n30924)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27982_3_lut_4_lut.init = 16'hf960;
    LUT4 i4220_2_lut_rep_347_3_lut (.A(n381[3]), .B(n32819), .C(n384[3]), 
         .Z(n32804)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4220_2_lut_rep_347_3_lut.init = 16'hf6f6;
    LUT4 voltage_code_4__bdd_4_lut_29873 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n32980)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut_29873.init = 16'h2962;
    LUT4 i5203_3_lut_4_lut_else_4_lut (.A(n32919), .B(n33118), .C(decade_3__N_561), 
         .D(n34295), .Z(n33164)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5203_3_lut_4_lut_else_4_lut.init = 16'h5018;
    LUT4 i5175_2_lut_3_lut_3_lut_4_lut (.A(n32815), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n386[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5175_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 realv_2_3__bdd_4_lut_29398 (.A(n32766), .B(n32774), .C(n32773), 
         .D(n32772), .Z(\ctrlword_595_4_15__N_630[1] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam realv_2_3__bdd_4_lut_29398.init = 16'hbdee;
    LUT4 i5160_2_lut_rep_344_4_lut_4_lut (.A(n32815), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n32801)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5160_2_lut_rep_344_4_lut_4_lut.init = 16'h332c;
    LUT4 i5182_3_lut_4_lut_3_lut_4_lut (.A(n32815), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n386[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5182_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4288_3_lut_rep_354 (.A(n32815), .B(n382[3]), .C(n383[1]), .D(n383[2]), 
         .Z(n32811)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4288_3_lut_rep_354.init = 16'hffe0;
    LUT4 i28578_2_lut_3_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n31227)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i28578_2_lut_3_lut_4_lut.init = 16'h7fe0;
    LUT4 i5168_3_lut_4_lut (.A(n32815), .B(n382[3]), .C(n383[1]), .D(n383[2]), 
         .Z(n386[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5168_3_lut_4_lut.init = 16'h998a;
    LUT4 i27857_3_lut_4_lut (.A(n385[1]), .B(n32799), .C(n14), .D(n32711), 
         .Z(n30799)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27857_3_lut_4_lut.init = 16'hf960;
    LUT4 i28410_3_lut_4_lut (.A(n385[1]), .B(n32799), .C(n14_adj_68), 
         .D(n34161), .Z(n30798)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28410_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_4_1__bdd_2_lut_29454_2_lut_4_lut_4_lut (.A(n32817), .B(n32816), 
         .C(n384[1]), .D(n33037), .Z(n32589)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_4_1__bdd_2_lut_29454_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 realv_4_1__bdd_2_lut_2_lut_4_lut_4_lut (.A(n32817), .B(n32816), 
         .C(n384[1]), .D(n33132), .Z(n32692)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_4_1__bdd_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i27599_1_lut (.A(n30528), .Z(\ctrlword_595_6[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i27599_1_lut.init = 16'h5555;
    LUT4 i4293_3_lut_rep_356_4_lut (.A(n381[1]), .B(n32820), .C(n384[1]), 
         .D(n32817), .Z(n32813)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4293_3_lut_rep_356_4_lut.init = 16'hf666;
    LUT4 i5287_3_lut_rep_343_4_lut_3_lut_4_lut (.A(n381[1]), .B(n32820), 
         .C(n384[1]), .D(n32817), .Z(n32800)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5287_3_lut_rep_343_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5280_2_lut_3_lut_3_lut_4_lut (.A(n381[1]), .B(n32820), .C(n384[1]), 
         .D(n32817), .Z(\realv_5[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5280_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5265_2_lut_rep_352_4_lut_4_lut (.A(\voltage_code[1] ), .B(n32818), 
         .C(n384[1]), .D(n32816), .Z(n32809)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5265_2_lut_rep_352_4_lut_4_lut.init = 16'h554a;
    LUT4 i4335_2_lut_rep_490_3_lut (.A(\voltage_code[4] ), .B(n34288), .C(\voltage_code[3] ), 
         .Z(n32947)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4335_2_lut_rep_490_3_lut.init = 16'hf6f6;
    LUT4 i5273_3_lut_rep_349_4_lut (.A(\voltage_code[2] ), .B(n32824), .C(\voltage_code[1] ), 
         .D(n32813), .Z(n32806)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5273_3_lut_rep_349_4_lut.init = 16'h6966;
    LUT4 i9799_2_lut_rep_480_3_lut_4_lut (.A(\voltage_code[4] ), .B(n34288), 
         .C(n34296), .D(\voltage_code[3] ), .Z(n32937)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9799_2_lut_rep_480_3_lut_4_lut.init = 16'hf060;
    LUT4 i5217_3_lut_4_lut (.A(\voltage_code[4] ), .B(n34288), .C(\voltage_code[3] ), 
         .D(n34296), .Z(n354[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5217_3_lut_4_lut.init = 16'h6966;
    LUT4 i7154_2_lut_rep_340_4_lut_3_lut_4_lut (.A(\voltage_code[2] ), .B(n32824), 
         .C(n32813), .D(\voltage_code[1] ), .Z(n32797)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7154_2_lut_rep_340_4_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i4217_2_lut_rep_360_3_lut (.A(\voltage_code[2] ), .B(n32824), .C(\voltage_code[1] ), 
         .Z(n32817)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4217_2_lut_rep_360_3_lut.init = 16'hf6f6;
    LUT4 i27988_3_lut_4_lut (.A(n386[1]), .B(n32787), .C(n14_adj_69), 
         .D(n30785), .Z(n30930)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i27988_3_lut_4_lut.init = 16'hf960;
    LUT4 i5147_2_lut_3_lut_3_lut_4_lut (.A(n32823), .B(n381[3]), .C(n382[1]), 
         .D(n382[2]), .Z(n385[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5147_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5154_3_lut_4_lut_3_lut_4_lut (.A(n32823), .B(n381[3]), .C(n382[1]), 
         .D(n382[2]), .Z(realv_2_0__N_506)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5154_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut (.A(n32793), .B(n386[2]), .C(n386[1]), 
         .D(n33132), .Z(n1_adj_70)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 n1_bdd_2_lut_29463_2_lut_4_lut_4_lut (.A(n32793), .B(n386[2]), 
         .C(n386[1]), .D(n33037), .Z(n32376)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam n1_bdd_2_lut_29463_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i5599_2_lut_rep_309_3_lut_3_lut_4_lut (.A(n386[3]), .B(n32795), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n32766)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5599_2_lut_rep_309_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5584_2_lut_rep_317_4_lut_4_lut (.A(n386[3]), .B(n32795), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n32774)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5584_2_lut_rep_317_4_lut_4_lut.init = 16'h554a;
    LUT4 i5132_2_lut_rep_353_4_lut_4_lut (.A(n32823), .B(n381[3]), .C(n382[1]), 
         .D(n382[2]), .Z(n32810)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5132_2_lut_rep_353_4_lut_4_lut.init = 16'h332c;
    LUT4 i5606_3_lut_rep_310_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32795), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n32767)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5606_3_lut_rep_310_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4287_3_lut_rep_362 (.A(n32823), .B(n381[3]), .C(n382[1]), .D(n382[2]), 
         .Z(n32819)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4287_3_lut_rep_362.init = 16'hffe0;
    LUT4 i5140_3_lut_4_lut (.A(n32823), .B(n381[3]), .C(n382[1]), .D(n382[2]), 
         .Z(n385[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5140_3_lut_4_lut.init = 16'h998a;
    LUT4 i1_2_lut_4_lut (.A(n32795), .B(n32789), .C(n386[3]), .D(n32773), 
         .Z(n30331)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B ((D)+!C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_4_lut.init = 16'hffa6;
    LUT4 i4650_3_lut_4_lut (.A(n32826), .B(n32825), .C(n6655), .D(n370[1]), 
         .Z(n380[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4650_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i7794_2_lut_4_lut (.A(n32795), .B(n32789), .C(n386[3]), .D(n32773), 
         .Z(n9357)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7794_2_lut_4_lut.init = 16'h59a6;
    LUT4 i6034_1_lut_rep_306_3_lut_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32795), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n32763)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i6034_1_lut_rep_306_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i10031_2_lut_rep_324_4_lut (.A(n386[3]), .B(n32795), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n32781)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10031_2_lut_rep_324_4_lut.init = 16'heee0;
    LUT4 decade_3__bdd_4_lut (.A(\decade[3] ), .B(n32904), .C(n32905), 
         .D(n32906), .Z(\ctrlword_595_5_15__N_638[1] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam decade_3__bdd_4_lut.init = 16'hbdee;
    LUT4 i4323_2_lut_rep_533 (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .Z(n32990)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4323_2_lut_rep_533.init = 16'heeee;
    LUT4 decade_3__bdd_4_lut_28928 (.A(\decade[3] ), .B(n32905), .C(n32904), 
         .D(n32906), .Z(\ctrlword_595_5_15__N_638[2] )) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (C+!(D))+!B !((D)+!C))) */ ;
    defparam decade_3__bdd_4_lut_28928.init = 16'hb7ab;
    LUT4 i4392_2_lut_rep_452_3_lut_4_lut (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(n4_adj_1492), .D(\voltage_code[15] ), .Z(n32909)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i4392_2_lut_rep_452_3_lut_4_lut.init = 16'he000;
    LUT4 i4273_3_lut_4_lut_rep_702 (.A(voltage_code[11]), .B(n32935), .C(n360[1]), 
         .D(realv_1_1__N_293), .Z(n34294)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4273_3_lut_4_lut_rep_702.init = 16'hffe0;
    LUT4 i2_4_lut (.A(\ADC_level[7] ), .B(\voltage_code[6] ), .C(\voltage_code[5] ), 
         .D(n33135), .Z(\ctrlword_595_4_15__N_622[1] )) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i5690_2_lut_3_lut_4_lut (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(n8394), .D(\voltage_code[15] ), .Z(n6715)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i5690_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i4397_2_lut_rep_534 (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(\voltage_code[15] ), .Z(n32991)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i4397_2_lut_rep_534.init = 16'he0e0;
    LUT4 i4699_2_lut_rep_459_3_lut_4_lut_4_lut (.A(voltage_code[11]), .B(n32935), 
         .C(n360[1]), .D(realv_1_1__N_293), .Z(n32916)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4699_2_lut_rep_459_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 realv_2_0__bdd_4_lut_29290 (.A(n32773), .B(n32766), .C(n32774), 
         .D(n32772), .Z(ctrlword_595_4_15__N_630[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_2_0__bdd_4_lut_29290.init = 16'hf67d;
    LUT4 i4301_3_lut_rep_332 (.A(n386[3]), .B(n32795), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n32789)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4301_3_lut_rep_332.init = 16'hffe0;
    LUT4 i5592_3_lut_rep_315_4_lut (.A(n386[3]), .B(n32795), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n32772)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5592_3_lut_rep_315_4_lut.init = 16'h998c;
    LUT4 i10030_3_lut (.A(n23_adj_71), .B(realv_1_1__N_321), .C(n32872), 
         .Z(n4_adj_1522)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10030_3_lut.init = 16'h5454;
    LUT4 i1_4_lut (.A(n32_adj_1493), .B(n32909), .C(n29), .D(n6715), 
         .Z(n23_adj_71)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i4643_3_lut_4_lut (.A(n376[3]), .B(n32831), .C(n32826), .D(n6655), 
         .Z(n380[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4643_3_lut_4_lut.init = 16'h6966;
    LUT4 i27600_1_lut (.A(n30530), .Z(\ctrlword_595_5[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i27600_1_lut.init = 16'h5555;
    LUT4 i5209_2_lut_rep_479_4_lut (.A(\voltage_code[3] ), .B(n32980), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n32936)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5209_2_lut_rep_479_4_lut.init = 16'h554a;
    LUT4 realv_3_3__bdd_4_lut_29319 (.A(n32771), .B(n32778), .C(n32777), 
         .D(n32785), .Z(n32504)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam realv_3_3__bdd_4_lut_29319.init = 16'h7f67;
    LUT4 i6624_2_lut_rep_307_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32795), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n32764)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6624_2_lut_rep_307_4_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 i4930_3_lut_4_lut_3_lut_4_lut (.A(n32832), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n383[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4930_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4908_2_lut_rep_358_4_lut_4_lut (.A(n32832), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n32815)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4908_2_lut_rep_358_4_lut_4_lut.init = 16'h332c;
    LUT4 i4923_2_lut_3_lut_3_lut_4_lut (.A(n32832), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n383[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4923_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i7357_2_lut_rep_308_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32795), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n32765)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7357_2_lut_rep_308_4_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i4916_3_lut_4_lut (.A(n32832), .B(n378[3]), .C(n379[1]), .D(n379[2]), 
         .Z(n383[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4916_3_lut_4_lut.init = 16'h998a;
    LUT4 i4282_3_lut_rep_367_4_lut (.A(n377[1]), .B(n32834), .C(n381[1]), 
         .D(n32829), .Z(n32824)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4282_3_lut_rep_367_4_lut.init = 16'hf666;
    LUT4 i9979_2_lut_rep_363_3_lut_4_lut (.A(n377[1]), .B(n32834), .C(n381[1]), 
         .D(n32829), .Z(n32820)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9979_2_lut_rep_363_3_lut_4_lut.init = 16'hf600;
    LUT4 i5007_2_lut_rep_359_3_lut_3_lut_4_lut (.A(n377[1]), .B(n32834), 
         .C(n381[1]), .D(n32829), .Z(n32816)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5007_2_lut_rep_359_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5014_3_lut_4_lut_3_lut_4_lut (.A(n377[1]), .B(n32834), .C(n381[1]), 
         .D(n32829), .Z(n384[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5014_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4992_2_lut_rep_361_4_lut_4_lut (.A(n32836), .B(\voltage_code[2] ), 
         .C(n381[1]), .D(n32828), .Z(n32818)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4992_2_lut_rep_361_4_lut_4_lut.init = 16'h332c;
    LUT4 i1_4_lut_adj_293 (.A(n32), .B(n32991), .C(n29_adj_1490), .D(n31227), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_293.init = 16'hbabb;
    LUT4 i4319_2_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), .Z(n4_adj_1492)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4319_2_lut.init = 16'heeee;
    LUT4 n1_bdd_3_lut_29321 (.A(n432), .B(ctrlword_595_6_15__N_654[1]), 
         .C(ctrlword_595_6_15__N_654[2]), .Z(n32543)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_29321.init = 16'he4e4;
    LUT4 n1_bdd_4_lut (.A(n32783), .B(n32796), .C(n32791), .D(n32800), 
         .Z(n32547)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam n1_bdd_4_lut.init = 16'hbede;
    LUT4 i4313_2_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), .Z(n4_adj_1491)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4313_2_lut.init = 16'heeee;
    LUT4 n32547_bdd_3_lut (.A(n32547), .B(n32546), .C(n432), .Z(n32548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32547_bdd_3_lut.init = 16'hcaca;
    LUT4 i10029_3_lut (.A(n23_adj_71), .B(realv_1_1__N_321), .C(n32872), 
         .Z(n4_adj_1523)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10029_3_lut.init = 16'h5151;
    LUT4 i2_3_lut_3_lut_3_lut_4_lut (.A(n386[3]), .B(n32789), .C(n33038), 
         .D(n32773), .Z(n3)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_3_lut_3_lut_4_lut.init = 16'h0090;
    LUT4 n1_bdd_3_lut_29314_4_lut_then_4_lut (.A(realv_2_0__N_506), .B(n32794), 
         .C(n3003), .D(n33061), .Z(n33168)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_29314_4_lut_then_4_lut.init = 16'hf690;
    LUT4 i18685_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32789), .C(n32772), 
         .D(n32773), .Z(n21697)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18685_4_lut_3_lut_4_lut.init = 16'h90f9;
    LUT4 n1_bdd_3_lut_29314_4_lut_else_4_lut (.A(realv_2_0__N_506), .B(n32794), 
         .C(n2991), .D(n3016), .Z(n33167)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_29314_4_lut_else_4_lut.init = 16'hf690;
    LUT4 i4783_2_lut_3_lut_3_lut_4_lut (.A(n377[3]), .B(n32838), .C(n378[1]), 
         .D(n378[2]), .Z(n382[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4783_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4768_2_lut_rep_366_4_lut_4_lut (.A(n377[3]), .B(n32838), .C(n378[1]), 
         .D(n378[2]), .Z(n32823)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4768_2_lut_rep_366_4_lut_4_lut.init = 16'h554a;
    LUT4 realv_5_0__bdd_4_lut (.A(\realv_5[0] ), .B(\unit[3] ), .C(n32911), 
         .D(n32912), .Z(\ctrlword_595_6_15__N_654[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_5_0__bdd_4_lut.init = 16'hf67d;
    LUT4 i4790_3_lut_4_lut_3_lut_4_lut (.A(n377[3]), .B(n32838), .C(n378[1]), 
         .D(n378[2]), .Z(n382[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4790_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 realv_4_0__bdd_4_lut (.A(n32800), .B(n32783), .C(n32796), .D(n32791), 
         .Z(\ctrlword_595_6_15__N_662[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_4_0__bdd_4_lut.init = 16'hf67d;
    LUT4 i4776_3_lut_4_lut (.A(n377[3]), .B(n32838), .C(n378[1]), .D(n378[2]), 
         .Z(n382[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4776_3_lut_4_lut.init = 16'h998c;
    LUT4 i5000_3_lut_4_lut (.A(\voltage_code[3] ), .B(n32839), .C(\voltage_code[2] ), 
         .D(n32824), .Z(n384[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5000_3_lut_4_lut.init = 16'h6966;
    LUT4 i5005_2_lut_rep_372_3_lut (.A(\voltage_code[3] ), .B(n32839), .C(\voltage_code[2] ), 
         .Z(n32829)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5005_2_lut_rep_372_3_lut.init = 16'hf6f6;
    LUT4 i4635_2_lut_rep_355_4_lut_4_lut (.A(n32841), .B(n32840), .C(n376[1]), 
         .D(n6655), .Z(n32812)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4635_2_lut_rep_355_4_lut_4_lut.init = 16'h936c;
    LUT4 realv_2_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut (.A(n386[3]), .B(n32789), 
         .C(n32772), .D(n32773), .Z(n7)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_2_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut.init = 16'h966f;
    LUT4 i18382_2_lut_3_lut_3_lut_4_lut (.A(n386[3]), .B(n32789), .C(n32772), 
         .D(n32773), .Z(n14_adj_1525)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18382_2_lut_3_lut_3_lut_4_lut.init = 16'h6fff;
    LUT4 realv_4_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n32800), .B(n9307), .C(n32783), 
         .D(n32782), .Z(\ctrlword_595_6_15__N_662[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(165[51:60])
    defparam realv_4_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i28476_3_lut_4_lut (.A(n386[3]), .B(n32789), .C(n5_adj_72), .D(n4_adj_73), 
         .Z(n30876)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28476_3_lut_4_lut.init = 16'hf960;
    LUT4 i4299_3_lut_rep_380_4_lut (.A(realv_1_1__N_372), .B(n32846), .C(n376[1]), 
         .D(n32841), .Z(n32837)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4299_3_lut_rep_380_4_lut.init = 16'hf666;
    LUT4 i5485_2_lut_3_lut_3_lut_4_lut (.A(realv_1_1__N_372), .B(n32846), 
         .C(n376[1]), .D(n32841), .Z(n379[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5485_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5492_3_lut_rep_369_4_lut_3_lut_4_lut (.A(realv_1_1__N_372), .B(n32846), 
         .C(n376[1]), .D(n32841), .Z(n32826)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5492_3_lut_rep_369_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4193_2_lut (.A(n376[3]), .B(realv_1_1__N_275), .Z(n4_adj_1528)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4193_2_lut.init = 16'heeee;
    LUT4 i5470_2_lut_rep_375_4_lut_4_lut (.A(n375[3]), .B(n32845), .C(n376[1]), 
         .D(n32840), .Z(n32832)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5470_2_lut_rep_375_4_lut_4_lut.init = 16'h554a;
    LUT4 i9992_2_lut_rep_377_3_lut_4_lut (.A(n374[1]), .B(n32847), .C(n377[1]), 
         .D(n32843), .Z(n32834)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9992_2_lut_rep_377_3_lut_4_lut.init = 16'hf600;
    LUT4 i4274_3_lut_rep_382_4_lut (.A(n374[1]), .B(n32847), .C(n377[1]), 
         .D(n32843), .Z(n32839)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4274_3_lut_rep_382_4_lut.init = 16'hf666;
    LUT4 i1_2_lut_rep_439_4_lut_4_lut (.A(n32921), .B(n32920), .C(n355[1]), 
         .D(n32906), .Z(n32896)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_439_4_lut_4_lut.init = 16'hff6c;
    LUT4 n9171_bdd_3_lut_29087_4_lut_4_lut_4_lut (.A(n33041), .B(n33132), 
         .C(n2896), .D(\ctrlword_595_4_15__N_622[1] ), .Z(n32176)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam n9171_bdd_3_lut_29087_4_lut_4_lut_4_lut.init = 16'hf044;
    LUT4 hundreds_0__bdd_3_lut_29395_4_lut_4_lut (.A(n33041), .B(n33074), 
         .C(n33143), .D(\ctrlword_595_4_15__N_622[1] ), .Z(n32477)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_29395_4_lut_4_lut.init = 16'hcce4;
    LUT4 i4671_2_lut_rep_371_3_lut_3_lut_4_lut (.A(n374[1]), .B(n32847), 
         .C(n377[1]), .D(n32843), .Z(n32828)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4671_2_lut_rep_371_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 hundreds_0__bdd_3_lut_4_lut_4_lut (.A(n33041), .B(n2886), .C(n33035), 
         .D(\ctrlword_595_4_15__N_622[1] ), .Z(n32621)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_4_lut_4_lut.init = 16'hcce4;
    LUT4 hundreds_0__bdd_3_lut_29284_4_lut_4_lut (.A(n33041), .B(n2886), 
         .C(n33077), .D(\ctrlword_595_4_15__N_622[1] ), .Z(n31978)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_29284_4_lut_4_lut.init = 16'hcce4;
    LUT4 mux_6259_i7_3_lut_4_lut_4_lut (.A(n33041), .B(ctrlword_595_4_15__N_630[7]), 
         .C(\ctrlword_595_3[13] ), .D(\ctrlword_595_4_15__N_622[1] ), .Z(\ctrlword_595_4[7] )) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam mux_6259_i7_3_lut_4_lut_4_lut.init = 16'hfc5c;
    LUT4 Mux_365_i1_3_lut_3_lut_4_lut_4_lut (.A(n33041), .B(n2898), .C(n2884), 
         .D(\ctrlword_595_4_15__N_622[1] ), .Z(n1_adj_74)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam Mux_365_i1_3_lut_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 Mux_368_i3_3_lut_4_lut_4_lut_4_lut (.A(n33041), .B(n33132), .C(n2913), 
         .D(\ctrlword_595_4_15__N_622[1] ), .Z(n3_adj_75)) /* synthesis lut_function=(A (C (D))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam Mux_368_i3_3_lut_4_lut_4_lut_4_lut.init = 16'hf044;
    LUT4 i4678_3_lut_4_lut_3_lut_4_lut (.A(n374[1]), .B(n32847), .C(n377[1]), 
         .D(n32843), .Z(n381[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4678_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4656_2_lut_rep_379_4_lut_4_lut (.A(n32848), .B(\voltage_code[3] ), 
         .C(n377[1]), .D(n32842), .Z(n32836)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4656_2_lut_rep_379_4_lut_4_lut.init = 16'h332c;
    LUT4 i4190_2_lut_rep_384_3_lut (.A(n32860), .B(n6682), .C(n375[3]), 
         .Z(n32841)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4190_2_lut_rep_384_3_lut.init = 16'hf6f6;
    LUT4 i5478_3_lut_4_lut (.A(n32860), .B(n6682), .C(n375[3]), .D(n32837), 
         .Z(n379[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5478_3_lut_4_lut.init = 16'h6966;
    LUT4 i5126_3_lut_4_lut (.A(n6682), .B(n32852), .C(realv_1_1__N_372), 
         .D(realv_1_1__N_368), .Z(n376[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5126_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4669_2_lut_rep_386_3_lut (.A(\voltage_code[4] ), .B(n32850), .C(\voltage_code[3] ), 
         .Z(n32843)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4669_2_lut_rep_386_3_lut.init = 16'hf6f6;
    LUT4 i4664_3_lut_4_lut (.A(\voltage_code[4] ), .B(n32850), .C(\voltage_code[3] ), 
         .D(n32839), .Z(n381[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4664_3_lut_4_lut.init = 16'h6966;
    LUT4 i5428_3_lut_4_lut_3_lut_4_lut (.A(n374[3]), .B(n32851), .C(n375[1]), 
         .D(n375[2]), .Z(n378[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5428_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5406_2_lut_rep_381_4_lut_4_lut (.A(n374[3]), .B(n32851), .C(n375[1]), 
         .D(n375[2]), .Z(n32838)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5406_2_lut_rep_381_4_lut_4_lut.init = 16'h554a;
    LUT4 i5421_2_lut_3_lut_3_lut_4_lut (.A(n374[3]), .B(n32851), .C(n375[1]), 
         .D(n375[2]), .Z(n378[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5421_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5571_2_lut_rep_314_3_lut_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32801), 
         .C(n386[1]), .D(n386[2]), .Z(n32771)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5571_2_lut_rep_314_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5414_3_lut_4_lut (.A(n374[3]), .B(n32851), .C(n375[1]), .D(n375[2]), 
         .Z(n378[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5414_3_lut_4_lut.init = 16'h998c;
    LUT4 i5578_3_lut_rep_316_4_lut_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32801), 
         .C(n386[1]), .D(n386[2]), .Z(n32773)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5578_3_lut_rep_316_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i10032_2_lut_rep_330_4_lut (.A(realv_2_0__N_506), .B(n32801), .C(n386[1]), 
         .D(n386[2]), .Z(n32787)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10032_2_lut_rep_330_4_lut.init = 16'heee0;
    LUT4 i5556_2_lut_rep_320_4_lut_4_lut (.A(realv_2_0__N_506), .B(n32801), 
         .C(n386[1]), .D(n386[2]), .Z(n32777)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5556_2_lut_rep_320_4_lut_4_lut.init = 16'h554a;
    LUT4 i4286_3_lut_4_lut (.A(n32856), .B(n32860), .C(realv_1_1__N_372), 
         .D(realv_1_1__N_368), .Z(n6682)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4286_3_lut_4_lut.init = 16'hffe0;
    LUT4 i5119_2_lut_rep_383_3_lut_4_lut (.A(n32856), .B(n32860), .C(realv_1_1__N_372), 
         .D(n6682), .Z(n32840)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5119_2_lut_rep_383_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i10038_2_lut_rep_390_3_lut_4_lut (.A(n371[1]), .B(n32858), .C(n374[1]), 
         .D(n32854), .Z(n32847)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10038_2_lut_rep_390_3_lut_4_lut.init = 16'hf600;
    LUT4 i5336_2_lut_rep_385_3_lut_3_lut_4_lut (.A(n371[1]), .B(n32858), 
         .C(n374[1]), .D(n32854), .Z(n32842)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5336_2_lut_rep_385_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4295_3_lut_rep_393_4_lut (.A(n371[1]), .B(n32858), .C(n374[1]), 
         .D(n32854), .Z(n32850)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4295_3_lut_rep_393_4_lut.init = 16'hf666;
    LUT4 i4300_3_lut_rep_337 (.A(realv_2_0__N_506), .B(n32801), .C(n386[1]), 
         .D(n386[2]), .Z(n32794)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4300_3_lut_rep_337.init = 16'hffe0;
    LUT4 i5343_3_lut_4_lut_3_lut_4_lut (.A(n371[1]), .B(n32858), .C(n374[1]), 
         .D(n32854), .Z(n377[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5343_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5321_2_lut_rep_391_4_lut_4_lut (.A(\voltage_code[4] ), .B(n32857), 
         .C(n374[1]), .D(n32853), .Z(n32848)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5321_2_lut_rep_391_4_lut_4_lut.init = 16'h554a;
    LUT4 i10027_3_lut (.A(n23), .B(realv_1_1__N_292), .C(n32899), .Z(n4_adj_1531)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10027_3_lut.init = 16'h5151;
    LUT4 i9995_2_lut_rep_424_3_lut_4_lut (.A(n33114), .B(n32887), .C(n366[1]), 
         .D(n366[2]), .Z(n32881)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i9995_2_lut_rep_424_3_lut_4_lut.init = 16'heee0;
    LUT4 i5112_3_lut_4_lut (.A(n32872), .B(n23_adj_71), .C(n32860), .D(n6682), 
         .Z(n376[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5112_3_lut_4_lut.init = 16'h9699;
    LUT4 i4314_2_lut_rep_425_3_lut (.A(n32892), .B(n6670), .C(n366[3]), 
         .Z(n32882)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4314_2_lut_rep_425_3_lut.init = 16'hf6f6;
    LUT4 i5117_2_lut_rep_395_3_lut (.A(n32872), .B(n23_adj_71), .C(n32860), 
         .Z(n32852)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5117_2_lut_rep_395_3_lut.init = 16'hf9f9;
    LUT4 i4324_4_lut_rep_584 (.A(\voltage_code[6] ), .B(\ADC_level[7] ), 
         .C(\voltage_code[5] ), .D(n30246), .Z(n33041)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i4324_4_lut_rep_584.init = 16'heccc;
    LUT4 i9967_2_lut_rep_389_3_lut_4_lut (.A(n32872), .B(n23_adj_71), .C(n6682), 
         .D(n32860), .Z(n32846)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9967_2_lut_rep_389_3_lut_4_lut.init = 16'hf090;
    PFUMX i29325 (.BLUT(n32548), .ALUT(n32543), .C0(\ctrlword_595_3[13] ), 
          .Z(n31127));
    LUT4 i4184_2_lut_rep_397_3_lut (.A(\voltage_code[5] ), .B(n32861), .C(\voltage_code[4] ), 
         .Z(n32854)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4184_2_lut_rep_397_3_lut.init = 16'hf6f6;
    PFUMX i29323 (.BLUT(n32545), .ALUT(n32544), .C0(n32783), .Z(n32546));
    LUT4 voltage_code_12__bdd_4_lut_29573 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n360[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_29573.init = 16'h318c;
    LUT4 i4874_3_lut_4_lut_3_lut_4_lut (.A(n33114), .B(n32887), .C(n366[1]), 
         .D(n366[2]), .Z(n368[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4874_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4277_3_lut_rep_429 (.A(n33114), .B(n32887), .C(n366[1]), .D(n366[2]), 
         .Z(n32886)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4277_3_lut_rep_429.init = 16'hffe0;
    LUT4 i4860_3_lut_4_lut (.A(n33114), .B(n32887), .C(n366[1]), .D(n366[2]), 
         .Z(n368[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4860_3_lut_4_lut.init = 16'h998c;
    LUT4 i4839_2_lut_3_lut_4_lut (.A(n32892), .B(n32890), .C(realv_1_1__N_326), 
         .D(n6670), .Z(n367[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i4839_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i4276_3_lut_4_lut (.A(n32892), .B(n32890), .C(realv_1_1__N_326), 
         .D(realv_1_1__N_322), .Z(n6670)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4276_3_lut_4_lut.init = 16'hffe0;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut_adj_294 (.A(n32921), .B(n32920), .C(n355[1]), 
         .D(n33132), .Z(n1_adj_76)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut_adj_294.init = 16'h9300;
    LUT4 i5685_2_lut_4_lut (.A(n23), .B(realv_1_1__N_292), .C(n32899), 
         .D(realv_1_1__N_283), .Z(n8394)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5685_2_lut_4_lut.init = 16'h5400;
    PFUMX i29507 (.BLUT(n33164), .ALUT(n33165), .C0(n32918), .Z(\decade[3] ));
    LUT4 i4318_2_lut_rep_431_3_lut (.A(n32899), .B(n23), .C(n32892), .Z(n32888)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4318_2_lut_rep_431_3_lut.init = 16'hf9f9;
    LUT4 i5329_3_lut_4_lut (.A(\voltage_code[5] ), .B(n32861), .C(\voltage_code[4] ), 
         .D(n32850), .Z(n377[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5329_3_lut_4_lut.init = 16'h6966;
    LUT4 i4832_3_lut_4_lut (.A(n32899), .B(n23), .C(n32892), .D(n6670), 
         .Z(n367[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4832_3_lut_4_lut.init = 16'h9699;
    LUT4 i4811_2_lut_3_lut_3_lut_4_lut (.A(n32893), .B(voltage_code[8]), 
         .C(n364[1]), .D(n364[2]), .Z(n366[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4811_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    PFUMX realv_2_3__I_0_Mux_2_i15 (.BLUT(n21697), .ALUT(n14_adj_1525), 
          .C0(n32766), .Z(\ctrlword_595_4_15__N_630[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i4796_2_lut_rep_430_4_lut_4_lut (.A(n32893), .B(voltage_code[8]), 
         .C(n364[1]), .D(n364[2]), .Z(n32887)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4796_2_lut_rep_430_4_lut_4_lut.init = 16'h332c;
    LUT4 i5070_3_lut_4_lut_3_lut_4_lut (.A(n371[3]), .B(n32862), .C(n372[1]), 
         .D(n372[2]), .Z(n375[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5070_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4818_3_lut_4_lut_3_lut_4_lut (.A(n32893), .B(voltage_code[8]), 
         .C(n364[1]), .D(n364[2]), .Z(n366[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4818_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2_4_lut_4_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), .C(n32909), 
         .D(n4_adj_1523), .Z(n27858)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 i4804_3_lut_4_lut (.A(n32893), .B(voltage_code[8]), .C(n364[1]), 
         .D(n364[2]), .Z(n366[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4804_3_lut_4_lut.init = 16'h998a;
    LUT4 i5048_2_lut_rep_394_4_lut_4_lut (.A(n371[3]), .B(n32862), .C(n372[1]), 
         .D(n372[2]), .Z(n32851)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5048_2_lut_rep_394_4_lut_4_lut.init = 16'h554a;
    LUT4 i5063_2_lut_3_lut_3_lut_4_lut (.A(n371[3]), .B(n32862), .C(n372[1]), 
         .D(n372[2]), .Z(n375[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5063_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5056_3_lut_4_lut (.A(n371[3]), .B(n32862), .C(n372[1]), .D(n372[2]), 
         .Z(n375[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5056_3_lut_4_lut.init = 16'h998c;
    LUT4 i4333_2_lut (.A(n34295), .B(decade_3__N_561), .Z(n4_adj_1533)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4333_2_lut.init = 16'heeee;
    LUT4 unit_3__bdd_4_lut_30055 (.A(\unit[3] ), .B(n32911), .C(n32912), 
         .D(\realv_5[0] ), .Z(ctrlword_595_6_15__N_654[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam unit_3__bdd_4_lut_30055.init = 16'hbede;
    LUT4 i4824_2_lut_rep_428_4_lut_4_lut (.A(n32900), .B(n362[2]), .C(n362[1]), 
         .D(n6670), .Z(n32885)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4824_2_lut_rep_428_4_lut_4_lut.init = 16'h936c;
    PFUMX i29308 (.BLUT(n32504), .ALUT(ctrlword_595_5_15__N_638[5]), .C0(\ctrlword_595_3[13] ), 
          .Z(\ctrlword_595_5[5] ));
    LUT4 i7321_2_lut_rep_312_3_lut_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32801), 
         .C(n386[1]), .D(n386[2]), .Z(n32769)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7321_2_lut_rep_312_3_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i28444_3_lut_4_lut_4_lut (.A(n32904), .B(n31903), .C(\decade[3] ), 
         .D(n32896), .Z(ctrlword_595_5_15__N_638[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28444_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i5564_3_lut_rep_321_4_lut (.A(realv_2_0__N_506), .B(n32801), .C(n386[1]), 
         .D(n386[2]), .Z(n32778)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5564_3_lut_rep_321_4_lut.init = 16'h998c;
    LUT4 i4740_2_lut_rep_436_4_lut_4_lut (.A(voltage_code[9]), .B(n32908), 
         .C(n362[1]), .D(n362[2]), .Z(n32893)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4740_2_lut_rep_436_4_lut_4_lut.init = 16'h554a;
    LUT4 i4755_2_lut_3_lut_3_lut_4_lut (.A(voltage_code[9]), .B(n32908), 
         .C(n362[1]), .D(n362[2]), .Z(n364[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4755_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i6600_2_lut_3_lut_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32801), 
         .C(n386[1]), .D(n386[2]), .Z(n9344)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6600_2_lut_3_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 i4762_3_lut_rep_435_4_lut_3_lut_4_lut (.A(voltage_code[9]), .B(n32908), 
         .C(n362[1]), .D(n362[2]), .Z(n32892)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4762_3_lut_rep_435_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2_4_lut_4_lut_adj_295 (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n32991), .D(n4_adj_1531), .Z(n6719)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_4_lut_adj_295.init = 16'h871e;
    LUT4 i4748_3_lut_4_lut (.A(voltage_code[9]), .B(n32908), .C(n362[1]), 
         .D(n362[2]), .Z(n364[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4748_3_lut_4_lut.init = 16'h998c;
    LUT4 i4226_2_lut_rep_331_3_lut (.A(n383[3]), .B(n32808), .C(n386[3]), 
         .Z(n32788)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4226_2_lut_rep_331_3_lut.init = 16'hf6f6;
    LUT4 i4283_3_lut_rep_404_4_lut (.A(n368[1]), .B(n32869), .C(n371[1]), 
         .D(n32866), .Z(n32861)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4283_3_lut_rep_404_4_lut.init = 16'hf666;
    L6MUX21 mux_2834_i4 (.D0(ctrlword_595_5_15__N_646[4]), .D1(ctrlword_595_5_15__N_638[4]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_5[4] ));
    LUT4 i9971_2_lut_rep_401_3_lut_4_lut (.A(n368[1]), .B(n32869), .C(n371[1]), 
         .D(n32866), .Z(n32858)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9971_2_lut_rep_401_3_lut_4_lut.init = 16'hf600;
    LUT4 i5035_2_lut_rep_396_3_lut_3_lut_4_lut (.A(n368[1]), .B(n32869), 
         .C(n371[1]), .D(n32866), .Z(n32853)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5035_2_lut_rep_396_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5042_3_lut_4_lut_3_lut_4_lut (.A(n368[1]), .B(n32869), .C(n371[1]), 
         .D(n32866), .Z(n374[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5042_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5020_2_lut_rep_400_4_lut_4_lut (.A(\voltage_code[5] ), .B(n33160), 
         .C(n371[1]), .D(n32865), .Z(n32857)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5020_2_lut_rep_400_4_lut_4_lut.init = 16'h554a;
    LUT4 i5224_2_lut_rep_475_3_lut_4_lut_4_lut (.A(\voltage_code[3] ), .B(n32980), 
         .C(decade_3__N_580), .D(decade_3__N_576), .Z(n32932)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5224_2_lut_rep_475_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 i18686_2_lut_rep_441_3_lut (.A(n32919), .B(n6685), .C(n32905), 
         .Z(n32898)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18686_2_lut_rep_441_3_lut.init = 16'hf6f6;
    LUT4 i4895_2_lut_3_lut_3_lut_4_lut (.A(n366[3]), .B(n32885), .C(n367[1]), 
         .D(n367[2]), .Z(n369[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4895_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i27841_3_lut_4_lut_4_lut (.A(n32785), .B(n2_adj_77), .C(n32777), 
         .D(n33132), .Z(n30783)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(163[51:60])
    defparam i27841_3_lut_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5104_2_lut_rep_388_4_lut_4_lut (.A(n32870), .B(n369[2]), .C(n369[1]), 
         .D(n6682), .Z(n32845)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5104_2_lut_rep_388_4_lut_4_lut.init = 16'h936c;
    LUT4 decade_0__bdd_3_lut_4_lut_4_lut (.A(n32918), .B(n6685), .C(n32919), 
         .D(n32905), .Z(n31903)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam decade_0__bdd_3_lut_4_lut_4_lut.init = 16'hdb59;
    LUT4 i5028_3_lut_4_lut (.A(\voltage_code[6] ), .B(n32873), .C(\voltage_code[5] ), 
         .D(n32861), .Z(n374[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5028_3_lut_4_lut.init = 16'h6966;
    LUT4 i4306_2_lut_rep_409_3_lut (.A(\voltage_code[6] ), .B(n32873), .C(\voltage_code[5] ), 
         .Z(n32866)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4306_2_lut_rep_409_3_lut.init = 16'hf6f6;
    LUT4 decade_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut_4_lut (.A(n32918), 
         .B(n6685), .C(n32919), .D(n32905), .Z(n7_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam decade_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut_4_lut.init = 16'h9a7d;
    LUT4 i13_3_lut_4_lut_4_lut (.A(n32918), .B(n6685), .C(n32919), .D(n32905), 
         .Z(n8_adj_1487)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut.init = 16'h3ca6;
    LUT4 i18689_2_lut_3_lut_4_lut_4_lut (.A(n32918), .B(n6685), .C(n32919), 
         .D(n32905), .Z(n21702)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18689_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 i18355_3_lut_3_lut_4_lut_4_lut (.A(n32918), .B(n6685), .C(n32919), 
         .D(n32905), .Z(n9448)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18355_3_lut_3_lut_4_lut_4_lut.init = 16'hdbe7;
    LUT4 i4310_2_lut_rep_443_3_lut (.A(voltage_code[10]), .B(n32913), .C(voltage_code[9]), 
         .Z(n32900)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4310_2_lut_rep_443_3_lut.init = 16'hf6f6;
    LUT4 i4379_2_lut_rep_374_3_lut_4_lut (.A(n4_adj_1492), .B(n32991), .C(n4_adj_1528), 
         .D(n4_adj_1491), .Z(n32831)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4379_2_lut_rep_374_3_lut_4_lut.init = 16'h8000;
    LUT4 i5634_3_lut_4_lut (.A(n4_adj_1492), .B(n32991), .C(n4_adj_1522), 
         .D(realv_1_1__N_303), .Z(n6706)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i5634_3_lut_4_lut.init = 16'h7888;
    LUT4 realv_3_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n32785), .B(n9344), .C(n32771), 
         .D(n32769), .Z(\ctrlword_595_5_15__N_646[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(163[51:60])
    defparam realv_3_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    L6MUX21 mux_2834_i6 (.D0(n30432), .D1(n30436), .SD(\ctrlword_595_3[13] ), 
            .Z(n30530));
    PFUMX mux_2835_i3 (.BLUT(ctrlword_595_6_15__N_654[3]), .ALUT(n31127), 
          .C0(n33103), .Z(\ctrlword_595_6[3] ));
    PFUMX realv_3_3__I_0_Mux_4_i15 (.BLUT(n7_adj_1535), .ALUT(n9337), .C0(n32771), 
          .Z(ctrlword_595_5_15__N_646[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 n1_bdd_3_lut_29322_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n32791), 
         .D(n32800), .Z(n32544)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_29322_3_lut_4_lut.init = 16'h6fff;
    LUT4 i18695_2_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n32912), 
         .D(\realv_5[0] ), .Z(n21709)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18695_2_lut_3_lut_4_lut.init = 16'h9060;
    LUT4 i2_3_lut_4_lut_then_3_lut (.A(n32800), .B(n384[3]), .C(n32810), 
         .Z(n33193)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i11490_3_lut_3_lut (.A(n32790), .B(n1_adj_78), .C(n2975), .Z(n14498)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i11490_3_lut_3_lut.init = 16'he4e4;
    LUT4 i11488_3_lut_3_lut (.A(n32790), .B(n9124), .C(n2973), .Z(n14496)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i11488_3_lut_3_lut.init = 16'he4e4;
    LUT4 i4727_2_lut_3_lut_3_lut_4_lut (.A(n360[1]), .B(n32922), .C(n361[1]), 
         .D(n32917), .Z(n362[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4727_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i28129_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_46), 
         .D(n4_adj_47), .Z(n31071)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28129_3_lut_4_lut.init = 16'hf960;
    LUT4 i18351_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(\realv_5[0] ), 
         .D(n32912), .Z(n9487)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18351_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i28128_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_53), 
         .D(n1_adj_1502), .Z(n31070)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28128_3_lut_4_lut.init = 16'hf960;
    LUT4 i28125_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_48), 
         .D(n1_adj_49), .Z(n31067)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28125_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), 
         .C(n32791), .D(n32800), .Z(n7_adj_1537)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut.init = 16'h966f;
    PFUMX realv_3_3__I_0_Mux_6_i15 (.BLUT(n21686), .ALUT(n8_adj_1538), .C0(n32771), 
          .Z(n30432)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i4569_1_lut (.A(\voltage_code[6] ), .Z(\adcdisplay_7__N_1[6] )) /* synthesis lut_function=(!(A)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4569_1_lut.init = 16'h5555;
    L6MUX21 mux_2835_i4 (.D0(ctrlword_595_6_15__N_662[4]), .D1(ctrlword_595_6_15__N_654[4]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_6[4] ));
    L6MUX21 mux_2835_i5 (.D0(ctrlword_595_6_15__N_662[5]), .D1(ctrlword_595_6_15__N_654[5]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_6[5] ));
    LUT4 Mux_404_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_60), 
         .D(n4_adj_1482), .Z(n6_adj_79)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_404_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i28117_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_63), 
         .D(n4_adj_64), .Z(n31059)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28117_3_lut_4_lut.init = 16'hf960;
    LUT4 i28114_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_65), 
         .D(n4_adj_66), .Z(n31056)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28114_3_lut_4_lut.init = 16'hf960;
    LUT4 i13_3_lut_4_lut_adj_296 (.A(n384[3]), .B(n32805), .C(n32800), 
         .D(n32791), .Z(n8_adj_1540)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_adj_296.init = 16'h6f60;
    LUT4 i18404_3_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n32800), 
         .D(n32791), .Z(n9316)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18404_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i28126_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_58), 
         .D(n4_adj_59), .Z(n31068)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28126_3_lut_4_lut.init = 16'hf960;
    LUT4 i4272_3_lut_rep_456_4_lut (.A(n360[1]), .B(n32922), .C(n361[1]), 
         .D(n32917), .Z(n32913)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4272_3_lut_rep_456_4_lut.init = 16'hf666;
    LUT4 i28119_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_52), 
         .D(n9188), .Z(n31061)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28119_3_lut_4_lut.init = 16'hf960;
    LUT4 voltage_code_12__bdd_4_lut_29570 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n32935)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_12__bdd_4_lut_29570.init = 16'h294a;
    LUT4 n3_bdd_2_lut_2_lut_3_lut_4_lut (.A(n384[3]), .B(n32805), .C(n8), 
         .D(n32791), .Z(n32587)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n3_bdd_2_lut_2_lut_3_lut_4_lut.init = 16'h0090;
    LUT4 i4979_2_lut_3_lut_3_lut_4_lut (.A(n368[3]), .B(n32874), .C(n369[1]), 
         .D(n369[2]), .Z(n372[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4979_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i28116_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_61), 
         .D(n1_adj_62), .Z(n31058)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28116_3_lut_4_lut.init = 16'hf960;
    LUT4 i28113_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n2_adj_67), 
         .D(n1_adj_62), .Z(n31055)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28113_3_lut_4_lut.init = 16'hf960;
    LUT4 i28123_3_lut_4_lut (.A(\voltage_code[1] ), .B(n32915), .C(n5_adj_50), 
         .D(n4_adj_51), .Z(n31065)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28123_3_lut_4_lut.init = 16'hf960;
    LUT4 i2_3_lut_3_lut_3_lut_4_lut_adj_297 (.A(n384[3]), .B(n32805), .C(n33038), 
         .D(n32800), .Z(n3_adj_80)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_3_lut_3_lut_4_lut_adj_297.init = 16'h0090;
    LUT4 i4734_3_lut_rep_442_4_lut_3_lut_4_lut (.A(n360[1]), .B(n32922), 
         .C(n361[1]), .D(n32917), .Z(n32899)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4734_3_lut_rep_442_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4712_2_lut_rep_451_4_lut_4_lut (.A(n32923), .B(voltage_code[10]), 
         .C(n361[1]), .D(n32916), .Z(n32908)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4712_2_lut_rep_451_4_lut_4_lut.init = 16'h332c;
    LUT4 i5196_3_lut_rep_449_4_lut (.A(n34295), .B(n32924), .C(n32919), 
         .D(n6685), .Z(n32906)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5196_3_lut_rep_449_4_lut.init = 16'h6966;
    LUT4 i6971_2_lut_rep_440_3_lut_3_lut_4_lut (.A(n34295), .B(n32924), 
         .C(n32919), .D(n6685), .Z(n32897)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6971_2_lut_rep_440_3_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i4311_2_lut_rep_413_3_lut (.A(n366[3]), .B(n32883), .C(n368[3]), 
         .Z(n32870)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4311_2_lut_rep_413_3_lut.init = 16'hf6f6;
    LUT4 i5308_2_lut_3_lut_3_lut_4_lut (.A(n354[1]), .B(n32928), .C(n355[1]), 
         .D(n32921), .Z(\unit[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5308_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    L6MUX21 mux_2835_i6 (.D0(n30430), .D1(n30438), .SD(\ctrlword_595_3[13] ), 
            .Z(n30528));
    FD1S1J ctrlword_595_3_15__N_614_7__I_0_i6 (.D(n32767), .CK(\ctrlword_595_3[13]__inv ), 
           .PD(n32776), .Q(\ctrlword_595_3[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i6.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_else_3_lut (.A(n32800), .B(n384[3]), .C(n32810), 
         .D(n385[2]), .Z(n33192)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_else_3_lut.init = 16'hfffe;
    LUT4 i4294_3_lut_rep_458_4_lut (.A(n354[1]), .B(n32928), .C(n355[1]), 
         .D(n32921), .Z(n32915)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4294_3_lut_rep_458_4_lut.init = 16'hf666;
    LUT4 i5724_2_lut_rep_368_3_lut_4_lut (.A(n4_adj_1491), .B(n32909), .C(n376[3]), 
         .D(n4_adj_1528), .Z(n32825)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i5724_2_lut_rep_368_3_lut_4_lut.init = 16'h78f0;
    LUT4 i5315_3_lut_rep_448_4_lut_3_lut_4_lut (.A(n354[1]), .B(n32928), 
         .C(n355[1]), .D(n32921), .Z(n32905)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5315_3_lut_rep_448_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i18135_2_lut_4_lut_4_lut_then_4_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), 
         .C(\y_cnt[1] ), .D(\y_cnt[0] ), .Z(n33156)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i18135_2_lut_4_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i4880_2_lut_rep_417_4_lut_4_lut (.A(n366[3]), .B(n32885), .C(n367[1]), 
         .D(n367[2]), .Z(n32874)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4880_2_lut_rep_417_4_lut_4_lut.init = 16'h554a;
    LUT4 i5293_2_lut_rep_454_4_lut_4_lut (.A(\voltage_code[1] ), .B(n32926), 
         .C(n355[1]), .D(n32920), .Z(n32911)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5293_2_lut_rep_454_4_lut_4_lut.init = 16'h554a;
    LUT4 i4706_3_lut_4_lut (.A(n34294), .B(n32929), .C(n360[1]), .D(realv_1_1__N_293), 
         .Z(realv_1_1__N_292)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4706_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4720_3_lut_4_lut (.A(voltage_code[11]), .B(n34294), .C(voltage_code[10]), 
         .D(n32913), .Z(n362[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4720_3_lut_4_lut.init = 16'h6966;
    LUT4 i4725_2_lut_rep_460_3_lut (.A(voltage_code[11]), .B(n34294), .C(voltage_code[10]), 
         .Z(n32917)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4725_2_lut_rep_460_3_lut.init = 16'hf6f6;
    PFUMX realv_4_3__I_0_Mux_5_i15 (.BLUT(n30272), .ALUT(n14_adj_1486), 
          .C0(n32783), .Z(ctrlword_595_6_15__N_662[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i24689_2_lut_rep_657 (.A(\realv_5[0] ), .B(\ADC_level[7] ), .Z(n33114)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i24689_2_lut_rep_657.init = 16'h6666;
    LUT4 i4312_2_lut_rep_421_3_lut_4_lut (.A(\realv_5[0] ), .B(\ADC_level[7] ), 
         .C(\voltage_code[6] ), .D(n32886), .Z(n32878)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4312_2_lut_rep_421_3_lut_4_lut.init = 16'hf9f6;
    LUT4 i5878_2_lut_rep_461_3_lut_4_lut_then_4_lut (.A(\voltage_code[5] ), 
         .B(\voltage_code[6] ), .C(n34295), .D(decade_3__N_561), .Z(n34291)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5878_2_lut_rep_461_3_lut_4_lut_then_4_lut.init = 16'h1e10;
    PFUMX realv_4_3__I_0_Mux_4_i15 (.BLUT(n7_adj_1537), .ALUT(n9316), .C0(n32783), 
          .Z(ctrlword_595_6_15__N_662[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i4684_2_lut_rep_466_4_lut (.A(voltage_code[11]), .B(n32935), .C(n360[1]), 
         .D(realv_1_1__N_293), .Z(n32923)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4684_2_lut_rep_466_4_lut.init = 16'h554a;
    LUT4 i4380_2_lut_rep_467_3_lut_4_lut (.A(\voltage_code[6] ), .B(\voltage_code[5] ), 
         .C(n4_adj_1533), .D(\ADC_level[7] ), .Z(n32924)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4380_2_lut_rep_467_3_lut_4_lut.init = 16'he000;
    LUT4 realv_3_0__bdd_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32794), .C(n3008), 
         .D(n33037), .Z(n32508)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_0__bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i4573_2_lut_rep_661 (.A(\voltage_code[6] ), .B(\voltage_code[5] ), 
         .C(\ADC_level[7] ), .Z(n33118)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4573_2_lut_rep_661.init = 16'he0e0;
    LUT4 i5878_2_lut_rep_461_3_lut_4_lut_else_4_lut_4_lut (.A(n34296), .B(n32947), 
         .C(decade_3__N_580), .D(decade_3__N_576), .Z(n34295)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5878_2_lut_rep_461_3_lut_4_lut_else_4_lut_4_lut.init = 16'h7f80;
    LUT4 i4332_2_lut_rep_464_3_lut (.A(\voltage_code[2] ), .B(n32927), .C(\voltage_code[1] ), 
         .Z(n32921)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4332_2_lut_rep_464_3_lut.init = 16'hf6f6;
    PFUMX realv_4_3__I_0_Mux_6_i15 (.BLUT(n21678), .ALUT(n8_adj_1540), .C0(n32783), 
          .Z(n30430)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=131, LSE_RLINE=131 */ ;
    LUT4 i28416_3_lut_4_lut (.A(realv_2_0__N_506), .B(n32794), .C(n5_adj_81), 
         .D(n4_adj_82), .Z(n30784)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i28416_3_lut_4_lut.init = 16'hf960;
    LUT4 i18678_2_lut_rep_313_3_lut (.A(realv_2_0__N_506), .B(n32794), .C(n32785), 
         .Z(n32770)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18678_2_lut_rep_313_3_lut.init = 16'hf6f6;
    PFUMX i30072 (.BLUT(n34295), .ALUT(n34291), .C0(\ADC_level[7] ), .Z(n32918));
    LUT4 i5188_2_lut_rep_447_4_lut_4_lut (.A(n32933), .B(n32932), .C(n354[1]), 
         .D(n6685), .Z(n32904)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5188_2_lut_rep_447_4_lut_4_lut.init = 16'h936c;
    LUT4 i4280_3_lut_rep_416_4_lut (.A(n366[1]), .B(n32881), .C(n368[1]), 
         .D(n32878), .Z(n32873)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4280_3_lut_rep_416_4_lut.init = 16'hf666;
    LUT4 i9988_2_lut_rep_412_3_lut_4_lut (.A(n366[1]), .B(n32881), .C(n368[1]), 
         .D(n32878), .Z(n32869)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9988_2_lut_rep_412_3_lut_4_lut.init = 16'hf600;
    LUT4 i18676_2_lut_3_lut_4_lut_4_lut (.A(n32801), .B(n32794), .C(realv_2_0__N_506), 
         .D(n32785), .Z(n21686)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18676_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 i1_2_lut_rep_311_2_lut_4_lut_4_lut (.A(n32804), .B(n385[2]), .C(n385[1]), 
         .D(n33132), .Z(n32768)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_311_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 realv_3_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut_4_lut (.A(n32801), 
         .B(n32794), .C(realv_2_0__N_506), .D(n32785), .Z(n7_adj_1535)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut_4_lut.init = 16'h9a7d;
    LUT4 i13_3_lut_4_lut_4_lut_adj_298 (.A(n32801), .B(n32794), .C(realv_2_0__N_506), 
         .D(n32785), .Z(n8_adj_1538)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut_adj_298.init = 16'h3ca6;
    LUT4 i18398_3_lut_3_lut_4_lut_4_lut (.A(n32801), .B(n32794), .C(realv_2_0__N_506), 
         .D(n32785), .Z(n9337)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18398_3_lut_3_lut_4_lut_4_lut.init = 16'hdbe7;
    LUT4 i4951_2_lut_rep_408_3_lut_3_lut_4_lut (.A(n366[1]), .B(n32881), 
         .C(n368[1]), .D(n32878), .Z(n32865)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4951_2_lut_rep_408_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4958_3_lut_4_lut_3_lut_4_lut (.A(n366[1]), .B(n32881), .C(n368[1]), 
         .D(n32878), .Z(n371[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4958_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2664_1_lut_rep_677 (.A(\realv_5[0] ), .Z(n33134)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i2664_1_lut_rep_677.init = 16'h5555;
    LUT4 i9675_2_lut_rep_471_4_lut (.A(decade_3__N_580), .B(n32937), .C(n354[1]), 
         .D(n32933), .Z(n32928)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9675_2_lut_rep_471_4_lut.init = 16'hf600;
    LUT4 i1_2_lut_3_lut_3_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), .C(\y_cnt[1] ), 
         .Z(n1_adj_1502)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h1010;
    LUT4 unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(\realv_5[0] ), .B(n32912), 
         .C(n32911), .Z(n7_adj_1489)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i1_2_lut_rep_556_3_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(\y_cnt[3] ), 
         .C(\y_cnt[2] ), .D(n33110), .Z(n33013)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_2_lut_rep_556_3_lut_4_lut_4_lut.init = 16'h1114;
    LUT4 i4285_3_lut_rep_470_4_lut (.A(decade_3__N_580), .B(n32937), .C(n354[1]), 
         .D(n32933), .Z(n32927)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4285_3_lut_rep_470_4_lut.init = 16'hf666;
    LUT4 i5098_3_lut_rep_462_4_lut_3_lut_4_lut (.A(decade_3__N_580), .B(n32937), 
         .C(n354[1]), .D(n32933), .Z(n32919)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5098_3_lut_rep_462_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5091_2_lut_rep_463_3_lut_3_lut_4_lut (.A(decade_3__N_580), .B(n32937), 
         .C(n354[1]), .D(n32933), .Z(n32920)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5091_2_lut_rep_463_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 unit_3__I_0_Mux_3_i15_4_lut_4_lut (.A(\realv_5[0] ), .B(n9480), 
         .C(\unit[3] ), .D(n32902), .Z(ctrlword_595_6_15__N_654[3])) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i2_3_lut_3_lut (.A(\realv_5[0] ), .B(n33065), .C(\x_cnt[0] ), 
         .Z(n29984)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 n2887_bdd_4_lut_4_lut (.A(\realv_5[0] ), .B(n33038), .C(\x_cnt[0] ), 
         .D(n33132), .Z(n32185)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam n2887_bdd_4_lut_4_lut.init = 16'h5404;
    LUT4 n30069_bdd_2_lut_3_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(\voltage_code[1] ), 
         .C(n32813), .D(n33038), .Z(n31874)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam n30069_bdd_2_lut_3_lut_4_lut_4_lut.init = 16'h4100;
    LUT4 unit_3__bdd_3_lut_29026_4_lut_4_lut (.A(\realv_5[0] ), .B(n32912), 
         .C(n32915), .D(\voltage_code[1] ), .Z(n32058)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__bdd_3_lut_29026_4_lut_4_lut.init = 16'h7ff7;
    LUT4 i1_2_lut_rep_678 (.A(\voltage_code[4] ), .B(\voltage_code[3] ), 
         .Z(n33135)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_678.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(\voltage_code[4] ), .B(\voltage_code[3] ), .C(\voltage_code[2] ), 
         .Z(n30246)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4278_3_lut_rep_426 (.A(n366[3]), .B(n32885), .C(n367[1]), .D(n367[2]), 
         .Z(n32883)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4278_3_lut_rep_426.init = 16'hffe0;
    LUT4 i4888_3_lut_4_lut (.A(n366[3]), .B(n32885), .C(n367[1]), .D(n367[2]), 
         .Z(n369[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4888_3_lut_4_lut.init = 16'h998c;
    LUT4 i4223_2_lut_rep_336_3_lut (.A(n382[3]), .B(n32811), .C(realv_2_0__N_506), 
         .Z(n32793)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4223_2_lut_rep_336_3_lut.init = 16'hf6f6;
    LUT4 i18135_2_lut_4_lut_4_lut_else_4_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), 
         .C(\y_cnt[1] ), .Z(n33155)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i18135_2_lut_4_lut_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i5076_2_lut_rep_469_4_lut_4_lut (.A(n32936), .B(\voltage_code[2] ), 
         .C(n354[1]), .D(n32932), .Z(n32926)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5076_2_lut_rep_469_4_lut_4_lut.init = 16'h332c;
    LUT4 i5612_2_lut_rep_399_4_lut_4_lut (.A(n32882), .B(n367[2]), .C(n367[1]), 
         .D(n23_adj_71), .Z(n32856)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i5612_2_lut_rep_399_4_lut_4_lut.init = 16'h6c93;
    LUT4 i4936_2_lut_rep_411_4_lut_4_lut_then_4_lut (.A(n32887), .B(n33114), 
         .C(n366[1]), .D(n366[2]), .Z(n33159)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4936_2_lut_rep_411_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i4692_3_lut_4_lut (.A(\voltage_code[12] ), .B(n34277), .C(voltage_code[11]), 
         .D(n34294), .Z(n361[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4692_3_lut_4_lut.init = 16'h6966;
    LUT4 i9987_2_lut_rep_465_3_lut_4_lut (.A(\voltage_code[12] ), .B(n34277), 
         .C(n34294), .D(voltage_code[11]), .Z(n32922)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9987_2_lut_rep_465_3_lut_4_lut.init = 16'hf060;
    LUT4 i4321_2_lut_rep_472_3_lut (.A(\voltage_code[12] ), .B(n34277), 
         .C(voltage_code[11]), .Z(n32929)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4321_2_lut_rep_472_3_lut.init = 16'hf6f6;
    LUT4 i4944_3_lut_4_lut (.A(n33114), .B(n32886), .C(\voltage_code[6] ), 
         .D(n32873), .Z(n371[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4944_3_lut_4_lut.init = 16'h6966;
    LUT4 i5084_3_lut_4_lut (.A(\voltage_code[3] ), .B(n34296), .C(\voltage_code[2] ), 
         .D(n32927), .Z(n355[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5084_3_lut_4_lut.init = 16'h6966;
    LUT4 i5089_2_lut_rep_476_3_lut (.A(\voltage_code[3] ), .B(n34296), .C(\voltage_code[2] ), 
         .Z(n32933)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5089_2_lut_rep_476_3_lut.init = 16'hf6f6;
    LUT4 i4936_2_lut_rep_411_4_lut_4_lut_else_4_lut (.A(n32887), .B(n33114), 
         .C(n366[1]), .D(n366[2]), .Z(n33158)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4936_2_lut_rep_411_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    
endmodule
//
// Verilog Description of module LCD_display
//

module LCD_display (clk_in_c, n30915, n30916, n32806, n30918, n30919, 
            y_cnt, n30924, n30925, n30933, n30934, n30942, n30943, 
            GND_net, n30951, n30952, n30964, n30965, \x_cnt[0] , 
            n30967, n30968, n33038, n32762, n33065, n32912, rst_n_in_c, 
            n32185, n32911, n710, n712, n32176, BL_LCD_c, n33077, 
            \unit[3] , \realv_5[0] , n2, n32906, n3008, n32904, 
            n32761, n2_adj_1, n32790, n30876, n32772, n32063, n31052, 
            n31053, n31055, n31056, n31058, n31059, n31061, n31062, 
            n31064, n31065, n31067, n31068, n31070, n31071, n32769, 
            n32785, n14, n32771, n33037, n2884, n2913, n32809, 
            n33013, n6, n3016, n2898, n32800, n32905, DA_LCD_c, 
            n2896, n33132, \ctrlword_595_3[13] , n2240, n3, n32773, 
            n2973, n31978, \ctrlword_595_4_15__N_622[1] , n31877, n32796, 
            n32711, n1, n32692, n32791, n1_adj_2, n2975, n2_adj_3, 
            n2991, n4, n5, n3_adj_4, n34161, n4_adj_5, n32797, 
            \realv_5[3] , n2_adj_6, n4_adj_7, n2_adj_8, n13307, n33143, 
            n4_adj_9, n5_adj_10, n33041, n2_adj_11, n4_adj_12, n5_adj_13, 
            n33061, n4_adj_14, n5_adj_15, n3003, n4_adj_16, n4_adj_17, 
            n33169, n32778, n32767, n32765, n32760, n32621, n32777, 
            n33022, n5_adj_18, n32587, n32783, n32589, n3_adj_19, 
            n4_adj_20, n29984, n32903, n5_adj_21, n32794, realv_2_0__N_506, 
            n30930, n5_adj_22, n5_adj_23, n5_adj_24, n711, n33081, 
            n107, \cnt_start[0] , n293, \cnt_write[0] , n34280, n44, 
            n33012, \cnt_read[0] , n30228, n33120, n45, n299, \cnt_stop[0] , 
            n8, n32766, n1_adj_25, n30331, n32774, \decade[3] , 
            n32898, n32768, n32508, n4_adj_26, n32897, n32061, n5_adj_27, 
            n2886, n1_adj_28, n32902, n33110, n1_adj_29, n9124, 
            n32782, n14_adj_30, n32915, \voltage_code[1] , n14_adj_31, 
            n6_adj_32, n8_adj_33, n5_adj_34, n1_adj_35, n32477, n1_adj_36, 
            n9188, n30783, n30784, n30785, n30798, n30799, n32770, 
            RST_LCD_c, CLK_LCD_c, DC_LCD_c, n4_adj_37, n33111, n5_adj_38, 
            n26595, clk_divided_enable_40, clk_divided_N_170, n1427, 
            n708, n18705, clk_divided_enable_32, n32896, n31874, n31873, 
            \ctrlword_595_4_15__N_630[5] , n32350, n2_adj_39, n2_adj_40, 
            n2_adj_41, n14496, n14498, n32376, n33074, clk_divided_enable_8, 
            \cnt_main[1] , \cnt_main[0] , n34286, n33035);
    input clk_in_c;
    input n30915;
    input n30916;
    input n32806;
    input n30918;
    input n30919;
    output [7:0]y_cnt;
    input n30924;
    input n30925;
    input n30933;
    input n30934;
    input n30942;
    input n30943;
    input GND_net;
    input n30951;
    input n30952;
    input n30964;
    input n30965;
    output \x_cnt[0] ;
    input n30967;
    input n30968;
    output n33038;
    input n32762;
    output n33065;
    input n32912;
    input rst_n_in_c;
    input n32185;
    input n32911;
    input n710;
    input n712;
    input n32176;
    output BL_LCD_c;
    output n33077;
    input \unit[3] ;
    input \realv_5[0] ;
    output n2;
    input n32906;
    output n3008;
    input n32904;
    input n32761;
    output n2_adj_1;
    input n32790;
    input n30876;
    input n32772;
    output n32063;
    input n31052;
    input n31053;
    input n31055;
    input n31056;
    input n31058;
    input n31059;
    input n31061;
    input n31062;
    input n31064;
    input n31065;
    input n31067;
    input n31068;
    input n31070;
    input n31071;
    input n32769;
    input n32785;
    output n14;
    input n32771;
    output n33037;
    output n2884;
    output n2913;
    input n32809;
    input n33013;
    input n6;
    output n3016;
    output n2898;
    input n32800;
    input n32905;
    output DA_LCD_c;
    output n2896;
    output n33132;
    input \ctrlword_595_3[13] ;
    input n2240;
    input n3;
    input n32773;
    output n2973;
    input n31978;
    input \ctrlword_595_4_15__N_622[1] ;
    input n31877;
    input n32796;
    output n32711;
    input n1;
    input n32692;
    input n32791;
    output n1_adj_2;
    output n2975;
    output n2_adj_3;
    output n2991;
    output n4;
    output n5;
    input n3_adj_4;
    output n34161;
    output n4_adj_5;
    input n32797;
    input \realv_5[3] ;
    output n2_adj_6;
    output n4_adj_7;
    output n2_adj_8;
    input n13307;
    output n33143;
    output n4_adj_9;
    output n5_adj_10;
    input n33041;
    output n2_adj_11;
    output n4_adj_12;
    output n5_adj_13;
    output n33061;
    output n4_adj_14;
    output n5_adj_15;
    output n3003;
    output n4_adj_16;
    output n4_adj_17;
    input n33169;
    input n32778;
    input n32767;
    input n32765;
    input n32760;
    input n32621;
    input n32777;
    output n33022;
    output n5_adj_18;
    input n32587;
    input n32783;
    input n32589;
    input n3_adj_19;
    output n4_adj_20;
    input n29984;
    input n32903;
    output n5_adj_21;
    input n32794;
    input realv_2_0__N_506;
    input n30930;
    output n5_adj_22;
    output n5_adj_23;
    output n5_adj_24;
    input n711;
    input n33081;
    input n107;
    input \cnt_start[0] ;
    output n293;
    input \cnt_write[0] ;
    input n34280;
    output n44;
    input n33012;
    input \cnt_read[0] ;
    output n30228;
    input n33120;
    output n45;
    input n299;
    input \cnt_stop[0] ;
    output n8;
    input n32766;
    input n1_adj_25;
    input n30331;
    input n32774;
    input \decade[3] ;
    input n32898;
    input n32768;
    input n32508;
    output n4_adj_26;
    input n32897;
    output n32061;
    output n5_adj_27;
    output n2886;
    output n1_adj_28;
    input n32902;
    output n33110;
    output n1_adj_29;
    output n9124;
    input n32782;
    output n14_adj_30;
    input n32915;
    input \voltage_code[1] ;
    output n14_adj_31;
    input n6_adj_32;
    output n8_adj_33;
    output n5_adj_34;
    input n1_adj_35;
    input n32477;
    output n1_adj_36;
    output n9188;
    input n30783;
    input n30784;
    output n30785;
    input n30798;
    input n30799;
    input n32770;
    output RST_LCD_c;
    output CLK_LCD_c;
    output DC_LCD_c;
    output n4_adj_37;
    output n33111;
    output n5_adj_38;
    input n26595;
    output clk_divided_enable_40;
    input clk_divided_N_170;
    output n1427;
    input n708;
    input n18705;
    output clk_divided_enable_32;
    input n32896;
    input n31874;
    input n31873;
    input \ctrlword_595_4_15__N_630[5] ;
    output n32350;
    output n2_adj_39;
    output n2_adj_40;
    output n2_adj_41;
    input n14496;
    input n14498;
    input n32376;
    output n33074;
    output clk_divided_enable_8;
    input \cnt_main[1] ;
    input \cnt_main[0] ;
    input n34286;
    output n33035;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[2:8])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(33[9:23])
    wire [2:0]cnt_scan;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[21:29])
    
    wire clk_in_c_enable_1, n33195, n30917, n7, clk_in_c_enable_153, 
        n30076, n7_adj_1282, n7_adj_1283;
    wire [15:0]cnt_delay;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[12:21])
    
    wire clk_in_c_enable_152, n17127;
    wire [15:0]n3996;
    wire [4:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    
    wire n33122, CLK_LCD_N_1257;
    wire [15:0]cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[32:35])
    
    wire n32981, n13915, n14107, n30657, n7_adj_1284, n27525;
    wire [15:0]n1696;
    
    wire n27526, n7_adj_1285, n7_adj_1286, n30929, n30518;
    wire [7:0]x_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    
    wire n4_c, n13031, n31081, n31082, n31084, n7_adj_1287, n34299, 
        n34303, n6_c;
    wire [15:0]cnt_init;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[36:44])
    
    wire clk_in_c_enable_39;
    wire [15:0]n22;
    
    wire n30135;
    wire [2:0]state_back;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[18:28])
    
    wire clk_in_c_enable_148, n29190, clk_in_c_enable_141, n30074, high_word, 
        high_word_N_1277, n30970, n30971, n30972, n15, n31075;
    wire [11:0]n2903;
    
    wire n30973, n30974, n30975, n30976, n30977, n30978, n30991, 
        n30992, n30993, n11895, n28974, n31965, n33178, n32172, 
        n30755, n30764;
    wire [2:0]state;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    
    wire n33088, n32987;
    wire [6:0]n5256;
    wire [8:0]n3720;
    
    wire n1_c, n30989, n30990, n30619, n30143, n27540, n13, n33043, 
        n29448, n10467;
    wire [8:0]n1978;
    
    wire n30983, n30984, n27539;
    wire [131:0]data_r;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(86[12:18])
    
    wire n31105, n30144, n30985, n30986, n33196, n33197, n2413, 
        n32960, n13883, n7_adj_1288, n32196, n32195, n32197, n9857, 
        n30987, n30988, n30979, n30980, n30981, n30982, n32968;
    wire [15:0]num_delay;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[22:31])
    
    wire n8_c, n29278, n32184, clk_in_c_enable_123, n31137, n31138, 
        n31139, n17112;
    wire [15:0]n1905;
    
    wire n29258, n31013, n31014, n31015, n33161, n31020, n31021, 
        n31022, n32943, n34278, n8_adj_1289, n30014, n27538, n32982, 
        n27537, n27536, n30042, n15_adj_1290, n21, n30318, n32179, 
        n32175, n32180, n32177, n32178, n30463, n33031, n30615, 
        n27535, n32972, n32970, n34279, n33131, n27776, clk_in_c_enable_38, 
        n33078, n30145, n34301, n32171, n32173, n31009, n31010, 
        n31011, n31012, n27560, n26444, n33151, n33152, n33153;
    wire [11:0]n2967;
    
    wire n31016, n31017, n30146, n31018, n31019, n30147, n27534, 
        n31027, n31028, n31029, n27559, n30148, n31040, n31041, 
        n31042, n30754, n9917, n33185, n33186, n32964, n33154, 
        n14239, n30278, n14028, n32961, n30359, n27558, n30149, 
        n31023, n31024, n31025, n31026, n30150, n33176, n33177, 
        n32105, n32104, n32106, n27557, n33094, n27533, n31036, 
        n31037, n27524, n31038, n31039, n30276, n31046, n31047, 
        n31048, n32945;
    wire [131:0]data_r_131__N_1113;
    
    wire n27556, n33095, n29, n4_adj_1292, n31, n32062, n7_adj_1293, 
        n27555, n27554, n27523;
    wire [8:0]data_reg;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(79[12:20])
    
    wire clk_in_c_enable_134, n17030, n2_adj_1294, n7_adj_1295, n7_adj_1296, 
        n33096, n7_adj_1297, n27553, n30550, n31960, n160, n27522, 
        n27552, n33009;
    wire [7:0]n3422;
    
    wire n7_adj_1298, n27551;
    wire [7:0]n3822;
    
    wire n13605, n7_adj_1299, n7_adj_1300, n33146, n30444, n27686, 
        clk_in_c_enable_98, n67, n33062;
    wire [11:0]n3032;
    
    wire n32448, n30050;
    wire [11:0]n3045;
    wire [2:0]cnt_main;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[12:20])
    
    wire n11, n30360, n2_adj_1301, n33133, DA_LCD_N_1254, n28009, 
        n8_adj_1302, n32603, n30946, n8_adj_1303, n30807, n30945, 
        n8_adj_1304, n32561, n30940;
    wire [11:0]n2980;
    
    wire n8_adj_1305, n32609, n30939, n32958, n31993, n31994, n8_adj_1306, 
        n30820, n30937;
    wire [11:0]n2993;
    
    wire n32567, n30936;
    wire [11:0]n3006;
    
    wire n33080, n13543, n29998, n25161, n2_adj_1307, n13774, n33030, 
        n8_adj_1308, n32510, n30931, n30155, n30334, n30617, clk_in_c_enable_124, 
        n7_adj_1310, n31103, n30303, n25040;
    wire [11:0]n3019;
    
    wire n31102;
    wire [7:0]y_cnt_c;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    
    wire n27766, n2014, n33029, n30635, n30653, n1489, n14_adj_1311, 
        n34, n13660, n33858, n1_adj_1312, n127, n32759, n30152, 
        n30167, n20323, n4_adj_1313, clk_in_c_enable_128, n5_c, n31848, 
        clk_in_c_enable_41, n31098, n30908, n31844, n30907, n11833, 
        n33097, n34282, n11829, n21858, n21726, n7_adj_1314, n13601, 
        n32956, n33017, n33121, n31076, n31077, n31078, n33005, 
        n25, n2245, n3_c, n2243, n2244, n21728, n21730, n34283, 
        n2242, n4_adj_1315, n33011, n1_adj_1316, n33099, n32999, 
        n31566, n82, n32973, n28157, n29995, n10, n14262, n30868, 
        n30087, n2246, n30867, n2247, n2241, n30866, n32377, n32378, 
        n3_adj_1318;
    wire [15:0]n1586;
    
    wire n37, n37_adj_1319, n32732, n32728, n32733, n9711, n30840, 
        n12907, n23, n27698, n25_adj_1320, n32944, n3_adj_1321, 
        n32387, n2248, n32941, n32939, n13665, n2239, n32388, 
        n31935, n31936, n13675, n37_adj_1322, n30063, n30066, clk_in_c_enable_150, 
        n32954, n30001, n30203, n32191, n32729, n32730, n30448, 
        n30006, n33138;
    wire [15:0]num_delay_15__N_1066;
    
    wire n32390, n31865, n31866, n33128, n33006, n33098, n32940, 
        n13672, n13_adj_1323, clk_in_c_enable_151, n32950, n33020, 
        n30269, n33856, n33857, n31868, n33003, n32942, n31979, 
        n14045, n13967, n31871, n31872, n33004, n33033, n88, n11_adj_1324, 
        n12, n31095, n32717, n32716, n32718, n31094, n30817, n30816, 
        n31876, n31878, n32710, n32708, n31080, n32709, n32424, 
        n30262, n32425, n32427, n34159, n33010, n33063, n33070, 
        n34158, n32707, n32706, n30804, n30803, n30802, n33008, 
        n32978, n30679, n34160, n32436, n31931, n30830, n31933, 
        n30576, n14219, n8_adj_1332, n33115, n6_adj_1333, n31880, 
        n7_adj_1334, n31093, n33034, n32979, n30536, n31881, n33023, 
        clk_in_c_enable_121, n31883, n31092, n27972, n12_adj_1337, 
        n31958, n31956, n31959, n5_adj_1338, n32693, n32690, n32694, 
        n9887, n32691, n33015, n32975, n29944, n29946, n32689, 
        n32688, n32463, n41, n1_adj_1342, n31957, n32686, n32684, 
        n32687, n32462, n32685, n30786, n32592, n30788, n32683, 
        n32682, n32465, n31955, n31954;
    wire [131:0]n3226;
    
    wire n32680, n32677, n32681, n17108;
    wire [4:0]DA_LCD_N_1249;
    
    wire n32679, n32678, n5_adj_1343, n1_adj_1344, n32466, n32676, 
        n32675, n29408, n11881, n33067, n33046, clk_in_c_enable_120, 
        n32472, n31118, n31117, n31907, n32474, n30960, n4_adj_1350, 
        n30959, n31908, n31952, n31949, n31953, n30151, n30958, 
        n73, n74, n75, n32485, n32486, n32488, n32667, n32665, 
        n32668, n31951, n31950, n9148, n32666, n32452, n32516, 
        n30950, n32664, n32663, n43, n4_adj_1353, n9, n32513, 
        n31910;
    wire [2:0]n24;
    wire [15:0]num_delay_15__N_803;
    
    wire n32514, n32515, clk_in_c_enable_70, n32661, n32659, n32662, 
        n31124, n7_adj_1355, n33026, n32948, n14443, n30108, n2380, 
        n9885, n17, n4_adj_1356, n9_adj_1357, n30879, n32660, n14497, 
        n30372, n2_adj_1358, n32658, n32657, n33139, n30312, n14_adj_1359, 
        n2_adj_1360, n14_adj_1361, n30329, n20767, n2_adj_1362, n30366, 
        n1_adj_1363, n2_adj_1364, n30534, n94, n30661, n30495, n30376, 
        n1_adj_1365, n2_adj_1366, n27673, n20322, n32556, n30375, 
        n1_adj_1367, n32557, n33127, n33126, n13738, n2_adj_1368, 
        n21755, n33130, n32559, n13851, n14495, n9845, n9851, 
        n6_adj_1369, n31948, n31947, n5_adj_1370, n9867, n30373, 
        n1_adj_1371, n15334, n9869, n30090, n9873, n32562, n15_adj_1372, 
        n14_adj_1373, n32563, n33007, n14245, n30655, n14406, n6_adj_1374, 
        n8_adj_1375, n31104, n31107, n109, n126, n32565, n9861, 
        n122, n8_adj_1376, n27862, n9863, n9865, n10870, n33040, 
        n32590, n32591, n33129, n30051, n32598, n32597, n32600, 
        n32601, n14134, n32605, n32962, n32607, n31934, n2412, 
        n2411, n9922, n32971, n108, n31079, n31879, n30837, n63, 
        n32608, n32606, n30896, n30897, n13048, n14261, n125, 
        n21767, n33064, n14_adj_1377, n31083, n31085, n9920, n37_adj_1378, 
        n2414, n104, n21759, n30130, n14205, n14_adj_1379, n10_adj_1380, 
        n13968, n33100, n33002, n1_adj_1381, n24694, n3994, n30030, 
        n44_c, n30509, n30374, n6_adj_1382, n25094, n16, n12_adj_1383, 
        n1_adj_1384, n30268, n30894, n30895, n30927, n30928, n4_adj_1385, 
        n30009, n9_adj_1386, n14_adj_1387, n10_adj_1388, n32604, n20, 
        n30838, n30839, n30890, n30891, n32602, n32599, n30507, 
        n30113, n33042, n14440, n11_adj_1389, n4_adj_1390, n27806, 
        n32471, n32864, n31108, n31101, n9_adj_1392, n32588, n37_adj_1393, 
        n29991, n30088, clk_in_c_enable_131, n32566, n32564, n30282, 
        n41_adj_1394, n33107, n33055, n9140, n14231, n32974, n32966, 
        n30675, n13_adj_1395, n34_adj_1396, n32758, n32560, n32558, 
        n30888, n30889, n30892, n30893, n14442, n30821, n30343, 
        n30371, n31122, n33016, n4_adj_1399, n20137, n30351, n30938, 
        n30932, n30886, n30887, n33079, n8_adj_1400, n8_adj_1401, 
        n17095;
    wire [7:0]n2021;
    
    wire n8_adj_1402, n8_adj_1403, n8_adj_1404, n29985, n8_adj_1405, 
        n30048, n21071, n33068, n32107, n33101, n27902, n32957, 
        n32734, n30233, n33050, n27550, n30258, n13747, n27549, 
        n30039, n30091, n27532, n33, n30878, n27531, n14252, n31852, 
        n30881, n30882, n32375, n31074, n32507, n30947, n30941, 
        n33060, n31842, n30023, n31073, n33045, n30677, n32965, 
        n31911, n31909, n31912, n14097, n21116, n33000, n32511, 
        n32438, n2834, n30277, n30166, n14189, n30501, n30649, 
        n10872, n32490, n27530, n27521, n27, n30963, n8_adj_1414, 
        n7_adj_1415, n32509, n32468, n8_adj_1416, n8_adj_1418, n8_adj_1419, 
        n32103, n10189, n14_adj_1421, n33039, n14_adj_1422, n8_adj_1423, 
        n33001, n8_adj_1424, n8_adj_1425, n31885, n8_adj_1426, n31870, 
        n32977, n32476, n8_adj_1427, n33142, n32429, n8_adj_1429, 
        n30865, n30957, n8_adj_1430, n7_adj_1431, n8_adj_1432, n30801, 
        n32392, n31096, n31097, n31099, n32755, n8_adj_1433, n31121, 
        n8_adj_1434, n8_adj_1435, n8_adj_1436, n9733, n8_adj_1437, 
        n31843, n30961, n30962, n2_adj_1439, n2_adj_1440, n2_adj_1441, 
        n2_adj_1443, n33140, n4_adj_1445, n32489, n32487, n8_adj_1447, 
        n30796, n31119, n31120, n33124, n8_adj_1450, n30871, n30795, 
        n8_adj_1452, n30793, n32946, n9967, n33082, n30884, n30885, 
        n8_adj_1453, n30792, n30911, n30790, n33123, n30789, n33136, 
        n8_adj_1454, n10157, n10116, n9171, n27548, n11_adj_1455, 
        n32475, n32473, n3_adj_1456, n25090, n1_adj_1457, n9157, 
        n31115, n31116, n27547, n9179, n27529, n9123, n9131, n9139, 
        n9147, n31123, n31106, n33144, n32467, n32464, n30814, 
        n30905, n4_adj_1458, n13_adj_1459, n30368, n30581, n9132, 
        n9180, n32976, n4_adj_1461, n14027, n30794, n30791, n1_adj_1462, 
        n30800, n30797, n27546, n5_adj_1463, n30191, n30192, n27528, 
        n27545, n31884, n31882, n4_adj_1464, n30637, n30805, n30806, 
        n32451, n27527, n32449, n32450, n30818, n30819, n95, n18, 
        n6645, n19, clk_in_c_enable_102, n38, n38_adj_1465, n30024, 
        n6647, n6629, n32174, n30827, n30834, n30833, clk_in_c_enable_127, 
        n32437, clk_in_c_enable_99, n29132, clk_in_c_enable_100;
    wire [2:0]n26;
    
    wire n30062, n30140, n30141, n30832, n30142, n30831, clk_in_c_enable_122, 
        n32428, n32426, n30826, n30825, n30075, n21_adj_1467, n30815, 
        n30824, n31851, n27544, n30828, n30829, n31875, n4_adj_1470, 
        n4_adj_1471, n27543, n30835, n30836, n30869, n30870, n31869, 
        n31867, n27542, n27541, n32391, n32389, clk_in_c_enable_125, 
        n85, n6_adj_1472, n30909, n30910, n33859, n17159, n30000, 
        n30004, n30906, n35, n70, n31853, n30671, n33137, n7_adj_1476, 
        n6_adj_1477, n30399, n33162, n13671, n38_adj_1478, n27_adj_1479;
    
    FD1P3AX cnt_scan__i2 (.D(n33195), .SP(clk_in_c_enable_1), .CK(clk_in_c), 
            .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i2.GSR = "DISABLED";
    PFUMX i27975 (.BLUT(n30915), .ALUT(n30916), .C0(n32806), .Z(n30917));
    PFUMX i27978 (.BLUT(n30918), .ALUT(n30919), .C0(n32806), .Z(n7));
    FD1P3AX y_cnt__i0 (.D(n30076), .SP(clk_in_c_enable_153), .CK(clk_in_c), 
            .Q(y_cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i0.GSR = "DISABLED";
    PFUMX i27984 (.BLUT(n30924), .ALUT(n30925), .C0(n32806), .Z(n7_adj_1282));
    PFUMX i27993 (.BLUT(n30933), .ALUT(n30934), .C0(n32806), .Z(n7_adj_1283));
    FD1P3IX cnt_delay__i14 (.D(n3996[14]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i14.GSR = "DISABLED";
    LUT4 i18482_3_lut (.A(cnt_write[0]), .B(n33122), .C(cnt_write[4]), 
         .Z(CLK_LCD_N_1257)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(585[6] 609[28])
    defparam i18482_3_lut.init = 16'h1414;
    LUT4 i27720_3_lut_4_lut (.A(cnt[2]), .B(n32981), .C(n13915), .D(n14107), 
         .Z(n30657)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(170[16:18])
    defparam i27720_3_lut_4_lut.init = 16'he000;
    PFUMX i28002 (.BLUT(n30942), .ALUT(n30943), .C0(n32806), .Z(n7_adj_1284));
    CCU2D add_187_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27525), 
          .COUT(n27526), .S0(n1696[9]), .S1(n1696[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_11.INIT0 = 16'h5aaa;
    defparam add_187_11.INIT1 = 16'h5aaa;
    defparam add_187_11.INJECT1_0 = "NO";
    defparam add_187_11.INJECT1_1 = "NO";
    PFUMX i28011 (.BLUT(n30951), .ALUT(n30952), .C0(n32806), .Z(n7_adj_1285));
    PFUMX i28024 (.BLUT(n30964), .ALUT(n30965), .C0(n32806), .Z(n7_adj_1286));
    LUT4 Mux_349_i124_4_lut (.A(n30929), .B(n30518), .C(x_cnt[3]), .D(n4_c), 
         .Z(n13031)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i124_4_lut.init = 16'h3a0a;
    PFUMX i28142 (.BLUT(n31081), .ALUT(n31082), .C0(\x_cnt[0] ), .Z(n31084));
    PFUMX i28027 (.BLUT(n30967), .ALUT(n30968), .C0(n32806), .Z(n7_adj_1287));
    FD1P3IX cnt_delay__i13 (.D(n3996[13]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i13.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(n34299), .B(n34303), .Z(n6_c)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.init = 16'h2222;
    FD1P3AX cnt_init__i0 (.D(n22[0]), .SP(clk_in_c_enable_39), .CK(clk_in_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i0.GSR = "DISABLED";
    FD1P3AX cnt_delay__i0 (.D(n30135), .SP(clk_in_c_enable_152), .CK(clk_in_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i0.GSR = "DISABLED";
    FD1P3AX state_back__i0 (.D(n29190), .SP(clk_in_c_enable_148), .CK(clk_in_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state_back__i0.GSR = "DISABLED";
    FD1P3AX x_cnt__i0 (.D(n30074), .SP(clk_in_c_enable_141), .CK(clk_in_c), 
            .Q(\x_cnt[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i0.GSR = "DISABLED";
    FD1P3AX high_word_544 (.D(high_word_N_1277), .SP(clk_in_c_enable_141), 
            .CK(clk_in_c), .Q(high_word)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam high_word_544.GSR = "DISABLED";
    L6MUX21 i28030 (.D0(n30970), .D1(n30971), .SD(x_cnt[5]), .Z(n30972));
    PFUMX i28028 (.BLUT(n15), .ALUT(n31075), .C0(x_cnt[4]), .Z(n30970));
    LUT4 i6878_4_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n2903[8])) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i6878_4_lut_4_lut_4_lut.init = 16'h181a;
    L6MUX21 i28033 (.D0(n30973), .D1(n30974), .SD(x_cnt[2]), .Z(n30975));
    PFUMX i28036 (.BLUT(n30976), .ALUT(n30977), .C0(x_cnt[3]), .Z(n30978));
    LUT4 i1_4_lut (.A(n33038), .B(n32762), .C(n33065), .D(\x_cnt[0] ), 
         .Z(n4_c)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut.init = 16'h3022;
    L6MUX21 i28051 (.D0(n30991), .D1(n30992), .SD(x_cnt[2]), .Z(n30993));
    PFUMX i28031 (.BLUT(n11895), .ALUT(n28974), .C0(x_cnt[1]), .Z(n30973));
    LUT4 n31965_bdd_3_lut_29636 (.A(n31965), .B(n33178), .C(n32912), .Z(n32172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31965_bdd_3_lut_29636.init = 16'hcaca;
    LUT4 i28685_4_lut (.A(x_cnt[6]), .B(x_cnt[5]), .C(x_cnt[4]), .D(n30755), 
         .Z(n30764)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i28685_4_lut.init = 16'h7f77;
    LUT4 i1_2_lut_rep_631 (.A(state[2]), .B(rst_n_in_c), .Z(n33088)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_631.init = 16'h4444;
    LUT4 mux_454_Mux_5_i1_4_lut_4_lut (.A(n32987), .B(n5256[4]), .C(cnt_scan[0]), 
         .D(n3720[5]), .Z(n1_c)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_5_i1_4_lut_4_lut.init = 16'hf404;
    L6MUX21 i28050 (.D0(n30989), .D1(n30990), .SD(x_cnt[1]), .Z(n30992));
    LUT4 i1_2_lut_adj_55 (.A(n1696[7]), .B(n30619), .Z(n30143)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_55.init = 16'h2222;
    CCU2D add_475_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27540), .S0(n3996[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_17.INIT0 = 16'h5aaa;
    defparam add_475_17.INIT1 = 16'h0000;
    defparam add_475_17.INJECT1_0 = "NO";
    defparam add_475_17.INJECT1_1 = "NO";
    LUT4 i28_4_lut_4_lut (.A(n32987), .B(n13), .C(cnt_scan[0]), .D(n33043), 
         .Z(n29448)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i28_4_lut_4_lut.init = 16'hf404;
    LUT4 i1_4_lut_4_lut (.A(n32987), .B(cnt[3]), .C(cnt[1]), .D(n10467), 
         .Z(n1978[3])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h5140;
    PFUMX i28047 (.BLUT(n30983), .ALUT(n30984), .C0(\x_cnt[0] ), .Z(n30989));
    CCU2D add_475_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27539), .COUT(n27540), .S0(n3996[13]), 
          .S1(n3996[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_15.INIT0 = 16'h5aaa;
    defparam add_475_15.INIT1 = 16'h5aaa;
    defparam add_475_15.INJECT1_0 = "NO";
    defparam add_475_15.INJECT1_1 = "NO";
    LUT4 i28163_3_lut (.A(data_r[118]), .B(data_r[119]), .C(\x_cnt[0] ), 
         .Z(n31105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28163_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_56 (.A(n1696[8]), .B(n30619), .Z(n30144)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_56.init = 16'h2222;
    LUT4 i27813_2_lut (.A(x_cnt[3]), .B(x_cnt[2]), .Z(n30755)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i27813_2_lut.init = 16'h2222;
    PFUMX i28048 (.BLUT(n30985), .ALUT(n30986), .C0(\x_cnt[0] ), .Z(n30990));
    PFUMX i29526 (.BLUT(n33196), .ALUT(n33197), .C0(n34303), .Z(n2413));
    LUT4 i1_2_lut_3_lut (.A(cnt[4]), .B(n32960), .C(n13883), .Z(n7_adj_1288)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(194[16:18])
    defparam i1_2_lut_3_lut.init = 16'hf1f1;
    PFUMX i29097 (.BLUT(n32196), .ALUT(n32195), .C0(x_cnt[1]), .Z(n32197));
    LUT4 i7088_2_lut (.A(\x_cnt[0] ), .B(x_cnt[1]), .Z(n9857)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7088_2_lut.init = 16'heeee;
    L6MUX21 i28049 (.D0(n30987), .D1(n30988), .SD(x_cnt[1]), .Z(n30991));
    FD1P3IX cnt_delay__i12 (.D(n3996[12]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i12.GSR = "DISABLED";
    PFUMX i28045 (.BLUT(n30979), .ALUT(n30980), .C0(\x_cnt[0] ), .Z(n30987));
    PFUMX i28046 (.BLUT(n30981), .ALUT(n30982), .C0(\x_cnt[0] ), .Z(n30988));
    LUT4 i1_3_lut_3_lut_4_lut (.A(cnt_init[0]), .B(n32968), .C(num_delay[7]), 
         .D(n8_c), .Z(n29278)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf222;
    PFUMX i29092 (.BLUT(n32185), .ALUT(n32184), .C0(n32911), .Z(n31965));
    FD1P3IX cnt_delay__i11 (.D(n3996[11]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i11.GSR = "DISABLED";
    FD1P3IX cnt_delay__i10 (.D(n3996[10]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i10.GSR = "DISABLED";
    FD1P3IX cnt_delay__i9 (.D(n3996[9]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i9.GSR = "DISABLED";
    FD1P3IX cnt_delay__i8 (.D(n3996[8]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay__i7 (.D(n3996[7]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i7.GSR = "DISABLED";
    FD1P3IX cnt_delay__i6 (.D(n3996[6]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i6.GSR = "DISABLED";
    FD1P3IX cnt_delay__i5 (.D(n3996[5]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay__i4 (.D(n3996[4]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay__i3 (.D(n3996[3]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i3.GSR = "DISABLED";
    LUT4 i28729_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), .D(state[1]), 
         .Z(clk_in_c_enable_123)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i28729_4_lut.init = 16'hf577;
    FD1P3IX cnt_delay__i2 (.D(n3996[2]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i2.GSR = "DISABLED";
    PFUMX i28197 (.BLUT(n31137), .ALUT(n31138), .C0(x_cnt[1]), .Z(n31139));
    FD1P3IX cnt_delay__i1 (.D(n3996[1]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i1.GSR = "DISABLED";
    FD1P3IX cnt_init__i15 (.D(n1905[15]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i15.GSR = "DISABLED";
    FD1P3IX cnt_init__i14 (.D(n1905[14]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i14.GSR = "DISABLED";
    FD1P3IX cnt_init__i13 (.D(n1905[13]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i13.GSR = "DISABLED";
    FD1P3IX cnt_init__i12 (.D(n1905[12]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i12.GSR = "DISABLED";
    FD1P3IX cnt_init__i11 (.D(n1905[11]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i11.GSR = "DISABLED";
    FD1P3IX cnt_init__i10 (.D(n1905[10]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i10.GSR = "DISABLED";
    FD1P3IX cnt_init__i9 (.D(n1905[9]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i9.GSR = "DISABLED";
    FD1P3IX cnt_init__i8 (.D(n1905[8]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i8.GSR = "DISABLED";
    FD1P3IX cnt_init__i7 (.D(n1905[7]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i7.GSR = "DISABLED";
    FD1P3IX cnt_init__i6 (.D(n1905[6]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i6.GSR = "DISABLED";
    FD1P3IX cnt_init__i5 (.D(n1905[5]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i5.GSR = "DISABLED";
    LUT4 i1_3_lut_3_lut_4_lut_adj_57 (.A(cnt_init[0]), .B(n32968), .C(num_delay[11]), 
         .D(n8_c), .Z(n29258)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_3_lut_4_lut_adj_57.init = 16'hf222;
    FD1P3IX cnt_init__i4 (.D(n1905[4]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i4.GSR = "DISABLED";
    FD1P3IX cnt_init__i3 (.D(n1905[3]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i3.GSR = "DISABLED";
    L6MUX21 i28073 (.D0(n31013), .D1(n31014), .SD(x_cnt[1]), .Z(n31015));
    LUT4 i2_4_lut_4_lut_else_4_lut (.A(rst_n_in_c), .B(n710), .C(n712), 
         .Z(n33161)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i2_4_lut_4_lut_else_4_lut.init = 16'hfdfd;
    L6MUX21 i28080 (.D0(n31020), .D1(n31021), .SD(x_cnt[1]), .Z(n31022));
    FD1P3AX y_cnt__i0_rep_709 (.D(n30076), .SP(clk_in_c_enable_153), .CK(clk_in_c), 
            .Q(n34303)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i0_rep_709.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_58 (.A(n32943), .B(n34278), .C(num_delay[4]), 
         .D(n8_adj_1289), .Z(n30014)) /* synthesis lut_function=((B (C+(D))+!B (D))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_58.init = 16'hffd5;
    CCU2D add_475_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27538), .COUT(n27539), .S0(n3996[11]), 
          .S1(n3996[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_13.INIT0 = 16'h5aaa;
    defparam add_475_13.INIT1 = 16'h5aaa;
    defparam add_475_13.INJECT1_0 = "NO";
    defparam add_475_13.INJECT1_1 = "NO";
    LUT4 i29243_i15_4_lut (.A(n30993), .B(n30975), .C(x_cnt[3]), .D(n32982), 
         .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29243_i15_4_lut.init = 16'hcac0;
    CCU2D add_475_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27537), .COUT(n27538), .S0(n3996[9]), .S1(n3996[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_11.INIT0 = 16'h5aaa;
    defparam add_475_11.INIT1 = 16'h5aaa;
    defparam add_475_11.INJECT1_0 = "NO";
    defparam add_475_11.INJECT1_1 = "NO";
    CCU2D add_475_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27536), .COUT(n27537), .S0(n3996[7]), .S1(n3996[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_9.INIT0 = 16'h5aaa;
    defparam add_475_9.INIT1 = 16'h5aaa;
    defparam add_475_9.INJECT1_0 = "NO";
    defparam add_475_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_59 (.A(n30042), .B(n15_adj_1290), .C(cnt[2]), .D(n21), 
         .Z(n30318)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_59.init = 16'hfddd;
    PFUMX i29090 (.BLUT(n32179), .ALUT(n32175), .C0(\x_cnt[0] ), .Z(n32180));
    PFUMX i29088 (.BLUT(n32177), .ALUT(n32176), .C0(x_cnt[1]), .Z(n32178));
    LUT4 i1_4_lut_adj_60 (.A(n30463), .B(cnt[4]), .C(n33031), .D(n30615), 
         .Z(n21)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_60.init = 16'h05cd;
    CCU2D add_475_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27535), .COUT(n27536), .S0(n3996[5]), .S1(n3996[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_7.INIT0 = 16'h5aaa;
    defparam add_475_7.INIT1 = 16'h5aaa;
    defparam add_475_7.INJECT1_0 = "NO";
    defparam add_475_7.INJECT1_1 = "NO";
    FD1P3IX cnt_init__i2 (.D(n1905[2]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i2.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut (.A(n32972), .B(n32970), .C(n34279), .D(n33131), 
         .Z(n27776)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    FD1P3AX BL_LCD_545 (.D(n33078), .SP(clk_in_c_enable_38), .CK(clk_in_c), 
            .Q(BL_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam BL_LCD_545.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_61 (.A(n1696[9]), .B(n30619), .Z(n30145)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_61.init = 16'h2222;
    LUT4 i18694_2_lut_rep_620_3_lut (.A(y_cnt[2]), .B(n34301), .C(n34303), 
         .Z(n33077)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i18694_2_lut_rep_620_3_lut.init = 16'h0202;
    PFUMX i29085 (.BLUT(n32172), .ALUT(n32171), .C0(\unit[3] ), .Z(n32173));
    PFUMX i28071 (.BLUT(n31009), .ALUT(n31010), .C0(\x_cnt[0] ), .Z(n31013));
    PFUMX i28072 (.BLUT(n31011), .ALUT(n31012), .C0(\x_cnt[0] ), .Z(n31014));
    CCU2D add_3075_17 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[15]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27560), 
          .S0(n1905[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_17.INIT0 = 16'hfb00;
    defparam add_3075_17.INIT1 = 16'h0000;
    defparam add_3075_17.INJECT1_0 = "NO";
    defparam add_3075_17.INJECT1_1 = "NO";
    PFUMX i29499 (.BLUT(n33151), .ALUT(n33152), .C0(cnt[3]), .Z(n33153));
    LUT4 Mux_411_i2_3_lut (.A(n2903[3]), .B(n2967[2]), .C(\realv_5[0] ), 
         .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i2_3_lut.init = 16'hcaca;
    PFUMX i28078 (.BLUT(n31016), .ALUT(n31017), .C0(\x_cnt[0] ), .Z(n31020));
    LUT4 i1_2_lut_adj_62 (.A(n1696[10]), .B(n30619), .Z(n30146)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_62.init = 16'h2222;
    PFUMX i28079 (.BLUT(n31018), .ALUT(n31019), .C0(\x_cnt[0] ), .Z(n31021));
    LUT4 i1_2_lut_adj_63 (.A(n1696[11]), .B(n30619), .Z(n30147)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_63.init = 16'h2222;
    CCU2D add_475_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27534), .COUT(n27535), .S0(n3996[3]), .S1(n3996[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_5.INIT0 = 16'h5aaa;
    defparam add_475_5.INIT1 = 16'h5aaa;
    defparam add_475_5.INJECT1_0 = "NO";
    defparam add_475_5.INJECT1_1 = "NO";
    L6MUX21 i28087 (.D0(n31027), .D1(n31028), .SD(n32906), .Z(n31029));
    CCU2D add_3075_15 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[13]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[14]), 
          .CIN(n27559), .COUT(n27560), .S0(n1905[13]), .S1(n1905[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_15.INIT0 = 16'hfb00;
    defparam add_3075_15.INIT1 = 16'hfb00;
    defparam add_3075_15.INJECT1_0 = "NO";
    defparam add_3075_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_64 (.A(n1696[12]), .B(n30619), .Z(n30148)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_64.init = 16'h2222;
    L6MUX21 i28100 (.D0(n31040), .D1(n31041), .SD(n32906), .Z(n31042));
    LUT4 i27812_1_lut (.A(x_cnt[3]), .Z(n30754)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i27812_1_lut.init = 16'h5555;
    LUT4 mux_377_Mux_10_i15_3_lut_3_lut (.A(n34301), .B(n34299), .C(y_cnt[3]), 
         .Z(n3008)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam mux_377_Mux_10_i15_3_lut_3_lut.init = 16'h3838;
    LUT4 i7119_2_lut (.A(\x_cnt[0] ), .B(n2413), .Z(n9917)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7119_2_lut.init = 16'h8888;
    PFUMX i29519 (.BLUT(n33185), .ALUT(n33186), .C0(state[2]), .Z(n17127));
    LUT4 n32964_bdd_3_lut (.A(n32964), .B(cnt[0]), .C(cnt[1]), .Z(n33154)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n32964_bdd_3_lut.init = 16'h0808;
    LUT4 i1_4_lut_adj_65 (.A(n14239), .B(n30278), .C(n14028), .D(n32961), 
         .Z(n30359)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_65.init = 16'hbbbf;
    CCU2D add_3075_13 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[11]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[12]), 
          .CIN(n27558), .COUT(n27559), .S0(n1905[11]), .S1(n1905[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_13.INIT0 = 16'hfb00;
    defparam add_3075_13.INIT1 = 16'hfb00;
    defparam add_3075_13.INJECT1_0 = "NO";
    defparam add_3075_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_66 (.A(n1696[13]), .B(n30619), .Z(n30149)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_66.init = 16'h2222;
    PFUMX i28085 (.BLUT(n31023), .ALUT(n31024), .C0(n32904), .Z(n31027));
    PFUMX i28086 (.BLUT(n31025), .ALUT(n31026), .C0(n32904), .Z(n31028));
    LUT4 i1_2_lut_adj_67 (.A(n1696[14]), .B(n30619), .Z(n30150)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_67.init = 16'h2222;
    PFUMX i29514 (.BLUT(n33176), .ALUT(n33177), .C0(\x_cnt[0] ), .Z(n33178));
    PFUMX i29050 (.BLUT(n32105), .ALUT(n32104), .C0(\x_cnt[0] ), .Z(n32106));
    CCU2D add_3075_11 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[9]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[10]), 
          .CIN(n27557), .COUT(n27558), .S0(n1905[9]), .S1(n1905[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_11.INIT0 = 16'hfb00;
    defparam add_3075_11.INIT1 = 16'hfb00;
    defparam add_3075_11.INJECT1_0 = "NO";
    defparam add_3075_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_637 (.A(cnt[5]), .B(cnt[4]), .Z(n33094)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_637.init = 16'h8888;
    CCU2D add_475_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27533), .COUT(n27534), .S0(n3996[1]), .S1(n3996[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_3.INIT0 = 16'h5aaa;
    defparam add_475_3.INIT1 = 16'h5aaa;
    defparam add_475_3.INJECT1_0 = "NO";
    defparam add_475_3.INJECT1_1 = "NO";
    PFUMX i28098 (.BLUT(n31036), .ALUT(n31037), .C0(n32904), .Z(n31040));
    CCU2D add_187_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27524), 
          .COUT(n27525), .S0(n1696[7]), .S1(n1696[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_9.INIT0 = 16'h5aaa;
    defparam add_187_9.INIT1 = 16'h5aaa;
    defparam add_187_9.INJECT1_0 = "NO";
    defparam add_187_9.INJECT1_1 = "NO";
    PFUMX i28099 (.BLUT(n31038), .ALUT(n31039), .C0(n32904), .Z(n31041));
    LUT4 i1_2_lut_3_lut_adj_68 (.A(cnt[5]), .B(cnt[4]), .C(cnt[2]), .Z(n30276)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_68.init = 16'hf7f7;
    PFUMX i28106 (.BLUT(n31046), .ALUT(n31047), .C0(n32904), .Z(n31048));
    LUT4 i1_2_lut_4_lut (.A(n32761), .B(n2_adj_1), .C(n32790), .D(n32945), 
         .Z(data_r_131__N_1113[112])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    CCU2D add_3075_9 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[7]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[8]), 
          .CIN(n27556), .COUT(n27557), .S0(n1905[7]), .S1(n1905[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_9.INIT0 = 16'hfb00;
    defparam add_3075_9.INIT1 = 16'hfb00;
    defparam add_3075_9.INJECT1_0 = "NO";
    defparam add_3075_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_638 (.A(cnt[4]), .B(cnt[5]), .Z(n33095)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_638.init = 16'hdddd;
    PFUMX i37 (.BLUT(n29), .ALUT(n4_adj_1292), .C0(state[0]), .Z(n31));
    PFUMX i29029 (.BLUT(n32062), .ALUT(n30876), .C0(n32772), .Z(n32063));
    PFUMX i28112 (.BLUT(n31052), .ALUT(n31053), .C0(n32912), .Z(n7_adj_1293));
    CCU2D add_3075_7 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[5]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[6]), 
          .CIN(n27555), .COUT(n27556), .S0(n1905[5]), .S1(n1905[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_7.INIT0 = 16'hfb00;
    defparam add_3075_7.INIT1 = 16'hfb00;
    defparam add_3075_7.INJECT1_0 = "NO";
    defparam add_3075_7.INJECT1_1 = "NO";
    FD1P3IX cnt_init__i1 (.D(n1905[1]), .SP(clk_in_c_enable_39), .CD(n17112), 
            .CK(clk_in_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i1.GSR = "DISABLED";
    CCU2D add_3075_5 (.A0(n33131), .B0(cnt_init[0]), .C0(n26444), .D0(cnt_init[3]), 
          .A1(n33131), .B1(cnt_init[0]), .C1(n26444), .D1(cnt_init[4]), 
          .CIN(n27554), .COUT(n27555), .S0(n1905[3]), .S1(n1905[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_5.INIT0 = 16'hfb00;
    defparam add_3075_5.INIT1 = 16'hfb00;
    defparam add_3075_5.INJECT1_0 = "NO";
    defparam add_3075_5.INJECT1_1 = "NO";
    CCU2D add_187_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27523), 
          .COUT(n27524), .S0(n1696[5]), .S1(n1696[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_7.INIT0 = 16'h5aaa;
    defparam add_187_7.INIT1 = 16'h5aaa;
    defparam add_187_7.INJECT1_0 = "NO";
    defparam add_187_7.INJECT1_1 = "NO";
    FD1P3IX data_reg_i0_i4 (.D(n2_adj_1294), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i4.GSR = "DISABLED";
    PFUMX i28115 (.BLUT(n31055), .ALUT(n31056), .C0(n32912), .Z(n7_adj_1295));
    PFUMX i28118 (.BLUT(n31058), .ALUT(n31059), .C0(n32912), .Z(n7_adj_1296));
    LUT4 i1_2_lut_rep_639 (.A(cnt[3]), .B(cnt[1]), .Z(n33096)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i1_2_lut_rep_639.init = 16'heeee;
    PFUMX i28121 (.BLUT(n31061), .ALUT(n31062), .C0(n32912), .Z(n7_adj_1297));
    CCU2D add_3075_3 (.A0(cnt_init[2]), .B0(n26444), .C0(cnt_init[0]), 
          .D0(cnt_init[1]), .A1(cnt_init[1]), .B1(cnt_init[0]), .C1(n26444), 
          .D1(cnt_init[2]), .CIN(n27553), .COUT(n27554), .S0(n1905[1]), 
          .S1(n1905[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_3.INIT0 = 16'hff00;
    defparam add_3075_3.INIT1 = 16'hfb00;
    defparam add_3075_3.INJECT1_0 = "NO";
    defparam add_3075_3.INJECT1_1 = "NO";
    CCU2D add_3075_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n30550), .B1(n31960), .C1(cnt_init[0]), .D1(n160), .COUT(n27553), 
          .S1(n1905[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3075_1.INIT0 = 16'hF000;
    defparam add_3075_1.INIT1 = 16'hd222;
    defparam add_3075_1.INJECT1_0 = "NO";
    defparam add_3075_1.INJECT1_1 = "NO";
    CCU2D add_187_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27522), 
          .COUT(n27523), .S0(n1696[3]), .S1(n1696[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_5.INIT0 = 16'h5aaa;
    defparam add_187_5.INIT1 = 16'h5aaa;
    defparam add_187_5.INJECT1_0 = "NO";
    defparam add_187_5.INJECT1_1 = "NO";
    CCU2D add_1768_9 (.A0(n33043), .B0(high_word), .C0(x_cnt[7]), .D0(n33009), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27552), 
          .S0(n3422[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1768_9.INIT0 = 16'hddd2;
    defparam add_1768_9.INIT1 = 16'h0000;
    defparam add_1768_9.INJECT1_0 = "NO";
    defparam add_1768_9.INJECT1_1 = "NO";
    PFUMX i28124 (.BLUT(n31064), .ALUT(n31065), .C0(n32912), .Z(n7_adj_1298));
    CCU2D add_1768_7 (.A0(n3822[0]), .B0(n13605), .C0(\x_cnt[0] ), .D0(x_cnt[5]), 
          .A1(n3822[0]), .B1(n13605), .C1(\x_cnt[0] ), .D1(x_cnt[6]), 
          .CIN(n27551), .COUT(n27552), .S0(n3422[5]), .S1(n3422[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1768_7.INIT0 = 16'h56aa;
    defparam add_1768_7.INIT1 = 16'h56aa;
    defparam add_1768_7.INJECT1_0 = "NO";
    defparam add_1768_7.INJECT1_1 = "NO";
    PFUMX i28127 (.BLUT(n31067), .ALUT(n31068), .C0(n32912), .Z(n7_adj_1299));
    PFUMX i28130 (.BLUT(n31070), .ALUT(n31071), .C0(n32912), .Z(n7_adj_1300));
    LUT4 i27522_2_lut_4_lut (.A(n32987), .B(n33043), .C(cnt_scan[0]), 
         .D(n33146), .Z(n30444)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B (D)+!B (C+(D)))) */ ;
    defparam i27522_2_lut_4_lut.init = 16'hff3a;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(n27686), .Z(clk_in_c_enable_98)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_69.init = 16'h8f9f;
    LUT4 i120_4_lut_4_lut (.A(cnt[2]), .B(cnt[6]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n67)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B+!(C (D))))) */ ;
    defparam i120_4_lut_4_lut.init = 16'h3002;
    LUT4 n21631_bdd_4_lut_29313_4_lut (.A(n32769), .B(n33062), .C(n3032[1]), 
         .D(n32785), .Z(n32448)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n21631_bdd_4_lut_29313_4_lut.init = 16'h4450;
    LUT4 i1_4_lut_4_lut_adj_70 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .D(n32964), 
         .Z(n30050)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+(C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_adj_70.init = 16'h8100;
    LUT4 mux_2839_i5_3_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n5256[4])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !(C+(D)))) */ ;
    defparam mux_2839_i5_3_lut_4_lut_4_lut.init = 16'he4e1;
    LUT4 i18628_4_lut_4_lut (.A(n32769), .B(n32785), .C(n3045[9]), .D(n2967[2]), 
         .Z(n14)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i18628_4_lut_4_lut.init = 16'h5140;
    LUT4 i25_4_lut_4_lut_4_lut (.A(state[0]), .B(cnt_main[1]), .C(state[2]), 
         .D(state_back[1]), .Z(n11)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i25_4_lut_4_lut_4_lut.init = 16'ha202;
    PFUMX mux_492_Mux_8_i2 (.BLUT(n30360), .ALUT(n29448), .C0(state[0]), 
          .Z(n2_adj_1301)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i28649_4_lut (.A(n33133), .B(state[1]), .C(cnt_write[0]), .D(DA_LCD_N_1254), 
         .Z(n28009)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i28649_4_lut.init = 16'h0002;
    LUT4 i28004_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1302), 
         .D(n32603), .Z(n30946)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i28004_4_lut_4_lut.init = 16'h7340;
    LUT4 i28003_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1303), 
         .D(n30807), .Z(n30945)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i28003_4_lut_4_lut.init = 16'h7340;
    LUT4 i27998_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1304), 
         .D(n32561), .Z(n30940)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i27998_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_375_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n2980[7])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h01a4;
    LUT4 mux_375_Mux_5_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n2980[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0192;
    LUT4 mux_375_Mux_10_i15_3_lut_rep_580_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n33037)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_10_i15_3_lut_rep_580_4_lut_4_lut.init = 16'h01c0;
    LUT4 mux_358_Mux_3_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n2903[3])) /* synthesis lut_function=(!(A (D)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_358_Mux_3_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h04fe;
    LUT4 mux_356_Mux_5_i15_3_lut_4_lut_4_lut_4_lut (.A(n34303), .B(n34299), 
         .C(n34301), .D(y_cnt[3]), .Z(n2884)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_356_Mux_5_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h0402;
    LUT4 i27997_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1305), 
         .D(n32609), .Z(n30939)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i27997_4_lut_4_lut.init = 16'h7340;
    PFUMX i28995 (.BLUT(n32958), .ALUT(n31993), .C0(cnt[2]), .Z(n31994));
    LUT4 i27995_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1306), 
         .D(n30820), .Z(n30937)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i27995_4_lut_4_lut.init = 16'h7340;
    LUT4 i21_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(n34299), .C(n34301), 
         .D(y_cnt[3]), .Z(n2993[8])) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i21_3_lut_4_lut_4_lut.init = 16'h043e;
    LUT4 i27994_4_lut_4_lut (.A(n32769), .B(n32771), .C(n3032[7]), .D(n32567), 
         .Z(n30936)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i27994_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_358_Mux_2_i15_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(n34301), .D(y_cnt[3]), .Z(n2913)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B (C (D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_358_Mux_2_i15_4_lut_4_lut_4_lut.init = 16'h047c;
    LUT4 mux_377_Mux_5_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n3006[5])) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_377_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0452;
    LUT4 i1_4_lut_adj_71 (.A(n33043), .B(clk_in_c_enable_1), .C(n33080), 
         .D(n13543), .Z(clk_in_c_enable_153)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_71.init = 16'hc4c0;
    LUT4 mux_377_Mux_6_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n3006[6])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_377_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h0470;
    PFUMX mux_485_Mux_3_i2 (.BLUT(n29998), .ALUT(n25161), .C0(state[0]), 
          .Z(n2_adj_1307)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i1_2_lut_rep_573_3_lut (.A(cnt[3]), .B(cnt[1]), .C(n13774), .Z(n33030)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i1_2_lut_rep_573_3_lut.init = 16'hfefe;
    LUT4 i27989_4_lut_4_lut (.A(n32769), .B(n32771), .C(n8_adj_1308), 
         .D(n32510), .Z(n30931)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i27989_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_4_lut_adj_72 (.A(n30155), .B(clk_in_c_enable_1), .C(n30334), 
         .D(n30617), .Z(clk_in_c_enable_124)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_72.init = 16'hc0c8;
    LUT4 mux_377_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n3006[7])) /* synthesis lut_function=(!(A ((D)+!C)+!A ((C (D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_377_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h04e4;
    LUT4 Mux_321_i7_3_lut_4_lut (.A(n32809), .B(n33013), .C(n32806), .D(n6), 
         .Z(n7_adj_1310)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_321_i7_3_lut_4_lut.init = 16'hf404;
    LUT4 i28161_3_lut (.A(data_r[114]), .B(data_r[115]), .C(\x_cnt[0] ), 
         .Z(n31103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28161_3_lut.init = 16'hcaca;
    PFUMX i22185 (.BLUT(n27776), .ALUT(n30303), .C0(state[0]), .Z(n25040));
    LUT4 mux_358_Mux_6_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(n34299), 
         .C(n34301), .D(y_cnt[3]), .Z(n2903[6])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_358_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h1602;
    LUT4 mux_358_Mux_5_i15_4_lut_4_lut_4_lut (.A(n34303), .B(n34299), .C(n34301), 
         .D(y_cnt[3]), .Z(n2903[5])) /* synthesis lut_function=(!(A (B+(C))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_358_Mux_5_i15_4_lut_4_lut_4_lut.init = 16'h0702;
    LUT4 mux_380_Mux_5_i15_3_lut_4_lut_4_lut (.A(n34303), .B(n34301), .C(n34299), 
         .D(y_cnt[3]), .Z(n3045[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_380_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 mux_358_Mux_7_i15_3_lut_4_lut_4_lut (.A(n34303), .B(n34301), .C(n34299), 
         .D(y_cnt[3]), .Z(n2903[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_358_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h1c06;
    LUT4 mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3019[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1f06;
    LUT4 i28160_3_lut (.A(data_r[112]), .B(data_r[113]), .C(\x_cnt[0] ), 
         .Z(n31102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28160_3_lut.init = 16'hcaca;
    LUT4 mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), 
         .C(y_cnt[0]), .D(y_cnt[3]), .Z(n3016)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+!(D)))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h5780;
    LUT4 i1_4_lut_adj_73 (.A(y_cnt_c[7]), .B(y_cnt_c[6]), .C(n27766), 
         .D(y_cnt_c[5]), .Z(n2014)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    defparam i1_4_lut_adj_73.init = 16'ha888;
    LUT4 mux_377_Mux_8_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[8])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_377_Mux_8_i15_3_lut_4_lut_4_lut.init = 16'h18f0;
    LUT4 i27700_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[1]), 
         .D(n33029), .Z(n30635)) /* synthesis lut_function=(A+(B (C+(D))+!B (D))) */ ;
    defparam i27700_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hffea;
    LUT4 i121_3_lut_4_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[3]), .D(cnt[5]), 
         .Z(n30653)) /* synthesis lut_function=(A+(B (C+(D))+!B !(D))) */ ;
    defparam i121_3_lut_4_lut_4_lut.init = 16'heefb;
    LUT4 i40_3_lut_4_lut_4_lut_4_lut (.A(n1489), .B(n14_adj_1311), .C(state[2]), 
         .D(n13774), .Z(n34)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A ((C)+!B)) */ ;
    defparam i40_3_lut_4_lut_4_lut_4_lut.init = 16'hf1d1;
    LUT4 n33021_bdd_3_lut_4_lut (.A(n1489), .B(n14_adj_1311), .C(cnt_init[0]), 
         .D(n13660), .Z(n33858)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n33021_bdd_3_lut_4_lut.init = 16'h0100;
    LUT4 Mux_304_i1_3_lut (.A(n2884), .B(n2898), .C(n32800), .Z(n1_adj_1312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_adj_74 (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(state[0]), .Z(clk_in_c_enable_1)) /* synthesis lut_function=(A+!(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_74.init = 16'hafbf;
    LUT4 i17925_2_lut_rep_302_3_lut (.A(n127), .B(x_cnt[7]), .C(high_word), 
         .Z(n32759)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(428[10] 441[17])
    defparam i17925_2_lut_rep_302_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_adj_75 (.A(n1696[0]), .B(n30619), .Z(n30152)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_75.init = 16'h2222;
    LUT4 i28615_4_lut (.A(rst_n_in_c), .B(n30167), .C(n20323), .D(n4_adj_1313), 
         .Z(clk_in_c_enable_128)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;
    defparam i28615_4_lut.init = 16'h575f;
    LUT4 n3_bdd_4_lut (.A(n5_c), .B(n32905), .C(n32904), .D(n33037), 
         .Z(n31848)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam n3_bdd_4_lut.init = 16'ha3a0;
    FD1P3AX DA_LCD_554 (.D(n31098), .SP(clk_in_c_enable_41), .CK(clk_in_c), 
            .Q(DA_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam DA_LCD_554.GSR = "DISABLED";
    LUT4 i27539_2_lut_3_lut_4_lut (.A(cnt[3]), .B(cnt[1]), .C(cnt[5]), 
         .D(cnt[4]), .Z(n30463)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i27539_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i27966_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n32800), .Z(n30908)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27966_3_lut.init = 16'hcaca;
    LUT4 n2896_bdd_4_lut_29359 (.A(n2896), .B(n32905), .C(n32904), .D(n33132), 
         .Z(n31844)) /* synthesis lut_function=(A (B (C (D))+!B (C+(D)))+!A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam n2896_bdd_4_lut_29359.init = 16'he320;
    LUT4 i27965_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n32800), .Z(n30907)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27965_3_lut.init = 16'hcaca;
    LUT4 i13702_4_lut_4_lut_4_lut_rep_694 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_39)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (D)+!B (C (D)))) */ ;
    defparam i13702_4_lut_4_lut_4_lut_rep_694.init = 16'h8bff;
    LUT4 i8999_3_lut (.A(data_r[100]), .B(data_r[101]), .C(\x_cnt[0] ), 
         .Z(n11833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8999_3_lut.init = 16'hcaca;
    LUT4 i14095_2_lut_3_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(rst_n_in_c), .Z(n17112)) /* synthesis lut_function=(A (B+!(D))+!A !(B (D)+!B (C (D)))) */ ;
    defparam i14095_2_lut_3_lut_4_lut_4_lut.init = 16'h89ff;
    LUT4 i1_2_lut_rep_640 (.A(cnt[5]), .B(cnt[4]), .Z(n33097)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_640.init = 16'hdddd;
    LUT4 i1_2_lut_rep_695 (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .Z(n34282)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_695.init = 16'h2020;
    LUT4 i8995_3_lut (.A(data_r[98]), .B(data_r[99]), .C(\x_cnt[0] ), 
         .Z(n11829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i8995_3_lut.init = 16'hcaca;
    LUT4 i18710_2_lut (.A(data_r[89]), .B(n21858), .Z(n21726)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18710_2_lut.init = 16'h8888;
    LUT4 n33072_bdd_2_lut_4_lut (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(cnt_scan[2]), .Z(n33195)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam n33072_bdd_2_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_rep_499 (.A(n7_adj_1314), .B(n13601), .Z(n32956)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_499.init = 16'heeee;
    LUT4 i18823_4_lut (.A(n13601), .B(n7_adj_1314), .C(n33017), .D(\ctrlword_595_3[13] ), 
         .Z(n21858)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18823_4_lut.init = 16'hfaee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n7_adj_1314), .B(n13601), .C(n33121), 
         .D(data_r[34]), .Z(data_r_131__N_1113[34])) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0e00;
    PFUMX i28136 (.BLUT(n31076), .ALUT(n31077), .C0(x_cnt[3]), .Z(n31078));
    LUT4 i1_2_lut_3_lut_4_lut_adj_76 (.A(n7_adj_1314), .B(n13601), .C(n33121), 
         .D(data_r[47]), .Z(data_r_131__N_1113[47])) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_76.init = 16'h0e00;
    LUT4 i1_4_lut_3_lut (.A(cnt[5]), .B(cnt[4]), .C(n33005), .Z(n25)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(181[16:18])
    defparam i1_4_lut_3_lut.init = 16'h0606;
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(n7_adj_1314), .B(n13601), .C(n2245), 
         .D(n33121), .Z(data_r_131__N_1113[95])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_78 (.A(n7_adj_1314), .B(n13601), .C(n3_c), 
         .D(n33121), .Z(data_r_131__N_1113[119])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_78.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_79 (.A(n7_adj_1314), .B(n13601), .C(n2243), 
         .D(n33121), .Z(data_r_131__N_1113[97])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_79.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_80 (.A(n7_adj_1314), .B(n13601), .C(n2244), 
         .D(n33121), .Z(data_r_131__N_1113[96])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_80.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_81 (.A(n7_adj_1314), .B(n13601), .C(n33121), 
         .D(data_r[104]), .Z(data_r_131__N_1113[104])) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_81.init = 16'h0e00;
    LUT4 i18711_2_lut (.A(data_r[76]), .B(n21858), .Z(n21728)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18711_2_lut.init = 16'h8888;
    LUT4 i18712_2_lut (.A(data_r[75]), .B(n21858), .Z(n21730)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18712_2_lut.init = 16'h8888;
    LUT4 mux_374_Mux_6_i7_3_lut_rep_696 (.A(n34303), .B(n34301), .C(n34299), 
         .Z(n34283)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_374_Mux_6_i7_3_lut_rep_696.init = 16'hc6c6;
    LUT4 i1_2_lut_3_lut_4_lut_adj_82 (.A(n7_adj_1314), .B(n13601), .C(n2242), 
         .D(n33121), .Z(data_r_131__N_1113[98])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_82.init = 16'h00e0;
    LUT4 i18638_2_lut_4_lut (.A(n32759), .B(n4_adj_1315), .C(\ctrlword_595_3[13] ), 
         .D(n33011), .Z(n1_adj_1316)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18638_2_lut_4_lut.init = 16'hca00;
    LUT4 mux_380_Mux_3_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(n34299), .D(y_cnt[3]), .Z(n3045[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_380_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h03c6;
    LUT4 i1_2_lut_rep_542_3_lut_4_lut (.A(cnt[5]), .B(cnt[4]), .C(n33099), 
         .D(n13774), .Z(n32999)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_542_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_4_lut_adj_83 (.A(cnt[5]), .B(cnt[4]), .C(n33153), .D(n31566), 
         .Z(n82)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A ((D)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(181[16:18])
    defparam i1_4_lut_4_lut_adj_83.init = 16'h20ec;
    LUT4 i4_4_lut (.A(n32973), .B(n14107), .C(n28157), .D(n29995), .Z(n10)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_adj_84 (.A(n33097), .B(data_reg[3]), .C(n14262), .D(n1489), 
         .Z(n29995)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_84.init = 16'hcd05;
    LUT4 i27926_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n32800), .Z(n30868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27926_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(n7_adj_1314), .B(n13601), .C(n30087), 
         .D(n33121), .Z(data_r_131__N_1113[102])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(n7_adj_1314), .B(n13601), .C(n2246), 
         .D(n33121), .Z(data_r_131__N_1113[94])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h00e0;
    LUT4 i27925_3_lut (.A(n2898), .B(n2993[3]), .C(n32800), .Z(n30867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27925_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_87 (.A(n7_adj_1314), .B(n13601), .C(n2247), 
         .D(n33121), .Z(data_r_131__N_1113[93])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_87.init = 16'h00e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(n7_adj_1314), .B(n13601), .C(n2241), 
         .D(n33121), .Z(data_r_131__N_1113[99])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'h00e0;
    LUT4 i27924_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n32800), .Z(n30866)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27924_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n7_adj_1314), .B(n13601), .C(n2240), 
         .D(n33121), .Z(data_r_131__N_1113[100])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h00e0;
    LUT4 n3_bdd_3_lut_29223 (.A(n3), .B(n32377), .C(n32772), .Z(n32378)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut_29223.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_90 (.A(n7_adj_1314), .B(n13601), .C(n3_adj_1318), 
         .D(n33121), .Z(data_r_131__N_1113[118])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_90.init = 16'h00e0;
    LUT4 i1_4_lut_adj_91 (.A(n1586[15]), .B(num_delay[15]), .C(n13660), 
         .D(n33131), .Z(n37)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_91.init = 16'heca0;
    LUT4 i1_4_lut_adj_92 (.A(n1586[14]), .B(num_delay[14]), .C(n13660), 
         .D(n33131), .Z(n37_adj_1319)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_92.init = 16'heca0;
    PFUMX i29488 (.BLUT(n32732), .ALUT(n32728), .C0(state[2]), .Z(n32733));
    LUT4 i6961_3_lut (.A(data_r[96]), .B(data_r[97]), .C(\x_cnt[0] ), 
         .Z(n9711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i6961_3_lut.init = 16'hcaca;
    LUT4 i10009_2_lut_3_lut (.A(n7_adj_1314), .B(n13601), .C(n30840), 
         .Z(n12907)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i10009_2_lut_3_lut.init = 16'he0e0;
    PFUMX i29243_i25 (.BLUT(n23), .ALUT(n27698), .C0(x_cnt[1]), .Z(n25_adj_1320));
    LUT4 i1_2_lut_rep_487_3_lut (.A(n7_adj_1314), .B(n13601), .C(data_r[104]), 
         .Z(n32944)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_rep_487_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_93 (.A(n7_adj_1314), .B(n13601), .C(n3_adj_1321), 
         .D(n33121), .Z(data_r_131__N_1113[113])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_93.init = 16'h00e0;
    LUT4 realv_2_2__bdd_3_lut_29205 (.A(n32773), .B(n3006[7]), .C(n3019[7]), 
         .Z(n32387)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29205.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(n7_adj_1314), .B(n13601), .C(n2248), 
         .D(n33121), .Z(data_r_131__N_1113[92])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'h00e0;
    LUT4 i1_4_lut_adj_95 (.A(n32941), .B(n13660), .C(num_delay[9]), .D(n32939), 
         .Z(n13665)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_95.init = 16'hc044;
    LUT4 i1_2_lut_3_lut_4_lut_adj_96 (.A(n7_adj_1314), .B(n13601), .C(n2239), 
         .D(n33121), .Z(data_r_131__N_1113[101])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_96.init = 16'h00e0;
    LUT4 realv_2_2__bdd_3_lut_29231 (.A(n32773), .B(n2903[7]), .C(n2973), 
         .Z(n32388)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29231.init = 16'he4e4;
    LUT4 n330_bdd_2_lut_28957_3_lut (.A(n7_adj_1314), .B(n13601), .C(n31935), 
         .Z(n31936)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n330_bdd_2_lut_28957_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_97 (.A(n32941), .B(n13660), .C(num_delay[8]), .D(n32939), 
         .Z(n13675)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_97.init = 16'hc044;
    LUT4 i1_4_lut_adj_98 (.A(n1586[6]), .B(num_delay[6]), .C(n13660), 
         .D(n33131), .Z(n37_adj_1322)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_98.init = 16'heca0;
    LUT4 i28724_4_lut (.A(state[0]), .B(clk_in_c_enable_1), .C(n30063), 
         .D(n30066), .Z(clk_in_c_enable_150)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;
    defparam i28724_4_lut.init = 16'h444c;
    LUT4 i1_4_lut_adj_99 (.A(state[1]), .B(n33088), .C(n32954), .D(n33146), 
         .Z(n30066)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_99.init = 16'h8880;
    LUT4 i28707_3_lut (.A(clk_in_c_enable_1), .B(rst_n_in_c), .C(n30001), 
         .Z(n30203)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i28707_3_lut.init = 16'h0202;
    PFUMX i29486 (.BLUT(n32191), .ALUT(n32729), .C0(state[0]), .Z(n32730));
    LUT4 i1_4_lut_adj_100 (.A(state[0]), .B(n30448), .C(n30063), .D(rst_n_in_c), 
         .Z(n30001)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam i1_4_lut_adj_100.init = 16'ha2a0;
    LUT4 i1_4_lut_adj_101 (.A(n30006), .B(n33138), .C(n33011), .D(state[0]), 
         .Z(num_delay_15__N_1066[5])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_101.init = 16'hc088;
    LUT4 n9132_bdd_3_lut_29235 (.A(n32773), .B(n2980[7]), .C(n2993[5]), 
         .Z(n32390)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9132_bdd_3_lut_29235.init = 16'he4e4;
    LUT4 decade_2__bdd_3_lut_28894 (.A(n32905), .B(n3006[6]), .C(n3045[3]), 
         .Z(n31865)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28894.init = 16'he4e4;
    LUT4 i1_4_lut_adj_102 (.A(n30014), .B(n33138), .C(n33011), .D(state[0]), 
         .Z(num_delay_15__N_1066[4])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_102.init = 16'hc088;
    LUT4 decade_2__bdd_3_lut_28907 (.A(n32905), .B(n2903[6]), .C(n2973), 
         .Z(n31866)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28907.init = 16'he4e4;
    LUT4 i17923_2_lut_rep_483_3_lut_4_lut (.A(n33128), .B(n33006), .C(n1489), 
         .D(n33098), .Z(n32940)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(200[16:18])
    defparam i17923_2_lut_rep_483_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_4_lut_adj_103 (.A(n32941), .B(n13660), .C(num_delay[4]), .D(n32939), 
         .Z(n13672)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_103.init = 16'hc044;
    LUT4 i28705_3_lut (.A(state[0]), .B(clk_in_c_enable_1), .C(n13_adj_1323), 
         .Z(clk_in_c_enable_151)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i28705_3_lut.init = 16'h4c4c;
    LUT4 i1_4_lut_adj_104 (.A(rst_n_in_c), .B(n32950), .C(n30448), .D(n33078), 
         .Z(n13_adj_1323)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hce0a;
    LUT4 i2_3_lut_4_lut_adj_105 (.A(cnt[1]), .B(n33020), .C(cnt[0]), .D(cnt[2]), 
         .Z(n30269)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(229[16:17])
    defparam i2_3_lut_4_lut_adj_105.init = 16'hfdff;
    LUT4 n26444_bdd_4_lut_30012 (.A(cnt_init[2]), .B(n13660), .C(cnt_init[1]), 
         .D(cnt_init[0]), .Z(n33856)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(D)) */ ;
    defparam n26444_bdd_4_lut_30012.init = 16'haafd;
    LUT4 n33856_bdd_2_lut (.A(n33856), .B(n26444), .Z(n33857)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n33856_bdd_2_lut.init = 16'heeee;
    LUT4 n9180_bdd_3_lut_28911 (.A(n32905), .B(n2980[6]), .C(n2993[5]), 
         .Z(n31868)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9180_bdd_3_lut_28911.init = 16'he4e4;
    LUT4 i1_2_lut_rep_485_4_lut (.A(n14028), .B(cnt[5]), .C(n33003), .D(cnt[4]), 
         .Z(n32942)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_rep_485_4_lut.init = 16'hfffb;
    PFUMX i28988 (.BLUT(n31978), .ALUT(n2903[8]), .C0(\ctrlword_595_4_15__N_622[1] ), 
          .Z(n31979));
    LUT4 i1_2_lut_4_lut_adj_106 (.A(cnt[6]), .B(n33006), .C(cnt[0]), .D(n33128), 
         .Z(n14045)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_4_lut_adj_106.init = 16'hffdf;
    LUT4 i2_3_lut_4_lut_adj_107 (.A(n33006), .B(n13967), .C(cnt[2]), .D(cnt[1]), 
         .Z(n14107)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(202[16:18])
    defparam i2_3_lut_4_lut_adj_107.init = 16'hefff;
    LUT4 n330_bdd_2_lut_28927 (.A(n31871), .B(x_cnt[1]), .Z(n31872)) /* synthesis lut_function=(A (B)) */ ;
    defparam n330_bdd_2_lut_28927.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(n14028), .B(n33004), .C(n33033), .D(n67), 
         .Z(n88)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(179[16:18])
    defparam i1_3_lut_4_lut.init = 16'h1f11;
    PFUMX i28032 (.BLUT(n11_adj_1324), .ALUT(n12), .C0(x_cnt[1]), .Z(n30974));
    LUT4 i28153_3_lut (.A(data_reg[1]), .B(data_reg[0]), .C(cnt_write[1]), 
         .Z(n31095)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28153_3_lut.init = 16'hcaca;
    PFUMX i29476 (.BLUT(n32717), .ALUT(n32716), .C0(state[0]), .Z(n32718));
    LUT4 i28152_3_lut (.A(data_reg[3]), .B(data_reg[2]), .C(cnt_write[1]), 
         .Z(n31094)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28152_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_511 (.A(n26444), .B(cnt_init[2]), .Z(n32968)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_511.init = 16'heeee;
    LUT4 i1_2_lut_rep_486_3_lut (.A(n26444), .B(cnt_init[2]), .C(cnt_init[0]), 
         .Z(n32943)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_486_3_lut.init = 16'hefef;
    LUT4 i27875_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n32785), .Z(n30817)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27875_3_lut.init = 16'hcaca;
    LUT4 i27874_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n32785), .Z(n30816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27874_3_lut.init = 16'hcaca;
    LUT4 n31877_bdd_3_lut (.A(n31877), .B(n31876), .C(x_cnt[1]), .Z(n31878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n31877_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_513 (.A(cnt_init[0]), .B(n26444), .Z(n32970)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_513.init = 16'heeee;
    L6MUX21 i29472 (.D0(n32710), .D1(n32708), .SD(n32796), .Z(n32711));
    LUT4 i28138_3_lut (.A(n1), .B(n2903[4]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n31080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28138_3_lut.init = 16'hcaca;
    PFUMX i29470 (.BLUT(n32692), .ALUT(n32709), .C0(n32791), .Z(n32710));
    LUT4 Mux_410_i1_3_lut (.A(n2884), .B(n2898), .C(\realv_5[0] ), .Z(n1_adj_2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i1_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i2_3_lut (.A(n2903[4]), .B(n2975), .C(\realv_5[0] ), 
         .Z(n2_adj_3)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i2_3_lut.init = 16'hcaca;
    LUT4 realv_2_2__bdd_3_lut_29232 (.A(n32773), .B(n3006[6]), .C(n3045[3]), 
         .Z(n32424)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29232.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_adj_108 (.A(cnt_init[0]), .B(n26444), .C(cnt_init[1]), 
         .Z(n30262)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_108.init = 16'hfefe;
    LUT4 realv_2_2__bdd_3_lut_29264 (.A(n32773), .B(n2903[6]), .C(n2973), 
         .Z(n32425)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29264.init = 16'he4e4;
    LUT4 n9132_bdd_3_lut (.A(n32773), .B(n2980[6]), .C(n2993[5]), .Z(n32427)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9132_bdd_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_109 (.A(cnt_init[0]), .B(n26444), .C(n33131), 
         .D(n32972), .Z(n29)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_109.init = 16'h0100;
    LUT4 n32800_bdd_4_lut (.A(n32796), .B(n2991), .C(y_cnt[3]), .D(y_cnt[2]), 
         .Z(n34159)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B))) */ ;
    defparam n32800_bdd_4_lut.init = 16'h44e4;
    LUT4 i27619_4_lut_4_lut (.A(cnt_init[0]), .B(n26444), .C(n33010), 
         .D(n33131), .Z(n30550)) /* synthesis lut_function=(A (B+(D))+!A (B+(C+(D)))) */ ;
    defparam i27619_4_lut_4_lut.init = 16'hffdc;
    LUT4 n32800_bdd_4_lut_29997 (.A(n32796), .B(n33063), .C(n33070), .D(y_cnt[3]), 
         .Z(n34158)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+!(D)))) */ ;
    defparam n32800_bdd_4_lut_29997.init = 16'h11a0;
    PFUMX i29468 (.BLUT(n32707), .ALUT(n32706), .C0(n32791), .Z(n32708));
    LUT4 Mux_410_i4_3_lut (.A(n2898), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i4_3_lut.init = 16'hcaca;
    LUT4 i27862_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n32785), .Z(n30804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27862_3_lut.init = 16'hcaca;
    LUT4 i27861_3_lut (.A(n2898), .B(n2993[3]), .C(n32785), .Z(n30803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27861_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i5_3_lut (.A(n3032[7]), .B(n3019[4]), .C(\realv_5[0] ), 
         .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i5_3_lut.init = 16'hcaca;
    LUT4 i27860_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n32785), .Z(n30802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27860_3_lut.init = 16'hcaca;
    LUT4 i27741_3_lut_4_lut (.A(n33008), .B(n33097), .C(n32978), .D(n30657), 
         .Z(n30679)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(169[16:18])
    defparam i27741_3_lut_4_lut.init = 16'he000;
    LUT4 n3_bdd_3_lut (.A(n3_adj_4), .B(n34160), .C(n32791), .Z(n34161)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut.init = 16'hcaca;
    LUT4 n2_bdd_3_lut_29243 (.A(data_r[47]), .B(\x_cnt[0] ), .C(x_cnt[2]), 
         .Z(n32436)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam n2_bdd_3_lut_29243.init = 16'h8080;
    LUT4 Mux_278_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(n32785), .Z(n4_adj_5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_278_i4_3_lut.init = 16'hcaca;
    LUT4 n30830_bdd_3_lut_28951_4_lut (.A(n31931), .B(n33065), .C(x_cnt[2]), 
         .D(n30830), .Z(n31933)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n30830_bdd_3_lut_28951_4_lut.init = 16'h8f80;
    LUT4 i1_2_lut_4_lut_adj_110 (.A(n30576), .B(n33003), .C(cnt[5]), .D(n14219), 
         .Z(n8_adj_1332)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(164[16:18])
    defparam i1_2_lut_4_lut_adj_110.init = 16'hfd00;
    LUT4 i1_3_lut_4_lut_adj_111 (.A(n33115), .B(n30615), .C(n1489), .D(data_reg[7]), 
         .Z(n6_adj_1333)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;
    defparam i1_3_lut_4_lut_adj_111.init = 16'hf222;
    LUT4 decade_2__bdd_3_lut_28908 (.A(n32905), .B(n3006[7]), .C(n3019[7]), 
         .Z(n31880)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28908.init = 16'he4e4;
    LUT4 mux_379_Mux_4_i7_3_lut (.A(n34303), .B(n34301), .C(n34299), .Z(n7_adj_1334)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_379_Mux_4_i7_3_lut.init = 16'hc2c2;
    LUT4 i28151_3_lut (.A(data_reg[5]), .B(data_reg[4]), .C(cnt_write[1]), 
         .Z(n31093)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28151_3_lut.init = 16'hcaca;
    LUT4 i28710_2_lut_3_lut_3_lut_4_lut (.A(n33006), .B(n33034), .C(n32978), 
         .D(n32979), .Z(n30536)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(224[16:17])
    defparam i28710_2_lut_3_lut_3_lut_4_lut.init = 16'h1fff;
    LUT4 decade_2__bdd_3_lut_28929 (.A(n32905), .B(n2903[7]), .C(n2973), 
         .Z(n31881)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28929.init = 16'he4e4;
    LUT4 n14001_bdd_4_lut (.A(n33023), .B(cnt_write[0]), .C(n33122), .D(cnt_write[4]), 
         .Z(clk_in_c_enable_121)) /* synthesis lut_function=(!(A+(B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam n14001_bdd_4_lut.init = 16'h0554;
    LUT4 i1_2_lut_adj_112 (.A(state[0]), .B(cnt_scan[1]), .Z(n30155)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut_adj_112.init = 16'h2222;
    LUT4 n9180_bdd_3_lut (.A(n32905), .B(n2980[7]), .C(n2993[5]), .Z(n31883)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9180_bdd_3_lut.init = 16'he4e4;
    LUT4 i28150_3_lut (.A(data_reg[7]), .B(data_reg[6]), .C(cnt_write[1]), 
         .Z(n31092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28150_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut_adj_113 (.A(n32797), .B(\realv_5[3] ), .C(\x_cnt[0] ), 
         .D(\realv_5[0] ), .Z(n27972)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i4_4_lut_adj_113.init = 16'hfffe;
    LUT4 i1_2_lut_rep_641 (.A(cnt[6]), .B(cnt[0]), .Z(n33098)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i1_2_lut_rep_641.init = 16'heeee;
    LUT4 Mux_409_i2_3_lut (.A(n2903[5]), .B(n2975), .C(\realv_5[0] ), 
         .Z(n2_adj_6)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_409_i4_3_lut (.A(n2980[5]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i4_3_lut.init = 16'hcaca;
    LUT4 i6_4_lut (.A(x_cnt[5]), .B(n12_adj_1337), .C(x_cnt[4]), .D(x_cnt[1]), 
         .Z(n13605)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(x_cnt[2]), .B(x_cnt[7]), .C(x_cnt[3]), .D(x_cnt[6]), 
         .Z(n12_adj_1337)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i5_4_lut.init = 16'hfffe;
    L6MUX21 i28977 (.D0(n31958), .D1(n31956), .SD(n32904), .Z(n31959));
    LUT4 i1_4_lut_adj_114 (.A(data_r[110]), .B(x_cnt[1]), .C(data_r[111]), 
         .D(\x_cnt[0] ), .Z(n5_adj_1338)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_114.init = 16'hc088;
    L6MUX21 i29457 (.D0(n32693), .D1(n32690), .SD(n32791), .Z(n32694));
    LUT4 Mux_408_i2_3_lut (.A(n2903[6]), .B(n2973), .C(\realv_5[0] ), 
         .Z(n2_adj_8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i72_4_lut (.A(n33065), .B(data_r[75]), .C(\x_cnt[0] ), 
         .D(n13307), .Z(n9887)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i72_4_lut.init = 16'hc0ca;
    PFUMX i29455 (.BLUT(n32692), .ALUT(n32691), .C0(n32796), .Z(n32693));
    LUT4 mux_374_Mux_6_i15_3_lut (.A(n34283), .B(n33143), .C(y_cnt[3]), 
         .Z(n2973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(477[41:46])
    defparam mux_374_Mux_6_i15_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_4_lut_adj_115 (.A(n33095), .B(n33015), .C(n32975), .D(n29944), 
         .Z(n29946)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(152[16:18])
    defparam i2_3_lut_4_lut_adj_115.init = 16'he000;
    LUT4 Mux_408_i4_3_lut (.A(n2980[6]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i4_3_lut.init = 16'hcaca;
    PFUMX i29451 (.BLUT(n32689), .ALUT(n32688), .C0(n32796), .Z(n32690));
    LUT4 realv_2_2__bdd_3_lut_29268 (.A(n32773), .B(n2975), .C(n2903[4]), 
         .Z(n32463)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_29268.init = 16'hd8d8;
    LUT4 i27752_3_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n41)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i27752_3_lut_4_lut.init = 16'h0111;
    LUT4 Mux_408_i5_3_lut (.A(n3006[6]), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_10)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i5_3_lut.init = 16'hcaca;
    PFUMX i28975 (.BLUT(n1_adj_1342), .ALUT(n31957), .C0(n32906), .Z(n31958));
    L6MUX21 i29448 (.D0(n32686), .D1(n32684), .SD(n32796), .Z(n32687));
    LUT4 realv_2_2__bdd_3_lut_29265 (.A(n32773), .B(n3032[7]), .C(n3019[4]), 
         .Z(n32462)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29265.init = 16'he4e4;
    PFUMX i29446 (.BLUT(n1_adj_1312), .ALUT(n32685), .C0(n32791), .Z(n32686));
    LUT4 i28431_3_lut (.A(n30786), .B(n32592), .C(\x_cnt[0] ), .Z(n30788)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28431_3_lut.init = 16'hcaca;
    PFUMX i29444 (.BLUT(n32683), .ALUT(n32682), .C0(n32791), .Z(n32684));
    LUT4 realv_2_2__bdd_3_lut_29269 (.A(n32773), .B(n2993[5]), .C(n2898), 
         .Z(n32465)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_29269.init = 16'hd8d8;
    PFUMX i28973 (.BLUT(n31955), .ALUT(n31954), .C0(n32906), .Z(n31956));
    LUT4 i18422_2_lut_3_lut_4_lut (.A(n33017), .B(n13601), .C(n33065), 
         .D(n33041), .Z(n3226[88])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i18422_2_lut_3_lut_4_lut.init = 16'h00e0;
    L6MUX21 i29440 (.D0(n32680), .D1(n32677), .SD(n32796), .Z(n32681));
    LUT4 i1_2_lut_rep_574_3_lut (.A(cnt[6]), .B(cnt[0]), .C(n13774), .Z(n33031)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i1_2_lut_rep_574_3_lut.init = 16'hfefe;
    FD1P3IX cnt_write__i4 (.D(DA_LCD_N_1249[4]), .SP(clk_in_c_enable_123), 
            .CD(n17108), .CK(clk_in_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i4.GSR = "DISABLED";
    PFUMX i29438 (.BLUT(n32679), .ALUT(n32678), .C0(n32791), .Z(n32680));
    LUT4 i2_3_lut_4_lut_adj_116 (.A(n33017), .B(n13601), .C(x_cnt[5]), 
         .D(n5_adj_1343), .Z(n1_adj_1344)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_116.init = 16'he000;
    LUT4 Mux_407_i2_3_lut (.A(n2903[7]), .B(n2973), .C(\realv_5[0] ), 
         .Z(n2_adj_11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i2_3_lut.init = 16'hcaca;
    LUT4 realv_2_2__bdd_3_lut_29276 (.A(n32773), .B(n2898), .C(n2884), 
         .Z(n32466)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_29276.init = 16'hd8d8;
    LUT4 i2_3_lut_4_lut_adj_117 (.A(n33017), .B(n13601), .C(\x_cnt[0] ), 
         .D(data_r[91]), .Z(n27698)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_117.init = 16'he000;
    PFUMX i29434 (.BLUT(n32676), .ALUT(n32675), .C0(n32791), .Z(n32677));
    LUT4 i18423_2_lut_3_lut_4_lut (.A(n33017), .B(n13601), .C(n33038), 
         .D(n33041), .Z(n3226[87])) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i18423_2_lut_3_lut_4_lut.init = 16'h00e0;
    PFUMX i28029 (.BLUT(n29408), .ALUT(n11881), .C0(x_cnt[4]), .Z(n30971));
    LUT4 Mux_407_i4_3_lut (.A(n2980[7]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_12)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_610_3_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[2]), .Z(n33067)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i1_2_lut_rep_610_3_lut.init = 16'hefef;
    LUT4 n30252_bdd_4_lut (.A(n33046), .B(n32970), .C(cnt_init[2]), .D(state[1]), 
         .Z(clk_in_c_enable_120)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n30252_bdd_4_lut.init = 16'h0100;
    LUT4 Mux_407_i5_3_lut (.A(n3006[7]), .B(n3019[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_13)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i5_3_lut.init = 16'hcaca;
    LUT4 realv_2_2__bdd_3_lut_29291 (.A(n32773), .B(n2975), .C(n2903[5]), 
         .Z(n32472)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_29291.init = 16'hd8d8;
    LUT4 i28176_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n32773), .Z(n31118)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28176_3_lut.init = 16'hcaca;
    LUT4 i28175_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n32773), .Z(n31117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28175_3_lut.init = 16'hcaca;
    LUT4 decade_2__bdd_3_lut_28930 (.A(n32905), .B(n3016), .C(n33061), 
         .Z(n31907)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28930.init = 16'he4e4;
    LUT4 n1_bdd_3_lut (.A(n32773), .B(n2993[5]), .C(n2980[5]), .Z(n32474)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut.init = 16'hd8d8;
    LUT4 Mux_406_i4_3_lut (.A(n2980[8]), .B(n2993[8]), .C(\realv_5[0] ), 
         .Z(n4_adj_14)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_406_i4_3_lut.init = 16'hcaca;
    LUT4 i28018_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n32773), .Z(n30960)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28018_3_lut.init = 16'hcaca;
    LUT4 Mux_406_i5_3_lut (.A(n3006[8]), .B(n2903[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_15)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_406_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_rep_530 (.A(n4_adj_1350), .B(n33020), .C(cnt[3]), .D(cnt[2]), 
         .Z(n32987)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_rep_530.init = 16'hfcec;
    LUT4 i28017_3_lut (.A(n2898), .B(n2993[3]), .C(n32773), .Z(n30959)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28017_3_lut.init = 16'hcaca;
    LUT4 decade_2__bdd_3_lut_28961 (.A(n32905), .B(n2913), .C(n2967[2]), 
         .Z(n31908)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28961.init = 16'he4e4;
    L6MUX21 i28969 (.D0(n31952), .D1(n31949), .SD(n32904), .Z(n31953));
    LUT4 i1_2_lut_adj_118 (.A(n1696[15]), .B(n30619), .Z(n30151)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_118.init = 16'h2222;
    LUT4 i28016_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n32773), .Z(n30958)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28016_3_lut.init = 16'hcaca;
    PFUMX i76 (.BLUT(n73), .ALUT(n74), .C0(state[2]), .Z(n75));
    LUT4 realv_2_2__bdd_3_lut_29292 (.A(n32773), .B(n3016), .C(n33061), 
         .Z(n32485)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_29292.init = 16'he4e4;
    LUT4 realv_2_2__bdd_3_lut (.A(n32773), .B(n2913), .C(n2967[2]), .Z(n32486)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut.init = 16'he4e4;
    LUT4 n1_bdd_3_lut_adj_119 (.A(n32773), .B(n2991), .C(n3003), .Z(n32488)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_119.init = 16'he4e4;
    L6MUX21 i29426 (.D0(n32667), .D1(n32665), .SD(n32796), .Z(n32668));
    LUT4 Mux_256_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(n32773), .Z(n4_adj_16)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_256_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_405_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(\realv_5[0] ), 
         .Z(n4_adj_17)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_405_i4_3_lut.init = 16'hcaca;
    PFUMX i28967 (.BLUT(n31951), .ALUT(n31950), .C0(n32906), .Z(n31952));
    PFUMX i29424 (.BLUT(n9148), .ALUT(n32666), .C0(n32791), .Z(n32667));
    LUT4 i28490_3_lut (.A(n32452), .B(n32516), .C(\x_cnt[0] ), .Z(n30950)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28490_3_lut.init = 16'hcaca;
    PFUMX i29421 (.BLUT(n32664), .ALUT(n32663), .C0(n32791), .Z(n32665));
    LUT4 i1_2_lut_3_lut_adj_120 (.A(state[2]), .B(n25040), .C(n1696[3]), 
         .Z(n43)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_3_lut_adj_120.init = 16'h1010;
    PFUMX i24 (.BLUT(n11), .ALUT(n4_adj_1353), .C0(state[1]), .Z(n9));
    LUT4 n1_bdd_3_lut_adj_121 (.A(n32785), .B(n2967[2]), .C(n2913), .Z(n32513)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_adj_121.init = 16'hd8d8;
    LUT4 n1_bdd_3_lut_adj_122 (.A(n32905), .B(n2991), .C(n3003), .Z(n31910)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_122.init = 16'he4e4;
    FD1P3AX state_back__i1 (.D(n24[1]), .SP(clk_in_c_enable_148), .CK(clk_in_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state_back__i1.GSR = "DISABLED";
    FD1P3AX num_delay_i1 (.D(num_delay_15__N_803[1]), .SP(clk_in_c_enable_148), 
            .CK(clk_in_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i1.GSR = "DISABLED";
    LUT4 n32514_bdd_3_lut (.A(n32514), .B(n33169), .C(n32778), .Z(n32515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32514_bdd_3_lut.init = 16'hcaca;
    FD1P3AX data_r_i0_i34 (.D(data_r_131__N_1113[34]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i34.GSR = "DISABLED";
    L6MUX21 i29417 (.D0(n32661), .D1(n32659), .SD(n32796), .Z(n32662));
    FD1P3AX data_r_i0_i47 (.D(data_r_131__N_1113[47]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i47.GSR = "DISABLED";
    LUT4 Mux_264_i7_3_lut (.A(n3), .B(n31124), .C(n32772), .Z(n7_adj_1355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_264_i7_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_491_3_lut_4_lut (.A(n33097), .B(n33026), .C(cnt[2]), 
         .D(n33098), .Z(n32948)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(169[16:18])
    defparam i1_2_lut_rep_491_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_123 (.A(n32956), .B(n32762), .C(x_cnt[1]), 
         .D(n14443), .Z(n30108)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_123.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_124 (.A(n32956), .B(n32762), .C(n33038), 
         .D(n33121), .Z(data_r_131__N_1113[120])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_124.init = 16'h0020;
    LUT4 i1_4_lut_then_4_lut (.A(cnt[1]), .B(cnt[6]), .C(n13774), .D(cnt[0]), 
         .Z(n33152)) /* synthesis lut_function=(!(A (B+(C))+!A (B+(C+(D))))) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'h0203;
    LUT4 Mux_349_i74_3_lut (.A(data_r[76]), .B(n2380), .C(\x_cnt[0] ), 
         .Z(n9885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i74_3_lut.init = 16'hcaca;
    PFUMX i21964 (.BLUT(n17), .ALUT(n4_adj_1356), .C0(state[0]), .Z(n9_adj_1357));
    LUT4 i27937_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n32767), .Z(n30879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i27937_3_lut.init = 16'hcaca;
    PFUMX i29415 (.BLUT(n9148), .ALUT(n32660), .C0(n32791), .Z(n32661));
    LUT4 i11489_3_lut (.A(n2903[4]), .B(n2903[5]), .C(\x_cnt[0] ), .Z(n14497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i11489_3_lut.init = 16'hcaca;
    PFUMX mux_492_Mux_5_i2 (.BLUT(n30372), .ALUT(n1_c), .C0(state[0]), 
          .Z(n2_adj_1358)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i1_4_lut_adj_125 (.A(clk_in_c_enable_1), .B(n30334), .C(state[0]), 
         .D(n30444), .Z(clk_in_c_enable_148)) /* synthesis lut_function=(A (B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_125.init = 16'h8aaa;
    FD1P3AX data_r_i0_i91 (.D(data_r_131__N_1113[102]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[91])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i91.GSR = "DISABLED";
    FD1P3AX data_r_i0_i92 (.D(data_r_131__N_1113[92]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[92])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i92.GSR = "DISABLED";
    FD1P3AX data_r_i0_i93 (.D(data_r_131__N_1113[93]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[93])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i93.GSR = "DISABLED";
    FD1P3AX data_r_i0_i94 (.D(data_r_131__N_1113[94]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[94])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i94.GSR = "DISABLED";
    FD1P3AX data_r_i0_i95 (.D(data_r_131__N_1113[95]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[95])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i95.GSR = "DISABLED";
    FD1P3AX data_r_i0_i96 (.D(data_r_131__N_1113[96]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[96])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i96.GSR = "DISABLED";
    FD1P3AX data_r_i0_i97 (.D(data_r_131__N_1113[97]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[97])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i97.GSR = "DISABLED";
    FD1P3AX data_r_i0_i98 (.D(data_r_131__N_1113[98]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[98])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i98.GSR = "DISABLED";
    FD1P3AX data_r_i0_i99 (.D(data_r_131__N_1113[99]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[99])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i99.GSR = "DISABLED";
    FD1P3AX data_r_i0_i100 (.D(data_r_131__N_1113[100]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[100])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i100.GSR = "DISABLED";
    FD1P3AX data_r_i0_i101 (.D(data_r_131__N_1113[101]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[101])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i101.GSR = "DISABLED";
    FD1P3AX data_r_i0_i104 (.D(data_r_131__N_1113[104]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[104])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i104.GSR = "DISABLED";
    FD1P3AX data_r_i0_i110 (.D(data_r_131__N_1113[121]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[110])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i110.GSR = "DISABLED";
    FD1P3AX data_r_i0_i111 (.D(data_r_131__N_1113[120]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[111])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i111.GSR = "DISABLED";
    FD1P3AX data_r_i0_i112 (.D(data_r_131__N_1113[112]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[112])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i112.GSR = "DISABLED";
    FD1P3AX data_r_i0_i113 (.D(data_r_131__N_1113[113]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[113])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i113.GSR = "DISABLED";
    FD1P3AX data_r_i0_i114 (.D(data_r_131__N_1113[114]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[114])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i114.GSR = "DISABLED";
    FD1P3AX data_r_i0_i115 (.D(data_r_131__N_1113[115]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[115])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i115.GSR = "DISABLED";
    FD1P3AX data_r_i0_i116 (.D(data_r_131__N_1113[116]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[116])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i116.GSR = "DISABLED";
    FD1P3AX data_r_i0_i117 (.D(data_r_131__N_1113[117]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[117])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i117.GSR = "DISABLED";
    FD1P3AX data_r_i0_i118 (.D(data_r_131__N_1113[118]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[118])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i118.GSR = "DISABLED";
    FD1P3AX data_r_i0_i119 (.D(data_r_131__N_1113[119]), .SP(clk_in_c_enable_70), 
            .CK(clk_in_c), .Q(data_r[119])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i119.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_126 (.A(n32956), .B(n32762), .C(n33065), 
         .D(n33121), .Z(data_r_131__N_1113[121])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_126.init = 16'h0020;
    PFUMX i29413 (.BLUT(n32658), .ALUT(n32657), .C0(n32791), .Z(n32659));
    LUT4 i1_4_lut_adj_127 (.A(n33139), .B(state_back[0]), .C(n30312), 
         .D(n14_adj_1359), .Z(n29190)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_127.init = 16'h5450;
    LUT4 i1_4_lut_adj_128 (.A(n34278), .B(cnt_init[0]), .C(n2_adj_1360), 
         .D(n33131), .Z(n14_adj_1359)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_128.init = 16'hbbba;
    LUT4 i18623_4_lut_4_lut (.A(n32765), .B(n32773), .C(n33062), .D(n3032[1]), 
         .Z(n14_adj_1361)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i18623_4_lut_4_lut.init = 16'h5140;
    PFUMX i17768 (.BLUT(n30329), .ALUT(n20767), .C0(state[0]), .Z(n2_adj_1362));
    PFUMX mux_492_Mux_1_i2 (.BLUT(n30366), .ALUT(n1_adj_1363), .C0(state[0]), 
          .Z(n2_adj_1364)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i1_2_lut_adj_129 (.A(state[0]), .B(state[1]), .Z(n30312)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_adj_129.init = 16'hbbbb;
    LUT4 i1_4_lut_adj_130 (.A(n30534), .B(n94), .C(n30661), .D(n30495), 
         .Z(n13660)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_130.init = 16'h0004;
    LUT4 i27603_2_lut (.A(cnt_init[8]), .B(cnt_init[13]), .Z(n30534)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27603_2_lut.init = 16'heeee;
    PFUMX mux_492_Mux_2_i2 (.BLUT(n30376), .ALUT(n1_adj_1365), .C0(state[0]), 
          .Z(n2_adj_1366)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    PFUMX i17318 (.BLUT(n27673), .ALUT(n20322), .C0(state[0]), .Z(n20323));
    LUT4 i2_3_lut_rep_518_4_lut (.A(n33098), .B(n33029), .C(cnt[5]), .D(n30576), 
         .Z(n32975)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(164[16:18])
    defparam i2_3_lut_rep_518_4_lut.init = 16'hfeff;
    LUT4 realv_3_2__bdd_3_lut_29332 (.A(n32785), .B(n3006[6]), .C(n3045[3]), 
         .Z(n32556)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_29332.init = 16'he4e4;
    PFUMX mux_492_Mux_4_i2 (.BLUT(n30375), .ALUT(n1_adj_1367), .C0(state[0]), 
          .Z(n2_adj_1294)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 realv_3_2__bdd_3_lut_29339 (.A(n32785), .B(n2973), .C(n2903[6]), 
         .Z(n32557)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_29339.init = 16'hd8d8;
    LUT4 i27724_4_lut (.A(n33127), .B(cnt_init[12]), .C(n33126), .D(cnt_init[9]), 
         .Z(n30661)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27724_4_lut.init = 16'hfffe;
    LUT4 i27490_3_lut_rep_503_4_lut (.A(n33098), .B(n33029), .C(cnt[5]), 
         .D(n14028), .Z(n32960)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(164[16:18])
    defparam i27490_3_lut_rep_503_4_lut.init = 16'hffef;
    PFUMX mux_492_Mux_6_i2 (.BLUT(n13738), .ALUT(n1_adj_1316), .C0(state[0]), 
          .Z(n2_adj_1368)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i1_4_lut_adj_131 (.A(cnt[6]), .B(n13774), .C(n21755), .D(n33130), 
         .Z(n1489)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_131.init = 16'heeec;
    LUT4 n9140_bdd_3_lut_29343 (.A(n32785), .B(n2980[6]), .C(n2993[5]), 
         .Z(n32559)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9140_bdd_3_lut_29343.init = 16'he4e4;
    LUT4 i4371_4_lut (.A(n13851), .B(cnt[6]), .C(n33130), .D(cnt[3]), 
         .Z(n14_adj_1311)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i4371_4_lut.init = 16'hc8c0;
    LUT4 i11487_3_lut (.A(n2903[6]), .B(n2903[7]), .C(\x_cnt[0] ), .Z(n14495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i11487_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i114_3_lut (.A(n3_adj_1318), .B(n3_c), .C(\x_cnt[0] ), 
         .Z(n9845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i114_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_132 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n94)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[36:44])
    defparam i1_2_lut_adj_132.init = 16'h2222;
    LUT4 Mux_349_i110_3_lut (.A(n32760), .B(n3_adj_1321), .C(\x_cnt[0] ), 
         .Z(n9851)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i110_3_lut.init = 16'hcaca;
    LUT4 i27568_4_lut (.A(cnt_init[10]), .B(cnt_init[3]), .C(n6_adj_1369), 
         .D(cnt_init[14]), .Z(n30495)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27568_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_691 (.A(cnt_init[2]), .B(n26444), .C(cnt_init[0]), 
         .Z(n34278)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_rep_691.init = 16'hecec;
    PFUMX i28963 (.BLUT(n31948), .ALUT(n31947), .C0(n32906), .Z(n31949));
    LUT4 i1_3_lut_3_lut_4_lut_adj_133 (.A(cnt_init[2]), .B(n26444), .C(cnt_init[0]), 
         .D(n5_adj_1370), .Z(n8_c)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+!(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_3_lut_4_lut_adj_133.init = 16'hefec;
    LUT4 i1_4_lut_else_4_lut (.A(cnt[1]), .B(cnt[6]), .C(n13774), .Z(n33151)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'h0202;
    LUT4 i2_2_lut (.A(cnt_init[11]), .B(cnt_init[15]), .Z(n6_adj_1369)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 Mux_349_i90_3_lut (.A(n2246), .B(n2245), .C(\x_cnt[0] ), .Z(n9867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i90_3_lut.init = 16'hcaca;
    PFUMX i12316 (.BLUT(n30373), .ALUT(n1_adj_1371), .C0(state[0]), .Z(n15334));
    LUT4 Mux_349_i89_3_lut (.A(n2248), .B(n2247), .C(\x_cnt[0] ), .Z(n9869)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i89_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_134 (.A(\x_cnt[0] ), .B(n30087), .Z(n30090)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_134.init = 16'h8888;
    LUT4 Mux_349_i86_3_lut (.A(n2380), .B(data_r[89]), .C(\x_cnt[0] ), 
         .Z(n9873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i86_3_lut.init = 16'hcaca;
    LUT4 realv_3_2__bdd_3_lut_29340 (.A(n32785), .B(n3006[7]), .C(n3019[7]), 
         .Z(n32562)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_29340.init = 16'he4e4;
    LUT4 i8_4_lut (.A(n15_adj_1372), .B(cnt[14]), .C(n14_adj_1373), .D(cnt[10]), 
         .Z(n13774)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut_adj_135 (.A(cnt[15]), .B(cnt[13]), .C(cnt[11]), .D(cnt[8]), 
         .Z(n15_adj_1372)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i6_4_lut_adj_135.init = 16'hfffe;
    LUT4 i5_3_lut (.A(cnt[12]), .B(cnt[7]), .C(cnt[9]), .Z(n14_adj_1373)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 realv_3_2__bdd_3_lut_29348 (.A(n32785), .B(n2973), .C(n2903[7]), 
         .Z(n32563)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_29348.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_550_3_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(n33099), 
         .D(n13774), .Z(n33007)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i1_2_lut_rep_550_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut (.A(n14245), .B(n30655), .C(n14406), .D(n6_adj_1374), 
         .Z(n8_adj_1375)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i2_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_adj_136 (.A(cnt[1]), .B(cnt[0]), .Z(n4_adj_1350)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_136.init = 16'h8888;
    PFUMX i28165 (.BLUT(n31104), .ALUT(n31105), .C0(x_cnt[1]), .Z(n31107));
    PFUMX Mux_349_i127 (.BLUT(n109), .ALUT(n126), .C0(n30764), .Z(n127)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 n9140_bdd_3_lut (.A(n32785), .B(n2980[7]), .C(n2993[5]), .Z(n32565)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9140_bdd_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_rep_546_3_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[3]), 
         .D(n13774), .Z(n33003)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i1_2_lut_rep_546_3_lut_4_lut.init = 16'hffef;
    LUT4 Mux_349_i98_3_lut (.A(n2240), .B(n2239), .C(\x_cnt[0] ), .Z(n9861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i98_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_137 (.A(n122), .B(cnt_init[12]), .C(n8_adj_1376), 
         .D(cnt_init[13]), .Z(n26444)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_137.init = 16'hfffe;
    LUT4 i28625_4_lut (.A(n27862), .B(rst_n_in_c), .C(state[2]), .D(state[1]), 
         .Z(high_word_N_1277)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))))) */ ;
    defparam i28625_4_lut.init = 16'h3b3f;
    LUT4 Mux_349_i96_3_lut (.A(n2242), .B(n2241), .C(\x_cnt[0] ), .Z(n9863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i96_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i95_3_lut (.A(n2244), .B(n2243), .C(\x_cnt[0] ), .Z(n9865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i95_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_138 (.A(state[2]), .B(n25040), .C(n1696[2]), 
         .Z(n10870)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_3_lut_adj_138.init = 16'h1010;
    LUT4 i2_3_lut_rep_504_4_lut (.A(cnt[3]), .B(n33040), .C(cnt[0]), .D(cnt[6]), 
         .Z(n32961)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(207[16:18])
    defparam i2_3_lut_rep_504_4_lut.init = 16'hefff;
    LUT4 n3_bdd_3_lut_29411 (.A(n3_adj_4), .B(n32590), .C(n32791), .Z(n32591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut_29411.init = 16'hcaca;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n33040), .C(n33129), .D(cnt[6]), 
         .Z(n30051)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(207[16:18])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 realv_3_2__bdd_3_lut_29375 (.A(n32785), .B(n2975), .C(n2903[4]), 
         .Z(n32598)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_29375.init = 16'hd8d8;
    LUT4 realv_3_2__bdd_3_lut_29372 (.A(n32785), .B(n3032[7]), .C(n3019[4]), 
         .Z(n32597)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_29372.init = 16'he4e4;
    LUT4 realv_3_2__bdd_3_lut_29376 (.A(n32785), .B(n2993[5]), .C(n2898), 
         .Z(n32600)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_29376.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_484_3_lut_4_lut (.A(cnt[3]), .B(n33040), .C(n33098), 
         .D(n33128), .Z(n32941)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(207[16:18])
    defparam i1_2_lut_rep_484_3_lut_4_lut.init = 16'hfffe;
    LUT4 realv_3_2__bdd_3_lut_29381 (.A(n32785), .B(n2898), .C(n2884), 
         .Z(n32601)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_29381.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_642 (.A(cnt[3]), .B(cnt[1]), .Z(n33099)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(230[16:17])
    defparam i1_2_lut_rep_642.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n33099), .B(n33031), .C(cnt[2]), 
         .D(n33095), .Z(n14134)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(154[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'hffef;
    LUT4 realv_3_2__bdd_3_lut (.A(n32785), .B(n2975), .C(n2903[5]), .Z(n32605)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n33034), .B(n33033), .C(cnt[5]), 
         .D(cnt[4]), .Z(n14406)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(84[12:21])
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h1000;
    LUT4 i27718_4_lut (.A(n33095), .B(n14028), .C(n33003), .D(n32962), 
         .Z(n30655)) /* synthesis lut_function=(A (B+(D))+!A (B+(C (D)))) */ ;
    defparam i27718_4_lut.init = 16'hfecc;
    LUT4 n1_bdd_3_lut_adj_141 (.A(n32785), .B(n2993[5]), .C(n2980[5]), 
         .Z(n32607)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_adj_141.init = 16'hd8d8;
    PFUMX i28952 (.BLUT(n31934), .ALUT(n31933), .C0(x_cnt[3]), .Z(n31935));
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(n33043), .B(n32987), .C(n33146), 
         .D(cnt_scan[0]), .Z(n4_adj_1313)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h050c;
    LUT4 i1_2_lut_rep_553 (.A(n14_adj_1311), .B(n13774), .Z(n33010)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_553.init = 16'heeee;
    LUT4 i1_2_lut_rep_515_3_lut (.A(n14_adj_1311), .B(n13774), .C(n1489), 
         .Z(n32972)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_515_3_lut.init = 16'hefef;
    LUT4 i7123_4_lut (.A(n2412), .B(n2411), .C(n2413), .D(\x_cnt[0] ), 
         .Z(n9922)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7123_4_lut.init = 16'hfaee;
    LUT4 i27508_2_lut_3_lut_rep_514_4_lut (.A(n14_adj_1311), .B(n13774), 
         .C(n26444), .D(cnt_init[0]), .Z(n32971)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27508_2_lut_3_lut_rep_514_4_lut.init = 16'hfffe;
    PFUMX Mux_349_i108 (.BLUT(n30108), .ALUT(n12907), .C0(n30754), .Z(n108)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    PFUMX i29396 (.BLUT(n32621), .ALUT(n2903[3]), .C0(\ctrlword_595_4_15__N_622[1] ), 
          .Z(n31079));
    LUT4 n30830_bdd_3_lut_29164 (.A(n31879), .B(n30837), .C(x_cnt[2]), 
         .Z(n31934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n30830_bdd_3_lut_29164.init = 16'hcaca;
    LUT4 i18245_4_lut (.A(n31078), .B(x_cnt[5]), .C(n31936), .D(x_cnt[4]), 
         .Z(n63)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i18245_4_lut.init = 16'hc088;
    L6MUX21 i29387 (.D0(n32608), .D1(n32606), .SD(n32777), .Z(n32609));
    LUT4 i10101_4_lut (.A(n32956), .B(n30896), .C(n30897), .D(x_cnt[4]), 
         .Z(n13048)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i10101_4_lut.init = 16'ha088;
    LUT4 i1_2_lut_4_lut_adj_142 (.A(n33031), .B(cnt[3]), .C(n33128), .D(n33094), 
         .Z(n14261)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_4_lut_adj_142.init = 16'hfeff;
    LUT4 i28539_3_lut (.A(n13048), .B(n63), .C(x_cnt[6]), .Z(n125)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i28539_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_rep_522_4_lut (.A(n33031), .B(cnt[3]), .C(n33128), .D(n33095), 
         .Z(n32979)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_522_4_lut.init = 16'hfffe;
    LUT4 i18746_3_lut_4_lut (.A(n33067), .B(n33030), .C(n33015), .D(n33097), 
         .Z(n21767)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(156[16:18])
    defparam i18746_3_lut_4_lut.init = 16'hffe0;
    LUT4 i18610_4_lut_4_lut (.A(n32765), .B(n32773), .C(n33064), .D(n3032[1]), 
         .Z(n14_adj_1377)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i18610_4_lut_4_lut.init = 16'h5140;
    L6MUX21 i28143 (.D0(n31083), .D1(n31084), .SD(x_cnt[1]), .Z(n31085));
    PFUMX Mux_349_i37 (.BLUT(n9922), .ALUT(n9920), .C0(x_cnt[1]), .Z(n37_adj_1378)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i7089_4_lut (.A(n32944), .B(n2414), .C(n9857), .D(n7_adj_1314), 
         .Z(n104)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7089_4_lut.init = 16'hfaca;
    LUT4 i28541_4_lut (.A(n104), .B(n125), .C(x_cnt[6]), .D(x_cnt[5]), 
         .Z(n126)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i28541_4_lut.init = 16'haccc;
    LUT4 Mux_349_i109_4_lut (.A(n108), .B(n32956), .C(x_cnt[4]), .D(n13031), 
         .Z(n109)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i109_4_lut.init = 16'hca0a;
    LUT4 decade_2__bdd_3_lut_28965 (.A(n32905), .B(n2975), .C(n2903[4]), 
         .Z(n31948)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut_28965.init = 16'hd8d8;
    LUT4 mux_454_Mux_0_i1_4_lut (.A(n21759), .B(n3720[1]), .C(cnt_scan[0]), 
         .D(n30130), .Z(n1_adj_1371)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam mux_454_Mux_0_i1_4_lut.init = 16'hcac0;
    LUT4 i7_4_lut (.A(n14205), .B(n14_adj_1379), .C(n10_adj_1380), .D(n13968), 
         .Z(n30373)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i7_4_lut.init = 16'hfdff;
    LUT4 i28162_3_lut (.A(data_r[116]), .B(data_r[117]), .C(\x_cnt[0] ), 
         .Z(n31104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28162_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_545_3_lut_3_lut_4_lut (.A(cnt[3]), .B(cnt[1]), .C(n13774), 
         .D(n33100), .Z(n33002)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(230[16:17])
    defparam i1_2_lut_rep_545_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i15_4_lut_4_lut (.A(n33146), .B(n33043), .C(n32987), .D(cnt_scan[0]), 
         .Z(n4_adj_1356)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(84[12:21])
    defparam i15_4_lut_4_lut.init = 16'h4405;
    LUT4 realv_4_2__bdd_3_lut_29412 (.A(n32800), .B(n3006[6]), .C(n3045[3]), 
         .Z(n32657)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_29412.init = 16'he4e4;
    PFUMX i29385 (.BLUT(n1_adj_1381), .ALUT(n32607), .C0(n32778), .Z(n32608));
    LUT4 i21_4_lut (.A(state[1]), .B(n24694), .C(n3994), .D(state[2]), 
         .Z(n20322)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i21_4_lut.init = 16'h0511;
    LUT4 i1_3_lut (.A(data_reg[6]), .B(n30030), .C(n1489), .Z(n13738)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i1_3_lut.init = 16'hb3b3;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n33043), .B(cnt_scan[0]), .C(n33146), 
         .D(n32987), .Z(n44_c)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C)+!B (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hf8fb;
    LUT4 i4_4_lut_adj_143 (.A(n30509), .B(n30374), .C(n30679), .D(n6_adj_1382), 
         .Z(n30375)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut_adj_143.init = 16'hffdf;
    LUT4 i1_2_lut_4_lut_adj_144 (.A(clk_in_c_enable_1), .B(n13543), .C(n33080), 
         .D(n34282), .Z(n25094)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_144.init = 16'h00a8;
    LUT4 i8_4_lut_adj_145 (.A(n14239), .B(n16), .C(n12_adj_1383), .D(n1_adj_1384), 
         .Z(n30376)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut_adj_145.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(cnt[6]), .B(n33040), .C(cnt[2]), 
         .D(cnt[1]), .Z(n30268)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'hfeff;
    L6MUX21 i27955 (.D0(n30894), .D1(n30895), .SD(x_cnt[3]), .Z(n30897));
    L6MUX21 i27987 (.D0(n30927), .D1(n30928), .SD(x_cnt[2]), .Z(n30929));
    LUT4 mux_454_Mux_1_i1_4_lut (.A(n30130), .B(n3720[1]), .C(cnt_scan[0]), 
         .D(n4_adj_1385), .Z(n1_adj_1363)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam mux_454_Mux_1_i1_4_lut.init = 16'hcac0;
    LUT4 i3_4_lut (.A(n13883), .B(n30009), .C(n14205), .D(n30679), .Z(n30366)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i3_4_lut.init = 16'hefff;
    LUT4 realv_4_2__bdd_3_lut_29419 (.A(n32800), .B(n2973), .C(n2903[6]), 
         .Z(n32658)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29419.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_adj_147 (.A(n1489), .B(n14_adj_1311), .C(n13660), 
         .Z(n2_adj_1360)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_147.init = 16'he0e0;
    LUT4 i17767_4_lut (.A(n9_adj_1386), .B(n3720[5]), .C(cnt_scan[0]), 
         .D(n30130), .Z(n20767)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[21:29])
    defparam i17767_4_lut.init = 16'hcac0;
    LUT4 i4_4_lut_adj_148 (.A(n30030), .B(n30536), .C(n13915), .D(n6_adj_1333), 
         .Z(n30329)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i4_4_lut_adj_148.init = 16'hffdf;
    LUT4 i7_4_lut_adj_149 (.A(n30042), .B(n14_adj_1387), .C(n10_adj_1388), 
         .D(n32942), .Z(n30372)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i7_4_lut_adj_149.init = 16'hfdff;
    LUT4 Mux_412_i2_3_lut_rep_565 (.A(n2913), .B(n2967[2]), .C(\realv_5[0] ), 
         .Z(n33022)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_412_i2_3_lut_rep_565.init = 16'hcaca;
    LUT4 decade_2__bdd_3_lut_28962 (.A(n32905), .B(n3032[7]), .C(n3019[4]), 
         .Z(n31947)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_28962.init = 16'he4e4;
    LUT4 n2887_bdd_2_lut_4_lut (.A(n2913), .B(n2967[2]), .C(\realv_5[0] ), 
         .D(\x_cnt[0] ), .Z(n32184)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam n2887_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 decade_2__bdd_3_lut_28966 (.A(n32905), .B(n2993[5]), .C(n2898), 
         .Z(n31950)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut_28966.init = 16'hd8d8;
    LUT4 i69_2_lut_rep_692 (.A(n1489), .B(n14_adj_1311), .Z(n34279)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i69_2_lut_rep_692.init = 16'heeee;
    LUT4 n9148_bdd_3_lut_29423 (.A(n32800), .B(n2980[6]), .C(n2993[5]), 
         .Z(n32660)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9148_bdd_3_lut_29423.init = 16'he4e4;
    PFUMX i29383 (.BLUT(n32605), .ALUT(n32604), .C0(n32778), .Z(n32606));
    LUT4 i28682_4_lut (.A(rst_n_in_c), .B(n20), .C(state[2]), .D(state[1]), 
         .Z(n17108)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28682_4_lut.init = 16'hf577;
    L6MUX21 i27898 (.D0(n30838), .D1(n30839), .SD(x_cnt[2]), .Z(n30840));
    L6MUX21 i27953 (.D0(n30890), .D1(n30891), .SD(x_cnt[2]), .Z(n30895));
    L6MUX21 i29379 (.D0(n32602), .D1(n32599), .SD(n32777), .Z(n32603));
    PFUMX i29377 (.BLUT(n32601), .ALUT(n32600), .C0(n32778), .Z(n32602));
    LUT4 i1_4_lut_adj_150 (.A(state[0]), .B(state[2]), .C(n30507), .D(cnt_write[4]), 
         .Z(n20)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_150.init = 16'haeee;
    LUT4 i27579_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[3]), 
         .Z(n30507)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i27579_3_lut.init = 16'hfefe;
    LUT4 realv_4_2__bdd_3_lut_29420 (.A(n32800), .B(n3006[7]), .C(n3019[7]), 
         .Z(n32663)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_29420.init = 16'he4e4;
    LUT4 i1_4_lut_adj_151 (.A(data_r[111]), .B(n30518), .C(data_r[110]), 
         .D(\x_cnt[0] ), .Z(n30113)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h3022;
    LUT4 i27590_2_lut (.A(x_cnt[1]), .B(x_cnt[2]), .Z(n30518)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27590_2_lut.init = 16'heeee;
    LUT4 realv_4_2__bdd_3_lut_29443_4_lut (.A(n33042), .B(y_cnt[3]), .C(n3006[5]), 
         .D(n32800), .Z(n32682)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_4_2__bdd_3_lut_29443_4_lut.init = 16'h22f0;
    LUT4 decade_2__bdd_3_lut_28971 (.A(n32905), .B(n2898), .C(n2884), 
         .Z(n31951)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut_28971.init = 16'hd8d8;
    LUT4 realv_4_2__bdd_3_lut_29432 (.A(n32800), .B(n2973), .C(n2903[7]), 
         .Z(n32664)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29432.init = 16'hd8d8;
    LUT4 decade_2__bdd_3_lut_28972_4_lut (.A(n33042), .B(y_cnt[3]), .C(n3006[5]), 
         .D(n32905), .Z(n31954)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam decade_2__bdd_3_lut_28972_4_lut.init = 16'h22f0;
    PFUMX i27986 (.BLUT(n14440), .ALUT(n9845), .C0(x_cnt[1]), .Z(n30928));
    LUT4 i2_4_lut_adj_152 (.A(n11_adj_1389), .B(state[2]), .C(n4_adj_1390), 
         .D(state[0]), .Z(n4_adj_1353)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_4_lut_adj_152.init = 16'h0020;
    LUT4 i1_2_lut_adj_153 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n24694)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_adj_153.init = 16'hdddd;
    PFUMX i29373 (.BLUT(n32598), .ALUT(n32597), .C0(n32778), .Z(n32599));
    LUT4 i1_4_lut_adj_154 (.A(state[1]), .B(n27806), .C(n3994), .D(state[0]), 
         .Z(n74)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_154.init = 16'hfabb;
    LUT4 Mux_409_i5_3_lut_4_lut (.A(n33042), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3006[5]), .Z(n5_adj_18)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_409_i5_3_lut_4_lut.init = 16'h2f20;
    LUT4 realv_2_2__bdd_3_lut_29277_4_lut (.A(n33042), .B(y_cnt[3]), .C(n3006[5]), 
         .D(n32773), .Z(n32471)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_2_2__bdd_3_lut_29277_4_lut.init = 16'h22f0;
    LUT4 realv_3_2__bdd_3_lut_29382_4_lut (.A(n33042), .B(y_cnt[3]), .C(n3006[5]), 
         .D(n32785), .Z(n32604)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_3_2__bdd_3_lut_29382_4_lut.init = 16'h22f0;
    LUT4 n9148_bdd_3_lut (.A(n32800), .B(n2980[7]), .C(n2993[5]), .Z(n32666)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9148_bdd_3_lut.init = 16'he4e4;
    LUT4 i18637_2_lut_4_lut (.A(n32759), .B(n32864), .C(\ctrlword_595_3[13] ), 
         .D(n33011), .Z(n1_adj_1367)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i18637_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_3_lut_adj_155 (.A(cnt_write[0]), .B(n33122), .C(cnt_write[4]), 
         .Z(n27806)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_3_lut_adj_155.init = 16'hdfdf;
    LUT4 i18401_4_lut (.A(n31108), .B(n32982), .C(n30113), .D(x_cnt[3]), 
         .Z(n11881)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i18401_4_lut.init = 16'hc088;
    LUT4 i1_4_lut_adj_156 (.A(n32982), .B(n31101), .C(n9_adj_1392), .D(x_cnt[3]), 
         .Z(n29408)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_156.init = 16'ha088;
    PFUMX i29366 (.BLUT(n32591), .ALUT(n32587), .C0(n32783), .Z(n32592));
    LUT4 realv_4_2__bdd_3_lut_29433 (.A(n32800), .B(n3032[7]), .C(n3019[4]), 
         .Z(n32675)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_29433.init = 16'he4e4;
    LUT4 realv_4_2__bdd_3_lut_29436 (.A(n32800), .B(n2975), .C(n2903[4]), 
         .Z(n32676)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29436.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_524_3_lut_4_lut (.A(n13774), .B(n33099), .C(n33098), 
         .D(n33097), .Z(n32981)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(169[16:18])
    defparam i1_2_lut_rep_524_3_lut_4_lut.init = 16'hfffe;
    LUT4 realv_4_2__bdd_3_lut_29437 (.A(n32800), .B(n2993[5]), .C(n2898), 
         .Z(n32678)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29437.init = 16'hd8d8;
    LUT4 decade_2__bdd_3_lut (.A(n32905), .B(n2975), .C(n2903[5]), .Z(n31955)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 realv_4_2__bdd_3_lut_29442 (.A(n32800), .B(n2898), .C(n2884), 
         .Z(n32679)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29442.init = 16'hd8d8;
    LUT4 i22_4_lut (.A(n26444), .B(cnt_init[2]), .C(n33010), .D(cnt_init[1]), 
         .Z(n11_adj_1389)) /* synthesis lut_function=(!(A+(B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(125[7] 214[15])
    defparam i22_4_lut.init = 16'h1151;
    LUT4 i1_2_lut_adj_157 (.A(state[1]), .B(cnt_init[0]), .Z(n4_adj_1390)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(125[7] 214[15])
    defparam i1_2_lut_adj_157.init = 16'h2222;
    LUT4 n1_bdd_3_lut_adj_158 (.A(n32905), .B(n2993[5]), .C(n2980[5]), 
         .Z(n31957)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_adj_158.init = 16'hd8d8;
    LUT4 realv_4_2__bdd_3_lut_29466 (.A(n32800), .B(n2975), .C(n2903[5]), 
         .Z(n32683)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_29466.init = 16'hd8d8;
    PFUMX i29364 (.BLUT(n32589), .ALUT(n32588), .C0(n32796), .Z(n32590));
    LUT4 n1_bdd_3_lut_adj_159 (.A(n32800), .B(n2993[5]), .C(n2980[5]), 
         .Z(n32685)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_adj_159.init = 16'hd8d8;
    LUT4 i1_4_lut_adj_160 (.A(cnt_init[0]), .B(num_delay[1]), .C(n37_adj_1393), 
         .D(n34278), .Z(n29991)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i1_4_lut_adj_160.init = 16'hdc50;
    LUT4 i1_4_lut_adj_161 (.A(n1586[1]), .B(num_delay[1]), .C(n13660), 
         .D(n33131), .Z(n37_adj_1393)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_161.init = 16'heca0;
    LUT4 realv_4_1__bdd_3_lut_29453 (.A(n32800), .B(n2980[9]), .C(n2993[8]), 
         .Z(n32689)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_1__bdd_3_lut_29453.init = 16'he4e4;
    PFUMX i27896 (.BLUT(n9865), .ALUT(n9863), .C0(x_cnt[1]), .Z(n30838));
    PFUMX i27897 (.BLUT(n9861), .ALUT(n30088), .C0(x_cnt[1]), .Z(n30839));
    LUT4 n26444_bdd_4_lut_29094 (.A(n26444), .B(cnt_init[2]), .C(cnt_init[0]), 
         .D(cnt_init[1]), .Z(n31960)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;
    defparam n26444_bdd_4_lut_29094.init = 16'heeea;
    LUT4 i1_2_lut_rep_572 (.A(n13774), .B(cnt[3]), .Z(n33029)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(162[16:18])
    defparam i1_2_lut_rep_572.init = 16'hbbbb;
    LUT4 i28620_4_lut (.A(\ctrlword_595_3[13] ), .B(clk_in_c_enable_131), 
         .C(n32982), .D(state[2]), .Z(clk_in_c_enable_70)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i28620_4_lut.init = 16'hcc4c;
    L6MUX21 i29346 (.D0(n32566), .D1(n32564), .SD(n32777), .Z(n32567));
    LUT4 i2_3_lut_4_lut_adj_162 (.A(n13774), .B(cnt[3]), .C(n33067), .D(n33097), 
         .Z(n30282)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(162[16:18])
    defparam i2_3_lut_4_lut_adj_162.init = 16'hfffb;
    LUT4 realv_4_2__bdd_3_lut (.A(n32800), .B(n2913), .C(n2967[2]), .Z(n32707)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut.init = 16'he4e4;
    LUT4 Mux_349_i41_4_lut (.A(n33017), .B(n9917), .C(x_cnt[1]), .D(n2414), 
         .Z(n41_adj_1394)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i41_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_adj_163 (.A(n33043), .B(n33107), .C(state[2]), .D(n13543), 
         .Z(clk_in_c_enable_131)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_4_lut_adj_163.init = 16'hc8c0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(n13774), .B(n33096), .C(n33094), 
         .D(n33055), .Z(n14219)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(156[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'hffef;
    LUT4 realv_4_2__bdd_3_lut_29467 (.A(n32800), .B(n3016), .C(n33061), 
         .Z(n32706)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_29467.init = 16'he4e4;
    PFUMX i29344 (.BLUT(n9140), .ALUT(n32565), .C0(n32778), .Z(n32566));
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(n13774), .B(n33096), .C(n33094), 
         .D(n33067), .Z(n14231)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(156[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'hffef;
    LUT4 i2_3_lut_rep_558_4_lut (.A(n13774), .B(n33098), .C(n33128), .D(cnt[3]), 
         .Z(n33015)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(154[16:18])
    defparam i2_3_lut_rep_558_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(n13774), .B(n33098), .C(n30276), 
         .D(n33099), .Z(n30278)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(154[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'hfffe;
    LUT4 n1_bdd_3_lut_adj_167 (.A(n32800), .B(n2991), .C(n3003), .Z(n32709)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_167.init = 16'he4e4;
    LUT4 i1_2_lut_rep_517_3_lut_4_lut (.A(n13774), .B(n33098), .C(n33095), 
         .D(n33099), .Z(n32974)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(154[16:18])
    defparam i1_2_lut_rep_517_3_lut_4_lut.init = 16'hfffe;
    LUT4 i27546_2_lut_rep_576 (.A(cnt[3]), .B(n13774), .Z(n33033)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27546_2_lut_rep_576.init = 16'heeee;
    PFUMX i29341 (.BLUT(n32563), .ALUT(n32562), .C0(n32778), .Z(n32564));
    LUT4 i1_2_lut_rep_509_3_lut_4_lut (.A(cnt[3]), .B(n13774), .C(cnt[4]), 
         .D(n33034), .Z(n32966)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_509_3_lut_4_lut.init = 16'hffef;
    LUT4 n30318_bdd_3_lut_29823 (.A(n30318), .B(n10), .C(n30675), .Z(n32717)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam n30318_bdd_3_lut_29823.init = 16'hefef;
    LUT4 i28253_3_lut (.A(n41_adj_1394), .B(n32197), .C(x_cnt[2]), .Z(n31077)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28253_3_lut.init = 16'hcaca;
    PFUMX i54 (.BLUT(n13_adj_1395), .ALUT(n41), .C0(cnt[1]), .Z(n34_adj_1396));
    LUT4 i1_2_lut_rep_516_3_lut_4_lut (.A(cnt[3]), .B(n13774), .C(n33097), 
         .D(n33034), .Z(n32973)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_516_3_lut_4_lut.init = 16'hfffe;
    LUT4 i29243_i12_4_lut (.A(n3226[87]), .B(n3_adj_19), .C(\x_cnt[0] ), 
         .D(n32982), .Z(n12)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i29243_i12_4_lut.init = 16'hca0a;
    LUT4 n30318_bdd_4_lut (.A(n32758), .B(n1978[3]), .C(n33043), .D(cnt_scan[0]), 
         .Z(n32716)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !((D)+!B)) */ ;
    defparam n30318_bdd_4_lut.init = 16'ha0cc;
    PFUMX i27948 (.BLUT(n9873), .ALUT(n30090), .C0(x_cnt[1]), .Z(n30890));
    LUT4 i29243_i11_4_lut (.A(data_r[76]), .B(n3226[88]), .C(\x_cnt[0] ), 
         .D(n32982), .Z(n11_adj_1324)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29243_i11_4_lut.init = 16'hcac0;
    PFUMX i27949 (.BLUT(n9869), .ALUT(n9867), .C0(x_cnt[1]), .Z(n30891));
    LUT4 i28104_3_lut_4_lut (.A(y_cnt[3]), .B(n33063), .C(n32905), .D(n2991), 
         .Z(n31046)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28104_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_413_i4_3_lut_4_lut (.A(y_cnt[3]), .B(n33063), .C(\realv_5[0] ), 
         .D(n2991), .Z(n4_adj_20)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam Mux_413_i4_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i29337 (.D0(n32560), .D1(n32558), .SD(n32777), .Z(n32561));
    L6MUX21 i27952 (.D0(n30888), .D1(n30889), .SD(x_cnt[2]), .Z(n30894));
    L6MUX21 i27954 (.D0(n30892), .D1(n30893), .SD(x_cnt[3]), .Z(n30896));
    PFUMX i27985 (.BLUT(n9851), .ALUT(n14442), .C0(x_cnt[1]), .Z(n30927));
    LUT4 i27879_3_lut_4_lut (.A(y_cnt[3]), .B(n33063), .C(n32785), .D(n2991), 
         .Z(n30821)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i27879_3_lut_4_lut.init = 16'h2f20;
    LUT4 n32191_bdd_3_lut (.A(cnt_scan[1]), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .Z(n32729)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n32191_bdd_3_lut.init = 16'h0202;
    PFUMX i29335 (.BLUT(n9140), .ALUT(n32559), .C0(n32778), .Z(n32560));
    LUT4 i6_4_lut_adj_168 (.A(n30536), .B(n30675), .C(n30343), .D(n30371), 
         .Z(n14_adj_1387)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i6_4_lut_adj_168.init = 16'hfffb;
    LUT4 i28180_3_lut_4_lut (.A(y_cnt[3]), .B(n33063), .C(n32773), .D(n2991), 
         .Z(n31122)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28180_3_lut_4_lut.init = 16'h2f20;
    LUT4 i3_4_lut_adj_169 (.A(n2412), .B(n2413), .C(n2414), .D(n2411), 
         .Z(n13601)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut_adj_169.init = 16'hfffe;
    PFUMX i29333 (.BLUT(n32557), .ALUT(n32556), .C0(n32778), .Z(n32558));
    LUT4 i2_4_lut_adj_170 (.A(n33016), .B(n30657), .C(n4_adj_1399), .D(n33097), 
         .Z(n10_adj_1388)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+!(D))+!B)) */ ;
    defparam i2_4_lut_adj_170.init = 16'hf3f7;
    LUT4 i1_4_lut_adj_171 (.A(cnt[2]), .B(data_reg[5]), .C(n32981), .D(n1489), 
         .Z(n4_adj_1399)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_171.init = 16'hce0a;
    LUT4 i11454_3_lut_4_lut (.A(n33063), .B(y_cnt[3]), .C(\x_cnt[0] ), 
         .D(n33065), .Z(n14443)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i11454_3_lut_4_lut.init = 16'h6f60;
    LUT4 n32191_bdd_3_lut_29485 (.A(state[1]), .B(state[0]), .C(state_back[0]), 
         .Z(n32728)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam n32191_bdd_3_lut_29485.init = 16'h5151;
    LUT4 i3_4_lut_adj_172 (.A(y_cnt_c[5]), .B(y_cnt_c[6]), .C(y_cnt_c[4]), 
         .D(y_cnt_c[7]), .Z(n20137)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    defparam i3_4_lut_adj_172.init = 16'hfffe;
    LUT4 i1_2_lut_adj_173 (.A(y_cnt[2]), .B(n20137), .Z(n30351)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(544[18:19])
    defparam i1_2_lut_adj_173.init = 16'hdddd;
    L6MUX21 i27947 (.D0(n30938), .D1(n30932), .SD(x_cnt[1]), .Z(n30889));
    L6MUX21 i27951 (.D0(n30886), .D1(n30887), .SD(x_cnt[2]), .Z(n30893));
    LUT4 Mux_412_i8_3_lut_4_lut (.A(n33079), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2967[2]), .Z(n8_adj_1400)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_412_i8_3_lut_4_lut.init = 16'h6f60;
    LUT4 Mux_263_i8_3_lut_4_lut (.A(n33079), .B(y_cnt[3]), .C(n32773), 
         .D(n2967[2]), .Z(n8_adj_1401)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_263_i8_3_lut_4_lut.init = 16'h6f60;
    FD1P3IX y_cnt__i1 (.D(n2021[1]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i1.GSR = "DISABLED";
    LUT4 Mux_384_i8_3_lut_4_lut (.A(n34283), .B(y_cnt[3]), .C(n32905), 
         .D(n2975), .Z(n8_adj_1402)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_384_i8_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX y_cnt__i2 (.D(n2021[2]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i2.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_174 (.A(y_cnt[1]), .B(y_cnt[3]), .C(y_cnt[2]), 
         .D(y_cnt_c[4]), .Z(n27766)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_4_lut_adj_174.init = 16'hfffe;
    FD1P3IX y_cnt__i3 (.D(n2021[3]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i3.GSR = "DISABLED";
    LUT4 Mux_406_i8_3_lut_4_lut (.A(n34283), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2975), .Z(n8_adj_1403)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_406_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_257_i8_3_lut_4_lut (.A(n34283), .B(y_cnt[3]), .C(n32773), 
         .D(n2975), .Z(n8_adj_1404)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_257_i8_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX y_cnt__i4 (.D(n2021[4]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i4.GSR = "DISABLED";
    LUT4 i29243_i23_4_lut (.A(n3226[88]), .B(data_r[89]), .C(\x_cnt[0] ), 
         .D(n32982), .Z(n23)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i29243_i23_4_lut.init = 16'hca0a;
    LUT4 Mux_279_i8_3_lut_4_lut (.A(n34283), .B(y_cnt[3]), .C(n32785), 
         .D(n2975), .Z(n8_adj_1306)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_279_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 i3_4_lut_adj_175 (.A(n29984), .B(n32912), .C(n32911), .D(\unit[3] ), 
         .Z(n29985)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_175.init = 16'h0002;
    LUT4 Mux_301_i8_3_lut_4_lut (.A(n34283), .B(y_cnt[3]), .C(n32800), 
         .D(n2975), .Z(n8_adj_1405)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_301_i8_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX y_cnt__i5 (.D(n2021[5]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i5.GSR = "DISABLED";
    LUT4 i27737_4_lut (.A(n13968), .B(n30048), .C(n21071), .D(n14045), 
         .Z(n30675)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27737_4_lut.init = 16'h8000;
    FD1P3IX y_cnt__i6 (.D(n2021[6]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i6.GSR = "DISABLED";
    LUT4 i18392_2_lut_3_lut_4_lut_4_lut (.A(n33068), .B(n13601), .C(n32107), 
         .D(n33101), .Z(n11895)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam i18392_2_lut_3_lut_4_lut_4_lut.init = 16'hd0c0;
    FD1P3IX y_cnt__i7 (.D(n2021[7]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(y_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i7.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_176 (.A(n14261), .B(n27902), .C(cnt[1]), .D(n30282), 
         .Z(n30048)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_176.init = 16'h8880;
    LUT4 i18073_4_lut (.A(cnt[4]), .B(n13967), .C(n32960), .D(n32957), 
         .Z(n21071)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;
    defparam i18073_4_lut.init = 16'hf5c4;
    LUT4 n330_bdd_2_lut_29111_3_lut_4_lut_4_lut (.A(n33068), .B(n13601), 
         .C(n32178), .D(n33101), .Z(n32179)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam n330_bdd_2_lut_29111_3_lut_4_lut_4_lut.init = 16'hd0c0;
    LUT4 n330_bdd_2_lut_29554 (.A(n32733), .B(rst_n_in_c), .Z(n32734)) /* synthesis lut_function=(A (B)) */ ;
    defparam n330_bdd_2_lut_29554.init = 16'h8888;
    LUT4 i1_4_lut_adj_177 (.A(n28157), .B(cnt[1]), .C(n30233), .D(n30282), 
         .Z(n30343)) /* synthesis lut_function=(A+!(B (C (D))+!B (C))) */ ;
    defparam i1_4_lut_adj_177.init = 16'hafef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(n13774), .B(n33130), .C(n13967), 
         .D(n33050), .Z(n13968)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'hfffe;
    CCU2D add_1768_5 (.A0(n3822[0]), .B0(n13605), .C0(\x_cnt[0] ), .D0(x_cnt[3]), 
          .A1(n3822[0]), .B1(n13605), .C1(\x_cnt[0] ), .D1(x_cnt[4]), 
          .CIN(n27550), .COUT(n27551), .S0(n3422[3]), .S1(n3422[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1768_5.INIT0 = 16'h56aa;
    defparam add_1768_5.INIT1 = 16'h56aa;
    defparam add_1768_5.INJECT1_0 = "NO";
    defparam add_1768_5.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_179 (.A(n13774), .B(n33130), .C(n33098), .D(n30258), 
         .Z(n13747)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_179.init = 16'hfffe;
    CCU2D add_475_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n27533), .S1(n3996[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_1.INIT0 = 16'hF000;
    defparam add_475_1.INIT1 = 16'h5555;
    defparam add_475_1.INJECT1_0 = "NO";
    defparam add_475_1.INJECT1_1 = "NO";
    CCU2D add_1768_3 (.A0(n3822[0]), .B0(n13605), .C0(\x_cnt[0] ), .D0(x_cnt[1]), 
          .A1(n33043), .B1(high_word), .C1(x_cnt[2]), .D1(n33009), .CIN(n27549), 
          .COUT(n27550), .S0(n3422[1]), .S1(n3422[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1768_3.INIT0 = 16'h56aa;
    defparam add_1768_3.INIT1 = 16'hddd2;
    defparam add_1768_3.INJECT1_0 = "NO";
    defparam add_1768_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_180 (.A(n14219), .B(n30635), .C(n30039), .D(n30091), 
         .Z(n30371)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_adj_180.init = 16'h7f5f;
    LUT4 i3_4_lut_adj_181 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[1]), 
         .D(n32987), .Z(n30303)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i3_4_lut_adj_181.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_182 (.A(n13774), .B(n33130), .C(n33096), 
         .D(n33055), .Z(n13915)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_182.init = 16'hfffe;
    LUT4 i1_2_lut_rep_505_3_lut_4_lut (.A(n13774), .B(n33130), .C(n13967), 
         .D(cnt[3]), .Z(n32962)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_505_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_507_3_lut_4_lut (.A(n13774), .B(n33130), .C(cnt[6]), 
         .D(cnt[3]), .Z(n32964)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_507_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_500_3_lut_4_lut (.A(n13774), .B(n33130), .C(n33128), 
         .D(cnt[3]), .Z(n32957)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_500_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_224_9 (.A0(y_cnt_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27532), 
          .S0(n2021[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_9.INIT0 = 16'h5aaa;
    defparam add_224_9.INIT1 = 16'h0000;
    defparam add_224_9.INJECT1_0 = "NO";
    defparam add_224_9.INJECT1_1 = "NO";
    LUT4 i28134_4_lut (.A(n33), .B(n37_adj_1378), .C(x_cnt[2]), .D(x_cnt[1]), 
         .Z(n31076)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i28134_4_lut.init = 16'hcac0;
    PFUMX i27938 (.BLUT(n30878), .ALUT(n30879), .C0(n32790), .Z(n3_adj_1321));
    CCU2D add_224_7 (.A0(y_cnt_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27531), .COUT(n27532), .S0(n2021[5]), .S1(n2021[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_7.INIT0 = 16'h5aaa;
    defparam add_224_7.INIT1 = 16'h5aaa;
    defparam add_224_7.INJECT1_0 = "NO";
    defparam add_224_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_183 (.A(n14252), .B(n30576), .C(cnt[5]), .D(n33004), 
         .Z(n30039)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_183.init = 16'haa2a;
    LUT4 n30325_bdd_4_lut (.A(\unit[3] ), .B(n32903), .C(n32911), .D(\x_cnt[0] ), 
         .Z(n31852)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n30325_bdd_4_lut.init = 16'h0001;
    PFUMX i27941 (.BLUT(n30881), .ALUT(n30882), .C0(n32790), .Z(n3_adj_1318));
    LUT4 n1_bdd_3_lut_29227_4_lut (.A(y_cnt[3]), .B(n33070), .C(n3008), 
         .D(n32773), .Z(n32375)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam n1_bdd_3_lut_29227_4_lut.init = 16'h44f0;
    LUT4 i28132_4_lut (.A(n25_adj_1320), .B(n31139), .C(x_cnt[2]), .D(n32982), 
         .Z(n31074)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i28132_4_lut.init = 16'hca0a;
    LUT4 Mux_404_i5_3_lut_4_lut (.A(y_cnt[3]), .B(n33070), .C(\realv_5[0] ), 
         .D(n3008), .Z(n5_adj_21)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam Mux_404_i5_3_lut_4_lut.init = 16'h4f40;
    PFUMX i27945 (.BLUT(n9885), .ALUT(n30950), .C0(x_cnt[1]), .Z(n30887));
    LUT4 realv_3_0__bdd_2_lut_3_lut_4_lut (.A(y_cnt[3]), .B(n33070), .C(n32794), 
         .D(realv_2_0__N_506), .Z(n32507)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam realv_3_0__bdd_2_lut_3_lut_4_lut.init = 16'h0440;
    LUT4 realv_4_1__bdd_3_lut_29404_4_lut (.A(y_cnt[3]), .B(n33070), .C(n3008), 
         .D(n32800), .Z(n32588)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam realv_4_1__bdd_3_lut_29404_4_lut.init = 16'h44f0;
    L6MUX21 i27946 (.D0(n30947), .D1(n30941), .SD(x_cnt[1]), .Z(n30888));
    LUT4 Mux_382_i5_3_lut_4_lut (.A(y_cnt[3]), .B(n33070), .C(n32905), 
         .D(n3008), .Z(n5_c)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam Mux_382_i5_3_lut_4_lut.init = 16'h4f40;
    LUT4 realv_4_1__bdd_3_lut_29450_4_lut_4_lut (.A(n33060), .B(y_cnt[3]), 
         .C(n32800), .D(n33070), .Z(n32688)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam realv_4_1__bdd_3_lut_29450_4_lut_4_lut.init = 16'h3606;
    PFUMX i27990 (.BLUT(n30930), .ALUT(n30931), .C0(\x_cnt[0] ), .Z(n30932));
    LUT4 n4_bdd_3_lut_28937_4_lut_4_lut (.A(n33060), .B(y_cnt[3]), .C(n32905), 
         .D(n33070), .Z(n31842)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam n4_bdd_3_lut_28937_4_lut_4_lut.init = 16'h3606;
    LUT4 Mux_405_i5_3_lut_4_lut_4_lut (.A(n33060), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n33070), .Z(n5_adj_22)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam Mux_405_i5_3_lut_4_lut_4_lut.init = 16'h3606;
    LUT4 Mux_278_i5_3_lut_4_lut_4_lut (.A(n33060), .B(y_cnt[3]), .C(n32785), 
         .D(n33070), .Z(n5_adj_23)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam Mux_278_i5_3_lut_4_lut_4_lut.init = 16'h3606;
    FD1P3IX data_reg_i0_i5 (.D(n2_adj_1358), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i5.GSR = "DISABLED";
    LUT4 Mux_256_i5_3_lut_4_lut_4_lut (.A(n33060), .B(y_cnt[3]), .C(n32773), 
         .D(n33070), .Z(n5_adj_24)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam Mux_256_i5_3_lut_4_lut_4_lut.init = 16'h3606;
    LUT4 i1_2_lut_rep_586 (.A(\x_cnt[0] ), .B(n13605), .Z(n33043)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_rep_586.init = 16'heeee;
    LUT4 i27682_2_lut_3_lut_4_lut (.A(\x_cnt[0] ), .B(n13605), .C(cnt_scan[2]), 
         .D(cnt_scan[0]), .Z(n30617)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i27682_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i28_3_lut_rep_493_4_lut (.A(\x_cnt[0] ), .B(n13605), .C(cnt_scan[0]), 
         .D(n32987), .Z(n32950)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i28_3_lut_rep_493_4_lut.init = 16'h1f10;
    LUT4 i18786_2_lut_rep_554_3_lut (.A(\x_cnt[0] ), .B(n13605), .C(cnt_scan[0]), 
         .Z(n33011)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i18786_2_lut_rep_554_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_adj_184 (.A(\x_cnt[0] ), .B(n13605), .C(high_word), 
         .Z(n27862)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_3_lut_adj_184.init = 16'h1e1e;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(\x_cnt[0] ), .B(n13605), .C(n32987), 
         .D(cnt_scan[0]), .Z(n30023)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B !(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hee0f;
    LUT4 i1_2_lut_rep_497_2_lut_3_lut (.A(\x_cnt[0] ), .B(n13605), .C(cnt_scan[0]), 
         .Z(n32954)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_rep_497_2_lut_3_lut.init = 16'h1010;
    LUT4 i22249_1_lut_rep_552_2_lut (.A(\x_cnt[0] ), .B(n13605), .Z(n33009)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i22249_1_lut_rep_552_2_lut.init = 16'h1111;
    LUT4 i28131_4_lut (.A(n31085), .B(n32180), .C(x_cnt[2]), .D(n32982), 
         .Z(n31073)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i28131_4_lut.init = 16'hcac0;
    LUT4 i28332_3_lut (.A(n31073), .B(n31074), .C(x_cnt[3]), .Z(n31075)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28332_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[5]), .Z(n30091)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i17979_2_lut_3_lut (.A(\x_cnt[0] ), .B(n13605), .C(high_word), 
         .Z(n3822[0])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i17979_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_3_lut_4_lut_adj_185 (.A(n711), .B(n33081), .C(n107), .D(\cnt_start[0] ), 
         .Z(n293)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_185.init = 16'h1011;
    LUT4 i28618_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n711), .B(n33081), .C(\cnt_write[0] ), 
         .D(n34280), .Z(n44)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i28618_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 i28640_2_lut_3_lut_3_lut_4_lut (.A(n711), .B(n33081), .C(n33012), 
         .D(\cnt_read[0] ), .Z(n30228)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i28640_2_lut_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i28622_2_lut_3_lut_3_lut_4_lut (.A(n711), .B(n33081), .C(n34280), 
         .D(n33120), .Z(n45)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i28622_2_lut_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_186 (.A(n711), .B(n33081), .C(n299), .D(\cnt_stop[0] ), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_186.init = 16'h1011;
    LUT4 i2_3_lut_rep_588 (.A(cnt_write[4]), .B(cnt_write[0]), .C(n33122), 
         .Z(n33045)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_588.init = 16'hfefe;
    LUT4 i1_4_lut_adj_187 (.A(n33097), .B(cnt[2]), .C(n30677), .D(n32965), 
         .Z(n28157)) /* synthesis lut_function=(!(A+!(B ((D)+!C)+!B !(C)))) */ ;
    defparam i1_4_lut_adj_187.init = 16'h4505;
    LUT4 i27739_4_lut (.A(n33128), .B(cnt[3]), .C(n33004), .D(n33031), 
         .Z(n30677)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i27739_4_lut.init = 16'hfaea;
    PFUMX Mux_264_i15 (.BLUT(n7_adj_1355), .ALUT(n14_adj_1361), .C0(n32766), 
          .Z(n2248)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;
    LUT4 i26_2_lut (.A(cnt_scan[0]), .B(n32987), .Z(n25161)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i26_2_lut.init = 16'h1111;
    L6MUX21 i28935 (.D0(n31911), .D1(n31909), .SD(n32904), .Z(n31912));
    LUT4 i18966_3_lut_4_lut_4_lut (.A(n33100), .B(n14097), .C(cnt[2]), 
         .D(n32999), .Z(n21116)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i18966_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 i5_4_lut_adj_188 (.A(n30318), .B(n7_adj_1288), .C(n30359), .D(n8_adj_1375), 
         .Z(n30360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_188.init = 16'hfffe;
    LUT4 i1_2_lut_rep_501_3_lut_4_lut_4_lut (.A(n33100), .B(n33097), .C(n33099), 
         .D(n13774), .Z(n32958)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_501_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_rep_543_3_lut_4_lut (.A(cnt[3]), .B(n33128), .C(n33130), 
         .D(n13774), .Z(n33000)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_543_3_lut_4_lut.init = 16'hfffd;
    PFUMX i29317 (.BLUT(n32515), .ALUT(n32511), .C0(n32771), .Z(n32516));
    LUT4 i1_2_lut_3_lut_4_lut_adj_189 (.A(cnt[3]), .B(n33128), .C(n33098), 
         .D(n13774), .Z(n14262)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_189.init = 16'hfffd;
    LUT4 i18596_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n10467)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam i18596_3_lut.init = 16'h2121;
    LUT4 i1_4_lut_adj_190 (.A(n1_adj_1344), .B(x_cnt[7]), .C(n30972), 
         .D(x_cnt[6]), .Z(n4_adj_1315)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_190.init = 16'h3022;
    LUT4 i16_4_lut (.A(x_cnt[1]), .B(n30978), .C(x_cnt[4]), .D(n32438), 
         .Z(n5_adj_1343)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i16_4_lut.init = 16'hcac0;
    LUT4 i18207_2_lut (.A(n127), .B(x_cnt[7]), .Z(n2834)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i18207_2_lut.init = 16'h2222;
    PFUMX i28933 (.BLUT(n1_adj_25), .ALUT(n31910), .C0(n32906), .Z(n31911));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n33100), .B(n30276), .C(n33099), 
         .D(n13774), .Z(n30277)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_adj_191 (.A(n33065), .B(n30331), .C(n32774), .D(n32766), 
         .Z(n30087)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_191.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_192 (.A(n33100), .B(n33095), .C(n33099), 
         .D(n13774), .Z(n14097)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_192.init = 16'hfffd;
    LUT4 n14100_bdd_3_lut_4_lut_4_lut (.A(n33100), .B(n33095), .C(n33007), 
         .D(n33026), .Z(n31993)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;
    defparam n14100_bdd_3_lut_4_lut_4_lut.init = 16'hfcdc;
    LUT4 y_cnt_3__bdd_4_lut (.A(y_cnt[3]), .B(n34299), .C(n34303), .D(n34301), 
         .Z(n2975)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A !(B (C+(D))+!B !(C (D)+!C !(D))))) */ ;
    defparam y_cnt_3__bdd_4_lut.init = 16'h655a;
    LUT4 i3_4_lut_adj_193 (.A(n33065), .B(\decade[3] ), .C(n32906), .D(n32898), 
         .Z(n30166)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_193.init = 16'h0002;
    LUT4 i27518_rep_201_2_lut_3_lut_4_lut_4_lut (.A(n33100), .B(cnt[1]), 
         .C(cnt[3]), .D(n13774), .Z(n31566)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i27518_rep_201_2_lut_3_lut_4_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_rep_508_3_lut_4_lut_4_lut (.A(n33100), .B(cnt[1]), .C(cnt[3]), 
         .D(n13774), .Z(n32965)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_508_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_194 (.A(n33100), .B(n30258), .C(n33097), 
         .D(n33029), .Z(n14189)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_194.init = 16'hfffd;
    LUT4 i3_2_lut_3_lut_4_lut_4_lut (.A(n33100), .B(n14028), .C(n14262), 
         .D(n33029), .Z(n30501)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i3_2_lut_3_lut_4_lut_4_lut.init = 16'hf0d0;
    PFUMX i29315 (.BLUT(n32768), .ALUT(n32513), .C0(n32777), .Z(n32514));
    LUT4 i27713_3_lut_4_lut_4_lut (.A(n33100), .B(n33097), .C(n33031), 
         .D(n33029), .Z(n30649)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;
    defparam i27713_3_lut_4_lut_4_lut.init = 16'hfcdc;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_195 (.A(n33100), .B(n30258), .C(n33095), 
         .D(n33029), .Z(n27902)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_195.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_196 (.A(n33100), .B(n14028), .C(n33097), 
         .D(n33029), .Z(n14252)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_196.init = 16'hfffd;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n33100), .B(cnt[4]), .C(n33128), .D(n33029), 
         .Z(n15_adj_1290)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_197 (.A(n33100), .B(n14028), .C(n33095), 
         .D(n33029), .Z(n14205)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_197.init = 16'hfffd;
    LUT4 i18205_2_lut_3_lut (.A(n1696[1]), .B(state[2]), .C(n25040), .Z(n10872)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i18205_2_lut_3_lut.init = 16'h0202;
    LUT4 Mux_263_i15_4_lut (.A(n32490), .B(n8_adj_1401), .C(n32766), .D(n32765), 
         .Z(n2247)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_263_i15_4_lut.init = 16'h0aca;
    CCU2D add_1768_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n33043), .B1(high_word), .C1(\x_cnt[0] ), .D1(GND_net), 
          .COUT(n27549), .S1(n3422[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1768_1.INIT0 = 16'hF000;
    defparam add_1768_1.INIT1 = 16'hd2d2;
    defparam add_1768_1.INJECT1_0 = "NO";
    defparam add_1768_1.INJECT1_1 = "NO";
    PFUMX i28931 (.BLUT(n31908), .ALUT(n31907), .C0(n32906), .Z(n31909));
    CCU2D add_224_5 (.A0(y_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27530), .COUT(n27531), .S0(n2021[3]), .S1(n2021[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_5.INIT0 = 16'h5aaa;
    defparam add_224_5.INIT1 = 16'h5aaa;
    defparam add_224_5.INJECT1_0 = "NO";
    defparam add_224_5.INJECT1_1 = "NO";
    CCU2D add_187_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27521), 
          .COUT(n27522), .S0(n1696[1]), .S1(n1696[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_3.INIT0 = 16'h5aaa;
    defparam add_187_3.INIT1 = 16'h5aaa;
    defparam add_187_3.INJECT1_0 = "NO";
    defparam add_187_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_198 (.A(n33100), .B(cnt[1]), .C(n33007), 
         .D(n33029), .Z(n27)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_198.init = 16'h0f8f;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_199 (.A(n33100), .B(n14028), .C(n33094), 
         .D(n33029), .Z(n30233)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_199.init = 16'hffdf;
    LUT4 Mux_262_i15_4_lut (.A(n30963), .B(n8_adj_1414), .C(n32766), .D(n32765), 
         .Z(n2246)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_262_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_391_i7_3_lut_4_lut (.A(n33038), .B(n32898), .C(n32906), .D(n31048), 
         .Z(n7_adj_1415)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam Mux_391_i7_3_lut_4_lut.init = 16'hf202;
    LUT4 n31843_bdd_3_lut_29049_4_lut (.A(n33038), .B(n32898), .C(n32906), 
         .D(n31848), .Z(n32104)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n31843_bdd_3_lut_29049_4_lut.init = 16'hf202;
    PFUMX i29310 (.BLUT(n32508), .ALUT(n32507), .C0(n32785), .Z(n32509));
    LUT4 Mux_262_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n32773), .Z(n8_adj_1414)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_262_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_261_i15_4_lut (.A(n32468), .B(n8_adj_1416), .C(n32766), .D(n32765), 
         .Z(n2245)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_261_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_412_i4_3_lut (.A(n2991), .B(n3003), .C(\realv_5[0] ), .Z(n4_adj_26)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_412_i4_3_lut.init = 16'hcaca;
    LUT4 n31843_bdd_4_lut_4_lut (.A(n32897), .B(n8_adj_1418), .C(n8_adj_1419), 
         .D(\x_cnt[0] ), .Z(n32103)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam n31843_bdd_4_lut_4_lut.init = 16'h4450;
    LUT4 n2977_bdd_4_lut (.A(n2967[2]), .B(n32765), .C(n32773), .D(n3045[9]), 
         .Z(n32061)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam n2977_bdd_4_lut.init = 16'h3202;
    LUT4 Mux_412_i5_3_lut (.A(n3016), .B(n33061), .C(\realv_5[0] ), .Z(n5_adj_27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_412_i5_3_lut.init = 16'hcaca;
    LUT4 i7356_3_lut (.A(n7_adj_1334), .B(n10189), .C(y_cnt[3]), .Z(n8_adj_1416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i7356_3_lut.init = 16'hcaca;
    LUT4 i18334_4_lut_4_lut (.A(n32897), .B(n32905), .C(n33062), .D(n3032[1]), 
         .Z(n14_adj_1421)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i18334_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_548_3_lut_4_lut (.A(cnt[2]), .B(n33100), .C(n33096), 
         .D(n13774), .Z(n33005)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i1_2_lut_rep_548_3_lut_4_lut.init = 16'hfff7;
    PFUMX i27996 (.BLUT(n30936), .ALUT(n30937), .C0(\x_cnt[0] ), .Z(n30938));
    LUT4 i18333_4_lut_4_lut (.A(n32897), .B(n32905), .C(n33039), .D(n2967[2]), 
         .Z(n14_adj_1422)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i18333_4_lut_4_lut.init = 16'h5140;
    LUT4 i28040_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n8_adj_1423), 
         .D(n31953), .Z(n30982)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28040_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_544_3_lut_4_lut (.A(cnt[2]), .B(n33100), .C(n33130), 
         .D(n13774), .Z(n33001)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i1_2_lut_rep_544_3_lut_4_lut.init = 16'hfff7;
    LUT4 i28039_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n8_adj_1424), 
         .D(n31029), .Z(n30981)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28039_4_lut_4_lut.init = 16'h7340;
    LUT4 i28044_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n8_adj_1402), 
         .D(n31042), .Z(n30986)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28044_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_387_i8_3_lut (.A(n3032[7]), .B(n3045[5]), .C(n32905), .Z(n8_adj_1425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i8_3_lut.init = 16'hcaca;
    PFUMX i27999 (.BLUT(n30939), .ALUT(n30940), .C0(\x_cnt[0] ), .Z(n30941));
    LUT4 i28043_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n3032[7]), 
         .D(n31885), .Z(n30985)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28043_4_lut_4_lut.init = 16'h7340;
    LUT4 i28042_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n8_adj_1426), 
         .D(n31870), .Z(n30984)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28042_4_lut_4_lut.init = 16'h7340;
    LUT4 i28041_4_lut_4_lut (.A(n32897), .B(\decade[3] ), .C(n8_adj_1425), 
         .D(n31959), .Z(n30983)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i28041_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_520_3_lut_4_lut_4_lut (.A(n33100), .B(cnt[3]), .C(n33040), 
         .D(n33128), .Z(n32977)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_520_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i2_2_lut_rep_551_3_lut_4_lut_4_lut (.A(n33100), .B(cnt[3]), .C(n13774), 
         .D(n33128), .Z(n33008)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_2_lut_rep_551_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 Mux_260_i15_4_lut (.A(n32476), .B(n8_adj_1427), .C(n32766), .D(n32765), 
         .Z(n2244)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_260_i8_3_lut (.A(n3032[7]), .B(n3045[5]), .C(n32773), .Z(n8_adj_1427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i8_3_lut.init = 16'hcaca;
    LUT4 realv_1_0__bdd_4_lut (.A(n32767), .B(n32790), .C(n2896), .D(n33132), 
         .Z(n3_c)) /* synthesis lut_function=(A (B (D))+!A (B (C)+!B (D))) */ ;
    defparam realv_1_0__bdd_4_lut.init = 16'hd940;
    LUT4 Mux_386_i8_3_lut (.A(n3032[7]), .B(n3045[6]), .C(n32905), .Z(n8_adj_1426)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_386_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_328_i1_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(\realv_5[0] ), 
         .D(n33101), .Z(n1_adj_28)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam Mux_328_i1_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 Mux_259_i15_4_lut (.A(n32429), .B(n8_adj_1429), .C(n32766), .D(n32765), 
         .Z(n2243)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_259_i15_4_lut.init = 16'h0aca;
    LUT4 i27923_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(n32800), 
         .D(n33101), .Z(n30865)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i27923_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i28015_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(n32773), 
         .D(n33101), .Z(n30957)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i28015_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 n31965_bdd_4_lut_4_lut (.A(n32902), .B(\x_cnt[0] ), .C(n8_adj_1400), 
         .D(n8_adj_1430), .Z(n32171)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam n31965_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 Mux_259_i8_3_lut (.A(n3032[7]), .B(n3045[6]), .C(n32773), .Z(n8_adj_1429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_259_i8_3_lut.init = 16'hcaca;
    LUT4 n30876_bdd_4_lut (.A(n32773), .B(n32774), .C(n2896), .D(n33132), 
         .Z(n32062)) /* synthesis lut_function=(A (B (D))+!A (B (C)+!B (D))) */ ;
    defparam n30876_bdd_4_lut.init = 16'hd940;
    LUT4 i28293_3_lut_4_lut_4_lut (.A(n32902), .B(n7_adj_1431), .C(\unit[3] ), 
         .D(n8_adj_1432), .Z(n31019)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28293_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i27859_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(n32785), 
         .D(n33101), .Z(n30801)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i27859_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 Mux_258_i15_4_lut (.A(n32392), .B(n3032[7]), .C(n32766), .D(n32765), 
         .Z(n2242)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_258_i15_4_lut.init = 16'h0aca;
    L6MUX21 i28156 (.D0(n31096), .D1(n31097), .SD(cnt_write[3]), .Z(n31098));
    LUT4 i28081_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(n32905), 
         .D(n33101), .Z(n31023)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i28081_3_lut_4_lut_4_lut.init = 16'h5c0c;
    L6MUX21 i28159 (.D0(n31099), .D1(n32755), .SD(x_cnt[2]), .Z(n31101));
    PFUMX i28005 (.BLUT(n30945), .ALUT(n30946), .C0(\x_cnt[0] ), .Z(n30947));
    LUT4 i27936_3_lut_4_lut_4_lut (.A(n33142), .B(n2886), .C(n32767), 
         .D(n33101), .Z(n30878)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;
    defparam i27936_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 Mux_383_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(n32905), .Z(n8_adj_1419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_383_i8_3_lut.init = 16'hcaca;
    LUT4 i28076_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1433), 
         .D(n7_adj_1300), .Z(n31018)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28076_4_lut_4_lut.init = 16'h7340;
    LUT4 i28075_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1403), 
         .D(n7_adj_1299), .Z(n31017)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28075_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_257_i15_4_lut (.A(n31121), .B(n8_adj_1404), .C(n32766), .D(n32765), 
         .Z(n2241)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_257_i15_4_lut.init = 16'h0aca;
    LUT4 i28074_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n3032[7]), 
         .D(n7_adj_1298), .Z(n31016)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28074_4_lut_4_lut.init = 16'h7340;
    LUT4 i28070_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1434), 
         .D(n7_adj_1297), .Z(n31012)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28070_4_lut_4_lut.init = 16'h7340;
    LUT4 i28069_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1435), 
         .D(n7_adj_1296), .Z(n31011)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28069_4_lut_4_lut.init = 16'h7340;
    LUT4 i28068_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1436), 
         .D(n7_adj_1295), .Z(n31010)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28068_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_389_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n32905), .Z(n8_adj_1424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_389_i8_3_lut.init = 16'hcaca;
    LUT4 i6983_3_lut (.A(n7_adj_1334), .B(n9733), .C(y_cnt[3]), .Z(n8_adj_1423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i6983_3_lut.init = 16'hcaca;
    LUT4 i28067_4_lut_4_lut (.A(n32902), .B(\unit[3] ), .C(n8_adj_1437), 
         .D(n7_adj_1293), .Z(n31009)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i28067_4_lut_4_lut.init = 16'h7340;
    LUT4 n31843_bdd_3_lut (.A(n31843), .B(n31844), .C(n32906), .Z(n32105)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n31843_bdd_3_lut.init = 16'hacac;
    LUT4 Mux_241_i2_3_lut (.A(n2913), .B(n2967[2]), .C(n32767), .Z(n2_adj_1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_241_i2_3_lut.init = 16'hcaca;
    L6MUX21 i28021 (.D0(n30961), .D1(n30962), .SD(n32772), .Z(n30963));
    LUT4 mux_375_Mux_1_i15_3_lut_4_lut (.A(y_cnt[2]), .B(n33110), .C(y_cnt[3]), 
         .D(n33079), .Z(n2991)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_375_Mux_1_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_4_lut_adj_200 (.A(n1_adj_29), .B(n32945), .C(n2_adj_1439), 
         .D(n32790), .Z(data_r_131__N_1113[114])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_200.init = 16'hc088;
    LUT4 mux_357_Mux_4_i15_3_lut_4_lut (.A(y_cnt[2]), .B(n33142), .C(y_cnt[3]), 
         .D(n33079), .Z(n2898)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_357_Mux_4_i15_3_lut_4_lut.init = 16'h7f70;
    LUT4 Mux_239_i2_3_lut (.A(n2903[4]), .B(n2975), .C(n32767), .Z(n2_adj_1439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_239_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_238_i1_3_lut (.A(n2884), .B(n2898), .C(n32767), .Z(n1_adj_29)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_238_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_201 (.A(n1_adj_29), .B(n32945), .C(n2_adj_1440), 
         .D(n32790), .Z(data_r_131__N_1113[115])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_201.init = 16'hc088;
    LUT4 Mux_238_i2_3_lut (.A(n2903[5]), .B(n2975), .C(n32767), .Z(n2_adj_1440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_238_i2_3_lut.init = 16'hcaca;
    LUT4 mux_375_Mux_9_i15_3_lut_4_lut (.A(y_cnt[2]), .B(n33142), .C(y_cnt[3]), 
         .D(n33079), .Z(n2980[9])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_375_Mux_9_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_4_lut_adj_202 (.A(n9124), .B(n32945), .C(n2_adj_1441), .D(n32790), 
         .Z(data_r_131__N_1113[116])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_202.init = 16'hc088;
    LUT4 Mux_237_i2_3_lut (.A(n2903[6]), .B(n2973), .C(n32767), .Z(n2_adj_1441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_237_i2_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_407 (.A(high_word), .B(n4_adj_1315), .Z(n32864)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_407.init = 16'h8888;
    LUT4 i17942_4_lut_4_lut (.A(n32782), .B(n32800), .C(n33062), .D(n3032[1]), 
         .Z(n14_adj_30)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i17942_4_lut_4_lut.init = 16'h5140;
    LUT4 n1_bdd_3_lut_28979_then_4_lut (.A(n32915), .B(\voltage_code[1] ), 
         .C(n4_adj_26), .D(n5_adj_27), .Z(n33177)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n1_bdd_3_lut_28979_then_4_lut.init = 16'hf690;
    LUT4 i1_3_lut_adj_203 (.A(n21116), .B(data_reg[8]), .C(n1489), .Z(n6_adj_1374)) /* synthesis lut_function=((B (C))+!A) */ ;
    defparam i1_3_lut_adj_203.init = 16'hd5d5;
    LUT4 i1_2_lut_4_lut_adj_204 (.A(n34299), .B(n33142), .C(y_cnt[3]), 
         .D(n20137), .Z(n2411)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_204.init = 16'h0004;
    LUT4 i1_4_lut_adj_205 (.A(n9124), .B(n32945), .C(n2_adj_1443), .D(n32790), 
         .Z(data_r_131__N_1113[117])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_205.init = 16'hc088;
    LUT4 mux_2573_i5_3_lut_rep_301_4_lut_4_lut (.A(high_word), .B(n4_adj_1315), 
         .C(\ctrlword_595_3[13] ), .D(n2834), .Z(n32758)) /* synthesis lut_function=(A (B+!(C))+!A !(C+(D))) */ ;
    defparam mux_2573_i5_3_lut_rep_301_4_lut_4_lut.init = 16'h8a8f;
    LUT4 Mux_413_i8_3_lut_4_lut (.A(n33140), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3032[1]), .Z(n8_adj_1430)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_413_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_236_i2_3_lut (.A(n2903[7]), .B(n2973), .C(n32767), .Z(n2_adj_1443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_236_i2_3_lut.init = 16'hcaca;
    LUT4 i17927_4_lut_4_lut (.A(n32782), .B(n32800), .C(n33039), .D(n2967[2]), 
         .Z(n14_adj_31)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i17927_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_adj_206 (.A(cnt_scan[1]), .B(clk_in_c_enable_1), .C(n33080), 
         .D(n4_adj_1445), .Z(clk_in_c_enable_38)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_206.init = 16'hc8c0;
    L6MUX21 i29297 (.D0(n32489), .D1(n32487), .SD(n32774), .Z(n32490));
    LUT4 Mux_404_i7_3_lut_4_lut (.A(n32911), .B(n33013), .C(n32912), .D(n6_adj_32), 
         .Z(n7_adj_1431)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_404_i7_3_lut_4_lut.init = 16'hf404;
    LUT4 i27854_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1447), 
         .D(n32681), .Z(n30796)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27854_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i28179 (.D0(n31119), .D1(n31120), .SD(n32772), .Z(n31121));
    LUT4 Mux_382_i8_3_lut_4_lut (.A(n33124), .B(y_cnt[3]), .C(n32905), 
         .D(n3032[1]), .Z(n8_adj_1418)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_382_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_277_i8_3_lut_4_lut (.A(n33124), .B(y_cnt[3]), .C(n32785), 
         .D(n3032[1]), .Z(n8_adj_1308)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_277_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_411_i8_3_lut (.A(n2975), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n8_adj_1437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_404_i8_3_lut_4_lut (.A(n33124), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3032[1]), .Z(n8_adj_1432)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_404_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_299_i8_3_lut_4_lut (.A(n33124), .B(y_cnt[3]), .C(n32800), 
         .D(n3032[1]), .Z(n8_adj_33)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_299_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 n1_bdd_3_lut_28979_else_4_lut (.A(n32915), .B(\voltage_code[1] ), 
         .C(n5_adj_34), .D(n4_adj_20), .Z(n33176)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n1_bdd_3_lut_28979_else_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_521_3_lut_4_lut_4_lut (.A(n33100), .B(n33050), .C(n33130), 
         .D(n13774), .Z(n32978)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_rep_521_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i27853_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1450), 
         .D(n30871), .Z(n30795)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27853_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_569_3_lut (.A(cnt[3]), .B(cnt[1]), .C(n13774), .Z(n33026)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(230[16:17])
    defparam i1_2_lut_rep_569_3_lut.init = 16'hfbfb;
    PFUMX i29295 (.BLUT(n1_adj_35), .ALUT(n32488), .C0(n32772), .Z(n32489));
    LUT4 i27851_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1452), 
         .D(n32662), .Z(n30793)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27851_4_lut_4_lut.init = 16'h7340;
    LUT4 i28097_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n32905), .Z(n31039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28097_3_lut.init = 16'hcaca;
    LUT4 i28096_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n32905), .Z(n31038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28096_3_lut.init = 16'hcaca;
    LUT4 i18105_2_lut_rep_489_3_lut_4_lut_4_lut (.A(n33100), .B(n33006), 
         .C(n33034), .D(n33000), .Z(n32946)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B+(C))) */ ;
    defparam i18105_2_lut_rep_489_3_lut_4_lut_4_lut.init = 16'hfc54;
    LUT4 i6920_3_lut (.A(n7_adj_1334), .B(n9967), .C(y_cnt[3]), .Z(n8_adj_1436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i6920_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_559_3_lut_4_lut (.A(cnt[2]), .B(n33098), .C(n33096), 
         .D(n13774), .Z(n33016)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(180[16:18])
    defparam i1_2_lut_rep_559_3_lut_4_lut.init = 16'hfffd;
    LUT4 Mux_409_i8_3_lut (.A(n3032[7]), .B(n3045[5]), .C(\realv_5[0] ), 
         .Z(n8_adj_1435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i8_3_lut (.A(n3032[7]), .B(n3045[6]), .C(\realv_5[0] ), 
         .Z(n8_adj_1434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i8_3_lut.init = 16'hcaca;
    LUT4 n32731_bdd_3_lut_4_lut (.A(n33082), .B(state[0]), .C(state[1]), 
         .D(n32730), .Z(n32732)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n32731_bdd_3_lut_4_lut.init = 16'hf707;
    LUT4 i28596_2_lut_rep_643 (.A(cnt[6]), .B(cnt[0]), .Z(n33100)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i28596_2_lut_rep_643.init = 16'h4444;
    L6MUX21 i27950 (.D0(n30884), .D1(n30885), .SD(x_cnt[2]), .Z(n30892));
    LUT4 i1_2_lut_rep_689 (.A(cnt_scan[1]), .B(cnt_scan[2]), .Z(n33146)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_689.init = 16'heeee;
    PFUMX i28019 (.BLUT(n30957), .ALUT(n30958), .C0(n32774), .Z(n30961));
    LUT4 i1_2_lut_rep_525_3_lut_3_lut_4_lut (.A(n20137), .B(n33142), .C(n33101), 
         .D(n13601), .Z(n32982)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(544[18:19])
    defparam i1_2_lut_rep_525_3_lut_3_lut_4_lut.init = 16'hff10;
    PFUMX i29293 (.BLUT(n32486), .ALUT(n32485), .C0(n32772), .Z(n32487));
    LUT4 i27850_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1453), 
         .D(n32687), .Z(n30792)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27850_4_lut_4_lut.init = 16'h7340;
    PFUMX i28020 (.BLUT(n30959), .ALUT(n30960), .C0(n32774), .Z(n30962));
    LUT4 i27848_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1405), 
         .D(n30911), .Z(n30790)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27848_4_lut_4_lut.init = 16'h7340;
    FD1P3IX y_cnt__i1_rep_707 (.D(n2021[1]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(n34301)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i1_rep_707.GSR = "DISABLED";
    LUT4 i2_3_lut_4_lut_adj_207 (.A(cnt_scan[1]), .B(cnt_scan[2]), .C(cnt_scan[0]), 
         .D(state[0]), .Z(n13543)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_4_lut_adj_207.init = 16'h1000;
    LUT4 i4629_3_lut_4_lut (.A(cnt_write[2]), .B(n33123), .C(cnt_write[3]), 
         .D(cnt_write[4]), .Z(DA_LCD_N_1249[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(588[20:29])
    defparam i4629_3_lut_4_lut.init = 16'h7f80;
    LUT4 Mux_405_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(\realv_5[0] ), 
         .Z(n8_adj_1433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_405_i8_3_lut.init = 16'hcaca;
    LUT4 i27847_4_lut_4_lut (.A(n32782), .B(n32783), .C(n3032[7]), .D(n32668), 
         .Z(n30789)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27847_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_379_Mux_1_i15_3_lut_4_lut (.A(n33136), .B(n34299), .C(y_cnt[3]), 
         .D(n33143), .Z(n3032[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_379_Mux_1_i15_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_387_i1_3_lut (.A(n2884), .B(n2898), .C(n32905), .Z(n1_adj_1342)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i1_3_lut.init = 16'hcaca;
    LUT4 i27844_4_lut_4_lut (.A(n32782), .B(n32783), .C(n8_adj_1454), 
         .D(n32694), .Z(n30786)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i27844_4_lut_4_lut.init = 16'h7340;
    LUT4 i6982_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(n32905), .D(n33077), 
         .Z(n9733)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6982_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7323_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(n32785), .D(n33077), 
         .Z(n10157)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7323_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7282_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(n32800), .D(n33077), 
         .Z(n10116)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7282_3_lut_4_lut.init = 16'h2f20;
    LUT4 n32106_bdd_3_lut (.A(n32106), .B(n32103), .C(\decade[3] ), .Z(n32107)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n32106_bdd_3_lut.init = 16'hcaca;
    LUT4 i27526_2_lut_3_lut_4_lut (.A(cnt_scan[1]), .B(cnt_scan[2]), .C(state[2]), 
         .D(state[1]), .Z(n30448)) /* synthesis lut_function=(A (C+!(D))+!A ((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i27526_2_lut_3_lut_4_lut.init = 16'hf1ff;
    LUT4 mux_356_Mux_3_i15_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(n33143), .Z(n2886)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_356_Mux_3_i15_3_lut_4_lut.init = 16'hf202;
    LUT4 i7152_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n33077), .Z(n9967)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7152_3_lut_4_lut.init = 16'h2f20;
    PFUMX i29285 (.BLUT(n32477), .ALUT(n33077), .C0(y_cnt[3]), .Z(n9171));
    LUT4 i7355_3_lut_4_lut (.A(n33136), .B(y_cnt[2]), .C(n32773), .D(n33077), 
         .Z(n10189)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7355_3_lut_4_lut.init = 16'h2f20;
    CCU2D sub_2548_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n27548), .S0(n3994));
    defparam sub_2548_add_2_cout.INIT0 = 16'h0000;
    defparam sub_2548_add_2_cout.INIT1 = 16'h0000;
    defparam sub_2548_add_2_cout.INJECT1_0 = "NO";
    defparam sub_2548_add_2_cout.INJECT1_1 = "NO";
    LUT4 i6_4_lut_adj_208 (.A(n11_adj_1455), .B(n31994), .C(n33095), .D(n30501), 
         .Z(n30030)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i6_4_lut_adj_208.init = 16'h8880;
    LUT4 i28084_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n32905), .Z(n31026)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28084_3_lut.init = 16'hcaca;
    L6MUX21 i29282 (.D0(n32475), .D1(n32473), .SD(n32774), .Z(n32476));
    LUT4 i4_4_lut_adj_209 (.A(n21767), .B(n8_adj_1332), .C(cnt[2]), .D(n32974), 
         .Z(n11_adj_1455)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i4_4_lut_adj_209.init = 16'h8880;
    LUT4 i2_3_lut_4_lut_adj_210 (.A(rst_n_in_c), .B(n33138), .C(cnt_scan[1]), 
         .D(cnt_scan[0]), .Z(n3_adj_1456)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i2_3_lut_4_lut_adj_210.init = 16'h8000;
    LUT4 i28083_3_lut (.A(n2898), .B(n2993[3]), .C(n32905), .Z(n31025)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28083_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_211 (.A(rst_n_in_c), .B(n33138), .C(clk_in_c_enable_148), 
         .D(state[0]), .Z(n25090)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_3_lut_4_lut_adj_211.init = 16'hf070;
    PFUMX i29280 (.BLUT(n1_adj_1457), .ALUT(n32474), .C0(n32772), .Z(n32475));
    LUT4 mux_380_Mux_6_i15_3_lut_4_lut (.A(y_cnt[0]), .B(n33124), .C(y_cnt[3]), 
         .D(n33143), .Z(n3045[6])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_380_Mux_6_i15_3_lut_4_lut.init = 16'hf202;
    LUT4 i20_3_lut (.A(cnt[3]), .B(cnt[0]), .C(cnt[2]), .Z(n9_adj_1386)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(218[13:21])
    defparam i20_3_lut.init = 16'h9898;
    LUT4 i6416_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(\realv_5[0] ), 
         .D(n33143), .Z(n9157)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6416_3_lut_4_lut.init = 16'hf202;
    PFUMX i28177 (.BLUT(n31115), .ALUT(n31116), .C0(n32774), .Z(n31119));
    LUT4 i28775_2_lut (.A(cnt[1]), .B(n32987), .Z(n30130)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i28775_2_lut.init = 16'h1111;
    CCU2D sub_2548_add_2_16 (.A0(cnt_delay[14]), .B0(num_delay[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(num_delay[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27547), .COUT(n27548));
    defparam sub_2548_add_2_16.INIT0 = 16'h5999;
    defparam sub_2548_add_2_16.INIT1 = 16'h5999;
    defparam sub_2548_add_2_16.INJECT1_0 = "NO";
    defparam sub_2548_add_2_16.INJECT1_1 = "NO";
    LUT4 i28082_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n32905), .Z(n31024)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28082_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_212 (.A(data_reg[1]), .B(n33095), .C(n1489), .D(n14262), 
         .Z(n30009)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i1_4_lut_adj_212.init = 16'ha0b3;
    LUT4 i6437_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(n32905), .D(n33143), 
         .Z(n9179)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6437_3_lut_4_lut.init = 16'hf202;
    CCU2D add_224_3 (.A0(y_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27529), 
          .COUT(n27530), .S0(n2021[1]), .S1(n2021[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_3.INIT0 = 16'h5aaa;
    defparam add_224_3.INIT1 = 16'h5aaa;
    defparam add_224_3.INJECT1_0 = "NO";
    defparam add_224_3.INJECT1_1 = "NO";
    LUT4 i6383_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(n32767), .D(n33143), 
         .Z(n9123)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6383_3_lut_4_lut.init = 16'hf202;
    PFUMX i29278 (.BLUT(n32472), .ALUT(n32471), .C0(n32772), .Z(n32473));
    LUT4 i6391_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(n32773), .D(n33143), 
         .Z(n9131)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6391_3_lut_4_lut.init = 16'hf202;
    LUT4 i6399_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(n32785), .D(n33143), 
         .Z(n9139)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6399_3_lut_4_lut.init = 16'hf202;
    LUT4 i6407_3_lut_4_lut (.A(y_cnt[0]), .B(n33140), .C(n32800), .D(n33143), 
         .Z(n9147)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6407_3_lut_4_lut.init = 16'hf202;
    PFUMX i28178 (.BLUT(n31117), .ALUT(n31118), .C0(n32774), .Z(n31120));
    LUT4 i17949_4_lut (.A(n2834), .B(n33043), .C(n32864), .D(\ctrlword_595_3[13] ), 
         .Z(n3720[1])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i17949_4_lut.init = 16'hc044;
    LUT4 i1_3_lut_adj_213 (.A(cnt[3]), .B(cnt[2]), .C(cnt[0]), .Z(n4_adj_1385)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_adj_213.init = 16'h4545;
    PFUMX i28182 (.BLUT(n31122), .ALUT(n31123), .C0(n32774), .Z(n31124));
    L6MUX21 i28166 (.D0(n31106), .D1(n31107), .SD(x_cnt[2]), .Z(n31108));
    LUT4 y_cnt_0__bdd_4_lut_29523 (.A(y_cnt[0]), .B(y_cnt[3]), .C(y_cnt[2]), 
         .D(y_cnt[1]), .Z(n2980[8])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam y_cnt_0__bdd_4_lut_29523.init = 16'h2034;
    LUT4 mux_357_Mux_7_i15_3_lut_4_lut (.A(n34303), .B(n33144), .C(y_cnt[3]), 
         .D(n33143), .Z(n2896)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_357_Mux_7_i15_3_lut_4_lut.init = 16'h4f40;
    L6MUX21 i29272 (.D0(n32467), .D1(n32464), .SD(n32774), .Z(n32468));
    LUT4 y_cnt_2__bdd_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n2980[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;
    defparam y_cnt_2__bdd_4_lut.init = 16'h3014;
    LUT4 i28669_4_lut_then_4_lut (.A(rst_n_in_c), .B(n3994), .C(state[1]), 
         .D(state[0]), .Z(n33186)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28669_4_lut_then_4_lut.init = 16'hfdf5;
    LUT4 i27872_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(n32785), .D(n2886), 
         .Z(n30814)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i27872_3_lut_4_lut.init = 16'h4f40;
    LUT4 i28669_4_lut_else_4_lut (.A(rst_n_in_c), .B(state[1]), .C(state[0]), 
         .Z(n33185)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28669_4_lut_else_4_lut.init = 16'h5757;
    LUT4 i27963_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(n32800), .D(n2886), 
         .Z(n30905)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i27963_3_lut_4_lut.init = 16'h4f40;
    LUT4 i28094_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(n32905), .D(n2886), 
         .Z(n31036)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i28094_3_lut_4_lut.init = 16'h4f40;
    PFUMX i29270 (.BLUT(n32466), .ALUT(n32465), .C0(n32772), .Z(n32467));
    LUT4 Mux_383_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(n32905), .Z(n4_adj_1458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_383_i4_3_lut.init = 16'hcaca;
    LUT4 i7_4_lut_adj_214 (.A(n13_adj_1459), .B(n30374), .C(n32948), .D(n14245), 
         .Z(n16)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i7_4_lut_adj_214.init = 16'hffef;
    LUT4 i28173_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(n32773), .D(n2886), 
         .Z(n31115)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i28173_3_lut_4_lut.init = 16'h4f40;
    LUT4 i4_2_lut (.A(n30343), .B(n30368), .Z(n13_adj_1459)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut.init = 16'heeee;
    LUT4 i3_4_lut_adj_215 (.A(n30581), .B(n33094), .C(n30091), .D(n14262), 
         .Z(n12_adj_1383)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;
    defparam i3_4_lut_adj_215.init = 16'h50dc;
    LUT4 Mux_323_i1_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(\realv_5[0] ), 
         .D(n2886), .Z(n1_adj_36)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam Mux_323_i1_3_lut_4_lut.init = 16'h4f40;
    LUT4 i6400_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9139), 
         .Z(n9140)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6400_3_lut_4_lut.init = 16'h4f40;
    LUT4 i27648_4_lut (.A(n33029), .B(cnt[6]), .C(cnt[0]), .D(cnt[1]), 
         .Z(n30581)) /* synthesis lut_function=(A+(B+(C (D)+!C !(D)))) */ ;
    defparam i27648_4_lut.init = 16'hfeef;
    LUT4 i6392_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9131), 
         .Z(n9132)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6392_3_lut_4_lut.init = 16'h4f40;
    LUT4 mux_379_Mux_5_i15_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), 
         .D(n7_adj_1334), .Z(n3032[7])) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_379_Mux_5_i15_3_lut_4_lut.init = 16'h4f40;
    LUT4 select_1218_Select_2_i1_2_lut (.A(data_reg[2]), .B(n1489), .Z(n1_adj_1384)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam select_1218_Select_2_i1_2_lut.init = 16'h8888;
    LUT4 i6408_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9147), 
         .Z(n9148)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6408_3_lut_4_lut.init = 16'h4f40;
    LUT4 i27939_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(n32767), .D(n2886), 
         .Z(n30881)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i27939_3_lut_4_lut.init = 16'h4f40;
    LUT4 i6438_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9179), 
         .Z(n9180)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6438_3_lut_4_lut.init = 16'h4f40;
    LUT4 i6446_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9157), 
         .Z(n9188)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6446_3_lut_4_lut.init = 16'h4f40;
    LUT4 i6384_3_lut_4_lut (.A(y_cnt[0]), .B(n33144), .C(y_cnt[3]), .D(n9123), 
         .Z(n9124)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam i6384_3_lut_4_lut.init = 16'h4f40;
    LUT4 i2_3_lut_4_lut_adj_216 (.A(state[1]), .B(n33139), .C(n2014), 
         .D(n2021[0]), .Z(n30076)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_4_lut_adj_216.init = 16'h0200;
    LUT4 i1_4_lut_adj_217 (.A(n33002), .B(n29946), .C(cnt[2]), .D(n33094), 
         .Z(n30374)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;
    defparam i1_4_lut_adj_217.init = 16'h7333;
    LUT4 y_cnt_0__bdd_4_lut (.A(n34303), .B(y_cnt[3]), .C(n34301), .D(n34299), 
         .Z(n2993[5])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam y_cnt_0__bdd_4_lut.init = 16'h1420;
    LUT4 i2_4_lut_adj_218 (.A(cnt[2]), .B(n32976), .C(n32958), .D(n15_adj_1290), 
         .Z(n30368)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(D))) */ ;
    defparam i2_4_lut_adj_218.init = 16'hffce;
    LUT4 i1_2_lut_adj_219 (.A(cnt[1]), .B(cnt[3]), .Z(n4_adj_1461)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_219.init = 16'h8888;
    LUT4 i27581_4_lut (.A(n32941), .B(n14045), .C(n14231), .D(n14027), 
         .Z(n30509)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27581_4_lut.init = 16'h8000;
    L6MUX21 i27943 (.D0(n30794), .D1(n30791), .SD(x_cnt[1]), .Z(n30885));
    LUT4 i2_3_lut_4_lut_adj_220 (.A(cnt[6]), .B(cnt[0]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n13_adj_1395)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_220.init = 16'h4000;
    PFUMX i27944 (.BLUT(n30788), .ALUT(n9887), .C0(x_cnt[1]), .Z(n30886));
    PFUMX i29266 (.BLUT(n32463), .ALUT(n32462), .C0(n32772), .Z(n32464));
    LUT4 i1_3_lut_adj_221 (.A(cnt[1]), .B(cnt[2]), .C(n32961), .Z(n14027)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(205[16:18])
    defparam i1_3_lut_adj_221.init = 16'hfbfb;
    LUT4 i1_4_lut_adj_222 (.A(n32942), .B(n32977), .C(n1_adj_1462), .D(n14261), 
         .Z(n6_adj_1382)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_222.init = 16'hf7ff;
    LUT4 i1_3_lut_rep_562_4_lut (.A(state[1]), .B(n33139), .C(n13543), 
         .D(clk_in_c_enable_1), .Z(clk_in_c_enable_141)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_rep_562_4_lut.init = 16'hfd00;
    LUT4 select_1218_Select_4_i1_2_lut (.A(data_reg[4]), .B(n1489), .Z(n1_adj_1462)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam select_1218_Select_4_i1_2_lut.init = 16'h8888;
    LUT4 i14070_3_lut_4_lut (.A(state[1]), .B(n33139), .C(n2014), .D(clk_in_c_enable_153), 
         .Z(n17095)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i14070_3_lut_4_lut.init = 16'hfd00;
    L6MUX21 i27942 (.D0(n30800), .D1(n30797), .SD(x_cnt[1]), .Z(n30884));
    LUT4 i6_4_lut_adj_223 (.A(n30509), .B(n30368), .C(n30359), .D(n30371), 
         .Z(n14_adj_1379)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i6_4_lut_adj_223.init = 16'hfffd;
    CCU2D sub_2548_add_2_14 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n27546), .COUT(n27547));
    defparam sub_2548_add_2_14.INIT0 = 16'h5555;
    defparam sub_2548_add_2_14.INIT1 = 16'h5555;
    defparam sub_2548_add_2_14.INJECT1_0 = "NO";
    defparam sub_2548_add_2_14.INJECT1_1 = "NO";
    LUT4 i2_4_lut_adj_224 (.A(n32946), .B(n5_adj_1463), .C(n30277), .D(n14134), 
         .Z(n10_adj_1380)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_224.init = 16'hdfff;
    CCU2D add_224_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n27529), 
          .S1(n2021[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_1.INIT0 = 16'hF000;
    defparam add_224_1.INIT1 = 16'h5555;
    defparam add_224_1.INJECT1_0 = "NO";
    defparam add_224_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_225 (.A(data_reg[0]), .B(cnt[5]), .C(n1489), .D(n32966), 
         .Z(n5_adj_1463)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;
    defparam i1_4_lut_adj_225.init = 16'ha0b3;
    LUT4 i1_2_lut_rep_625 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n33082)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_625.init = 16'hbbbb;
    PFUMX i27843 (.BLUT(n30783), .ALUT(n30784), .C0(n32778), .Z(n30785));
    LUT4 mux_2839_i1_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), .Z(n21759)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam mux_2839_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(n33088), .D(state[0]), .Z(n30191)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(n33088), .D(state[0]), .Z(n30192)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'hb000;
    LUT4 i18130_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[0]), .Z(n3019[4])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i18130_3_lut_4_lut_4_lut_4_lut.init = 16'h0306;
    PFUMX i27849 (.BLUT(n30789), .ALUT(n30790), .C0(\x_cnt[0] ), .Z(n30791));
    CCU2D add_187_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27528), 
          .S0(n1696[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_17.INIT0 = 16'h5aaa;
    defparam add_187_17.INIT1 = 16'h0000;
    defparam add_187_17.INJECT1_0 = "NO";
    defparam add_187_17.INJECT1_1 = "NO";
    PFUMX i27852 (.BLUT(n30792), .ALUT(n30793), .C0(\x_cnt[0] ), .Z(n30794));
    CCU2D sub_2548_add_2_12 (.A0(cnt_delay[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(num_delay[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27545), .COUT(n27546));
    defparam sub_2548_add_2_12.INIT0 = 16'h5555;
    defparam sub_2548_add_2_12.INIT1 = 16'h5999;
    defparam sub_2548_add_2_12.INJECT1_0 = "NO";
    defparam sub_2548_add_2_12.INJECT1_1 = "NO";
    L6MUX21 i28914 (.D0(n31884), .D1(n31882), .SD(n32904), .Z(n31885));
    PFUMX i23 (.BLUT(n4_adj_1464), .ALUT(n5_adj_1338), .C0(x_cnt[2]), 
          .Z(n9_adj_1392));
    LUT4 i25_4_lut (.A(n33131), .B(n30444), .C(state[0]), .D(n32971), 
         .Z(n30637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i25_4_lut.init = 16'hcfca;
    PFUMX i27855 (.BLUT(n30795), .ALUT(n30796), .C0(\x_cnt[0] ), .Z(n30797));
    PFUMX i27858 (.BLUT(n30798), .ALUT(n30799), .C0(\x_cnt[0] ), .Z(n30800));
    L6MUX21 i27865 (.D0(n30805), .D1(n30806), .SD(n32778), .Z(n30807));
    PFUMX i29256 (.BLUT(n32451), .ALUT(n32448), .C0(n32771), .Z(n32452));
    CCU2D add_187_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27527), 
          .COUT(n27528), .S0(n1696[13]), .S1(n1696[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_15.INIT0 = 16'h5aaa;
    defparam add_187_15.INIT1 = 16'h5aaa;
    defparam add_187_15.INJECT1_0 = "NO";
    defparam add_187_15.INJECT1_1 = "NO";
    PFUMX i29254 (.BLUT(n30821), .ALUT(n32449), .C0(n32777), .Z(n32450));
    LUT4 i1_2_lut_rep_547_3_lut_3_lut_4_lut (.A(cnt[6]), .B(cnt[0]), .C(n13774), 
         .D(cnt[3]), .Z(n33004)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_2_lut_rep_547_3_lut_3_lut_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_rep_598_3_lut (.A(cnt[6]), .B(cnt[0]), .C(cnt[2]), .Z(n33055)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_598_3_lut.init = 16'hbfbf;
    LUT4 x_cnt_1__bdd_4_lut_4_lut (.A(n32797), .B(\x_cnt[0] ), .C(n8_adj_1400), 
         .D(n8_adj_1430), .Z(n31871)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam x_cnt_1__bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_644 (.A(y_cnt[3]), .B(n34299), .Z(n33101)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_644.init = 16'h8888;
    PFUMX i28912 (.BLUT(n9180), .ALUT(n31883), .C0(n32906), .Z(n31884));
    LUT4 i28679_2_lut_rep_560_2_lut_3_lut_4_lut (.A(y_cnt[3]), .B(n34299), 
         .C(n33142), .D(n20137), .Z(n33017)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i28679_2_lut_rep_560_2_lut_3_lut_4_lut.init = 16'h0008;
    LUT4 i28196_3_lut (.A(data_r[94]), .B(data_r[95]), .C(\x_cnt[0] ), 
         .Z(n31138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28196_3_lut.init = 16'hcaca;
    LUT4 i28195_3_lut (.A(data_r[92]), .B(data_r[93]), .C(\x_cnt[0] ), 
         .Z(n31137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28195_3_lut.init = 16'hcaca;
    L6MUX21 i27878 (.D0(n30818), .D1(n30819), .SD(n32778), .Z(n30820));
    PFUMX i28154 (.BLUT(n31092), .ALUT(n31093), .C0(cnt_write[2]), .Z(n31096));
    LUT4 i1_2_lut_2_lut (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n95)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_3_lut (.A(cnt_init[0]), .B(n5_adj_1370), .C(num_delay[5]), 
         .Z(n18)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_3_lut_3_lut.init = 16'h4040;
    PFUMX i28909 (.BLUT(n31881), .ALUT(n31880), .C0(n32906), .Z(n31882));
    LUT4 i1_4_lut_4_lut_adj_228 (.A(cnt_init[0]), .B(n34278), .C(n37_adj_1319), 
         .D(num_delay[14]), .Z(n6645)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_228.init = 16'hdc50;
    LUT4 i28627_4_lut (.A(n3_adj_1456), .B(clk_in_c_enable_1), .C(state[1]), 
         .D(n19), .Z(clk_in_c_enable_102)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i28627_4_lut.init = 16'h0444;
    LUT4 i1_4_lut_4_lut_adj_229 (.A(cnt_init[0]), .B(n33131), .C(num_delay[9]), 
         .D(n13665), .Z(n38)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_229.init = 16'h5540;
    LUT4 i1_4_lut_4_lut_adj_230 (.A(cnt_init[0]), .B(n33131), .C(num_delay[4]), 
         .D(n13672), .Z(n8_adj_1289)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_230.init = 16'h5540;
    LUT4 i1_4_lut_4_lut_adj_231 (.A(cnt_init[0]), .B(n33131), .C(num_delay[8]), 
         .D(n13675), .Z(n38_adj_1465)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_231.init = 16'h5540;
    LUT4 i3_4_lut_adj_232 (.A(cnt_scan[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(n30023), .Z(n30024)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_232.init = 16'h1000;
    LUT4 i1_4_lut_4_lut_adj_233 (.A(cnt_init[0]), .B(n34278), .C(n37), 
         .D(num_delay[15]), .Z(n6647)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_233.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_234 (.A(cnt_init[0]), .B(n34278), .C(n37_adj_1322), 
         .D(num_delay[6]), .Z(n6629)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_234.init = 16'hdc50;
    LUT4 i3_4_lut_adj_235 (.A(n33065), .B(n32771), .C(n32778), .D(n32770), 
         .Z(n2380)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_235.init = 16'h0002;
    LUT4 n29985_bdd_3_lut (.A(n29985), .B(n32173), .C(x_cnt[1]), .Z(n32174)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n29985_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_650 (.A(rst_n_in_c), .B(state[1]), .Z(n33107)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut_rep_650.init = 16'h8888;
    LUT4 n9171_bdd_4_lut_29615 (.A(n3226[87]), .B(x_cnt[1]), .C(n32982), 
         .D(n31979), .Z(n32175)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n9171_bdd_4_lut_29615.init = 16'hb888;
    LUT4 i28362_3_lut_4_lut_4_lut (.A(n32797), .B(n7_adj_1310), .C(\realv_5[3] ), 
         .D(n8_adj_1432), .Z(n30827)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i28362_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i14020_2_lut_2_lut_3_lut (.A(rst_n_in_c), .B(state[1]), .C(state[2]), 
         .Z(n17030)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i14020_2_lut_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_rep_474_4_lut (.A(rst_n_in_c), .B(state[1]), .C(n30637), 
         .D(state[2]), .Z(clk_in_c_enable_134)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_3_lut_rep_474_4_lut.init = 16'h8808;
    LUT4 i27892_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1434), 
         .D(n7_adj_1284), .Z(n30834)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27892_4_lut_4_lut.init = 16'h7340;
    LUT4 i27891_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1435), 
         .D(n7_adj_1283), .Z(n30833)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27891_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_3_lut_4_lut_adj_236 (.A(rst_n_in_c), .B(state[1]), .C(n31), 
         .D(state[2]), .Z(clk_in_c_enable_127)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_3_lut_4_lut_adj_236.init = 16'h8880;
    PFUMX i29244 (.BLUT(n32437), .ALUT(n32436), .C0(x_cnt[3]), .Z(n32438));
    PFUMX i28905 (.BLUT(n31878), .ALUT(n31872), .C0(\realv_5[3] ), .Z(n31879));
    FD1P3IX data_reg_i0_i6 (.D(n2_adj_1368), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i6.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i7 (.D(n2_adj_1362), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i7.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i8 (.D(n2_adj_1301), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i8.GSR = "DISABLED";
    FD1P3AX cnt_main__i1 (.D(n30191), .SP(clk_in_c_enable_98), .CK(clk_in_c), 
            .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_main__i1.GSR = "DISABLED";
    FD1P3AX state__i1 (.D(n29132), .SP(clk_in_c_enable_99), .CK(clk_in_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i1.GSR = "DISABLED";
    FD1P3AX state__i2 (.D(n26[2]), .SP(clk_in_c_enable_100), .CK(clk_in_c), 
            .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i2.GSR = "DISABLED";
    FD1P3AX cnt_i0_i1 (.D(n10872), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i1.GSR = "DISABLED";
    FD1P3AX cnt_scan__i1 (.D(n30062), .SP(clk_in_c_enable_102), .CK(clk_in_c), 
            .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i1.GSR = "DISABLED";
    FD1P3AX cnt_i0_i2 (.D(n10870), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i2.GSR = "DISABLED";
    FD1P3AX cnt_i0_i3 (.D(n43), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i3.GSR = "DISABLED";
    FD1P3IX cnt_write__i1 (.D(DA_LCD_N_1249[1]), .SP(clk_in_c_enable_123), 
            .CD(n17108), .CK(clk_in_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i1.GSR = "DISABLED";
    FD1P3AX cnt_i0_i4 (.D(n30140), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i4.GSR = "DISABLED";
    FD1P3IX cnt_write__i2 (.D(DA_LCD_N_1249[2]), .SP(clk_in_c_enable_123), 
            .CD(n17108), .CK(clk_in_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i2.GSR = "DISABLED";
    FD1P3AX cnt_i0_i5 (.D(n30141), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i5.GSR = "DISABLED";
    FD1P3IX cnt_write__i3 (.D(DA_LCD_N_1249[3]), .SP(clk_in_c_enable_123), 
            .CD(n17108), .CK(clk_in_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i3.GSR = "DISABLED";
    LUT4 i27890_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1436), 
         .D(n7_adj_1282), .Z(n30832)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27890_4_lut_4_lut.init = 16'h7340;
    FD1P3AX cnt_i0_i6 (.D(n30142), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX cnt_i0_i7 (.D(n30143), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i7.GSR = "DISABLED";
    LUT4 i27889_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1437), 
         .D(n7), .Z(n30831)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27889_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_413_i5_3_lut_4_lut_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n33070), .Z(n5_adj_34)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam Mux_413_i5_3_lut_4_lut_4_lut.init = 16'h5202;
    PFUMX i27863 (.BLUT(n30801), .ALUT(n30802), .C0(n32777), .Z(n30805));
    FD1P3AX cnt_i0_i8 (.D(n30144), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i8.GSR = "DISABLED";
    FD1P3AX cnt_i0_i9 (.D(n30145), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i9.GSR = "DISABLED";
    FD1P3AX cnt_i0_i10 (.D(n30146), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i10.GSR = "DISABLED";
    FD1P3AX cnt_i0_i11 (.D(n30147), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i11.GSR = "DISABLED";
    FD1P3AX cnt_i0_i12 (.D(n30148), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i12.GSR = "DISABLED";
    FD1P3AX cnt_i0_i13 (.D(n30149), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i13.GSR = "DISABLED";
    FD1P3AX cnt_i0_i14 (.D(n30150), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i14.GSR = "DISABLED";
    FD1P3AX cnt_i0_i15 (.D(n30151), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i15.GSR = "DISABLED";
    FD1P3AX RST_LCD_548 (.D(n95), .SP(clk_in_c_enable_120), .CK(clk_in_c), 
            .Q(RST_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam RST_LCD_548.GSR = "DISABLED";
    FD1P3AX CLK_LCD_553 (.D(CLK_LCD_N_1257), .SP(clk_in_c_enable_121), .CK(clk_in_c), 
            .Q(CLK_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam CLK_LCD_553.GSR = "DISABLED";
    FD1P3AX DC_LCD_552 (.D(data_reg[8]), .SP(clk_in_c_enable_122), .CK(clk_in_c), 
            .Q(DC_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam DC_LCD_552.GSR = "DISABLED";
    LUT4 i28181_3_lut_4_lut_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n32773), 
         .D(n33070), .Z(n31123)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28181_3_lut_4_lut_4_lut.init = 16'h5202;
    LUT4 realv_3_1__bdd_3_lut_29351_4_lut_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), 
         .C(n32785), .D(n33070), .Z(n32449)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam realv_3_1__bdd_3_lut_29351_4_lut_4_lut.init = 16'h5202;
    LUT4 i28105_3_lut_4_lut_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n32905), 
         .D(n33070), .Z(n31047)) /* synthesis lut_function=(!(A (B+(C))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28105_3_lut_4_lut_4_lut.init = 16'h5202;
    LUT4 i3_4_lut_adj_237 (.A(cnt_scan[1]), .B(n2014), .C(n34282), .D(n32954), 
         .Z(n30062)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i3_4_lut_adj_237.init = 16'h4000;
    LUT4 i2_3_lut_3_lut (.A(state[1]), .B(state[2]), .C(n27806), .Z(n27673)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_653 (.A(n34303), .B(n34301), .Z(n33110)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_653.init = 16'h8888;
    L6MUX21 i29238 (.D0(n32428), .D1(n32426), .SD(n32774), .Z(n32429));
    PFUMX i29998 (.BLUT(n34159), .ALUT(n34158), .C0(n32800), .Z(n34160));
    FD1P3AX cnt_write__i0 (.D(n28009), .SP(clk_in_c_enable_123), .CK(clk_in_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i0.GSR = "DISABLED";
    PFUMX i27864 (.BLUT(n30803), .ALUT(n30804), .C0(n32777), .Z(n30806));
    LUT4 i27884_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1433), 
         .D(n7_adj_1287), .Z(n30826)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27884_4_lut_4_lut.init = 16'h7340;
    LUT4 i27883_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n8_adj_1403), 
         .D(n7_adj_1286), .Z(n30825)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27883_4_lut_4_lut.init = 16'h7340;
    PFUMX i29236 (.BLUT(n9132), .ALUT(n32427), .C0(n32772), .Z(n32428));
    LUT4 i1_4_lut_4_lut_adj_238 (.A(cnt_scan[0]), .B(n32987), .C(n2014), 
         .D(n33078), .Z(n30075)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_4_lut_adj_238.init = 16'h4e00;
    LUT4 n9171_bdd_3_lut_29882 (.A(n9171), .B(n2903[7]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n32177)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9171_bdd_3_lut_29882.init = 16'hcaca;
    LUT4 i28140_3_lut (.A(n9171), .B(n2903[6]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n31082)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28140_3_lut.init = 16'hcaca;
    LUT4 mux_376_Mux_2_i15_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n3003)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_376_Mux_2_i15_3_lut_4_lut.init = 16'h08f8;
    PFUMX i29233 (.BLUT(n32425), .ALUT(n32424), .C0(n32772), .Z(n32426));
    LUT4 i15_2_lut_rep_581_3_lut_4_lut (.A(n34303), .B(n34301), .C(y_cnt[3]), 
         .D(n34299), .Z(n33038)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i15_2_lut_rep_581_3_lut_4_lut.init = 16'h0f78;
    LUT4 n2412_bdd_3_lut_4_lut (.A(data_r[47]), .B(n32956), .C(\x_cnt[0] ), 
         .D(n2411), .Z(n32195)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam n2412_bdd_3_lut_4_lut.init = 16'h8f80;
    PFUMX i28141 (.BLUT(n31079), .ALUT(n31080), .C0(\x_cnt[0] ), .Z(n31083));
    LUT4 i2_4_lut_adj_239 (.A(n25), .B(n14252), .C(cnt[2]), .D(n21_adj_1467), 
         .Z(n14245)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;
    defparam i2_4_lut_adj_239.init = 16'hfbbb;
    LUT4 i18023_2_lut_rep_606_3_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .Z(n33063)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i18023_2_lut_rep_606_3_lut.init = 16'hf8f8;
    LUT4 i21_3_lut (.A(n2898), .B(n2993[3]), .C(\realv_5[0] ), .Z(n4_adj_37)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i21_3_lut.init = 16'hcaca;
    LUT4 i15689_1_lut_rep_654 (.A(rst_n_in_c), .Z(n33111)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i15689_1_lut_rep_654.init = 16'h5555;
    LUT4 Mux_411_i5_3_lut (.A(n3006[3]), .B(n3019[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_38)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i5_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_240 (.A(n30051), .B(n27), .C(cnt[5]), .D(cnt[4]), 
         .Z(n21_adj_1467)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_240.init = 16'heaaa;
    LUT4 i1_2_lut_rep_566_3_lut_3_lut (.A(rst_n_in_c), .B(state[2]), .C(state[0]), 
         .Z(n33023)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut_rep_566_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_2_lut_2_lut_adj_241 (.A(rst_n_in_c), .B(n75), .Z(clk_in_c_enable_100)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut_2_lut_adj_241.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut_adj_242 (.A(rst_n_in_c), .B(n712), .C(n711), .D(n26595), 
         .Z(clk_divided_enable_40)) /* synthesis lut_function=((B ((D)+!C)+!B (D))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_4_lut_4_lut_adj_242.init = 16'hff5d;
    LUT4 i851_2_lut_2_lut (.A(rst_n_in_c), .B(clk_divided_N_170), .Z(n1427)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i851_2_lut_2_lut.init = 16'hdddd;
    LUT4 i4608_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(DA_LCD_N_1249[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(588[20:29])
    defparam i4608_2_lut.init = 16'h6666;
    PFUMX i27876 (.BLUT(n30814), .ALUT(n30815), .C0(n32777), .Z(n30818));
    LUT4 i1_2_lut_rep_589_2_lut (.A(rst_n_in_c), .B(state[0]), .Z(n33046)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i1_2_lut_rep_589_2_lut.init = 16'hdddd;
    LUT4 i17922_4_lut_4_lut (.A(rst_n_in_c), .B(n30312), .C(state[2]), 
         .D(n29991), .Z(num_delay_15__N_803[1])) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i17922_4_lut_4_lut.init = 16'h5f5d;
    LUT4 i28664_2_lut_2_lut_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(state[2]), 
         .C(n33045), .D(state[0]), .Z(clk_in_c_enable_122)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i28664_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0008;
    LUT4 i27544_4_lut_4_lut (.A(rst_n_in_c), .B(n708), .C(n18705), .D(n712), 
         .Z(clk_divided_enable_32)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i27544_4_lut_4_lut.init = 16'hf7d5;
    LUT4 i28139_3_lut (.A(n1), .B(n2903[5]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n31081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28139_3_lut.init = 16'hcaca;
    LUT4 i27882_4_lut_4_lut (.A(n32797), .B(\realv_5[3] ), .C(n3032[7]), 
         .D(n7_adj_1285), .Z(n30824)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i27882_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut (.A(n34301), .B(n34303), 
         .C(y_cnt[3]), .D(n34299), .Z(n2903[4])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B (C+(D))+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1814;
    PFUMX i28155 (.BLUT(n31094), .ALUT(n31095), .C0(cnt_write[2]), .Z(n31097));
    LUT4 i1_2_lut_3_lut_adj_243 (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(state[0]), 
         .Z(n4_adj_1445)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_243.init = 16'h1010;
    PFUMX i27877 (.BLUT(n30816), .ALUT(n30817), .C0(n32777), .Z(n30819));
    LUT4 i27553_2_lut_3_lut (.A(cnt_scan[2]), .B(cnt_scan[0]), .C(cnt_scan[1]), 
         .Z(n4_adj_1292)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i27553_2_lut_3_lut.init = 16'h0101;
    LUT4 data_r_91__bdd_4_lut_4_lut (.A(\x_cnt[0] ), .B(x_cnt[1]), .C(n11833), 
         .D(data_r[91]), .Z(n32755)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (D)+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam data_r_91__bdd_4_lut_4_lut.init = 16'h7430;
    LUT4 n30325_bdd_4_lut_28884_4_lut (.A(\x_cnt[0] ), .B(n32904), .C(\decade[3] ), 
         .D(n32896), .Z(n31851)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam n30325_bdd_4_lut_28884_4_lut.init = 16'h0002;
    LUT4 y_cnt_0__bdd_4_lut_29518 (.A(n34303), .B(n30351), .C(n34301), 
         .D(y_cnt[3]), .Z(n2412)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(D)))) */ ;
    defparam y_cnt_0__bdd_4_lut_29518.init = 16'h0013;
    LUT4 i2_3_lut_3_lut_adj_244 (.A(\x_cnt[0] ), .B(data_r[104]), .C(x_cnt[1]), 
         .Z(n4_adj_1464)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i2_3_lut_3_lut_adj_244.init = 16'h0404;
    LUT4 n2_bdd_3_lut_3_lut (.A(\x_cnt[0] ), .B(x_cnt[2]), .C(data_r[34]), 
         .Z(n32437)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam n2_bdd_3_lut_3_lut.init = 16'h1010;
    LUT4 n13307_bdd_4_lut_29163_4_lut (.A(\x_cnt[0] ), .B(x_cnt[1]), .C(n27972), 
         .D(n13307), .Z(n31931)) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam n13307_bdd_4_lut_29163_4_lut.init = 16'h038b;
    CCU2D sub_2548_add_2_10 (.A0(cnt_delay[8]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(num_delay[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27544), .COUT(n27545));
    defparam sub_2548_add_2_10.INIT0 = 16'h5999;
    defparam sub_2548_add_2_10.INIT1 = 16'h5999;
    defparam sub_2548_add_2_10.INJECT1_0 = "NO";
    defparam sub_2548_add_2_10.INJECT1_1 = "NO";
    LUT4 i7122_3_lut_3_lut (.A(\x_cnt[0] ), .B(n2413), .C(n2414), .Z(n9920)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i7122_3_lut_3_lut.init = 16'hf4f4;
    LUT4 i1_2_lut_2_lut_adj_245 (.A(\x_cnt[0] ), .B(n30087), .Z(n30088)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_2_lut_adj_245.init = 16'h4444;
    LUT4 i18133_2_lut_rep_658 (.A(cnt[4]), .B(cnt[2]), .Z(n33115)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18133_2_lut_rep_658.init = 16'h8888;
    LUT4 i27644_2_lut_3_lut (.A(cnt[4]), .B(cnt[2]), .C(cnt[1]), .Z(n30576)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i27644_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_519_3_lut (.A(cnt[4]), .B(cnt[2]), .C(n30615), .Z(n32976)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_519_3_lut.init = 16'h0808;
    LUT4 Mux_349_i33_3_lut_4_lut (.A(data_r[34]), .B(n32956), .C(\x_cnt[0] ), 
         .D(n2411), .Z(n33)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam Mux_349_i33_3_lut_4_lut.init = 16'hf808;
    LUT4 i28038_3_lut (.A(n31912), .B(n14_adj_1422), .C(\decade[3] ), 
         .Z(n30980)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28038_3_lut.init = 16'hcaca;
    LUT4 Mux_282_i8_3_lut (.A(n3032[7]), .B(n3045[5]), .C(n32785), .Z(n8_adj_1305)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_281_i8_3_lut (.A(n3032[7]), .B(n3045[6]), .C(n32785), .Z(n8_adj_1304)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_281_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_284_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n32785), .Z(n8_adj_1303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_284_i8_3_lut.init = 16'hcaca;
    LUT4 i7324_3_lut (.A(n7_adj_1334), .B(n10157), .C(y_cnt[3]), .Z(n8_adj_1302)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i7324_3_lut.init = 16'hcaca;
    LUT4 Mux_260_i1_3_lut (.A(n2884), .B(n2898), .C(n32773), .Z(n1_adj_1457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i1_3_lut.init = 16'hcaca;
    L6MUX21 i27888 (.D0(n30828), .D1(n30829), .SD(x_cnt[1]), .Z(n30830));
    LUT4 i2_3_lut_4_lut_4_lut_adj_246 (.A(cnt_scan[0]), .B(n32987), .C(n33138), 
         .D(rst_n_in_c), .Z(n30063)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut_4_lut_adj_246.init = 16'h4000;
    L6MUX21 i28903 (.D0(n31875), .D1(n30917), .SD(\x_cnt[0] ), .Z(n31876));
    LUT4 i1_2_lut_2_lut_adj_247 (.A(cnt_scan[2]), .B(n4_adj_1470), .Z(n4_adj_1471)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut_adj_247.init = 16'h4444;
    FD1P3AX cnt_scan__i0 (.D(n30075), .SP(clk_in_c_enable_124), .CK(clk_in_c), 
            .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i0.GSR = "DISABLED";
    LUT4 i36_2_lut_rep_664 (.A(state[2]), .B(\ctrlword_595_3[13] ), .Z(n33121)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i36_2_lut_rep_664.init = 16'heeee;
    LUT4 i1_2_lut_rep_488_3_lut_4_lut (.A(state[2]), .B(\ctrlword_595_3[13] ), 
         .C(n13601), .D(n7_adj_1314), .Z(n32945)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_rep_488_3_lut_4_lut.init = 16'h1110;
    CCU2D sub_2548_add_2_8 (.A0(cnt_delay[6]), .B0(num_delay[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(num_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27543), .COUT(n27544));
    defparam sub_2548_add_2_8.INIT0 = 16'h5999;
    defparam sub_2548_add_2_8.INIT1 = 16'h5999;
    defparam sub_2548_add_2_8.INJECT1_0 = "NO";
    defparam sub_2548_add_2_8.INJECT1_1 = "NO";
    LUT4 i2_3_lut_rep_665 (.A(cnt_write[1]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .Z(n33122)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_rep_665.init = 16'hfefe;
    L6MUX21 i27895 (.D0(n30835), .D1(n30836), .SD(x_cnt[1]), .Z(n30837));
    LUT4 i4378_2_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[3]), .C(cnt_write[2]), 
         .D(cnt_write[4]), .Z(DA_LCD_N_1254)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i4378_2_lut_4_lut.init = 16'hfe00;
    LUT4 i1_4_lut_4_lut_adj_248 (.A(state[0]), .B(n33139), .C(n30024), 
         .D(cnt_scan[2]), .Z(n19)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A ((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_4_lut_adj_248.init = 16'hf3f1;
    LUT4 i1_4_lut_4_lut_adj_249 (.A(state[0]), .B(state[1]), .C(n44_c), 
         .D(n24694), .Z(n73)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_4_lut_adj_249.init = 16'hf7d5;
    LUT4 i1_2_lut_adj_250 (.A(cnt[2]), .B(cnt[1]), .Z(n14028)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(203[16:18])
    defparam i1_2_lut_adj_250.init = 16'hbbbb;
    LUT4 n31855_bdd_4_lut_then_4_lut (.A(y_cnt[3]), .B(n20137), .C(y_cnt[1]), 
         .D(y_cnt[2]), .Z(n33197)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+!(C (D))))) */ ;
    defparam n31855_bdd_4_lut_then_4_lut.init = 16'h1002;
    PFUMX i28901 (.BLUT(n31874), .ALUT(n31873), .C0(n32806), .Z(n31875));
    LUT4 i4610_2_lut_rep_666 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n33123)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(588[20:29])
    defparam i4610_2_lut_rep_666.init = 16'h8888;
    LUT4 i4622_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(DA_LCD_N_1249[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(588[20:29])
    defparam i4622_2_lut_3_lut_4_lut.init = 16'h78f0;
    L6MUX21 i27929 (.D0(n30869), .D1(n30870), .SD(n32791), .Z(n30871));
    LUT4 i4615_2_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .Z(DA_LCD_N_1249[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(588[20:29])
    defparam i4615_2_lut_3_lut.init = 16'h7878;
    LUT4 i9719_2_lut_rep_667 (.A(n34301), .B(n34299), .Z(n33124)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam i9719_2_lut_rep_667.init = 16'h6666;
    CCU2D add_187_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n27526), 
          .COUT(n27527), .S0(n1696[11]), .S1(n1696[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_13.INIT0 = 16'h5aaa;
    defparam add_187_13.INIT1 = 16'h5aaa;
    defparam add_187_13.INJECT1_0 = "NO";
    defparam add_187_13.INJECT1_1 = "NO";
    LUT4 mux_374_Mux_2_i15_3_lut_3_lut (.A(n34301), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n2967[2])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_374_Mux_2_i15_3_lut_3_lut.init = 16'h3636;
    LUT4 i18109_2_lut_rep_607_3_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n33064)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam i18109_2_lut_rep_607_3_lut.init = 16'h0606;
    L6MUX21 i28899 (.D0(n31869), .D1(n31867), .SD(n32904), .Z(n31870));
    PFUMX i28897 (.BLUT(n9180), .ALUT(n31868), .C0(n32906), .Z(n31869));
    CCU2D add_187_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n27521), 
          .S1(n1696[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_1.INIT0 = 16'hF000;
    defparam add_187_1.INIT1 = 16'h5555;
    defparam add_187_1.INJECT1_0 = "NO";
    defparam add_187_1.INJECT1_1 = "NO";
    LUT4 ctrlword_595_4_15__N_630_5__bdd_3_lut_3_lut (.A(\ctrlword_595_3[13] ), 
         .B(\ctrlword_595_4_15__N_622[1] ), .C(\ctrlword_595_4_15__N_630[5] ), 
         .Z(n32350)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(139[8:16])
    defparam ctrlword_595_4_15__N_630_5__bdd_3_lut_3_lut.init = 16'h7272;
    LUT4 i1_2_lut_2_lut_3_lut (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .Z(n30334)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_2_lut_rep_669 (.A(cnt_init[4]), .B(cnt_init[5]), .Z(n33126)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_669.init = 16'heeee;
    LUT4 i3_3_lut_4_lut (.A(cnt_init[4]), .B(cnt_init[5]), .C(cnt_init[8]), 
         .D(cnt_init[9]), .Z(n8_adj_1376)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_3_lut_4_lut.init = 16'hfffe;
    CCU2D sub_2548_add_2_6 (.A0(cnt_delay[4]), .B0(num_delay[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[5]), .B1(num_delay[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27542), .COUT(n27543));
    defparam sub_2548_add_2_6.INIT0 = 16'h5999;
    defparam sub_2548_add_2_6.INIT1 = 16'h5999;
    defparam sub_2548_add_2_6.INJECT1_0 = "NO";
    defparam sub_2548_add_2_6.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_670 (.A(cnt_init[6]), .B(cnt_init[7]), .Z(n33127)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_670.init = 16'heeee;
    CCU2D sub_2548_add_2_4 (.A0(cnt_delay[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[3]), .B1(num_delay[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n27541), .COUT(n27542));
    defparam sub_2548_add_2_4.INIT0 = 16'h5555;
    defparam sub_2548_add_2_4.INIT1 = 16'h5999;
    defparam sub_2548_add_2_4.INJECT1_0 = "NO";
    defparam sub_2548_add_2_4.INJECT1_1 = "NO";
    LUT4 i2_2_lut_3_lut (.A(cnt_init[6]), .B(cnt_init[7]), .C(n30495), 
         .Z(n122)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 n3_bdd_3_lut_29371_4_lut (.A(n33038), .B(n32770), .C(n32778), 
         .D(n32509), .Z(n32510)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n3_bdd_3_lut_29371_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_671 (.A(cnt[1]), .B(cnt[2]), .Z(n33128)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_671.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_251 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n13851)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_251.init = 16'hfefe;
    LUT4 n26444_bdd_4_lut_29555 (.A(n26444), .B(cnt_init[1]), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n32191)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;
    defparam n26444_bdd_4_lut_29555.init = 16'h1050;
    L6MUX21 i29210 (.D0(n32391), .D1(n32389), .SD(n32774), .Z(n32392));
    FD1P3AX cnt_main__i0 (.D(n30192), .SP(clk_in_c_enable_125), .CK(clk_in_c), 
            .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_main__i0.GSR = "DISABLED";
    LUT4 i2_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n85), .D(n82), .Z(n6_adj_1472)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C))) */ ;
    defparam i2_4_lut_4_lut.init = 16'hdc10;
    FD1P3IX data_reg_i0_i0 (.D(n15334), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i0.GSR = "DISABLED";
    L6MUX21 i27969 (.D0(n30909), .D1(n30910), .SD(n32791), .Z(n30911));
    PFUMX i28895 (.BLUT(n31866), .ALUT(n31865), .C0(n32906), .Z(n31867));
    PFUMX i27886 (.BLUT(n30824), .ALUT(n30825), .C0(\x_cnt[0] ), .Z(n30828));
    PFUMX i29858 (.BLUT(n33858), .ALUT(n33857), .C0(state_back[1]), .Z(n33859));
    LUT4 i1_2_lut_rep_577_2_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), 
         .D(cnt[6]), .Z(n33034)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_2_lut_rep_577_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_593_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), .Z(n33050)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_593_3_lut.init = 16'hefef;
    PFUMX i27887 (.BLUT(n30826), .ALUT(n30827), .C0(\x_cnt[0] ), .Z(n30829));
    FD1P3AX cnt_i0_i0 (.D(n30152), .SP(clk_in_c_enable_127), .CK(clk_in_c), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_672 (.A(cnt[1]), .B(cnt[0]), .Z(n33129)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_672.init = 16'heeee;
    FD1P3AX state__i0 (.D(n32734), .SP(clk_in_c_enable_128), .CK(clk_in_c), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i0.GSR = "DISABLED";
    LUT4 i18736_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n21755)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i18736_3_lut_4_lut.init = 16'hfe00;
    PFUMX i27893 (.BLUT(n30831), .ALUT(n30832), .C0(\x_cnt[0] ), .Z(n30835));
    FD1P3IX data_r_i0_i89 (.D(n21726), .SP(clk_in_c_enable_131), .CD(n17159), 
            .CK(clk_in_c), .Q(data_r[89])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i89.GSR = "DISABLED";
    FD1P3IX data_r_i0_i76 (.D(n21728), .SP(clk_in_c_enable_131), .CD(n17159), 
            .CK(clk_in_c), .Q(data_r[76])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i76.GSR = "DISABLED";
    FD1P3IX data_r_i0_i75 (.D(n21730), .SP(clk_in_c_enable_131), .CD(n17159), 
            .CK(clk_in_c), .Q(data_r[75])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i75.GSR = "DISABLED";
    LUT4 n31855_bdd_4_lut_else_4_lut (.A(y_cnt[3]), .B(n20137), .C(y_cnt[1]), 
         .D(y_cnt[2]), .Z(n33196)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam n31855_bdd_4_lut_else_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_673 (.A(cnt[4]), .B(cnt[5]), .Z(n33130)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_673.init = 16'heeee;
    LUT4 i1_2_lut_rep_583_3_lut (.A(cnt[4]), .B(cnt[5]), .C(n13774), .Z(n33040)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_583_3_lut.init = 16'hfefe;
    PFUMX i29208 (.BLUT(n9132), .ALUT(n32390), .C0(n32772), .Z(n32391));
    LUT4 i1_2_lut_rep_549_3_lut_4_lut (.A(cnt[4]), .B(cnt[5]), .C(cnt[3]), 
         .D(n13774), .Z(n33006)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_549_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_563_3_lut_4_lut (.A(cnt[4]), .B(cnt[5]), .C(cnt[6]), 
         .D(n13774), .Z(n33020)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_563_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_4_lut_adj_252 (.A(state[1]), .B(n3994), .C(n33133), 
         .D(n3996[0]), .Z(n30135)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_252.init = 16'h1000;
    LUT4 i1_2_lut_rep_674 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n33131)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_674.init = 16'hbbbb;
    LUT4 i1_2_lut_3_lut_adj_253 (.A(cnt_init[1]), .B(cnt_init[2]), .C(n26444), 
         .Z(n160)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_adj_253.init = 16'hfbfb;
    LUT4 i1_3_lut_4_lut_adj_254 (.A(cnt_init[1]), .B(cnt_init[2]), .C(n32939), 
         .D(n13660), .Z(n5_adj_1370)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_3_lut_4_lut_adj_254.init = 16'hfbbb;
    LUT4 i1_2_lut_rep_675 (.A(n34301), .B(n34299), .Z(n33132)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_675.init = 16'h2222;
    LUT4 i27940_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32767), .D(n2903[8]), 
         .Z(n30882)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i27940_3_lut_4_lut.init = 16'h2f20;
    PFUMX i29206 (.BLUT(n32388), .ALUT(n32387), .C0(n32772), .Z(n32389));
    LUT4 Mux_405_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2896), .Z(n2_adj_39)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_405_i2_3_lut_4_lut.init = 16'h2f20;
    LUT4 i2_3_lut_4_lut_adj_255 (.A(y_cnt[1]), .B(n34299), .C(n20137), 
         .D(y_cnt[3]), .Z(n2414)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_255.init = 16'h0200;
    LUT4 realv_4_1__bdd_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2896), 
         .D(n32800), .Z(n32691)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam realv_4_1__bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i28174_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32773), .D(n2903[8]), 
         .Z(n31116)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i28174_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX data_reg_i0_i1 (.D(n2_adj_1364), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i1.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i2 (.D(n2_adj_1366), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i2.GSR = "DISABLED";
    LUT4 i28095_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32905), .D(n2903[8]), 
         .Z(n31037)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i28095_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX data_reg_i0_i3 (.D(n32718), .SP(clk_in_c_enable_134), .CD(n17030), 
            .CK(clk_in_c), .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i3.GSR = "DISABLED";
    FD1P3IX x_cnt__i7 (.D(n3422[7]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i7.GSR = "DISABLED";
    LUT4 Mux_406_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2903[8]), .Z(n2_adj_40)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_406_i2_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX x_cnt__i6 (.D(n3422[6]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i6.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_256 (.A(cnt[0]), .B(cnt[6]), .Z(n13967)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(208[16:18])
    defparam i1_2_lut_adj_256.init = 16'hbbbb;
    FD1P3IX x_cnt__i5 (.D(n3422[5]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i5.GSR = "DISABLED";
    FD1P3IX x_cnt__i4 (.D(n3422[4]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i4.GSR = "DISABLED";
    PFUMX i27894 (.BLUT(n30833), .ALUT(n30834), .C0(\x_cnt[0] ), .Z(n30836));
    FD1P3IX x_cnt__i3 (.D(n3422[3]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i3.GSR = "DISABLED";
    FD1P3IX x_cnt__i2 (.D(n3422[2]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i2.GSR = "DISABLED";
    FD1P3IX x_cnt__i1 (.D(n3422[1]), .SP(clk_in_c_enable_141), .CD(n25094), 
            .CK(clk_in_c), .Q(x_cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i1.GSR = "DISABLED";
    LUT4 i28318_3_lut (.A(n7_adj_1415), .B(n14_adj_1421), .C(\decade[3] ), 
         .Z(n30979)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28318_3_lut.init = 16'hcaca;
    FD1P3IX num_delay_i15 (.D(n6647), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i15.GSR = "DISABLED";
    FD1P3IX num_delay_i14 (.D(n6645), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i14.GSR = "DISABLED";
    FD1P3IX num_delay_i11 (.D(n29258), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i11.GSR = "DISABLED";
    LUT4 n3_bdd_3_lut_29312_4_lut (.A(n33038), .B(n32770), .C(n32778), 
         .D(n32450), .Z(n32451)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n3_bdd_3_lut_29312_4_lut.init = 16'hf202;
    FD1P3IX num_delay_i9 (.D(n30000), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i9.GSR = "DISABLED";
    FD1P3IX num_delay_i8 (.D(n30004), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i8.GSR = "DISABLED";
    LUT4 i27964_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32800), .D(n2903[8]), 
         .Z(n30906)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i27964_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_300_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(n32800), .Z(n8_adj_1454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_300_i8_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_257 (.A(n30050), .B(n35), .C(n32960), .D(cnt[4]), 
         .Z(n14239)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_257.init = 16'hafee;
    PFUMX i29199 (.BLUT(n32378), .ALUT(n14_adj_1377), .C0(n32766), .Z(n2239));
    LUT4 Mux_304_i8_3_lut (.A(n3032[7]), .B(n3045[5]), .C(n32800), .Z(n8_adj_1453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i8_3_lut.init = 16'hcaca;
    CCU2D sub_2548_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[1]), .B1(num_delay[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n27541));
    defparam sub_2548_add_2_2.INIT0 = 16'h0000;
    defparam sub_2548_add_2_2.INIT1 = 16'h5999;
    defparam sub_2548_add_2_2.INJECT1_0 = "NO";
    defparam sub_2548_add_2_2.INJECT1_1 = "NO";
    LUT4 Mux_303_i8_3_lut (.A(n3032[7]), .B(n3045[6]), .C(n32800), .Z(n8_adj_1452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_303_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_306_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n32800), .Z(n8_adj_1450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_306_i8_3_lut.init = 16'hcaca;
    PFUMX i28157 (.BLUT(n9711), .ALUT(n11829), .C0(x_cnt[1]), .Z(n31099));
    LUT4 i27873_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32785), .D(n2903[8]), 
         .Z(n30815)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i27873_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7283_3_lut (.A(n7_adj_1334), .B(n10116), .C(y_cnt[3]), .Z(n8_adj_1447)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i7283_3_lut.init = 16'hcaca;
    LUT4 Mux_278_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n32785), 
         .D(n2896), .Z(n2_adj_41)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_278_i2_3_lut_4_lut.init = 16'h2f20;
    LUT4 i27584_2_lut_rep_676 (.A(rst_n_in_c), .B(state[2]), .Z(n33133)) /* synthesis lut_function=(A (B)) */ ;
    defparam i27584_2_lut_rep_676.init = 16'h8888;
    LUT4 i28521_3_lut_4_lut_4_lut (.A(n32790), .B(n14495), .C(n14496), 
         .D(n32767), .Z(n14440)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i28521_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i28507_3_lut_4_lut_4_lut (.A(n32790), .B(n14497), .C(n14498), 
         .D(n32767), .Z(n14442)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i28507_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i1_2_lut_3_lut_adj_258 (.A(rst_n_in_c), .B(state[2]), .C(state[1]), 
         .Z(n17159)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_258.init = 16'h8080;
    PFUMX i29197 (.BLUT(n32376), .ALUT(n32375), .C0(n32774), .Z(n32377));
    PFUMX i27927 (.BLUT(n30865), .ALUT(n30866), .C0(n32796), .Z(n30869));
    LUT4 i2_3_lut_adj_259 (.A(n34_adj_1396), .B(cnt[5]), .C(n13774), .Z(n35)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2_3_lut_adj_259.init = 16'h0202;
    PFUMX i27928 (.BLUT(n30867), .ALUT(n30868), .C0(n32796), .Z(n30870));
    LUT4 Mux_282_i1_3_lut (.A(n2884), .B(n2898), .C(n32785), .Z(n1_adj_1381)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_260 (.A(n1696[4]), .B(n30619), .Z(n30140)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_260.init = 16'h2222;
    FD1P3IX num_delay_i7 (.D(n29278), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i7.GSR = "DISABLED";
    LUT4 n2412_bdd_4_lut_30054 (.A(n2412), .B(n2413), .C(n2411), .D(\x_cnt[0] ), 
         .Z(n32196)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam n2412_bdd_4_lut_30054.init = 16'hfaee;
    LUT4 i27684_4_lut (.A(state[2]), .B(n34279), .C(n32987), .D(state[0]), 
         .Z(n30619)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i27684_4_lut.init = 16'hfaee;
    LUT4 i17945_2_lut_4_lut (.A(n32759), .B(n4_adj_1315), .C(\ctrlword_595_3[13] ), 
         .D(n33043), .Z(n3720[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i17945_2_lut_4_lut.init = 16'hca00;
    FD1P3IX num_delay_i6 (.D(n6629), .SP(clk_in_c_enable_148), .CD(n25090), 
            .CK(clk_in_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i6.GSR = "DISABLED";
    FD1P3JX num_delay_i5 (.D(num_delay_15__N_1066[5]), .SP(clk_in_c_enable_150), 
            .PD(n30203), .CK(clk_in_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i5.GSR = "DISABLED";
    LUT4 i3_4_lut_adj_261 (.A(cnt[5]), .B(n6_adj_1472), .C(n33154), .D(n70), 
         .Z(n13883)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_261.init = 16'hfefc;
    LUT4 i1_4_lut_adj_262 (.A(cnt[4]), .B(n88), .C(n33003), .D(cnt[2]), 
         .Z(n70)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_262.init = 16'h8a88;
    LUT4 i1_4_lut_adj_263 (.A(n30653), .B(n30649), .C(n13774), .D(cnt[4]), 
         .Z(n85)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;
    defparam i1_4_lut_adj_263.init = 16'h3733;
    LUT4 i1_4_lut_adj_264 (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), .D(y_cnt[2]), 
         .Z(n2993[3])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(483[41:46])
    defparam i1_4_lut_adj_264.init = 16'h0a88;
    LUT4 i2831_2_lut_rep_679 (.A(n34303), .B(n34301), .Z(n33136)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i2831_2_lut_rep_679.init = 16'h6666;
    PFUMX i28885 (.BLUT(n31852), .ALUT(n31851), .C0(x_cnt[1]), .Z(n31853));
    LUT4 i27680_4_lut (.A(cnt[5]), .B(n33029), .C(cnt[6]), .D(n30671), 
         .Z(n30615)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27680_4_lut.init = 16'hfffe;
    LUT4 i27757_2_lut (.A(cnt[0]), .B(cnt[1]), .Z(n30671)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i27757_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_265 (.A(n1696[5]), .B(n30619), .Z(n30141)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_265.init = 16'h2222;
    LUT4 i1_4_lut_adj_266 (.A(n29944), .B(cnt[2]), .C(n14189), .D(n14097), 
         .Z(n30042)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_266.init = 16'ha080;
    PFUMX i27967 (.BLUT(n30905), .ALUT(n30906), .C0(n32796), .Z(n30909));
    LUT4 i18026_2_lut_rep_613_3_lut (.A(n34303), .B(n34301), .C(y_cnt[2]), 
         .Z(n33070)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i18026_2_lut_rep_613_3_lut.init = 16'h0606;
    LUT4 i18110_3_lut_4_lut_4_lut (.A(n34303), .B(n34301), .C(n34299), 
         .D(y_cnt[3]), .Z(n3045[9])) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i18110_3_lut_4_lut_4_lut.init = 16'h007e;
    LUT4 i1_2_lut_rep_680 (.A(state[0]), .B(state[1]), .Z(n33137)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_680.init = 16'heeee;
    LUT4 i28732_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_152)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C (D)))) */ ;
    defparam i28732_3_lut_4_lut.init = 16'he1ff;
    LUT4 i1_2_lut_rep_681 (.A(state[1]), .B(state[2]), .Z(n33138)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_681.init = 16'h2222;
    LUT4 i2_3_lut_adj_267 (.A(cnt_main[1]), .B(cnt_main[0]), .C(state[0]), 
         .Z(n27686)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i2_3_lut_adj_267.init = 16'h8080;
    LUT4 i4_4_lut_adj_268 (.A(n7_adj_1476), .B(cnt[3]), .C(n6_adj_1477), 
         .D(n30399), .Z(n29944)) /* synthesis lut_function=(A (B (C (D))+!B (C))) */ ;
    defparam i4_4_lut_adj_268.init = 16'ha020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(state[1]), .B(state[2]), .C(n1905[0]), 
         .D(rst_n_in_c), .Z(n22[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'h2000;
    LUT4 i2_4_lut_adj_270 (.A(n33000), .B(cnt[3]), .C(n33098), .D(n13747), 
         .Z(n7_adj_1476)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_270.init = 16'hfac8;
    LUT4 i1_4_lut_adj_271 (.A(cnt[0]), .B(n33001), .C(n30268), .D(n33099), 
         .Z(n6_adj_1477)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_271.init = 16'hf5c4;
    LUT4 i3055_3_lut_rep_482_4_lut (.A(n33098), .B(n32957), .C(n33010), 
         .D(n1489), .Z(n32939)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(200[16:18])
    defparam i3055_3_lut_rep_482_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_adj_272 (.A(n1696[6]), .B(n30619), .Z(n30142)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_272.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_adj_273 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .Z(n30167)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_adj_273.init = 16'h2020;
    LUT4 mux_454_Mux_2_i1_4_lut_4_lut (.A(n32987), .B(n4_adj_1461), .C(cnt_scan[0]), 
         .D(n3720[1]), .Z(n1_adj_1365)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_2_i1_4_lut_4_lut.init = 16'hf404;
    LUT4 i5_4_lut_adj_274 (.A(n33001), .B(n30269), .C(cnt[1]), .D(n13747), 
         .Z(n30399)) /* synthesis lut_function=(A (B (D))+!A !((C+!(D))+!B)) */ ;
    defparam i5_4_lut_adj_274.init = 16'h8c00;
    LUT4 i2_2_lut_rep_682 (.A(state[2]), .B(rst_n_in_c), .Z(n33139)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut_rep_682.init = 16'hbbbb;
    LUT4 i17935_2_lut_rep_621_3_lut (.A(state[2]), .B(rst_n_in_c), .C(state[1]), 
         .Z(n33078)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i17935_2_lut_rep_621_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_275 (.A(cnt[1]), .B(cnt[2]), .Z(n30258)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(228[16:17])
    defparam i1_2_lut_adj_275.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_623_3_lut (.A(state[2]), .B(rst_n_in_c), .C(state[1]), 
         .Z(n33080)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_623_3_lut.init = 16'hbfbf;
    LUT4 i18329_3_lut_3_lut_4_lut (.A(state[2]), .B(rst_n_in_c), .C(n2_adj_1307), 
         .D(state[1]), .Z(num_delay_15__N_803[3])) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i18329_3_lut_3_lut_4_lut.init = 16'h4044;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut (.A(state[2]), .B(rst_n_in_c), 
         .C(state[1]), .Z(clk_in_c_enable_125)) /* synthesis lut_function=(A ((C)+!B)+!A !(B (C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'hb7b7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_276 (.A(state[2]), .B(rst_n_in_c), .C(n3422[0]), 
         .D(state[1]), .Z(n30074)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_276.init = 16'h4000;
    LUT4 i1_2_lut_rep_683 (.A(n34299), .B(y_cnt[1]), .Z(n33140)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_683.init = 16'heeee;
    LUT4 i18019_2_lut_rep_617_3_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .Z(n33074)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i18019_2_lut_rep_617_3_lut.init = 16'h1010;
    LUT4 i18144_2_lut_rep_605_3_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .Z(n33062)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i18144_2_lut_rep_605_3_lut.init = 16'h0e0e;
    LUT4 i18018_2_lut_rep_622_3_lut (.A(n34299), .B(n34301), .C(n34303), 
         .Z(n33079)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i18018_2_lut_rep_622_3_lut.init = 16'hfefe;
    LUT4 mux_356_Mux_0_i15_3_lut_rep_608_3_lut (.A(n34299), .B(n34301), 
         .C(y_cnt[3]), .Z(n33065)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam mux_356_Mux_0_i15_3_lut_rep_608_3_lut.init = 16'h1a1a;
    PFUMX i29505 (.BLUT(n33161), .ALUT(n33162), .C0(n711), .Z(clk_divided_enable_8));
    LUT4 i11483_2_lut_rep_582_3_lut_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[0]), .Z(n33039)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i11483_2_lut_rep_582_3_lut_4_lut.init = 16'h0f1e;
    PFUMX i27968 (.BLUT(n30907), .ALUT(n30908), .C0(n32796), .Z(n30910));
    LUT4 i1_4_lut_adj_277 (.A(n32982), .B(n30166), .C(data_r[75]), .D(\x_cnt[0] ), 
         .Z(n28974)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_277.init = 16'ha088;
    PFUMX i28878 (.BLUT(n4_adj_1458), .ALUT(n31842), .C0(n32904), .Z(n31843));
    LUT4 i28701_4_lut (.A(rst_n_in_c), .B(n30167), .C(n20323), .D(n4_adj_1471), 
         .Z(clk_in_c_enable_99)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C)))) */ ;
    defparam i28701_4_lut.init = 16'h575f;
    LUT4 i29_4_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n13)) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(84[12:21])
    defparam i29_4_lut.init = 16'h3d3e;
    LUT4 i22302_4_lut (.A(n32987), .B(cnt_scan[1]), .C(cnt_scan[0]), .D(n33043), 
         .Z(n4_adj_1470)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[21:29])
    defparam i22302_4_lut.init = 16'h0232;
    LUT4 i1_2_lut_rep_685 (.A(n34301), .B(n34303), .Z(n33142)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_685.init = 16'heeee;
    LUT4 i1_2_lut_adj_278 (.A(rst_n_in_c), .B(n9), .Z(n29132)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_adj_278.init = 16'h8888;
    LUT4 i1_2_lut_rep_603_3_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .Z(n33060)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_603_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_279 (.A(cnt_init[0]), .B(n13671), .C(num_delay[3]), 
         .D(n33131), .Z(n38_adj_1478)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_279.init = 16'h5444;
    PFUMX i28164 (.BLUT(n31102), .ALUT(n31103), .C0(x_cnt[1]), .Z(n31106));
    LUT4 i1_4_lut_adj_280 (.A(n32940), .B(n13660), .C(num_delay[3]), .D(n32939), 
         .Z(n13671)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_280.init = 16'hc088;
    LUT4 i1_4_lut_adj_281 (.A(rst_n_in_c), .B(n27_adj_1479), .C(n33137), 
         .D(state[2]), .Z(n26[2])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_281.init = 16'h0a88;
    LUT4 i1_2_lut_adj_282 (.A(state[1]), .B(n9_adj_1357), .Z(n27_adj_1479)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_adj_282.init = 16'h8888;
    LUT4 i28035_4_lut (.A(n31022), .B(n33065), .C(x_cnt[2]), .D(n31853), 
         .Z(n30977)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i28035_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_585_3_lut_3_lut_4_lut_3_lut (.A(y_cnt[1]), .B(y_cnt[0]), 
         .C(y_cnt[2]), .Z(n33042)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_585_3_lut_3_lut_4_lut_3_lut.init = 16'he6e6;
    FD1P3JX num_delay_i4 (.D(num_delay_15__N_1066[4]), .SP(clk_in_c_enable_150), 
            .PD(n30203), .CK(clk_in_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i4.GSR = "DISABLED";
    LUT4 i28034_3_lut (.A(n32174), .B(n31015), .C(x_cnt[2]), .Z(n30976)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i28034_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut_4_lut_then_4_lut (.A(rst_n_in_c), .B(\cnt_main[1] ), .C(\cnt_main[0] ), 
         .D(n34286), .Z(n33162)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[2:10])
    defparam i2_4_lut_4_lut_then_4_lut.init = 16'h5557;
    LUT4 i3_4_lut_adj_283 (.A(cnt_write[4]), .B(state[0]), .C(cnt_write[0]), 
         .D(n33133), .Z(clk_in_c_enable_41)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_4_lut_adj_283.init = 16'h1000;
    LUT4 mux_167_i7_3_lut_4_lut (.A(n1489), .B(n33010), .C(n32941), .D(num_delay[6]), 
         .Z(n1586[6])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i7_3_lut_4_lut.init = 16'hef03;
    LUT4 n21631_bdd_4_lut_29368_4_lut (.A(n32769), .B(n2967[2]), .C(n33039), 
         .D(n32785), .Z(n32511)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n21631_bdd_4_lut_29368_4_lut.init = 16'h5044;
    LUT4 mux_167_i15_3_lut_4_lut (.A(n1489), .B(n33010), .C(n32941), .D(num_delay[14]), 
         .Z(n1586[14])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i15_3_lut_4_lut.init = 16'hef03;
    FD1P3AX num_delay_i3 (.D(num_delay_15__N_803[3]), .SP(clk_in_c_enable_151), 
            .CK(clk_in_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i3.GSR = "DISABLED";
    FD1P3IX cnt_delay__i15 (.D(n3996[15]), .SP(clk_in_c_enable_152), .CD(n17127), 
            .CK(clk_in_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i15.GSR = "DISABLED";
    LUT4 mux_167_i16_3_lut_4_lut (.A(n1489), .B(n33010), .C(n32941), .D(num_delay[15]), 
         .Z(n1586[15])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i16_3_lut_4_lut.init = 16'hef03;
    LUT4 mux_167_i2_3_lut_4_lut (.A(n1489), .B(n32941), .C(n32939), .D(num_delay[1]), 
         .Z(n1586[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam mux_167_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_4_lut_4_lut_adj_284 (.A(n32943), .B(n34278), .C(n18), .D(num_delay[5]), 
         .Z(n30006)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_284.init = 16'hfdf5;
    LUT4 i2_3_lut_rep_604_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n33061)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_rep_604_4_lut.init = 16'h000e;
    LUT4 i1_2_lut_rep_611_3_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(n20137), 
         .Z(n33068)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_611_3_lut.init = 16'hfefe;
    LUT4 i28631_2_lut_rep_578_2_lut_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n33035)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i28631_2_lut_rep_578_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 mux_357_Mux_6_i7_3_lut_rep_686 (.A(n34301), .B(n34303), .C(n34299), 
         .Z(n33143)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_357_Mux_6_i7_3_lut_rep_686.init = 16'h1818;
    LUT4 mux_377_Mux_3_i15_3_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam mux_377_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h18a0;
    LUT4 i1_4_lut_4_lut_adj_285 (.A(n32943), .B(n34278), .C(n38_adj_1465), 
         .D(num_delay[8]), .Z(n30004)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_285.init = 16'hfdf5;
    LUT4 i1_4_lut_4_lut_adj_286 (.A(n32943), .B(num_delay[9]), .C(n38), 
         .D(n34278), .Z(n30000)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_286.init = 16'hfdf5;
    LUT4 i18081_3_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3019[3])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i18081_3_lut_4_lut_4_lut.init = 16'h001e;
    LUT4 i1_2_lut_rep_687 (.A(n34299), .B(n34301), .Z(n33144)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_687.init = 16'h2222;
    LUT4 i4_4_lut_adj_287 (.A(y_cnt[3]), .B(n20137), .C(n34301), .D(n6_c), 
         .Z(n7_adj_1314)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i4_4_lut_adj_287.init = 16'h0200;
    LUT4 i1_4_lut_4_lut_adj_288 (.A(n32943), .B(n34278), .C(n38_adj_1478), 
         .D(num_delay[3]), .Z(n29998)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_288.init = 16'hfdf5;
    FD1P3IX y_cnt__i2_rep_705 (.D(n2021[2]), .SP(clk_in_c_enable_153), .CD(n17095), 
            .CK(clk_in_c), .Q(n34299)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i2_rep_705.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_289 (.A(n32943), .B(n30262), .C(n34), .D(cnt_init[2]), 
         .Z(n17)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_289.init = 16'h7555;
    LUT4 i1_4_lut_4_lut_adj_290 (.A(n32943), .B(state[0]), .C(n34282), 
         .D(n33859), .Z(n24[1])) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_4_lut_adj_290.init = 16'hf0d0;
    
endmodule
