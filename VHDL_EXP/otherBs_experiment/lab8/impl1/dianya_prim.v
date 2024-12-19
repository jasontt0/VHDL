// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.10.0.111.2
// Netlist written on Sat Dec 03 21:58:15 2022
//
// Verilog Description of module dianya
//

module dianya (clk_in, rst_n_in, mode_btn_in, adcdisplay, scl_out, 
            sda_out, din, sck, rck, DA_LCD, CLK_LCD, RST_LCD, 
            DC_LCD, BL_LCD);   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(6[9:15])
    input clk_in;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    input rst_n_in;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    input mode_btn_in;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(11[3:14])
    output [7:0]adcdisplay;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    output scl_out;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(14[3:10])
    inout sda_out;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(15[3:10])
    output din;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(16[3:6])
    output sck;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(17[3:6])
    output rck;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(18[3:6])
    output DA_LCD;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[3:9])
    output CLK_LCD;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[10:17])
    output RST_LCD;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[18:25])
    output DC_LCD;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[26:32])
    output BL_LCD;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[33:39])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    wire [15:0]ctrlword_595_3 /* synthesis is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    wire ctrlword_595_3_13_inv /* synthesis is_inv_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    
    wire GND_net, rst_n_in_c, mode_btn_in_c, adcdisplay_c_7, adcdisplay_c_6, 
        adcdisplay_c_5, adcdisplay_c_4, adcdisplay_c_3, adcdisplay_c_2, 
        adcdisplay_c_1, adcdisplay_c_0, scl_out_c, din_c, sck_c, rck_c, 
        DA_LCD_c, CLK_LCD_c, RST_LCD_c, DC_LCD_c, BL_LCD_c;
    wire [7:0]ADC_level;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(25[9:18])
    
    wire n5, btn_state;
    wire [3:0]realv_5;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(28[41:48])
    wire [3:0]decade;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(29[18:24])
    
    wire n14;
    wire [15:0]ctrlword_595_1;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(32[10:24])
    wire [15:0]voltage_code;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(49[8:20])
    
    wire n38234;
    wire [15:0]ctrlword_595_2;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(33[10:24])
    
    wire n4, n35515;
    wire [15:0]ctrlword_595_4;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(35[10:24])
    wire [15:0]ctrlword_595_5;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(36[10:24])
    
    wire n38095, n38233, n15351;
    wire [15:0]ctrlword_595_6;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(37[10:24])
    
    wire n38094;
    wire [7:0]adcdisplay_7__N_1;
    
    wire clk_divided_N_170;
    wire [3:0]cnt_write;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[25:34])
    wire [3:0]cnt_stop;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[35:43])
    wire [4:0]cnt_read;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(51[11:19])
    
    wire n36208;
    wire [3:0]scl_out_N_162;
    
    wire n35310, n4_adj_1594, n5_adj_1595, n36211, n2, n4_adj_1596, 
        n5_adj_1597, n36190, n38230, sda_out_N_166, sda_out_N_190, 
        sda_out_N_189, n2_adj_1598, n4_adj_1599, n36095, n2_adj_1600, 
        n4_adj_1601, n2_adj_1602, decade_3__N_561, decade_3__N_576, 
        decade_3__N_580, decade_0__N_605, hundreds_1__N_558, realv_1_1__N_293, 
        realv_1_1__N_292, sda_out_out, n38227, realv_1_1__N_303, realv_1_1__N_322, 
        realv_3_0__N_535, realv_1_0__N_460, realv_1_0__N_464, realv_1_0__N_466;
    wire [7:0]ctrlword_595_3_15__N_622;
    wire [7:0]ctrlword_595_4_15__N_638;
    wire [7:0]ctrlword_595_5_15__N_654;
    wire [7:0]ctrlword_595_6_15__N_670;
    wire [7:0]ctrlword_595_4_15__N_630;
    wire [7:0]ctrlword_595_5_15__N_646;
    wire [7:0]ctrlword_595_6_15__N_662;
    
    wire n5_adj_1603, n2_adj_1604, n1, n4_adj_1605, n2_adj_1606;
    wire [2:0]state_adj_1703;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    wire [7:0]x_cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(84[10:15])
    wire [131:0]data_r;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(85[10:16])
    
    wire n36049, n36082, n36046, n5_adj_1607, n38093, n4_adj_1608, 
        n35304, n5_adj_1609, n1_adj_1610, n2885, n2886, n4_adj_1611, 
        n2895, n2897, n2913, n2972, n2975, n3008, n14_adj_1612, 
        n1440, n19, n35589, n10530, n36029;
    wire [131:0]data_r_131__N_1121;
    
    wire n36033, n1_adj_1613, n36187;
    wire [15:0]num_delay_15__N_811;
    
    wire n3, n711, n714, n715, n36025, n36024, n7704, n35111, 
        n35776, clk_divided_enable_33, n1_adj_1614, n38064, n38063, 
        n2_adj_1615, n38061, n1_adj_1616, n1_adj_1617, n1_adj_1618, 
        n38089, n38088, n38079, n7, clk_divided_enable_23, n38036, 
        n36323, n5_adj_1619, n7_adj_1620, n15357, n38086, n37997, 
        n2_adj_1621, n6, n1_adj_1622, n38520, n39799, n21531, n38085, 
        n15411, n3_adj_1623, n6_adj_1624, n4_adj_1625, n37933, n37932, 
        n4_adj_1626, n14_adj_1627, n4_adj_1628, n37921, n6_adj_1629, 
        n5_adj_1630, n4_adj_1631, n36235, n2_adj_1632, n4_adj_1633, 
        n9756, n37900, n5_adj_1634, n4_adj_1635, n5_adj_1636, n1_adj_1637, 
        n5_adj_1638, n37888, n7_adj_1639, n2_adj_1640, n14_adj_1641, 
        n2_adj_1642, n38502, n38500, n14_adj_1643, n7_adj_1644, n36144, 
        n6_adj_1645, n5_adj_1646, n37211, n14_adj_1647, n38491, n5_adj_1648, 
        n4140, n4167, n8, n36984, n36229, n38482, n36326, n38478, 
        n38477, n2_adj_1649, n36232, n38084, n38472, n38854, n38853, 
        n38852, n38469, n38851, n38467, n36238, n38466, n15409, 
        n35518, n38457, n38456, n38454, n38083, n38078, n38073, 
        n1_adj_1650, n14_adj_1651, n6_adj_1652, n38436, n36976, n20699, 
        n38432, n4_adj_1653, n36975, n38428, n38563, n38421, n38139, 
        clk_divided_enable_20, n38413, n38135, n3_adj_1654, n4_adj_1655, 
        n36032, n36181, n38407, n38405, n35408, n1_adj_1656, n14_adj_1657, 
        n38387, n38125, n38082, n38383, n38117, n38116, n37124, 
        n38379, n38378, n1_adj_1658, n38377, n7768, n7772, n38115, 
        n38114, n36094, n38371, n10395, clk_in_c_enable_49, n38113, 
        n38081, n10314, n38111, n38110, n38109, n38355, n38354, 
        n38543, n37035, n2_adj_1659, clk_divided_enable_14, clk_divided_enable_15, 
        n35435, n51, n10228, n38332, n38329, clk_divided_enable_13, 
        n10172, n10164, n88, n32883, n38323, n12260, clk_in_c_enable_88, 
        n36342, n36063, n36341, n36339, n36338, n36336, n36335, 
        n36333, n38316, n36332, n36330, n36329, n36327, n36324, 
        n38105, n35513, n36081, n19656, n37074, n37210, n37498, 
        n38104, n38302, n35088, n38570, n36239, n36236, n36233, 
        n36230, n38284, n37060, n36221, n36220, n38562, n36212, 
        n36209, n38103, n39818, n38102, n4_adj_1660, n36191, n36188, 
        n36182, n35089, n38554, VCC_net, n17, n38553, n38080, 
        n14_adj_1661, n35406, n38264, n38075, n36164, n38261, n36937, 
        n35087, n36158, n36153, n36935, n5_adj_1662, n38253, n38252, 
        n38099, n38098, n38249, n38247, n38245, n38097, n38074, 
        n38241, n38240, n38239, n38238, n38237;
    
    VHI i35214 (.Z(VCC_net));
    VLO i1 (.Z(GND_net));
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB adcdisplay_pad_6 (.I(adcdisplay_c_6), .O(adcdisplay[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    FD1S3AX adcdisplay_i8 (.D(adcdisplay_7__N_1[7]), .CK(clk_in_c), .Q(adcdisplay_c_7));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i8.GSR = "DISABLED";
    OB adcdisplay_pad_7 (.I(adcdisplay_c_7), .O(adcdisplay[7]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    FD1S3AX adcdisplay_i7 (.D(adcdisplay_7__N_1[6]), .CK(clk_in_c), .Q(adcdisplay_c_6));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i7.GSR = "DISABLED";
    FD1S3AX adcdisplay_i6 (.D(n38454), .CK(clk_in_c), .Q(adcdisplay_c_5));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i6.GSR = "DISABLED";
    FD1S3AX adcdisplay_i5 (.D(adcdisplay_7__N_1[4]), .CK(clk_in_c), .Q(adcdisplay_c_4));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i5.GSR = "DISABLED";
    TSALL TSALL_INST (.TSALL(GND_net));
    BB sda_out_pad (.I(sda_out_N_166), .T(n9756), .B(sda_out), .O(sda_out_out));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(44[2] 192[15])
    FD1S3AX adcdisplay_i4 (.D(adcdisplay_7__N_1[3]), .CK(clk_in_c), .Q(adcdisplay_c_3));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i4.GSR = "DISABLED";
    FD1S3AX adcdisplay_i3 (.D(adcdisplay_7__N_1[2]), .CK(clk_in_c), .Q(adcdisplay_c_2));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i3.GSR = "DISABLED";
    FD1S3AX adcdisplay_i2 (.D(adcdisplay_7__N_1[1]), .CK(clk_in_c), .Q(adcdisplay_c_1));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i2.GSR = "DISABLED";
    LUT4 i2220_then_4_lut (.A(n38332), .B(cnt_write[0]), .C(n38371), .D(cnt_write[2]), 
         .Z(n38554)) /* synthesis lut_function=(A (B (C (D)))+!A !((D)+!C)) */ ;
    defparam i2220_then_4_lut.init = 16'h8050;
    LUT4 i2220_else_4_lut (.A(n38332), .B(cnt_write[0]), .C(n38371), .Z(n38553)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i2220_else_4_lut.init = 16'h4040;
    PFUMX i34642 (.BLUT(n38852), .ALUT(n38851), .C0(n38316), .Z(n38853));
    LUT4 n38854_bdd_3_lut (.A(n38854), .B(n38853), .C(n7704), .Z(realv_1_1__N_303)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38854_bdd_3_lut.init = 16'hcaca;
    LUT4 voltage_code_4__bdd_4_lut_35125 (.A(voltage_code[4]), .B(voltage_code[6]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_576)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D)+!C !(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut_35125.init = 16'h4204;
    LUT4 voltage_code_4__bdd_4_lut (.A(voltage_code[4]), .B(voltage_code[6]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_580)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut.init = 16'h0db0;
    OB adcdisplay_pad_5 (.I(adcdisplay_c_5), .O(adcdisplay[5]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB adcdisplay_pad_4 (.I(adcdisplay_c_4), .O(adcdisplay[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB adcdisplay_pad_3 (.I(adcdisplay_c_3), .O(adcdisplay[3]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB adcdisplay_pad_2 (.I(adcdisplay_c_2), .O(adcdisplay[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB adcdisplay_pad_1 (.I(adcdisplay_c_1), .O(adcdisplay[1]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB adcdisplay_pad_0 (.I(adcdisplay_c_0), .O(adcdisplay[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(13[3:13])
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(14[3:10])
    OB din_pad (.I(din_c), .O(din));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(16[3:6])
    OB sck_pad (.I(sck_c), .O(sck));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(17[3:6])
    OB rck_pad (.I(rck_c), .O(rck));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(18[3:6])
    OB DA_LCD_pad (.I(DA_LCD_c), .O(DA_LCD));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[3:9])
    OB CLK_LCD_pad (.I(CLK_LCD_c), .O(CLK_LCD));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[10:17])
    OB RST_LCD_pad (.I(RST_LCD_c), .O(RST_LCD));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[18:25])
    OB DC_LCD_pad (.I(DC_LCD_c), .O(DC_LCD));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[26:32])
    OB BL_LCD_pad (.I(BL_LCD_c), .O(BL_LCD));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(19[33:39])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    IB mode_btn_in_pad (.I(mode_btn_in), .O(mode_btn_in_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(11[3:14])
    LUT4 voltage_code_13__bdd_4_lut (.A(voltage_code[13]), .B(voltage_code[12]), 
         .C(voltage_code[14]), .D(voltage_code[15]), .Z(realv_1_1__N_293)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam voltage_code_13__bdd_4_lut.init = 16'h2410;
    LUT4 voltage_code_5__bdd_4_lut (.A(voltage_code[5]), .B(ADC_level[7]), 
         .C(voltage_code[6]), .D(voltage_code[4]), .Z(decade_3__N_561)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A !(B (C)+!B !(C (D)))) */ ;
    defparam voltage_code_5__bdd_4_lut.init = 16'hb424;
    PFUMX i33870 (.BLUT(n37211), .ALUT(n37210), .C0(n7704), .Z(realv_1_1__N_322));
    LUT4 n38230_bdd_3_lut_35188 (.A(realv_1_1__N_292), .B(n7772), .C(n38316), 
         .Z(n38854)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n38230_bdd_3_lut_35188.init = 16'h1010;
    LUT4 n38230_bdd_3_lut_34644 (.A(n38230), .B(realv_1_1__N_292), .C(n7768), 
         .Z(n38852)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam n38230_bdd_3_lut_34644.init = 16'he0e0;
    LUT4 n38230_bdd_4_lut_35187 (.A(n38230), .B(n38264), .C(realv_1_1__N_292), 
         .D(n7772), .Z(n38851)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C))+!A !(B (C+(D))+!B (C))) */ ;
    defparam n38230_bdd_4_lut_35187.init = 16'h838f;
    LUT4 i18933_2_lut_rep_607_3_lut (.A(n38472), .B(scl_out_N_162[1]), .C(scl_out_N_162[2]), 
         .Z(n38354)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;
    defparam i18933_2_lut_rep_607_3_lut.init = 16'hf6f6;
    LUT4 i2181_2_lut_3_lut (.A(n38472), .B(scl_out_N_162[1]), .C(scl_out_N_162[2]), 
         .Z(n4140)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;
    defparam i2181_2_lut_3_lut.init = 16'h9090;
    LUT4 i1_2_lut_rep_576_3_lut_3_lut_4_lut (.A(n38472), .B(scl_out_N_162[1]), 
         .C(n38379), .D(scl_out_N_162[2]), .Z(n38323)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_576_3_lut_3_lut_4_lut.init = 16'hfff6;
    LUT4 ADC_level_7__I_0_i8_1_lut (.A(ADC_level[7]), .Z(adcdisplay_7__N_1[7])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(144[23:32])
    defparam ADC_level_7__I_0_i8_1_lut.init = 16'h5555;
    FD1S3AX adcdisplay_i1 (.D(n38457), .CK(clk_in_c), .Q(adcdisplay_c_0));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(143[5] 145[9])
    defparam adcdisplay_i1.GSR = "DISABLED";
    mode_shift mode_control (.rst_n_in_c(rst_n_in_c), .state({state_adj_1703}), 
            .n38421(n38421), .clk_in_c(clk_in_c), .btn_state(btn_state), 
            .\ctrlword_595_3[13] (ctrlword_595_3[13]), .\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), 
            .n4(n4_adj_1625), .n35435(n35435), .\num_delay_15__N_811[1] (num_delay_15__N_811[1]), 
            .n35515(n35515), .clk_divided_enable_20(clk_divided_enable_20), 
            .cnt_stop({cnt_stop}), .n714(n714), .n38477(n38477), .\cnt_write[0] (cnt_write[0]), 
            .n38371(n38371), .n35406(n35406), .\cnt_read[0] (cnt_read[0]), 
            .n39799(n39799), .n35408(n35408), .n35518(n35518), .n8(n8), 
            .n38482(n38482), .n38387(n38387), .n20699(n20699), .clk_in_c_enable_88(clk_in_c_enable_88), 
            .n88(n88), .n711(n711), .n715(n715), .clk_divided_enable_13(clk_divided_enable_13), 
            .n35111(n35111), .clk_divided_enable_33(clk_divided_enable_33), 
            .n5(n5_adj_1662), .n35776(n35776), .clk_divided_enable_14(clk_divided_enable_14), 
            .n4_adj_130(n4_adj_1653), .sda_out_N_190(sda_out_N_190), .sda_out_N_189(sda_out_N_189), 
            .n38478(n38478), .n14(n14_adj_1661), .n17(n17), .n38413(n38413), 
            .n38543(n38543), .n19(n19), .clk_divided_enable_15(clk_divided_enable_15), 
            .n38563(n38563), .clk_divided_enable_23(clk_divided_enable_23), 
            .n19656(n19656), .n2(n2_adj_1659), .\num_delay_15__N_811[3] (num_delay_15__N_811[3]), 
            .clk_divided_N_170(clk_divided_N_170), .n1440(n1440), .n38562(n38562), 
            .clk_in_c_enable_49(clk_in_c_enable_49));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(136[18:28])
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 ADC_level_7__I_0_i4_1_lut (.A(voltage_code[3]), .Z(adcdisplay_7__N_1[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(144[23:32])
    defparam ADC_level_7__I_0_i4_1_lut.init = 16'h5555;
    LCD_display LCDdisplay (.\realv_5[0] (realv_5[0]), .x_cnt({Open_0, Open_1, 
            Open_2, Open_3, Open_4, Open_5, x_cnt[1:0]}), .n38098(n38098), 
            .n38478(n38478), .state({state_adj_1703}), .clk_in_c(clk_in_c), 
            .n36024(n36024), .n38097(n38097), .n36025(n36025), .n38085(n38085), 
            .n36081(n36081), .n36082(n36082), .n38089(n38089), .GND_net(GND_net), 
            .n5(n5_adj_1609), .n38114(n38114), .n38240(n38240), .n2913(n2913), 
            .n38104(n38104), .n5_adj_62(n5_adj_1636), .n38456(n38456), 
            .rst_n_in_c(rst_n_in_c), .n39799(n39799), .n38467(n38467), 
            .n35087(n35087), .n4(n4_adj_1626), .n38371(n38371), .n38491(n38491), 
            .n7(n7_adj_1644), .n38466(n38466), .n35089(n35089), .n38428(n38428), 
            .n6(n6_adj_1645), .n36935(n36935), .BL_LCD_c(BL_LCD_c), .n38241(n38241), 
            .n38239(n38239), .n38383(n38383), .n35088(n35088), .n3008(n3008), 
            .n5_adj_63(n5_adj_1619), .n38105(n38105), .n38102(n38102), 
            .n38113(n38113), .n36153(n36153), .n10228(n10228), .n10164(n10164), 
            .n38099(n38099), .n38115(n38115), .n10172(n10172), .n1(n1_adj_1618), 
            .n36181(n36181), .n36182(n36182), .n38117(n38117), .n36190(n36190), 
            .n36191(n36191), .n36211(n36211), .n36212(n36212), .n36220(n36220), 
            .n36221(n36221), .\decade[3] (decade[3]), .n36229(n36229), 
            .n36230(n36230), .n36232(n36232), .n36233(n36233), .n36235(n36235), 
            .n36236(n36236), .n36238(n36238), .n36239(n36239), .\x_cnt[2] (x_cnt[2]), 
            .\x_cnt[3] (x_cnt[3]), .clk_in_c_enable_49(clk_in_c_enable_49), 
            .n36984(n36984), .n38520(n38520), .n2895(n2895), .n38502(n38502), 
            .n2975(n2975), .n38378(n38378), .n38074(n38074), .n2(n2_adj_1621), 
            .n38103(n38103), .n5_adj_64(n5_adj_1630), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .n38407(n38407), .cnt_stop({cnt_stop}), .n38234(n38234), .realv_1_0__N_466(realv_1_0__N_466), 
            .realv_1_0__N_464(realv_1_0__N_464), .realv_1_0__N_460(realv_1_0__N_460), 
            .n2897(n2897), .n38302(n38302), .n38080(n38080), .n2885(n2885), 
            .n2886(n2886), .n38405(n38405), .n5_adj_65(n5_adj_1595), .n4_adj_66(n4_adj_1594), 
            .n5_adj_67(n5_adj_1597), .n4_adj_68(n4_adj_1596), .n38078(n38078), 
            .n38377(n38377), .n38081(n38081), .n38084(n38084), .n1_adj_69(n1_adj_1622), 
            .n38469(n38469), .DA_LCD_c(DA_LCD_c), .n38086(n38086), .n4_adj_70(n4_adj_1611), 
            .n36029(n36029), .n38064(n38064), .n36164(n36164), .n38075(n38075), 
            .n3(n3), .n38082(n38082), .n14(n14), .\voltage_code[6] (voltage_code[6]), 
            .\ADC_level[7] (ADC_level[7]), .\voltage_code[5] (voltage_code[5]), 
            .n35513(n35513), .hundreds_1__N_558(hundreds_1__N_558), .n14_adj_71(n14_adj_1612), 
            .n38088(n38088), .n14_adj_72(n14_adj_1641), .n38083(n38083), 
            .n38063(n38063), .n38073(n38073), .n38284(n38284), .n36063(n36063), 
            .n35515(n35515), .n38227(n38227), .n38109(n38109), .n38110(n38110), 
            .n38036(n38036), .\num_delay_15__N_811[1] (num_delay_15__N_811[1]), 
            .n38421(n38421), .n35435(n35435), .n35310(n35310), .n38094(n38094), 
            .n38093(n38093), .\data_r[91] (data_r[91]), .\data_r[96] (data_r[96]), 
            .\data_r[97] (data_r[97]), .\data_r[98] (data_r[98]), .\data_r[99] (data_r[99]), 
            .\data_r[100] (data_r[100]), .\data_r[101] (data_r[101]), .\data_r_131__N_1121[121] (data_r_131__N_1121[121]), 
            .\data_r_131__N_1121[120] (data_r_131__N_1121[120]), .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), 
            .n1_adj_73(n1_adj_1637), .n35589(n35589), .n4_adj_74(n4_adj_1625), 
            .n37997(n37997), .n38355(n38355), .n32883(n32883), .n4_adj_75(n4_adj_1660), 
            .n38329(n38329), .n51(n51), .n38079(n38079), .n3_adj_76(n3_adj_1623), 
            .n3_adj_77(n3_adj_1654), .n1_adj_78(n1_adj_1650), .n2972(n2972), 
            .n1_adj_79(n1_adj_1613), .n14_adj_80(n14_adj_1661), .n1_adj_81(n1_adj_1614), 
            .n38413(n38413), .n36323(n36323), .n36324(n36324), .n38249(n38249), 
            .RST_LCD_c(RST_LCD_c), .CLK_LCD_c(CLK_LCD_c), .clk_in_c_enable_88(clk_in_c_enable_88), 
            .DC_LCD_c(DC_LCD_c), .n36326(n36326), .n36327(n36327), .n36329(n36329), 
            .n36330(n36330), .n36332(n36332), .n36333(n36333), .n36335(n36335), 
            .n36336(n36336), .n36338(n36338), .n36339(n36339), .n36341(n36341), 
            .n36342(n36342), .n36032(n36032), .n36033(n36033), .n7_adj_82(n7_adj_1639), 
            .n2_adj_83(n2_adj_1659), .n37921(n37921), .n38436(n38436), 
            .n38387(n38387), .n38500(n38500), .n5_adj_84(n5_adj_1646), 
            .n5_adj_85(n5), .n37888(n37888), .n15357(n15357), .n15351(n15351), 
            .n4_adj_86(n4_adj_1628), .n12260(n12260), .n38233(n38233), 
            .n38238(n38238), .n38237(n38237), .n38245(n38245), .n38253(n38253), 
            .decade_0__N_605(decade_0__N_605), .realv_3_0__N_535(realv_3_0__N_535), 
            .n38111(n38111), .n38125(n38125), .n37035(n37035), .n6_adj_87(n6_adj_1629), 
            .n35304(n35304), .n6_adj_88(n6_adj_1624), .n10395(n10395), 
            .n38095(n38095), .\ctrlword_595_5_15__N_654[3] (ctrlword_595_5_15__N_654[3]), 
            .n7_adj_89(n7), .n4_adj_90(n4_adj_1653), .n17(n17), .n2_adj_91(n2_adj_1632), 
            .n36158(n36158), .n4_adj_92(n4_adj_1631), .n1_adj_93(n1_adj_1658), 
            .n2_adj_94(n2_adj_1604), .n4_adj_95(n4_adj_1633), .n5_adj_96(n5_adj_1603), 
            .n1_adj_97(n1), .n2_adj_98(n2_adj_1600), .n4_adj_99(n4_adj_1635), 
            .n5_adj_100(n5_adj_1634), .n2_adj_101(n2_adj_1602), .n4_adj_102(n4_adj_1601), 
            .n2_adj_103(n2_adj_1606), .n4_adj_104(n4_adj_1605), .n5_adj_105(n5_adj_1638), 
            .n2_adj_106(n2_adj_1640), .n38061(n38061), .n14_adj_107(n14_adj_1657), 
            .n14_adj_108(n14_adj_1647), .n4_adj_109(n4_adj_1599), .n5_adj_110(n5_adj_1607), 
            .n4_adj_111(n4_adj_1655), .n5_adj_112(n5_adj_1648), .n4_adj_113(n4_adj_1608), 
            .n14_adj_114(n14_adj_1627), .n14_adj_115(n14_adj_1643), .n2_adj_116(n2), 
            .n2_adj_117(n2_adj_1598), .n14_adj_118(n14_adj_1651), .n2_adj_119(n2_adj_1649), 
            .\num_delay_15__N_811[3] (num_delay_15__N_811[3]), .n37074(n37074), 
            .n1_adj_120(n1_adj_1656), .n38116(n38116), .n1_adj_121(n1_adj_1616), 
            .n6_adj_122(n6_adj_1652), .n6_adj_123(n6), .n36144(n36144), 
            .n1_adj_124(n1_adj_1617), .n36187(n36187), .n36188(n36188), 
            .n36208(n36208), .n36209(n36209), .n36049(n36049), .n36094(n36094), 
            .n36095(n36095), .n37060(n37060), .n38457(n38457), .n37933(n37933), 
            .n10530(n10530), .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), 
            .\voltage_code[1] (voltage_code[1]), .n38135(n38135), .n38139(n38139), 
            .n36975(n36975), .n7_adj_125(n7_adj_1620), .n10314(n10314), 
            .\ctrlword_595_6_15__N_670[3] (ctrlword_595_6_15__N_670[3]), .n38252(n38252), 
            .n38261(n38261), .n37498(n37498), .n4_adj_126(n4), .n15409(n15409), 
            .n15411(n15411), .n38432(n38432), .\ctrlword_595_4_15__N_638[5] (ctrlword_595_4_15__N_638[5]), 
            .n37900(n37900), .n21531(n21531), .n20699(n20699), .n2_adj_127(n2_adj_1615), 
            .n1_adj_128(n1_adj_1610), .n2_adj_129(n2_adj_1642), .\ctrlword_595_3_15__N_622[3] (ctrlword_595_3_15__N_622[3]), 
            .n38570(n38570), .n36046(n36046), .n36937(n36937));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(139[16:27])
    LUT4 ADC_level_7__I_0_i3_1_lut (.A(voltage_code[2]), .Z(adcdisplay_7__N_1[2])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(144[23:32])
    defparam ADC_level_7__I_0_i3_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i2_1_lut (.A(voltage_code[1]), .Z(adcdisplay_7__N_1[1])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(144[23:32])
    defparam ADC_level_7__I_0_i2_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i6_1_lut_rep_707 (.A(voltage_code[5]), .Z(n38454)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(144[23:32])
    defparam ADC_level_7__I_0_i6_1_lut_rep_707.init = 16'h5555;
    LUT4 realv_1_1__N_279_bdd_3_lut_4_lut_3_lut_4_lut (.A(n7768), .B(n7772), 
         .C(n38316), .D(realv_1_1__N_292), .Z(n37211)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_1_1__N_279_bdd_3_lut_4_lut_3_lut_4_lut.init = 16'hca0a;
    LUT4 i5055_2_lut_rep_500_3_lut (.A(n7772), .B(n38316), .C(realv_1_1__N_292), 
         .Z(n38247)) /* synthesis lut_function=(A (B)+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5055_2_lut_rep_500_3_lut.init = 16'hc8c8;
    btn_debouncing btn_debounce (.clk_in_c(clk_in_c), .btn_state(btn_state), 
            .GND_net(GND_net), .mode_btn_in_c(mode_btn_in_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(135[18:32])
    ctrlword_595 datato595 (.clk_in_c(clk_in_c), .\ctrlword_595_5_15__N_654[3] (ctrlword_595_5_15__N_654[3]), 
            .\ctrlword_595_5[6] (ctrlword_595_5[6]), .sck_c(sck_c), .\ctrlword_595_6_15__N_670[3] (ctrlword_595_6_15__N_670[3]), 
            .\ctrlword_595_6[6] (ctrlword_595_6[6]), .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), 
            .hundreds_1__N_558(hundreds_1__N_558), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .\ctrlword_595_4_15__N_638[7] (ctrlword_595_4_15__N_638[7]), .GND_net(GND_net), 
            .\ctrlword_595_4_15__N_638[3] (ctrlword_595_4_15__N_638[3]), .\ctrlword_595_3[6] (ctrlword_595_3[6]), 
            .\ctrlword_595_3[7] (ctrlword_595_3[7]), .\ctrlword_595_3[1] (ctrlword_595_3[1]), 
            .\ctrlword_595_3[2] (ctrlword_595_3[2]), .\ctrlword_595_5_15__N_654[2] (ctrlword_595_5_15__N_654[2]), 
            .\ctrlword_595_5_15__N_646[2] (ctrlword_595_5_15__N_646[2]), .\ctrlword_595_2[5] (ctrlword_595_2[5]), 
            .\ctrlword_595_2[1] (ctrlword_595_2[1]), .\ctrlword_595_2[2] (ctrlword_595_2[2]), 
            .din_c(din_c), .\ctrlword_595_4_15__N_638[1] (ctrlword_595_4_15__N_638[1]), 
            .\ctrlword_595_5[4] (ctrlword_595_5[4]), .\ctrlword_595_5[5] (ctrlword_595_5[5]), 
            .n38110(n38110), .n38116(n38116), .n38117(n38117), .\realv_5[0] (realv_5[0]), 
            .\ctrlword_595_1[7] (ctrlword_595_1[7]), .n38094(n38094), .n38104(n38104), 
            .n38105(n38105), .n38114(n38114), .n38237(n38237), .n38249(n38249), 
            .n38245(n38245), .\decade[3] (decade[3]), .n38240(n38240), 
            .n38239(n38239), .n38241(n38241), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .rst_n_in_c(rst_n_in_c), .rck_c(rck_c), .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), 
            .\ctrlword_595_6_15__N_662[2] (ctrlword_595_6_15__N_662[2]), .n36976(n36976), 
            .n36975(n36975), .\ctrlword_595_4_15__N_638[6] (ctrlword_595_4_15__N_638[6]), 
            .n38098(n38098), .n38088(n38088), .n38089(n38089), .n38097(n38097), 
            .\ctrlword_595_6_15__N_662[4] (ctrlword_595_6_15__N_662[4]), .n37124(n37124), 
            .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), .n37933(n37933), 
            .n37932(n37932), .\ctrlword_595_3[3] (ctrlword_595_3[3]), .\ctrlword_595_3[4] (ctrlword_595_3[4]), 
            .n37900(n37900), .\ctrlword_595_2[4] (ctrlword_595_2[4]), .\ctrlword_595_4[4] (ctrlword_595_4[4]), 
            .\ctrlword_595_2[3] (ctrlword_595_2[3]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(138[15:27])
    PFUMX i34473 (.BLUT(n38553), .ALUT(n38554), .C0(cnt_write[1]), .Z(n4167));
    LUT4 m0_lut (.Z(n39818)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    ADC ADC_work (.cnt_write({Open_6, cnt_write[2:0]}), .sda_out_N_166(sda_out_N_166), 
        .n715(n715), .rst_n_in_c(rst_n_in_c), .n714(n714), .clk_divided_enable_20(clk_divided_enable_20), 
        .n38482(n38482), .cnt_stop({cnt_stop}), .clk_divided_enable_23(clk_divided_enable_23), 
        .n39818(n39818), .n38562(n38562), .clk_in_c(clk_in_c), .n1440(n1440), 
        .n35088(n35088), .n35089(n35089), .n35087(n35087), .n9756(n9756), 
        .clk_divided_N_170(clk_divided_N_170), .n4167(n4167), .n38371(n38371), 
        .n38383(n38383), .\realv_5[0] (realv_5[0]), .clk_divided_enable_13(clk_divided_enable_13), 
        .n39799(n39799), .clk_divided_enable_14(clk_divided_enable_14), 
        .n35406(n35406), .clk_divided_enable_15(clk_divided_enable_15), 
        .n8(n8), .\cnt_read[0] (cnt_read[0]), .n35408(n35408), .n4(n4_adj_1660), 
        .n38428(n38428), .sda_out_out(sda_out_out), .n711(n711), .n88(n88), 
        .n38563(n38563), .sda_out_N_189(sda_out_N_189), .n38329(n38329), 
        .n38354(n38354), .n4140(n4140), .n35111(n35111), .n38477(n38477), 
        .n51(n51), .n38323(n38323), .n38332(n38332), .n38472(n38472), 
        .n35518(n35518), .n38466(n38466), .n38467(n38467), .n38456(n38456), 
        .\scl_out_N_162[2] (scl_out_N_162[2]), .n35776(n35776), .scl_out_c(scl_out_c), 
        .n38379(n38379), .n38570(n38570), .n7(n7_adj_1644), .n5(n5_adj_1662), 
        .n6(n6_adj_1645), .\voltage_code[1] (voltage_code[1]), .clk_divided_enable_33(clk_divided_enable_33), 
        .n19656(n19656), .n19(n19), .sda_out_N_190(sda_out_N_190), .\voltage_code[2] (voltage_code[2]), 
        .\voltage_code[3] (voltage_code[3]), .\voltage_code[4] (voltage_code[4]), 
        .\voltage_code[5] (voltage_code[5]), .\voltage_code[6] (voltage_code[6]), 
        .\ADC_level[7] (ADC_level[7]), .n38407(n38407), .n32883(n32883), 
        .n38491(n38491), .\scl_out_N_162[1] (scl_out_N_162[1]), .GND_net(GND_net), 
        .n38543(n38543), .n38355(n38355));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(134[17:20])
    trans_BCD BCD_transform (.n38239(n38239), .n38240(n38240), .GND_net(GND_net), 
            .\voltage_code[15] (voltage_code[15]), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .\ctrlword_595_5[4] (ctrlword_595_5[4]), .\voltage_code[6] (voltage_code[6]), 
            .\voltage_code[5] (voltage_code[5]), .\ctrlword_595_1[7] (ctrlword_595_1[7]), 
            .\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), .n39818(n39818), 
            .\ctrlword_595_2[1] (ctrlword_595_2[1]), .n38103(n38103), .\ctrlword_595_2[2] (ctrlword_595_2[2]), 
            .\ctrlword_595_2[3] (ctrlword_595_2[3]), .\ctrlword_595_2[4] (ctrlword_595_2[4]), 
            .\ctrlword_595_3[1] (ctrlword_595_3[1]), .\ctrlword_595_3[2] (ctrlword_595_3[2]), 
            .\ctrlword_595_3[3] (ctrlword_595_3[3]), .\ctrlword_595_3_15__N_622[3] (ctrlword_595_3_15__N_622[3]), 
            .\ctrlword_595_3[4] (ctrlword_595_3[4]), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .\ctrlword_595_3[6] (ctrlword_595_3[6]), .\ctrlword_595_3[7] (ctrlword_595_3[7]), 
            .\ADC_level[7] (ADC_level[7]), .\voltage_code[13] (voltage_code[13]), 
            .\voltage_code[14] (voltage_code[14]), .\realv_5[0] (realv_5[0]), 
            .\voltage_code[1] (voltage_code[1]), .\decade[3] (decade[3]), 
            .n38241(n38241), .\ctrlword_595_5_15__N_646[2] (ctrlword_595_5_15__N_646[2]), 
            .\voltage_code[4] (voltage_code[4]), .\voltage_code[12] (voltage_code[12]), 
            .n7(n7), .n38094(n38094), .n7704(n7704), .\voltage_code[2] (voltage_code[2]), 
            .n38252(n38252), .n2(n2_adj_1642), .n1(n1_adj_1616), .n36341(n36341), 
            .n5(n5_adj_1636), .n4(n4_adj_1601), .n36333(n36333), .n2_adj_1(n2_adj_1632), 
            .n1_adj_2(n1_adj_1610), .n36323(n36323), .n38110(n38110), 
            .n5_adj_3(n5_adj_1634), .n4_adj_4(n4_adj_1635), .n36330(n36330), 
            .n38085(n38085), .n38079(n38079), .n38084(n38084), .n38086(n38086), 
            .n2_adj_5(n2_adj_1606), .n10228(n10228), .n36335(n36335), 
            .n2_adj_6(n2_adj_1615), .n36032(n36032), .n38261(n38261), 
            .n5_adj_7(n5_adj_1646), .n4_adj_8(n4_adj_1608), .n36033(n36033), 
            .n5_adj_9(n5_adj_1619), .n4_adj_10(n4_adj_1626), .n6(n6_adj_1624), 
            .n7772(n7772), .n38316(n38316), .n7768(n7768), .realv_1_1__N_292(realv_1_1__N_292), 
            .n38135(n38135), .n36221(n36221), .decade_3__N_561(decade_3__N_561), 
            .n36238(n36238), .n36181(n36181), .n36229(n36229), .n2_adj_11(n2_adj_1602), 
            .n1_adj_12(n1), .n36220(n36220), .n2_adj_13(n2_adj_1600), 
            .n36329(n36329), .n36212(n36212), .decade_3__N_580(decade_3__N_580), 
            .decade_3__N_576(decade_3__N_576), .n6_adj_14(n6), .\voltage_code[3] (voltage_code[3]), 
            .n36235(n36235), .n5_adj_15(n5_adj_1607), .n4_adj_16(n4_adj_1599), 
            .n36233(n36233), .n5_adj_17(n5_adj_1638), .n4_adj_18(n4_adj_1605), 
            .n36230(n36230), .n5_adj_19(n5_adj_1648), .n4_adj_20(n4_adj_1655), 
            .n36342(n36342), .realv_1_0__N_460(realv_1_0__N_460), .realv_1_0__N_464(realv_1_0__N_464), 
            .n2_adj_21(n2_adj_1640), .n36232(n36232), .n2_adj_22(n2_adj_1604), 
            .n1_adj_23(n1_adj_1658), .n36190(n36190), .n5_adj_24(n5_adj_1609), 
            .n4_adj_25(n4_adj_1631), .n36182(n36182), .n5_adj_26(n5_adj_1603), 
            .n4_adj_27(n4_adj_1633), .n36191(n36191), .n36236(n36236), 
            .n36211(n36211), .n36239(n36239), .n38502(n38502), .n38074(n38074), 
            .n5_adj_28(n5_adj_1630), .n4_adj_29(n4_adj_1628), .n6_adj_30(n6_adj_1652), 
            .n38098(n38098), .n38088(n38088), .n38089(n38089), .n38097(n38097), 
            .\ctrlword_595_4_15__N_638[6] (ctrlword_595_4_15__N_638[6]), .n38105(n38105), 
            .n38104(n38104), .n38114(n38114), .n38139(n38139), .n37932(n37932), 
            .n36976(n36976), .n38111(n38111), .n38080(n38080), .n15351(n15351), 
            .n35589(n35589), .n35310(n35310), .n38284(n38284), .n38469(n38469), 
            .\data_r_131__N_1121[121] (data_r_131__N_1121[121]), .realv_3_0__N_535(realv_3_0__N_535), 
            .n38125(n38125), .n14(n14_adj_1643), .n7_adj_31(n7_adj_1639), 
            .n36081(n36081), .n14_adj_32(n14_adj_1657), .n37060(n37060), 
            .n36082(n36082), .n38061(n38061), .n38063(n38063), .n38064(n38064), 
            .n14_adj_33(n14_adj_1627), .n36153(n36153), .n36046(n36046), 
            .n14_adj_34(n14_adj_1647), .n37074(n37074), .n36029(n36029), 
            .n14_adj_35(n14_adj_1651), .n36984(n36984), .n36049(n36049), 
            .n38115(n38115), .n38099(n38099), .n38082(n38082), .n38095(n38095), 
            .n10395(n10395), .realv_1_0__N_466(realv_1_0__N_466), .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), 
            .n1_adj_36(n1_adj_1656), .n38113(n38113), .realv_1_1__N_293(realv_1_1__N_293), 
            .\x_cnt[2] (x_cnt[2]), .\data_r[91] (data_r[91]), .\data_r[98] (data_r[98]), 
            .n1_adj_37(n1_adj_1613), .n38116(n38116), .\data_r[96] (data_r[96]), 
            .\data_r[100] (data_r[100]), .\x_cnt[3] (x_cnt[3]), .n10314(n10314), 
            .\data_r[99] (data_r[99]), .n38117(n38117), .n38109(n38109), 
            .n21531(n21531), .\x_cnt[1] (x_cnt[1]), .n12260(n12260), .\data_r[97] (data_r[97]), 
            .\data_r[101] (data_r[101]), .\ctrlword_595_4_15__N_638[7] (ctrlword_595_4_15__N_638[7]), 
            .n38237(n38237), .n38249(n38249), .n38245(n38245), .n37124(n37124), 
            .n38078(n38078), .n36324(n36324), .\ctrlword_595_4[4] (ctrlword_595_4[4]), 
            .realv_1_1__N_303(realv_1_1__N_303), .\ctrlword_595_4_15__N_638[5] (ctrlword_595_4_15__N_638[5]), 
            .n7_adj_38(n7_adj_1620), .\ctrlword_595_6_15__N_662[4] (ctrlword_595_6_15__N_662[4]), 
            .n38102(n38102), .n35513(n35513), .n36336(n36336), .\ctrlword_595_4_15__N_638[3] (ctrlword_595_4_15__N_638[3]), 
            .n38075(n38075), .\x_cnt[0] (x_cnt[0]), .n36063(n36063), .\ctrlword_595_4_15__N_638[1] (ctrlword_595_4_15__N_638[1]), 
            .n3008(n3008), .n38378(n38378), .n37888(n37888), .n5_adj_39(n5_adj_1597), 
            .n4_adj_40(n4_adj_1596), .n36188(n36188), .n38302(n38302), 
            .n38377(n38377), .\data_r_131__N_1121[120] (data_r_131__N_1121[120]), 
            .hundreds_1__N_558(hundreds_1__N_558), .n2913(n2913), .n3(n3_adj_1623), 
            .n2885(n2885), .n2897(n2897), .n1_adj_41(n1_adj_1637), .n2886(n2886), 
            .n38405(n38405), .n1_adj_42(n1_adj_1614), .n38500(n38500), 
            .n38432(n38432), .n37921(n37921), .n38436(n38436), .n1_adj_43(n1_adj_1617), 
            .n2895(n2895), .n3_adj_44(n3_adj_1654), .n38083(n38083), .realv_1_1__N_322(realv_1_1__N_322), 
            .n38093(n38093), .n3_adj_45(n3), .n5_adj_46(n5_adj_1595), 
            .n4_adj_47(n4_adj_1594), .n36209(n36209), .n38230(n38230), 
            .n36338(n36338), .n6_adj_48(n6_adj_1629), .\ctrlword_595_5[6] (ctrlword_595_5[6]), 
            .n2_adj_49(n2_adj_1598), .n10172(n10172), .n36208(n36208), 
            .\adcdisplay_7__N_1[6] (adcdisplay_7__N_1[6]), .\adcdisplay_7__N_1[4] (adcdisplay_7__N_1[4]), 
            .n2_adj_50(n2), .n36187(n36187), .n38247(n38247), .n15357(n15357), 
            .n35304(n35304), .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), 
            .decade_0__N_605(decade_0__N_605), .\ctrlword_595_2[5] (ctrlword_595_2[5]), 
            .n38227(n38227), .n36327(n36327), .n36332(n36332), .n36339(n36339), 
            .n36326(n36326), .n38264(n38264), .n37210(n37210), .n14_adj_51(n14_adj_1612), 
            .n36937(n36937), .n36164(n36164), .\ctrlword_595_6[6] (ctrlword_595_6[6]), 
            .n14_adj_52(n14), .n36025(n36025), .n36144(n36144), .n14_adj_53(n14_adj_1641), 
            .n38036(n38036), .n36158(n36158), .n38081(n38081), .n38520(n38520), 
            .n4_adj_54(n4_adj_1611), .n36095(n36095), .n5_adj_55(n5), 
            .n4_adj_56(n4), .n36024(n36024), .n2_adj_57(n2_adj_1649), 
            .n1_adj_58(n1_adj_1622), .n36094(n36094), .n1_adj_59(n1_adj_1618), 
            .n38233(n38233), .n38253(n38253), .n37997(n37997), .n38234(n38234), 
            .n36935(n36935), .n1_adj_60(n1_adj_1650), .n2975(n2975), .n15411(n15411), 
            .n10164(n10164), .n2972(n2972), .n15409(n15409), .n10530(n10530), 
            .n38238(n38238), .n2_adj_61(n2_adj_1621), .n38073(n38073), 
            .\ctrlword_595_5[5] (ctrlword_595_5[5]), .n37498(n37498), .\ctrlword_595_6_15__N_662[2] (ctrlword_595_6_15__N_662[2]), 
            .n37035(n37035), .\ctrlword_595_5_15__N_654[2] (ctrlword_595_5_15__N_654[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(137[22:31])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

//
// Verilog Description of module mode_shift
//

module mode_shift (rst_n_in_c, state, n38421, clk_in_c, btn_state, 
            \ctrlword_595_3[13] , \ctrlword_595_3[13]__inv , n4, n35435, 
            \num_delay_15__N_811[1] , n35515, clk_divided_enable_20, cnt_stop, 
            n714, n38477, \cnt_write[0] , n38371, n35406, \cnt_read[0] , 
            n39799, n35408, n35518, n8, n38482, n38387, n20699, 
            clk_in_c_enable_88, n88, n711, n715, clk_divided_enable_13, 
            n35111, clk_divided_enable_33, n5, n35776, clk_divided_enable_14, 
            n4_adj_130, sda_out_N_190, sda_out_N_189, n38478, n14, 
            n17, n38413, n38543, n19, clk_divided_enable_15, n38563, 
            clk_divided_enable_23, n19656, n2, \num_delay_15__N_811[3] , 
            clk_divided_N_170, n1440, n38562, clk_in_c_enable_49);
    input rst_n_in_c;
    input [2:0]state;
    output n38421;
    input clk_in_c;
    input btn_state;
    output \ctrlword_595_3[13] ;
    output \ctrlword_595_3[13]__inv ;
    input n4;
    input n35435;
    output \num_delay_15__N_811[1] ;
    output n35515;
    input clk_divided_enable_20;
    input [3:0]cnt_stop;
    input n714;
    input n38477;
    input \cnt_write[0] ;
    input n38371;
    output n35406;
    input \cnt_read[0] ;
    input n39799;
    output n35408;
    input n35518;
    output n8;
    output n38482;
    output n38387;
    input n20699;
    output clk_in_c_enable_88;
    input n88;
    input n711;
    input n715;
    output clk_divided_enable_13;
    input n35111;
    output clk_divided_enable_33;
    input n5;
    input n35776;
    output clk_divided_enable_14;
    output n4_adj_130;
    input sda_out_N_190;
    output sda_out_N_189;
    input n38478;
    input n14;
    output n17;
    output n38413;
    input n38543;
    input n19;
    output clk_divided_enable_15;
    input n38563;
    output clk_divided_enable_23;
    output n19656;
    input n2;
    output \num_delay_15__N_811[3] ;
    input clk_divided_N_170;
    output n1440;
    output n38562;
    output clk_in_c_enable_49;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    
    wire btn_state_ls, moderec, moderec_N_267, n38561, n38560;
    
    LUT4 i2_2_lut_rep_674_2_lut (.A(rst_n_in_c), .B(state[2]), .Z(n38421)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i2_2_lut_rep_674_2_lut.init = 16'hdddd;
    FD1S3AX btn_state_ls_19 (.D(btn_state), .CK(clk_in_c), .Q(btn_state_ls)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=136, LSE_RLINE=136 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/mode_shift.vhd(34[3] 37[10])
    defparam btn_state_ls_19.GSR = "DISABLED";
    FD1S3AX mode_20 (.D(moderec), .CK(clk_in_c), .Q(\ctrlword_595_3[13] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=136, LSE_RLINE=136 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/mode_shift.vhd(34[3] 37[10])
    defparam mode_20.GSR = "DISABLED";
    FD1S3AX moderec_18 (.D(moderec_N_267), .CK(clk_in_c), .Q(moderec)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=28, LSE_LLINE=136, LSE_RLINE=136 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/mode_shift.vhd(23[3] 29[10])
    defparam moderec_18.GSR = "ENABLED";
    INV i35216 (.A(\ctrlword_595_3[13] ), .Z(\ctrlword_595_3[13]__inv ));
    LUT4 i18780_4_lut_4_lut (.A(rst_n_in_c), .B(n4), .C(state[2]), .D(n35435), 
         .Z(\num_delay_15__N_811[1] )) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i18780_4_lut_4_lut.init = 16'h5f5d;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rst_n_in_c), .B(state[2]), .C(state[1]), 
         .Z(n35515)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_then_4_lut (.A(clk_divided_enable_20), .B(cnt_stop[2]), 
         .C(cnt_stop[3]), .D(cnt_stop[0]), .Z(n38561)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_then_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_else_4_lut (.A(clk_divided_enable_20), .B(cnt_stop[2]), 
         .C(cnt_stop[3]), .Z(n38560)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_else_4_lut.init = 16'h0404;
    LUT4 moderec_I_0_3_lut (.A(moderec), .B(btn_state), .C(btn_state_ls), 
         .Z(moderec_N_267)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/mode_shift.vhd(26[4] 28[11])
    defparam moderec_I_0_3_lut.init = 16'h9a9a;
    LUT4 i33550_2_lut_3_lut_3_lut_4_lut (.A(n714), .B(n38477), .C(\cnt_write[0] ), 
         .D(n38371), .Z(n35406)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;
    defparam i33550_2_lut_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i33560_2_lut_3_lut_3_lut_4_lut (.A(n714), .B(n38477), .C(\cnt_read[0] ), 
         .D(n39799), .Z(n35408)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i33560_2_lut_3_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 i1_3_lut_4_lut (.A(n714), .B(n38477), .C(n35518), .D(cnt_stop[0]), 
         .Z(n8)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1011;
    LUT4 rst_n_in_I_0_1_lut_rep_735 (.A(rst_n_in_c), .Z(n38482)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam rst_n_in_I_0_1_lut_rep_735.init = 16'h5555;
    LUT4 i1_2_lut_rep_640_3_lut_3_lut (.A(rst_n_in_c), .B(state[1]), .C(state[2]), 
         .Z(n38387)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_2_lut_rep_640_3_lut_3_lut.init = 16'hf7f7;
    LUT4 i1_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(state[2]), .C(n20699), 
         .D(state[0]), .Z(clk_in_c_enable_88)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i2_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(n88), .C(n711), .D(n715), 
         .Z(clk_divided_enable_13)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hdfdd;
    LUT4 i1_4_lut_4_lut (.A(rst_n_in_c), .B(n711), .C(n35111), .D(n715), 
         .Z(clk_divided_enable_33)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_4_lut.init = 16'hf7d5;
    LUT4 i1_4_lut_4_lut_adj_316 (.A(rst_n_in_c), .B(n714), .C(n5), .D(n35776), 
         .Z(clk_divided_enable_14)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_4_lut_adj_316.init = 16'hf7d5;
    LUT4 i1_2_lut_3_lut_3_lut_adj_317 (.A(rst_n_in_c), .B(state[1]), .C(state[2]), 
         .Z(n4_adj_130)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_2_lut_3_lut_3_lut_adj_317.init = 16'h0808;
    LUT4 rst_n_in_N_46_I_0_2_lut_2_lut (.A(rst_n_in_c), .B(sda_out_N_190), 
         .Z(sda_out_N_189)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam rst_n_in_N_46_I_0_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut_4_lut_adj_318 (.A(rst_n_in_c), .B(n38478), .C(n14), 
         .D(state[2]), .Z(n17)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_3_lut_4_lut_4_lut_adj_318.init = 16'h00a8;
    LUT4 i1_2_lut_rep_666_2_lut (.A(rst_n_in_c), .B(state[0]), .Z(n38413)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_2_lut_rep_666_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut_adj_319 (.A(rst_n_in_c), .B(n714), .C(n38543), 
         .D(n19), .Z(clk_divided_enable_15)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_4_lut_adj_319.init = 16'hf7d5;
    LUT4 i1_4_lut_4_lut_adj_320 (.A(rst_n_in_c), .B(n714), .C(n38563), 
         .D(n19), .Z(clk_divided_enable_23)) /* synthesis lut_function=((B (C)+!B (D))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_4_lut_4_lut_adj_320.init = 16'hf7d5;
    LUT4 i1_2_lut_3_lut_3_lut_adj_321 (.A(rst_n_in_c), .B(n711), .C(n715), 
         .Z(n19656)) /* synthesis lut_function=(!(A (B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i1_2_lut_3_lut_3_lut_adj_321.init = 16'h7575;
    LUT4 i18256_3_lut_4_lut_4_lut_4_lut (.A(rst_n_in_c), .B(state[2]), .C(n2), 
         .D(state[1]), .Z(\num_delay_15__N_811[3] )) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i18256_3_lut_4_lut_4_lut_4_lut.init = 16'h2022;
    LUT4 i863_2_lut_2_lut (.A(rst_n_in_c), .B(clk_divided_N_170), .Z(n1440)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam i863_2_lut_2_lut.init = 16'hdddd;
    PFUMX i34476 (.BLUT(n38560), .ALUT(n38561), .C0(cnt_stop[1]), .Z(n38562));
    LUT4 state_2__bdd_4_lut_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[1]), 
         .D(state[2]), .Z(clk_in_c_enable_49)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[8:22])
    defparam state_2__bdd_4_lut_4_lut.init = 16'hf5f7;
    
endmodule
//
// Verilog Description of module LCD_display
//

module LCD_display (\realv_5[0] , x_cnt, n38098, n38478, state, clk_in_c, 
            n36024, n38097, n36025, n38085, n36081, n36082, n38089, 
            GND_net, n5, n38114, n38240, n2913, n38104, n5_adj_62, 
            n38456, rst_n_in_c, n39799, n38467, n35087, n4, n38371, 
            n38491, n7, n38466, n35089, n38428, n6, n36935, BL_LCD_c, 
            n38241, n38239, n38383, n35088, n3008, n5_adj_63, n38105, 
            n38102, n38113, n36153, n10228, n10164, n38099, n38115, 
            n10172, n1, n36181, n36182, n38117, n36190, n36191, 
            n36211, n36212, n36220, n36221, \decade[3] , n36229, 
            n36230, n36232, n36233, n36235, n36236, n36238, n36239, 
            \x_cnt[2] , \x_cnt[3] , clk_in_c_enable_49, n36984, n38520, 
            n2895, n38502, n2975, n38378, n38074, n2, n38103, 
            n5_adj_64, \ctrlword_595_3[13] , n38407, cnt_stop, n38234, 
            realv_1_0__N_466, realv_1_0__N_464, realv_1_0__N_460, n2897, 
            n38302, n38080, n2885, n2886, n38405, n5_adj_65, n4_adj_66, 
            n5_adj_67, n4_adj_68, n38078, n38377, n38081, n38084, 
            n1_adj_69, n38469, DA_LCD_c, n38086, n4_adj_70, n36029, 
            n38064, n36164, n38075, n3, n38082, n14, \voltage_code[6] , 
            \ADC_level[7] , \voltage_code[5] , n35513, hundreds_1__N_558, 
            n14_adj_71, n38088, n14_adj_72, n38083, n38063, n38073, 
            n38284, n36063, n35515, n38227, n38109, n38110, n38036, 
            \num_delay_15__N_811[1] , n38421, n35435, n35310, n38094, 
            n38093, \data_r[91] , \data_r[96] , \data_r[97] , \data_r[98] , 
            \data_r[99] , \data_r[100] , \data_r[101] , \data_r_131__N_1121[121] , 
            \data_r_131__N_1121[120] , \ctrlword_595_4_15__N_630[1] , n1_adj_73, 
            n35589, n4_adj_74, n37997, n38355, n32883, n4_adj_75, 
            n38329, n51, n38079, n3_adj_76, n3_adj_77, n1_adj_78, 
            n2972, n1_adj_79, n14_adj_80, n1_adj_81, n38413, n36323, 
            n36324, n38249, RST_LCD_c, CLK_LCD_c, clk_in_c_enable_88, 
            DC_LCD_c, n36326, n36327, n36329, n36330, n36332, n36333, 
            n36335, n36336, n36338, n36339, n36341, n36342, n36032, 
            n36033, n7_adj_82, n2_adj_83, n37921, n38436, n38387, 
            n38500, n5_adj_84, n5_adj_85, n37888, n15357, n15351, 
            n4_adj_86, n12260, n38233, n38238, n38237, n38245, n38253, 
            decade_0__N_605, realv_3_0__N_535, n38111, n38125, n37035, 
            n6_adj_87, n35304, n6_adj_88, n10395, n38095, \ctrlword_595_5_15__N_654[3] , 
            n7_adj_89, n4_adj_90, n17, n2_adj_91, n36158, n4_adj_92, 
            n1_adj_93, n2_adj_94, n4_adj_95, n5_adj_96, n1_adj_97, 
            n2_adj_98, n4_adj_99, n5_adj_100, n2_adj_101, n4_adj_102, 
            n2_adj_103, n4_adj_104, n5_adj_105, n2_adj_106, n38061, 
            n14_adj_107, n14_adj_108, n4_adj_109, n5_adj_110, n4_adj_111, 
            n5_adj_112, n4_adj_113, n14_adj_114, n14_adj_115, n2_adj_116, 
            n2_adj_117, n14_adj_118, n2_adj_119, \num_delay_15__N_811[3] , 
            n37074, n1_adj_120, n38116, n1_adj_121, n6_adj_122, n6_adj_123, 
            n36144, n1_adj_124, n36187, n36188, n36208, n36209, 
            n36049, n36094, n36095, n37060, n38457, n37933, n10530, 
            \ctrlword_595_6_15__N_662[3] , \voltage_code[1] , n38135, 
            n38139, n36975, n7_adj_125, n10314, \ctrlword_595_6_15__N_670[3] , 
            n38252, n38261, n37498, n4_adj_126, n15409, n15411, 
            n38432, \ctrlword_595_4_15__N_638[5] , n37900, n21531, n20699, 
            n2_adj_127, n1_adj_128, n2_adj_129, \ctrlword_595_3_15__N_622[3] , 
            n38570, n36046, n36937);
    input \realv_5[0] ;
    output [7:0]x_cnt;
    input n38098;
    output n38478;
    output [2:0]state;
    input clk_in_c;
    input n36024;
    input n38097;
    output n36025;
    input n38085;
    input n36081;
    input n36082;
    input n38089;
    input GND_net;
    output n5;
    input n38114;
    input n38240;
    output n2913;
    input n38104;
    output n5_adj_62;
    input n38456;
    input rst_n_in_c;
    input n39799;
    input n38467;
    output n35087;
    output n4;
    input n38371;
    input n38491;
    output n7;
    input n38466;
    output n35089;
    input n38428;
    output n6;
    input n36935;
    output BL_LCD_c;
    input n38241;
    input n38239;
    input n38383;
    output n35088;
    output n3008;
    output n5_adj_63;
    input n38105;
    input n38102;
    input n38113;
    output n36153;
    output n10228;
    output n10164;
    input n38099;
    input n38115;
    output n10172;
    input n1;
    input n36181;
    input n36182;
    input n38117;
    input n36190;
    input n36191;
    input n36211;
    input n36212;
    input n36220;
    input n36221;
    input \decade[3] ;
    input n36229;
    input n36230;
    input n36232;
    input n36233;
    input n36235;
    input n36236;
    input n36238;
    input n36239;
    output \x_cnt[2] ;
    output \x_cnt[3] ;
    input clk_in_c_enable_49;
    output n36984;
    output n38520;
    output n2895;
    output n38502;
    output n2975;
    output n38378;
    input n38074;
    output n2;
    input n38103;
    output n5_adj_64;
    input \ctrlword_595_3[13] ;
    input n38407;
    input [3:0]cnt_stop;
    input n38234;
    input realv_1_0__N_466;
    input realv_1_0__N_464;
    input realv_1_0__N_460;
    output n2897;
    output n38302;
    input n38080;
    output n2885;
    output n2886;
    output n38405;
    output n5_adj_65;
    output n4_adj_66;
    output n5_adj_67;
    output n4_adj_68;
    input n38078;
    output n38377;
    input n38081;
    input n38084;
    output n1_adj_69;
    output n38469;
    output DA_LCD_c;
    input n38086;
    output n4_adj_70;
    input n36029;
    input n38064;
    input n36164;
    input n38075;
    input n3;
    input n38082;
    output n14;
    input \voltage_code[6] ;
    input \ADC_level[7] ;
    input \voltage_code[5] ;
    input n35513;
    output hundreds_1__N_558;
    output n14_adj_71;
    input n38088;
    output n14_adj_72;
    input n38083;
    output n38063;
    input n38073;
    output n38284;
    input n36063;
    input n35515;
    input n38227;
    input n38109;
    input n38110;
    output n38036;
    input \num_delay_15__N_811[1] ;
    input n38421;
    output n35435;
    input n35310;
    input n38094;
    input n38093;
    output \data_r[91] ;
    output \data_r[96] ;
    output \data_r[97] ;
    output \data_r[98] ;
    output \data_r[99] ;
    output \data_r[100] ;
    output \data_r[101] ;
    input \data_r_131__N_1121[121] ;
    input \data_r_131__N_1121[120] ;
    input \ctrlword_595_4_15__N_630[1] ;
    input n1_adj_73;
    output n35589;
    output n4_adj_74;
    input n37997;
    input n38355;
    input n32883;
    input n4_adj_75;
    input n38329;
    output n51;
    input n38079;
    input n3_adj_76;
    input n3_adj_77;
    output n1_adj_78;
    output n2972;
    input n1_adj_79;
    output n14_adj_80;
    input n1_adj_81;
    input n38413;
    input n36323;
    input n36324;
    input n38249;
    output RST_LCD_c;
    output CLK_LCD_c;
    input clk_in_c_enable_88;
    output DC_LCD_c;
    input n36326;
    input n36327;
    input n36329;
    input n36330;
    input n36332;
    input n36333;
    input n36335;
    input n36336;
    input n36338;
    input n36339;
    input n36341;
    input n36342;
    input n36032;
    input n36033;
    output n7_adj_82;
    output n2_adj_83;
    input n37921;
    output n38436;
    input n38387;
    output n38500;
    output n5_adj_84;
    output n5_adj_85;
    input n37888;
    output n15357;
    output n15351;
    output n4_adj_86;
    output n12260;
    input n38233;
    input n38238;
    input n38237;
    input n38245;
    input n38253;
    input decade_0__N_605;
    input realv_3_0__N_535;
    input n38111;
    input n38125;
    output n37035;
    input n6_adj_87;
    input n35304;
    input n6_adj_88;
    input n10395;
    input n38095;
    output \ctrlword_595_5_15__N_654[3] ;
    output n7_adj_89;
    input n4_adj_90;
    input n17;
    output n2_adj_91;
    input n36158;
    output n4_adj_92;
    output n1_adj_93;
    output n2_adj_94;
    output n4_adj_95;
    output n5_adj_96;
    output n1_adj_97;
    output n2_adj_98;
    output n4_adj_99;
    output n5_adj_100;
    output n2_adj_101;
    output n4_adj_102;
    output n2_adj_103;
    output n4_adj_104;
    output n5_adj_105;
    output n2_adj_106;
    output n38061;
    output n14_adj_107;
    output n14_adj_108;
    output n4_adj_109;
    output n5_adj_110;
    output n4_adj_111;
    output n5_adj_112;
    output n4_adj_113;
    output n14_adj_114;
    output n14_adj_115;
    output n2_adj_116;
    output n2_adj_117;
    output n14_adj_118;
    output n2_adj_119;
    input \num_delay_15__N_811[3] ;
    output n37074;
    input n1_adj_120;
    input n38116;
    output n1_adj_121;
    input n6_adj_122;
    input n6_adj_123;
    input n36144;
    input n1_adj_124;
    input n36187;
    input n36188;
    input n36208;
    input n36209;
    input n36049;
    input n36094;
    input n36095;
    output n37060;
    output n38457;
    output n37933;
    input n10530;
    output \ctrlword_595_6_15__N_662[3] ;
    input \voltage_code[1] ;
    input n38135;
    input n38139;
    output n36975;
    output n7_adj_125;
    input n10314;
    output \ctrlword_595_6_15__N_670[3] ;
    input n38252;
    input n38261;
    output n37498;
    output n4_adj_126;
    input n15409;
    input n15411;
    output n38432;
    input \ctrlword_595_4_15__N_638[5] ;
    output n37900;
    output n21531;
    output n20699;
    output n2_adj_127;
    output n1_adj_128;
    output n2_adj_129;
    output \ctrlword_595_3_15__N_622[3] ;
    output n38570;
    input n36046;
    output n36937;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    
    wire n38501;
    wire [7:0]y_cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(84[16:21])
    wire [11:0]n3032;
    
    wire n8, n36172, n36173, n36177, n8_adj_1371, n39820, n38452, 
        n38447, n38373;
    wire [2:0]cnt_scan;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(79[19:27])
    
    wire n2014, n35093, n35094;
    wire [11:0]n3006;
    wire [11:0]n2903;
    
    wire n36100, n15025, n38318, n15066;
    wire [15:0]cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(81[30:33])
    
    wire n22700, n38423;
    wire [15:0]cnt_delay;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(81[10:19])
    
    wire clk_in_c_enable_155, n18038;
    wire [15:0]n3996;
    
    wire n36023;
    wire [15:0]cnt_init;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(81[34:42])
    
    wire clk_in_c_enable_111, n18024;
    wire [15:0]n1917;
    
    wire n38458, n8_adj_1372, n38498, n38480, n37960, n21, n47, 
        n36931, n36083;
    wire [11:0]n2980;
    wire [11:0]n2993;
    
    wire n36099, n36088, n36089, n36090;
    wire [4:0]cnt_write;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(80[10:19])
    
    wire clk_in_c_enable_112, n18019;
    wire [4:0]DA_LCD_N_1257;
    
    wire n36051, n36052, n36053, n36054, n36055, n36056, n36097, 
        n36098, n36101, n38395, high_word;
    wire [7:0]n3422;
    
    wire n32639, n36102, n32638, n3994, n32637;
    wire [15:0]num_delay;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(81[20:29])
    
    wire n32608, n32609, clk_in_c_enable_26;
    wire [2:0]n11;
    wire [2:0]state_back;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[16:26])
    
    wire clk_in_c_enable_144;
    wire [2:0]n16;
    
    wire clk_in_c_enable_134, high_word_N_1285, n32636, n32607, n32635, 
        n32606, n37055;
    wire [11:0]n2967;
    
    wire n37347, n38521, n37346, n14519, n38544, n38545, n38546, 
        n2666, n2665, n36171, n38304, n38, n40, n35171;
    wire [131:0]data_r;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(85[10:16])
    
    wire n38277, n35400, n36265, n32634, n36168, n36169, n36175, 
        n38509, n38510, n38479;
    wire [2:0]cnt_main;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(79[10:18])
    
    wire n32706, n38506, n38507, n14649, n38475, n38303, n38341, 
        n38285, n36934, n36936, clk_in_c_enable_29, n38424, n36084, 
        n36085, n36086, n36087, n37391, n37388, n37392, n38_adj_1376, 
        n35193, n37390, n37389, n38710, n38314, n2380, n14641, 
        n38492, n38539, n38540, n38541, n36126, n36127, n36128, 
        n37887, n36071, n36072, n36075, n36151, n36152, n36995, 
        n2672, n2671, n2670, n2669, n38536, n38537, n10190, n38_adj_1378, 
        n35191, n38533, n38534, n32633, n2668, n2667, n36170, 
        n37349, n38530, n38531, n10218, n35630, n13, n1_c, n3_c, 
        n37, n7667, n38527, n38528, n38709, n36999, n32632, n32605;
    wire [7:0]n2021;
    
    wire n36122, n36123, n37996, n36124, n36125, clk_in_c_enable_32, 
        n5_adj_1379, n38524, n38525, n36147, n36148, n37387, n37386, 
        clk_in_c_enable_33, n35404;
    wire [15:0]n1586;
    
    wire n36149, n36150, n38522, n10180, n38399, n32604, n32631, 
        n38499, n38434, n37350, n37348, n37351, n2522, n38339, 
        n46, n32603, n32602, n36183, n36073, n36074, n36076, n37342, 
        n37340, n37343, n36192, n36213, n36222, clk_in_c_enable_156, 
        n17967, n39824, n38859, n38856, n38860, n36231, n36989, 
        n36987, n36990, n36234, n36237, n36240, n1_adj_1381, n2_c;
    wire [7:0]x_cnt_c;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(84[10:15])
    
    wire n3_adj_1382, n36241, n36242, n36243, n56, n38411, n36262, 
        n36263, n36264, n36244, n36245, n36246, n36247, n36248, 
        n36249, n36988, n36260, n36261, n34031, n29, n37275, n37273, 
        n37276, n36254, n36255, n12698, n9, n37274, n37272, n37271, 
        n36256, n36257, n38363, n38360, n38857, n37355, n38858, 
        n36258, n36259;
    wire [8:0]data_reg;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(78[10:18])
    
    wire clk_in_c_enable_117, n18007, n2_adj_1383, n36986, n36985, 
        n37262, n37260, n37263, n2_adj_1384, n36250, n36251, n36252, 
        n36253, n2_adj_1385, n35351, clk_in_c_enable_146, n37261, 
        n36266, n36267, n2_adj_1386, n2_adj_1387, n37259, n37258, 
        n36287, n36288, n36289, n36294, n36295, n36296, n37245, 
        n37243, n37246, n36983, n36981, n3_adj_1388, n38449, n38518, 
        n38519, n37244, n2_adj_1389, n37033, n37242, n37241, n2_adj_1390, 
        n39822, n37031, n35544, n37032, n2664, n36166, n18, n18_adj_1391, 
        n37358, n36944, n38193;
    wire [11:0]n3045;
    wire [11:0]n3019;
    
    wire n36943, n36932, n36933, n2_adj_1392, n36065, n38289, n38442, 
        n38290, n21686, n38283;
    wire [131:0]data_r_131__N_1121;
    
    wire n18_adj_1394, n36283, n36284, n14904, n38310, n38291, n35849, 
        n36285, n36286, clk_in_c_enable_47, n11828, n33, n9_adj_1395;
    wire [15:0]n1696;
    
    wire n11824, n10842, n11826, n127, n38072, n38551, n36982, 
        n38550, n14922, n36064, n4_adj_1397;
    wire [8:0]n3720;
    
    wire n36290, n36291, n38567, n38569, n38568, n38575, n38410, 
        n38574, n38578, n38577, n38295, n38299, n38362, n35164, 
        n38584, n38583, n37052, n38593, n38592, n36001, n36946, 
        n38297, n22240, n38599, n38598, n36292, n36293, n22577, 
        n37562, n15062, n35360, n15169, n35733, n37564, n38602, 
        n38601, n37565, n35069, n38390, n38605, n38351, n38604, 
        n38608, n38607, n36000, n36078, n36079, n36080, n3_adj_1398, 
        n37563, n37566, n41, n10871, n37567, n37568, n36301, n36302, 
        n36303, n37569, n37570, n36947, n35988, n37056, n35987, 
        n35986, n35985, n38415, n35321, n37998, n37999, n38579, 
        n37956, n38433, n39128, n38516, n38409, n39127, n39130, 
        clk_in_c_enable_45, n36070, n39129, n39131, n37058, n10, 
        n4_adj_1405, n37625, n37626, n8_adj_1406, n38319, n38296, 
        n5_adj_1407, n36031, n38317, n38273, n21613, n14923, n5_adj_1408, 
        n25, n38460, n36176, n36179, n36174, n36178, n37624, n37957, 
        n36165, n15057, n35643, n36314, n36315, n36316, n38278, 
        n36317, n36318, n36319, n38298, n7_adj_1409, n21654, n5_adj_1410, 
        n38463, n39804, n18071, n21652, n6_adj_1411, n38406, n14_c, 
        n38609, n7_adj_1413, n37953, n38404, n14_adj_1414, n38322, 
        n4_adj_1415, n36218, n36217, n2380_adj_1417, n10840, n38375, 
        n36949, n36227, n8_adj_1419, n36226, n37069, n39805, n38386, 
        n15410, n37677, n37080, n38321;
    wire [131:0]n3226;
    
    wire n38320, n35107, n37678;
    wire [6:0]n6305;
    
    wire n1_adj_1421, n12812;
    wire [8:0]n1978;
    
    wire n36980, n36979, n1_adj_1422, n8_adj_1423, n36103, n36155, 
        n1_adj_1424, n12, n14544, n37079, n37082, n15408, n37083, 
        n3_adj_1425, n10800, n38312, n15159, n22140, n38443, n38311, 
        n35357, n35766, n38062, n22360, n35293, n3_adj_1426, n10806, 
        n38051, n38049, n38052, n2246, n2245, n10822, n2248, n2247, 
        n10824, n7_adj_1427, n38050, n2244, n12292, n22354, n2242, 
        n10828, n36137, n13853, n38048, n38047, n2243, n38364, 
        n36180, n13989, n2240, n2239, n10816, n37223, n37224, 
        n2241, n3_adj_1428, n7_adj_1429, n32886, n38282, n38035, 
        n38033, n22473, n38034, n15, n14_adj_1430, n22690, n10818, 
        n10820, n38032, n38031, clk_in_c_enable_131, n35236, n38336, 
        n38473, n7_adj_1431, n8_adj_1432, n38337, n35106;
    wire [2:0]n1603;
    
    wire n38_adj_1433, n35529, n35784, n63, n36205, n36206, n14004, 
        n125, n54, n4_adj_1436, n35438, clk_in_c_enable_77, n104, 
        n126, n4_adj_1437, n35538, n36134, n13983, n14992, n14_adj_1438, 
        n108, n109, n32872, n22688, n36154, n8_adj_1439, n22558, 
        n35649, n1_adj_1440, n35176, n35535, n35537, n38349, n35719, 
        n38280, n38439, n35509, n35446, n22071, n10_adj_1441, n22592, 
        n1_adj_1442, n35587, n38279, n35183, n8_adj_1443, n32933, 
        n35877, n6_adj_1444, n35522, n8_adj_1445, n4_adj_1446, n1_adj_1447, 
        n38440, n22198, n35713, n15047, n10_adj_1448, n35530, n1_adj_1449, 
        n35532, n35444, n4_adj_1450, n1_adj_1451, n35166, n35521, 
        n6_adj_1452, n8_adj_1453, n1_adj_1454, n4_adj_1455, n34561, 
        n35653, n35531, n36145, n35591, n8_adj_1456, n36038, n36039, 
        n36042, n38441, n38350, n35458, n10208, n36041, n36040, 
        n38515, n8_adj_1458, n36096, n36157, n8_adj_1459, n37873, 
        n36297, n36298, n12278, n35229, n2_adj_1460, n35727, n12_adj_1461, 
        n38287, n35605, n36299, n36300, n38340, n90, n8_adj_1462, 
        n2673, n14994, n35160, n37_adj_1463, n37875, n35737, n40_adj_1464, 
        n37_adj_1465, n36310, n36311, n36312, n36313, n15087, clk_in_c_enable_124, 
        n37889, n37890, n38374, n22604, n35550, n35841, n38448, 
        n35425, n15181, n38275, n38400, n32896, n37053, n37965, 
        n8_adj_1468, n35699, n35991, n8_adj_1469, n5_adj_1470, n38403, 
        n38401, n37994, n37992, n37995, n37975, n38585, n1_adj_1471, 
        n37993, n38382, n21615, n36535, n37877, n8_adj_1472, n2_adj_1473, 
        n37991, n38348, n22032, n35609, n17_c, n21848, n15094, 
        n36189, n8_adj_1474, n36210, n36004, n8_adj_1475, n8_adj_1476, 
        n35335, n35336, n12_adj_1478, n38356, n34573, n37974, n37971, 
        n20, n2_adj_1481, n37973, n37972, n38_adj_1482, n35175, 
        n2_adj_1483, n2_adj_1484, n37970, n2_adj_1485, n10_adj_1486, 
        n35546, n9_adj_1487, n38495;
    wire [15:0]num_delay_15__N_1074;
    
    wire n2_adj_1488, n38389, n37964, n37962, n37963, n37961, n38286, 
        n15145, n35230, n35235, n38361, n30220, n35234, n35233, 
        n35232, n35231, n35227, n35228, n36518;
    wire [0:0]n5058;
    
    wire CLK_LCD_N_1265, n38464, clk_in_c_enable_89, n38308, n8_adj_1492, 
        n38324, n15035, n35223, n8_adj_1493, n38288, n38398, n12_adj_1494, 
        n52, n36325, n38347, n38_adj_1495, n38372, n35294, n12_adj_1496, 
        n19, n15131, n15083, n2_adj_1497, n38391, n35756, n35797, 
        clk_in_c_enable_87, n7_adj_1498, n36077, n7_adj_1499, n7_adj_1500, 
        n35428, n32884, n14644, n7_adj_1501, n35978, n14913, n22344, 
        n7_adj_1502, n35626, n7_adj_1503, n10872, n38292, n36034, 
        n12_adj_1505, n15120, n15009, n21_adj_1507, n22, n35238, 
        n38388, n4_adj_1508, n35976, n10812, n12_adj_1509, n18063, 
        n38420, n38419, n35337, n38294, n25_adj_1510, n1_adj_1511, 
        n35338, n35774, n38444, n37222, n37225, n35867, n35823, 
        n35511, n35240, n7_adj_1512, n38325, n38_adj_1513, n2834, 
        n70, n81, n35749, n24, n4_adj_1514, n35208, n38493, n18_adj_1515, 
        n23, n38446, n8_adj_1516, n37068, n14_adj_1518, n35237, 
        n18_adj_1520, n37876, n37874, n31, n35639, n1_adj_1522, 
        n21547, n33689, n33_adj_1523, n28, n31_adj_1524, n26, n29_adj_1525, 
        n36043, n36044, n7_adj_1526, n14_adj_1527, n38576, n22081, 
        n35329, n38228, n35910, n35919, n38517, n35534, n8_adj_1528, 
        n21223, n17_adj_1529, n14_adj_1530, n35285, n8_adj_1531, n7_adj_1532, 
        n7_adj_1533, n38474, n22675, n22453, n4_adj_1534, n35741, 
        n22455, n22457, n22459, n22461, n22465, n35239, n1_adj_1535, 
        n29_adj_1536, n2_adj_1537, n38313, n37_adj_1538, n7685, n37_adj_1539, 
        n7683, n38_adj_1540, n35195, n37627, clk_in_c_enable_139, 
        n38352, high_word_N_1289;
    wire [7:0]n4826;
    
    wire n19_adj_1544, n35865, n36135, n36136;
    wire [2:0]n27;
    
    wire n37679, n32680, clk_in_c_enable_140, n37341, n36481, n14_adj_1547, 
        n35314, n38402, n36203, n36204, n38497, n36132, n36133, 
        n36197, n36198, n14657, n15354, n35322, clk_in_c_enable_147, 
        n18057, n36228, n36159, n36199, n36200, n36201, n36202, 
        n37084, n37081, n37085, n32650, n32601, n36193, n36194, 
        clk_in_c_enable_115, n35403, n38376, n38600, n15356, n32649, 
        n32600, n32599, n36045, n32598, n38708, n8_adj_1579, n36048, 
        n36050, n36047, n36156, n36146, n36195, n36196, n32648, 
        n32647, n38071, n36223, n35998, n37073, n37070, n37071, 
        n2674, n32646, n32645, n32644, n38309, n32643, n32597, 
        n32596, n38606, n32613, n32595, n32642, n32641, n32612, 
        n36067, n32640, n32611, n32610, n32594, n36224, n38450, 
        n15_adj_1586, n37059, n37057, n36948, n36945, n4_adj_1588, 
        n35989, n35990, n35693, n36002, n36003, n36066, n36167, 
        n35999, n37054, n36068, n36069, n37030;
    
    LUT4 Mux_404_i8_3_lut_4_lut (.A(n38501), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3032[1]), .Z(n8)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_404_i8_3_lut_4_lut.init = 16'h2f20;
    PFUMX i32871 (.BLUT(n36172), .ALUT(n36173), .C0(x_cnt[1]), .Z(n36177));
    LUT4 Mux_277_i8_3_lut_4_lut (.A(n38501), .B(y_cnt[3]), .C(n38098), 
         .D(n3032[1]), .Z(n8_adj_1371)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_277_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 i33528_2_lut_rep_626_2_lut_4_lut (.A(n39820), .B(y_cnt[0]), .C(n38452), 
         .D(n38447), .Z(n38373)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i33528_2_lut_rep_626_2_lut_4_lut.init = 16'h0002;
    LUT4 i2_3_lut (.A(cnt_scan[1]), .B(n2014), .C(n35093), .Z(n35094)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i32794_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n38098), .Z(n36100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32794_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_731 (.A(cnt_scan[2]), .B(cnt_scan[1]), .Z(n38478)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_731.init = 16'heeee;
    LUT4 i19286_4_lut (.A(n15025), .B(n38318), .C(n15066), .D(cnt[4]), 
         .Z(n22700)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i19286_4_lut.init = 16'haaa8;
    LUT4 i1_2_lut_rep_676_3_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(state[0]), 
         .Z(n38423)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_676_3_lut.init = 16'h1010;
    FD1P3IX cnt_delay__i7 (.D(n3996[7]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i7.GSR = "DISABLED";
    FD1P3IX cnt_delay__i6 (.D(n3996[6]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i6.GSR = "DISABLED";
    FD1P3IX cnt_delay__i5 (.D(n3996[5]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i5.GSR = "DISABLED";
    FD1P3IX cnt_delay__i4 (.D(n3996[4]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay__i3 (.D(n3996[3]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i3.GSR = "DISABLED";
    PFUMX i32719 (.BLUT(n36023), .ALUT(n36024), .C0(n38097), .Z(n36025));
    FD1P3IX cnt_delay__i2 (.D(n3996[2]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay__i1 (.D(n3996[1]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i1.GSR = "DISABLED";
    FD1P3IX cnt_init__i15 (.D(n1917[15]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i15.GSR = "DISABLED";
    FD1P3IX cnt_init__i14 (.D(n1917[14]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i14.GSR = "DISABLED";
    FD1P3IX cnt_init__i13 (.D(n1917[13]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i13.GSR = "DISABLED";
    FD1P3IX cnt_init__i12 (.D(n1917[12]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i12.GSR = "DISABLED";
    LUT4 Mux_413_i8_3_lut_4_lut (.A(n38458), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3032[1]), .Z(n8_adj_1372)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_413_i8_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX cnt_init__i11 (.D(n1917[11]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i11.GSR = "DISABLED";
    LUT4 realv_2_2__bdd_3_lut_34336_4_lut (.A(n38498), .B(n38480), .C(n3006[2]), 
         .D(n38085), .Z(n37960)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam realv_2_2__bdd_3_lut_34336_4_lut.init = 16'h22f0;
    LUT4 i1_2_lut (.A(state[1]), .B(n21), .Z(n47)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_2_lut.init = 16'h8888;
    FD1P3IX cnt_init__i10 (.D(n1917[10]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i10.GSR = "DISABLED";
    FD1P3IX cnt_init__i9 (.D(n1917[9]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i9.GSR = "DISABLED";
    LUT4 realv_3_2__bdd_3_lut_33657_4_lut (.A(n38498), .B(n38480), .C(n3006[2]), 
         .D(n38098), .Z(n36931)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam realv_3_2__bdd_3_lut_33657_4_lut.init = 16'h22f0;
    FD1P3IX cnt_init__i8 (.D(n1917[8]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i8.GSR = "DISABLED";
    FD1P3IX cnt_init__i7 (.D(n1917[7]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i7.GSR = "DISABLED";
    FD1P3IX cnt_init__i6 (.D(n1917[6]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i6.GSR = "DISABLED";
    FD1P3IX cnt_init__i5 (.D(n1917[5]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i5.GSR = "DISABLED";
    FD1P3IX cnt_init__i4 (.D(n1917[4]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i4.GSR = "DISABLED";
    FD1P3IX cnt_init__i3 (.D(n1917[3]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i3.GSR = "DISABLED";
    FD1P3IX cnt_init__i2 (.D(n1917[2]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i2.GSR = "DISABLED";
    FD1P3IX cnt_init__i1 (.D(n1917[1]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i1.GSR = "DISABLED";
    PFUMX i32777 (.BLUT(n36081), .ALUT(n36082), .C0(x_cnt[0]), .Z(n36083));
    LUT4 i32793_3_lut (.A(n2980[8]), .B(n2993[9]), .C(n38098), .Z(n36099)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32793_3_lut.init = 16'hcaca;
    L6MUX21 i32784 (.D0(n36088), .D1(n36089), .SD(n38097), .Z(n36090));
    FD1P3IX cnt_write__i4 (.D(DA_LCD_N_1257[4]), .SP(clk_in_c_enable_112), 
            .CD(n18019), .CK(clk_in_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_write__i4.GSR = "DISABLED";
    FD1P3IX cnt_write__i3 (.D(DA_LCD_N_1257[3]), .SP(clk_in_c_enable_112), 
            .CD(n18019), .CK(clk_in_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_write__i3.GSR = "DISABLED";
    PFUMX i32747 (.BLUT(n36051), .ALUT(n36052), .C0(x_cnt[0]), .Z(n36053));
    PFUMX i32750 (.BLUT(n36054), .ALUT(n36055), .C0(x_cnt[0]), .Z(n36056));
    PFUMX i32795 (.BLUT(n36097), .ALUT(n36098), .C0(n38089), .Z(n36101));
    CCU2D add_2397_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n38395), .B1(high_word), .C1(x_cnt[0]), .D1(GND_net), 
          .COUT(n32639), .S1(n3422[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam add_2397_1.INIT0 = 16'hF000;
    defparam add_2397_1.INIT1 = 16'hd2d2;
    defparam add_2397_1.INJECT1_0 = "NO";
    defparam add_2397_1.INJECT1_1 = "NO";
    PFUMX i32796 (.BLUT(n36099), .ALUT(n36100), .C0(n38089), .Z(n36102));
    CCU2D sub_3177_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32638), .S0(n3994));
    defparam sub_3177_add_2_cout.INIT0 = 16'h0000;
    defparam sub_3177_add_2_cout.INIT1 = 16'h0000;
    defparam sub_3177_add_2_cout.INJECT1_0 = "NO";
    defparam sub_3177_add_2_cout.INJECT1_1 = "NO";
    CCU2D sub_3177_add_2_16 (.A0(cnt_delay[14]), .B0(num_delay[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(num_delay[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32637), .COUT(n32638));
    defparam sub_3177_add_2_16.INIT0 = 16'h5999;
    defparam sub_3177_add_2_16.INIT1 = 16'h5999;
    defparam sub_3177_add_2_16.INJECT1_0 = "NO";
    defparam sub_3177_add_2_16.INJECT1_1 = "NO";
    CCU2D add_475_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32608), .COUT(n32609), .S0(n3996[5]), .S1(n3996[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_7.INIT0 = 16'h5aaa;
    defparam add_475_7.INIT1 = 16'h5aaa;
    defparam add_475_7.INJECT1_0 = "NO";
    defparam add_475_7.INJECT1_1 = "NO";
    FD1P3AX cnt_scan__i0 (.D(n11[0]), .SP(clk_in_c_enable_26), .CK(clk_in_c), 
            .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_scan__i0.GSR = "DISABLED";
    FD1P3AX state_back__i0 (.D(n16[0]), .SP(clk_in_c_enable_144), .CK(clk_in_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam state_back__i0.GSR = "DISABLED";
    FD1P3AX high_word_544 (.D(high_word_N_1285), .SP(clk_in_c_enable_134), 
            .CK(clk_in_c), .Q(high_word)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam high_word_544.GSR = "DISABLED";
    CCU2D sub_3177_add_2_14 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32636), .COUT(n32637));
    defparam sub_3177_add_2_14.INIT0 = 16'h5555;
    defparam sub_3177_add_2_14.INIT1 = 16'h5555;
    defparam sub_3177_add_2_14.INJECT1_0 = "NO";
    defparam sub_3177_add_2_14.INJECT1_1 = "NO";
    CCU2D add_475_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32607), .COUT(n32608), .S0(n3996[3]), .S1(n3996[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_5.INIT0 = 16'h5aaa;
    defparam add_475_5.INIT1 = 16'h5aaa;
    defparam add_475_5.INJECT1_0 = "NO";
    defparam add_475_5.INJECT1_1 = "NO";
    CCU2D sub_3177_add_2_12 (.A0(cnt_delay[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(num_delay[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32635), .COUT(n32636));
    defparam sub_3177_add_2_12.INIT0 = 16'h5555;
    defparam sub_3177_add_2_12.INIT1 = 16'h5999;
    defparam sub_3177_add_2_12.INJECT1_0 = "NO";
    defparam sub_3177_add_2_12.INJECT1_1 = "NO";
    CCU2D add_475_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32606), .COUT(n32607), .S0(n3996[1]), .S1(n3996[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_3.INIT0 = 16'h5aaa;
    defparam add_475_3.INIT1 = 16'h5aaa;
    defparam add_475_3.INJECT1_0 = "NO";
    defparam add_475_3.INJECT1_1 = "NO";
    LUT4 Mux_412_i5_3_lut_4_lut (.A(n38498), .B(n38480), .C(\realv_5[0] ), 
         .D(n3006[2]), .Z(n5)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam Mux_412_i5_3_lut_4_lut.init = 16'h2f20;
    LUT4 realv_4_2__bdd_3_lut_33755_4_lut (.A(n38498), .B(n38480), .C(n3006[2]), 
         .D(n38114), .Z(n37055)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam realv_4_2__bdd_3_lut_33755_4_lut.init = 16'h22f0;
    CCU2D add_475_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n32606), .S1(n3996[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_1.INIT0 = 16'hF000;
    defparam add_475_1.INIT1 = 16'h5555;
    defparam add_475_1.INJECT1_0 = "NO";
    defparam add_475_1.INJECT1_1 = "NO";
    LUT4 decade_2__bdd_3_lut_33984 (.A(n38240), .B(n2913), .C(n2967[3]), 
         .Z(n37347)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33984.init = 16'he4e4;
    LUT4 i7060_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(n38098), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38521)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7060_3_lut_4_lut_else_4_lut.init = 16'h4100;
    LUT4 decade_2__bdd_3_lut_33955_4_lut (.A(n38498), .B(n38480), .C(n3006[2]), 
         .D(n38240), .Z(n37346)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam decade_2__bdd_3_lut_33955_4_lut.init = 16'h22f0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .D(state[0]), .Z(n14519)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    PFUMX i34467 (.BLUT(n38544), .ALUT(n38545), .C0(n38104), .Z(n38546));
    PFUMX i32865 (.BLUT(n2666), .ALUT(n2665), .C0(x_cnt[0]), .Z(n36171));
    LUT4 i1_4_lut (.A(n38304), .B(num_delay[9]), .C(n38), .D(n40), .Z(n35171)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut.init = 16'hfefa;
    LUT4 i33167_3_lut_4_lut (.A(data_r[61]), .B(n38277), .C(x_cnt[0]), 
         .D(n35400), .Z(n36265)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i33167_3_lut_4_lut.init = 16'h8f80;
    CCU2D sub_3177_add_2_10 (.A0(cnt_delay[8]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(num_delay[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32634), .COUT(n32635));
    defparam sub_3177_add_2_10.INIT0 = 16'h5999;
    defparam sub_3177_add_2_10.INIT1 = 16'h5999;
    defparam sub_3177_add_2_10.INJECT1_0 = "NO";
    defparam sub_3177_add_2_10.INJECT1_1 = "NO";
    L6MUX21 i32869 (.D0(n36168), .D1(n36169), .SD(x_cnt[1]), .Z(n36175));
    PFUMX i34445 (.BLUT(n38509), .ALUT(n38510), .C0(\realv_5[0] ), .Z(n5_adj_62));
    LUT4 i18616_2_lut_rep_732 (.A(cnt[5]), .B(cnt[4]), .Z(n38479)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18616_2_lut_rep_732.init = 16'heeee;
    LUT4 i2_3_lut_adj_97 (.A(cnt_main[1]), .B(cnt_main[0]), .C(state[0]), 
         .Z(n32706)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i2_3_lut_adj_97.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_98 (.A(n38456), .B(rst_n_in_c), .C(n39799), 
         .D(n38467), .Z(n35087)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_3_lut_4_lut_adj_98.init = 16'h0400;
    PFUMX i34443 (.BLUT(n38506), .ALUT(n38507), .C0(y_cnt[3]), .Z(n4));
    LUT4 i1_4_lut_adj_99 (.A(cnt_init[0]), .B(n14649), .C(num_delay[9]), 
         .D(n38475), .Z(n38)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_99.init = 16'h5444;
    LUT4 i18717_2_lut_3_lut_4_lut (.A(n38456), .B(rst_n_in_c), .C(n38371), 
         .D(n38491), .Z(n7)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i18717_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_100 (.A(n38456), .B(rst_n_in_c), .C(n38466), 
         .D(n39799), .Z(n35089)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_3_lut_4_lut_adj_100.init = 16'h0040;
    LUT4 i18716_2_lut_3_lut_4_lut (.A(n38456), .B(rst_n_in_c), .C(n38371), 
         .D(n38428), .Z(n6)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i18716_2_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_adj_101 (.A(n38303), .B(n38341), .C(num_delay[9]), .D(n38285), 
         .Z(n14649)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_101.init = 16'hc044;
    PFUMX i33661 (.BLUT(n36935), .ALUT(n36934), .C0(n38097), .Z(n36936));
    FD1P3AX BL_LCD_545 (.D(n38424), .SP(clk_in_c_enable_29), .CK(clk_in_c), 
            .Q(BL_LCD_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam BL_LCD_545.GSR = "DISABLED";
    PFUMX i32782 (.BLUT(n36084), .ALUT(n36085), .C0(n38089), .Z(n36088));
    FD1P3IX cnt_write__i2 (.D(DA_LCD_N_1257[2]), .SP(clk_in_c_enable_112), 
            .CD(n18019), .CK(clk_in_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_write__i2.GSR = "DISABLED";
    PFUMX i32783 (.BLUT(n36086), .ALUT(n36087), .C0(n38089), .Z(n36089));
    L6MUX21 i33992 (.D0(n37391), .D1(n37388), .SD(n38241), .Z(n37392));
    LUT4 i1_4_lut_adj_102 (.A(n38304), .B(num_delay[8]), .C(n38_adj_1376), 
         .D(n40), .Z(n35193)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_102.init = 16'hfefa;
    PFUMX i33990 (.BLUT(n37390), .ALUT(n37389), .C0(n38239), .Z(n37391));
    LUT4 i1_4_lut_4_lut (.A(cnt[5]), .B(cnt[4]), .C(n38710), .D(n38314), 
         .Z(n2380)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h1033;
    LUT4 i1_2_lut_2_lut_3_lut_3_lut_4_lut (.A(n38456), .B(rst_n_in_c), .C(n39799), 
         .D(n38383), .Z(n35088)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_2_lut_3_lut_3_lut_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_103 (.A(cnt_init[0]), .B(n14641), .C(num_delay[8]), 
         .D(n38475), .Z(n38_adj_1376)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_103.init = 16'h5444;
    LUT4 i1_4_lut_adj_104 (.A(n38303), .B(n38341), .C(num_delay[8]), .D(n38285), 
         .Z(n14641)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_104.init = 16'hc044;
    LUT4 Mux_404_i5_3_lut_4_lut (.A(n38492), .B(n38480), .C(\realv_5[0] ), 
         .D(n3008), .Z(n5_adj_63)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam Mux_404_i5_3_lut_4_lut.init = 16'h2f20;
    PFUMX i34465 (.BLUT(n38539), .ALUT(n38540), .C0(y_cnt[1]), .Z(n38541));
    L6MUX21 i32822 (.D0(n36126), .D1(n36127), .SD(n38105), .Z(n36128));
    LUT4 realv_2_0__bdd_2_lut_3_lut_4_lut (.A(n38492), .B(n38480), .C(n38102), 
         .D(n38113), .Z(n37887)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam realv_2_0__bdd_2_lut_3_lut_4_lut.init = 16'h0220;
    PFUMX i32769 (.BLUT(n36071), .ALUT(n36072), .C0(x_cnt[1]), .Z(n36075));
    L6MUX21 i32847 (.D0(n36151), .D1(n36152), .SD(n38105), .Z(n36153));
    LUT4 n1_bdd_3_lut_4_lut (.A(n38492), .B(n38480), .C(n3008), .D(n38114), 
         .Z(n36995)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam n1_bdd_3_lut_4_lut.init = 16'h22f0;
    PFUMX i32862 (.BLUT(n2672), .ALUT(n2671), .C0(x_cnt[0]), .Z(n36168));
    PFUMX i32863 (.BLUT(n2670), .ALUT(n2669), .C0(x_cnt[0]), .Z(n36169));
    PFUMX i34463 (.BLUT(n38536), .ALUT(n38537), .C0(y_cnt[2]), .Z(n10190));
    LUT4 i1_4_lut_adj_105 (.A(n38304), .B(num_delay[7]), .C(n38_adj_1378), 
         .D(n40), .Z(n35191)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hfefa;
    PFUMX i34461 (.BLUT(n38533), .ALUT(n38534), .C0(y_cnt[2]), .Z(n10228));
    CCU2D sub_3177_add_2_8 (.A0(cnt_delay[6]), .B0(num_delay[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(num_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32633), .COUT(n32634));
    defparam sub_3177_add_2_8.INIT0 = 16'h5999;
    defparam sub_3177_add_2_8.INIT1 = 16'h5999;
    defparam sub_3177_add_2_8.INJECT1_0 = "NO";
    defparam sub_3177_add_2_8.INJECT1_1 = "NO";
    PFUMX i32864 (.BLUT(n2668), .ALUT(n2667), .C0(x_cnt[0]), .Z(n36170));
    LUT4 n1_bdd_3_lut (.A(n38240), .B(n2980[2]), .C(n2993[2]), .Z(n37349)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut.init = 16'he4e4;
    PFUMX i34459 (.BLUT(n38530), .ALUT(n38531), .C0(y_cnt[2]), .Z(n10218));
    LUT4 i1_3_lut (.A(cnt_init[0]), .B(num_delay[7]), .C(n35630), .Z(n38_adj_1378)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut.init = 16'h4040;
    PFUMX i25 (.BLUT(n13), .ALUT(n1_c), .C0(state[0]), .Z(n3_c));
    LUT4 i1_4_lut_adj_106 (.A(cnt_init[0]), .B(num_delay[6]), .C(n37), 
         .D(n40), .Z(n7667)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_106.init = 16'hdc50;
    PFUMX i34457 (.BLUT(n38527), .ALUT(n38528), .C0(y_cnt[2]), .Z(n10164));
    PFUMX i34563 (.BLUT(n38709), .ALUT(n36999), .C0(cnt[3]), .Z(n38710));
    CCU2D sub_3177_add_2_6 (.A0(cnt_delay[4]), .B0(num_delay[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[5]), .B1(num_delay[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32632), .COUT(n32633));
    defparam sub_3177_add_2_6.INIT0 = 16'h5999;
    defparam sub_3177_add_2_6.INIT1 = 16'h5999;
    defparam sub_3177_add_2_6.INJECT1_0 = "NO";
    defparam sub_3177_add_2_6.INJECT1_1 = "NO";
    CCU2D add_224_9 (.A0(y_cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32605), 
          .S0(n2021[7]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(242[20:25])
    defparam add_224_9.INIT0 = 16'h5aaa;
    defparam add_224_9.INIT1 = 16'h0000;
    defparam add_224_9.INJECT1_0 = "NO";
    defparam add_224_9.INJECT1_1 = "NO";
    FD1P3IX cnt_write__i1 (.D(DA_LCD_N_1257[1]), .SP(clk_in_c_enable_112), 
            .CD(n18019), .CK(clk_in_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_write__i1.GSR = "DISABLED";
    PFUMX i32820 (.BLUT(n36122), .ALUT(n36123), .C0(n38104), .Z(n36126));
    LUT4 realv_3_0__bdd_2_lut_34382_3_lut_4_lut (.A(n38492), .B(n38480), 
         .C(n38099), .D(n38115), .Z(n37996)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam realv_3_0__bdd_2_lut_34382_3_lut_4_lut.init = 16'h0220;
    PFUMX i32821 (.BLUT(n36124), .ALUT(n36125), .C0(n38104), .Z(n36127));
    FD1P3AX cnt_scan__i1 (.D(n35094), .SP(clk_in_c_enable_32), .CK(clk_in_c), 
            .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_scan__i1.GSR = "DISABLED";
    LUT4 Mux_382_i5_3_lut_4_lut (.A(n38492), .B(n38480), .C(n38240), .D(n3008), 
         .Z(n5_adj_1379)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam Mux_382_i5_3_lut_4_lut.init = 16'h2f20;
    PFUMX i34455 (.BLUT(n38524), .ALUT(n38525), .C0(y_cnt[2]), .Z(n10172));
    PFUMX i32845 (.BLUT(n36147), .ALUT(n36148), .C0(n38104), .Z(n36151));
    PFUMX i33986 (.BLUT(n37387), .ALUT(n37386), .C0(n38239), .Z(n37388));
    FD1P3AX cnt_main__i1 (.D(n35404), .SP(clk_in_c_enable_33), .CK(clk_in_c), 
            .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_main__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_107 (.A(n1586[6]), .B(num_delay[6]), .C(n38341), 
         .D(n38475), .Z(n37)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_107.init = 16'heca0;
    PFUMX i32846 (.BLUT(n36149), .ALUT(n36150), .C0(n38104), .Z(n36152));
    PFUMX i34453 (.BLUT(n38521), .ALUT(n38522), .C0(y_cnt[2]), .Z(n10180));
    LUT4 i1_2_lut_rep_652_3_lut (.A(cnt[5]), .B(cnt[4]), .C(cnt[3]), .Z(n38399)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_652_3_lut.init = 16'hfefe;
    CCU2D add_224_7 (.A0(y_cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32604), 
          .COUT(n32605), .S0(n2021[5]), .S1(n2021[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(242[20:25])
    defparam add_224_7.INIT0 = 16'h5aaa;
    defparam add_224_7.INIT1 = 16'h5aaa;
    defparam add_224_7.INJECT1_0 = "NO";
    defparam add_224_7.INJECT1_1 = "NO";
    CCU2D sub_3177_add_2_4 (.A0(cnt_delay[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[3]), .B1(num_delay[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n32631), .COUT(n32632));
    defparam sub_3177_add_2_4.INIT0 = 16'h5555;
    defparam sub_3177_add_2_4.INIT1 = 16'h5999;
    defparam sub_3177_add_2_4.INJECT1_0 = "NO";
    defparam sub_3177_add_2_4.INJECT1_1 = "NO";
    CCU2D sub_3177_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[1]), .B1(num_delay[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n32631));
    defparam sub_3177_add_2_2.INIT0 = 16'h0000;
    defparam sub_3177_add_2_2.INIT1 = 16'h5999;
    defparam sub_3177_add_2_2.INJECT1_0 = "NO";
    defparam sub_3177_add_2_2.INJECT1_1 = "NO";
    LUT4 mux_375_Mux_2_i15_3_lut_4_lut (.A(n39820), .B(n38499), .C(y_cnt[3]), 
         .D(n38434), .Z(n2980[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_375_Mux_2_i15_3_lut_4_lut.init = 16'h08f8;
    L6MUX21 i33960 (.D0(n37350), .D1(n37348), .SD(n38241), .Z(n37351));
    PFUMX i33958 (.BLUT(n1), .ALUT(n37349), .C0(n38239), .Z(n37350));
    LUT4 i32867_3_lut (.A(data_r[62]), .B(n2522), .C(x_cnt[0]), .Z(n36173)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32867_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n38478), .B(n38395), .C(cnt_scan[0]), 
         .D(n38339), .Z(n46)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i1_4_lut_4_lut_4_lut.init = 16'h4045;
    PFUMX i33956 (.BLUT(n37347), .ALUT(n37346), .C0(n38239), .Z(n37348));
    CCU2D add_224_5 (.A0(y_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32603), 
          .COUT(n32604), .S0(n2021[3]), .S1(n2021[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(242[20:25])
    defparam add_224_5.INIT0 = 16'h5aaa;
    defparam add_224_5.INIT1 = 16'h5aaa;
    defparam add_224_5.INJECT1_0 = "NO";
    defparam add_224_5.INJECT1_1 = "NO";
    CCU2D add_224_3 (.A0(y_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32602), 
          .COUT(n32603), .S0(n2021[1]), .S1(n2021[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(242[20:25])
    defparam add_224_3.INIT0 = 16'h5aaa;
    defparam add_224_3.INIT1 = 16'h5aaa;
    defparam add_224_3.INJECT1_0 = "NO";
    defparam add_224_3.INJECT1_1 = "NO";
    PFUMX i32877 (.BLUT(n36181), .ALUT(n36182), .C0(n38117), .Z(n36183));
    PFUMX i32770 (.BLUT(n36073), .ALUT(n36074), .C0(x_cnt[1]), .Z(n36076));
    CCU2D add_224_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32602), 
          .S1(n2021[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(242[20:25])
    defparam add_224_1.INIT0 = 16'hF000;
    defparam add_224_1.INIT1 = 16'h5555;
    defparam add_224_1.INJECT1_0 = "NO";
    defparam add_224_1.INJECT1_1 = "NO";
    PFUMX i33951 (.BLUT(n37342), .ALUT(n37340), .C0(x_cnt[1]), .Z(n37343));
    PFUMX i32886 (.BLUT(n36190), .ALUT(n36191), .C0(n38117), .Z(n36192));
    PFUMX i32907 (.BLUT(n36211), .ALUT(n36212), .C0(n38117), .Z(n36213));
    PFUMX i32916 (.BLUT(n36220), .ALUT(n36221), .C0(n38117), .Z(n36222));
    FD1P3IX y_cnt__i0_rep_774 (.D(n2021[0]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(n39824)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i0_rep_774.GSR = "DISABLED";
    PFUMX i34648 (.BLUT(n38859), .ALUT(n38856), .C0(\decade[3] ), .Z(n38860));
    PFUMX i32925 (.BLUT(n36229), .ALUT(n36230), .C0(n38117), .Z(n36231));
    L6MUX21 i33714 (.D0(n36989), .D1(n36987), .SD(n38104), .Z(n36990));
    PFUMX i32928 (.BLUT(n36232), .ALUT(n36233), .C0(n38117), .Z(n36234));
    PFUMX i32931 (.BLUT(n36235), .ALUT(n36236), .C0(n38117), .Z(n36237));
    PFUMX i32934 (.BLUT(n36238), .ALUT(n36239), .C0(n38117), .Z(n36240));
    PFUMX i35819_i3 (.BLUT(n1_adj_1381), .ALUT(n2_c), .C0(x_cnt_c[6]), 
          .Z(n3_adj_1382));
    PFUMX i32937 (.BLUT(n36241), .ALUT(n36242), .C0(x_cnt_c[4]), .Z(n36243));
    LUT4 i2_3_lut_rep_664 (.A(cnt_write[0]), .B(n56), .C(cnt_write[4]), 
         .Z(n38411)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_rep_664.init = 16'hdfdf;
    L6MUX21 i32958 (.D0(n36262), .D1(n36263), .SD(\x_cnt[2] ), .Z(n36264));
    L6MUX21 i32940 (.D0(n36244), .D1(n36245), .SD(x_cnt_c[4]), .Z(n36246));
    L6MUX21 i32943 (.D0(n36247), .D1(n36248), .SD(\x_cnt[2] ), .Z(n36249));
    PFUMX i33712 (.BLUT(n10190), .ALUT(n36988), .C0(n38105), .Z(n36989));
    L6MUX21 i32957 (.D0(n36260), .D1(n36261), .SD(x_cnt[1]), .Z(n36263));
    PFUMX i32939 (.BLUT(n34031), .ALUT(n29), .C0(\x_cnt[3] ), .Z(n36245));
    L6MUX21 i33915 (.D0(n37275), .D1(n37273), .SD(n38241), .Z(n37276));
    PFUMX i32954 (.BLUT(n36254), .ALUT(n36255), .C0(x_cnt[0]), .Z(n36260));
    PFUMX i32941 (.BLUT(n12698), .ALUT(n9), .C0(x_cnt[1]), .Z(n36247));
    PFUMX i33913 (.BLUT(n10218), .ALUT(n37274), .C0(n38239), .Z(n37275));
    PFUMX i33910 (.BLUT(n37272), .ALUT(n37271), .C0(n38239), .Z(n37273));
    PFUMX i32955 (.BLUT(n36256), .ALUT(n36257), .C0(x_cnt[0]), .Z(n36261));
    LUT4 i1_4_lut_adj_108 (.A(cnt_init[0]), .B(n38363), .C(n38360), .D(cnt_init[2]), 
         .Z(n13)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_108.init = 16'h0a22;
    PFUMX i34645 (.BLUT(n38857), .ALUT(n37355), .C0(n38241), .Z(n38858));
    L6MUX21 i32956 (.D0(n36258), .D1(n36259), .SD(x_cnt[1]), .Z(n36262));
    FD1P3IX data_reg_i0_i8 (.D(n2_adj_1383), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i8.GSR = "DISABLED";
    FD1P3IX y_cnt__i0 (.D(n2021[0]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i0.GSR = "DISABLED";
    PFUMX i33709 (.BLUT(n36986), .ALUT(n36985), .C0(n38105), .Z(n36987));
    L6MUX21 i33903 (.D0(n37262), .D1(n37260), .SD(n38241), .Z(n37263));
    FD1P3IX data_reg_i0_i7 (.D(n2_adj_1384), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i7.GSR = "DISABLED";
    PFUMX i32952 (.BLUT(n36250), .ALUT(n36251), .C0(x_cnt[0]), .Z(n36258));
    PFUMX i32953 (.BLUT(n36252), .ALUT(n36253), .C0(x_cnt[0]), .Z(n36259));
    FD1P3IX data_reg_i0_i6 (.D(n2_adj_1385), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i6.GSR = "DISABLED";
    LUT4 i33596_4_lut (.A(state[0]), .B(clk_in_c_enable_49), .C(n35093), 
         .D(n35351), .Z(clk_in_c_enable_146)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B))) */ ;
    defparam i33596_4_lut.init = 16'h444c;
    PFUMX i33901 (.BLUT(n10218), .ALUT(n37261), .C0(n38239), .Z(n37262));
    PFUMX i32961 (.BLUT(n36265), .ALUT(n36266), .C0(x_cnt[1]), .Z(n36267));
    FD1P3IX data_reg_i0_i5 (.D(n2_adj_1386), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i5.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i4 (.D(n2_adj_1387), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i4.GSR = "DISABLED";
    PFUMX i33899 (.BLUT(n37259), .ALUT(n37258), .C0(n38239), .Z(n37260));
    L6MUX21 i32983 (.D0(n36287), .D1(n36288), .SD(x_cnt[1]), .Z(n36289));
    L6MUX21 i32990 (.D0(n36294), .D1(n36295), .SD(x_cnt[1]), .Z(n36296));
    L6MUX21 i33896 (.D0(n37245), .D1(n37243), .SD(n38239), .Z(n37246));
    L6MUX21 i33705 (.D0(n36983), .D1(n36981), .SD(n38104), .Z(n36984));
    LUT4 i1_4_lut_adj_109 (.A(n3_adj_1388), .B(n38449), .C(state[1]), 
         .D(n38478), .Z(n35351)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_109.init = 16'hc888;
    PFUMX i34451 (.BLUT(n38518), .ALUT(n38519), .C0(y_cnt[3]), .Z(n38520));
    PFUMX i33894 (.BLUT(n37244), .ALUT(n2_adj_1389), .C0(n38241), .Z(n37245));
    FD1P3IX data_reg_i0_i3 (.D(n37033), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i3.GSR = "DISABLED";
    PFUMX i33892 (.BLUT(n37242), .ALUT(n37241), .C0(n38241), .Z(n37243));
    FD1P3IX data_reg_i0_i2 (.D(n2_adj_1390), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i2.GSR = "DISABLED";
    LUT4 i7566_4_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n2903[8])) /* synthesis lut_function=(!(A (B (C)+!B (C+(D)))+!A (B+!(C)))) */ ;
    defparam i7566_4_lut_4_lut_4_lut.init = 16'h181a;
    LUT4 mux_379_Mux_7_i15_3_lut_4_lut_4_lut (.A(n39820), .B(n39822), .C(y_cnt[0]), 
         .D(y_cnt[3]), .Z(n3006[4])) /* synthesis lut_function=(!(A (B (D)+!B (C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam mux_379_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h0298;
    LUT4 n37031_bdd_2_lut (.A(n37031), .B(n35544), .Z(n37032)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n37031_bdd_2_lut.init = 16'heeee;
    LUT4 i32860_3_lut (.A(data_r[48]), .B(n2664), .C(x_cnt[0]), .Z(n36166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32860_3_lut.init = 16'hcaca;
    LUT4 i33_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(n38240), .D(y_cnt[2]), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i33_4_lut_4_lut.init = 16'he066;
    LUT4 i33_4_lut_4_lut_adj_110 (.A(y_cnt[0]), .B(y_cnt[1]), .C(n38114), 
         .D(y_cnt[2]), .Z(n18_adj_1391)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i33_4_lut_4_lut_adj_110.init = 16'he066;
    LUT4 mux_377_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), 
         .C(y_cnt[0]), .D(y_cnt[3]), .Z(n3006[7])) /* synthesis lut_function=(!(A (B (D)+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam mux_377_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h02ca;
    LUT4 mux_376_Mux_9_i15_3_lut_4_lut_4_lut (.A(n39820), .B(n39822), .C(n39824), 
         .D(y_cnt[3]), .Z(n2993[9])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam mux_376_Mux_9_i15_3_lut_4_lut_4_lut.init = 16'h0276;
    LUT4 mux_358_Mux_2_i15_3_lut_4_lut_4_lut (.A(n39820), .B(n39822), .C(n39824), 
         .D(y_cnt[3]), .Z(n2913)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C (D)))+!A ((D)+!B))) */ ;
    defparam mux_358_Mux_2_i15_3_lut_4_lut_4_lut.init = 16'h026e;
    LUT4 n2983_bdd_4_lut (.A(n38241), .B(n38240), .C(n2895), .D(n38502), 
         .Z(n37358)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B+!(D))) */ ;
    defparam n2983_bdd_4_lut.init = 16'hb920;
    LUT4 realv_3_2__bdd_3_lut_33672 (.A(n38098), .B(n2903[4]), .C(n2975), 
         .Z(n36944)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_33672.init = 16'he4e4;
    LUT4 mux_377_Mux_8_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[8])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_377_Mux_8_i15_3_lut_4_lut_4_lut.init = 16'h18f0;
    LUT4 i2_2_lut_rep_446_3_lut (.A(high_word), .B(n3_adj_1382), .C(x_cnt_c[7]), 
         .Z(n38193)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_rep_446_3_lut.init = 16'h0808;
    LUT4 mux_380_Mux_5_i15_3_lut_4_lut_4_lut (.A(n39824), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3045[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_380_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0c82;
    LUT4 mux_375_Mux_5_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n2980[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B (C+(D))+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(452[41:46])
    defparam mux_375_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0186;
    LUT4 realv_3_2__bdd_3_lut_33669 (.A(n38098), .B(n3006[4]), .C(n3019[4]), 
         .Z(n36943)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_33669.init = 16'he4e4;
    LUT4 mux_375_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n2980[7])) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(452[41:46])
    defparam mux_375_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h0198;
    PFUMX i33658 (.BLUT(n36932), .ALUT(n36931), .C0(n38097), .Z(n36933));
    FD1P3IX data_reg_i0_i1 (.D(n2_adj_1392), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i1.GSR = "DISABLED";
    LUT4 mux_375_Mux_10_i15_3_lut_rep_631_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n38378)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(452[41:46])
    defparam mux_375_Mux_10_i15_3_lut_rep_631_4_lut_4_lut.init = 16'h01c0;
    LUT4 i32759_3_lut (.A(data_reg[3]), .B(data_reg[2]), .C(cnt_write[1]), 
         .Z(n36065)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32759_3_lut.init = 16'hcaca;
    LUT4 mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1f80;
    LUT4 mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3019[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B !(D)))) */ ;
    defparam mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1f06;
    LUT4 mux_358_Mux_6_i15_3_lut_4_lut_4_lut (.A(n39824), .B(n39822), .C(n39820), 
         .D(y_cnt[3]), .Z(n2903[6])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_358_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h1602;
    LUT4 i18318_4_lut_4_lut (.A(cnt[1]), .B(n38289), .C(n38442), .D(n38290), 
         .Z(n21686)) /* synthesis lut_function=(A (B+(C))+!A (D)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(161[16:18])
    defparam i18318_4_lut_4_lut.init = 16'hfda8;
    LUT4 i1_2_lut_4_lut (.A(n38074), .B(n2), .C(n38103), .D(n38283), 
         .Z(data_r_131__N_1121[112])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 mux_358_Mux_7_i15_3_lut_4_lut_4_lut (.A(n39824), .B(n39822), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n2903[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B !(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_358_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h1c06;
    LUT4 i33_4_lut_4_lut_adj_111 (.A(y_cnt[0]), .B(y_cnt[1]), .C(n38085), 
         .D(y_cnt[2]), .Z(n18_adj_1394)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam i33_4_lut_4_lut_adj_111.init = 16'he066;
    LUT4 mux_358_Mux_5_i15_4_lut_4_lut (.A(n39822), .B(n39820), .C(n39824), 
         .D(y_cnt[3]), .Z(n2903[5])) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(455[41:46])
    defparam mux_358_Mux_5_i15_4_lut_4_lut.init = 16'h1510;
    PFUMX i32981 (.BLUT(n36283), .ALUT(n36284), .C0(x_cnt[0]), .Z(n36287));
    LUT4 i33553_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(n32706), .Z(clk_in_c_enable_33)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B (C (D)))) */ ;
    defparam i33553_4_lut_4_lut.init = 16'h8f9f;
    LUT4 i18484_4_lut_4_lut (.A(n39822), .B(n39824), .C(y_cnt[3]), .D(n39820), 
         .Z(n3045[9])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18484_4_lut_4_lut.init = 16'h070e;
    LUT4 i2_3_lut_4_lut (.A(cnt[1]), .B(n38289), .C(cnt[5]), .D(cnt[2]), 
         .Z(n14904)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(161[16:18])
    defparam i2_3_lut_4_lut.init = 16'hfffd;
    LUT4 i32549_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n38310), .D(n38291), 
         .Z(n35849)) /* synthesis lut_function=(A+(B (C (D))+!B (C))) */ ;
    defparam i32549_4_lut_4_lut.init = 16'hfaba;
    PFUMX i32982 (.BLUT(n36285), .ALUT(n36286), .C0(x_cnt[0]), .Z(n36288));
    FD1P3AX cnt_i0_i3 (.D(n11828), .SP(clk_in_c_enable_47), .CK(clk_in_c), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i3.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_112 (.A(n38291), .B(cnt[1]), .C(cnt[2]), .D(cnt[5]), 
         .Z(n33)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_4_lut_adj_112.init = 16'h4010;
    LUT4 i1_2_lut_3_lut (.A(state[2]), .B(n9_adj_1395), .C(n1696[5]), 
         .Z(n11824)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 Mux_349_i72_3_lut (.A(n2522), .B(data_r[75]), .C(x_cnt[0]), .Z(n10842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i72_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_113 (.A(state[2]), .B(n9_adj_1395), .C(n1696[4]), 
         .Z(n11826)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_113.init = 16'h1010;
    LUT4 i15_4_lut_4_lut (.A(n39824), .B(n39822), .C(y_cnt[3]), .D(n39820), 
         .Z(n2975)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(475[41:46])
    defparam i15_4_lut_4_lut.init = 16'h1e96;
    LUT4 i18277_2_lut_rep_325_3_lut (.A(n127), .B(x_cnt_c[7]), .C(high_word), 
         .Z(n38072)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(426[10] 439[17])
    defparam i18277_2_lut_rep_325_3_lut.init = 16'hfdfd;
    LUT4 n38492_bdd_4_lut (.A(n38492), .B(\realv_5[0] ), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n5_adj_64)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B+((D)+!C)))) */ ;
    defparam n38492_bdd_4_lut.init = 16'h0038;
    LUT4 i7753_3_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(\realv_5[0] ), .Z(n38551)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam i7753_3_lut_then_4_lut.init = 16'h2622;
    PFUMX i33703 (.BLUT(n10190), .ALUT(n36982), .C0(n38105), .Z(n36983));
    LUT4 i7753_3_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(\realv_5[0] ), .Z(n38550)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam i7753_3_lut_else_4_lut.init = 16'h5018;
    LUT4 i1_2_lut_3_lut_4_lut_adj_114 (.A(cnt[1]), .B(n38289), .C(cnt[2]), 
         .D(cnt[5]), .Z(n14922)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(161[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_114.init = 16'hdfff;
    LUT4 i32758_3_lut (.A(data_reg[7]), .B(data_reg[6]), .C(cnt_write[1]), 
         .Z(n36064)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32758_3_lut.init = 16'hcaca;
    LUT4 i18761_2_lut_4_lut (.A(n38072), .B(n4_adj_1397), .C(\ctrlword_595_3[13] ), 
         .D(n38395), .Z(n3720[7])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i18761_2_lut_4_lut.init = 16'hca00;
    LUT4 y_cnt_2__bdd_4_lut_34475 (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n3006[6])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B+!(C)))) */ ;
    defparam y_cnt_2__bdd_4_lut_34475.init = 16'h1038;
    LUT4 y_cnt_0__bdd_4_lut_34495 (.A(n39824), .B(y_cnt[3]), .C(n39822), 
         .D(n39820), .Z(n2993[4])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam y_cnt_0__bdd_4_lut_34495.init = 16'h1420;
    LUT4 y_cnt_2__bdd_4_lut_34913 (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n2980[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;
    defparam y_cnt_2__bdd_4_lut_34913.init = 16'h3014;
    PFUMX i32988 (.BLUT(n36290), .ALUT(n36291), .C0(x_cnt[0]), .Z(n36294));
    LUT4 n38318_bdd_4_lut (.A(n38318), .B(cnt[4]), .C(cnt[5]), .D(cnt[1]), 
         .Z(n38567)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n38318_bdd_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_then_4_lut (.A(n38407), .B(cnt_stop[3]), .C(cnt_stop[0]), 
         .D(cnt_stop[2]), .Z(n38569)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_else_4_lut (.A(n38407), .B(cnt_stop[3]), .C(cnt_stop[0]), 
         .Z(n38568)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_4_lut_else_4_lut.init = 16'h2020;
    LUT4 i33016_then_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n38492), .D(n38240), 
         .Z(n38575)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C (D))))) */ ;
    defparam i33016_then_4_lut.init = 16'h1022;
    LUT4 i33016_else_4_lut (.A(y_cnt[3]), .B(n38410), .C(n38240), .D(n2980[2]), 
         .Z(n38574)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i33016_else_4_lut.init = 16'h2f20;
    LUT4 i34332_then_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n38492), .D(n38098), 
         .Z(n38578)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C (D))))) */ ;
    defparam i34332_then_4_lut.init = 16'h1022;
    LUT4 i34332_else_4_lut (.A(y_cnt[3]), .B(n38410), .C(n2980[2]), .D(n38098), 
         .Z(n38577)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam i34332_else_4_lut.init = 16'h22f0;
    LUT4 i1_3_lut_4_lut (.A(n38295), .B(n38299), .C(n38362), .D(data_reg[4]), 
         .Z(n35164)) /* synthesis lut_function=(((C (D))+!B)+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf777;
    LUT4 i7877_3_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38085), .Z(n38584)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam i7877_3_lut_then_4_lut.init = 16'h2622;
    LUT4 i7877_3_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38085), .Z(n38583)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam i7877_3_lut_else_4_lut.init = 16'h5018;
    LUT4 n22395_bdd_4_lut_33762 (.A(n38339), .B(n38478), .C(n38395), .D(cnt_scan[0]), 
         .Z(n37052)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B+!(C+!(D))))) */ ;
    defparam n22395_bdd_4_lut_33762.init = 16'h3011;
    LUT4 n38234_bdd_4_lut (.A(n38234), .B(n38240), .C(n2967[3]), .D(n3045[9]), 
         .Z(n38856)) /* synthesis lut_function=(!(A+!(B (D)+!B (C)))) */ ;
    defparam n38234_bdd_4_lut.init = 16'h5410;
    LUT4 y_cnt_0__bdd_4_lut (.A(y_cnt[0]), .B(y_cnt[3]), .C(y_cnt[2]), 
         .D(y_cnt[1]), .Z(n2980[8])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam y_cnt_0__bdd_4_lut.init = 16'h2034;
    LUT4 realv_2_3__I_0_Mux_3_i15_4_lut_4_lut_then_4_lut (.A(realv_1_0__N_466), 
         .B(n38085), .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38593)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam realv_2_3__I_0_Mux_3_i15_4_lut_4_lut_then_4_lut.init = 16'h1b13;
    LUT4 realv_2_3__I_0_Mux_3_i15_4_lut_4_lut_else_4_lut (.A(realv_1_0__N_466), 
         .B(n38085), .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38592)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !((C (D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam realv_2_3__I_0_Mux_3_i15_4_lut_4_lut_else_4_lut.init = 16'h7b31;
    LUT4 i32695_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n38085), .Z(n36001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32695_3_lut.init = 16'hcaca;
    LUT4 realv_3_2__bdd_3_lut_33673 (.A(n38098), .B(n2993[4]), .C(n2897), 
         .Z(n36946)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_33673.init = 16'hd8d8;
    LUT4 i18868_2_lut_3_lut_4_lut (.A(n15025), .B(n38297), .C(n38299), 
         .D(n38295), .Z(n22240)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i18868_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i7807_3_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38114), .Z(n38599)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i7807_3_lut_then_4_lut.init = 16'h2622;
    LUT4 i7807_3_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38114), .Z(n38598)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i7807_3_lut_else_4_lut.init = 16'h5018;
    PFUMX i32989 (.BLUT(n36292), .ALUT(n36293), .C0(x_cnt[0]), .Z(n36295));
    LUT4 n13_bdd_4_lut_34092 (.A(n38302), .B(data_r[47]), .C(n22577), 
         .D(x_cnt[0]), .Z(n37562)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;
    defparam n13_bdd_4_lut_34092.init = 16'h880f;
    LUT4 i32442_3_lut_4_lut (.A(n38291), .B(n15062), .C(n35360), .D(n15169), 
         .Z(n35733)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(151[16:18])
    defparam i32442_3_lut_4_lut.init = 16'he000;
    LUT4 n13_bdd_4_lut_34372 (.A(n38302), .B(n22577), .C(x_cnt[0]), .D(data_r[34]), 
         .Z(n37564)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam n13_bdd_4_lut_34372.init = 16'h3a30;
    LUT4 i33581_4_lut_then_4_lut (.A(rst_n_in_c), .B(n3994), .C(state[1]), 
         .D(state[0]), .Z(n38602)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33581_4_lut_then_4_lut.init = 16'hfdf5;
    LUT4 i33581_4_lut_else_4_lut (.A(rst_n_in_c), .B(state[1]), .C(state[0]), 
         .Z(n38601)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33581_4_lut_else_4_lut.init = 16'h5757;
    LUT4 n37564_bdd_3_lut (.A(n37564), .B(n37343), .C(\x_cnt[2] ), .Z(n37565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37564_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut_then_3_lut (.A(n35069), .B(n38390), .C(cnt_init[2]), 
         .Z(n38605)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i1_4_lut_4_lut_then_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_4_lut_else_3_lut (.A(n38363), .B(n38351), .C(cnt_init[1]), 
         .D(cnt_init[2]), .Z(n38604)) /* synthesis lut_function=(!(A+(B (C (D))+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_else_3_lut.init = 16'h0455;
    LUT4 i32722_then_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n38492), .D(n38085), 
         .Z(n38608)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C (D))))) */ ;
    defparam i32722_then_4_lut.init = 16'h1022;
    LUT4 i32722_else_4_lut (.A(y_cnt[3]), .B(n38410), .C(n38085), .D(n2980[2]), 
         .Z(n38607)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32722_else_4_lut.init = 16'h2f20;
    LUT4 i32694_3_lut (.A(n2980[8]), .B(n2993[9]), .C(n38085), .Z(n36000)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32694_3_lut.init = 16'hcaca;
    PFUMX i32774 (.BLUT(n36078), .ALUT(n36079), .C0(x_cnt[1]), .Z(n36080));
    LUT4 realv_1_0__bdd_4_lut (.A(n38080), .B(n38103), .C(n2895), .D(n38502), 
         .Z(n3_adj_1398)) /* synthesis lut_function=(A (B (D))+!A (B (C)+!B (D))) */ ;
    defparam realv_1_0__bdd_4_lut.init = 16'hd940;
    LUT4 n37565_bdd_3_lut (.A(n37565), .B(n37563), .C(\x_cnt[3] ), .Z(n37566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37565_bdd_3_lut.init = 16'hcaca;
    LUT4 x_cnt_3__bdd_3_lut_34237 (.A(n41), .B(n10871), .C(\x_cnt[2] ), 
         .Z(n37567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_cnt_3__bdd_3_lut_34237.init = 16'hcaca;
    LUT4 x_cnt_3__bdd_2_lut (.A(n37343), .B(\x_cnt[2] ), .Z(n37568)) /* synthesis lut_function=(A (B)) */ ;
    defparam x_cnt_3__bdd_2_lut.init = 16'h8888;
    L6MUX21 i32997 (.D0(n36301), .D1(n36302), .SD(n38239), .Z(n36303));
    LUT4 n37569_bdd_3_lut (.A(n37569), .B(n37566), .C(x_cnt[1]), .Z(n37570)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37569_bdd_3_lut.init = 16'hcaca;
    LUT4 realv_3_2__bdd_3_lut_34400 (.A(n38098), .B(n2897), .C(n2885), 
         .Z(n36947)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_34400.init = 16'hd8d8;
    LUT4 i32682_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n38085), .Z(n35988)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32682_3_lut.init = 16'hcaca;
    LUT4 realv_4_2__bdd_3_lut_33779 (.A(n38114), .B(n2913), .C(n2967[3]), 
         .Z(n37056)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_33779.init = 16'he4e4;
    LUT4 i32681_3_lut (.A(n2897), .B(n2993[3]), .C(n38085), .Z(n35987)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32681_3_lut.init = 16'hcaca;
    LUT4 i32680_3_lut (.A(n2903[3]), .B(n2967[3]), .C(n38085), .Z(n35986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32680_3_lut.init = 16'hcaca;
    LUT4 i32679_3_lut (.A(n2886), .B(n38405), .C(n38085), .Z(n35985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32679_3_lut.init = 16'hcaca;
    LUT4 Mux_258_i5_3_lut (.A(n3006[7]), .B(n3019[7]), .C(n38085), .Z(n5_adj_65)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_258_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_258_i4_3_lut (.A(n2980[7]), .B(n2993[4]), .C(n38085), .Z(n4_adj_66)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_258_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_259_i5_3_lut (.A(n3006[6]), .B(n3045[3]), .C(n38085), .Z(n5_adj_67)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_259_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_259_i4_3_lut (.A(n2980[6]), .B(n2993[4]), .C(n38085), .Z(n4_adj_68)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_259_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_115 (.A(n38415), .B(n38078), .C(x_cnt[0]), 
         .Z(n35321)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_115.init = 16'h2020;
    LUT4 n3_bdd_3_lut_4_lut (.A(n38377), .B(n38081), .C(n38097), .D(n37998), 
         .Z(n37999)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n3_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 n3_bdd_3_lut_34371_4_lut (.A(n38377), .B(n38081), .C(n38097), 
         .D(n38579), .Z(n37956)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n3_bdd_3_lut_34371_4_lut.init = 16'hf202;
    LUT4 n38085_bdd_4_lut_34804 (.A(n38084), .B(n2980[9]), .C(n38433), 
         .D(y_cnt[3]), .Z(n39128)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B))) */ ;
    defparam n38085_bdd_4_lut_34804.init = 16'h4ee4;
    LUT4 Mux_282_i1_3_lut (.A(n2885), .B(n2897), .C(n38098), .Z(n1_adj_69)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_282_i1_3_lut.init = 16'hcaca;
    LUT4 i7556_3_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38240), .Z(n38516)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i7556_3_lut_then_4_lut.init = 16'h2622;
    LUT4 i2_3_lut_4_lut_adj_116 (.A(n38302), .B(n38415), .C(n38078), .D(n38469), 
         .Z(data_r_131__N_1121[102])) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_116.init = 16'h0008;
    LUT4 n38085_bdd_3_lut (.A(n38084), .B(n2993[9]), .C(n38409), .Z(n39127)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n38085_bdd_3_lut.init = 16'he4e4;
    LUT4 n38085_bdd_4_lut_35090 (.A(n38085), .B(n38084), .C(n2895), .D(n38502), 
         .Z(n39130)) /* synthesis lut_function=(A (B (D))+!A (B (C)+!B (D))) */ ;
    defparam n38085_bdd_4_lut_35090.init = 16'hd940;
    FD1P3AX DA_LCD_554 (.D(n36070), .SP(clk_in_c_enable_45), .CK(clk_in_c), 
            .Q(DA_LCD_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam DA_LCD_554.GSR = "DISABLED";
    LUT4 n39130_bdd_3_lut (.A(n39130), .B(n39129), .C(n38086), .Z(n39131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39130_bdd_3_lut.init = 16'hcaca;
    LUT4 Mux_282_i4_3_lut (.A(n2980[5]), .B(n2993[4]), .C(n38098), .Z(n4_adj_70)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_282_i4_3_lut.init = 16'hcaca;
    LUT4 mux_167_i7_3_lut_4_lut (.A(n38362), .B(n38351), .C(n38303), .D(num_delay[6]), 
         .Z(n1586[6])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i7_3_lut_4_lut.init = 16'hef03;
    LUT4 n1_bdd_3_lut_adj_117 (.A(n38114), .B(n2980[2]), .C(n2993[2]), 
         .Z(n37058)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_117.init = 16'he4e4;
    LUT4 i33616_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), .D(state[1]), 
         .Z(clk_in_c_enable_112)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i33616_4_lut.init = 16'hf577;
    LUT4 mux_167_i16_3_lut_4_lut (.A(n38362), .B(n38351), .C(n38303), 
         .D(num_delay[15]), .Z(n1586[15])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i16_3_lut_4_lut.init = 16'hef03;
    LUT4 mux_167_i15_3_lut_4_lut (.A(n38362), .B(n38351), .C(n38303), 
         .D(num_delay[14]), .Z(n1586[14])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i15_3_lut_4_lut.init = 16'hef03;
    LUT4 i33586_4_lut (.A(rst_n_in_c), .B(n10), .C(state[2]), .D(state[1]), 
         .Z(n18019)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33586_4_lut.init = 16'hf577;
    LUT4 i1_4_lut_adj_118 (.A(state[2]), .B(state[0]), .C(n56), .D(cnt_write[4]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_4_lut_adj_118.init = 16'hceee;
    LUT4 i18658_4_lut (.A(cnt_write[4]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(n4_adj_1405), .Z(DA_LCD_N_1257[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i18658_4_lut.init = 16'h6aaa;
    LUT4 mux_167_i2_3_lut_4_lut (.A(n38362), .B(n38303), .C(n38285), .D(num_delay[1]), 
         .Z(n1586[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam mux_167_i2_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_2_lut_adj_119 (.A(cnt_write[3]), .B(cnt_write[1]), .Z(n4_adj_1405)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(80[10:19])
    defparam i1_2_lut_adj_119.init = 16'h8888;
    LUT4 i2_3_lut_adj_120 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .Z(n56)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_3_lut_adj_120.init = 16'hfefe;
    LUT4 i18660_4_lut (.A(cnt_write[3]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(cnt_write[1]), .Z(DA_LCD_N_1257[3])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam i18660_4_lut.init = 16'h6aaa;
    LUT4 n330_bdd_2_lut_34133 (.A(n37625), .B(state[0]), .Z(n37626)) /* synthesis lut_function=(A (B)) */ ;
    defparam n330_bdd_2_lut_34133.init = 16'h8888;
    LUT4 Mux_306_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n38114), .Z(n8_adj_1406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam Mux_306_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_121 (.A(cnt[4]), .B(n38319), .C(n38296), 
         .D(n15066), .Z(n5_adj_1407)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(194[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_121.init = 16'hf0d0;
    LUT4 i33320_3_lut (.A(n36029), .B(n38064), .C(x_cnt[0]), .Z(n36031)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33320_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_526_3_lut_4_lut (.A(cnt[4]), .B(n38317), .C(cnt[5]), 
         .D(cnt[1]), .Z(n38273)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(195[16:18])
    defparam i1_2_lut_rep_526_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_122 (.A(cnt[4]), .B(n38317), .C(n21613), 
         .D(n14923), .Z(n5_adj_1408)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(195[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_122.init = 16'hf0d0;
    LUT4 n25_bdd_4_lut_34321 (.A(n25), .B(n38460), .C(state[1]), .D(n38478), 
         .Z(n37625)) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((C)+!B))) */ ;
    defparam n25_bdd_4_lut_34321.init = 16'h0cac;
    LUT4 i32873_3_lut (.A(n36176), .B(n36177), .C(\x_cnt[2] ), .Z(n36179)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32873_3_lut.init = 16'hcaca;
    LUT4 i32872_3_lut (.A(n36174), .B(n36175), .C(\x_cnt[2] ), .Z(n36178)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32872_3_lut.init = 16'hcaca;
    LUT4 n25_bdd_4_lut_34125 (.A(n3994), .B(n38411), .C(state[1]), .D(state[0]), 
         .Z(n37624)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C)+!B (C+!(D))))) */ ;
    defparam n25_bdd_4_lut_34125.init = 16'h050c;
    LUT4 i33342_3_lut (.A(n37957), .B(n36164), .C(x_cnt[0]), .Z(n36165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33342_3_lut.init = 16'hcaca;
    LUT4 i32356_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n38317), .C(n15057), 
         .D(n14923), .Z(n35643)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(195[16:18])
    defparam i32356_2_lut_3_lut_4_lut.init = 16'hf0d0;
    L6MUX21 i33010 (.D0(n36314), .D1(n36315), .SD(n38239), .Z(n36316));
    LUT4 i33525_2_lut_rep_531_3_lut (.A(cnt[4]), .B(n38314), .C(cnt[1]), 
         .Z(n38278)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(162[16:18])
    defparam i33525_2_lut_rep_531_3_lut.init = 16'h2020;
    PFUMX i33013 (.BLUT(n36317), .ALUT(n36318), .C0(x_cnt[0]), .Z(n36319));
    LUT4 realv_3_2__bdd_3_lut_33660 (.A(n38098), .B(n2913), .C(n2967[3]), 
         .Z(n36932)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_33660.init = 16'he4e4;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt[4]), .B(n38318), .C(n38298), .D(n15062), 
         .Z(n7_adj_1409)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(155[16:18])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hf0d0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_123 (.A(cnt[4]), .B(n38318), .C(n21654), 
         .D(n14923), .Z(n5_adj_1410)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(155[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_123.init = 16'hf0d0;
    LUT4 i2_3_lut_4_lut_adj_124 (.A(cnt[4]), .B(n38318), .C(cnt[2]), .D(n38463), 
         .Z(n15057)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(155[16:18])
    defparam i2_3_lut_4_lut_adj_124.init = 16'hfdff;
    LUT4 i1_2_lut_rep_765 (.A(state[1]), .B(rst_n_in_c), .Z(n39804)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_rep_765.init = 16'h8888;
    LUT4 i32773_3_lut (.A(data_r[94]), .B(data_r[95]), .C(x_cnt[0]), .Z(n36079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32773_3_lut.init = 16'hcaca;
    LUT4 i14672_2_lut_2_lut_3_lut (.A(state[1]), .B(rst_n_in_c), .C(state[2]), 
         .Z(n18071)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i14672_2_lut_2_lut_3_lut.init = 16'h8080;
    LUT4 i2_2_lut_3_lut_4_lut_adj_125 (.A(n15066), .B(n38310), .C(n21654), 
         .D(n21652), .Z(n6_adj_1411)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(166[16:18])
    defparam i2_2_lut_3_lut_4_lut_adj_125.init = 16'he000;
    LUT4 i18353_4_lut (.A(n3032[1]), .B(n38075), .C(n38406), .D(n38085), 
         .Z(n14_c)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam i18353_4_lut.init = 16'hc088;
    LUT4 Mux_264_i7_3_lut (.A(n3), .B(n38609), .C(n38086), .Z(n7_adj_1413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_264_i7_3_lut.init = 16'hcaca;
    LUT4 n21801_bdd_4_lut_34381_4_lut (.A(n38082), .B(n38406), .C(n3032[1]), 
         .D(n38098), .Z(n37953)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam n21801_bdd_4_lut_34381_4_lut.init = 16'h4450;
    LUT4 i19061_4_lut (.A(n3032[1]), .B(n38075), .C(n38404), .D(n38085), 
         .Z(n14_adj_1414)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam i19061_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_3_lut_4_lut_adj_126 (.A(n15066), .B(n38310), .C(n38322), 
         .D(n21652), .Z(n4_adj_1415)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(166[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_126.init = 16'he000;
    LUT4 i18437_4_lut_4_lut (.A(n38082), .B(n38098), .C(n3045[9]), .D(n2967[3]), 
         .Z(n14)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i18437_4_lut_4_lut.init = 16'h5140;
    LUT4 i32912_3_lut (.A(n2903[3]), .B(n2967[3]), .C(n38080), .Z(n36218)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32912_3_lut.init = 16'hcaca;
    LUT4 i32911_3_lut (.A(n2886), .B(n38405), .C(n38080), .Z(n36217)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32911_3_lut.init = 16'hcaca;
    LUT4 i33433_4_lut (.A(\voltage_code[6] ), .B(\ADC_level[7] ), .C(\voltage_code[5] ), 
         .D(n35513), .Z(hundreds_1__N_558)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i33433_4_lut.init = 16'h1333;
    LUT4 Mux_349_i74_3_lut (.A(data_r[76]), .B(n2380_adj_1417), .C(x_cnt[0]), 
         .Z(n10840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i74_3_lut.init = 16'hcaca;
    LUT4 i18454_4_lut_4_lut (.A(n38082), .B(n38098), .C(n38375), .D(n2967[3]), 
         .Z(n14_adj_71)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i18454_4_lut_4_lut.init = 16'h5140;
    LUT4 i32921_4_lut_4_lut (.A(n38082), .B(n38088), .C(n38541), .D(n36949), 
         .Z(n36227)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32921_4_lut_4_lut.init = 16'h7340;
    LUT4 i32920_4_lut_4_lut (.A(n38082), .B(n38088), .C(n8_adj_1419), 
         .D(n36090), .Z(n36226)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32920_4_lut_4_lut.init = 16'h7340;
    LUT4 realv_4_1__bdd_3_lut_33771 (.A(n38114), .B(n2980[9]), .C(n2993[9]), 
         .Z(n37069)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_1__bdd_3_lut_33771.init = 16'he4e4;
    LUT4 i1_4_lut_2_lut_rep_766 (.A(y_cnt[1]), .B(y_cnt[3]), .Z(n39805)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i1_4_lut_2_lut_rep_766.init = 16'h7777;
    LUT4 i2_2_lut_rep_639_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[3]), .C(y_cnt[2]), 
         .D(n38447), .Z(n38386)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_2_lut_rep_639_3_lut_4_lut.init = 16'hfff7;
    LUT4 i18449_4_lut_4_lut (.A(n38082), .B(n38098), .C(n3045[6]), .D(n3006[4]), 
         .Z(n14_adj_72)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i18449_4_lut_4_lut.init = 16'h5140;
    LUT4 i12029_3_lut (.A(n2903[4]), .B(n2903[5]), .C(x_cnt[0]), .Z(n15410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i12029_3_lut.init = 16'hcaca;
    LUT4 cnt_main_1__bdd_2_lut (.A(cnt_main[1]), .B(state[1]), .Z(n37677)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam cnt_main_1__bdd_2_lut.init = 16'h1111;
    LUT4 realv_4_2__bdd_3_lut_33783 (.A(n38114), .B(n2903[4]), .C(n2975), 
         .Z(n37080)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_33783.init = 16'he4e4;
    LUT4 i18903_3_lut_3_lut_4_lut_4_lut (.A(n38321), .B(hundreds_1__N_558), 
         .C(n38377), .D(n38373), .Z(n3226[87])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i18903_3_lut_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 cnt_main_1__bdd_3_lut_4_lut (.A(n38320), .B(cnt_init[2]), .C(n35107), 
         .D(state[1]), .Z(n37678)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam cnt_main_1__bdd_3_lut_4_lut.init = 16'hf100;
    LUT4 mux_454_Mux_8_i1_4_lut_4_lut (.A(n38339), .B(n6305[6]), .C(cnt_scan[0]), 
         .D(n38395), .Z(n1_adj_1421)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_8_i1_4_lut_4_lut.init = 16'hf404;
    FD1P3AX cnt_i0_i4 (.D(n11826), .SP(clk_in_c_enable_47), .CK(clk_in_c), 
            .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i4.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_127 (.A(n38339), .B(cnt[3]), .C(cnt[1]), .D(n12812), 
         .Z(n1978[3])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_127.init = 16'h5140;
    PFUMX i33701 (.BLUT(n36980), .ALUT(n36979), .C0(n38105), .Z(n36981));
    LUT4 mux_454_Mux_7_i1_4_lut_4_lut (.A(n38339), .B(n6305[5]), .C(cnt_scan[0]), 
         .D(n3720[7]), .Z(n1_adj_1422)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_7_i1_4_lut_4_lut.init = 16'hf404;
    LUT4 i32849_4_lut_4_lut (.A(n38082), .B(n38088), .C(n8_adj_1423), 
         .D(n36103), .Z(n36155)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32849_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_454_Mux_5_i1_4_lut_4_lut (.A(n38339), .B(n6305[4]), .C(cnt_scan[0]), 
         .D(n3720[7]), .Z(n1_adj_1424)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_5_i1_4_lut_4_lut.init = 16'hf404;
    LUT4 i6_4_lut (.A(x_cnt_c[5]), .B(n12), .C(x_cnt_c[4]), .D(x_cnt[1]), 
         .Z(n14544)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(\x_cnt[2] ), .B(x_cnt_c[7]), .C(\x_cnt[3] ), .D(x_cnt_c[6]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 realv_4_2__bdd_3_lut_33780 (.A(n38114), .B(n3006[4]), .C(n3019[4]), 
         .Z(n37079)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_33780.init = 16'he4e4;
    LUT4 realv_4_2__bdd_3_lut_33784 (.A(n38114), .B(n2993[4]), .C(n2897), 
         .Z(n37082)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_33784.init = 16'hd8d8;
    LUT4 i12027_3_lut (.A(n2903[6]), .B(n2903[7]), .C(x_cnt[0]), .Z(n15408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i12027_3_lut.init = 16'hcaca;
    LUT4 realv_4_2__bdd_3_lut_34427 (.A(n38114), .B(n2897), .C(n2885), 
         .Z(n37083)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_34427.init = 16'hd8d8;
    LUT4 Mux_349_i114_3_lut (.A(n3_adj_1425), .B(n3_adj_1398), .C(x_cnt[0]), 
         .Z(n10800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i114_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_rep_551 (.A(n38312), .B(cnt[3]), .C(cnt[1]), .Z(n38298)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i2_3_lut_rep_551.init = 16'hefef;
    LUT4 i18768_2_lut_4_lut (.A(n38312), .B(cnt[3]), .C(cnt[1]), .D(n15159), 
         .Z(n22140)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i18768_2_lut_4_lut.init = 16'hef00;
    LUT4 i32473_3_lut_4_lut (.A(n38443), .B(n38311), .C(n35357), .D(n15159), 
         .Z(n35766)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(176[16:18])
    defparam i32473_3_lut_4_lut.init = 16'he000;
    PFUMX i34435 (.BLUT(n38083), .ALUT(n38062), .C0(n38105), .Z(n38063));
    LUT4 i1_2_lut_4_lut_adj_128 (.A(n38072), .B(n4_adj_1397), .C(\ctrlword_595_3[13] ), 
         .D(n22360), .Z(n35293)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i1_2_lut_4_lut_adj_128.init = 16'hca00;
    LUT4 Mux_349_i110_3_lut (.A(n38073), .B(n3_adj_1426), .C(x_cnt[0]), 
         .Z(n10806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i110_3_lut.init = 16'hcaca;
    L6MUX21 i34425 (.D0(n38051), .D1(n38049), .SD(n38089), .Z(n38052));
    LUT4 Mux_349_i90_3_lut (.A(n2246), .B(n2245), .C(x_cnt[0]), .Z(n10822)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i90_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i89_3_lut (.A(n2248), .B(n2247), .C(x_cnt[0]), .Z(n10824)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i89_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_555 (.A(n7_adj_1427), .B(n38321), .Z(n38302)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_555.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_537_3_lut (.A(n7_adj_1427), .B(n38321), .C(n38415), 
         .Z(n38284)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_rep_537_3_lut.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_129 (.A(n7_adj_1427), .B(n38321), .C(n38469), 
         .D(data_r[34]), .Z(data_r_131__N_1121[34])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_129.init = 16'h0b00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_130 (.A(n7_adj_1427), .B(n38321), .C(n3_adj_1426), 
         .D(n38469), .Z(data_r_131__N_1121[113])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_130.init = 16'h00b0;
    PFUMX i34423 (.BLUT(n10180), .ALUT(n38050), .C0(n38097), .Z(n38051));
    LUT4 i1_2_lut_3_lut_4_lut_adj_131 (.A(n7_adj_1427), .B(n38321), .C(n2244), 
         .D(n38469), .Z(data_r_131__N_1121[96])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_131.init = 16'h00b0;
    PFUMX i35714_i31 (.BLUT(n36063), .ALUT(n12292), .C0(x_cnt_c[4]), .Z(n22354));
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(n7_adj_1427), .B(n38321), .C(n2242), 
         .D(n38469), .Z(data_r_131__N_1121[98])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h00b0;
    LUT4 Mux_349_i86_3_lut (.A(n2380_adj_1417), .B(data_r[89]), .C(x_cnt[0]), 
         .Z(n10828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i86_3_lut.init = 16'hcaca;
    LUT4 i10579_2_lut_3_lut (.A(n7_adj_1427), .B(n38321), .C(n36137), 
         .Z(n13853)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i10579_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(n7_adj_1427), .B(n38321), .C(n3_adj_1398), 
         .D(n38469), .Z(data_r_131__N_1121[119])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'h00b0;
    PFUMX i34420 (.BLUT(n38048), .ALUT(n38047), .C0(n38097), .Z(n38049));
    LUT4 i1_2_lut_3_lut_4_lut_adj_134 (.A(n7_adj_1427), .B(n38321), .C(n2245), 
         .D(n38469), .Z(data_r_131__N_1121[95])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_134.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_135 (.A(n7_adj_1427), .B(n38321), .C(n2243), 
         .D(n38469), .Z(data_r_131__N_1121[97])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_135.init = 16'h00b0;
    LUT4 i1_4_lut_adj_136 (.A(n22360), .B(clk_in_c_enable_49), .C(n35515), 
         .D(n38423), .Z(clk_in_c_enable_26)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_136.init = 16'hc4c0;
    LUT4 i1_4_lut_adj_137 (.A(n38424), .B(n38364), .C(n2014), .D(cnt_scan[0]), 
         .Z(n11[0])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(79[19:27])
    defparam i1_4_lut_adj_137.init = 16'h0a88;
    LUT4 i10678_2_lut_3_lut (.A(n7_adj_1427), .B(n38321), .C(n36180), 
         .Z(n13989)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i10678_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_138 (.A(n7_adj_1427), .B(n38321), .C(n3_adj_1425), 
         .D(n38469), .Z(data_r_131__N_1121[118])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_138.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n7_adj_1427), .B(n38321), .C(n2240), 
         .D(n38469), .Z(data_r_131__N_1121[100])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h00b0;
    LUT4 Mux_349_i98_3_lut (.A(n2240), .B(n2239), .C(x_cnt[0]), .Z(n10816)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i98_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_140 (.A(n7_adj_1427), .B(n38321), .C(n2247), 
         .D(n38469), .Z(data_r_131__N_1121[93])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_140.init = 16'h00b0;
    PFUMX i33880 (.BLUT(n38227), .ALUT(n37223), .C0(n38239), .Z(n37224));
    LUT4 i1_2_lut_3_lut_4_lut_adj_141 (.A(n7_adj_1427), .B(n38321), .C(n2248), 
         .D(n38469), .Z(data_r_131__N_1121[92])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_141.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_142 (.A(n7_adj_1427), .B(n38321), .C(n2239), 
         .D(n38469), .Z(data_r_131__N_1121[101])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_142.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n7_adj_1427), .B(n38321), .C(n2241), 
         .D(n38469), .Z(data_r_131__N_1121[99])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'h00b0;
    LUT4 Mux_330_i7_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1372), 
         .D(n3_adj_1428), .Z(n7_adj_1429)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_330_i7_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(n7_adj_1427), .B(n38321), .C(n38469), 
         .D(data_r[104]), .Z(data_r_131__N_1121[104])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h0b00;
    LUT4 i1_4_lut_adj_145 (.A(y_cnt[7]), .B(y_cnt[6]), .C(n32886), .D(y_cnt[5]), 
         .Z(n2014)) /* synthesis lut_function=(A (B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_4_lut_adj_145.init = 16'ha888;
    LUT4 i1_2_lut_rep_535_3_lut (.A(n7_adj_1427), .B(n38321), .C(data_r[104]), 
         .Z(n38282)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_rep_535_3_lut.init = 16'hb0b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_146 (.A(n7_adj_1427), .B(n38321), .C(n2246), 
         .D(n38469), .Z(data_r_131__N_1121[94])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_146.init = 16'h00b0;
    L6MUX21 i34406 (.D0(n38035), .D1(n38033), .SD(n38089), .Z(n38036));
    LUT4 i19092_4_lut (.A(cnt[3]), .B(cnt[2]), .C(cnt[1]), .D(cnt[0]), 
         .Z(n22473)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i19092_4_lut.init = 16'ha888;
    PFUMX i34404 (.BLUT(n10180), .ALUT(n38034), .C0(n38097), .Z(n38035));
    LUT4 i8_4_lut (.A(n15), .B(cnt[13]), .C(n14_adj_1430), .D(cnt[8]), 
         .Z(n22690)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 Mux_349_i96_3_lut (.A(n2242), .B(n2241), .C(x_cnt[0]), .Z(n10818)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i96_3_lut.init = 16'hcaca;
    FD1P3AX cnt_i0_i5 (.D(n11824), .SP(clk_in_c_enable_47), .CK(clk_in_c), 
            .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i5.GSR = "DISABLED";
    LUT4 i6_4_lut_adj_147 (.A(cnt[11]), .B(cnt[9]), .C(cnt[14]), .D(cnt[10]), 
         .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut_adj_147.init = 16'hfffe;
    LUT4 Mux_349_i95_3_lut (.A(n2244), .B(n2243), .C(x_cnt[0]), .Z(n10820)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i95_3_lut.init = 16'hcaca;
    PFUMX i34402 (.BLUT(n38032), .ALUT(n38031), .C0(n38097), .Z(n38033));
    LUT4 i5_3_lut (.A(cnt[12]), .B(cnt[15]), .C(cnt[7]), .Z(n14_adj_1430)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    FD1P3AX cnt_i0_i6 (.D(n35236), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_148 (.A(n7_adj_1427), .B(n38321), .C(n38469), 
         .D(data_r[47]), .Z(data_r_131__N_1121[47])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_148.init = 16'h0b00;
    LUT4 i3719_3_lut_rep_538_4_lut (.A(n38336), .B(n38473), .C(n38351), 
         .D(n38362), .Z(n38285)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[16:17])
    defparam i3719_3_lut_rep_538_4_lut.init = 16'hfef0;
    LUT4 Mux_321_i7_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8), .D(n3_adj_1428), 
         .Z(n7_adj_1431)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_321_i7_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_323_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1432), 
         .D(n36237), .Z(n2667)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_323_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_3_lut_4_lut_adj_149 (.A(cnt_init[2]), .B(n38337), .C(n35106), 
         .D(n1603[2]), .Z(n38_adj_1433)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_149.init = 16'hf111;
    LUT4 n35286_bdd_4_lut (.A(clk_in_c_enable_49), .B(rst_n_in_c), .C(n35093), 
         .D(state[0]), .Z(n35529)) /* synthesis lut_function=(!((B+(C (D)))+!A)) */ ;
    defparam n35286_bdd_4_lut.init = 16'h0222;
    LUT4 i1_4_lut_adj_150 (.A(n35515), .B(clk_in_c_enable_49), .C(n35784), 
         .D(state[0]), .Z(clk_in_c_enable_144)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_150.init = 16'h8ccc;
    LUT4 i32491_4_lut (.A(n38478), .B(n38339), .C(n38395), .D(cnt_scan[0]), 
         .Z(n35784)) /* synthesis lut_function=(A+!(B (C (D))+!B (C+!(D)))) */ ;
    defparam i32491_4_lut.init = 16'hafee;
    FD1P3AX cnt_scan__i2 (.D(n11[2]), .SP(clk_in_c_enable_49), .CK(clk_in_c), 
            .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_scan__i2.GSR = "DISABLED";
    LUT4 i18574_4_lut (.A(n37570), .B(x_cnt_c[5]), .C(n13989), .D(x_cnt_c[4]), 
         .Z(n63)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i18574_4_lut.init = 16'hc088;
    LUT4 i10686_4_lut (.A(n38302), .B(n36205), .C(n36206), .D(x_cnt_c[4]), 
         .Z(n14004)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i10686_4_lut.init = 16'ha088;
    LUT4 i33395_3_lut (.A(n14004), .B(n63), .C(x_cnt_c[6]), .Z(n125)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i33395_3_lut.init = 16'hacac;
    FD1P3AX state_back__i1 (.D(n16[1]), .SP(clk_in_c_enable_144), .CK(clk_in_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam state_back__i1.GSR = "DISABLED";
    FD1P3AX num_delay_i1 (.D(\num_delay_15__N_811[1] ), .SP(clk_in_c_enable_144), 
            .CK(clk_in_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_151 (.A(state_back[0]), .B(n38421), .C(n35435), 
         .D(n54), .Z(n16[0])) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;
    defparam i1_4_lut_adj_151.init = 16'h3230;
    LUT4 i68_4_lut (.A(n40), .B(n38475), .C(cnt_init[0]), .D(n4_adj_1436), 
         .Z(n54)) /* synthesis lut_function=(A+!(B (C)+!B (C+!(D)))) */ ;
    defparam i68_4_lut.init = 16'hafae;
    LUT4 i2_3_lut_adj_152 (.A(n35438), .B(cnt_init[12]), .C(cnt_init[8]), 
         .Z(n35069)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i2_3_lut_adj_152.init = 16'hfefe;
    FD1P3AX data_r_i0_i34 (.D(data_r_131__N_1121[34]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i34.GSR = "DISABLED";
    LUT4 i33398_4_lut (.A(n104), .B(n125), .C(x_cnt_c[6]), .D(x_cnt_c[5]), 
         .Z(n126)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i33398_4_lut.init = 16'haccc;
    LUT4 i1_4_lut_adj_153 (.A(cnt_init[6]), .B(cnt_init[5]), .C(cnt_init[7]), 
         .D(n4_adj_1437), .Z(n35538)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_153.init = 16'hfffe;
    FD1P3AX data_r_i0_i47 (.D(data_r_131__N_1121[47]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i47.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_154 (.A(cnt_init[3]), .B(cnt_init[4]), .Z(n4_adj_1437)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_adj_154.init = 16'heeee;
    LUT4 i10675_4_lut (.A(n38302), .B(n36134), .C(n35310), .D(\x_cnt[3] ), 
         .Z(n13983)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i10675_4_lut.init = 16'ha088;
    LUT4 i3_4_lut (.A(cnt_init[14]), .B(cnt_init[10]), .C(cnt_init[11]), 
         .D(cnt_init[15]), .Z(n35438)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i3_4_lut.init = 16'hfffe;
    LUT4 i5032_4_lut (.A(n14992), .B(cnt[6]), .C(n38479), .D(cnt[3]), 
         .Z(n14_adj_1438)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5032_4_lut.init = 16'hc8c0;
    LUT4 Mux_349_i109_3_lut (.A(n108), .B(n13983), .C(x_cnt_c[4]), .Z(n109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam Mux_349_i109_3_lut.init = 16'hcaca;
    LUT4 i19276_4_lut (.A(cnt[6]), .B(cnt[3]), .C(n38479), .D(n32872), 
         .Z(n22688)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i19276_4_lut.init = 16'ha8a0;
    LUT4 i32848_4_lut_4_lut (.A(n38082), .B(n38088), .C(n3006[4]), .D(n38052), 
         .Z(n36154)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32848_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_324_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n3006[4]), 
         .D(n36234), .Z(n2668)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_324_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_adj_155 (.A(state[0]), .B(state[1]), .Z(n35435)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_adj_155.init = 16'hbbbb;
    LUT4 Mux_325_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1439), 
         .D(n36231), .Z(n2669)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_325_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_454_Mux_0_i1_4_lut (.A(n22558), .B(n3720[2]), .C(cnt_scan[0]), 
         .D(n35649), .Z(n1_adj_1440)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(214[7] 581[17])
    defparam mux_454_Mux_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i3_4_lut_adj_156 (.A(n38303), .B(n35176), .C(n21686), .D(n35535), 
         .Z(n35537)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i3_4_lut_adj_156.init = 16'hffdf;
    LUT4 i18770_2_lut_rep_533_3_lut_4_lut (.A(n38349), .B(n35719), .C(n15025), 
         .D(n14923), .Z(n38280)) /* synthesis lut_function=(A (C)+!A (B (C (D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i18770_2_lut_rep_533_3_lut_4_lut.init = 16'hf0b0;
    LUT4 i3_4_lut_adj_157 (.A(n38415), .B(n38094), .C(n38105), .D(n38093), 
         .Z(n2522)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_157.init = 16'h0002;
    FD1P3AX data_r_i0_i91 (.D(data_r_131__N_1121[102]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[91] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i91.GSR = "DISABLED";
    FD1P3AX data_r_i0_i92 (.D(data_r_131__N_1121[92]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[92])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i92.GSR = "DISABLED";
    FD1P3AX data_r_i0_i93 (.D(data_r_131__N_1121[93]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[93])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i93.GSR = "DISABLED";
    FD1P3AX data_r_i0_i94 (.D(data_r_131__N_1121[94]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[94])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i94.GSR = "DISABLED";
    FD1P3AX data_r_i0_i95 (.D(data_r_131__N_1121[95]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[95])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i95.GSR = "DISABLED";
    FD1P3AX data_r_i0_i96 (.D(data_r_131__N_1121[96]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[96] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i96.GSR = "DISABLED";
    FD1P3AX data_r_i0_i97 (.D(data_r_131__N_1121[97]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[97] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i97.GSR = "DISABLED";
    FD1P3AX data_r_i0_i98 (.D(data_r_131__N_1121[98]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[98] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i98.GSR = "DISABLED";
    FD1P3AX data_r_i0_i99 (.D(data_r_131__N_1121[99]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[99] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i99.GSR = "DISABLED";
    FD1P3AX data_r_i0_i100 (.D(data_r_131__N_1121[100]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[100] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i100.GSR = "DISABLED";
    FD1P3AX data_r_i0_i101 (.D(data_r_131__N_1121[101]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(\data_r[101] )) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i101.GSR = "DISABLED";
    FD1P3AX data_r_i0_i104 (.D(data_r_131__N_1121[104]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[104])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i104.GSR = "DISABLED";
    FD1P3AX data_r_i0_i110 (.D(\data_r_131__N_1121[121] ), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[110])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i110.GSR = "DISABLED";
    LUT4 i18699_2_lut_3_lut_4_lut (.A(n38439), .B(n35509), .C(n35446), 
         .D(n38317), .Z(n22071)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(231[16:18])
    defparam i18699_2_lut_3_lut_4_lut.init = 16'heee0;
    FD1P3AX data_r_i0_i111 (.D(\data_r_131__N_1121[120] ), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[111])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i111.GSR = "DISABLED";
    FD1P3AX data_r_i0_i112 (.D(data_r_131__N_1121[112]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[112])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i112.GSR = "DISABLED";
    FD1P3AX data_r_i0_i113 (.D(data_r_131__N_1121[113]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[113])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i113.GSR = "DISABLED";
    FD1P3AX data_r_i0_i114 (.D(data_r_131__N_1121[114]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[114])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i114.GSR = "DISABLED";
    FD1P3AX data_r_i0_i115 (.D(data_r_131__N_1121[115]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[115])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i115.GSR = "DISABLED";
    FD1P3AX data_r_i0_i116 (.D(data_r_131__N_1121[116]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[116])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i116.GSR = "DISABLED";
    FD1P3AX data_r_i0_i117 (.D(data_r_131__N_1121[117]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[117])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i117.GSR = "DISABLED";
    FD1P3AX data_r_i0_i118 (.D(data_r_131__N_1121[118]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[118])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i118.GSR = "DISABLED";
    FD1P3AX data_r_i0_i119 (.D(data_r_131__N_1121[119]), .SP(clk_in_c_enable_77), 
            .CK(clk_in_c), .Q(data_r[119])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i119.GSR = "DISABLED";
    LUT4 i3_3_lut_4_lut (.A(n38439), .B(n35509), .C(n38362), .D(data_reg[5]), 
         .Z(n10_adj_1441)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(231[16:18])
    defparam i3_3_lut_4_lut.init = 16'hf111;
    LUT4 i1_4_lut_adj_158 (.A(n22592), .B(n1_adj_1442), .C(n35587), .D(n38279), 
         .Z(n35183)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_158.init = 16'hdfff;
    LUT4 Mux_326_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1443), 
         .D(n36222), .Z(n2670)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_326_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i33465_4_lut (.A(n32933), .B(rst_n_in_c), .C(state[2]), .D(state[1]), 
         .Z(high_word_N_1285)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))))) */ ;
    defparam i33465_4_lut.init = 16'h3b3f;
    LUT4 i4_4_lut (.A(n38278), .B(n35877), .C(n35164), .D(n6_adj_1444), 
         .Z(n35522)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 Mux_327_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1445), 
         .D(n36213), .Z(n2671)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_327_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_454_Mux_2_i1_4_lut (.A(cnt[1]), .B(n3720[2]), .C(cnt_scan[0]), 
         .D(n4_adj_1446), .Z(n1_adj_1447)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(214[7] 581[17])
    defparam mux_454_Mux_2_i1_4_lut.init = 16'hcac0;
    LUT4 i32423_2_lut_3_lut_4_lut (.A(n38349), .B(n38440), .C(n22198), 
         .D(n14923), .Z(n35713)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(172[16:18])
    defparam i32423_2_lut_3_lut_4_lut.init = 16'hf0e0;
    LUT4 i5_4_lut_adj_159 (.A(n15047), .B(n10_adj_1448), .C(n35530), .D(n1_adj_1449), 
         .Z(n35532)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i5_4_lut_adj_159.init = 16'hfffe;
    LUT4 mux_454_Mux_1_i1_4_lut (.A(n35444), .B(n3720[2]), .C(cnt_scan[0]), 
         .D(n4_adj_1450), .Z(n1_adj_1451)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(214[7] 581[17])
    defparam mux_454_Mux_1_i1_4_lut.init = 16'hc0c5;
    LUT4 i3_4_lut_adj_160 (.A(n22140), .B(n35166), .C(n22592), .D(n35877), 
         .Z(n35521)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i3_4_lut_adj_160.init = 16'hffdf;
    LUT4 i2_2_lut_3_lut_4_lut_adj_161 (.A(n38349), .B(n38440), .C(n35357), 
         .D(n14923), .Z(n6_adj_1452)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(172[16:18])
    defparam i2_2_lut_3_lut_4_lut_adj_161.init = 16'hf0e0;
    LUT4 i4_4_lut_adj_162 (.A(cnt[1]), .B(n8_adj_1453), .C(n1_adj_1454), 
         .D(n4_adj_1455), .Z(n34561)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i4_4_lut_adj_162.init = 16'hfcfd;
    LUT4 i6_4_lut_adj_163 (.A(n35530), .B(n35653), .C(n35713), .D(n10_adj_1441), 
         .Z(n35531)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i6_4_lut_adj_163.init = 16'hffbf;
    LUT4 i32839_4_lut_4_lut (.A(n38082), .B(n38088), .C(n8_adj_1371), 
         .D(n37999), .Z(n36145)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32839_4_lut_4_lut.init = 16'h7340;
    LUT4 i4_4_lut_adj_164 (.A(state[2]), .B(rst_n_in_c), .C(cnt_write[0]), 
         .D(n35591), .Z(clk_in_c_enable_45)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i4_4_lut_adj_164.init = 16'h0080;
    LUT4 i32311_2_lut (.A(state[0]), .B(cnt_write[4]), .Z(n35591)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32311_2_lut.init = 16'heeee;
    LUT4 Mux_328_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1456), 
         .D(n36192), .Z(n2672)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_328_i15_4_lut_4_lut.init = 16'h7340;
    PFUMX i32736 (.BLUT(n36038), .ALUT(n36039), .C0(x_cnt[0]), .Z(n36042));
    LUT4 i1_2_lut_4_lut_adj_165 (.A(n38441), .B(cnt[2]), .C(n38350), .D(cnt[3]), 
         .Z(n35458)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_4_lut_adj_165.init = 16'hfbff;
    LUT4 i32735_3_lut (.A(n10208), .B(n2903[6]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36041)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32735_3_lut.init = 16'hcaca;
    LUT4 i32734_3_lut (.A(n1_adj_73), .B(n2903[5]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36040)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32734_3_lut.init = 16'hcaca;
    LUT4 i7556_3_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38240), .Z(n38515)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i7556_3_lut_else_4_lut.init = 16'h5018;
    LUT4 i32851_4_lut_4_lut (.A(n38082), .B(n38088), .C(n8_adj_1458), 
         .D(n36096), .Z(n36157)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i32851_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_543_4_lut (.A(n38442), .B(cnt[3]), .C(n38349), .D(cnt[4]), 
         .Z(n38290)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i1_2_lut_rep_543_4_lut.init = 16'hfbff;
    LUT4 Mux_322_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1459), 
         .D(n36240), .Z(n2666)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_322_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 n33689_bdd_3_lut (.A(n38085), .B(n2993[4]), .C(n2980[5]), .Z(n37873)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n33689_bdd_3_lut.init = 16'hd8d8;
    LUT4 i32772_3_lut (.A(data_r[92]), .B(data_r[93]), .C(x_cnt[0]), .Z(n36078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32772_3_lut.init = 16'hcaca;
    PFUMX i32995 (.BLUT(n36297), .ALUT(n36298), .C0(n38241), .Z(n36301));
    LUT4 i9064_3_lut (.A(data_r[111]), .B(data_r[110]), .C(x_cnt[0]), 
         .Z(n12278)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9064_3_lut.init = 16'hcaca;
    LUT4 i33480_2_lut (.A(\x_cnt[2] ), .B(x_cnt[1]), .Z(n35589)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i33480_2_lut.init = 16'h1111;
    FD1P3AX cnt_i0_i7 (.D(n35229), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i7.GSR = "DISABLED";
    LUT4 i19_3_lut (.A(n2_adj_1460), .B(n35727), .C(state[0]), .Z(n12_adj_1461)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i19_3_lut.init = 16'h3a3a;
    LUT4 i3_4_lut_adj_166 (.A(n38475), .B(n38287), .C(cnt_init[0]), .D(n38363), 
         .Z(n2_adj_1460)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i3_4_lut_adj_166.init = 16'h0001;
    LUT4 i1_2_lut_adj_167 (.A(n1696[6]), .B(n35605), .Z(n35236)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_167.init = 16'h2222;
    PFUMX i32996 (.BLUT(n36299), .ALUT(n36300), .C0(n38241), .Z(n36302));
    LUT4 i32844_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n38114), .Z(n36150)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32844_3_lut.init = 16'hcaca;
    LUT4 i32320_4_lut (.A(state[2]), .B(n38340), .C(n38339), .D(state[0]), 
         .Z(n35605)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i32320_4_lut.init = 16'hfaee;
    LUT4 i1_4_lut_4_lut_4_lut_adj_168 (.A(cnt[3]), .B(n38350), .C(cnt[2]), 
         .D(cnt[4]), .Z(n90)) /* synthesis lut_function=(!(A (B+!(D))+!A (B+!(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(230[16:17])
    defparam i1_4_lut_4_lut_4_lut_adj_168.init = 16'h3200;
    LUT4 Mux_329_i15_4_lut_4_lut (.A(n38109), .B(n38110), .C(n8_adj_1462), 
         .D(n36183), .Z(n2673)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;
    defparam Mux_329_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(cnt[3]), .B(n38350), .C(n38473), 
         .D(cnt[4]), .Z(n14994)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(230[16:17])
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'hfdff;
    LUT4 i1_4_lut_adj_170 (.A(n35160), .B(n38424), .C(state[0]), .D(n38304), 
         .Z(n16[1])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_170.init = 16'hccc8;
    LUT4 i1_4_lut_adj_171 (.A(n40), .B(cnt_init[0]), .C(state_back[1]), 
         .D(n37_adj_1463), .Z(n35160)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_171.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_172 (.A(n38340), .B(n38475), .C(n38341), .D(state_back[1]), 
         .Z(n37_adj_1463)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_172.init = 16'hfc50;
    LUT4 n1_bdd_3_lut_adj_173 (.A(n38085), .B(n2903[5]), .C(n2975), .Z(n37875)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_173.init = 16'he4e4;
    LUT4 i1_4_lut_adj_174 (.A(cnt[5]), .B(n38289), .C(n35737), .D(cnt[2]), 
         .Z(n40_adj_1464)) /* synthesis lut_function=(!((B (C+!(D))+!B (C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_174.init = 16'h0a22;
    LUT4 i1_4_lut_adj_175 (.A(cnt_init[0]), .B(num_delay[1]), .C(n37_adj_1465), 
         .D(n40), .Z(n4_adj_74)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_4_lut_adj_175.init = 16'hdc50;
    LUT4 i1_4_lut_adj_176 (.A(n1586[1]), .B(num_delay[1]), .C(n38341), 
         .D(n38475), .Z(n37_adj_1465)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_176.init = 16'heca0;
    PFUMX i33008 (.BLUT(n36310), .ALUT(n36311), .C0(n38241), .Z(n36314));
    LUT4 i1_2_lut_rep_532_3_lut_4_lut (.A(cnt[3]), .B(n38350), .C(n14923), 
         .D(cnt[4]), .Z(n38279)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(167[16:18])
    defparam i1_2_lut_rep_532_3_lut_4_lut.init = 16'hfeff;
    PFUMX i33009 (.BLUT(n36312), .ALUT(n36313), .C0(n38241), .Z(n36315));
    LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.A(cnt[3]), .B(n38350), .C(cnt[5]), 
         .D(cnt[4]), .Z(n15087)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(167[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_177.init = 16'hfeff;
    LUT4 i33557_4_lut (.A(\ctrlword_595_3[13] ), .B(clk_in_c_enable_124), 
         .C(n38277), .D(state[2]), .Z(clk_in_c_enable_77)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i33557_4_lut.init = 16'hcc4c;
    LUT4 n3_bdd_3_lut_34311 (.A(n3), .B(n37889), .C(n38086), .Z(n37890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut_34311.init = 16'hcaca;
    LUT4 i19332_4_lut (.A(n38374), .B(n22604), .C(n22577), .D(x_cnt[0]), 
         .Z(n10871)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i19332_4_lut.init = 16'h5f77;
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(cnt[3]), .B(n38349), .C(n14923), 
         .D(cnt[4]), .Z(n35550)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'hfeff;
    LUT4 i3_4_lut_adj_179 (.A(y_cnt[3]), .B(n35841), .C(n39822), .D(n38448), 
         .Z(n7_adj_1427)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_179.init = 16'h0200;
    LUT4 i32541_4_lut (.A(y_cnt[7]), .B(y_cnt[4]), .C(y_cnt[6]), .D(y_cnt[5]), 
         .Z(n35841)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i32541_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_180 (.A(cnt[3]), .B(n38349), .C(n35425), 
         .D(cnt[4]), .Z(n15181)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_180.init = 16'hfeff;
    LUT4 i1_2_lut_rep_528_3_lut_4_lut (.A(cnt[3]), .B(n38349), .C(n15066), 
         .D(cnt[4]), .Z(n38275)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_rep_528_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_181 (.A(cnt[3]), .B(n38349), .C(n38400), .D(cnt[1]), 
         .Z(n32896)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_181.init = 16'hfeff;
    LUT4 n22395_bdd_1_lut_33763_2_lut_3_lut_4_lut (.A(cnt_init[0]), .B(n38363), 
         .C(n38351), .D(n38475), .Z(n37053)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam n22395_bdd_1_lut_33763_2_lut_3_lut_4_lut.init = 16'h0001;
    PFUMX i34369 (.BLUT(n37997), .ALUT(n37996), .C0(n38098), .Z(n37998));
    LUT4 i1_4_lut_adj_182 (.A(n38355), .B(n32883), .C(n4_adj_75), .D(n38329), 
         .Z(n51)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_182.init = 16'hccc4;
    LUT4 Mux_263_i15_4_lut (.A(n37965), .B(n8_adj_1468), .C(n38079), .D(n38075), 
         .Z(n2247)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_263_i15_4_lut.init = 16'hca0a;
    LUT4 i32409_2_lut_3_lut_3_lut_4_lut (.A(cnt_init[0]), .B(n38363), .C(n38362), 
         .D(n38351), .Z(n35699)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i32409_2_lut_3_lut_3_lut_4_lut.init = 16'heefe;
    LUT4 Mux_262_i15_4_lut (.A(n35991), .B(n8_adj_1469), .C(n38079), .D(n38075), 
         .Z(n2246)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_262_i15_4_lut.init = 16'hca0a;
    LUT4 i3_4_lut_rep_574 (.A(n5_adj_1470), .B(n38403), .C(n39805), .D(n38401), 
         .Z(n38321)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i3_4_lut_rep_574.init = 16'ha888;
    LUT4 Mux_262_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n38085), .Z(n8_adj_1469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_262_i8_3_lut.init = 16'hcaca;
    L6MUX21 i34367 (.D0(n37994), .D1(n37992), .SD(n38104), .Z(n37995));
    LUT4 Mux_261_i15_4_lut (.A(n37975), .B(n38585), .C(n38079), .D(n38075), 
         .Z(n2245)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_261_i15_4_lut.init = 16'hca0a;
    PFUMX i34365 (.BLUT(n1_adj_1471), .ALUT(n37993), .C0(n38105), .Z(n37994));
    LUT4 i33530_3_lut_4_lut (.A(n38349), .B(n38382), .C(n22700), .D(n21615), 
         .Z(n36535)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(169[16:18])
    defparam i33530_3_lut_4_lut.init = 16'h1fff;
    LUT4 Mux_260_i15_4_lut (.A(n37877), .B(n8_adj_1472), .C(n38079), .D(n38075), 
         .Z(n2244)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_260_i15_4_lut.init = 16'hca0a;
    LUT4 Mux_260_i8_3_lut (.A(n3006[4]), .B(n3045[5]), .C(n38085), .Z(n8_adj_1472)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_260_i8_3_lut.init = 16'hcaca;
    PFUMX i34363 (.BLUT(n2_adj_1473), .ALUT(n37991), .C0(n38105), .Z(n37992));
    LUT4 i32324_3_lut_4_lut (.A(n38348), .B(n38443), .C(cnt[0]), .D(n22032), 
         .Z(n35609)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(205[16:18])
    defparam i32324_3_lut_4_lut.init = 16'hfe00;
    LUT4 i2_3_lut_4_lut_adj_183 (.A(n38349), .B(n17_c), .C(cnt[3]), .D(n21848), 
         .Z(n15094)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(180[16:18])
    defparam i2_3_lut_4_lut_adj_183.init = 16'hbfff;
    LUT4 Mux_259_i15_4_lut (.A(n36189), .B(n8_adj_1474), .C(n38079), .D(n38075), 
         .Z(n2243)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_259_i15_4_lut.init = 16'hca0a;
    LUT4 Mux_259_i8_3_lut (.A(n3006[4]), .B(n3045[6]), .C(n38085), .Z(n8_adj_1474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_259_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_258_i15_4_lut (.A(n36210), .B(n3006[4]), .C(n38079), .D(n38075), 
         .Z(n2242)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_258_i15_4_lut.init = 16'hca0a;
    LUT4 Mux_257_i15_4_lut (.A(n36004), .B(n8_adj_1475), .C(n38079), .D(n38075), 
         .Z(n2241)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_257_i15_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_4_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .D(n38098), .Z(n38519)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i1_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0002;
    LUT4 Mux_256_i15_4_lut (.A(n39131), .B(n8_adj_1476), .C(n38079), .D(n38075), 
         .Z(n2240)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_256_i15_4_lut.init = 16'hca0a;
    LUT4 Mux_256_i8_3_lut (.A(n2967[3]), .B(n3045[9]), .C(n38085), .Z(n8_adj_1476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_256_i8_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_184 (.A(data_r[47]), .B(x_cnt[0]), .C(\x_cnt[2] ), 
         .D(n35335), .Z(n35336)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_184.init = 16'h8000;
    LUT4 i35693_i12_4_lut (.A(n3226[87]), .B(n3_adj_76), .C(x_cnt[0]), 
         .D(n38277), .Z(n12_adj_1478)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i35693_i12_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_185 (.A(n38277), .B(data_r[76]), .C(n38356), .D(x_cnt[0]), 
         .Z(n34573)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_185.init = 16'ha088;
    L6MUX21 i34351 (.D0(n37974), .D1(n37971), .SD(n38084), .Z(n37975));
    LUT4 i35693_i20_4_lut (.A(n3_adj_77), .B(n3226[87]), .C(x_cnt[0]), 
         .D(n38277), .Z(n20)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i35693_i20_4_lut.init = 16'hcac0;
    LUT4 Mux_241_i2_3_lut (.A(n2913), .B(n2967[3]), .C(n38080), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_241_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_186 (.A(n1_adj_78), .B(n38283), .C(n2_adj_1481), 
         .D(n38103), .Z(data_r_131__N_1121[114])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_186.init = 16'hc088;
    PFUMX i34349 (.BLUT(n37973), .ALUT(n37972), .C0(n38086), .Z(n37974));
    LUT4 Mux_239_i2_3_lut (.A(n2903[4]), .B(n2975), .C(n38080), .Z(n2_adj_1481)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_239_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_187 (.A(n38304), .B(num_delay[3]), .C(n38_adj_1482), 
         .D(n40), .Z(n35175)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_187.init = 16'hfefa;
    LUT4 Mux_238_i1_3_lut (.A(n2885), .B(n2897), .C(n38080), .Z(n1_adj_78)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_238_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_188 (.A(n1_adj_78), .B(n38283), .C(n2_adj_1483), 
         .D(n38103), .Z(data_r_131__N_1121[115])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_188.init = 16'hc088;
    LUT4 Mux_238_i2_3_lut (.A(n2903[5]), .B(n2975), .C(n38080), .Z(n2_adj_1483)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_238_i2_3_lut.init = 16'hcaca;
    PFUMX i34345 (.BLUT(n2_adj_1484), .ALUT(n37970), .C0(n38086), .Z(n37971));
    LUT4 i1_4_lut_adj_189 (.A(n10164), .B(n38283), .C(n2_adj_1485), .D(n38103), 
         .Z(data_r_131__N_1121[116])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_189.init = 16'hc088;
    LUT4 Mux_237_i2_3_lut (.A(n2903[6]), .B(n2972), .C(n38080), .Z(n2_adj_1485)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_237_i2_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(n35544), .B(n35609), .C(n35535), .D(n10_adj_1486), 
         .Z(n35546)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i2_4_lut.init = 16'hfffb;
    LUT4 i1_4_lut_adj_190 (.A(n9_adj_1487), .B(n38495), .C(n22360), .D(state[0]), 
         .Z(num_delay_15__N_1074[5])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_190.init = 16'h3022;
    LUT4 i1_4_lut_adj_191 (.A(n10164), .B(n38283), .C(n2_adj_1488), .D(n38103), 
         .Z(data_r_131__N_1121[117])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_191.init = 16'hc088;
    LUT4 Mux_236_i2_3_lut (.A(n2903[7]), .B(n2972), .C(n38080), .Z(n2_adj_1488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(247[10] 263[19])
    defparam Mux_236_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_642_3_lut (.A(cnt[5]), .B(cnt[4]), .C(n22690), .Z(n38389)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_642_3_lut.init = 16'hfefe;
    LUT4 i32733_3_lut (.A(n1_adj_73), .B(n2903[4]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36039)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32733_3_lut.init = 16'hcaca;
    L6MUX21 i34341 (.D0(n37964), .D1(n37962), .SD(n38084), .Z(n37965));
    PFUMX i34339 (.BLUT(n1_adj_79), .ALUT(n37963), .C0(n38086), .Z(n37964));
    LUT4 i1_2_lut_adj_192 (.A(n1696[7]), .B(n35605), .Z(n35229)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_192.init = 16'h2222;
    LUT4 i2_4_lut_rep_588 (.A(state[2]), .B(n39804), .C(n22360), .D(n38423), 
         .Z(clk_in_c_enable_124)) /* synthesis lut_function=(A (B)+!A (B (C (D)))) */ ;
    defparam i2_4_lut_rep_588.init = 16'hc888;
    PFUMX i34337 (.BLUT(n37961), .ALUT(n37960), .C0(n38086), .Z(n37962));
    LUT4 realv_2_2__bdd_3_lut_34347 (.A(n38085), .B(n2913), .C(n2967[3]), 
         .Z(n37961)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_34347.init = 16'he4e4;
    LUT4 n1_bdd_3_lut_adj_193 (.A(n38085), .B(n2980[2]), .C(n2993[2]), 
         .Z(n37963)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_193.init = 16'he4e4;
    LUT4 i18255_2_lut_rep_539_3_lut_4_lut (.A(n38349), .B(n38399), .C(n38362), 
         .D(n38473), .Z(n38286)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(227[16:17])
    defparam i18255_2_lut_rep_539_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_194 (.A(n38349), .B(n38399), .C(n15145), 
         .D(n38473), .Z(n6_adj_1444)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(227[16:17])
    defparam i1_2_lut_3_lut_4_lut_adj_194.init = 16'hf0f1;
    LUT4 i1_2_lut_adj_195 (.A(n1696[8]), .B(n35605), .Z(n35230)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_195.init = 16'h2222;
    LUT4 n2_bdd_3_lut (.A(n38085), .B(n3006[4]), .C(n3019[4]), .Z(n37970)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n2_bdd_3_lut.init = 16'he4e4;
    PFUMX i34334 (.BLUT(n37956), .ALUT(n37953), .C0(n38088), .Z(n37957));
    LUT4 i1_2_lut_adj_196 (.A(n1696[9]), .B(n35605), .Z(n35235)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_196.init = 16'h2222;
    LUT4 i19_2_lut_3_lut (.A(n38361), .B(n38364), .C(cnt_scan[0]), .Z(n30220)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i19_2_lut_3_lut.init = 16'h0101;
    LUT4 realv_2_2__bdd_3_lut_34348 (.A(n38085), .B(n2993[4]), .C(n2897), 
         .Z(n37972)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_34348.init = 16'hd8d8;
    LUT4 i1_3_lut_4_lut_adj_197 (.A(n38361), .B(n38364), .C(cnt[0]), .D(cnt[2]), 
         .Z(n4_adj_1450)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_197.init = 16'heefe;
    LUT4 i32362_2_lut_3_lut (.A(n38361), .B(n38364), .C(cnt[1]), .Z(n35649)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i32362_2_lut_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_198 (.A(n38361), .B(n38364), .C(state[1]), 
         .D(cnt_scan[0]), .Z(n3_adj_1388)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i2_3_lut_4_lut_adj_198.init = 16'h00e0;
    LUT4 realv_2_2__bdd_3_lut (.A(n38085), .B(n2897), .C(n2885), .Z(n37973)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i1_2_lut_2_lut_3_lut (.A(n38361), .B(n38364), .C(cnt[3]), .Z(n4_adj_1446)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    LUT4 i32_3_lut_4_lut (.A(n38361), .B(n38364), .C(cnt_scan[0]), .D(n38395), 
         .Z(n14_adj_80)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i32_3_lut_4_lut.init = 16'h0efe;
    LUT4 i1_2_lut_adj_199 (.A(n1696[10]), .B(n35605), .Z(n35234)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_199.init = 16'h2222;
    LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.A(cnt_init[2]), .B(n38360), .C(n14_adj_1438), 
         .D(n38362), .Z(n4_adj_1436)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_200.init = 16'h2220;
    LUT4 i32732_3_lut (.A(n1_adj_81), .B(n2903[3]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36038)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32732_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_201 (.A(n1696[11]), .B(n35605), .Z(n35233)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_201.init = 16'h2222;
    LUT4 i1_2_lut_adj_202 (.A(n1696[12]), .B(n35605), .Z(n35232)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_202.init = 16'h2222;
    LUT4 i1_2_lut_adj_203 (.A(n1696[13]), .B(n35605), .Z(n35231)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_203.init = 16'h2222;
    LUT4 n1_bdd_3_lut_adj_204 (.A(n38114), .B(n2993[4]), .C(n2980[5]), 
         .Z(n37993)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_adj_204.init = 16'hd8d8;
    LUT4 i1_2_lut_adj_205 (.A(n1696[14]), .B(n35605), .Z(n35227)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_205.init = 16'h2222;
    LUT4 i1_2_lut_adj_206 (.A(n1696[15]), .B(n35605), .Z(n35228)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_206.init = 16'h2222;
    LUT4 i33513_4_lut (.A(cnt_init[2]), .B(cnt_init[0]), .C(state[1]), 
         .D(n35069), .Z(n36518)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i33513_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_207 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n5058[0])) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(124[5] 212[15])
    defparam i1_2_lut_adj_207.init = 16'h4444;
    LUT4 i1_3_lut_adj_208 (.A(cnt_write[0]), .B(n56), .C(cnt_write[4]), 
         .Z(CLK_LCD_N_1265)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(80[10:19])
    defparam i1_3_lut_adj_208.init = 16'h1414;
    LUT4 i33519_4_lut (.A(n56), .B(state[2]), .C(n38413), .D(n38464), 
         .Z(clk_in_c_enable_89)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i33519_4_lut.init = 16'h0004;
    LUT4 i33007_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n38240), .Z(n36313)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33007_3_lut.init = 16'hcaca;
    LUT4 i18661_4_lut (.A(n38308), .B(n38291), .C(n35425), .D(n15066), 
         .Z(n22032)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i18661_4_lut.init = 16'hfac8;
    LUT4 i33006_3_lut (.A(n2980[8]), .B(n2993[9]), .C(n38240), .Z(n36312)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33006_3_lut.init = 16'hcaca;
    LUT4 i4_4_lut_adj_209 (.A(cnt[0]), .B(n8_adj_1492), .C(n38280), .D(n38324), 
         .Z(n35535)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i4_4_lut_adj_209.init = 16'hcfef;
    LUT4 i3_4_lut_adj_210 (.A(n15035), .B(n35223), .C(n7_adj_1409), .D(n8_adj_1493), 
         .Z(n8_adj_1492)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i3_4_lut_adj_210.init = 16'hbfff;
    LUT4 i3_4_lut_adj_211 (.A(n15057), .B(n38288), .C(n21615), .D(n38398), 
         .Z(n8_adj_1493)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i3_4_lut_adj_211.init = 16'ha080;
    LUT4 i4_4_lut_adj_212 (.A(n35766), .B(n12_adj_1494), .C(data_reg[8]), 
         .D(n38362), .Z(n10_adj_1486)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i4_4_lut_adj_212.init = 16'hfddd;
    LUT4 i1_2_lut_adj_213 (.A(n33), .B(n52), .Z(n12_adj_1494)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_213.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_4_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .D(n38098), .Z(n38518)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !(B (C)+!B !(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i1_4_lut_4_lut_4_lut_else_4_lut.init = 16'hbc1c;
    LUT4 i32994_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n38240), .Z(n36300)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32994_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_214 (.A(n15087), .B(n38350), .C(n17_c), .D(n38382), 
         .Z(n35357)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_214.init = 16'haf8c;
    LUT4 i32993_3_lut (.A(n2897), .B(n2993[3]), .C(n38240), .Z(n36299)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32993_3_lut.init = 16'hcaca;
    PFUMX i33019 (.BLUT(n36323), .ALUT(n36324), .C0(n38249), .Z(n36325));
    LUT4 i32992_3_lut (.A(n2903[3]), .B(n2967[3]), .C(n38240), .Z(n36298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32992_3_lut.init = 16'hcaca;
    LUT4 i18247_4_lut (.A(n35550), .B(n38347), .C(cnt[2]), .D(n38439), 
         .Z(n21615)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i18247_4_lut.init = 16'haa8a;
    LUT4 i32991_3_lut (.A(n2886), .B(n38405), .C(n38240), .Z(n36297)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32991_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_215 (.A(num_delay[5]), .B(n38304), .C(n38_adj_1495), 
         .D(n40), .Z(n9_adj_1487)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_215.init = 16'hfefc;
    LUT4 i2_3_lut_4_lut_adj_216 (.A(cnt[0]), .B(n38372), .C(n38473), .D(cnt[6]), 
         .Z(n15025)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(199[16:18])
    defparam i2_3_lut_4_lut_adj_216.init = 16'hfdff;
    LUT4 i1_2_lut_4_lut_adj_217 (.A(n38072), .B(n38193), .C(\ctrlword_595_3[13] ), 
         .D(n22360), .Z(n35294)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i1_2_lut_4_lut_adj_217.init = 16'hca00;
    LUT4 i2_3_lut_4_lut_adj_218 (.A(cnt[6]), .B(n38372), .C(cnt[0]), .D(n17_c), 
         .Z(n12_adj_1496)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(198[16:18])
    defparam i2_3_lut_4_lut_adj_218.init = 16'h2000;
    LUT4 realv_4_2__bdd_3_lut_33700 (.A(n38114), .B(n3006[6]), .C(n3045[3]), 
         .Z(n36979)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_33700.init = 16'he4e4;
    LUT4 i1_4_lut_adj_219 (.A(n14994), .B(n12_adj_1496), .C(n38479), .D(n19), 
         .Z(n15035)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_219.init = 16'hdfdd;
    LUT4 i1_3_lut_4_lut_adj_220 (.A(cnt[6]), .B(n38372), .C(n17_c), .D(cnt[0]), 
         .Z(n15131)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(198[16:18])
    defparam i1_3_lut_4_lut_adj_220.init = 16'hffdf;
    LUT4 i3_4_lut_adj_221 (.A(n5_adj_1408), .B(n15094), .C(n15083), .D(n14922), 
         .Z(n35223)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_221.init = 16'h8000;
    LUT4 i32717_3_lut_4_lut (.A(n38098), .B(n38502), .C(n38089), .D(n2_adj_1497), 
         .Z(n36023)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam i32717_3_lut_4_lut.init = 16'hf404;
    FD1P3AX cnt_i0_i8 (.D(n35230), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i8.GSR = "DISABLED";
    FD1P3AX cnt_i0_i9 (.D(n35235), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i9.GSR = "DISABLED";
    FD1P3AX cnt_i0_i10 (.D(n35234), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i10.GSR = "DISABLED";
    LUT4 i36_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[3]), .D(n35756), 
         .Z(n35797)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i36_3_lut_4_lut.init = 16'hfe0e;
    FD1P3AX cnt_i0_i11 (.D(n35233), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i11.GSR = "DISABLED";
    FD1P3AX cnt_i0_i12 (.D(n35232), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i12.GSR = "DISABLED";
    FD1P3AX cnt_i0_i13 (.D(n35231), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i13.GSR = "DISABLED";
    FD1P3AX cnt_i0_i14 (.D(n35227), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i14.GSR = "DISABLED";
    FD1P3AX cnt_i0_i15 (.D(n35228), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i15.GSR = "DISABLED";
    FD1P3AX RST_LCD_548 (.D(n5058[0]), .SP(clk_in_c_enable_87), .CK(clk_in_c), 
            .Q(RST_LCD_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam RST_LCD_548.GSR = "DISABLED";
    FD1P3AX CLK_LCD_553 (.D(CLK_LCD_N_1265), .SP(clk_in_c_enable_88), .CK(clk_in_c), 
            .Q(CLK_LCD_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam CLK_LCD_553.GSR = "DISABLED";
    FD1P3AX DC_LCD_552 (.D(data_reg[8]), .SP(clk_in_c_enable_89), .CK(clk_in_c), 
            .Q(DC_LCD_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam DC_LCD_552.GSR = "DISABLED";
    LUT4 i18479_2_lut (.A(cnt[4]), .B(cnt[5]), .Z(n21848)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18479_2_lut.init = 16'h8888;
    PFUMX i33022 (.BLUT(n36326), .ALUT(n36327), .C0(n38249), .Z(n7_adj_1498));
    LUT4 i9078_4_lut (.A(n36077), .B(n12278), .C(\x_cnt[3] ), .D(n35589), 
         .Z(n12292)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i9078_4_lut.init = 16'hca0a;
    PFUMX i33025 (.BLUT(n36329), .ALUT(n36330), .C0(n38249), .Z(n7_adj_1499));
    LUT4 i1_2_lut_3_lut_4_lut_adj_222 (.A(cnt[0]), .B(n38391), .C(n15066), 
         .D(n35719), .Z(n15159)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_222.init = 16'hfeff;
    LUT4 n37355_bdd_3_lut (.A(n38240), .B(n2980[9]), .C(n2993[9]), .Z(n38857)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n37355_bdd_3_lut.init = 16'he4e4;
    LUT4 mux_3496_i7_4_lut (.A(cnt[0]), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n6305[6])) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(220[10] 233[19])
    defparam mux_3496_i7_4_lut.init = 16'h3d3e;
    PFUMX i33028 (.BLUT(n36332), .ALUT(n36333), .C0(n38249), .Z(n7_adj_1500));
    LUT4 i1_2_lut_3_lut_4_lut_adj_223 (.A(cnt[0]), .B(n38391), .C(n35428), 
         .D(cnt[3]), .Z(n32884)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_223.init = 16'hfffe;
    LUT4 realv_3_2__bdd_3_lut_34418 (.A(n38098), .B(n2903[6]), .C(n2972), 
         .Z(n38032)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_34418.init = 16'he4e4;
    LUT4 i1_4_lut_adj_224 (.A(cnt_init[0]), .B(n14644), .C(num_delay[3]), 
         .D(n38475), .Z(n38_adj_1482)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_224.init = 16'h5444;
    LUT4 realv_3_2__bdd_3_lut_34401 (.A(n38098), .B(n3006[6]), .C(n3045[3]), 
         .Z(n38031)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_34401.init = 16'he4e4;
    LUT4 i1_2_lut_rep_541_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[4]), 
         .D(cnt[3]), .Z(n38288)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_541_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_225 (.A(n38286), .B(n38341), .C(num_delay[3]), .D(n38285), 
         .Z(n14644)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_225.init = 16'hc088;
    PFUMX i33031 (.BLUT(n36335), .ALUT(n36336), .C0(n38249), .Z(n7_adj_1501));
    LUT4 i33522_2_lut (.A(\x_cnt[2] ), .B(x_cnt[1]), .Z(n35978)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i33522_2_lut.init = 16'h7777;
    LUT4 i18972_2_lut_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n38473), 
         .D(n14913), .Z(n22344)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i18972_2_lut_3_lut_4_lut.init = 16'hfffe;
    PFUMX i33034 (.BLUT(n36338), .ALUT(n36339), .C0(n38249), .Z(n7_adj_1502));
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(cnt[0]), .B(n38391), .C(n35626), 
         .D(n38440), .Z(n15169)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'hffef;
    LUT4 i2_3_lut_rep_567_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[3]), .D(n38442), 
         .Z(n38314)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i2_3_lut_rep_567_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_550_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n14923), 
         .D(n35719), .Z(n38297)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_550_3_lut_4_lut.init = 16'hfeff;
    PFUMX i33037 (.BLUT(n36341), .ALUT(n36342), .C0(n38249), .Z(n7_adj_1503));
    LUT4 n10180_bdd_3_lut_34422 (.A(n38098), .B(n2980[6]), .C(n2993[4]), 
         .Z(n38034)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10180_bdd_3_lut_34422.init = 16'he4e4;
    LUT4 i7696_2_lut (.A(x_cnt[0]), .B(n22604), .Z(n10872)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i7696_2_lut.init = 16'h2222;
    LUT4 i1_2_lut_rep_545_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n15066), 
         .D(n38440), .Z(n38292)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_545_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_552_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n38443), 
         .D(n14913), .Z(n38299)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_552_3_lut_4_lut.init = 16'hfffe;
    PFUMX i32728 (.BLUT(n36032), .ALUT(n36033), .C0(n38249), .Z(n36034));
    LUT4 Mux_308_i7_3_lut_4_lut (.A(n38377), .B(n38093), .C(n38105), .D(n38546), 
         .Z(n7_adj_82)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam Mux_308_i7_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_rep_556_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n38473), 
         .D(n38399), .Z(n38303)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(160[16:18])
    defparam i1_2_lut_rep_556_3_lut_4_lut.init = 16'hfffe;
    LUT4 realv_3_2__bdd_3_lut (.A(n38098), .B(n2903[7]), .C(n2972), .Z(n38048)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut.init = 16'he4e4;
    PFUMX mux_492_Mux_8_i2 (.BLUT(n35546), .ALUT(n1_adj_1421), .C0(state[0]), 
          .Z(n2_adj_1383)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 realv_3_2__bdd_3_lut_34419 (.A(n38098), .B(n3006[7]), .C(n3019[7]), 
         .Z(n38047)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_34419.init = 16'he4e4;
    LUT4 n10180_bdd_3_lut (.A(n38098), .B(n2980[7]), .C(n2993[4]), .Z(n38050)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10180_bdd_3_lut.init = 16'he4e4;
    LUT4 i2_3_lut_rep_565_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[2]), .D(n38441), 
         .Z(n38312)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i2_3_lut_rep_565_4_lut.init = 16'hffdf;
    LUT4 realv_4_2__bdd_3_lut_33707 (.A(n38114), .B(n2972), .C(n2903[6]), 
         .Z(n36980)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_33707.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_549_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n35446), 
         .D(cnt[3]), .Z(n38296)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_549_3_lut_4_lut.init = 16'hfdff;
    LUT4 i2_3_lut_4_lut_adj_227 (.A(cnt[0]), .B(n38391), .C(cnt[5]), .D(cnt[4]), 
         .Z(n12_adj_1505)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i2_3_lut_4_lut_adj_227.init = 16'h0020;
    LUT4 i1_2_lut_3_lut_4_lut_adj_228 (.A(cnt[0]), .B(n38391), .C(n38443), 
         .D(n14913), .Z(n15083)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_228.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_229 (.A(cnt[0]), .B(n38391), .C(n15120), 
         .D(cnt[3]), .Z(n15009)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_229.init = 16'hfdff;
    LUT4 i1_2_lut_rep_544_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[4]), 
         .D(cnt[3]), .Z(n38291)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_544_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1_2_lut_rep_548_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n35446), 
         .D(cnt[3]), .Z(n38295)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_548_3_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_230 (.A(cnt[0]), .B(n38391), .C(n38479), 
         .D(cnt[3]), .Z(n4_adj_1455)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_230.init = 16'hfffd;
    PFUMX i26975 (.BLUT(n35175), .ALUT(n30220), .C0(state[0]), .Z(n2_adj_83));
    LUT4 n14683_bdd_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(n35756), .D(cnt[1]), 
         .Z(n36999)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam n14683_bdd_3_lut_4_lut.init = 16'h220f;
    PFUMX i35693_i22 (.BLUT(n20), .ALUT(n21_adj_1507), .C0(n35978), .Z(n22));
    LUT4 n10190_bdd_3_lut_33711 (.A(n38114), .B(n2980[6]), .C(n2993[4]), 
         .Z(n36982)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10190_bdd_3_lut_33711.init = 16'he4e4;
    LUT4 i1_2_lut_adj_231 (.A(n1696[1]), .B(n35605), .Z(n35238)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_231.init = 16'h2222;
    LUT4 i1_2_lut_rep_542_3_lut_4_lut (.A(cnt[0]), .B(n38391), .C(cnt[4]), 
         .D(cnt[3]), .Z(n38289)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(181[16:18])
    defparam i1_2_lut_rep_542_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1_2_lut_rep_604 (.A(n14_adj_1438), .B(n22690), .Z(n38351)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_604.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_232 (.A(n14_adj_1438), .B(n22690), .C(state[1]), 
         .D(n35106), .Z(n35107)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i2_3_lut_4_lut_adj_232.init = 16'he000;
    LUT4 mux_168_i3_3_lut_4_lut (.A(n14_adj_1438), .B(n22690), .C(state[2]), 
         .D(n22688), .Z(n1603[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(D))) */ ;
    defparam mux_168_i3_3_lut_4_lut.init = 16'he0f1;
    LUT4 n3_bdd_4_lut_33981 (.A(n5_adj_1379), .B(n38241), .C(n38378), 
         .D(n38240), .Z(n37223)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(B+((D)+!C))) */ ;
    defparam n3_bdd_4_lut_33981.init = 16'h88b8;
    LUT4 i32960_4_lut (.A(data_r[62]), .B(n3226[63]), .C(x_cnt[0]), .D(n38277), 
         .Z(n36266)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i32960_4_lut.init = 16'hcac0;
    LUT4 i2_4_lut_adj_233 (.A(cnt_init[0]), .B(n38388), .C(cnt_init[2]), 
         .D(n4_adj_1508), .Z(n35106)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_4_lut_adj_233.init = 16'h0010;
    PFUMX i34307 (.BLUT(n37921), .ALUT(n38436), .C0(y_cnt[3]), .Z(n10208));
    LUT4 i33533_2_lut (.A(state[1]), .B(state[0]), .Z(n35976)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i33533_2_lut.init = 16'hbbbb;
    LUT4 i7666_4_lut_4_lut (.A(n38386), .B(n7_adj_1427), .C(n10812), .D(n38282), 
         .Z(n104)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i7666_4_lut_4_lut.init = 16'hdfd0;
    LUT4 Mux_349_i41_4_lut_4_lut (.A(n38386), .B(x_cnt[1]), .C(n10872), 
         .D(n38373), .Z(n41)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;
    defparam Mux_349_i41_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i29_3_lut_4_lut (.A(n38415), .B(hundreds_1__N_558), .C(x_cnt[0]), 
         .D(data_r[89]), .Z(n12_adj_1509)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i29_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_4_lut_adj_234 (.A(n15145), .B(n35223), .C(n35360), .D(n4_adj_1415), 
         .Z(n35530)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i2_4_lut_adj_234.init = 16'hbfff;
    LUT4 i14666_2_lut_4_lut (.A(n14519), .B(clk_in_c_enable_49), .C(n38387), 
         .D(n38424), .Z(n18063)) /* synthesis lut_function=(!(A ((D)+!B)+!A (((D)+!C)+!B))) */ ;
    defparam i14666_2_lut_4_lut.init = 16'h00c8;
    PFUMX i32942 (.BLUT(n34573), .ALUT(n12_adj_1478), .C0(x_cnt[1]), .Z(n36248));
    LUT4 i1_2_lut_rep_594_4_lut (.A(n38420), .B(n38419), .C(n38388), .D(cnt_init[2]), 
         .Z(n38341)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_2_lut_rep_594_4_lut.init = 16'h0100;
    LUT4 i19323_2_lut_rep_592_4_lut (.A(n38389), .B(n22473), .C(cnt[6]), 
         .D(n38364), .Z(n38339)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i19323_2_lut_rep_592_4_lut.init = 16'hfffe;
    LUT4 i19316_2_lut_rep_615 (.A(n22688), .B(n22690), .Z(n38362)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19316_2_lut_rep_615.init = 16'heeee;
    PFUMX i32938 (.BLUT(n35337), .ALUT(n35336), .C0(\x_cnt[3] ), .Z(n36244));
    LUT4 select_1212_Select_2_i1_2_lut_3_lut (.A(n22688), .B(n22690), .C(data_reg[2]), 
         .Z(n1_adj_1449)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam select_1212_Select_2_i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 select_1212_Select_6_i1_2_lut_3_lut (.A(n22688), .B(n22690), .C(data_reg[6]), 
         .Z(n1_adj_1442)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam select_1212_Select_6_i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_rep_593_3_lut (.A(n22688), .B(n22690), .C(n14_adj_1438), 
         .Z(n38340)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_593_3_lut.init = 16'hfefe;
    LUT4 i1_3_lut_4_lut_4_lut_3_lut_3_lut_4_lut (.A(n22688), .B(n22690), 
         .C(n38294), .D(n14_adj_1438), .Z(n25_adj_1510)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_3_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i33498_2_lut_rep_540_2_lut_3_lut_3_lut (.A(n22688), .B(n22690), 
         .C(n14_adj_1438), .Z(n38287)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i33498_2_lut_rep_540_2_lut_3_lut_3_lut.init = 16'h0202;
    LUT4 select_1212_Select_1_i1_2_lut_3_lut (.A(n22688), .B(n22690), .C(data_reg[1]), 
         .Z(n1_adj_1511)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam select_1212_Select_1_i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 select_1212_Select_7_i1_2_lut_3_lut (.A(n22688), .B(n22690), .C(data_reg[7]), 
         .Z(n1_adj_1454)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam select_1212_Select_7_i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i32366_4_lut (.A(n22240), .B(n5_adj_1410), .C(n15169), .D(n35338), 
         .Z(n35653)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32366_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_547_3_lut_4_lut (.A(n38390), .B(n35069), .C(n38475), 
         .D(cnt_init[0]), .Z(n38294)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_547_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_235 (.A(n38390), .B(n35069), .C(cnt_init[0]), 
         .D(cnt_init[2]), .Z(n40)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_3_lut_4_lut_adj_235.init = 16'hfeee;
    LUT4 i33643_2_lut_rep_557_3_lut_4_lut (.A(n38390), .B(n35069), .C(cnt_init[2]), 
         .D(cnt_init[0]), .Z(n38304)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33643_2_lut_rep_557_3_lut_4_lut.init = 16'h0100;
    LUT4 i32481_2_lut_4_lut (.A(n38391), .B(n38479), .C(n22473), .D(cnt_scan[1]), 
         .Z(n35774)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i32481_2_lut_4_lut.init = 16'hfffe;
    LUT4 i3_4_lut_adj_236 (.A(n5_adj_1407), .B(n15131), .C(n38444), .D(n4_adj_1455), 
         .Z(n22198)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i3_4_lut_adj_236.init = 16'h8880;
    LUT4 n37224_bdd_3_lut (.A(n37224), .B(n37222), .C(\decade[3] ), .Z(n37225)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37224_bdd_3_lut.init = 16'hcaca;
    LUT4 i32768_3_lut (.A(data_r[118]), .B(data_r[119]), .C(x_cnt[0]), 
         .Z(n36074)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32768_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_237 (.A(state[2]), .B(n9_adj_1395), .C(n1696[3]), 
         .Z(n11828)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_237.init = 16'h1010;
    LUT4 i4_4_lut_adj_238 (.A(n38336), .B(n35867), .C(n38567), .D(n38444), 
         .Z(n15145)) /* synthesis lut_function=(A ((C)+!B)+!A ((C+!(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i4_4_lut_adj_238.init = 16'hf3f7;
    LUT4 i32563_4_lut (.A(n35823), .B(n15009), .C(cnt[1]), .D(n35511), 
         .Z(n35867)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i32563_4_lut.init = 16'h8880;
    LUT4 i1_3_lut_adj_239 (.A(cnt_init[0]), .B(num_delay[5]), .C(n35630), 
         .Z(n38_adj_1495)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_239.init = 16'h4040;
    LUT4 n18_bdd_3_lut (.A(n38240), .B(n2993[4]), .C(n2980[5]), .Z(n37242)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n18_bdd_3_lut.init = 16'hd8d8;
    LUT4 i33_4_lut (.A(n38314), .B(n15062), .C(cnt[4]), .D(n38319), 
         .Z(n35823)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i33_4_lut.init = 16'hfaca;
    LUT4 i1_2_lut_adj_240 (.A(cnt[6]), .B(n35509), .Z(n35511)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(231[16:18])
    defparam i1_2_lut_adj_240.init = 16'heeee;
    LUT4 n18_bdd_4_lut (.A(n18), .B(n38240), .C(n35240), .D(y_cnt[3]), 
         .Z(n37241)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam n18_bdd_4_lut.init = 16'h30ba;
    LUT4 i1_4_lut_adj_241 (.A(n38495), .B(n7_adj_1512), .C(n22360), .D(state[0]), 
         .Z(num_delay_15__N_1074[4])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_241.init = 16'h5044;
    LUT4 i1_4_lut_adj_242 (.A(n14913), .B(cnt[2]), .C(n38325), .D(n38273), 
         .Z(n35360)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_242.init = 16'hfac8;
    LUT4 i1_4_lut_adj_243 (.A(n38304), .B(num_delay[4]), .C(n38_adj_1513), 
         .D(n40), .Z(n7_adj_1512)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_243.init = 16'hfefa;
    LUT4 i18885_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n12812)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(220[10] 233[19])
    defparam i18885_3_lut.init = 16'h2121;
    LUT4 i1_2_lut_adj_244 (.A(n3_adj_1382), .B(x_cnt_c[7]), .Z(n4_adj_1397)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_244.init = 16'h2222;
    LUT4 i18488_2_lut (.A(n127), .B(x_cnt_c[7]), .Z(n2834)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i18488_2_lut.init = 16'h2222;
    PFUMX i34283 (.BLUT(n37890), .ALUT(n14_adj_1414), .C0(n38079), .Z(n2239));
    LUT4 i1_2_lut_rep_577_3_lut_4_lut (.A(n22690), .B(n38399), .C(n38443), 
         .D(cnt[6]), .Z(n38324)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(227[16:17])
    defparam i1_2_lut_rep_577_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_4_lut_adj_245 (.A(cnt[5]), .B(n70), .C(n81), .D(n35849), 
         .Z(n8_adj_1453)) /* synthesis lut_function=(A (B+!(D))+!A (B+(C))) */ ;
    defparam i3_4_lut_adj_245.init = 16'hdcfe;
    LUT4 i32464_3_lut_4_lut (.A(cnt[0]), .B(n22690), .C(cnt[6]), .D(cnt[2]), 
         .Z(n35756)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i32464_3_lut_4_lut.init = 16'hfffe;
    LUT4 n2_bdd_3_lut_adj_246 (.A(n38240), .B(n2885), .C(n2897), .Z(n37244)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n2_bdd_3_lut_adj_246.init = 16'he4e4;
    LUT4 i33613_3_lut_4_lut (.A(cnt[0]), .B(n22690), .C(cnt[6]), .D(n38479), 
         .Z(n35749)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i33613_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_247 (.A(n38350), .B(n38479), .C(n24), .D(n4_adj_1514), 
         .Z(n70)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;
    defparam i1_4_lut_adj_247.init = 16'h5150;
    LUT4 i1_4_lut_adj_248 (.A(n38349), .B(cnt[1]), .C(n35208), .D(n90), 
         .Z(n81)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_248.init = 16'hdc50;
    LUT4 Mux_412_i8_3_lut_4_lut (.A(n38434), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2967[3]), .Z(n8_adj_1462)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_412_i8_3_lut_4_lut.init = 16'h6f60;
    LUT4 Mux_263_i8_3_lut_4_lut (.A(n38434), .B(y_cnt[3]), .C(n38085), 
         .D(n2967[3]), .Z(n8_adj_1468)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_263_i8_3_lut_4_lut.init = 16'h6f60;
    LUT4 mux_374_Mux_7_i15_3_lut (.A(n38493), .B(n38500), .C(y_cnt[3]), 
         .Z(n2972)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(475[41:46])
    defparam mux_374_Mux_7_i15_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_249 (.A(n18_adj_1515), .B(n23), .C(n38446), 
         .D(n38277), .Z(n34031)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_249.init = 16'hca00;
    LUT4 Mux_406_i8_3_lut_4_lut (.A(n38493), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2975), .Z(n8_adj_1432)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_406_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_384_i8_3_lut_4_lut (.A(n38493), .B(y_cnt[3]), .C(n38240), 
         .D(n2975), .Z(n8_adj_1516)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_384_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_257_i8_3_lut_4_lut (.A(n38493), .B(y_cnt[3]), .C(n38085), 
         .D(n2975), .Z(n8_adj_1475)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_257_i8_3_lut_4_lut.init = 16'h2f20;
    FD1P3AX cnt_i0_i1 (.D(n35238), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i1.GSR = "DISABLED";
    LUT4 Mux_279_i8_3_lut_4_lut (.A(n38493), .B(y_cnt[3]), .C(n38098), 
         .D(n2975), .Z(n8_adj_1423)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_279_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 realv_4_1__bdd_3_lut_33768_4_lut (.A(n38433), .B(y_cnt[3]), .C(n38409), 
         .D(n38114), .Z(n37068)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(484[41:46])
    defparam realv_4_1__bdd_3_lut_33768_4_lut.init = 16'hf066;
    LUT4 Mux_405_i5_3_lut_4_lut (.A(n38433), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n38409), .Z(n5_adj_84)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(484[41:46])
    defparam Mux_405_i5_3_lut_4_lut.init = 16'hf606;
    LUT4 n10218_bdd_3_lut_33912 (.A(n38240), .B(n2980[6]), .C(n2993[4]), 
         .Z(n37261)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10218_bdd_3_lut_33912.init = 16'he4e4;
    LUT4 i32945_3_lut (.A(n37351), .B(n14_adj_1518), .C(\decade[3] ), 
         .Z(n36251)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32945_3_lut.init = 16'hcaca;
    LUT4 n2983_bdd_3_lut_33962_4_lut (.A(n38433), .B(y_cnt[3]), .C(n38409), 
         .D(n38240), .Z(n37355)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(484[41:46])
    defparam n2983_bdd_3_lut_33962_4_lut.init = 16'hf066;
    LUT4 Mux_278_i5_3_lut_4_lut (.A(n38433), .B(y_cnt[3]), .C(n38098), 
         .D(n38409), .Z(n5_adj_85)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(484[41:46])
    defparam Mux_278_i5_3_lut_4_lut.init = 16'hf606;
    LUT4 i1_2_lut_adj_250 (.A(n1696[2]), .B(n35605), .Z(n35237)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_250.init = 16'h2222;
    LUT4 decade_2__bdd_3_lut_33898 (.A(n38240), .B(n3006[6]), .C(n3045[3]), 
         .Z(n37258)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33898.init = 16'he4e4;
    PFUMX i34281 (.BLUT(n37888), .ALUT(n37887), .C0(n38085), .Z(n37889));
    LUT4 i12000_3_lut_4_lut (.A(n38410), .B(y_cnt[3]), .C(x_cnt[0]), .D(n38415), 
         .Z(n15357)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam i12000_3_lut_4_lut.init = 16'h6f60;
    LUT4 i9_4_lut (.A(n35643), .B(n18_adj_1520), .C(n15094), .D(n22344), 
         .Z(n35166)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i9_4_lut.init = 16'hdfff;
    LUT4 decade_2__bdd_3_lut_33908 (.A(n38240), .B(n2903[6]), .C(n2972), 
         .Z(n37259)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33908.init = 16'he4e4;
    L6MUX21 i34273 (.D0(n37876), .D1(n37874), .SD(n38086), .Z(n37877));
    PFUMX i56 (.BLUT(n31), .ALUT(n40_adj_1464), .C0(cnt[1]), .Z(n52));
    LUT4 i11994_3_lut_4_lut (.A(n38410), .B(y_cnt[3]), .C(x_cnt[0]), .D(n38415), 
         .Z(n15351)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam i11994_3_lut_4_lut.init = 16'hf606;
    LUT4 i8_4_lut_adj_251 (.A(n35639), .B(n35733), .C(n1_adj_1511), .D(n38297), 
         .Z(n18_adj_1520)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i8_4_lut_adj_251.init = 16'hf7ff;
    LUT4 i32352_2_lut (.A(n21654), .B(n21652), .Z(n35639)) /* synthesis lut_function=(A (B)) */ ;
    defparam i32352_2_lut.init = 16'h8888;
    LUT4 Mux_413_i4_3_lut_4_lut (.A(y_cnt[3]), .B(n38410), .C(\realv_5[0] ), 
         .D(n2980[2]), .Z(n4_adj_86)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_413_i4_3_lut_4_lut.init = 16'h2f20;
    PFUMX i34271 (.BLUT(n1_adj_1522), .ALUT(n37875), .C0(n38084), .Z(n37876));
    LUT4 realv_4_2__bdd_3_lut_33708 (.A(n38114), .B(n3006[7]), .C(n3019[7]), 
         .Z(n36985)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_33708.init = 16'he4e4;
    LUT4 i18897_2_lut_4_lut (.A(n38860), .B(n37225), .C(x_cnt[0]), .D(n38277), 
         .Z(n12698)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i18897_2_lut_4_lut.init = 16'hca00;
    LUT4 i2_4_lut_adj_252 (.A(n14904), .B(n15062), .C(n38292), .D(n38308), 
         .Z(n22592)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;
    defparam i2_4_lut_adj_252.init = 16'ha080;
    LUT4 i33531_4_lut (.A(n22198), .B(n36535), .C(n38291), .D(n35626), 
         .Z(n35877)) /* synthesis lut_function=((B+!(C+!(D)))+!A) */ ;
    defparam i33531_4_lut.init = 16'hdfdd;
    LUT4 i1_2_lut_adj_253 (.A(cnt[1]), .B(cnt[3]), .Z(n35444)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_253.init = 16'heeee;
    LUT4 i18757_4_lut (.A(n2834), .B(n38395), .C(n38193), .D(\ctrlword_595_3[13] ), 
         .Z(n3720[2])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i18757_4_lut.init = 16'hc044;
    LUT4 i18181_1_lut (.A(\x_cnt[3] ), .Z(n21547)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i18181_1_lut.init = 16'h5555;
    PFUMX i34269 (.BLUT(n37873), .ALUT(n33689), .C0(n38084), .Z(n37874));
    LUT4 i9046_3_lut (.A(data_r[110]), .B(data_r[111]), .C(x_cnt[0]), 
         .Z(n12260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9046_3_lut.init = 16'hcaca;
    PFUMX i52 (.BLUT(n33_adj_1523), .ALUT(n28), .C0(n35976), .Z(n31_adj_1524));
    LUT4 i1_4_lut_adj_254 (.A(n38312), .B(cnt[2]), .C(cnt[1]), .D(n26), 
         .Z(n29_adj_1525)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_254.init = 16'hcd05;
    LUT4 i50_4_lut (.A(n35749), .B(n38349), .C(cnt[1]), .D(n21848), 
         .Z(n26)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i50_4_lut.init = 16'h3a0a;
    LUT4 i4_4_lut_adj_255 (.A(n21686), .B(n38278), .C(n22140), .D(n15035), 
         .Z(n10_adj_1448)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i4_4_lut_adj_255.init = 16'hffdf;
    LUT4 Mux_405_i8_3_lut (.A(n2967[3]), .B(n3045[9]), .C(\realv_5[0] ), 
         .Z(n8_adj_1459)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_405_i8_3_lut.init = 16'hcaca;
    LUT4 i7060_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(n38098), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38522)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7060_3_lut_4_lut_then_4_lut.init = 16'h000e;
    LUT4 realv_4_2__bdd_3_lut_33754 (.A(n38114), .B(n2972), .C(n2903[7]), 
         .Z(n36986)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_33754.init = 16'hd8d8;
    LUT4 i1_2_lut_rep_575_3_lut_4_lut (.A(n38440), .B(n38398), .C(n38391), 
         .D(cnt[0]), .Z(n38322)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(169[16:18])
    defparam i1_2_lut_rep_575_3_lut_4_lut.init = 16'hfffe;
    L6MUX21 i32738 (.D0(n36042), .D1(n36043), .SD(x_cnt[1]), .Z(n36044));
    LUT4 i33170_3_lut (.A(n7_adj_1526), .B(n14_adj_1527), .C(\decade[3] ), 
         .Z(n36250)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33170_3_lut.init = 16'hcaca;
    LUT4 i39_3_lut (.A(n36319), .B(n36289), .C(\x_cnt[2] ), .Z(n23)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i39_3_lut.init = 16'hcaca;
    LUT4 Mux_391_i7_3_lut_4_lut (.A(n38377), .B(n38233), .C(n38239), .D(n38576), 
         .Z(n7_adj_1526)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam Mux_391_i7_3_lut_4_lut.init = 16'hf202;
    LUT4 i2_4_lut_adj_256 (.A(data_reg[0]), .B(n22081), .C(n38362), .D(n22071), 
         .Z(n35176)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i2_4_lut_adj_256.init = 16'hb3ff;
    LUT4 i3_4_lut_adj_257 (.A(n38279), .B(n38295), .C(n14904), .D(n32896), 
         .Z(n22081)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_257.init = 16'h8000;
    LUT4 i40_4_lut (.A(data_r[48]), .B(n35329), .C(x_cnt[0]), .D(n38228), 
         .Z(n18_adj_1515)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i40_4_lut.init = 16'hca0a;
    LUT4 mux_3496_i1_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), .Z(n22558)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(220[10] 233[19])
    defparam mux_3496_i1_3_lut.init = 16'hcaca;
    LUT4 i33608_4_lut (.A(x_cnt_c[6]), .B(x_cnt_c[5]), .C(x_cnt_c[4]), 
         .D(n35910), .Z(n35919)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i33608_4_lut.init = 16'h7f77;
    FD1P3IX y_cnt__i1 (.D(n2021[1]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_adj_258 (.A(cnt[5]), .B(cnt[4]), .C(cnt[1]), .Z(n15120)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_258.init = 16'hefef;
    LUT4 i7665_2_lut (.A(x_cnt[0]), .B(x_cnt[1]), .Z(n10812)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i7665_2_lut.init = 16'heeee;
    PFUMX i34449 (.BLUT(n38515), .ALUT(n38516), .C0(y_cnt[1]), .Z(n38517));
    PFUMX i28486 (.BLUT(n25_adj_1510), .ALUT(n35534), .C0(state[0]), .Z(n9_adj_1395));
    LUT4 decade_2__bdd_3_lut_33954 (.A(n38240), .B(n2903[7]), .C(n2972), 
         .Z(n37272)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33954.init = 16'he4e4;
    PFUMX i28065 (.BLUT(n38_adj_1433), .ALUT(n46), .C0(state[0]), .Z(n21));
    LUT4 n3_bdd_4_lut_33879_4_lut (.A(n38234), .B(n38240), .C(n38404), 
         .D(n3032[1]), .Z(n37222)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam n3_bdd_4_lut_33879_4_lut.init = 16'h5140;
    LUT4 i18856_4_lut_4_lut (.A(n38234), .B(n38240), .C(n38406), .D(n3032[1]), 
         .Z(n14_adj_1527)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i18856_4_lut_4_lut.init = 16'h5140;
    LUT4 i18407_4_lut_4_lut (.A(n38234), .B(n38240), .C(n38375), .D(n2967[3]), 
         .Z(n14_adj_1518)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i18407_4_lut_4_lut.init = 16'h5140;
    LUT4 i32947_4_lut_4_lut (.A(n38234), .B(\decade[3] ), .C(n38517), 
         .D(n37392), .Z(n36253)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i32947_4_lut_4_lut.init = 16'h7340;
    LUT4 i32946_4_lut_4_lut (.A(n38234), .B(\decade[3] ), .C(n8_adj_1528), 
         .D(n36303), .Z(n36252)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i32946_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i18 (.D0(n3_c), .D1(n21223), .SD(n38495), .Z(n17_adj_1529));
    LUT4 i18295_4_lut_4_lut (.A(n38234), .B(n38240), .C(n3045[6]), .D(n3006[4]), 
         .Z(n14_adj_1530)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i18295_4_lut_4_lut.init = 16'h5140;
    LUT4 i32951_4_lut_4_lut (.A(n38234), .B(\decade[3] ), .C(n8_adj_1516), 
         .D(n36316), .Z(n36257)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i32951_4_lut_4_lut.init = 16'h7340;
    LUT4 n37358_bdd_3_lut (.A(n37358), .B(n38858), .C(n38239), .Z(n38859)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37358_bdd_3_lut.init = 16'hcaca;
    LUT4 i32950_4_lut_4_lut (.A(n38234), .B(\decade[3] ), .C(n3006[4]), 
         .D(n37276), .Z(n36256)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i32950_4_lut_4_lut.init = 16'h7340;
    LUT4 i33091_3_lut_4_lut (.A(state[2]), .B(n38411), .C(state[1]), .D(n35285), 
         .Z(n28)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i33091_3_lut_4_lut.init = 16'hf808;
    LUT4 i32948_4_lut_4_lut (.A(n38234), .B(\decade[3] ), .C(n8_adj_1531), 
         .D(n37246), .Z(n36254)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam i32948_4_lut_4_lut.init = 16'h7340;
    PFUMX i32737 (.BLUT(n36040), .ALUT(n36041), .C0(x_cnt[0]), .Z(n36043));
    LUT4 n10190_bdd_3_lut (.A(n38114), .B(n2980[7]), .C(n2993[4]), .Z(n36988)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10190_bdd_3_lut.init = 16'he4e4;
    LUT4 i1_3_lut_rep_612_4_lut (.A(state[1]), .B(n38421), .C(clk_in_c_enable_49), 
         .D(n14519), .Z(clk_in_c_enable_134)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;
    defparam i1_3_lut_rep_612_4_lut.init = 16'hf0d0;
    LUT4 i33146_3_lut_4_lut_4_lut (.A(n38238), .B(n7_adj_1532), .C(n38237), 
         .D(n8), .Z(n36293)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i33146_3_lut_4_lut_4_lut.init = 16'h5c0c;
    FD1P3IX y_cnt__i2 (.D(n2021[2]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i2.GSR = "DISABLED";
    LUT4 i33140_3_lut_4_lut_4_lut (.A(n38238), .B(n7_adj_1533), .C(n38237), 
         .D(n8_adj_1372), .Z(n36317)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i33140_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 decade_2__bdd_3_lut_33909 (.A(n38240), .B(n3006[7]), .C(n3019[7]), 
         .Z(n37271)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33909.init = 16'he4e4;
    LUT4 n10218_bdd_3_lut (.A(n38240), .B(n2980[7]), .C(n2993[4]), .Z(n37274)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n10218_bdd_3_lut.init = 16'he4e4;
    LUT4 i33012_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1462), 
         .D(n36325), .Z(n36318)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i33012_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_641 (.A(cnt_init[8]), .B(n35538), .Z(n38388)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_641.init = 16'heeee;
    LUT4 i32437_3_lut_4_lut (.A(cnt_scan[0]), .B(n38478), .C(n38361), 
         .D(n38364), .Z(n35727)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i32437_3_lut_4_lut.init = 16'heefe;
    LUT4 i32516_3_lut_rep_613_4_lut (.A(cnt_init[8]), .B(n35538), .C(n38419), 
         .D(n38420), .Z(n38360)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i32516_3_lut_rep_613_4_lut.init = 16'hfffe;
    LUT4 i2_3_lut_rep_614_4_lut (.A(n38479), .B(n22690), .C(cnt[6]), .D(n22473), 
         .Z(n38361)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(231[16:18])
    defparam i2_3_lut_rep_614_4_lut.init = 16'hfffe;
    LUT4 i35693_i9_4_lut (.A(n3226[63]), .B(data_r[75]), .C(x_cnt[0]), 
         .D(n38277), .Z(n9)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i35693_i9_4_lut.init = 16'hca0a;
    LUT4 i32986_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1459), 
         .D(n36034), .Z(n36292)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32986_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_rep_573_3_lut_4_lut (.A(n38474), .B(n35538), .C(cnt_init[0]), 
         .D(n35069), .Z(n38320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_573_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32985_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1432), 
         .D(n7_adj_1503), .Z(n36291)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32985_4_lut_4_lut.init = 16'h7340;
    LUT4 i5280_1_lut (.A(cnt_write[0]), .Z(DA_LCD_N_1257[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(586[20:29])
    defparam i5280_1_lut.init = 16'h5555;
    LUT4 Mux_282_i8_3_lut (.A(n3006[4]), .B(n3045[5]), .C(n38098), .Z(n8_adj_1458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_282_i8_3_lut.init = 16'hcaca;
    LUT4 i33515_3_lut_4_lut (.A(n38474), .B(n35538), .C(n38413), .D(n36518), 
         .Z(clk_in_c_enable_87)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33515_3_lut_4_lut.init = 16'h0100;
    LUT4 i32984_4_lut_4_lut (.A(n38238), .B(n38237), .C(n3006[4]), .D(n7_adj_1502), 
         .Z(n36290)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32984_4_lut_4_lut.init = 16'h7340;
    LUT4 i32949_3_lut (.A(n37263), .B(n14_adj_1530), .C(\decade[3] ), 
         .Z(n36255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32949_3_lut.init = 16'hcaca;
    LUT4 i32980_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1439), 
         .D(n7_adj_1501), .Z(n36286)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32980_4_lut_4_lut.init = 16'h7340;
    LUT4 i32979_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1443), 
         .D(n7_adj_1500), .Z(n36285)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32979_4_lut_4_lut.init = 16'h7340;
    LUT4 i32978_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1445), 
         .D(n7_adj_1499), .Z(n36284)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32978_4_lut_4_lut.init = 16'h7340;
    LUT4 i3_4_lut_adj_259 (.A(n38415), .B(n38088), .C(n38097), .D(n38081), 
         .Z(n2380_adj_1417)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_259.init = 16'h0002;
    PFUMX mux_492_Mux_5_i2 (.BLUT(n35531), .ALUT(n1_adj_1424), .C0(state[0]), 
          .Z(n2_adj_1386)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i1_2_lut_rep_590_3_lut_4_lut (.A(n38474), .B(n35538), .C(cnt_init[0]), 
         .D(n35069), .Z(n38337)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_590_3_lut_4_lut.init = 16'hffef;
    LUT4 i19079_2_lut (.A(data_r[89]), .B(n22675), .Z(n22453)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19079_2_lut.init = 16'h8888;
    PFUMX mux_492_Mux_7_i2 (.BLUT(n34561), .ALUT(n1_adj_1422), .C0(state[0]), 
          .Z(n2_adj_1384)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i19264_4_lut (.A(n38321), .B(n7_adj_1427), .C(n38373), .D(\ctrlword_595_3[13] ), 
         .Z(n22675)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19264_4_lut.init = 16'hf5dd;
    FD1P3AX cnt_i0_i2 (.D(n35237), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_644 (.A(cnt[6]), .B(n22690), .Z(n38391)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_644.init = 16'heeee;
    LUT4 i1_2_lut_rep_589_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n38399), 
         .D(cnt[0]), .Z(n38336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_589_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32977_4_lut_4_lut (.A(n38238), .B(n38237), .C(n8_adj_1456), 
         .D(n7_adj_1498), .Z(n36283)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i32977_4_lut_4_lut.init = 16'h7340;
    LUT4 i35672_i29_4_lut (.A(n36296), .B(n36267), .C(\x_cnt[2] ), .D(n38277), 
         .Z(n29)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i35672_i29_4_lut.init = 16'hcac0;
    LUT4 i32767_3_lut (.A(data_r[116]), .B(data_r[117]), .C(x_cnt[0]), 
         .Z(n36073)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32767_3_lut.init = 16'hcaca;
    LUT4 realv_3_2__bdd_3_lut_33668 (.A(n38098), .B(n2980[2]), .C(n2993[2]), 
         .Z(n36934)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_33668.init = 16'he4e4;
    LUT4 i1_4_lut_adj_260 (.A(state[0]), .B(clk_in_c_enable_49), .C(n38387), 
         .D(n4_adj_1534), .Z(clk_in_c_enable_29)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_260.init = 16'hc0c8;
    PFUMX mux_492_Mux_1_i2 (.BLUT(n35521), .ALUT(n1_adj_1451), .C0(state[0]), 
          .Z(n2_adj_1392)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i32936_4_lut (.A(n22), .B(n38277), .C(\x_cnt[3] ), .D(n35741), 
         .Z(n36242)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i32936_4_lut.init = 16'hca0a;
    LUT4 i32935_4_lut (.A(n36264), .B(n36249), .C(\x_cnt[3] ), .D(n38277), 
         .Z(n36241)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i32935_4_lut.init = 16'hcac0;
    PFUMX mux_492_Mux_2_i2 (.BLUT(n35532), .ALUT(n1_adj_1447), .C0(state[0]), 
          .Z(n2_adj_1390)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i1_3_lut_adj_261 (.A(cnt_scan[0]), .B(cnt_scan[2]), .C(cnt_scan[1]), 
         .Z(n4_adj_1534)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_261.init = 16'hefef;
    LUT4 Mux_260_i1_3_lut (.A(n2885), .B(n2897), .C(n38085), .Z(n1_adj_1522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_260_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_561_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n35719), 
         .D(cnt[0]), .Z(n38308)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_561_3_lut_4_lut.init = 16'hffef;
    LUT4 i19080_2_lut (.A(data_r[76]), .B(n22675), .Z(n22455)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19080_2_lut.init = 16'h8888;
    PFUMX mux_492_Mux_4_i2 (.BLUT(n35522), .ALUT(n35294), .C0(state[0]), 
          .Z(n2_adj_1387)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i19081_2_lut (.A(data_r[75]), .B(n22675), .Z(n22457)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19081_2_lut.init = 16'h8888;
    LUT4 i19082_2_lut (.A(data_r[62]), .B(n22675), .Z(n22459)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19082_2_lut.init = 16'h8888;
    LUT4 i19083_2_lut (.A(data_r[61]), .B(n22675), .Z(n22461)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19083_2_lut.init = 16'h8888;
    LUT4 i35819_i2_4_lut (.A(n36243), .B(n38277), .C(x_cnt_c[5]), .D(n22354), 
         .Z(n2_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i35819_i2_4_lut.init = 16'hca0a;
    LUT4 i18511_2_lut (.A(n36246), .B(x_cnt_c[5]), .Z(n1_adj_1381)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18511_2_lut.init = 16'h8888;
    LUT4 i19086_2_lut (.A(data_r[48]), .B(n22675), .Z(n22465)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam i19086_2_lut.init = 16'h8888;
    LUT4 i32446_2_lut_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n35719), 
         .D(cnt[0]), .Z(n35737)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i32446_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_262 (.A(n1696[0]), .B(n35605), .Z(n35239)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_262.init = 16'h2222;
    LUT4 i1_2_lut_rep_564_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n14913), 
         .D(cnt[0]), .Z(n38311)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_564_3_lut_4_lut.init = 16'hfffe;
    PFUMX mux_492_Mux_6_i2 (.BLUT(n35183), .ALUT(n35293), .C0(state[0]), 
          .Z(n2_adj_1385)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i1_2_lut_rep_578_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n17_c), 
         .D(cnt[0]), .Z(n38325)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_578_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_602_3_lut (.A(cnt[6]), .B(n22690), .C(cnt[0]), .Z(n38349)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_602_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_563_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n38440), 
         .D(cnt[0]), .Z(n38310)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_563_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32322_2_lut_rep_572_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(cnt[3]), 
         .D(cnt[0]), .Z(n38319)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i32322_2_lut_rep_572_3_lut_4_lut.init = 16'hfffe;
    FD1P3IX y_cnt__i3 (.D(n2021[3]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i3.GSR = "DISABLED";
    PFUMX i8 (.BLUT(n1_adj_1535), .ALUT(n29_adj_1536), .C0(state[2]), 
          .Z(n21223));
    LUT4 i1_2_lut_rep_603_3_lut (.A(cnt[6]), .B(n22690), .C(cnt[0]), .Z(n38350)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_603_3_lut.init = 16'hefef;
    PFUMX mux_492_Mux_0_i2 (.BLUT(n35537), .ALUT(n1_adj_1440), .C0(state[0]), 
          .Z(n2_adj_1537)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i1_2_lut_rep_571_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(cnt[3]), 
         .D(cnt[0]), .Z(n38318)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_571_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_566_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(n14913), 
         .D(cnt[0]), .Z(n38313)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_566_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_570_3_lut_4_lut (.A(cnt[6]), .B(n22690), .C(cnt[3]), 
         .D(cnt[0]), .Z(n38317)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i1_2_lut_rep_570_3_lut_4_lut.init = 16'hefff;
    LUT4 i2_3_lut_rep_617_4_lut (.A(cnt[6]), .B(n22690), .C(n22473), .D(n38479), 
         .Z(n38364)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(182[16:18])
    defparam i2_3_lut_rep_617_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_263 (.A(cnt_init[0]), .B(num_delay[15]), .C(n37_adj_1538), 
         .D(n40), .Z(n7685)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_263.init = 16'hdc50;
    LUT4 i1_4_lut_adj_264 (.A(n1586[15]), .B(num_delay[15]), .C(n38341), 
         .D(n38475), .Z(n37_adj_1538)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_264.init = 16'heca0;
    LUT4 realv_4_2__bdd_4_lut_4_lut (.A(n38114), .B(y_cnt[3]), .C(n35240), 
         .D(n18_adj_1391), .Z(n37991)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam realv_4_2__bdd_4_lut_4_lut.init = 16'h7350;
    LUT4 i17353_3_lut (.A(cnt_write[2]), .B(cnt_write[0]), .C(cnt_write[1]), 
         .Z(DA_LCD_N_1257[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(80[10:19])
    defparam i17353_3_lut.init = 16'h6a6a;
    LUT4 i1_4_lut_adj_265 (.A(cnt_init[0]), .B(num_delay[14]), .C(n37_adj_1539), 
         .D(n40), .Z(n7683)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_265.init = 16'hdc50;
    LUT4 i1_4_lut_adj_266 (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), .D(y_cnt[2]), 
         .Z(n2993[3])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(481[41:46])
    defparam i1_4_lut_adj_266.init = 16'h0a88;
    LUT4 i1_4_lut_adj_267 (.A(n1586[14]), .B(num_delay[14]), .C(n38341), 
         .D(n38475), .Z(n37_adj_1539)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_267.init = 16'heca0;
    LUT4 i33589_2_lut_rep_481_2_lut_3_lut_4_lut (.A(n38245), .B(n38249), 
         .C(n38253), .D(decade_0__N_605), .Z(n38228)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i33589_2_lut_rep_481_2_lut_3_lut_4_lut.init = 16'h1001;
    LUT4 realv_4_3__bdd_3_lut_33740_4_lut_4_lut_4_lut (.A(n38114), .B(realv_3_0__N_535), 
         .C(n38111), .D(n38125), .Z(n37035)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam realv_4_3__bdd_3_lut_33740_4_lut_4_lut_4_lut.init = 16'h7dff;
    PFUMX Mux_349_i127 (.BLUT(n109), .ALUT(n126), .C0(n35919), .Z(n127)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 Mux_304_i1_3_lut (.A(n2885), .B(n2897), .C(n38114), .Z(n1_adj_1471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam Mux_304_i1_3_lut.init = 16'hcaca;
    FD1P3IX y_cnt__i4 (.D(n2021[4]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i4.GSR = "DISABLED";
    FD1P3IX y_cnt__i5 (.D(n2021[5]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i5.GSR = "DISABLED";
    FD1P3IX y_cnt__i6 (.D(n2021[6]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i6.GSR = "DISABLED";
    FD1P3IX y_cnt__i7 (.D(n2021[7]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(y_cnt[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i7.GSR = "DISABLED";
    LUT4 Mux_411_i8_3_lut (.A(n2975), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n8_adj_1456)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_411_i8_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut_adj_268 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n1_c)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i2_3_lut_adj_268.init = 16'h0202;
    LUT4 i1_4_lut_adj_269 (.A(n38304), .B(num_delay[11]), .C(n38_adj_1540), 
         .D(n40), .Z(n35195)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_269.init = 16'hfefa;
    LUT4 i1_3_lut_adj_270 (.A(cnt_init[0]), .B(num_delay[11]), .C(n35630), 
         .Z(n38_adj_1540)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_270.init = 16'h4040;
    LUT4 i1_2_lut_rep_648 (.A(x_cnt[0]), .B(n14544), .Z(n38395)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_rep_648.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_271 (.A(x_cnt[0]), .B(n14544), .C(high_word), 
         .Z(n32933)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_3_lut_adj_271.init = 16'h1e1e;
    LUT4 i2_3_lut_4_lut_adj_272 (.A(x_cnt[0]), .B(n14544), .C(cnt_scan[0]), 
         .D(n38424), .Z(n35093)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i2_3_lut_4_lut_adj_272.init = 16'h1000;
    LUT4 i55_3_lut_4_lut (.A(x_cnt[0]), .B(n14544), .C(cnt_scan[0]), .D(n38364), 
         .Z(n25)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i55_3_lut_4_lut.init = 16'h1f10;
    LUT4 i33446_2_lut (.A(rst_n_in_c), .B(n37627), .Z(clk_in_c_enable_139)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i33446_2_lut.init = 16'h7777;
    LUT4 Mux_409_i8_3_lut (.A(n3006[4]), .B(n3045[5]), .C(\realv_5[0] ), 
         .Z(n8_adj_1443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_409_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i8_3_lut (.A(n3006[4]), .B(n3045[6]), .C(\realv_5[0] ), 
         .Z(n8_adj_1439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_408_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_273 (.A(x_cnt[0]), .B(n14544), .C(cnt_scan[0]), 
         .Z(n22360)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_3_lut_adj_273.init = 16'he0e0;
    LUT4 Mux_413_i7_3_lut_4_lut (.A(n38245), .B(n38352), .C(n38249), .D(n6_adj_87), 
         .Z(n7_adj_1533)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_413_i7_3_lut_4_lut.init = 16'hf404;
    PFUMX Mux_349_i108 (.BLUT(n35304), .ALUT(n13853), .C0(n21547), .Z(n108)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 Mux_404_i7_3_lut_4_lut (.A(n38245), .B(n38352), .C(n38249), .D(n6_adj_88), 
         .Z(n7_adj_1532)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_404_i7_3_lut_4_lut.init = 16'hf404;
    LUT4 i3_1_lut_2_lut (.A(x_cnt[0]), .B(n14544), .Z(high_word_N_1289)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i3_1_lut_2_lut.init = 16'h1111;
    LUT4 n3_bdd_4_lut_4_lut (.A(n38114), .B(n38378), .C(n38104), .D(n36995), 
         .Z(n38062)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam n3_bdd_4_lut_4_lut.init = 16'hf404;
    LUT4 realv_4_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n38114), .B(n10395), .C(n38094), 
         .D(n38095), .Z(\ctrlword_595_5_15__N_654[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam realv_4_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i18452_2_lut_3_lut (.A(x_cnt[0]), .B(n14544), .C(high_word), 
         .Z(n4826[0])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i18452_2_lut_3_lut.init = 16'h0e0e;
    LUT4 realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(n38114), .B(n38105), 
         .C(n38104), .Z(n7_adj_89)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i1_2_lut_3_lut_adj_274 (.A(x_cnt[0]), .B(n14544), .C(cnt_scan[1]), 
         .Z(n19_adj_1544)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_3_lut_adj_274.init = 16'hfefe;
    LUT4 i22_4_lut (.A(n38475), .B(n35727), .C(state[0]), .D(n35699), 
         .Z(n35865)) /* synthesis lut_function=(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i22_4_lut.init = 16'hcfca;
    L6MUX21 i32831 (.D0(n36135), .D1(n36136), .SD(\x_cnt[2] ), .Z(n36137));
    LUT4 i1_2_lut_adj_275 (.A(rst_n_in_c), .B(n17_adj_1529), .Z(n27[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_2_lut_adj_275.init = 16'h8888;
    LUT4 i19020_4_lut (.A(n37679), .B(rst_n_in_c), .C(n32680), .D(state[2]), 
         .Z(n27[1])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i19020_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_601_3_lut_4_lut (.A(cnt[3]), .B(n38479), .C(cnt[6]), 
         .D(n22690), .Z(n38348)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(227[16:17])
    defparam i1_2_lut_rep_601_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_600_3_lut_4_lut (.A(cnt[3]), .B(n38479), .C(cnt[0]), 
         .D(n22690), .Z(n38347)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(227[16:17])
    defparam i1_2_lut_rep_600_3_lut_4_lut.init = 16'hffef;
    LUT4 i33443_2_lut (.A(rst_n_in_c), .B(n31_adj_1524), .Z(clk_in_c_enable_140)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i33443_2_lut.init = 16'h7777;
    LUT4 n4_bdd_4_lut (.A(n38401), .B(n22604), .C(x_cnt[0]), .D(n38403), 
         .Z(n37341)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam n4_bdd_4_lut.init = 16'h3035;
    LUT4 i36_2_lut (.A(cnt_write[0]), .B(cnt_write[1]), .Z(DA_LCD_N_1257[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(80[10:19])
    defparam i36_2_lut.init = 16'h6666;
    LUT4 i33477_2_lut (.A(n36481), .B(clk_in_c_enable_49), .Z(clk_in_c_enable_32)) /* synthesis lut_function=(A (B)) */ ;
    defparam i33477_2_lut.init = 16'h8888;
    LUT4 i33476_4_lut (.A(n14_adj_1547), .B(cnt_scan[2]), .C(n4_adj_90), 
         .D(state[0]), .Z(n36481)) /* synthesis lut_function=(!(A+(B (C)+!B !((D)+!C)))) */ ;
    defparam i33476_4_lut.init = 16'h1505;
    FD1P3IX x_cnt__i0 (.D(n3422[0]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i0.GSR = "DISABLED";
    FD1P3IX cnt_delay__i0 (.D(n3996[0]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i0.GSR = "DISABLED";
    FD1P3IX cnt_init__i0 (.D(n1917[0]), .SP(clk_in_c_enable_111), .CD(n18024), 
            .CK(clk_in_c), .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_init__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n38447), .B(n38321), .C(x_cnt[1]), 
         .D(n38405), .Z(n35335)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(551[18:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_adj_276 (.A(n38447), .B(n38321), 
         .C(n38415), .D(n38405), .Z(n35314)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(551[18:20])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_adj_276.init = 16'h7030;
    LUT4 i33628_2_lut_rep_530_2_lut_3_lut_3_lut (.A(n38447), .B(n38321), 
         .C(n38405), .Z(n38277)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(551[18:20])
    defparam i33628_2_lut_rep_530_2_lut_3_lut_3_lut.init = 16'h7373;
    LUT4 n4_bdd_4_lut_33950 (.A(n22604), .B(x_cnt[0]), .C(n38403), .D(n39805), 
         .Z(n37340)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))))) */ ;
    defparam n4_bdd_4_lut_33950.init = 16'h111f;
    LUT4 i1_4_lut_adj_277 (.A(n38424), .B(n35774), .C(n19_adj_1544), .D(cnt_scan[0]), 
         .Z(n14_adj_1547)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_277.init = 16'ha022;
    LUT4 i2_3_lut_rep_655 (.A(n39820), .B(y_cnt[3]), .C(n38447), .Z(n38402)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(545[18:19])
    defparam i2_3_lut_rep_655.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_627_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(n38447), 
         .D(n38499), .Z(n38374)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(545[18:19])
    defparam i1_2_lut_rep_627_4_lut.init = 16'hfffd;
    L6MUX21 i32900 (.D0(n36203), .D1(n36204), .SD(\x_cnt[3] ), .Z(n36206));
    PFUMX i32829 (.BLUT(n10820), .ALUT(n10818), .C0(x_cnt[1]), .Z(n36135));
    LUT4 i2_2_lut_3_lut_4_lut_adj_278 (.A(n38447), .B(y_cnt[2]), .C(n38498), 
         .D(y_cnt[3]), .Z(n22577)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i2_2_lut_3_lut_4_lut_adj_278.init = 16'hffef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_279 (.A(cnt_scan[0]), .B(n38478), .C(n38364), 
         .D(n38361), .Z(n35534)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_279.init = 16'hfffe;
    LUT4 i1_4_lut_adj_280 (.A(rst_n_in_c), .B(n47), .C(n38497), .D(state[2]), 
         .Z(n27[2])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i1_4_lut_adj_280.init = 16'h0a88;
    L6MUX21 i32828 (.D0(n36132), .D1(n36133), .SD(\x_cnt[2] ), .Z(n36134));
    L6MUX21 i32897 (.D0(n36197), .D1(n36198), .SD(\x_cnt[2] ), .Z(n36203));
    LUT4 i1_4_lut_adj_281 (.A(cnt_init[0]), .B(n14657), .C(num_delay[4]), 
         .D(n38475), .Z(n38_adj_1513)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_281.init = 16'h5444;
    PFUMX i32827 (.BLUT(n15354), .ALUT(n10800), .C0(x_cnt[1]), .Z(n36133));
    LUT4 i32766_3_lut (.A(data_r[114]), .B(data_r[115]), .C(x_cnt[0]), 
         .Z(n36072)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32766_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_656 (.A(n38447), .B(y_cnt[2]), .Z(n38403)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_656.init = 16'heeee;
    LUT4 i1_4_lut_adj_282 (.A(n38303), .B(n38341), .C(num_delay[4]), .D(n38285), 
         .Z(n14657)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_282.init = 16'hc044;
    LUT4 i1_2_lut_rep_672 (.A(cnt_init[1]), .B(n35438), .Z(n38419)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_672.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_283 (.A(cnt_init[12]), .B(n38474), .C(n35438), 
         .D(cnt_init[1]), .Z(n4_adj_1508)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_283.init = 16'hfffe;
    LUT4 i32765_3_lut (.A(data_r[112]), .B(data_r[113]), .C(x_cnt[0]), 
         .Z(n36071)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32765_3_lut.init = 16'hcaca;
    PFUMX i32830 (.BLUT(n10816), .ALUT(n35322), .C0(x_cnt[1]), .Z(n36136));
    LUT4 i32843_3_lut (.A(n2980[8]), .B(n2993[9]), .C(n38114), .Z(n36149)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32843_3_lut.init = 16'hcaca;
    LUT4 i33638_4_lut (.A(n17), .B(clk_in_c_enable_49), .C(state[0]), 
         .D(state[1]), .Z(clk_in_c_enable_147)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam i33638_4_lut.init = 16'h4ccc;
    FD1P3IX cnt_write__i0 (.D(DA_LCD_N_1257[0]), .SP(clk_in_c_enable_112), 
            .CD(n18019), .CK(clk_in_c), .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_write__i0.GSR = "DISABLED";
    LUT4 i14659_3_lut_4_lut (.A(state[2]), .B(n39804), .C(state[0]), .D(clk_in_c_enable_144), 
         .Z(n18057)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i14659_3_lut_4_lut.init = 16'hfb00;
    LUT4 i14570_3_lut_4_lut (.A(state[2]), .B(n39804), .C(n2014), .D(clk_in_c_enable_156), 
         .Z(n17967)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i14570_3_lut_4_lut.init = 16'hfb00;
    L6MUX21 i32891 (.D0(n36228), .D1(n36159), .SD(x_cnt[1]), .Z(n36197));
    L6MUX21 i32898 (.D0(n36199), .D1(n36200), .SD(\x_cnt[2] ), .Z(n36204));
    L6MUX21 i32899 (.D0(n36201), .D1(n36202), .SD(\x_cnt[3] ), .Z(n36205));
    LUT4 Mux_412_i2_3_lut (.A(n2913), .B(n2967[3]), .C(\realv_5[0] ), 
         .Z(n2_adj_91)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_412_i2_3_lut.init = 16'hcaca;
    PFUMX i32853 (.BLUT(n36157), .ALUT(n36158), .C0(x_cnt[0]), .Z(n36159));
    LUT4 Mux_412_i4_3_lut (.A(n2980[2]), .B(n2993[2]), .C(\realv_5[0] ), 
         .Z(n4_adj_92)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_412_i4_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), .D(cnt[4]), 
         .Z(n35208)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hdb00;
    LUT4 i7052_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(n38085), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38525)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7052_3_lut_4_lut_then_4_lut.init = 16'h000e;
    LUT4 Mux_328_i1_3_lut (.A(n2886), .B(n38405), .C(\realv_5[0] ), .Z(n1_adj_93)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam Mux_328_i1_3_lut.init = 16'hcaca;
    LUT4 Mux_411_i2_3_lut (.A(n2903[3]), .B(n2967[3]), .C(\realv_5[0] ), 
         .Z(n2_adj_94)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_411_i2_3_lut.init = 16'hcaca;
    LUT4 i21_3_lut (.A(n2897), .B(n2993[3]), .C(\realv_5[0] ), .Z(n4_adj_95)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i21_3_lut.init = 16'hcaca;
    LUT4 Mux_411_i5_3_lut (.A(n3006[3]), .B(n3019[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_96)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_411_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i1_3_lut (.A(n2885), .B(n2897), .C(\realv_5[0] ), .Z(n1_adj_97)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_410_i1_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i2_3_lut (.A(n2903[4]), .B(n2975), .C(\realv_5[0] ), 
         .Z(n2_adj_98)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_410_i2_3_lut.init = 16'hcaca;
    FD1P3IX y_cnt__i1_rep_772 (.D(n2021[1]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(n39822)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i1_rep_772.GSR = "DISABLED";
    PFUMX i32893 (.BLUT(n10828), .ALUT(n35321), .C0(x_cnt[1]), .Z(n36199));
    LUT4 Mux_410_i4_3_lut (.A(n2897), .B(n2993[4]), .C(\realv_5[0] ), 
         .Z(n4_adj_99)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_410_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i5_3_lut (.A(n3006[4]), .B(n3019[4]), .C(\realv_5[0] ), 
         .Z(n5_adj_100)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_410_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_409_i2_3_lut (.A(n2903[5]), .B(n2975), .C(\realv_5[0] ), 
         .Z(n2_adj_101)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_409_i2_3_lut.init = 16'hcaca;
    LUT4 i7052_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(n38085), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38524)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7052_3_lut_4_lut_else_4_lut.init = 16'h4100;
    LUT4 Mux_409_i4_3_lut (.A(n2980[5]), .B(n2993[4]), .C(\realv_5[0] ), 
         .Z(n4_adj_102)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_409_i4_3_lut.init = 16'hcaca;
    LUT4 i7044_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(n38080), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38528)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7044_3_lut_4_lut_then_4_lut.init = 16'h000e;
    FD1P3IX data_r_i0_i89 (.D(n22453), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[89])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i89.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_625_3_lut_4_lut (.A(cnt[5]), .B(cnt[4]), .C(n22690), 
         .D(cnt[3]), .Z(n38372)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_625_3_lut_4_lut.init = 16'hfffe;
    LUT4 i32819_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n38114), .Z(n36125)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32819_3_lut.init = 16'hcaca;
    LUT4 i32818_3_lut (.A(n2897), .B(n2993[3]), .C(n38114), .Z(n36124)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32818_3_lut.init = 16'hcaca;
    LUT4 i32817_3_lut (.A(n2903[3]), .B(n2967[3]), .C(n38114), .Z(n36123)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32817_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_284 (.A(cnt[5]), .B(cnt[4]), .C(cnt[2]), 
         .D(cnt[1]), .Z(n35446)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_284.init = 16'hfffe;
    LUT4 Mux_408_i2_3_lut (.A(n2903[6]), .B(n2972), .C(\realv_5[0] ), 
         .Z(n2_adj_103)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_408_i2_3_lut.init = 16'hcaca;
    LUT4 i32816_3_lut (.A(n2886), .B(n38405), .C(n38114), .Z(n36122)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32816_3_lut.init = 16'hcaca;
    LUT4 i7044_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(n38080), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38527)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7044_3_lut_4_lut_else_4_lut.init = 16'h4100;
    LUT4 Mux_408_i4_3_lut (.A(n2980[6]), .B(n2993[4]), .C(\realv_5[0] ), 
         .Z(n4_adj_104)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_408_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i5_3_lut (.A(n3006[6]), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_105)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_408_i5_3_lut.init = 16'hcaca;
    PFUMX i32894 (.BLUT(n10824), .ALUT(n10822), .C0(x_cnt[1]), .Z(n36200));
    LUT4 Mux_407_i2_3_lut (.A(n2903[7]), .B(n2972), .C(\realv_5[0] ), 
         .Z(n2_adj_106)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_407_i2_3_lut.init = 16'hcaca;
    LUT4 n3_bdd_4_lut_34434_4_lut (.A(n38095), .B(n38404), .C(n3032[1]), 
         .D(n38114), .Z(n38061)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam n3_bdd_4_lut_34434_4_lut.init = 16'h4450;
    L6MUX21 i33787 (.D0(n37084), .D1(n37081), .SD(n38104), .Z(n37085));
    LUT4 i18517_4_lut_4_lut (.A(n38095), .B(n38114), .C(n38375), .D(n2967[3]), 
         .Z(n14_adj_107)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i18517_4_lut_4_lut.init = 16'h5140;
    CCU2D add_3739_17 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[15]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32650), .S0(n1917[15]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_17.INIT0 = 16'hfd00;
    defparam add_3739_17.INIT1 = 16'h0000;
    defparam add_3739_17.INJECT1_0 = "NO";
    defparam add_3739_17.INJECT1_1 = "NO";
    CCU2D add_187_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32601), 
          .S0(n1696[15]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_17.INIT0 = 16'h5aaa;
    defparam add_187_17.INIT1 = 16'h0000;
    defparam add_187_17.INJECT1_0 = "NO";
    defparam add_187_17.INJECT1_1 = "NO";
    LUT4 i18468_4_lut_4_lut (.A(n38095), .B(n38114), .C(n3045[9]), .D(n2967[3]), 
         .Z(n14_adj_108)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i18468_4_lut_4_lut.init = 16'h5140;
    LUT4 Mux_407_i4_3_lut (.A(n2980[7]), .B(n2993[4]), .C(\realv_5[0] ), 
         .Z(n4_adj_109)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_407_i4_3_lut.init = 16'hcaca;
    L6MUX21 i32895 (.D0(n36193), .D1(n36194), .SD(\x_cnt[2] ), .Z(n36201));
    LUT4 Mux_407_i5_3_lut (.A(n3006[7]), .B(n3019[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_110)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_407_i5_3_lut.init = 16'hcaca;
    FD1P3AX cnt_main__i0 (.D(n35403), .SP(clk_in_c_enable_115), .CK(clk_in_c), 
            .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_main__i0.GSR = "DISABLED";
    LUT4 Mux_406_i4_3_lut (.A(n2980[8]), .B(n2993[9]), .C(\realv_5[0] ), 
         .Z(n4_adj_111)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_406_i4_3_lut.init = 16'hcaca;
    LUT4 i32429_2_lut (.A(cnt[3]), .B(cnt[4]), .Z(n35719)) /* synthesis lut_function=(A (B)) */ ;
    defparam i32429_2_lut.init = 16'h8888;
    LUT4 Mux_406_i5_3_lut (.A(n3006[8]), .B(n2903[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_112)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_406_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_405_i4_3_lut (.A(n2980[9]), .B(n2993[9]), .C(\realv_5[0] ), 
         .Z(n4_adj_113)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam Mux_405_i4_3_lut.init = 16'hcaca;
    LUT4 i18472_4_lut_4_lut (.A(n38095), .B(n38114), .C(n38376), .D(n2975), 
         .Z(n14_adj_114)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i18472_4_lut_4_lut.init = 16'h5140;
    LUT4 decade_2__bdd_3_lut_33988 (.A(n38240), .B(n2903[4]), .C(n2975), 
         .Z(n37387)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33988.init = 16'he4e4;
    LUT4 i18528_4_lut_4_lut (.A(n38095), .B(n38114), .C(n38406), .D(n3032[1]), 
         .Z(n14_adj_115)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i18528_4_lut_4_lut.init = 16'h5140;
    LUT4 i32746_4_lut_4_lut (.A(n38095), .B(n38094), .C(n38600), .D(n37085), 
         .Z(n36052)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i32746_4_lut_4_lut.init = 16'h7340;
    FD1P3IX data_r_i0_i76 (.D(n22455), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[76])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i76.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i0 (.D(n2_adj_1537), .SP(clk_in_c_enable_117), .CD(n18007), 
            .CK(clk_in_c), .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_reg_i0_i0.GSR = "DISABLED";
    FD1P3IX data_r_i0_i75 (.D(n22457), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[75])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i75.GSR = "DISABLED";
    FD1P3IX data_r_i0_i62 (.D(n22459), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[62])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i62.GSR = "DISABLED";
    PFUMX i32826 (.BLUT(n10806), .ALUT(n15356), .C0(x_cnt[1]), .Z(n36132));
    FD1P3IX data_r_i0_i61 (.D(n22461), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[61])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i61.GSR = "DISABLED";
    FD1P3IX data_r_i0_i48 (.D(n22465), .SP(clk_in_c_enable_124), .CD(n18071), 
            .CK(clk_in_c), .Q(data_r[48])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam data_r_i0_i48.GSR = "DISABLED";
    FD1P3IX x_cnt__i7 (.D(n3422[7]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i7.GSR = "DISABLED";
    FD1P3IX x_cnt__i6 (.D(n3422[6]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i6.GSR = "DISABLED";
    FD1P3IX x_cnt__i5 (.D(n3422[5]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i5.GSR = "DISABLED";
    FD1P3IX x_cnt__i4 (.D(n3422[4]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i4.GSR = "DISABLED";
    FD1P3AX cnt_i0_i0 (.D(n35239), .SP(clk_in_c_enable_131), .CK(clk_in_c), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_i0_i0.GSR = "DISABLED";
    LUT4 Mux_259_i2_3_lut (.A(n2903[6]), .B(n2972), .C(n38085), .Z(n2_adj_116)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_259_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_258_i2_3_lut (.A(n2903[7]), .B(n2972), .C(n38085), .Z(n2_adj_117)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_258_i2_3_lut.init = 16'hcaca;
    LUT4 i32745_4_lut_4_lut (.A(n38095), .B(n38094), .C(n8_adj_1406), 
         .D(n36128), .Z(n36051)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i32745_4_lut_4_lut.init = 16'h7340;
    LUT4 mux_356_Mux_3_i15_3_lut_4_lut (.A(n38492), .B(n39820), .C(y_cnt[3]), 
         .D(n38500), .Z(n2886)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_356_Mux_3_i15_3_lut_4_lut.init = 16'hf202;
    FD1P3IX x_cnt__i3 (.D(n3422[3]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(\x_cnt[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i3.GSR = "DISABLED";
    LUT4 mux_379_Mux_1_i15_3_lut_4_lut (.A(n38492), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(n38500), .Z(n3032[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_379_Mux_1_i15_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX x_cnt__i2 (.D(n3422[2]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(\x_cnt[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i2.GSR = "DISABLED";
    FD1P3IX x_cnt__i1 (.D(n3422[1]), .SP(clk_in_c_enable_134), .CD(n18063), 
            .CK(clk_in_c), .Q(x_cnt[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam x_cnt__i1.GSR = "DISABLED";
    CCU2D add_3739_15 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[13]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[14]), .CIN(n32649), .COUT(n32650), .S0(n1917[13]), 
          .S1(n1917[14]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_15.INIT0 = 16'hfd00;
    defparam add_3739_15.INIT1 = 16'hfd00;
    defparam add_3739_15.INJECT1_0 = "NO";
    defparam add_3739_15.INJECT1_1 = "NO";
    FD1P3IX num_delay_i15 (.D(n7685), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i15.GSR = "DISABLED";
    CCU2D add_187_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32600), 
          .COUT(n32601), .S0(n1696[13]), .S1(n1696[14]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_15.INIT0 = 16'h5aaa;
    defparam add_187_15.INIT1 = 16'h5aaa;
    defparam add_187_15.INJECT1_0 = "NO";
    defparam add_187_15.INJECT1_1 = "NO";
    LUT4 i18478_4_lut_4_lut (.A(n38095), .B(n38114), .C(n3045[6]), .D(n3006[4]), 
         .Z(n14_adj_118)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i18478_4_lut_4_lut.init = 16'h5140;
    CCU2D add_187_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32599), 
          .COUT(n32600), .S0(n1696[11]), .S1(n1696[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_13.INIT0 = 16'h5aaa;
    defparam add_187_13.INIT1 = 16'h5aaa;
    defparam add_187_13.INJECT1_0 = "NO";
    defparam add_187_13.INJECT1_1 = "NO";
    LUT4 i32739_4_lut_4_lut (.A(n38095), .B(n38094), .C(n3006[4]), .D(n36990), 
         .Z(n36045)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i32739_4_lut_4_lut.init = 16'h7340;
    LUT4 i7599_2_lut_rep_733 (.A(n39820), .B(y_cnt[3]), .Z(n38480)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam i7599_2_lut_rep_733.init = 16'heeee;
    LUT4 mux_356_Mux_4_i15_3_lut_4_lut (.A(n39824), .B(n38458), .C(y_cnt[3]), 
         .D(n38436), .Z(n2885)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(449[41:46])
    defparam mux_356_Mux_4_i15_3_lut_4_lut.init = 16'hf202;
    CCU2D add_187_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32598), 
          .COUT(n32599), .S0(n1696[9]), .S1(n1696[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_11.INIT0 = 16'h5aaa;
    defparam add_187_11.INIT1 = 16'h5aaa;
    defparam add_187_11.INJECT1_0 = "NO";
    defparam add_187_11.INJECT1_1 = "NO";
    LUT4 i2_3_lut_4_lut_adj_285 (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[4]), .Z(n32886)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(487[41:46])
    defparam i2_3_lut_4_lut_adj_285.init = 16'hfffe;
    LUT4 decade_2__bdd_3_lut_33985 (.A(n38240), .B(n3006[4]), .C(n3019[4]), 
         .Z(n37386)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_33985.init = 16'he4e4;
    LUT4 n38708_bdd_2_lut (.A(n38708), .B(n22690), .Z(n38709)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n38708_bdd_2_lut.init = 16'h2222;
    LUT4 n22690_bdd_4_lut_34975 (.A(cnt[6]), .B(cnt[1]), .C(cnt[2]), .D(cnt[0]), 
         .Z(n38708)) /* synthesis lut_function=(!(A+!(B (D)+!B !((D)+!C)))) */ ;
    defparam n22690_bdd_4_lut_34975.init = 16'h4410;
    LUT4 i32742_4_lut_4_lut (.A(n38095), .B(n38094), .C(n8_adj_1579), 
         .D(n37995), .Z(n36048)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam i32742_4_lut_4_lut.init = 16'h7340;
    PFUMX i33785 (.BLUT(n37083), .ALUT(n37082), .C0(n38105), .Z(n37084));
    LUT4 mux_375_Mux_9_i15_3_lut_4_lut (.A(n38498), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(n38434), .Z(n2980[9])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_375_Mux_9_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 mux_357_Mux_5_i15_3_lut_4_lut (.A(n38498), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(n38434), .Z(n2897)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam mux_357_Mux_5_i15_3_lut_4_lut.init = 16'h7f70;
    LUT4 Mux_304_i8_3_lut (.A(n3006[4]), .B(n3045[5]), .C(n38114), .Z(n8_adj_1579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam Mux_304_i8_3_lut.init = 16'hcaca;
    LUT4 i7096_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(n38240), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38531)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7096_3_lut_4_lut_then_4_lut.init = 16'h000e;
    PFUMX i33781 (.BLUT(n37080), .ALUT(n37079), .C0(n38105), .Z(n37081));
    L6MUX21 i32888 (.D0(n36050), .D1(n36047), .SD(x_cnt[1]), .Z(n36194));
    L6MUX21 i32892 (.D0(n36156), .D1(n36146), .SD(x_cnt[1]), .Z(n36198));
    LUT4 Mux_282_i2_3_lut (.A(n2903[5]), .B(n2975), .C(n38098), .Z(n2_adj_119)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_282_i2_3_lut.init = 16'hcaca;
    L6MUX21 i32896 (.D0(n36195), .D1(n36196), .SD(\x_cnt[2] ), .Z(n36202));
    FD1P3IX num_delay_i14 (.D(n7683), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i14.GSR = "DISABLED";
    LUT4 i7096_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(n38240), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38530)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7096_3_lut_4_lut_else_4_lut.init = 16'h4100;
    FD1P3IX num_delay_i11 (.D(n35195), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i11.GSR = "DISABLED";
    FD1P3AX state__i0 (.D(n27[0]), .SP(clk_in_c_enable_139), .CK(clk_in_c), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam state__i0.GSR = "DISABLED";
    FD1P3AX state__i1 (.D(n27[1]), .SP(clk_in_c_enable_139), .CK(clk_in_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam state__i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_286 (.A(n38499), .B(n38403), .C(n38402), .D(n38452), 
         .Z(n22604)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;
    defparam i1_4_lut_adj_286.init = 16'hf5c4;
    FD1P3AX state__i2 (.D(n27[2]), .SP(clk_in_c_enable_140), .CK(clk_in_c), 
            .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam state__i2.GSR = "DISABLED";
    FD1P3IX num_delay_i9 (.D(n35171), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i9.GSR = "DISABLED";
    FD1P3IX num_delay_i8 (.D(n35193), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i8.GSR = "DISABLED";
    FD1P3IX num_delay_i7 (.D(n35191), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i7.GSR = "DISABLED";
    LUT4 Mux_284_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n38098), .Z(n8_adj_1419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_284_i8_3_lut.init = 16'hcaca;
    FD1P3IX num_delay_i6 (.D(n7667), .SP(clk_in_c_enable_144), .CD(n18057), 
            .CK(clk_in_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i6.GSR = "DISABLED";
    FD1P3JX num_delay_i5 (.D(num_delay_15__N_1074[5]), .SP(clk_in_c_enable_146), 
            .PD(n35529), .CK(clk_in_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i5.GSR = "DISABLED";
    FD1P3JX num_delay_i4 (.D(num_delay_15__N_1074[4]), .SP(clk_in_c_enable_146), 
            .PD(n35529), .CK(clk_in_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i4.GSR = "DISABLED";
    LUT4 mux_358_Mux_3_i15_3_lut_4_lut (.A(y_cnt[0]), .B(n38458), .C(y_cnt[3]), 
         .D(n38436), .Z(n2903[3])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(452[41:46])
    defparam mux_358_Mux_3_i15_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i7105_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(\realv_5[0] ), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38534)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7105_3_lut_4_lut_then_4_lut.init = 16'h000e;
    FD1P3AX num_delay_i3 (.D(\num_delay_15__N_811[3] ), .SP(clk_in_c_enable_147), 
            .CK(clk_in_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam num_delay_i3.GSR = "DISABLED";
    FD1P3IX cnt_delay__i15 (.D(n3996[15]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i15.GSR = "DISABLED";
    FD1P3IX cnt_delay__i14 (.D(n3996[14]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i14.GSR = "DISABLED";
    FD1P3IX cnt_delay__i13 (.D(n3996[13]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i13.GSR = "DISABLED";
    FD1P3IX cnt_delay__i12 (.D(n3996[12]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i12.GSR = "DISABLED";
    LUT4 mux_380_Mux_6_i15_3_lut_4_lut (.A(n39824), .B(n38501), .C(y_cnt[3]), 
         .D(n38500), .Z(n3045[6])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_380_Mux_6_i15_3_lut_4_lut.init = 16'hf202;
    FD1P3IX cnt_delay__i11 (.D(n3996[11]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i11.GSR = "DISABLED";
    CCU2D add_3739_13 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[11]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[12]), .CIN(n32648), .COUT(n32649), .S0(n1917[11]), 
          .S1(n1917[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_13.INIT0 = 16'hfd00;
    defparam add_3739_13.INIT1 = 16'hfd00;
    defparam add_3739_13.INJECT1_0 = "NO";
    defparam add_3739_13.INJECT1_1 = "NO";
    LUT4 Mux_261_i2_3_lut (.A(n2903[4]), .B(n2975), .C(n38085), .Z(n2_adj_1484)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(265[10] 300[19])
    defparam Mux_261_i2_3_lut.init = 16'hcaca;
    LUT4 i7105_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(\realv_5[0] ), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38533)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7105_3_lut_4_lut_else_4_lut.init = 16'h4100;
    CCU2D add_3739_11 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[9]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[10]), .CIN(n32647), .COUT(n32648), .S0(n1917[9]), 
          .S1(n1917[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_11.INIT0 = 16'hfd00;
    defparam add_3739_11.INIT1 = 16'hfd00;
    defparam add_3739_11.INJECT1_0 = "NO";
    defparam add_3739_11.INJECT1_1 = "NO";
    LUT4 mux_3201_i5_3_lut_rep_324_4_lut_4_lut (.A(high_word), .B(n4_adj_1397), 
         .C(\ctrlword_595_3[13] ), .D(n2834), .Z(n38071)) /* synthesis lut_function=(A (B+!(C))+!A !(C+(D))) */ ;
    defparam mux_3201_i5_3_lut_rep_324_4_lut_4_lut.init = 16'h8a8f;
    FD1P3IX cnt_delay__i10 (.D(n3996[10]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i10.GSR = "DISABLED";
    FD1P3IX cnt_delay__i9 (.D(n3996[9]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i9.GSR = "DISABLED";
    LUT4 i7070_3_lut_4_lut_then_4_lut (.A(y_cnt[3]), .B(n38114), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38537)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i7070_3_lut_4_lut_then_4_lut.init = 16'h000e;
    LUT4 Mux_304_i2_3_lut (.A(n2903[5]), .B(n2975), .C(n38114), .Z(n2_adj_1473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(338[10] 372[19])
    defparam Mux_304_i2_3_lut.init = 16'hcaca;
    LUT4 i7070_3_lut_4_lut_else_4_lut (.A(y_cnt[3]), .B(n38114), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n38536)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i7070_3_lut_4_lut_else_4_lut.init = 16'h4100;
    LUT4 i32841_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(n38114), .D(n2886), 
         .Z(n36147)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32841_3_lut_4_lut.init = 16'h2f20;
    LUT4 i32917_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(n38080), .D(n2886), 
         .Z(n36223)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32917_3_lut_4_lut.init = 16'h2f20;
    LUT4 i33004_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(n38240), .D(n2886), 
         .Z(n36310)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i33004_3_lut_4_lut.init = 16'h2f20;
    LUT4 i32692_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(n38085), .D(n2886), 
         .Z(n35998)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32692_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7845_3_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38098), .Z(n38540)) /* synthesis lut_function=(!(A (B)+!A ((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i7845_3_lut_then_4_lut.init = 16'h2622;
    LUT4 i32791_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(n38098), .D(n2886), 
         .Z(n36097)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32791_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i33774 (.D0(n37073), .D1(n37070), .SD(n38105), .Z(n37074));
    LUT4 i7845_3_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[0]), 
         .D(n38098), .Z(n38539)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam i7845_3_lut_else_4_lut.init = 16'h5018;
    PFUMX i33772 (.BLUT(n1_adj_120), .ALUT(n37071), .C0(n38104), .Z(n37073));
    LUT4 i32866_3_lut (.A(n2664), .B(data_r[61]), .C(x_cnt[0]), .Z(n36172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32866_3_lut.init = 16'hcaca;
    LUT4 i3_3_lut_4_lut_adj_287 (.A(n38116), .B(n38117), .C(n35329), .D(n38110), 
         .Z(n2664)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam i3_3_lut_4_lut_adj_287.init = 16'h0010;
    LUT4 mux_357_Mux_6_i15_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(y_cnt[3]), 
         .D(n38500), .Z(n2895)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam mux_357_Mux_6_i15_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_323_i1_3_lut_4_lut (.A(y_cnt[2]), .B(n38498), .C(\realv_5[0] ), 
         .D(n2886), .Z(n1_adj_121)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_323_i1_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_387_i8_3_lut (.A(n3006[4]), .B(n3045[5]), .C(n38240), .Z(n8_adj_1531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam Mux_387_i8_3_lut.init = 16'hcaca;
    PFUMX i34161 (.BLUT(n37678), .ALUT(n37677), .C0(state[0]), .Z(n37679));
    LUT4 i33249_3_lut_4_lut_4_lut (.A(n38117), .B(n6_adj_122), .C(n7_adj_1429), 
         .D(n38110), .Z(n2674)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam i33249_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 decade_2__bdd_3_lut_33989 (.A(n38240), .B(n2993[4]), .C(n2897), 
         .Z(n37389)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut_33989.init = 16'hd8d8;
    CCU2D add_3739_9 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[7]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[8]), .CIN(n32646), .COUT(n32647), .S0(n1917[7]), 
          .S1(n1917[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_9.INIT0 = 16'hfd00;
    defparam add_3739_9.INIT1 = 16'hfd00;
    defparam add_3739_9.INJECT1_0 = "NO";
    defparam add_3739_9.INJECT1_1 = "NO";
    CCU2D add_3739_7 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[5]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[6]), .CIN(n32645), .COUT(n32646), .S0(n1917[5]), 
          .S1(n1917[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_7.INIT0 = 16'hfd00;
    defparam add_3739_7.INIT1 = 16'hfd00;
    defparam add_3739_7.INJECT1_0 = "NO";
    defparam add_3739_7.INJECT1_1 = "NO";
    CCU2D add_3739_5 (.A0(cnt_init[2]), .B0(cnt_init[1]), .C0(n38337), 
          .D0(cnt_init[3]), .A1(cnt_init[2]), .B1(cnt_init[1]), .C1(n38337), 
          .D1(cnt_init[4]), .CIN(n32644), .COUT(n32645), .S0(n1917[3]), 
          .S1(n1917[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_5.INIT0 = 16'hfd00;
    defparam add_3739_5.INIT1 = 16'hfd00;
    defparam add_3739_5.INJECT1_0 = "NO";
    defparam add_3739_5.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_288 (.A(\decade[3] ), .B(n35314), .C(n38239), .D(n38233), 
         .Z(n3226[63])) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i3_4_lut_adj_288.init = 16'h0004;
    PFUMX i33769 (.BLUT(n37069), .ALUT(n37068), .C0(n38104), .Z(n37070));
    LUT4 i33247_3_lut_4_lut_4_lut (.A(n38117), .B(n6_adj_123), .C(n7_adj_1431), 
         .D(n38110), .Z(n2665)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(374[10] 408[19])
    defparam i33247_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i1_2_lut_rep_692 (.A(cnt[1]), .B(cnt[6]), .Z(n38439)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(206[16:18])
    defparam i1_2_lut_rep_692.init = 16'hbbbb;
    FD1P3IX cnt_delay__i8 (.D(n3996[8]), .SP(clk_in_c_enable_155), .CD(n18038), 
            .CK(clk_in_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam cnt_delay__i8.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_562_3_lut (.A(cnt[1]), .B(cnt[6]), .C(n35509), .Z(n38309)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(206[16:18])
    defparam i1_2_lut_rep_562_3_lut.init = 16'hfbfb;
    PFUMX i32840 (.BLUT(n36144), .ALUT(n36145), .C0(x_cnt[0]), .Z(n36146));
    CCU2D add_3739_3 (.A0(cnt_init[2]), .B0(cnt_init[0]), .C0(n38363), 
          .D0(cnt_init[1]), .A1(cnt_init[0]), .B1(cnt_init[1]), .C1(n38363), 
          .D1(cnt_init[2]), .CIN(n32643), .COUT(n32644), .S0(n1917[1]), 
          .S1(n1917[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_3.INIT0 = 16'hff00;
    defparam add_3739_3.INIT1 = 16'hfd00;
    defparam add_3739_3.INJECT1_0 = "NO";
    defparam add_3739_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_693 (.A(cnt[3]), .B(cnt[4]), .Z(n38440)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(169[16:18])
    defparam i1_2_lut_rep_693.init = 16'heeee;
    LUT4 i1_2_lut_rep_635_3_lut_4_lut (.A(cnt[3]), .B(cnt[4]), .C(n38443), 
         .D(cnt[5]), .Z(n38382)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(169[16:18])
    defparam i1_2_lut_rep_635_3_lut_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_289 (.A(cnt[3]), .B(cnt[4]), .C(n38443), .D(cnt[5]), 
         .Z(n24)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(169[16:18])
    defparam i2_3_lut_4_lut_adj_289.init = 16'h0100;
    LUT4 i1_2_lut_rep_694 (.A(cnt[4]), .B(cnt[5]), .Z(n38441)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_2_lut_rep_694.init = 16'hbbbb;
    PFUMX i32850 (.BLUT(n36154), .ALUT(n36155), .C0(x_cnt[0]), .Z(n36156));
    CCU2D add_187_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32597), 
          .COUT(n32598), .S0(n1696[7]), .S1(n1696[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_9.INIT0 = 16'h5aaa;
    defparam add_187_9.INIT1 = 16'h5aaa;
    defparam add_187_9.INJECT1_0 = "NO";
    defparam add_187_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_290 (.A(cnt[4]), .B(cnt[5]), .C(cnt[3]), .Z(n14913)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_2_lut_3_lut_adj_290.init = 16'hbfbf;
    LUT4 i1_2_lut_rep_695 (.A(cnt[5]), .B(cnt[2]), .Z(n38442)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i1_2_lut_rep_695.init = 16'hbbbb;
    CCU2D add_187_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32596), 
          .COUT(n32597), .S0(n1696[5]), .S1(n1696[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_7.INIT0 = 16'h5aaa;
    defparam add_187_7.INIT1 = 16'h5aaa;
    defparam add_187_7.INJECT1_0 = "NO";
    defparam add_187_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_653_3_lut (.A(cnt[5]), .B(cnt[2]), .C(cnt[4]), .Z(n38400)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i1_2_lut_rep_653_3_lut.init = 16'hbfbf;
    CCU2D add_3739_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n38606), .B1(n38363), .C1(n38475), .D1(cnt_init[0]), .COUT(n32643), 
          .S1(n1917[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam add_3739_1.INIT0 = 16'hF000;
    defparam add_3739_1.INIT1 = 16'h56aa;
    defparam add_3739_1.INJECT1_0 = "NO";
    defparam add_3739_1.INJECT1_1 = "NO";
    CCU2D add_475_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32613), .S0(n3996[15]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_17.INIT0 = 16'h5aaa;
    defparam add_475_17.INIT1 = 16'h0000;
    defparam add_475_17.INJECT1_0 = "NO";
    defparam add_475_17.INJECT1_1 = "NO";
    CCU2D add_187_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32595), 
          .COUT(n32596), .S0(n1696[3]), .S1(n1696[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_5.INIT0 = 16'h5aaa;
    defparam add_187_5.INIT1 = 16'h5aaa;
    defparam add_187_5.INJECT1_0 = "NO";
    defparam add_187_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_291 (.A(cnt[5]), .B(cnt[2]), .C(cnt[1]), 
         .D(cnt[4]), .Z(n35428)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_291.init = 16'hfbff;
    LUT4 i32749_3_lut (.A(n1_adj_124), .B(n2903[8]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36055)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32749_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_696 (.A(cnt[1]), .B(cnt[2]), .Z(n38443)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_2_lut_rep_696.init = 16'hdddd;
    CCU2D add_2397_9 (.A0(n38395), .B0(high_word), .C0(x_cnt_c[7]), .D0(high_word_N_1289), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32642), 
          .S0(n3422[7]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam add_2397_9.INIT0 = 16'hddd2;
    defparam add_2397_9.INIT1 = 16'h0000;
    defparam add_2397_9.INJECT1_0 = "NO";
    defparam add_2397_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_292 (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .Z(n35425)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_2_lut_3_lut_adj_292.init = 16'hfdfd;
    LUT4 decade_2__bdd_3_lut (.A(n38240), .B(n2897), .C(n2885), .Z(n37390)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i14611_2_lut (.A(clk_in_c_enable_117), .B(state[2]), .Z(n18007)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i14611_2_lut.init = 16'h8888;
    CCU2D add_2397_7 (.A0(n4826[0]), .B0(n14544), .C0(x_cnt[0]), .D0(x_cnt_c[5]), 
          .A1(n4826[0]), .B1(n14544), .C1(x_cnt[0]), .D1(x_cnt_c[6]), 
          .CIN(n32641), .COUT(n32642), .S0(n3422[5]), .S1(n3422[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam add_2397_7.INIT0 = 16'h56aa;
    defparam add_2397_7.INIT1 = 16'h56aa;
    defparam add_2397_7.INJECT1_0 = "NO";
    defparam add_2397_7.INJECT1_1 = "NO";
    CCU2D add_475_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32612), .COUT(n32613), .S0(n3996[13]), 
          .S1(n3996[14]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_15.INIT0 = 16'h5aaa;
    defparam add_475_15.INIT1 = 16'h5aaa;
    defparam add_475_15.INJECT1_0 = "NO";
    defparam add_475_15.INJECT1_1 = "NO";
    LUT4 i32761_3_lut (.A(data_reg[1]), .B(data_reg[0]), .C(cnt_write[1]), 
         .Z(n36067)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32761_3_lut.init = 16'hcaca;
    CCU2D add_2397_5 (.A0(n4826[0]), .B0(n14544), .C0(x_cnt[0]), .D0(\x_cnt[3] ), 
          .A1(n4826[0]), .B1(n14544), .C1(x_cnt[0]), .D1(x_cnt_c[4]), 
          .CIN(n32640), .COUT(n32641), .S0(n3422[3]), .S1(n3422[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam add_2397_5.INIT0 = 16'h56aa;
    defparam add_2397_5.INIT1 = 16'h56aa;
    defparam add_2397_5.INJECT1_0 = "NO";
    defparam add_2397_5.INJECT1_1 = "NO";
    CCU2D add_475_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32611), .COUT(n32612), .S0(n3996[11]), 
          .S1(n3996[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_13.INIT0 = 16'h5aaa;
    defparam add_475_13.INIT1 = 16'h5aaa;
    defparam add_475_13.INJECT1_0 = "NO";
    defparam add_475_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_651_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .Z(n38398)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_2_lut_rep_651_3_lut.init = 16'hdfdf;
    CCU2D add_2397_3 (.A0(n4826[0]), .B0(n14544), .C0(x_cnt[0]), .D0(x_cnt[1]), 
          .A1(n38395), .B1(high_word), .C1(\x_cnt[2] ), .D1(high_word_N_1289), 
          .CIN(n32639), .COUT(n32640), .S0(n3422[1]), .S1(n3422[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[9] 574[16])
    defparam add_2397_3.INIT0 = 16'h56aa;
    defparam add_2397_3.INIT1 = 16'hddd2;
    defparam add_2397_3.INJECT1_0 = "NO";
    defparam add_2397_3.INJECT1_1 = "NO";
    CCU2D add_475_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32610), .COUT(n32611), .S0(n3996[9]), .S1(n3996[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_11.INIT0 = 16'h5aaa;
    defparam add_475_11.INIT1 = 16'h5aaa;
    defparam add_475_11.INJECT1_0 = "NO";
    defparam add_475_11.INJECT1_1 = "NO";
    LUT4 i18366_2_lut_4_lut_4_lut_then_4_lut (.A(\realv_5[0] ), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[0]), .Z(n38507)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i18366_2_lut_4_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_4_lut_adj_293 (.A(cnt[1]), .B(cnt[2]), .C(n35458), .D(n15087), 
         .Z(n35338)) /* synthesis lut_function=(A (B+(D))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(177[16:18])
    defparam i1_4_lut_4_lut_adj_293.init = 16'hfad8;
    LUT4 i3479_2_lut_rep_745 (.A(n39824), .B(n39822), .Z(n38492)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i3479_2_lut_rep_745.init = 16'h6666;
    LUT4 i1_2_lut_rep_697 (.A(cnt[1]), .B(cnt[2]), .Z(n38444)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(225[16:17])
    defparam i1_2_lut_rep_697.init = 16'hbbbb;
    LUT4 mux_3496_i6_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), 
         .D(cnt[0]), .Z(n6305[5])) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(225[16:17])
    defparam mux_3496_i6_4_lut_4_lut.init = 16'h5004;
    PFUMX i32883 (.BLUT(n36187), .ALUT(n36188), .C0(n38086), .Z(n36189));
    LUT4 i1_2_lut_3_lut_adj_294 (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .Z(n14923)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(225[16:17])
    defparam i1_2_lut_3_lut_adj_294.init = 16'hbfbf;
    LUT4 i1_4_lut_4_lut_adj_295 (.A(cnt[1]), .B(cnt[2]), .C(n35797), .D(n38317), 
         .Z(n19)) /* synthesis lut_function=(!(A (C)+!A ((D)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(225[16:17])
    defparam i1_4_lut_4_lut_adj_295.init = 16'h0a4e;
    PFUMX i32890 (.BLUT(n10840), .ALUT(n36165), .C0(x_cnt[1]), .Z(n36196));
    LUT4 i18476_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3019[4])) /* synthesis lut_function=(!(A (B+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18476_4_lut_4_lut.init = 16'h0036;
    LUT4 mux_3496_i5_3_lut_4_lut_4_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n6305[4])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (B (C)+!B !(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(220[10] 233[19])
    defparam mux_3496_i5_3_lut_4_lut_4_lut.init = 16'he2e1;
    LUT4 i1_4_lut_adj_296 (.A(n38395), .B(clk_in_c_enable_49), .C(n38387), 
         .D(n14519), .Z(clk_in_c_enable_156)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_296.init = 16'hc4c0;
    CCU2D add_475_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n32609), .COUT(n32610), .S0(n3996[7]), .S1(n3996[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(613[20:29])
    defparam add_475_9.INIT0 = 16'h5aaa;
    defparam add_475_9.INIT1 = 16'h5aaa;
    defparam add_475_9.INJECT1_0 = "NO";
    defparam add_475_9.INJECT1_1 = "NO";
    CCU2D add_187_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32594), 
          .COUT(n32595), .S0(n1696[1]), .S1(n1696[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_3.INIT0 = 16'h5aaa;
    defparam add_187_3.INIT1 = 16'h5aaa;
    defparam add_187_3.INJECT1_0 = "NO";
    defparam add_187_3.INJECT1_1 = "NO";
    CCU2D add_187_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n32594), 
          .S1(n1696[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(221[51:54])
    defparam add_187_1.INIT0 = 16'hF000;
    defparam add_187_1.INIT1 = 16'h5555;
    defparam add_187_1.INJECT1_0 = "NO";
    defparam add_187_1.INJECT1_1 = "NO";
    PFUMX i32904 (.BLUT(n36208), .ALUT(n36209), .C0(n38086), .Z(n36210));
    LUT4 i32748_3_lut (.A(n10208), .B(n2903[7]), .C(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n36054)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32748_3_lut.init = 16'hcaca;
    LUT4 i18259_2_lut_rep_662_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n38409)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18259_2_lut_rep_662_3_lut_4_lut.init = 16'h0006;
    LUT4 i32781_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n38098), .Z(n36087)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32781_3_lut.init = 16'hcaca;
    PFUMX i32913 (.BLUT(n36217), .ALUT(n36218), .C0(n38103), .Z(n3_adj_1426));
    LUT4 i1_4_lut_4_lut_4_lut_adj_297 (.A(y_cnt[3]), .B(n35240), .C(n18_adj_1394), 
         .D(n38085), .Z(n33689)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(500[10] 536[19])
    defparam i1_4_lut_4_lut_4_lut_adj_297.init = 16'h50dc;
    LUT4 i18489_2_lut_rep_629_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n38376)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18489_2_lut_rep_629_4_lut_4_lut.init = 16'h0c06;
    LUT4 i32780_3_lut (.A(n2897), .B(n2993[3]), .C(n38098), .Z(n36086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32780_3_lut.init = 16'hcaca;
    LUT4 mux_374_Mux_7_i7_3_lut_rep_746 (.A(n39824), .B(n39822), .C(n39820), 
         .Z(n38493)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_374_Mux_7_i7_3_lut_rep_746.init = 16'hc6c6;
    PFUMX i32919 (.BLUT(n36223), .ALUT(n36224), .C0(n38103), .Z(n3_adj_1425));
    LUT4 mux_380_Mux_3_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(n39820), .D(y_cnt[3]), .Z(n3045[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_380_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h03c6;
    LUT4 i33538_2_lut_rep_748 (.A(state[2]), .B(state[1]), .Z(n38495)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i33538_2_lut_rep_748.init = 16'hbbbb;
    LUT4 i32779_3_lut (.A(n2903[3]), .B(n2967[3]), .C(n38098), .Z(n36085)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32779_3_lut.init = 16'hcaca;
    LUT4 i32778_3_lut (.A(n2886), .B(n38405), .C(n38098), .Z(n36084)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32778_3_lut.init = 16'hcaca;
    LUT4 i33516_2_lut_rep_699 (.A(\x_cnt[2] ), .B(x_cnt[1]), .Z(n38446)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i33516_2_lut_rep_699.init = 16'heeee;
    LUT4 Mux_387_i2_3_lut (.A(n2903[5]), .B(n2975), .C(n38240), .Z(n2_adj_1389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam Mux_387_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_389_i8_3_lut (.A(n2975), .B(n3045[3]), .C(n38240), .Z(n8_adj_1528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(463[10] 498[19])
    defparam Mux_389_i8_3_lut.init = 16'hcaca;
    PFUMX Mux_264_i15 (.BLUT(n7_adj_1413), .ALUT(n14_c), .C0(n38079), 
          .Z(n2248)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;
    LUT4 i18366_2_lut_4_lut_4_lut_else_4_lut (.A(\realv_5[0] ), .B(y_cnt[2]), 
         .C(y_cnt[1]), .Z(n38506)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i18366_2_lut_4_lut_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i3_4_lut_rep_700 (.A(y_cnt[4]), .B(y_cnt[6]), .C(y_cnt[7]), .D(y_cnt[5]), 
         .Z(n38447)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i3_4_lut_rep_700.init = 16'hfffe;
    LUT4 i1_2_lut_rep_701 (.A(y_cnt[2]), .B(n39824), .Z(n38448)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_701.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_298 (.A(y_cnt[2]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[1]), .Z(n35240)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_298.init = 16'h0220;
    LUT4 i1_2_lut_rep_702 (.A(state[2]), .B(rst_n_in_c), .Z(n38449)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_702.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_299 (.A(state[2]), .B(rst_n_in_c), .C(n38450), 
         .D(state[0]), .Z(n35404)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_3_lut_4_lut_adj_299.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_300 (.A(state[2]), .B(rst_n_in_c), .C(n38450), 
         .D(state[0]), .Z(n35403)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_3_lut_4_lut_adj_300.init = 16'h0400;
    LUT4 i1_2_lut_rep_703 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38450)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_703.init = 16'h4444;
    LUT4 i32856_then_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n38492), .D(n38114), 
         .Z(n38545)) /* synthesis lut_function=(!(A (B+(D))+!A (B+!(C (D))))) */ ;
    defparam i32856_then_4_lut.init = 16'h1022;
    LUT4 i1_2_lut_rep_705 (.A(y_cnt[1]), .B(y_cnt[3]), .Z(n38452)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_705.init = 16'hbbbb;
    LUT4 i33490_3_lut_rep_658_4_lut (.A(n39822), .B(y_cnt[3]), .C(n39824), 
         .D(n39820), .Z(n38405)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i33490_3_lut_rep_658_4_lut.init = 16'h0400;
    LUT4 i33467_2_lut_2_lut_3_lut_4_lut_3_lut_4_lut_3_lut (.A(state[1]), .B(state[2]), 
         .C(rst_n_in_c), .Z(clk_in_c_enable_115)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;
    defparam i33467_2_lut_2_lut_3_lut_4_lut_3_lut_4_lut_3_lut.init = 16'h9f9f;
    LUT4 i14237_4_lut_4_lut_rep_749 (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_111)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (D)+!B (C (D)))) */ ;
    defparam i14237_4_lut_4_lut_rep_749.init = 16'h8bff;
    LUT4 i14550_2_lut_3_lut_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(state[0]), 
         .D(rst_n_in_c), .Z(n18024)) /* synthesis lut_function=(A (B+!(D))+!A !(B (D)+!B (C (D)))) */ ;
    defparam i14550_2_lut_3_lut_4_lut_4_lut.init = 16'h89ff;
    LUT4 i28_4_lut (.A(x_cnt[0]), .B(n36080), .C(\x_cnt[2] ), .D(\data_r[91] ), 
         .Z(n15_adj_1586)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i28_4_lut.init = 16'hcac0;
    PFUMX i34126 (.BLUT(n37626), .ALUT(n37624), .C0(state[2]), .Z(n37627));
    LUT4 i1_2_lut_rep_750 (.A(state[0]), .B(state[1]), .Z(n38497)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_750.init = 16'heeee;
    PFUMX i32744 (.BLUT(n36048), .ALUT(n36049), .C0(x_cnt[0]), .Z(n36050));
    PFUMX i32790 (.BLUT(n36094), .ALUT(n36095), .C0(n38097), .Z(n36096));
    LUT4 mux_377_Mux_10_i15_3_lut_3_lut (.A(n39822), .B(n39820), .C(y_cnt[3]), 
         .Z(n3008)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(484[41:46])
    defparam mux_377_Mux_10_i15_3_lut_3_lut.init = 16'h3838;
    LUT4 i33624_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_155)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C (D)))) */ ;
    defparam i33624_3_lut_4_lut.init = 16'he1ff;
    LUT4 i32856_else_4_lut (.A(y_cnt[3]), .B(n38410), .C(n38114), .D(n2980[2]), 
         .Z(n38544)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i32856_else_4_lut.init = 16'h2f20;
    PFUMX i32874 (.BLUT(n36178), .ALUT(n36179), .C0(\x_cnt[3] ), .Z(n36180));
    L6MUX21 i33760 (.D0(n37059), .D1(n37057), .SD(n38104), .Z(n37060));
    LUT4 i2_3_lut_4_lut_4_lut (.A(state[2]), .B(n25), .C(n38478), .D(state[0]), 
         .Z(n35285)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'h0400;
    PFUMX i33758 (.BLUT(n1_adj_120), .ALUT(n37058), .C0(n38105), .Z(n37059));
    LUT4 i9_1_lut_rep_710 (.A(\realv_5[0] ), .Z(n38457)) /* synthesis lut_function=(!(A)) */ ;
    defparam i9_1_lut_rep_710.init = 16'h5555;
    LUT4 i1_2_lut_rep_605_3_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(y_cnt[3]), 
         .C(y_cnt[2]), .D(n38499), .Z(n38352)) /* synthesis lut_function=(!(A+(B (C+(D))+!B !(C+(D))))) */ ;
    defparam i1_2_lut_rep_605_3_lut_4_lut_4_lut.init = 16'h1114;
    FD1P3IX y_cnt__i2_rep_770 (.D(n2021[2]), .SP(clk_in_c_enable_156), .CD(n17967), 
            .CK(clk_in_c), .Q(n39820)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=16, LSE_RCOL=27, LSE_LLINE=139, LSE_RLINE=139 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam y_cnt__i2_rep_770.GSR = "DISABLED";
    LUT4 i19378_2_lut_rep_751 (.A(n39822), .B(n39824), .Z(n38498)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i19378_2_lut_rep_751.init = 16'heeee;
    LUT4 realv_5_3__bdd_4_lut_3_lut (.A(\realv_5[0] ), .B(n38116), .C(n38117), 
         .Z(n37933)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B+!(C)))) */ ;
    defparam realv_5_3__bdd_4_lut_3_lut.init = 16'h6d6d;
    LUT4 unit_3__I_0_Mux_3_i15_4_lut_4_lut (.A(\realv_5[0] ), .B(n10530), 
         .C(n38237), .D(n38238), .Z(\ctrlword_595_6_15__N_662[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;
    defparam unit_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    L6MUX21 i33676 (.D0(n36948), .D1(n36945), .SD(n38089), .Z(n36949));
    LUT4 realv_5_3__bdd_3_lut_33695_4_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(\voltage_code[1] ), 
         .C(n38135), .D(n38139), .Z(n36975)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D))))) */ ;
    defparam realv_5_3__bdd_3_lut_33695_4_lut_4_lut_4_lut.init = 16'h7dff;
    PFUMX i32889 (.BLUT(n36031), .ALUT(n10842), .C0(x_cnt[1]), .Z(n36195));
    LUT4 i19134_2_lut_rep_686_3_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .Z(n38433)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i19134_2_lut_rep_686_3_lut.init = 16'he0e0;
    LUT4 unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(\realv_5[0] ), .B(n38249), 
         .C(n38245), .Z(n7_adj_125)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;
    defparam unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(\voltage_code[1] ), 
         .C(n38135), .D(n38377), .Z(n3_adj_1428)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h4100;
    LUT4 realv_5_3__I_0_Mux_3_i15_4_lut_4_lut (.A(\realv_5[0] ), .B(n10314), 
         .C(n38110), .D(n38109), .Z(\ctrlword_595_6_15__N_670[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;
    defparam realv_5_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    PFUMX i32922 (.BLUT(n36226), .ALUT(n36227), .C0(x_cnt[0]), .Z(n36228));
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(n38238), .C(n35314), 
         .D(n38237), .Z(n35400)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_301 (.A(n15131), .B(data_reg[3]), .C(n38309), .D(n38362), 
         .Z(n4_adj_1588)) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i1_4_lut_adj_301.init = 16'hdf5f;
    LUT4 i18245_4_lut (.A(n38308), .B(n14992), .C(n38398), .D(n38348), 
         .Z(n21613)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i18245_4_lut.init = 16'hfac8;
    L6MUX21 i32685 (.D0(n35989), .D1(n35990), .SD(n38086), .Z(n35991));
    LUT4 i33509_2_lut_rep_689_3_lut (.A(n39822), .B(n39824), .C(y_cnt[2]), 
         .Z(n38436)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i33509_2_lut_rep_689_3_lut.init = 16'h1010;
    LUT4 unit_3__bdd_3_lut_34057_4_lut_4_lut_4_lut (.A(\realv_5[0] ), .B(\voltage_code[1] ), 
         .C(n38252), .D(n38261), .Z(n37498)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D))))) */ ;
    defparam unit_3__bdd_3_lut_34057_4_lut_4_lut_4_lut.init = 16'h7dff;
    LUT4 i18512_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3019[3])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i18512_3_lut_4_lut.init = 16'h001e;
    LUT4 i3_4_lut_adj_302 (.A(n35693), .B(n32884), .C(n2380), .D(n35338), 
         .Z(n35544)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(133[10] 208[19])
    defparam i3_4_lut_adj_302.init = 16'hf7ff;
    LUT4 i32403_4_lut (.A(n38275), .B(n22344), .C(n6_adj_1411), .D(n21686), 
         .Z(n35693)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32403_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_654_3_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .Z(n38401)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_rep_654_3_lut.init = 16'hf1f1;
    LUT4 Mux_278_i4_3_lut (.A(n2980[9]), .B(n2993[9]), .C(n38098), .Z(n4_adj_126)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(301[10] 337[19])
    defparam Mux_278_i4_3_lut.init = 16'hcaca;
    LUT4 i18311_2_lut_3_lut_3_lut (.A(state[0]), .B(cnt_main[0]), .C(cnt_main[1]), 
         .Z(n1_adj_1535)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(82[10:15])
    defparam i18311_2_lut_3_lut_3_lut.init = 16'h5d5d;
    L6MUX21 i32698 (.D0(n36002), .D1(n36003), .SD(n38086), .Z(n36004));
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n38510)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A ((C)+!B))) */ ;
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'h0e06;
    LUT4 i2_4_lut_4_lut (.A(cnt[3]), .B(cnt[2]), .C(n12_adj_1505), .D(n35749), 
         .Z(n31)) /* synthesis lut_function=(!(A+!(B (C+(D))))) */ ;
    defparam i2_4_lut_4_lut.init = 16'h4440;
    LUT4 i1_3_lut_3_lut (.A(cnt[3]), .B(n29_adj_1525), .C(n33), .Z(n15047)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;
    defparam i1_3_lut_3_lut.init = 16'hf4f4;
    LUT4 i18524_2_lut_rep_711 (.A(y_cnt[1]), .B(n39820), .Z(n38458)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18524_2_lut_rep_711.init = 16'heeee;
    PFUMX i33674 (.BLUT(n36947), .ALUT(n36946), .C0(n38097), .Z(n36948));
    LUT4 i33378_3_lut_4_lut_4_lut (.A(n38103), .B(n15408), .C(n15409), 
         .D(n38080), .Z(n15354)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i33378_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i33365_3_lut_4_lut_4_lut (.A(n38103), .B(n15410), .C(n15411), 
         .D(n38080), .Z(n15356)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(433[22:27])
    defparam i33365_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i1_2_lut_rep_752 (.A(n39824), .B(y_cnt[1]), .Z(n38499)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_752.init = 16'h8888;
    PFUMX i33756 (.BLUT(n37056), .ALUT(n37055), .C0(n38105), .Z(n37057));
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(y_cnt[1]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n38509)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'h1206;
    LUT4 i1_2_lut_adj_303 (.A(cnt[2]), .B(cnt[1]), .Z(n17_c)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_303.init = 16'h8888;
    LUT4 mux_356_Mux_0_i15_3_lut_rep_668_3_lut (.A(n39822), .B(n39820), 
         .C(y_cnt[3]), .Z(n38415)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_356_Mux_0_i15_3_lut_rep_668_3_lut.init = 16'h1c1c;
    LUT4 mux_376_Mux_2_i15_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n2993[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_376_Mux_2_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_304 (.A(n39824), .B(n39822), .C(n22604), 
         .D(n38402), .Z(n5_adj_1470)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_304.init = 16'hf080;
    LUT4 i15_2_lut_rep_630_3_lut_4_lut (.A(n39824), .B(n39822), .C(y_cnt[3]), 
         .D(n39820), .Z(n38377)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i15_2_lut_rep_630_3_lut_4_lut.init = 16'h0f78;
    LUT4 i18525_2_lut_rep_659_3_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n38406)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18525_2_lut_rep_659_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_rep_609_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(hundreds_1__N_558), 
         .D(y_cnt[3]), .Z(n38356)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i1_2_lut_rep_609_4_lut_4_lut.init = 16'h10c0;
    LUT4 i1_2_lut_rep_663_3_lut (.A(n39824), .B(n39822), .C(n39820), .Z(n38410)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam i1_2_lut_rep_663_3_lut.init = 16'hf8f8;
    PFUMX i34802 (.BLUT(n39128), .ALUT(n39127), .C0(n38085), .Z(n39129));
    LUT4 i18418_2_lut_rep_685_3_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[0]), 
         .Z(n38432)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18418_2_lut_rep_685_3_lut.init = 16'h1010;
    LUT4 i18298_2_lut_rep_687_3_lut (.A(n39822), .B(y_cnt[2]), .C(n39824), 
         .Z(n38434)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18298_2_lut_rep_687_3_lut.init = 16'hfefe;
    LUT4 i12024_2_lut_rep_628_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(y_cnt[0]), .Z(n38375)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i12024_2_lut_rep_628_3_lut_4_lut.init = 16'h0f1e;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(\realv_5[0] ), .Z(n35329)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h001c;
    LUT4 pwr_bdd_2_lut_33972_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(n37341), 
         .D(n38402), .Z(n37342)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C+!(D))) */ ;
    defparam pwr_bdd_2_lut_33972_3_lut_4_lut.init = 16'hf0f7;
    LUT4 i1_3_lut_3_lut_3_lut (.A(state[1]), .B(state_back[0]), .C(state[0]), 
         .Z(n29_adj_1536)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h4545;
    LUT4 i2_3_lut_3_lut (.A(state[1]), .B(state[0]), .C(state_back[1]), 
         .Z(n32680)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_713 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n38460)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i1_2_lut_rep_713.init = 16'h2222;
    LUT4 mux_356_Mux_3_i14_3_lut_rep_753 (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .Z(n38500)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;
    defparam mux_356_Mux_3_i14_3_lut_rep_753.init = 16'h1818;
    LUT4 i54_3_lut_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(state[2]), 
         .D(n3994), .Z(n33_adj_1523)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i54_3_lut_3_lut_4_lut.init = 16'h02f2;
    LUT4 ctrlword_595_4_15__N_638_5__bdd_3_lut_3_lut (.A(\ctrlword_595_3[13] ), 
         .B(\ctrlword_595_4_15__N_630[1] ), .C(\ctrlword_595_4_15__N_638[5] ), 
         .Z(n37900)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(144[5:13])
    defparam ctrlword_595_4_15__N_638_5__bdd_3_lut_3_lut.init = 16'h7272;
    LUT4 i1_2_lut_3_lut_3_lut (.A(x_cnt[0]), .B(n38078), .C(n38415), .Z(n35322)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_2_lut (.A(x_cnt[0]), .B(data_r[104]), .Z(n21531)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(236[13:23])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i18286_4_lut (.A(n38317), .B(n38444), .C(n35428), .D(n38311), 
         .Z(n21654)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i18286_4_lut.init = 16'hfac8;
    LUT4 mux_377_Mux_3_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[3])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;
    defparam mux_377_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h18c0;
    LUT4 i10314_2_lut_rep_754 (.A(n39822), .B(n39820), .Z(n38501)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i10314_2_lut_rep_754.init = 16'h6666;
    LUT4 mux_374_Mux_3_i15_3_lut_3_lut (.A(n39822), .B(n39820), .C(y_cnt[3]), 
         .Z(n2967[3])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_374_Mux_3_i15_3_lut_3_lut.init = 16'h3636;
    LUT4 i3_4_lut_4_lut_4_lut (.A(\x_cnt[2] ), .B(data_r[34]), .C(n35335), 
         .D(x_cnt[0]), .Z(n35337)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i3_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i32760_3_lut (.A(data_reg[5]), .B(data_reg[4]), .C(cnt_write[1]), 
         .Z(n36066)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32760_3_lut.init = 16'hcaca;
    LUT4 i35693_i21_4_lut_4_lut (.A(\x_cnt[2] ), .B(n38277), .C(n36044), 
         .D(n36056), .Z(n21_adj_1507)) /* synthesis lut_function=(A (B (D))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i35693_i21_4_lut_4_lut.init = 16'hc840;
    LUT4 i32604_2_lut_2_lut (.A(\x_cnt[2] ), .B(\x_cnt[3] ), .Z(n35910)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(87[2] 618[8])
    defparam i32604_2_lut_2_lut.init = 16'h4444;
    LUT4 i18482_2_lut_rep_716 (.A(cnt[1]), .B(cnt[5]), .Z(n38463)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18482_2_lut_rep_716.init = 16'h8888;
    LUT4 i32341_2_lut_3_lut (.A(cnt[1]), .B(cnt[5]), .C(cnt[2]), .Z(n35626)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i32341_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_717 (.A(cnt_write[4]), .B(cnt_write[0]), .Z(n38464)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_717.init = 16'heeee;
    LUT4 n35544_bdd_4_lut_34439 (.A(n14994), .B(n22700), .C(n21613), .D(n4_adj_1588), 
         .Z(n37031)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam n35544_bdd_4_lut_34439.init = 16'hff7f;
    LUT4 i18542_2_lut_rep_657_3_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n38404)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18542_2_lut_rep_657_3_lut.init = 16'h0606;
    LUT4 i24_3_lut_3_lut (.A(cnt_write[4]), .B(cnt_write[0]), .C(n56), 
         .Z(n20699)) /* synthesis lut_function=(!(A (C)+!A !(B+(C)))) */ ;
    defparam i24_3_lut_3_lut.init = 16'h5e5e;
    LUT4 mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut (.A(n39822), .B(n39820), 
         .C(y_cnt[3]), .D(n39824), .Z(n2903[4])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h0950;
    LUT4 i33279_3_lut (.A(n2674), .B(n2673), .C(x_cnt[0]), .Z(n36167)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i33279_3_lut.init = 16'hcaca;
    LUT4 i18535_2_lut_rep_755 (.A(n39822), .B(n39820), .Z(n38502)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i18535_2_lut_rep_755.init = 16'h2222;
    PFUMX i32683 (.BLUT(n35985), .ALUT(n35986), .C0(n38084), .Z(n35989));
    PFUMX i32684 (.BLUT(n35987), .ALUT(n35988), .C0(n38084), .Z(n35990));
    LUT4 realv_4_1__bdd_3_lut_34428_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2895), 
         .D(n38114), .Z(n37071)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam realv_4_1__bdd_3_lut_34428_4_lut.init = 16'h22f0;
    LUT4 Mux_405_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2895), .Z(n2_adj_127)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_405_i2_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_278_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38098), 
         .D(n2895), .Z(n2_adj_1497)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_278_i2_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_2_lut_3_lut_adj_305 (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .Z(n1_adj_128)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i1_2_lut_2_lut_3_lut_adj_305.init = 16'h0202;
    LUT4 i32792_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38098), .D(n2903[8]), 
         .Z(n36098)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i32792_3_lut_4_lut.init = 16'h2f20;
    PFUMX i34093 (.BLUT(n37568), .ALUT(n37567), .C0(\x_cnt[3] ), .Z(n37569));
    LUT4 i32693_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38085), .D(n2903[8]), 
         .Z(n35999)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i32693_3_lut_4_lut.init = 16'h2f20;
    LUT4 i33005_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38240), .D(n2903[8]), 
         .Z(n36311)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i33005_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i32887 (.D0(n36083), .D1(n36053), .SD(x_cnt[1]), .Z(n36193));
    LUT4 i32383_2_lut_rep_722 (.A(state[2]), .B(\ctrlword_595_3[13] ), .Z(n38469)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32383_2_lut_rep_722.init = 16'heeee;
    PFUMX i32696 (.BLUT(n35998), .ALUT(n35999), .C0(n38084), .Z(n36002));
    LUT4 i1_2_lut_rep_536_3_lut_4_lut (.A(state[2]), .B(\ctrlword_595_3[13] ), 
         .C(n38321), .D(n7_adj_1427), .Z(n38283)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_rep_536_3_lut_4_lut.init = 16'h1101;
    LUT4 i32842_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38114), .D(n2903[8]), 
         .Z(n36148)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i32842_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_2_lut_rep_726 (.A(cnt[1]), .B(cnt[2]), .Z(n38473)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_726.init = 16'heeee;
    PFUMX i34506 (.BLUT(n38607), .ALUT(n38608), .C0(n38084), .Z(n38609));
    PFUMX i32697 (.BLUT(n36000), .ALUT(n36001), .C0(n38084), .Z(n36003));
    PFUMX i34504 (.BLUT(n38604), .ALUT(n38605), .C0(cnt_init[0]), .Z(n38606));
    LUT4 i18284_4_lut_4_lut (.A(cnt[1]), .B(cnt[2]), .C(n35458), .D(n38313), 
         .Z(n21652)) /* synthesis lut_function=(A (C)+!A (B+(D))) */ ;
    defparam i18284_4_lut_4_lut.init = 16'hf5e4;
    PFUMX i34502 (.BLUT(n38601), .ALUT(n38602), .C0(state[2]), .Z(n18038));
    LUT4 i1_2_lut_3_lut_adj_306 (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .Z(n15066)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_306.init = 16'hefef;
    PFUMX i34500 (.BLUT(n38598), .ALUT(n38599), .C0(y_cnt[1]), .Z(n38600));
    LUT4 i1_2_lut_3_lut_adj_307 (.A(cnt[1]), .B(cnt[2]), .C(cnt[5]), .Z(n15062)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_307.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_adj_308 (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), .Z(n4_adj_1514)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_308.init = 16'h1010;
    LUT4 Mux_406_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2903[8]), .Z(n2_adj_129)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam Mux_406_i2_3_lut_4_lut.init = 16'h2f20;
    PFUMX i34496 (.BLUT(n38592), .ALUT(n38593), .C0(n38113), .Z(\ctrlword_595_3_15__N_622[3] ));
    PFUMX i33752 (.BLUT(n37053), .ALUT(n37052), .C0(state[0]), .Z(n37054));
    PFUMX i35693_i29 (.BLUT(n12_adj_1509), .ALUT(n15_adj_1586), .C0(n38446), 
          .Z(n35741));
    LUT4 i1_2_lut_3_lut_adj_309 (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n14992)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_309.init = 16'hfefe;
    PFUMX i34490 (.BLUT(n38583), .ALUT(n38584), .C0(y_cnt[1]), .Z(n38585));
    LUT4 i2_2_lut_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n32872)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(220[10] 233[19])
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    PFUMX i34486 (.BLUT(n38577), .ALUT(n38578), .C0(n38089), .Z(n38579));
    LUT4 i1_2_lut_rep_727 (.A(cnt_init[13]), .B(cnt_init[9]), .Z(n38474)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_727.init = 16'heeee;
    PFUMX i33670 (.BLUT(n36944), .ALUT(n36943), .C0(n38097), .Z(n36945));
    PFUMX i34484 (.BLUT(n38574), .ALUT(n38575), .C0(n38241), .Z(n38576));
    PFUMX i34090 (.BLUT(n41), .ALUT(n37562), .C0(\x_cnt[2] ), .Z(n37563));
    LUT4 i2_4_lut_adj_310 (.A(cnt[3]), .B(cnt[2]), .C(cnt[0]), .D(n38389), 
         .Z(n35509)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(231[16:18])
    defparam i2_4_lut_adj_310.init = 16'hfffd;
    LUT4 i1_2_lut_rep_643_3_lut (.A(cnt_init[13]), .B(cnt_init[9]), .C(n35538), 
         .Z(n38390)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_643_3_lut.init = 16'hfefe;
    PFUMX i34480 (.BLUT(n38568), .ALUT(n38569), .C0(cnt_stop[1]), .Z(n38570));
    LUT4 i1_2_lut_rep_616_3_lut_4_lut (.A(cnt_init[13]), .B(cnt_init[9]), 
         .C(n35069), .D(n35538), .Z(n38363)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_616_3_lut_4_lut.init = 16'hfffe;
    L6MUX21 i32764 (.D0(n36068), .D1(n36069), .SD(cnt_write[2]), .Z(n36070));
    L6MUX21 i32771 (.D0(n36075), .D1(n36076), .SD(\x_cnt[2] ), .Z(n36077));
    LUT4 i1_2_lut_rep_673_3_lut (.A(cnt_init[13]), .B(cnt_init[9]), .C(cnt_init[12]), 
         .Z(n38420)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_673_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_728 (.A(cnt_init[2]), .B(cnt_init[1]), .Z(n38475)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_728.init = 16'hdddd;
    LUT4 i32918_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n38080), .D(n2903[8]), 
         .Z(n36224)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(493[41:46])
    defparam i32918_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_3_lut_4_lut_4_lut_adj_311 (.A(cnt_init[2]), .B(cnt_init[1]), 
         .C(n38285), .D(n38360), .Z(n35630)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;
    defparam i1_3_lut_4_lut_4_lut_adj_311.init = 16'hddfd;
    PFUMX i34471 (.BLUT(n38550), .ALUT(n38551), .C0(y_cnt[1]), .Z(n8_adj_1445));
    PFUMX i32762 (.BLUT(n36064), .ALUT(n36065), .C0(cnt_write[3]), .Z(n36068));
    LUT4 i1_2_lut_rep_677_3_lut (.A(state[1]), .B(rst_n_in_c), .C(state[2]), 
         .Z(n38424)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_rep_677_3_lut.init = 16'h0808;
    LUT4 i1_3_lut_4_lut_adj_312 (.A(state[1]), .B(rst_n_in_c), .C(n35865), 
         .D(state[2]), .Z(clk_in_c_enable_47)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_3_lut_4_lut_adj_312.init = 16'h8808;
    LUT4 i1_3_lut_4_lut_adj_313 (.A(state[1]), .B(rst_n_in_c), .C(n12_adj_1461), 
         .D(state[2]), .Z(clk_in_c_enable_131)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_3_lut_4_lut_adj_313.init = 16'h8880;
    LUT4 i1_3_lut_4_lut_adj_314 (.A(state[1]), .B(rst_n_in_c), .C(n37054), 
         .D(state[2]), .Z(clk_in_c_enable_117)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_3_lut_4_lut_adj_314.init = 16'h8880;
    PFUMX i32741 (.BLUT(n36045), .ALUT(n36046), .C0(x_cnt[0]), .Z(n36047));
    L6MUX21 i32797 (.D0(n36101), .D1(n36102), .SD(n38097), .Z(n36103));
    LUT4 i1_2_lut_3_lut_4_lut_adj_315 (.A(state[1]), .B(rst_n_in_c), .C(cnt_scan[2]), 
         .D(state[2]), .Z(n11[2])) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(10[3:11])
    defparam i1_2_lut_3_lut_4_lut_adj_315.init = 16'h0080;
    PFUMX i33737 (.BLUT(n37032), .ALUT(n37030), .C0(state[0]), .Z(n37033));
    LUT4 i32307_4_lut_4_lut (.A(n38278), .B(n15181), .C(n6_adj_1452), 
         .D(n32896), .Z(n35587)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/lcd_display.vhd(164[16:18])
    defparam i32307_4_lut_4_lut.init = 16'h4000;
    PFUMX i32763 (.BLUT(n36066), .ALUT(n36067), .C0(cnt_write[3]), .Z(n36069));
    LUT4 n35544_bdd_4_lut_33736 (.A(n38071), .B(n1978[3]), .C(n38395), 
         .D(cnt_scan[0]), .Z(n37030)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !((D)+!B)) */ ;
    defparam n35544_bdd_4_lut_33736.init = 16'ha0cc;
    PFUMX i32868 (.BLUT(n36166), .ALUT(n36167), .C0(x_cnt[1]), .Z(n36174));
    L6MUX21 i33663 (.D0(n36936), .D1(n36933), .SD(n38089), .Z(n36937));
    L6MUX21 i32870 (.D0(n36170), .D1(n36171), .SD(x_cnt[1]), .Z(n36176));
    
endmodule
//
// Verilog Description of module btn_debouncing
//

module btn_debouncing (clk_in_c, btn_state, GND_net, mode_btn_in_c);
    input clk_in_c;
    output btn_state;
    input GND_net;
    input mode_btn_in_c;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    
    wire btnsampler_clk, btnsampler_clk_N_266, btnsampler_clk_ls, btn_state_N_264;
    wire [2:0]btnsamp_store;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(21[9:22])
    
    wire n32628;
    wire [31:0]btnsampler_clk_cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(18[9:27])
    wire [16:0]n73;
    
    wire n32627, n32626, n32625, n32624, n32623, n32622, btnsamp_store_2__N_261, 
        n17985, n33090, n12, n8, n17, n16, n32621;
    
    FD1S3AX btnsampler_clk_30 (.D(btnsampler_clk_N_266), .CK(clk_in_c), 
            .Q(btnsampler_clk)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(27[3] 33[10])
    defparam btnsampler_clk_30.GSR = "DISABLED";
    FD1S3AX btnsampler_clk_ls_31 (.D(btnsampler_clk), .CK(clk_in_c), .Q(btnsampler_clk_ls)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(38[3] 40[10])
    defparam btnsampler_clk_ls_31.GSR = "DISABLED";
    FD1S3AX btn_state_33 (.D(btn_state_N_264), .CK(clk_in_c), .Q(btn_state)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(45[3] 52[10])
    defparam btn_state_33.GSR = "DISABLED";
    LUT4 i2_3_lut (.A(btnsamp_store[2]), .B(btnsamp_store[1]), .C(btnsamp_store[0]), 
         .Z(btn_state_N_264)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(51[15:73])
    defparam i2_3_lut.init = 16'h8080;
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_17 (.A0(btnsampler_clk_cnt[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[16]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32628), .S0(n73[15]), 
          .S1(n73[16]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_17.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_17.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_17.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_17.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_15 (.A0(btnsampler_clk_cnt[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32627), .COUT(n32628), 
          .S0(n73[13]), .S1(n73[14]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_15.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_15.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_15.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_15.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_13 (.A0(btnsampler_clk_cnt[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32626), .COUT(n32627), 
          .S0(n73[11]), .S1(n73[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_13.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_13.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_13.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_13.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_11 (.A0(btnsampler_clk_cnt[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32625), .COUT(n32626), 
          .S0(n73[9]), .S1(n73[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_11.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_11.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_11.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_11.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_9 (.A0(btnsampler_clk_cnt[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32624), .COUT(n32625), 
          .S0(n73[7]), .S1(n73[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_9.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_9.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_9.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_9.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_7 (.A0(btnsampler_clk_cnt[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32623), .COUT(n32624), 
          .S0(n73[5]), .S1(n73[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_7.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_7.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_7.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_7.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_5 (.A0(btnsampler_clk_cnt[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32622), .COUT(n32623), 
          .S0(n73[3]), .S1(n73[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_5.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_5.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_5.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_5.INJECT1_1 = "NO";
    FD1P3AX btnsamp_store_i0_i0 (.D(btnsamp_store[1]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(45[3] 52[10])
    defparam btnsamp_store_i0_i0.GSR = "DISABLED";
    LUT4 btnsampler_clk_I_0_36_2_lut (.A(btnsampler_clk), .B(btnsampler_clk_ls), 
         .Z(btnsamp_store_2__N_261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(46[8:52])
    defparam btnsampler_clk_I_0_36_2_lut.init = 16'h2222;
    FD1S3IX btnsampler_clk_cnt_4441_4442__i2 (.D(n73[1]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i2.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i3 (.D(n73[2]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i3.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i4 (.D(n73[3]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i4.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i5 (.D(n73[4]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i5.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i6 (.D(n73[5]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i6.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i7 (.D(n73[6]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i7.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i8 (.D(n73[7]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i8.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i9 (.D(n73[8]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i9.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i10 (.D(n73[9]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i10.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i11 (.D(n73[10]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i11.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i12 (.D(n73[11]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i12.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i13 (.D(n73[12]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i13.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i14 (.D(n73[13]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i14.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i15 (.D(n73[14]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i15.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i16 (.D(n73[15]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i16.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_4441_4442__i17 (.D(n73[16]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i17.GSR = "DISABLED";
    FD1P3AX btnsamp_store_i0_i1 (.D(btnsamp_store[2]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(45[3] 52[10])
    defparam btnsamp_store_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut (.A(btnsampler_clk), .B(n17985), .Z(btnsampler_clk_N_266)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i33472_4_lut (.A(n33090), .B(btnsampler_clk_cnt[15]), .C(n12), 
         .D(n8), .Z(n17985)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(29[8:33])
    defparam i33472_4_lut.init = 16'h4000;
    LUT4 i9_4_lut (.A(n17), .B(btnsampler_clk_cnt[8]), .C(n16), .D(btnsampler_clk_cnt[9]), 
         .Z(n33090)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(29[8:33])
    defparam i9_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(btnsampler_clk_cnt[12]), .B(btnsampler_clk_cnt[14]), 
         .C(btnsampler_clk_cnt[7]), .D(btnsampler_clk_cnt[10]), .Z(n12)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i5_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_adj_96 (.A(btnsampler_clk_cnt[16]), .B(btnsampler_clk_cnt[6]), 
         .Z(n8)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_96.init = 16'h8888;
    LUT4 i7_4_lut (.A(btnsampler_clk_cnt[0]), .B(btnsampler_clk_cnt[1]), 
         .C(btnsampler_clk_cnt[11]), .D(btnsampler_clk_cnt[2]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(29[8:33])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(btnsampler_clk_cnt[5]), .B(btnsampler_clk_cnt[3]), 
         .C(btnsampler_clk_cnt[13]), .D(btnsampler_clk_cnt[4]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(29[8:33])
    defparam i6_4_lut.init = 16'hfffe;
    FD1S3IX btnsampler_clk_cnt_4441_4442__i1 (.D(n73[0]), .CK(clk_in_c), 
            .CD(n17985), .Q(btnsampler_clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442__i1.GSR = "DISABLED";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_3 (.A0(btnsampler_clk_cnt[1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32621), .COUT(n32622), 
          .S0(n73[1]), .S1(n73[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_3.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_3.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_4441_4442_add_4_3.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_3.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_4441_4442_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n32621), .S1(n73[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(28[24:42])
    defparam btnsampler_clk_cnt_4441_4442_add_4_1.INIT0 = 16'hF000;
    defparam btnsampler_clk_cnt_4441_4442_add_4_1.INIT1 = 16'h0555;
    defparam btnsampler_clk_cnt_4441_4442_add_4_1.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_4441_4442_add_4_1.INJECT1_1 = "NO";
    FD1P3AX btnsamp_store_i0_i2 (.D(mode_btn_in_c), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=18, LSE_RCOL=32, LSE_LLINE=135, LSE_RLINE=135 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/btn_debouncing.vhd(45[3] 52[10])
    defparam btnsamp_store_i0_i2.GSR = "DISABLED";
    
endmodule
//
// Verilog Description of module ctrlword_595
//

module ctrlword_595 (clk_in_c, \ctrlword_595_5_15__N_654[3] , \ctrlword_595_5[6] , 
            sck_c, \ctrlword_595_6_15__N_670[3] , \ctrlword_595_6[6] , 
            \ctrlword_595_4_15__N_630[1] , hundreds_1__N_558, \ctrlword_595_3[13] , 
            \ctrlword_595_4_15__N_638[7] , GND_net, \ctrlword_595_4_15__N_638[3] , 
            \ctrlword_595_3[6] , \ctrlword_595_3[7] , \ctrlword_595_3[1] , 
            \ctrlword_595_3[2] , \ctrlword_595_5_15__N_654[2] , \ctrlword_595_5_15__N_646[2] , 
            \ctrlword_595_2[5] , \ctrlword_595_2[1] , \ctrlword_595_2[2] , 
            din_c, \ctrlword_595_4_15__N_638[1] , \ctrlword_595_5[4] , 
            \ctrlword_595_5[5] , n38110, n38116, n38117, \realv_5[0] , 
            \ctrlword_595_1[7] , n38094, n38104, n38105, n38114, n38237, 
            n38249, n38245, \decade[3] , n38240, n38239, n38241, 
            \ctrlword_595_3[5] , rst_n_in_c, rck_c, \ctrlword_595_5_15__N_646[3] , 
            \ctrlword_595_6_15__N_662[2] , n36976, n36975, \ctrlword_595_4_15__N_638[6] , 
            n38098, n38088, n38089, n38097, \ctrlword_595_6_15__N_662[4] , 
            n37124, \ctrlword_595_6_15__N_662[3] , n37933, n37932, \ctrlword_595_3[3] , 
            \ctrlword_595_3[4] , n37900, \ctrlword_595_2[4] , \ctrlword_595_4[4] , 
            \ctrlword_595_2[3] );
    input clk_in_c;
    input \ctrlword_595_5_15__N_654[3] ;
    input \ctrlword_595_5[6] ;
    output sck_c;
    input \ctrlword_595_6_15__N_670[3] ;
    input \ctrlword_595_6[6] ;
    input \ctrlword_595_4_15__N_630[1] ;
    input hundreds_1__N_558;
    input \ctrlword_595_3[13] ;
    input \ctrlword_595_4_15__N_638[7] ;
    input GND_net;
    input \ctrlword_595_4_15__N_638[3] ;
    input \ctrlword_595_3[6] ;
    input \ctrlword_595_3[7] ;
    input \ctrlword_595_3[1] ;
    input \ctrlword_595_3[2] ;
    input \ctrlword_595_5_15__N_654[2] ;
    input \ctrlword_595_5_15__N_646[2] ;
    input \ctrlword_595_2[5] ;
    input \ctrlword_595_2[1] ;
    input \ctrlword_595_2[2] ;
    output din_c;
    input \ctrlword_595_4_15__N_638[1] ;
    input \ctrlword_595_5[4] ;
    input \ctrlword_595_5[5] ;
    input n38110;
    input n38116;
    input n38117;
    input \realv_5[0] ;
    input \ctrlword_595_1[7] ;
    input n38094;
    input n38104;
    input n38105;
    input n38114;
    input n38237;
    input n38249;
    input n38245;
    input \decade[3] ;
    input n38240;
    input n38239;
    input n38241;
    input \ctrlword_595_3[5] ;
    input rst_n_in_c;
    output rck_c;
    input \ctrlword_595_5_15__N_646[3] ;
    input \ctrlword_595_6_15__N_662[2] ;
    input n36976;
    input n36975;
    input \ctrlword_595_4_15__N_638[6] ;
    input n38098;
    input n38088;
    input n38089;
    input n38097;
    input \ctrlword_595_6_15__N_662[4] ;
    input n37124;
    input \ctrlword_595_6_15__N_662[3] ;
    input n37933;
    input n37932;
    input \ctrlword_595_3[3] ;
    input \ctrlword_595_3[4] ;
    input n37900;
    input \ctrlword_595_2[4] ;
    input \ctrlword_595_4[4] ;
    input \ctrlword_595_2[3] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    
    wire n38438;
    wire [15:0]n419;
    
    wire n38437, n4003;
    wire [15:0]n33;
    
    wire clk_in_c_enable_128, n10774, shift_clock_ls, sck_N_773;
    wire [2:0]codeword_partnum;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(32[9:25])
    
    wire n7834;
    wire [2:0]n12;
    
    wire n10355, n38865, n38861, n38866, n32630;
    wire [31:0]shift_clock_cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(26[9:24])
    wire [1:0]n13;
    
    wire n38862, n13890;
    wire [0:0]n3785;
    
    wire n36012, n10768, n10769;
    wire [0:0]n3705;
    
    wire din_N_770, din_N_763, n13635, n35421, n39793, n36141, n38864, 
        n37901, n13489, n38408, din_N_768, n10775, n37186, n13492, 
        n37093, n32869, din_N_769, n37209, n13548, n36965, n37092, 
        n36964, n13494, clk_in_c_enable_53, n3, n35047, n37208, 
        n35948, n37206, n35950, n37207, n36143, n38863, n10308, 
        n10309, n38025, n38024, n36011, n38494, n37205, n36977, 
        n36978, n36972, n37899, n37910, n37185, n10356, n36973, 
        n36974, n37930, n37183, n37184, n37931, n37934, n37935, 
        n37182;
    wire [15:0]ctrlword_595_6;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(37[10:24])
    wire [15:0]ctrlword_595_5;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(36[10:24])
    
    wire n10, n36142, n1, n13893, n35972, n3_adj_1370, n11265, 
        n33210, n17945, n36009, n36010;
    wire [0:0]n3994;
    
    wire n36005, n36006, n36007;
    wire [0:0]n3674;
    
    wire n32787, n38397, n35936, n13891, n13892;
    
    LUT4 i4_4_lut (.A(n38438), .B(n419[9]), .C(n419[10]), .D(n38437), 
         .Z(n4003)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i4_4_lut.init = 16'hfffe;
    FD1P3AY shift_cnt_FSM__i0 (.D(n419[15]), .SP(clk_in_c_enable_128), .CK(clk_in_c), 
            .Q(n33[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i0.GSR = "ENABLED";
    PFUMX i7639 (.BLUT(\ctrlword_595_5_15__N_654[3] ), .ALUT(\ctrlword_595_5[6] ), 
          .C0(n419[6]), .Z(n10774));
    FD1S3AX shift_clock_ls_60 (.D(sck_c), .CK(clk_in_c), .Q(shift_clock_ls)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(69[3] 71[10])
    defparam shift_clock_ls_60.GSR = "DISABLED";
    FD1S3AY shift_clock_59 (.D(sck_N_773), .CK(clk_in_c), .Q(sck_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(53[3] 62[10])
    defparam shift_clock_59.GSR = "ENABLED";
    FD1S3IX codeword_partnum__i0 (.D(n12[0]), .CK(clk_in_c), .CD(n7834), 
            .Q(codeword_partnum[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(106[3] 127[10])
    defparam codeword_partnum__i0.GSR = "DISABLED";
    PFUMX i7228 (.BLUT(\ctrlword_595_6_15__N_670[3] ), .ALUT(\ctrlword_595_6[6] ), 
          .C0(n419[6]), .Z(n10355));
    PFUMX i34650 (.BLUT(n38865), .ALUT(n38861), .C0(n419[7]), .Z(n38866));
    LUT4 n37901_bdd_4_lut (.A(\ctrlword_595_4_15__N_630[1] ), .B(hundreds_1__N_558), 
         .C(\ctrlword_595_3[13] ), .D(\ctrlword_595_4_15__N_638[7] ), .Z(n38861)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam n37901_bdd_4_lut.init = 16'hefe0;
    CCU2D shift_clock_cnt_4443_4444_add_4_3 (.A0(shift_clock_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32630), .S0(n13[1]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(57[21:36])
    defparam shift_clock_cnt_4443_4444_add_4_3.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_4443_4444_add_4_3.INIT1 = 16'h0000;
    defparam shift_clock_cnt_4443_4444_add_4_3.INJECT1_0 = "NO";
    defparam shift_clock_cnt_4443_4444_add_4_3.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_4443_4444_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[0]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .COUT(n32630), .S1(n13[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(57[21:36])
    defparam shift_clock_cnt_4443_4444_add_4_1.INIT0 = 16'hF000;
    defparam shift_clock_cnt_4443_4444_add_4_1.INIT1 = 16'h0555;
    defparam shift_clock_cnt_4443_4444_add_4_1.INJECT1_0 = "NO";
    defparam shift_clock_cnt_4443_4444_add_4_1.INJECT1_1 = "NO";
    LUT4 n36143_bdd_4_lut_35036 (.A(\ctrlword_595_4_15__N_638[3] ), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(hundreds_1__N_558), .D(\ctrlword_595_3[13] ), .Z(n38862)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (D)+!B (C (D)))) */ ;
    defparam n36143_bdd_4_lut_35036.init = 16'hfcaa;
    LUT4 i10602_3_lut (.A(\ctrlword_595_3[6] ), .B(\ctrlword_595_3[7] ), 
         .C(n419[7]), .Z(n13890)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(113[35:44])
    defparam i10602_3_lut.init = 16'hcaca;
    LUT4 mux_1907_i1_3_lut (.A(\ctrlword_595_3[1] ), .B(\ctrlword_595_3[2] ), 
         .C(n419[2]), .Z(n3785[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(113[35:44])
    defparam mux_1907_i1_3_lut.init = 16'hcaca;
    LUT4 i32706_3_lut (.A(\ctrlword_595_5_15__N_654[2] ), .B(\ctrlword_595_5_15__N_646[2] ), 
         .C(\ctrlword_595_3[13] ), .Z(n36012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32706_3_lut.init = 16'hcaca;
    LUT4 i7635_3_lut (.A(n10768), .B(\ctrlword_595_2[5] ), .C(n419[5]), 
         .Z(n10769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(112[35:44])
    defparam i7635_3_lut.init = 16'hcaca;
    LUT4 mux_1843_i1_3_lut (.A(\ctrlword_595_2[1] ), .B(\ctrlword_595_2[2] ), 
         .C(n419[2]), .Z(n3705[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(112[35:44])
    defparam mux_1843_i1_3_lut.init = 16'hcaca;
    FD1P3AX din_62 (.D(din_N_763), .SP(din_N_770), .CK(clk_in_c), .Q(din_c));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(106[3] 127[10])
    defparam din_62.GSR = "ENABLED";
    LUT4 n13635_bdd_4_lut (.A(n13635), .B(n419[8]), .C(n35421), .D(n4003), 
         .Z(n39793)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n13635_bdd_4_lut.init = 16'hf0ee;
    LUT4 i32835_3_lut (.A(\ctrlword_595_4_15__N_638[1] ), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(\ctrlword_595_3[13] ), .Z(n36141)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32835_3_lut.init = 16'hcaca;
    LUT4 n37901_bdd_3_lut_4_lut (.A(n419[6]), .B(n419[5]), .C(n38864), 
         .D(n37901), .Z(n38865)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(114[35:44])
    defparam n37901_bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 i18567_2_lut_4_lut (.A(n13489), .B(n38408), .C(n4003), .D(n33[0]), 
         .Z(din_N_768)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i18567_2_lut_4_lut.init = 16'hffca;
    LUT4 i7640_3_lut (.A(\ctrlword_595_5[4] ), .B(\ctrlword_595_5[5] ), 
         .C(n419[5]), .Z(n10775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(115[35:44])
    defparam i7640_3_lut.init = 16'hcaca;
    LUT4 i18680_2_lut (.A(n37186), .B(n419[8]), .Z(n13492)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(116[35:44])
    defparam i18680_2_lut.init = 16'heeee;
    LUT4 realv_5_3__bdd_4_lut_33807 (.A(n38110), .B(n38116), .C(n38117), 
         .D(\realv_5[0] ), .Z(n37093)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam realv_5_3__bdd_4_lut_33807.init = 16'hd6ef;
    LUT4 i2_4_lut (.A(n4003), .B(\ctrlword_595_1[7] ), .C(n419[8]), .D(n32869), 
         .Z(din_N_769)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(111[35:44])
    defparam i2_4_lut.init = 16'hfefa;
    LUT4 i18652_2_lut (.A(n37209), .B(n419[8]), .Z(n13548)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(115[35:44])
    defparam i18652_2_lut.init = 16'heeee;
    LUT4 realv_4_3__bdd_4_lut_33739 (.A(n38094), .B(n38104), .C(n38105), 
         .D(n38114), .Z(n36965)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam realv_4_3__bdd_4_lut_33739.init = 16'hd6ef;
    LUT4 realv_5_3__bdd_4_lut_33792 (.A(n38237), .B(n38249), .C(n38245), 
         .D(\realv_5[0] ), .Z(n37092)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam realv_5_3__bdd_4_lut_33792.init = 16'hd6fb;
    LUT4 realv_4_3__bdd_4_lut_33687 (.A(\decade[3] ), .B(n38240), .C(n38239), 
         .D(n38241), .Z(n36964)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam realv_4_3__bdd_4_lut_33687.init = 16'hf76b;
    LUT4 i18679_2_lut (.A(n38866), .B(n419[8]), .Z(n13494)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(114[35:44])
    defparam i18679_2_lut.init = 16'heeee;
    FD1P3IX codeword_partnum__i1 (.D(n3), .SP(clk_in_c_enable_53), .CD(n7834), 
            .CK(clk_in_c), .Q(codeword_partnum[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(106[3] 127[10])
    defparam codeword_partnum__i1.GSR = "DISABLED";
    FD1P3IX codeword_partnum__i2 (.D(n35047), .SP(clk_in_c_enable_53), .CD(n7834), 
            .CK(clk_in_c), .Q(codeword_partnum[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(106[3] 127[10])
    defparam codeword_partnum__i2.GSR = "DISABLED";
    PFUMX i33868 (.BLUT(n37208), .ALUT(n10775), .C0(n35948), .Z(n37209));
    L6MUX21 i33866 (.D0(n37206), .D1(n10774), .SD(n35950), .Z(n37207));
    LUT4 n36143_bdd_3_lut_35037 (.A(n36143), .B(n38862), .C(n419[3]), 
         .Z(n38863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n36143_bdd_3_lut_35037.init = 16'hcaca;
    LUT4 din_I_48_2_lut (.A(sck_c), .B(shift_clock_ls), .Z(din_N_770)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(109[8:46])
    defparam din_I_48_2_lut.init = 16'h4444;
    LUT4 i7185_3_lut (.A(n10308), .B(\ctrlword_595_3[5] ), .C(n419[5]), 
         .Z(n10309)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(113[35:44])
    defparam i7185_3_lut.init = 16'hcaca;
    PFUMX i34394 (.BLUT(n38025), .ALUT(n38024), .C0(\ctrlword_595_3[13] ), 
          .Z(n36011));
    LUT4 i3_4_lut (.A(clk_in_c_enable_53), .B(codeword_partnum[0]), .C(codeword_partnum[1]), 
         .D(codeword_partnum[2]), .Z(n7834)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    FD1S3IX shift_clock_cnt_4443_4444__i2 (.D(n13[1]), .CK(clk_in_c), .CD(n38494), 
            .Q(shift_clock_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(57[21:36])
    defparam shift_clock_cnt_4443_4444__i2.GSR = "ENABLED";
    LUT4 i18283_2_lut (.A(n33[0]), .B(rst_n_in_c), .Z(rck_c)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(93[3] 99[10])
    defparam i18283_2_lut.init = 16'h8888;
    PFUMX i33864 (.BLUT(n37205), .ALUT(\ctrlword_595_5_15__N_646[3] ), .C0(n419[3]), 
          .Z(n37206));
    L6MUX21 i33698 (.D0(n36977), .D1(\ctrlword_595_6_15__N_662[2] ), .SD(\ctrlword_595_3[13] ), 
            .Z(n36978));
    LUT4 i6963_2_lut (.A(codeword_partnum[0]), .B(clk_in_c_enable_53), .Z(n12[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(106[3] 127[10])
    defparam i6963_2_lut.init = 16'h6666;
    LUT4 realv_5_3__bdd_4_lut_33692 (.A(n38245), .B(n38237), .C(\realv_5[0] ), 
         .D(n38249), .Z(n36972)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C+!(D))+!B (D))) */ ;
    defparam realv_5_3__bdd_4_lut_33692.init = 16'hdbee;
    LUT4 i3_4_lut_adj_93 (.A(sck_c), .B(rst_n_in_c), .C(n419[15]), .D(shift_clock_ls), 
         .Z(clk_in_c_enable_53)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(109[8:46])
    defparam i3_4_lut_adj_93.init = 16'h4000;
    LUT4 i3282_2_lut (.A(codeword_partnum[0]), .B(codeword_partnum[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(123[25:41])
    defparam i3282_2_lut.init = 16'h6666;
    LUT4 i15_3_lut (.A(codeword_partnum[0]), .B(codeword_partnum[2]), .C(codeword_partnum[1]), 
         .Z(n35047)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(123[25:41])
    defparam i15_3_lut.init = 16'h6c6c;
    PFUMX i33696 (.BLUT(n36976), .ALUT(n36975), .C0(n38110), .Z(n36977));
    LUT4 ctrlword_595_4_15__N_638_5__bdd_2_lut (.A(\ctrlword_595_4_15__N_638[6] ), 
         .B(\ctrlword_595_3[13] ), .Z(n37899)) /* synthesis lut_function=(A+(B)) */ ;
    defparam ctrlword_595_4_15__N_638_5__bdd_2_lut.init = 16'heeee;
    LUT4 hundreds_1__N_558_bdd_4_lut (.A(n38098), .B(n38088), .C(n38089), 
         .D(n38097), .Z(n37910)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A (B+((D)+!C))) */ ;
    defparam hundreds_1__N_558_bdd_4_lut.init = 16'hd7cd;
    PFUMX i33852 (.BLUT(n37185), .ALUT(n10356), .C0(n35948), .Z(n37186));
    PFUMX i33693 (.BLUT(n36973), .ALUT(n36972), .C0(\ctrlword_595_3[13] ), 
          .Z(n36974));
    LUT4 n430_bdd_3_lut (.A(n419[5]), .B(\ctrlword_595_6_15__N_662[4] ), 
         .C(n37124), .Z(n37930)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n430_bdd_3_lut.init = 16'he4e4;
    LUT4 realv_5_3__bdd_4_lut_33789 (.A(n38110), .B(n38116), .C(n38117), 
         .D(\realv_5[0] ), .Z(n36973)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam realv_5_3__bdd_4_lut_33789.init = 16'hbede;
    L6MUX21 i33850 (.D0(n37183), .D1(n10355), .SD(n35950), .Z(n37184));
    LUT4 n430_bdd_4_lut (.A(n38110), .B(n38117), .C(n38116), .D(\realv_5[0] ), 
         .Z(n37931)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam n430_bdd_4_lut.init = 16'h7f67;
    LUT4 n37934_bdd_3_lut (.A(n37934), .B(n37931), .C(n419[5]), .Z(n37935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37934_bdd_3_lut.init = 16'hcaca;
    LUT4 n36978_bdd_3_lut_34353 (.A(n36978), .B(n36974), .C(n419[2]), 
         .Z(n37182)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n36978_bdd_3_lut_34353.init = 16'hacac;
    LUT4 n37184_bdd_3_lut (.A(n37184), .B(ctrlword_595_6[7]), .C(n419[7]), 
         .Z(n37185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37184_bdd_3_lut.init = 16'hcaca;
    PFUMX i33848 (.BLUT(n37182), .ALUT(\ctrlword_595_6_15__N_662[3] ), .C0(n419[3]), 
          .Z(n37183));
    PFUMX i34317 (.BLUT(n37935), .ALUT(n37930), .C0(\ctrlword_595_3[13] ), 
          .Z(n10356));
    LUT4 n36012_bdd_3_lut_34292 (.A(n36012), .B(n36011), .C(n419[2]), 
         .Z(n37205)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n36012_bdd_3_lut_34292.init = 16'hacac;
    PFUMX i34315 (.BLUT(n37933), .ALUT(n37932), .C0(n38110), .Z(n37934));
    LUT4 realv_4_3__bdd_4_lut_34396 (.A(n38094), .B(n38104), .C(n38105), 
         .D(n38114), .Z(n38025)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam realv_4_3__bdd_4_lut_34396.init = 16'hbede;
    FD1S3IX shift_clock_cnt_4443_4444__i1 (.D(n13[0]), .CK(clk_in_c), .CD(n38494), 
            .Q(shift_clock_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(57[21:36])
    defparam shift_clock_cnt_4443_4444__i1.GSR = "ENABLED";
    LUT4 n37207_bdd_3_lut (.A(n37207), .B(ctrlword_595_5[7]), .C(n419[7]), 
         .Z(n37208)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37207_bdd_3_lut.init = 16'hcaca;
    LUT4 realv_4_3__bdd_4_lut_34393 (.A(\decade[3] ), .B(n38239), .C(n38240), 
         .D(n38241), .Z(n38024)) /* synthesis lut_function=(A ((C+(D))+!B)+!A !(B (C (D))+!B !(D))) */ ;
    defparam realv_4_3__bdd_4_lut_34393.init = 16'hbfe6;
    LUT4 i5_3_lut (.A(n419[7]), .B(n10), .C(n419[5]), .Z(n32869)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(111[35:44])
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i4_4_lut_adj_94 (.A(n419[6]), .B(n419[4]), .C(n419[3]), .D(n419[2]), 
         .Z(n10)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(111[35:44])
    defparam i4_4_lut_adj_94.init = 16'hfffe;
    LUT4 i7184_3_lut (.A(\ctrlword_595_3[3] ), .B(\ctrlword_595_3[4] ), 
         .C(n419[4]), .Z(n10308)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(113[35:44])
    defparam i7184_3_lut.init = 16'hcaca;
    PFUMX i34299 (.BLUT(n37910), .ALUT(hundreds_1__N_558), .C0(\ctrlword_595_3[13] ), 
          .Z(n36142));
    PFUMX codeword_partnum_2__I_0_i1 (.BLUT(din_N_769), .ALUT(din_N_768), 
          .C0(codeword_partnum[0]), .Z(n1)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;
    PFUMX i34290 (.BLUT(n37900), .ALUT(n37899), .C0(n419[6]), .Z(n37901));
    LUT4 i18681_4_lut (.A(n13893), .B(n419[8]), .C(\ctrlword_595_2[4] ), 
         .D(n419[7]), .Z(n13489)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(112[35:44])
    defparam i18681_4_lut.init = 16'hfcee;
    LUT4 i33539_2_lut (.A(codeword_partnum[2]), .B(codeword_partnum[1]), 
         .Z(n35972)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(110[5] 118[14])
    defparam i33539_2_lut.init = 16'heeee;
    PFUMX i33688 (.BLUT(n36965), .ALUT(n36964), .C0(\ctrlword_595_3[13] ), 
          .Z(ctrlword_595_5[7]));
    LUT4 i32642_4_lut (.A(n419[7]), .B(n419[6]), .C(n419[5]), .D(n419[4]), 
         .Z(n35948)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(116[35:44])
    defparam i32642_4_lut.init = 16'h1110;
    L6MUX21 codeword_partnum_2__I_0_i7 (.D0(n1), .D1(n3_adj_1370), .SD(n35972), 
            .Z(din_N_763)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;
    PFUMX codeword_partnum_2__I_0_i3 (.BLUT(n11265), .ALUT(n33210), .C0(codeword_partnum[2]), 
          .Z(n3_adj_1370)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=15, LSE_RCOL=27, LSE_LLINE=138, LSE_RLINE=138 */ ;
    FD1P3IX shift_cnt_FSM__i1 (.D(n33[0]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[1]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i1.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i2 (.D(n419[1]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i2.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i3 (.D(n419[2]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[3]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i3.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i4 (.D(n419[3]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i4.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i5 (.D(n419[4]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[5]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i5.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i9 (.D(n419[8]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[9]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i9.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i8 (.D(n419[7]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i8.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i7 (.D(n419[6]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[7]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i7.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i6 (.D(n419[5]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i6.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i10 (.D(n419[9]), .SP(clk_in_c_enable_128), .CD(n17945), 
            .CK(clk_in_c), .Q(n419[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i10.GSR = "ENABLED";
    L6MUX21 i32704 (.D0(n39793), .D1(n36009), .SD(codeword_partnum[0]), 
            .Z(n36010));
    PFUMX i32703 (.BLUT(n13494), .ALUT(n3994[0]), .C0(n4003), .Z(n36009));
    PFUMX i33793 (.BLUT(n37093), .ALUT(n37092), .C0(\ctrlword_595_3[13] ), 
          .Z(ctrlword_595_6[7]));
    L6MUX21 i32701 (.D0(n36005), .D1(n36006), .SD(codeword_partnum[0]), 
            .Z(n36007));
    PFUMX i32699 (.BLUT(n13548), .ALUT(n3674[0]), .C0(n4003), .Z(n36005));
    LUT4 n38863_bdd_3_lut (.A(n38863), .B(\ctrlword_595_4[4] ), .C(n419[4]), 
         .Z(n38864)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38863_bdd_3_lut.init = 16'hcaca;
    FD1P3IX shift_cnt_FSM__i11 (.D(n419[10]), .SP(clk_in_c_enable_128), 
            .CD(n17945), .CK(clk_in_c), .Q(n419[11]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i11.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i12 (.D(n419[11]), .SP(clk_in_c_enable_128), 
            .CD(n17945), .CK(clk_in_c), .Q(n419[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i12.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i13 (.D(n419[12]), .SP(clk_in_c_enable_128), 
            .CD(n17945), .CK(clk_in_c), .Q(n419[13]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i13.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i14 (.D(n419[13]), .SP(clk_in_c_enable_128), 
            .CD(n17945), .CK(clk_in_c), .Q(n419[14]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i14.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i15 (.D(n419[14]), .SP(clk_in_c_enable_128), 
            .CD(n17945), .CK(clk_in_c), .Q(n419[15]));   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam shift_cnt_FSM__i15.GSR = "ENABLED";
    PFUMX i32700 (.BLUT(n13492), .ALUT(n32787), .C0(n4003), .Z(n36006));
    LUT4 i7634_3_lut (.A(\ctrlword_595_2[3] ), .B(\ctrlword_595_2[4] ), 
         .C(n419[4]), .Z(n10768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(112[35:44])
    defparam i7634_3_lut.init = 16'hcaca;
    LUT4 i33598_3_lut_rep_650_3_lut (.A(n419[3]), .B(n419[4]), .C(n419[5]), 
         .Z(n38397)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i33598_3_lut_rep_650_3_lut.init = 16'hfefe;
    LUT4 i32630_2_lut_4_lut_4_lut (.A(n419[3]), .B(n419[6]), .C(n419[4]), 
         .D(n419[5]), .Z(n35936)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i32630_2_lut_4_lut_4_lut.init = 16'h3332;
    LUT4 i2_3_lut_rep_690 (.A(n419[14]), .B(n419[13]), .C(n419[15]), .Z(n38437)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(111[35:44])
    defparam i2_3_lut_rep_690.init = 16'hfefe;
    PFUMX i32837 (.BLUT(n36141), .ALUT(n36142), .C0(n419[2]), .Z(n36143));
    LUT4 i18604_2_lut_2_lut_4_lut (.A(n419[14]), .B(n419[13]), .C(n419[15]), 
         .D(n419[12]), .Z(n3994[0])) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(111[35:44])
    defparam i18604_2_lut_2_lut_4_lut.init = 16'hfeff;
    LUT4 i2031_2_lut_rep_691 (.A(n419[12]), .B(n419[11]), .Z(n38438)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i2031_2_lut_rep_691.init = 16'heeee;
    LUT4 i18557_3_lut_3_lut_3_lut (.A(n419[12]), .B(n419[11]), .C(n38437), 
         .Z(n3674[0])) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i18557_3_lut_3_lut_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_4_lut (.A(n419[12]), .B(n419[11]), .C(n419[10]), .D(n38437), 
         .Z(n32787)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i2_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_661_3_lut (.A(\ctrlword_595_3[13] ), .B(n419[15]), 
         .C(n419[14]), .Z(n38408)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_661_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_4_lut_adj_95 (.A(\ctrlword_595_3[13] ), .B(n419[15]), 
         .C(n419[14]), .D(n419[13]), .Z(n35421)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_95.init = 16'hfeff;
    LUT4 i33475_2_lut_rep_747 (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[1]), 
         .Z(n38494)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(58[8:25])
    defparam i33475_2_lut_rep_747.init = 16'h4444;
    LUT4 i1_2_lut_3_lut (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[1]), 
         .C(sck_c), .Z(sck_N_773)) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(58[8:25])
    defparam i1_2_lut_3_lut.init = 16'hb4b4;
    LUT4 i33058_4_lut_4_lut_4_lut (.A(n419[6]), .B(n3785[0]), .C(n13890), 
         .D(n419[7]), .Z(n13891)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i33058_4_lut_4_lut_4_lut.init = 16'hf0e4;
    LUT4 i33578_2_lut_3_lut (.A(n419[3]), .B(\ctrlword_595_3[13] ), .C(n419[6]), 
         .Z(n35950)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(116[35:44])
    defparam i33578_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i19051_2_lut_2_lut (.A(n33[0]), .B(n36010), .Z(n11265)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i19051_2_lut_2_lut.init = 16'h4444;
    LUT4 i2_3_lut_3_lut_3_lut (.A(n33[0]), .B(n36007), .C(codeword_partnum[1]), 
         .Z(n33210)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(84[17:26])
    defparam i2_3_lut_3_lut_3_lut.init = 16'h0404;
    LUT4 i18475_2_lut (.A(n13892), .B(n419[6]), .Z(n13893)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(112[35:44])
    defparam i18475_2_lut.init = 16'heeee;
    PFUMX i10604 (.BLUT(n3705[0]), .ALUT(n10769), .C0(n38397), .Z(n13892));
    LUT4 sck_I_0_73_2_lut_rep_723 (.A(sck_c), .B(shift_clock_ls), .Z(clk_in_c_enable_128)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(80[8:46])
    defparam sck_I_0_73_2_lut_rep_723.init = 16'h2222;
    LUT4 i14563_2_lut_3_lut (.A(sck_c), .B(shift_clock_ls), .C(n419[15]), 
         .Z(n17945)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/ctrlword_595.vhd(80[8:46])
    defparam i14563_2_lut_3_lut.init = 16'h2020;
    LUT4 i33062_4_lut (.A(n10309), .B(n13891), .C(n419[7]), .D(n35936), 
         .Z(n13635)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i33062_4_lut.init = 16'hcacc;
    
endmodule
//
// Verilog Description of module ADC
//

module ADC (cnt_write, sda_out_N_166, n715, rst_n_in_c, n714, clk_divided_enable_20, 
            n38482, cnt_stop, clk_divided_enable_23, n39818, n38562, 
            clk_in_c, n1440, n35088, n35089, n35087, n9756, clk_divided_N_170, 
            n4167, n38371, n38383, \realv_5[0] , clk_divided_enable_13, 
            n39799, clk_divided_enable_14, n35406, clk_divided_enable_15, 
            n8, \cnt_read[0] , n35408, n4, n38428, sda_out_out, 
            n711, n88, n38563, sda_out_N_189, n38329, n38354, n4140, 
            n35111, n38477, n51, n38323, n38332, n38472, n35518, 
            n38466, n38467, n38456, \scl_out_N_162[2] , n35776, scl_out_c, 
            n38379, n38570, n7, n5, n6, \voltage_code[1] , clk_divided_enable_33, 
            n19656, n19, sda_out_N_190, \voltage_code[2] , \voltage_code[3] , 
            \voltage_code[4] , \voltage_code[5] , \voltage_code[6] , \ADC_level[7] , 
            n38407, n32883, n38491, \scl_out_N_162[1] , GND_net, n38543, 
            n38355);
    output [3:0]cnt_write;
    output sda_out_N_166;
    output n715;
    input rst_n_in_c;
    output n714;
    output clk_divided_enable_20;
    input n38482;
    output [3:0]cnt_stop;
    input clk_divided_enable_23;
    input n39818;
    input n38562;
    input clk_in_c;
    input n1440;
    input n35088;
    input n35089;
    input n35087;
    output n9756;
    output clk_divided_N_170;
    input n4167;
    output n38371;
    output n38383;
    output \realv_5[0] ;
    input clk_divided_enable_13;
    output n39799;
    input clk_divided_enable_14;
    input n35406;
    input clk_divided_enable_15;
    input n8;
    output \cnt_read[0] ;
    input n35408;
    output n4;
    output n38428;
    input sda_out_out;
    output n711;
    output n88;
    output n38563;
    input sda_out_N_189;
    output n38329;
    input n38354;
    input n4140;
    output n35111;
    output n38477;
    input n51;
    input n38323;
    output n38332;
    output n38472;
    output n35518;
    output n38466;
    output n38467;
    output n38456;
    output \scl_out_N_162[2] ;
    output n35776;
    output scl_out_c;
    output n38379;
    input n38570;
    input n7;
    output n5;
    input n6;
    output \voltage_code[1] ;
    input clk_divided_enable_33;
    input n19656;
    output n19;
    output sda_out_N_190;
    output \voltage_code[2] ;
    output \voltage_code[3] ;
    output \voltage_code[4] ;
    output \voltage_code[5] ;
    output \voltage_code[6] ;
    output \ADC_level[7] ;
    output n38407;
    output n32883;
    output n38491;
    output \scl_out_N_162[1] ;
    input GND_net;
    output n38543;
    output n38355;
    
    wire clk_divided /* synthesis is_clock=1, SET_AS_NETWORK=\ADC_work/clk_divided */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(19[9:20])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(8[3:9])
    
    wire n38384;
    wire [3:0]cnt_main;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(50[11:19])
    
    wire n38425, n38393, sda_out_N_171;
    wire [3:0]cnt_start;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[15:24])
    
    wire clk_divided_enable_7, n35407;
    wire [3:0]cnt;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[11:14])
    
    wire n38396, n38357, n39797;
    wire [3:0]n239;
    
    wire n14545, clk_divided_enable_35, clk_divided_enable_40, clk_divided_enable_36, 
        clk_divided_enable_39, clk_divided_enable_34;
    wire [7:0]data_write;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(48[11:21])
    
    wire clk_divided_enable_2, n38368;
    wire [3:0]cnt_3__N_91;
    
    wire n32803, n37424, n20348;
    wire [7:0]n707;
    
    wire n37425, clk_divided_enable_38, n38392;
    wire [13:0]cnt_divided;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(27[11:22])
    wire [13:0]n61;
    
    wire n37422, n37421, n37423, n35090, n35092;
    wire [4:0]cnt_read;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(51[11:19])
    
    wire clk_divided_enable_11, n35091, clk_divided_enable_37, n39801, 
        n37163, n17932, sda_out_N_167, clk_divided_N_169, n4_c, n38486, 
        n38465, n17921, n35665, n35661, clk_divided_enable_16, n32761, 
        n38327, n38358, n35825, n37581, n38365, n38301, n22734, 
        n37856, n10729, n37858, n38559, n38326, n15188, n39800, 
        n37510, n39817, n38580, n23, n38590, n37571, n38367, sda_out_N_182, 
        n4_adj_1356, n38381, n9, n38581;
    wire [3:0]cnt_write_c;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[25:34])
    
    wire n5_c, n38328, n6_c, n37730;
    wire [0:0]n4044;
    
    wire n37731, n38330, clk_divided_enable_18, n38338, n29, n27, 
        n35273, n22, n38344, n38343, n36511, n38346, n17460;
    wire [3:0]n1299;
    
    wire n34663, n10263, n10265, n10267, n10269, n10728, n35324, 
        n37732, n37854;
    wire [3:0]n174;
    
    wire n20309, n20, n2, n38305, n4_adj_1357, n729, n8_adj_1358, 
        n38306, n23_adj_1359, n13, n4_adj_1360, n15, n10726, n730, 
        n12, n35116, n35354, n37164, n38333, n38331, n35114, n35821, 
        n39806, n10, n7_c, n8_adj_1361, n35334, n6_adj_1362, n8_adj_1363, 
        n35705, n38385, n38582, n32719, n36486, clk_divided_enable_21, 
        n32739, n38300, n13970, n17;
    wire [7:0]ADC_level_r;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(47[11:22])
    
    wire n13_adj_1364, clk_divided_enable_26, n35926, clk_divided_enable_22, 
        scl_out_N_143, n38380, n37855, n38334, n522, n37853, n39802, 
        n37745, n39816, n38490, n16, n32661, n32898, n32755, n6_adj_1368, 
        n35680, n20344, n38412, n38429, n38471, n37859, n32620, 
        n32619, n32618, n32617, n32616, n32615, n32614, n6_adj_1369, 
        n37420;
    
    LUT4 i32479_2_lut_rep_637_3_lut_4_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), 
         .C(cnt_write[2]), .Z(n38384)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i32479_2_lut_rep_637_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i5083_2_lut_rep_678_3_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n38425)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5083_2_lut_rep_678_3_lut.init = 16'h8080;
    LUT4 i5119_2_lut_rep_646_3_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(cnt_main[3]), .D(cnt_main[2]), .Z(n38393)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i5119_2_lut_rep_646_3_lut_4_lut.init = 16'h78f0;
    FD1S3AX sda_out_r_155 (.D(sda_out_N_171), .CK(clk_divided), .Q(sda_out_N_166)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam sda_out_r_155.GSR = "DISABLED";
    FD1P3AX cnt_start__i0 (.D(n35407), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_start__i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_671_3_lut (.A(n715), .B(rst_n_in_c), .C(n714), .Z(clk_divided_enable_20)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam i1_2_lut_rep_671_3_lut.init = 16'hfbfb;
    LUT4 i19174_2_lut_rep_649_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n38396)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam i19174_2_lut_rep_649_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i18240_2_lut_rep_610_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(cnt_main[3]), .D(cnt_main[2]), .Z(n38357)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;
    defparam i18240_2_lut_rep_610_3_lut_4_lut_4_lut.init = 16'hfdf5;
    LUT4 i33574_2_lut_2_lut_4_lut (.A(n39797), .B(n239[2]), .C(n14545), 
         .D(n239[1]), .Z(clk_divided_enable_35)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33574_2_lut_2_lut_4_lut.init = 16'h0002;
    LUT4 i33562_3_lut_3_lut_4_lut (.A(n14545), .B(n39797), .C(n239[2]), 
         .D(n239[1]), .Z(clk_divided_enable_40)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33562_3_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i33571_2_lut_2_lut_3_lut_4_lut (.A(n14545), .B(n39797), .C(n239[1]), 
         .D(n239[2]), .Z(clk_divided_enable_36)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33571_2_lut_2_lut_3_lut_4_lut.init = 16'h0010;
    LUT4 i33564_2_lut_2_lut_4_lut (.A(n14545), .B(n239[1]), .C(n239[2]), 
         .D(n39797), .Z(clk_divided_enable_39)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33564_2_lut_2_lut_4_lut.init = 16'h1000;
    LUT4 i33577_2_lut_2_lut_3_lut_4_lut (.A(n14545), .B(n39797), .C(n239[1]), 
         .D(n239[2]), .Z(clk_divided_enable_34)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33577_2_lut_2_lut_3_lut_4_lut.init = 16'h0001;
    FD1P3AX data_write__i0 (.D(n38368), .SP(clk_divided_enable_2), .CK(clk_divided), 
            .Q(data_write[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam data_write__i0.GSR = "DISABLED";
    FD1S3IX cnt__i0 (.D(cnt_3__N_91[0]), .CK(clk_divided), .CD(n38482), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt__i0.GSR = "DISABLED";
    FD1S3JX state_FSM_i1 (.D(n32803), .CK(clk_divided), .PD(n38482), .Q(n715));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i1.GSR = "DISABLED";
    PFUMX i34009 (.BLUT(n37424), .ALUT(n20348), .C0(n707[5]), .Z(n37425));
    LUT4 i33567_2_lut_2_lut_4_lut (.A(n14545), .B(n239[1]), .C(n239[2]), 
         .D(n39797), .Z(clk_divided_enable_38)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33567_2_lut_2_lut_4_lut.init = 16'h0010;
    FD1P3AX cnt_stop__i3 (.D(n39818), .SP(clk_divided_enable_23), .CK(clk_divided), 
            .Q(cnt_stop[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_stop__i3.GSR = "DISABLED";
    FD1P3AX cnt_stop__i2 (.D(n38562), .SP(clk_divided_enable_23), .CK(clk_divided), 
            .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_stop__i2.GSR = "DISABLED";
    LUT4 i10499_2_lut_rep_645_3_lut_2_lut (.A(cnt_main[0]), .B(cnt_main[2]), 
         .Z(n38392)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i10499_2_lut_rep_645_3_lut_2_lut.init = 16'h4444;
    FD1S3IX cnt_divided_4440__i0 (.D(n61[0]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i0.GSR = "DISABLED";
    FD1P3AX cnt_start__i3 (.D(n39818), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_start[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_start__i3.GSR = "DISABLED";
    PFUMX i34007 (.BLUT(n37422), .ALUT(n37421), .C0(n707[3]), .Z(n37423));
    FD1P3AX cnt_start__i2 (.D(n35090), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_start__i2.GSR = "DISABLED";
    FD1P3AX cnt_start__i1 (.D(n35092), .SP(clk_divided_enable_7), .CK(clk_divided), 
            .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_start__i1.GSR = "DISABLED";
    FD1P3AX cnt_read__i4 (.D(n35088), .SP(clk_divided_enable_11), .CK(clk_divided), 
            .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_read__i4.GSR = "DISABLED";
    FD1P3AX cnt_read__i3 (.D(n35091), .SP(clk_divided_enable_11), .CK(clk_divided), 
            .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_read__i3.GSR = "DISABLED";
    FD1P3AX cnt_read__i2 (.D(n35089), .SP(clk_divided_enable_11), .CK(clk_divided), 
            .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_read__i2.GSR = "DISABLED";
    LUT4 i18361_2_lut_rep_621_3_lut_3_lut_4_lut_3_lut_4_lut (.A(cnt_main[0]), 
         .B(cnt_main[1]), .C(cnt_main[3]), .D(cnt_main[2]), .Z(n38368)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i18361_2_lut_rep_621_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hfff8;
    FD1P3AX cnt_read__i1 (.D(n35087), .SP(clk_divided_enable_11), .CK(clk_divided), 
            .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_read__i1.GSR = "DISABLED";
    FD1P3AX cnt_main__i3 (.D(n39818), .SP(clk_divided_enable_20), .CK(clk_divided), 
            .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_main__i3.GSR = "DISABLED";
    LUT4 i33569_2_lut_2_lut_4_lut (.A(n39797), .B(n239[2]), .C(n14545), 
         .D(n239[1]), .Z(clk_divided_enable_37)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33569_2_lut_2_lut_4_lut.init = 16'h0200;
    LUT4 n713_bdd_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(n39801), .D(n38393), .Z(n37163)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(82[20:28])
    defparam n713_bdd_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i14530_2_lut_3_lut_4_lut_3_lut (.A(n714), .B(rst_n_in_c), .C(n715), 
         .Z(n17932)) /* synthesis lut_function=(!(A (B)+!A !((C)+!B))) */ ;
    defparam i14530_2_lut_3_lut_4_lut_3_lut.init = 16'h7373;
    LUT4 i6663_1_lut (.A(sda_out_N_167), .Z(n9756)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(44[2] 192[15])
    defparam i6663_1_lut.init = 16'h5555;
    LUT4 clk_divided_I_0_2_lut (.A(clk_divided), .B(clk_divided_N_170), 
         .Z(clk_divided_N_169)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(31[4] 39[11])
    defparam clk_divided_I_0_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(n4167), 
         .D(n38371), .Z(n4_c)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h6000;
    FD1S3IX temp_divided_153 (.D(clk_divided_N_169), .CK(clk_in_c), .CD(n38482), 
            .Q(clk_divided));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(30[3] 40[10])
    defparam temp_divided_153.GSR = "DISABLED";
    LUT4 i5112_2_lut_rep_739 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[2]), 
         .Z(n38486)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(C)) */ ;
    defparam i5112_2_lut_rep_739.init = 16'h8787;
    LUT4 i10625_3_lut_rep_636_4_lut (.A(cnt_read[2]), .B(n38465), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n38383)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i10625_3_lut_rep_636_4_lut.init = 16'h7f80;
    LUT4 i33620_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut_4_lut_3_lut (.A(cnt_main[0]), 
         .B(cnt_main[1]), .C(cnt_main[3]), .Z(n17921)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i33620_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h0202;
    LUT4 i33435_4_lut (.A(rst_n_in_c), .B(n35665), .C(n35661), .D(n714), 
         .Z(clk_divided_enable_16)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i33435_4_lut.init = 16'hf5dd;
    FD1P3AX ADC_level__i1 (.D(n32761), .SP(clk_divided_enable_13), .CK(clk_divided), 
            .Q(\realv_5[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_580_3_lut_4_lut (.A(cnt_read[2]), .B(n38465), .C(n39799), 
         .D(cnt_read[3]), .Z(n38327)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_rep_580_3_lut_4_lut.init = 16'h0708;
    LUT4 i1_2_lut_rep_611_4_lut_3_lut_4_lut (.A(cnt_read[2]), .B(n38465), 
         .C(cnt_read[4]), .D(cnt_read[3]), .Z(n38358)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_rep_611_4_lut_3_lut_4_lut.init = 16'h7ff8;
    LUT4 i32575_4_lut_4_lut (.A(n707[5]), .B(n707[2]), .C(n35825), .D(cnt[2]), 
         .Z(cnt_3__N_91[2])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i32575_4_lut_4_lut.init = 16'hfef0;
    FD1P3AX cnt_write__i0 (.D(n35406), .SP(clk_divided_enable_14), .CK(clk_divided), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_write__i0.GSR = "DISABLED";
    FD1P3AX cnt_stop__i0 (.D(n8), .SP(clk_divided_enable_15), .CK(clk_divided), 
            .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_stop__i0.GSR = "DISABLED";
    FD1P3AX cnt_read__i0 (.D(n35408), .SP(clk_divided_enable_16), .CK(clk_divided), 
            .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_read__i0.GSR = "DISABLED";
    LUT4 n11156_bdd_3_lut_4_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), 
         .C(cnt_write[0]), .D(n38371), .Z(n37581)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam n11156_bdd_3_lut_4_lut_4_lut.init = 16'h7e00;
    LUT4 i18362_2_lut_rep_618_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(n38365)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(D))) */ ;
    defparam i18362_2_lut_rep_618_3_lut_4_lut_4_lut.init = 16'hffe6;
    LUT4 i1_2_lut_3_lut_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), 
         .C(\cnt_read[0] ), .D(n39799), .Z(n4)) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_3_lut_3_lut_3_lut_4_lut_4_lut.init = 16'hff42;
    LUT4 i1_2_lut_rep_554_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), 
         .C(\cnt_read[0] ), .D(n39799), .Z(n38301)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_rep_554_3_lut_3_lut_4_lut_4_lut.init = 16'h0042;
    FD1P3IX cnt_main__i0 (.D(n38357), .SP(clk_divided_enable_20), .CD(n17932), 
            .CK(clk_divided), .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_main__i0.GSR = "DISABLED";
    LUT4 n22386_bdd_4_lut_34012_4_lut_4_lut (.A(n38371), .B(n38428), .C(n22734), 
         .D(n4167), .Z(n37421)) /* synthesis lut_function=((B (C (D))+!B ((D)+!C))+!A) */ ;
    defparam n22386_bdd_4_lut_34012_4_lut_4_lut.init = 16'hf757;
    LUT4 sda_out_out_bdd_3_lut_4_lut (.A(sda_out_out), .B(n37856), .C(n711), 
         .D(n10729), .Z(n37858)) /* synthesis lut_function=(!(A (B (C (D))+!B (D))+!A ((C+!(D))+!B))) */ ;
    defparam sda_out_out_bdd_3_lut_4_lut.init = 16'h0caa;
    LUT4 cnt_start_3__bdd_3_lut (.A(cnt_start[3]), .B(cnt_start[2]), .C(cnt_start[1]), 
         .Z(n38559)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;
    defparam cnt_start_3__bdd_3_lut.init = 16'h1414;
    LUT4 i2_3_lut_4_lut (.A(n38326), .B(n38301), .C(n15188), .D(n711), 
         .Z(n88)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i2_3_lut_4_lut.init = 16'h4000;
    LUT4 cnt_main_1__bdd_4_lut_35212 (.A(cnt_main[1]), .B(cnt_main[0]), 
         .C(cnt_main[2]), .D(cnt_main[3]), .Z(n38563)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam cnt_main_1__bdd_4_lut_35212.init = 16'h0008;
    LUT4 n11145_bdd_4_lut_34069 (.A(n38371), .B(n38384), .C(n39800), .D(cnt_write[0]), 
         .Z(n37510)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))) */ ;
    defparam n11145_bdd_4_lut_34069.init = 16'ha2a0;
    LUT4 cnt_main_1__bdd_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(cnt_main[2]), 
         .D(cnt_main[3]), .Z(n39817)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((D)+!B))) */ ;
    defparam cnt_main_1__bdd_4_lut.init = 16'h0046;
    LUT4 i1_4_lut_else_1_lut (.A(n39799), .B(\cnt_read[0] ), .C(cnt_read[1]), 
         .D(cnt_read[2]), .Z(n38580)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i1_4_lut_else_1_lut.init = 16'h4000;
    LUT4 cnt_stop_2__bdd_3_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), .C(cnt_stop[1]), 
         .Z(n23)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam cnt_stop_2__bdd_3_lut.init = 16'hefef;
    LUT4 cnt_start_2__bdd_4_lut (.A(cnt_start[2]), .B(cnt_start[1]), .C(cnt_start[3]), 
         .D(cnt_start[0]), .Z(n38590)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam cnt_start_2__bdd_4_lut.init = 16'hfdff;
    LUT4 cnt_stop_3__bdd_4_lut_34968 (.A(cnt_stop[3]), .B(cnt_stop[0]), 
         .C(cnt_stop[1]), .D(cnt_stop[2]), .Z(n37571)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam cnt_stop_3__bdd_4_lut_34968.init = 16'h0001;
    LUT4 i3_3_lut_4_lut_4_lut (.A(n714), .B(rst_n_in_c), .C(n38367), .D(n38365), 
         .Z(clk_divided_enable_2)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut_4_lut.init = 16'h0800;
    FD1P3AX i148_166 (.D(sda_out_N_189), .SP(sda_out_N_182), .CK(clk_divided), 
            .Q(sda_out_N_167));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam i148_166.GSR = "DISABLED";
    LUT4 i873_4_lut_rep_760 (.A(cnt_read[4]), .B(n38396), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n39799)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(133[8] 144[15])
    defparam i873_4_lut_rep_760.init = 16'h3332;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n707[5]), .B(n707[2]), .C(cnt[1]), .D(n4_adj_1356), 
         .Z(cnt_3__N_91[1])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i2_3_lut_4_lut_4_lut.init = 16'hffe0;
    LUT4 i1_4_lut_4_lut (.A(n39799), .B(n38383), .C(n38381), .D(n38358), 
         .Z(n9)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_4_lut_4_lut.init = 16'h5150;
    LUT4 i1_4_lut_then_1_lut_4_lut (.A(cnt_read[4]), .B(n38396), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n38581)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(133[8] 144[15])
    defparam i1_4_lut_then_1_lut_4_lut.init = 16'hcccd;
    LUT4 i6614_2_lut_rep_758 (.A(cnt[0]), .B(n39799), .Z(n39797)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i6614_2_lut_rep_758.init = 16'h6666;
    LUT4 i10575_3_lut_rep_761 (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write[2]), 
         .D(cnt_write_c[3]), .Z(n39800)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i10575_3_lut_rep_761.init = 16'h7f80;
    LUT4 i2_3_lut_3_lut_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), .C(cnt_write_c[3]), 
         .Z(n22734)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i2_3_lut_3_lut_3_lut.init = 16'hfefe;
    LUT4 i3_4_lut_4_lut (.A(cnt[0]), .B(n39799), .C(n711), .D(n5_c), 
         .Z(cnt_3__N_91[0])) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i3_4_lut_4_lut.init = 16'hff60;
    LUT4 i5012_2_lut_rep_762 (.A(cnt_main[0]), .B(cnt_main[1]), .C(cnt_main[3]), 
         .D(cnt_main[2]), .Z(n39801)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i5012_2_lut_rep_762.init = 16'hf8f0;
    LUT4 i2_2_lut_4_lut (.A(n38328), .B(n711), .C(rst_n_in_c), .D(n38329), 
         .Z(n6_c)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i2_2_lut_4_lut.init = 16'h7fff;
    LUT4 n176_bdd_4_lut_34190 (.A(n38371), .B(cnt[0]), .C(cnt[1]), .D(data_write[0]), 
         .Z(n37730)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;
    defparam n176_bdd_4_lut_34190.init = 16'h6fff;
    LUT4 i18552_4_lut (.A(n38354), .B(n707[2]), .C(n4140), .D(n38559), 
         .Z(n4044[0])) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A ((C (D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i18552_4_lut.init = 16'h0c44;
    LUT4 n176_bdd_4_lut_34195 (.A(n38371), .B(cnt[0]), .C(data_write[4]), 
         .D(cnt[1]), .Z(n37731)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (C (D)))) */ ;
    defparam n176_bdd_4_lut_34195.init = 16'h2fdf;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(n38330), .B(n38329), .C(n15188), 
         .D(n38326), .Z(n35111)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'h0020;
    FD1P3AX data_write__i4 (.D(n17921), .SP(clk_divided_enable_18), .CK(clk_divided), 
            .Q(data_write[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam data_write__i4.GSR = "DISABLED";
    FD1S3IX cnt__i1 (.D(cnt_3__N_91[1]), .CK(clk_divided), .CD(n38482), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt__i1.GSR = "DISABLED";
    FD1S3IX cnt__i2 (.D(cnt_3__N_91[2]), .CK(clk_divided), .CD(n38482), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt__i2.GSR = "DISABLED";
    FD1S3IX cnt__i3 (.D(cnt_3__N_91[3]), .CK(clk_divided), .CD(n38482), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_4_lut (.A(n39799), .B(n38338), .C(n38381), .D(n29), 
         .Z(n27)) /* synthesis lut_function=(A (D)+!A !(B+(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hab00;
    LUT4 i1_4_lut_4_lut_adj_64 (.A(n38328), .B(n35273), .C(n22), .D(n38327), 
         .Z(n29)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(133[8] 144[15])
    defparam i1_4_lut_4_lut_adj_64.init = 16'h5f57;
    LUT4 i14064_2_lut_3_lut_4_lut (.A(n38344), .B(n38343), .C(n36511), 
         .D(n38346), .Z(n17460)) /* synthesis lut_function=(A ((C (D))+!B)+!A (C (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i14064_2_lut_3_lut_4_lut.init = 16'hf222;
    LUT4 i19019_3_lut_4_lut (.A(n38344), .B(n38343), .C(n4167), .D(n38346), 
         .Z(n1299[2])) /* synthesis lut_function=(!(A (B (C+(D)))+!A (C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i19019_3_lut_4_lut.init = 16'h222f;
    FD1S3IX state_FSM_i2 (.D(n34663), .CK(clk_divided), .CD(n38482), .Q(n714));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i2.GSR = "DISABLED";
    FD1S3IX state_FSM_i3 (.D(n10263), .CK(clk_divided), .CD(n38482), .Q(n707[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i3.GSR = "DISABLED";
    FD1S3IX state_FSM_i4 (.D(n10265), .CK(clk_divided), .CD(n38482), .Q(n707[3]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i4.GSR = "DISABLED";
    FD1S3IX state_FSM_i5 (.D(n10267), .CK(clk_divided), .CD(n38482), .Q(n711));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i5.GSR = "DISABLED";
    FD1S3IX state_FSM_i6 (.D(n10269), .CK(clk_divided), .CD(n38482), .Q(n707[5]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam state_FSM_i6.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i1 (.D(n61[1]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n10729), .B(n38477), .C(n23), .D(n707[5]), .Z(sda_out_N_182)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam i1_4_lut.init = 16'hfcee;
    LUT4 i7598_4_lut (.A(n10728), .B(n35324), .C(n711), .D(n27), .Z(n10729)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i7598_4_lut.init = 16'hfaca;
    LUT4 n4167_bdd_3_lut_34537 (.A(n4167), .B(n37732), .C(n38346), .Z(n37854)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam n4167_bdd_3_lut_34537.init = 16'h0101;
    LUT4 i1_4_lut_adj_65 (.A(n38326), .B(n38329), .C(n38381), .D(n38327), 
         .Z(n22)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_65.init = 16'h0a88;
    FD1S3IX cnt_divided_4440__i2 (.D(n61[2]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i2.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i3 (.D(n61[3]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i3.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i4 (.D(n61[4]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i4.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i5 (.D(n61[5]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i5.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i6 (.D(n61[6]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i6.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i7 (.D(n61[7]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i7.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i8 (.D(n61[8]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i8.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i9 (.D(n61[9]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i9.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i10 (.D(n61[10]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i10.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i11 (.D(n61[11]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i11.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i12 (.D(n61[12]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i12.GSR = "DISABLED";
    FD1S3IX cnt_divided_4440__i13 (.D(n61[13]), .CK(clk_in_c), .CD(n1440), 
            .Q(cnt_divided[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440__i13.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_66 (.A(n707[3]), .B(n239[1]), .C(n174[1]), .D(n711), 
         .Z(n4_adj_1356)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i1_4_lut_adj_66.init = 16'heca0;
    LUT4 i32528_4_lut (.A(n239[2]), .B(n707[3]), .C(n711), .D(n174[2]), 
         .Z(n35825)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i32528_4_lut.init = 16'heca0;
    LUT4 i1_3_lut (.A(n707[5]), .B(cnt_stop[0]), .C(n20309), .Z(n20)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i1_3_lut.init = 16'h2a2a;
    LUT4 i2_4_lut (.A(cnt[3]), .B(n2), .C(n38305), .D(n4_adj_1357), 
         .Z(cnt_3__N_91[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i4_4_lut (.A(n729), .B(n8_adj_1358), .Z(n32803)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i4_4_lut.init = 16'heeee;
    LUT4 i329_4_lut (.A(n38326), .B(n711), .C(n51), .D(n9), .Z(n729)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i329_4_lut.init = 16'hc0c8;
    LUT4 i2_4_lut_adj_67 (.A(n38306), .B(n38328), .C(n38301), .D(n22), 
         .Z(n23_adj_1359)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i2_4_lut_adj_67.init = 16'hfefa;
    LUT4 i15_4_lut (.A(n13), .B(n20348), .C(n707[5]), .D(n4_adj_1360), 
         .Z(n15)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i15_4_lut.init = 16'hcac0;
    LUT4 i7595_4_lut (.A(n38323), .B(n17460), .C(n707[3]), .D(n4_c), 
         .Z(n10726)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i7595_4_lut.init = 16'h3505;
    LUT4 i3_4_lut (.A(n707[3]), .B(n730), .C(n12), .D(n35116), .Z(n8_adj_1358)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i3_4_lut.init = 16'hffec;
    LUT4 i106_4_lut_4_lut (.A(n38365), .B(n35354), .C(n38590), .D(n707[2]), 
         .Z(n10263)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(79[7] 83[14])
    defparam i106_4_lut_4_lut.init = 16'hf444;
    LUT4 i330_3_lut (.A(cnt_stop[0]), .B(n707[5]), .C(n37571), .Z(n730)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i330_3_lut.init = 16'h8080;
    LUT4 n713_bdd_2_lut_34068 (.A(n707[2]), .B(n715), .Z(n37164)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n713_bdd_2_lut_34068.init = 16'h1111;
    LUT4 i18249_2_lut_rep_579 (.A(\cnt_read[0] ), .B(n39799), .Z(n38326)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i18249_2_lut_rep_579.init = 16'h2222;
    LUT4 i1_4_lut_adj_68 (.A(n38333), .B(n38332), .C(n37581), .D(n38331), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+!(D))+!B (D))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i1_4_lut_adj_68.init = 16'he2c8;
    LUT4 i1_4_lut_adj_69 (.A(n35114), .B(n35821), .C(n38472), .D(n39806), 
         .Z(n35116)) /* synthesis lut_function=(!((B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_69.init = 16'h2a22;
    LUT4 i5_4_lut (.A(n715), .B(n10), .C(n7_c), .D(n8_adj_1361), .Z(n34663)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i5_4_lut.init = 16'hfeee;
    LUT4 i2_4_lut_adj_70 (.A(n35334), .B(n38332), .C(n6_adj_1362), .D(cnt_write[0]), 
         .Z(n8_adj_1363)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i2_4_lut_adj_70.init = 16'heaaa;
    LUT4 i3_4_lut_adj_71 (.A(n20309), .B(cnt_stop[0]), .C(n707[5]), .D(n35518), 
         .Z(n35334)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i3_4_lut_adj_71.init = 16'h0080;
    LUT4 i7141_4_lut (.A(n707[3]), .B(n39817), .C(n37510), .D(n714), 
         .Z(n10265)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i7141_4_lut.init = 16'hce0a;
    LUT4 i2_3_lut (.A(cnt_start[3]), .B(n707[2]), .C(cnt_start[0]), .Z(n35114)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[15:24])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(n39799), .B(n38466), .C(n38338), 
         .D(n38467), .Z(n35324)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(12[3:10])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut_adj_72 (.A(cnt_stop[3]), .B(cnt_stop[1]), .C(cnt_stop[2]), 
         .Z(n35518)) /* synthesis lut_function=(A+(B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[35:43])
    defparam i1_3_lut_adj_72.init = 16'heaea;
    LUT4 i3_4_lut_4_lut_adj_73 (.A(n39799), .B(n38466), .C(n35705), .D(n6_c), 
         .Z(n14545)) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(12[3:10])
    defparam i3_4_lut_4_lut_adj_73.init = 16'hff54;
    LUT4 i7143_4_lut (.A(n711), .B(n38385), .C(n38582), .D(n35354), 
         .Z(n10267)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i7143_4_lut.init = 16'hce0a;
    LUT4 i1_3_lut_adj_74 (.A(cnt_stop[1]), .B(cnt_stop[2]), .C(cnt_stop[3]), 
         .Z(n20309)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam i1_3_lut_adj_74.init = 16'h0404;
    LUT4 i2_3_lut_4_lut_adj_75 (.A(n39800), .B(n38371), .C(n38456), .D(rst_n_in_c), 
         .Z(n32719)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i2_3_lut_4_lut_adj_75.init = 16'h0800;
    LUT4 i1_3_lut_rep_559_4_lut (.A(\cnt_read[0] ), .B(n38358), .C(n38381), 
         .D(n39799), .Z(n38306)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam i1_3_lut_rep_559_4_lut.init = 16'h00fe;
    LUT4 cnt_start_2__bdd_4_lut_34494 (.A(cnt_start[2]), .B(cnt_start[3]), 
         .C(cnt_start[1]), .D(cnt_start[0]), .Z(\scl_out_N_162[2] )) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C (D))))) */ ;
    defparam cnt_start_2__bdd_4_lut_34494.init = 16'h1202;
    LUT4 i33482_3_lut_4_lut (.A(cnt[0]), .B(n39799), .C(n36486), .D(n239[2]), 
         .Z(clk_divided_enable_21)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i33482_3_lut_4_lut.init = 16'h6000;
    LUT4 i1_4_lut_4_lut_adj_76 (.A(cnt[0]), .B(n38371), .C(n38305), .D(n707[3]), 
         .Z(n5_c)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A !(B+!(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i1_4_lut_4_lut_adj_76.init = 16'hb9a0;
    LUT4 i33481_4_lut (.A(n32739), .B(n38300), .C(n39799), .D(n13970), 
         .Z(n36486)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(152[22:27])
    defparam i33481_4_lut.init = 16'h2022;
    LUT4 i2_3_lut_4_lut_4_lut_adj_77 (.A(n38428), .B(n38371), .C(n707[3]), 
         .D(n22734), .Z(n17)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i2_3_lut_4_lut_4_lut_adj_77.init = 16'hff7f;
    FD1P3IX cnt_main__i1 (.D(n38365), .SP(clk_divided_enable_20), .CD(n17932), 
            .CK(clk_divided), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_main__i1.GSR = "DISABLED";
    FD1P3IX cnt_main__i2 (.D(n38368), .SP(clk_divided_enable_20), .CD(n17932), 
            .CK(clk_divided), .Q(cnt_main[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_main__i2.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i0 (.D(sda_out_out), .SP(clk_divided_enable_21), 
            .CK(clk_divided), .Q(ADC_level_r[0])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i0.GSR = "DISABLED";
    LUT4 mux_35_i3_3_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n38371), 
         .D(cnt[2]), .Z(n174[2])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (D)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam mux_35_i3_3_lut_3_lut_4_lut.init = 16'hf708;
    LUT4 i33601_4_lut (.A(rst_n_in_c), .B(n35776), .C(n13_adj_1364), .D(n714), 
         .Z(clk_divided_enable_26)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i33601_4_lut.init = 16'h5fdd;
    LUT4 i33605_2_lut (.A(n707[5]), .B(n711), .Z(n35926)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i33605_2_lut.init = 16'heeee;
    FD1P3AX scl_out_r_154 (.D(scl_out_N_143), .SP(clk_divided_enable_22), 
            .CK(clk_divided), .Q(scl_out_c)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam scl_out_r_154.GSR = "DISABLED";
    LUT4 i33506_1_lut (.A(n4167), .Z(n36511)) /* synthesis lut_function=(!(A)) */ ;
    defparam i33506_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_78 (.A(n38326), .B(n38327), .C(n38381), .D(n35273), 
         .Z(n13)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(12[3:10])
    defparam i1_4_lut_adj_78.init = 16'h3b2a;
    LUT4 n4167_bdd_1_lut_2_lut_3_lut_4_lut_4_lut (.A(n38380), .B(\scl_out_N_162[2] ), 
         .C(n707[2]), .D(n38379), .Z(n37855)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam n4167_bdd_1_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_79 (.A(n38357), .B(n38334), .Z(n522)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(84[7] 95[16])
    defparam i1_4_lut_adj_79.init = 16'h4444;
    LUT4 i3_4_lut_4_lut_4_lut_4_lut (.A(n38383), .B(\cnt_read[0] ), .C(n38381), 
         .D(n39799), .Z(n8_adj_1361)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(133[8] 144[15])
    defparam i3_4_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut_rep_553_4_lut_4_lut (.A(n38383), .B(n711), .C(rst_n_in_c), 
         .D(n39799), .Z(n38300)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(133[8] 144[15])
    defparam i1_3_lut_rep_553_4_lut_4_lut.init = 16'h3fbf;
    LUT4 n10729_bdd_1_lut_3_lut (.A(sda_out_out), .B(n20309), .C(n23), 
         .Z(n37853)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n10729_bdd_1_lut_3_lut.init = 16'hcaca;
    LUT4 n37164_bdd_4_lut (.A(n37164), .B(n37163), .C(n714), .D(rst_n_in_c), 
         .Z(clk_divided_enable_7)) /* synthesis lut_function=(!(A (B (D)+!B !(C+!(D)))+!A (B (C (D))))) */ ;
    defparam n37164_bdd_4_lut.init = 16'h35ff;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n38393), .B(n39801), .C(n714), 
         .D(cnt_main[0]), .Z(n35354)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(79[7] 83[14])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hc0d0;
    FD1P3AX cnt_stop__i1 (.D(n38570), .SP(clk_divided_enable_23), .CK(clk_divided), 
            .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_stop__i1.GSR = "DISABLED";
    FD1P3AX cnt_write__i1 (.D(n7), .SP(clk_divided_enable_26), .CK(clk_divided), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_write__i1.GSR = "DISABLED";
    LUT4 i33512_3_lut_4_lut (.A(n38393), .B(n39801), .C(n39802), .D(n37745), 
         .Z(clk_divided_enable_18)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(79[7] 83[14])
    defparam i33512_3_lut_4_lut.init = 16'hd000;
    LUT4 i32374_2_lut_3_lut_4_lut_4_lut (.A(n38393), .B(n39801), .C(n38385), 
         .D(cnt_main[0]), .Z(n35661)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B !((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(79[7] 83[14])
    defparam i32374_2_lut_3_lut_4_lut_4_lut.init = 16'hc0d0;
    LUT4 i2_3_lut_3_lut_4_lut_4_lut_4_lut (.A(n38392), .B(n39801), .C(n39816), 
         .D(n38393), .Z(n13_adj_1364)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(84[7] 95[16])
    defparam i2_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hffef;
    LUT4 i7936_2_lut_rep_743 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n38490)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i7936_2_lut_rep_743.init = 16'h8888;
    LUT4 i3_2_lut_3_lut_4_lut_4_lut_4_lut (.A(n38392), .B(n39801), .C(n39816), 
         .D(n38393), .Z(n5)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(84[7] 95[16])
    defparam i3_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    FD1P3AX cnt_write__i2 (.D(n6), .SP(clk_divided_enable_26), .CK(clk_divided), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_write__i2.GSR = "DISABLED";
    FD1P3AX cnt_write__i3 (.D(n32719), .SP(clk_divided_enable_26), .CK(clk_divided), 
            .Q(cnt_write_c[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam cnt_write__i3.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_767 (.A(cnt_start[2]), .B(cnt_start[1]), .Z(n39806)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_767.init = 16'h2222;
    LUT4 i18242_2_lut_rep_584_4_lut (.A(cnt_write[2]), .B(n38396), .C(cnt_write_c[3]), 
         .D(cnt_write[0]), .Z(n38331)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(110[8] 121[15])
    defparam i18242_2_lut_rep_584_4_lut.init = 16'hcd00;
    FD1P3IX ADC_level__i2 (.D(ADC_level_r[1]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i2.GSR = "DISABLED";
    LUT4 i33492_2_lut_rep_586_2_lut_4_lut (.A(cnt_write[2]), .B(n38396), 
         .C(cnt_write_c[3]), .D(n38384), .Z(n38333)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B !(C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(110[8] 121[15])
    defparam i33492_2_lut_rep_586_2_lut_4_lut.init = 16'h32ff;
    LUT4 i19318_2_lut_rep_596_4_lut (.A(cnt_write[2]), .B(n38396), .C(cnt_write_c[3]), 
         .D(n22734), .Z(n38343)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(110[8] 121[15])
    defparam i19318_2_lut_rep_596_4_lut.init = 16'hcd00;
    LUT4 i5105_2_lut_rep_769 (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n39816)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(82[20:28])
    defparam i5105_2_lut_rep_769.init = 16'h6666;
    PFUMX i16 (.BLUT(n10726), .ALUT(n15), .C0(n35926), .Z(n16));
    LUT4 i1_2_lut (.A(n707[5]), .B(n715), .Z(n19)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    PFUMX i37 (.BLUT(n17), .ALUT(n23_adj_1359), .C0(n711), .Z(sda_out_N_190));
    FD1P3IX ADC_level__i3 (.D(ADC_level_r[2]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i3.GSR = "DISABLED";
    FD1P3IX ADC_level__i4 (.D(ADC_level_r[3]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i4.GSR = "DISABLED";
    FD1P3IX ADC_level__i5 (.D(ADC_level_r[4]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i5.GSR = "DISABLED";
    FD1P3IX ADC_level__i6 (.D(ADC_level_r[5]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i6.GSR = "DISABLED";
    LUT4 i4_4_lut_4_lut (.A(cnt_start[2]), .B(cnt_start[1]), .C(n35114), 
         .D(n8_adj_1363), .Z(n10)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;
    defparam i4_4_lut_4_lut.init = 16'hff20;
    LUT4 i5085_4_lut (.A(cnt_divided[12]), .B(cnt_divided[13]), .C(cnt_divided[11]), 
         .D(n32661), .Z(clk_divided_N_170)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i5085_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_80 (.A(n32898), .B(cnt_divided[10]), .C(cnt_divided[9]), 
         .D(cnt_divided[8]), .Z(n32661)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_80.init = 16'h8000;
    LUT4 i4_4_lut_adj_81 (.A(cnt_divided[5]), .B(cnt_divided[7]), .C(n32755), 
         .D(n6_adj_1368), .Z(n32898)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut_adj_81.init = 16'hfffe;
    LUT4 i3_4_lut_adj_82 (.A(cnt_divided[0]), .B(cnt_divided[3]), .C(cnt_divided[2]), 
         .D(cnt_divided[1]), .Z(n32755)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_82.init = 16'h8000;
    LUT4 i1_2_lut_adj_83 (.A(cnt_divided[6]), .B(cnt_divided[4]), .Z(n6_adj_1368)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_83.init = 16'heeee;
    LUT4 n81_bdd_4_lut_34201_4_lut (.A(n38486), .B(n38365), .C(n38368), 
         .D(n38357), .Z(n37745)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam n81_bdd_4_lut_34201_4_lut.init = 16'h0dcd;
    LUT4 i33485_4_lut (.A(rst_n_in_c), .B(n35665), .C(n35680), .D(n714), 
         .Z(clk_divided_enable_11)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D))))) */ ;
    defparam i33485_4_lut.init = 16'h5fdd;
    LUT4 i32390_4_lut (.A(n39801), .B(n38393), .C(cnt_main[1]), .D(n38392), 
         .Z(n35680)) /* synthesis lut_function=(!(A+!(B+!(C (D))))) */ ;
    defparam i32390_4_lut.init = 16'h4555;
    LUT4 i32378_2_lut (.A(n715), .B(n711), .Z(n35665)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32378_2_lut.init = 16'heeee;
    LUT4 mux_51_i3_3_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n39799), 
         .D(cnt[2]), .Z(n239[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam mux_51_i3_3_lut_3_lut_4_lut.init = 16'h7f80;
    PFUMX i16959 (.BLUT(n20), .ALUT(n20344), .C0(n714), .Z(n10269));
    FD1P3IX ADC_level__i7 (.D(ADC_level_r[6]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\voltage_code[6] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i7.GSR = "DISABLED";
    FD1P3IX ADC_level__i8 (.D(ADC_level_r[7]), .SP(clk_divided_enable_33), 
            .CD(n19656), .CK(clk_divided), .Q(\ADC_level[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level__i8.GSR = "DISABLED";
    LUT4 i33456_2_lut_rep_581_2_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), 
         .C(n38412), .D(n39799), .Z(n38328)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (((D)+!C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i33456_2_lut_rep_581_2_lut_4_lut.init = 16'hff95;
    LUT4 i19041_2_lut_rep_591_3_lut_4_lut (.A(cnt_read[3]), .B(n38412), 
         .C(\cnt_read[0] ), .D(n38383), .Z(n38338)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i19041_2_lut_rep_591_3_lut_4_lut.init = 16'hfff6;
    LUT4 i1_2_lut_3_lut_4_lut_adj_84 (.A(cnt_read[3]), .B(n38412), .C(n39799), 
         .D(n38383), .Z(n15188)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_3_lut_4_lut_adj_84.init = 16'hf0f9;
    LUT4 i1_2_lut_3_lut_4_lut_adj_85 (.A(cnt_read[3]), .B(n38412), .C(n38407), 
         .D(n39799), .Z(n35091)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_3_lut_4_lut_adj_85.init = 16'h0060;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt_read[3]), .B(n38412), .C(n711), 
         .D(n39799), .Z(n7_c)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 i2_3_lut_4_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(cnt_read[3]), .B(n38412), 
         .C(n39799), .D(n38383), .Z(n32883)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i2_3_lut_4_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h0f06;
    LUT4 i2_3_lut_4_lut_adj_86 (.A(n38491), .B(n38428), .C(n38371), .D(n707[3]), 
         .Z(n6_adj_1362)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam i2_3_lut_4_lut_adj_86.init = 16'h1f00;
    LUT4 i1_4_lut_4_lut_adj_87 (.A(cnt[3]), .B(n38429), .C(n38371), .D(n707[3]), 
         .Z(n2)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !((C+!(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam i1_4_lut_4_lut_adj_87.init = 16'ha600;
    LUT4 select_979_Select_3_i4_4_lut_4_lut (.A(cnt[3]), .B(n38429), .C(n39799), 
         .D(n711), .Z(n4_adj_1357)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam select_979_Select_3_i4_4_lut_4_lut.init = 16'h6a00;
    LUT4 i1_2_lut_rep_633_4_lut (.A(cnt_start[0]), .B(n38471), .C(cnt_start[3]), 
         .D(\scl_out_N_162[1] ), .Z(n38380)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(97[8] 101[15])
    defparam i1_2_lut_rep_633_4_lut.init = 16'hfd02;
    LUT4 i32415_2_lut (.A(\cnt_read[0] ), .B(cnt_read[3]), .Z(n35705)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32415_2_lut.init = 16'heeee;
    LUT4 i33505_2_lut_2_lut_4_lut (.A(cnt_start[0]), .B(n38471), .C(cnt_start[3]), 
         .D(clk_divided_enable_20), .Z(n35407)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(97[8] 101[15])
    defparam i33505_2_lut_2_lut_4_lut.init = 16'h00fd;
    PFUMX i34260 (.BLUT(n37858), .ALUT(n37853), .C0(n707[5]), .Z(n37859));
    PFUMX i34258 (.BLUT(n37855), .ALUT(n37854), .C0(n707[3]), .Z(n37856));
    PFUMX i7597 (.BLUT(n4044[0]), .ALUT(n1299[2]), .C0(n707[3]), .Z(n10728));
    LUT4 i18462_2_lut_rep_620_3_lut_4_lut (.A(n38425), .B(cnt_main[3]), 
         .C(n38486), .D(cnt_main[0]), .Z(n38367)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i18462_2_lut_rep_620_3_lut_4_lut.init = 16'heeef;
    LUT4 i18712_3_lut_3_lut_rep_638_4_lut (.A(n38425), .B(cnt_main[3]), 
         .C(n39816), .D(n38486), .Z(n38385)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i18712_3_lut_3_lut_rep_638_4_lut.init = 16'heefe;
    LUT4 i5143_2_lut_rep_682_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), 
         .Z(n38429)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam i5143_2_lut_rep_682_3_lut.init = 16'h8080;
    LUT4 i2_2_lut_rep_587_3_lut_3_lut_4_lut_4_lut (.A(n38486), .B(n39816), 
         .C(cnt_main[3]), .D(n38425), .Z(n38334)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2_2_lut_rep_587_3_lut_3_lut_4_lut_4_lut.init = 16'h0001;
    LUT4 i33636_3_lut_rep_624_4_lut (.A(n38429), .B(cnt[3]), .C(cnt_write_c[3]), 
         .D(cnt_write[2]), .Z(n38371)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i33636_3_lut_rep_624_4_lut.init = 16'heeef;
    FD1P3AX ADC_level_r__i7 (.D(sda_out_out), .SP(clk_divided_enable_34), 
            .CK(clk_divided), .Q(ADC_level_r[7])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i7.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i6 (.D(sda_out_out), .SP(clk_divided_enable_35), 
            .CK(clk_divided), .Q(ADC_level_r[6])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i6.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i5 (.D(sda_out_out), .SP(clk_divided_enable_36), 
            .CK(clk_divided), .Q(ADC_level_r[5])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i5.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i4 (.D(sda_out_out), .SP(clk_divided_enable_37), 
            .CK(clk_divided), .Q(ADC_level_r[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i4.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i3 (.D(sda_out_out), .SP(clk_divided_enable_38), 
            .CK(clk_divided), .Q(ADC_level_r[3])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i3.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i2 (.D(sda_out_out), .SP(clk_divided_enable_39), 
            .CK(clk_divided), .Q(ADC_level_r[2])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i2.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i1 (.D(sda_out_out), .SP(clk_divided_enable_40), 
            .CK(clk_divided), .Q(ADC_level_r[1])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=17, LSE_RCOL=20, LSE_LLINE=134, LSE_RLINE=134 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam ADC_level_r__i1.GSR = "DISABLED";
    PFUMX i34191 (.BLUT(n37731), .ALUT(n37730), .C0(n174[2]), .Z(n37732));
    LUT4 i19346_3_lut_rep_599_4_lut (.A(cnt_write[2]), .B(n38490), .C(n22734), 
         .D(n38371), .Z(n38346)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i19346_3_lut_rep_599_4_lut.init = 16'hf600;
    LUT4 i7945_2_lut_rep_597_4_lut_4_lut (.A(cnt_write[2]), .B(n38490), 
         .C(cnt_write_c[3]), .D(n38396), .Z(n38344)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B ((D)+!C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i7945_2_lut_rep_597_4_lut_4_lut.init = 16'h6604;
    LUT4 i10576_2_lut_rep_585_4_lut_4_lut (.A(cnt_write_c[3]), .B(cnt_write[2]), 
         .C(n38490), .D(n38396), .Z(n38332)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i10576_2_lut_rep_585_4_lut_4_lut.init = 16'h6a00;
    CCU2D cnt_divided_4440_add_4_15 (.A0(cnt_divided[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32620), .S0(n61[13]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_15.INIT1 = 16'h0000;
    defparam cnt_divided_4440_add_4_15.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_13 (.A0(cnt_divided[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n32619), .COUT(n32620), .S0(n61[11]), 
          .S1(n61[12]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_13.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_13.INJECT1_1 = "NO";
    LUT4 cnt_main_2__bdd_4_lut (.A(cnt_main[2]), .B(cnt_main[1]), .C(cnt_main[0]), 
         .D(cnt_main[3]), .Z(n38543)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam cnt_main_2__bdd_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_558_3_lut (.A(n707[5]), .B(n707[2]), .Z(n38305)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(66[5] 189[16])
    defparam i1_2_lut_rep_558_3_lut.init = 16'heeee;
    CCU2D cnt_divided_4440_add_4_11 (.A0(cnt_divided[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n32618), .COUT(n32619), .S0(n61[9]), 
          .S1(n61[10]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_11.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_11.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_9 (.A0(cnt_divided[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32617), .COUT(n32618), .S0(n61[7]), .S1(n61[8]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_9.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_7 (.A0(cnt_divided[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32616), .COUT(n32617), .S0(n61[5]), .S1(n61[6]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_7.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_7.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_5 (.A0(cnt_divided[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32615), .COUT(n32616), .S0(n61[3]), .S1(n61[4]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_5.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_5.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_3 (.A0(cnt_divided[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32614), .COUT(n32615), .S0(n61[1]), .S1(n61[2]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_divided_4440_add_4_3.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_divided_4440_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32614), .S1(n61[0]));   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(38[20:31])
    defparam cnt_divided_4440_add_4_1.INIT0 = 16'hF000;
    defparam cnt_divided_4440_add_4_1.INIT1 = 16'h0555;
    defparam cnt_divided_4440_add_4_1.INJECT1_0 = "NO";
    defparam cnt_divided_4440_add_4_1.INJECT1_1 = "NO";
    LUT4 mux_35_i2_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(n38371), .Z(n174[1])) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam mux_35_i2_3_lut_3_lut.init = 16'ha6a6;
    LUT4 mux_51_i2_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(n39799), .Z(n239[1])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(113[17:20])
    defparam mux_51_i2_3_lut_3_lut.init = 16'h6a6a;
    LUT4 i2_3_lut_adj_88 (.A(ADC_level_r[0]), .B(n88), .C(rst_n_in_c), 
         .Z(n32761)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut_adj_88.init = 16'h8080;
    LUT4 i18391_2_lut_rep_709 (.A(n715), .B(n714), .Z(n38456)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i18391_2_lut_rep_709.init = 16'heeee;
    LUT4 i1_2_lut_rep_660_3_lut (.A(n715), .B(n714), .C(rst_n_in_c), .Z(n38407)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_660_3_lut.init = 16'h1010;
    LUT4 i32483_2_lut (.A(n707[3]), .B(n715), .Z(n35776)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32483_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n715), .B(n714), .C(\scl_out_N_162[2] ), 
         .D(rst_n_in_c), .Z(n35090)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_90 (.A(n715), .B(n714), .C(\scl_out_N_162[1] ), 
         .D(rst_n_in_c), .Z(n35092)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_90.init = 16'h1000;
    LUT4 n22386_bdd_1_lut_34011_3_lut_4_lut_4_lut (.A(n707[2]), .B(n38379), 
         .C(\scl_out_N_162[1] ), .D(n38472), .Z(n37422)) /* synthesis lut_function=(!((B+!(C (D)+!C !(D)))+!A)) */ ;
    defparam n22386_bdd_1_lut_34011_3_lut_4_lut_4_lut.init = 16'h2002;
    LUT4 i16958_4_lut_4_lut (.A(cnt_stop[0]), .B(n6_adj_1369), .C(n707[5]), 
         .D(n522), .Z(n20344)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (C+(D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam i16958_4_lut_4_lut.init = 16'hffd0;
    LUT4 i7944_2_lut_rep_681_3_lut (.A(cnt_write[1]), .B(cnt_write[0]), 
         .C(cnt_write[2]), .Z(n38428)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i7944_2_lut_rep_681_3_lut.init = 16'h7878;
    LUT4 n22386_bdd_3_lut (.A(n29), .B(n35324), .C(n38306), .Z(n37420)) /* synthesis lut_function=(!(A (B+(C))+!A (B))) */ ;
    defparam n22386_bdd_3_lut.init = 16'h1313;
    LUT4 i2_2_lut_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n6_adj_1369)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(53[3] 191[12])
    defparam i2_2_lut_3_lut.init = 16'hefef;
    LUT4 i7942_2_lut_rep_718 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n38465)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i7942_2_lut_rep_718.init = 16'h8888;
    LUT4 i10402_2_lut_rep_665_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .Z(n38412)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i10402_2_lut_rep_665_3_lut.init = 16'h8080;
    LUT4 i6997_2_lut_3_lut_4_lut_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n13970)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i6997_2_lut_3_lut_4_lut_3_lut_4_lut.init = 16'h7ff8;
    LUT4 i1_2_lut_rep_583_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n39799), .D(cnt_read[2]), .Z(n38330)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_rep_583_3_lut_4_lut.init = 16'h0708;
    LUT4 n37423_bdd_3_lut (.A(n37423), .B(n37420), .C(n711), .Z(n37424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37423_bdd_3_lut.init = 16'hcaca;
    LUT4 i7954_2_lut_rep_719 (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(cnt_read[2]), 
         .Z(n38466)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i7954_2_lut_rep_719.init = 16'h7878;
    LUT4 i2_3_lut_4_lut_4_lut_adj_91 (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .D(n39799), .Z(n35273)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (((D)+!C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i2_3_lut_4_lut_4_lut_adj_91.init = 16'h0068;
    LUT4 i7938_2_lut_rep_720 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n38467)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i7938_2_lut_rep_720.init = 16'h6666;
    LUT4 i7940_2_lut_rep_582_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n39799), .Z(n38329)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i7940_2_lut_rep_582_3_lut.init = 16'h0606;
    LUT4 i1_2_lut_3_lut_3_lut_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n39799), .D(n38383), .Z(n4_adj_1360)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_3_lut_3_lut_3_lut_4_lut.init = 16'h0006;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n239[1]), .D(n39799), .Z(n32739)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 i18561_2_lut_rep_634_3_lut_4_lut_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .Z(n38381)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i18561_2_lut_rep_634_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i1_2_lut_rep_608_3_lut_4_lut_3_lut_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .Z(n38355)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(134[9] 140[16])
    defparam i1_2_lut_rep_608_3_lut_4_lut_3_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(cnt_stop[2]), .B(cnt_stop[3]), .C(cnt_stop[1]), 
         .Z(n20348)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(49[35:43])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i7933_2_lut_rep_744 (.A(cnt_write[1]), .B(cnt_write[0]), .Z(n38491)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(111[9] 117[17])
    defparam i7933_2_lut_rep_744.init = 16'h6666;
    LUT4 i17934_4_lut_4_lut (.A(cnt_start[2]), .B(cnt_start[3]), .C(cnt_start[1]), 
         .D(cnt_start[0]), .Z(\scl_out_N_162[1] )) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C (D)+!C !(D))))) */ ;
    defparam i17934_4_lut_4_lut.init = 16'h0310;
    LUT4 i5081_2_lut_rep_724 (.A(cnt_start[1]), .B(cnt_start[2]), .Z(n38471)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5081_2_lut_rep_724.init = 16'h8888;
    LUT4 i32525_3_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), .C(\scl_out_N_162[1] ), 
         .D(\scl_out_N_162[2] ), .Z(n35821)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;
    defparam i32525_3_lut_4_lut.init = 16'hfff8;
    LUT4 i18270_3_lut_rep_725 (.A(cnt_start[1]), .B(cnt_start[2]), .C(cnt_start[3]), 
         .D(cnt_start[0]), .Z(n38472)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i18270_3_lut_rep_725.init = 16'h0700;
    LUT4 i2_3_lut_rep_632_4_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[2]), 
         .C(cnt_start[3]), .D(cnt_start[0]), .Z(n38379)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i2_3_lut_rep_632_4_lut_4_lut.init = 16'h0002;
    PFUMX i34488 (.BLUT(n38580), .ALUT(n38581), .C0(n38358), .Z(n38582));
    LUT4 i18538_2_lut_rep_763 (.A(n714), .B(rst_n_in_c), .Z(n39802)) /* synthesis lut_function=(A (B)) */ ;
    defparam i18538_2_lut_rep_763.init = 16'h8888;
    LUT4 i6989_2_lut_rep_730 (.A(n715), .B(rst_n_in_c), .Z(n38477)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam i6989_2_lut_rep_730.init = 16'hbbbb;
    LUT4 i33428_2_lut_3_lut (.A(n715), .B(rst_n_in_c), .C(n37425), .Z(clk_divided_enable_22)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam i33428_2_lut_3_lut.init = 16'hfbfb;
    LUT4 n37859_bdd_2_lut_3_lut (.A(n715), .B(rst_n_in_c), .C(n37859), 
         .Z(sda_out_N_171)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam n37859_bdd_2_lut_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut_adj_92 (.A(n715), .B(rst_n_in_c), .C(n16), .Z(scl_out_N_143)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/adc.vhd(54[4] 190[12])
    defparam i1_2_lut_3_lut_adj_92.init = 16'hfbfb;
    
endmodule
//
// Verilog Description of module trans_BCD
//

module trans_BCD (n38239, n38240, GND_net, \voltage_code[15] , \ctrlword_595_3[13] , 
            \ctrlword_595_5[4] , \voltage_code[6] , \voltage_code[5] , 
            \ctrlword_595_1[7] , \ctrlword_595_3[13]__inv , n39818, \ctrlword_595_2[1] , 
            n38103, \ctrlword_595_2[2] , \ctrlword_595_2[3] , \ctrlword_595_2[4] , 
            \ctrlword_595_3[1] , \ctrlword_595_3[2] , \ctrlword_595_3[3] , 
            \ctrlword_595_3_15__N_622[3] , \ctrlword_595_3[4] , \ctrlword_595_3[5] , 
            \ctrlword_595_3[6] , \ctrlword_595_3[7] , \ADC_level[7] , 
            \voltage_code[13] , \voltage_code[14] , \realv_5[0] , \voltage_code[1] , 
            \decade[3] , n38241, \ctrlword_595_5_15__N_646[2] , \voltage_code[4] , 
            \voltage_code[12] , n7, n38094, n7704, \voltage_code[2] , 
            n38252, n2, n1, n36341, n5, n4, n36333, n2_adj_1, 
            n1_adj_2, n36323, n38110, n5_adj_3, n4_adj_4, n36330, 
            n38085, n38079, n38084, n38086, n2_adj_5, n10228, n36335, 
            n2_adj_6, n36032, n38261, n5_adj_7, n4_adj_8, n36033, 
            n5_adj_9, n4_adj_10, n6, n7772, n38316, n7768, realv_1_1__N_292, 
            n38135, n36221, decade_3__N_561, n36238, n36181, n36229, 
            n2_adj_11, n1_adj_12, n36220, n2_adj_13, n36329, n36212, 
            decade_3__N_580, decade_3__N_576, n6_adj_14, \voltage_code[3] , 
            n36235, n5_adj_15, n4_adj_16, n36233, n5_adj_17, n4_adj_18, 
            n36230, n5_adj_19, n4_adj_20, n36342, realv_1_0__N_460, 
            realv_1_0__N_464, n2_adj_21, n36232, n2_adj_22, n1_adj_23, 
            n36190, n5_adj_24, n4_adj_25, n36182, n5_adj_26, n4_adj_27, 
            n36191, n36236, n36211, n36239, n38502, n38074, n5_adj_28, 
            n4_adj_29, n6_adj_30, n38098, n38088, n38089, n38097, 
            \ctrlword_595_4_15__N_638[6] , n38105, n38104, n38114, n38139, 
            n37932, n36976, n38111, n38080, n15351, n35589, n35310, 
            n38284, n38469, \data_r_131__N_1121[121] , realv_3_0__N_535, 
            n38125, n14, n7_adj_31, n36081, n14_adj_32, n37060, 
            n36082, n38061, n38063, n38064, n14_adj_33, n36153, 
            n36046, n14_adj_34, n37074, n36029, n14_adj_35, n36984, 
            n36049, n38115, n38099, n38082, n38095, n10395, realv_1_0__N_466, 
            \ctrlword_595_4_15__N_630[1] , n1_adj_36, n38113, realv_1_1__N_293, 
            \x_cnt[2] , \data_r[91] , \data_r[98] , n1_adj_37, n38116, 
            \data_r[96] , \data_r[100] , \x_cnt[3] , n10314, \data_r[99] , 
            n38117, n38109, n21531, \x_cnt[1] , n12260, \data_r[97] , 
            \data_r[101] , \ctrlword_595_4_15__N_638[7] , n38237, n38249, 
            n38245, n37124, n38078, n36324, \ctrlword_595_4[4] , realv_1_1__N_303, 
            \ctrlword_595_4_15__N_638[5] , n7_adj_38, \ctrlword_595_6_15__N_662[4] , 
            n38102, n35513, n36336, \ctrlword_595_4_15__N_638[3] , n38075, 
            \x_cnt[0] , n36063, \ctrlword_595_4_15__N_638[1] , n3008, 
            n38378, n37888, n5_adj_39, n4_adj_40, n36188, n38302, 
            n38377, \data_r_131__N_1121[120] , hundreds_1__N_558, n2913, 
            n3, n2885, n2897, n1_adj_41, n2886, n38405, n1_adj_42, 
            n38500, n38432, n37921, n38436, n1_adj_43, n2895, n3_adj_44, 
            n38083, realv_1_1__N_322, n38093, n3_adj_45, n5_adj_46, 
            n4_adj_47, n36209, n38230, n36338, n6_adj_48, \ctrlword_595_5[6] , 
            n2_adj_49, n10172, n36208, \adcdisplay_7__N_1[6] , \adcdisplay_7__N_1[4] , 
            n2_adj_50, n36187, n38247, n15357, n35304, \ctrlword_595_5_15__N_646[3] , 
            decade_0__N_605, \ctrlword_595_2[5] , n38227, n36327, n36332, 
            n36339, n36326, n38264, n37210, n14_adj_51, n36937, 
            n36164, \ctrlword_595_6[6] , n14_adj_52, n36025, n36144, 
            n14_adj_53, n38036, n36158, n38081, n38520, n4_adj_54, 
            n36095, n5_adj_55, n4_adj_56, n36024, n2_adj_57, n1_adj_58, 
            n36094, n1_adj_59, n38233, n38253, n37997, n38234, n36935, 
            n1_adj_60, n2975, n15411, n10164, n2972, n15409, n10530, 
            n38238, n2_adj_61, n38073, \ctrlword_595_5[5] , n37498, 
            \ctrlword_595_6_15__N_662[2] , n37035, \ctrlword_595_5_15__N_654[2] );
    output n38239;
    output n38240;
    input GND_net;
    output \voltage_code[15] ;
    input \ctrlword_595_3[13] ;
    output \ctrlword_595_5[4] ;
    input \voltage_code[6] ;
    input \voltage_code[5] ;
    output \ctrlword_595_1[7] ;
    input \ctrlword_595_3[13]__inv ;
    input n39818;
    output \ctrlword_595_2[1] ;
    output n38103;
    output \ctrlword_595_2[2] ;
    output \ctrlword_595_2[3] ;
    output \ctrlword_595_2[4] ;
    output \ctrlword_595_3[1] ;
    output \ctrlword_595_3[2] ;
    output \ctrlword_595_3[3] ;
    input \ctrlword_595_3_15__N_622[3] ;
    output \ctrlword_595_3[4] ;
    output \ctrlword_595_3[5] ;
    output \ctrlword_595_3[6] ;
    output \ctrlword_595_3[7] ;
    input \ADC_level[7] ;
    output \voltage_code[13] ;
    output \voltage_code[14] ;
    input \realv_5[0] ;
    input \voltage_code[1] ;
    output \decade[3] ;
    output n38241;
    output \ctrlword_595_5_15__N_646[2] ;
    input \voltage_code[4] ;
    output \voltage_code[12] ;
    input n7;
    output n38094;
    output n7704;
    input \voltage_code[2] ;
    output n38252;
    input n2;
    input n1;
    output n36341;
    input n5;
    input n4;
    output n36333;
    input n2_adj_1;
    input n1_adj_2;
    output n36323;
    output n38110;
    input n5_adj_3;
    input n4_adj_4;
    output n36330;
    output n38085;
    output n38079;
    output n38084;
    output n38086;
    input n2_adj_5;
    input n10228;
    output n36335;
    input n2_adj_6;
    output n36032;
    output n38261;
    input n5_adj_7;
    input n4_adj_8;
    output n36033;
    input n5_adj_9;
    input n4_adj_10;
    output n6;
    output n7772;
    output n38316;
    output n7768;
    output realv_1_1__N_292;
    output n38135;
    output n36221;
    input decade_3__N_561;
    output n36238;
    output n36181;
    output n36229;
    input n2_adj_11;
    input n1_adj_12;
    output n36220;
    input n2_adj_13;
    output n36329;
    output n36212;
    input decade_3__N_580;
    input decade_3__N_576;
    output n6_adj_14;
    input \voltage_code[3] ;
    output n36235;
    input n5_adj_15;
    input n4_adj_16;
    output n36233;
    input n5_adj_17;
    input n4_adj_18;
    output n36230;
    input n5_adj_19;
    input n4_adj_20;
    output n36342;
    output realv_1_0__N_460;
    output realv_1_0__N_464;
    input n2_adj_21;
    output n36232;
    input n2_adj_22;
    input n1_adj_23;
    output n36190;
    input n5_adj_24;
    input n4_adj_25;
    output n36182;
    input n5_adj_26;
    input n4_adj_27;
    output n36191;
    output n36236;
    output n36211;
    output n36239;
    input n38502;
    output n38074;
    input n5_adj_28;
    input n4_adj_29;
    output n6_adj_30;
    output n38098;
    output n38088;
    output n38089;
    output n38097;
    output \ctrlword_595_4_15__N_638[6] ;
    output n38105;
    output n38104;
    output n38114;
    output n38139;
    output n37932;
    output n36976;
    output n38111;
    output n38080;
    input n15351;
    input n35589;
    output n35310;
    input n38284;
    input n38469;
    output \data_r_131__N_1121[121] ;
    output realv_3_0__N_535;
    output n38125;
    input n14;
    input n7_adj_31;
    output n36081;
    input n14_adj_32;
    input n37060;
    output n36082;
    input n38061;
    input n38063;
    output n38064;
    input n14_adj_33;
    input n36153;
    output n36046;
    input n14_adj_34;
    input n37074;
    output n36029;
    input n14_adj_35;
    input n36984;
    output n36049;
    output n38115;
    output n38099;
    output n38082;
    output n38095;
    output n10395;
    output realv_1_0__N_466;
    output \ctrlword_595_4_15__N_630[1] ;
    output n1_adj_36;
    output n38113;
    input realv_1_1__N_293;
    input \x_cnt[2] ;
    input \data_r[91] ;
    input \data_r[98] ;
    output n1_adj_37;
    output n38116;
    input \data_r[96] ;
    input \data_r[100] ;
    input \x_cnt[3] ;
    output n10314;
    input \data_r[99] ;
    output n38117;
    output n38109;
    input n21531;
    input \x_cnt[1] ;
    input n12260;
    input \data_r[97] ;
    input \data_r[101] ;
    output \ctrlword_595_4_15__N_638[7] ;
    output n38237;
    output n38249;
    output n38245;
    output n37124;
    output n38078;
    output n36324;
    output \ctrlword_595_4[4] ;
    input realv_1_1__N_303;
    output \ctrlword_595_4_15__N_638[5] ;
    input n7_adj_38;
    output \ctrlword_595_6_15__N_662[4] ;
    output n38102;
    output n35513;
    output n36336;
    output \ctrlword_595_4_15__N_638[3] ;
    output n38075;
    input \x_cnt[0] ;
    output n36063;
    output \ctrlword_595_4_15__N_638[1] ;
    input n3008;
    input n38378;
    output n37888;
    input n5_adj_39;
    input n4_adj_40;
    output n36188;
    input n38302;
    input n38377;
    output \data_r_131__N_1121[120] ;
    input hundreds_1__N_558;
    input n2913;
    output n3;
    input n2885;
    input n2897;
    output n1_adj_41;
    input n2886;
    input n38405;
    output n1_adj_42;
    input n38500;
    input n38432;
    output n37921;
    input n38436;
    output n1_adj_43;
    input n2895;
    output n3_adj_44;
    output n38083;
    input realv_1_1__N_322;
    output n38093;
    output n3_adj_45;
    input n5_adj_46;
    input n4_adj_47;
    output n36209;
    output n38230;
    output n36338;
    output n6_adj_48;
    output \ctrlword_595_5[6] ;
    input n2_adj_49;
    input n10172;
    output n36208;
    output \adcdisplay_7__N_1[6] ;
    output \adcdisplay_7__N_1[4] ;
    input n2_adj_50;
    output n36187;
    input n38247;
    input n15357;
    output n35304;
    output \ctrlword_595_5_15__N_646[3] ;
    output decade_0__N_605;
    output \ctrlword_595_2[5] ;
    output n38227;
    output n36327;
    output n36332;
    output n36339;
    output n36326;
    output n38264;
    output n37210;
    input n14_adj_51;
    input n36937;
    output n36164;
    output \ctrlword_595_6[6] ;
    input n14_adj_52;
    input n36025;
    output n36144;
    input n14_adj_53;
    input n38036;
    output n36158;
    output n38081;
    input n38520;
    input n4_adj_54;
    output n36095;
    input n5_adj_55;
    input n4_adj_56;
    output n36024;
    input n2_adj_57;
    input n1_adj_58;
    output n36094;
    output n1_adj_59;
    output n38233;
    output n38253;
    output n37997;
    output n38234;
    output n36935;
    input n1_adj_60;
    input n2975;
    output n15411;
    input n10164;
    input n2972;
    output n15409;
    output n10530;
    output n38238;
    input n2_adj_61;
    output n38073;
    output \ctrlword_595_5[5] ;
    input n37498;
    output \ctrlword_595_6_15__N_662[2] ;
    input n37035;
    output \ctrlword_595_5_15__N_654[2] ;
    
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/top.vhd(34[10:24])
    
    wire n38547, n38548;
    wire [3:0]n372;
    
    wire n38549;
    wire [3:0]n369;
    
    wire n38204;
    wire [3:0]n370;
    
    wire n38190, n38259, n7731, n22509, n32593;
    wire [7:0]ctrlword_595_5_15__N_654;
    wire [7:0]ctrlword_595_5_15__N_646;
    
    wire n38205, n38198, n7_c, n38076;
    wire [7:0]ctrlword_595_2_15__N_614;
    wire [7:0]ctrlword_595_3_15__N_622;
    
    wire n38194;
    wire [3:0]n375;
    
    wire n32592;
    wire [15:0]voltage_code;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(49[8:20])
    
    wire n32590, n32591, n10388, n38196;
    wire [3:0]n373;
    
    wire n38187, n38170, n35593, n35599, n35809, n38182, n22487, 
        n8, n38251, n38250;
    wire [3:0]n362;
    
    wire n38221, n38274;
    wire [3:0]n355;
    
    wire n38267, n35583, n35603, n35677, n22469, n8_adj_1293, n38725, 
        n38726, n38179;
    wire [3:0]n378;
    
    wire n38184, n10444, n38488, n38504;
    wire [2:0]n353;
    
    wire n39798, n38307, n38270, n38503, n38101, n38077, n38225;
    wire [3:0]n365;
    
    wire n38565, n38564, n37045, n37046;
    wire [3:0]n374;
    
    wire n38572, n38571;
    wire [3:0]n383;
    
    wire n38132;
    wire [3:0]n386;
    
    wire n38119, n38112;
    wire [3:0]n384;
    
    wire n38127;
    wire [3:0]n387;
    
    wire n38108, n38345, n38370, n38118, n39808, n38126, n39756, 
        n10412;
    wire [3:0]n382;
    
    wire n38131, n38130, n38129;
    wire [2:0]n381;
    
    wire n38133, n38489, n38090, n8_adj_1327, n38134;
    wire [3:0]n385;
    wire [3:0]n380;
    
    wire n38143, n38107, n38268;
    wire [3:0]n361;
    
    wire n39815, n38136, n38122, n35496, n37762, n38138, n38137, 
        n39757, n37763, n37764, n37775, n37765, n37776, n37777, 
        n38154, n38142, n37778, n37779;
    wire [3:0]n379;
    
    wire n38141, n38144, n39796, n38145, n38146, n38255, n38147;
    wire [2:0]n371;
    
    wire n39795, n38092, n38157, n38149, n38156, n38148;
    wire [3:0]n377;
    
    wire n38161, n38151, n38256, n38155, n38150, n37981, n38369;
    wire [3:0]n376;
    
    wire n38165, n38153, n38162, n38152, n38160, n38163, n38203;
    wire [3:0]n368;
    
    wire n10553, n38164, n38172, n38171, n38173, n38167, n22515, 
        n8_adj_1331, n38174, n38166, n38176, n38169, n38185;
    wire [3:0]n367;
    
    wire n38210, n38208, n38201, n38197, n38566, n38207, n38202, 
        n38212, n38181, n38459, n38215, n38214, n38223, n7710, 
        n38271, n38218;
    wire [3:0]n366;
    
    wire n38220, n38217, n38224, n37036, n38232, n38231;
    wire [3:0]n363;
    
    wire n38186, n38175, n38189, n38244, n38229, n38236, n38243, 
        n38188, n38183, n37499, n38100, n38200, n38260, n39807, 
        n38257, n38263, n38265;
    
    PFUMX i34469 (.BLUT(n38547), .ALUT(n38548), .C0(n372[3]), .Z(n38549));
    LUT4 i5555_3_lut_rep_443_4_lut_3_lut_4_lut (.A(n369[3]), .B(n38204), 
         .C(n370[1]), .D(n370[2]), .Z(n38190)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5555_3_lut_rep_443_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i19121_2_lut_3_lut_4_lut (.A(n38259), .B(n7731), .C(n38239), 
         .D(n38240), .Z(n22509)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19121_2_lut_3_lut_4_lut.init = 16'h9060;
    CCU2D add_436_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n32593), 
          .S0(\voltage_code[15] ));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_436_cout.INIT0 = 16'h0000;
    defparam add_436_cout.INIT1 = 16'h0000;
    defparam add_436_cout.INJECT1_0 = "NO";
    defparam add_436_cout.INJECT1_1 = "NO";
    L6MUX21 mux_3485_i4 (.D0(ctrlword_595_5_15__N_654[4]), .D1(ctrlword_595_5_15__N_646[4]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_5[4] ));
    LUT4 i4977_2_lut_rep_451_3_lut (.A(\voltage_code[6] ), .B(n38205), .C(\voltage_code[5] ), 
         .Z(n38198)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4977_2_lut_rep_451_3_lut.init = 16'hf6f6;
    LUT4 decade_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut (.A(n38259), .B(n7731), 
         .C(n38239), .D(n38240), .Z(n7_c)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam decade_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut.init = 16'h966f;
    FD1S1B mode_N_613_I_0_i2 (.D(n39818), .CK(GND_net), .PD(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_1[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam mode_N_613_I_0_i2.GSR = "DISABLED";
    FD1S1A ctrlword_595_2_15__N_614_7__I_0_i2 (.D(n38103), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_2[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_2_15__N_614_7__I_0_i2.GSR = "DISABLED";
    FD1S1I ctrlword_595_2_15__N_614_7__I_0_i3 (.D(n38076), .CK(\ctrlword_595_3[13]__inv ), 
           .CD(n38103), .Q(\ctrlword_595_2[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_2_15__N_614_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ctrlword_595_2_15__N_614_7__I_0_i4 (.D(n38076), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_2[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_2_15__N_614_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ctrlword_595_2_15__N_614_7__I_0_i5 (.D(ctrlword_595_2_15__N_614[4]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_2[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_2_15__N_614_7__I_0_i5.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i2 (.D(ctrlword_595_3_15__N_622[1]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[1] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i2.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i3 (.D(ctrlword_595_3_15__N_622[2]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[2] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i4 (.D(\ctrlword_595_3_15__N_622[3] ), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[3] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i5 (.D(ctrlword_595_3_15__N_622[4]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i5.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i6 (.D(ctrlword_595_3_15__N_622[5]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i6.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i7 (.D(ctrlword_595_3_15__N_622[6]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[6] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i7.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_622_7__I_0_i8 (.D(ctrlword_595_3_15__N_622[7]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[7] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_3_15__N_622_7__I_0_i8.GSR = "DISABLED";
    LUT4 i5625_3_lut_4_lut (.A(\voltage_code[6] ), .B(n38205), .C(\voltage_code[5] ), 
         .D(n38194), .Z(n375[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5625_3_lut_4_lut.init = 16'h6966;
    CCU2D add_436_8 (.A0(\voltage_code[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ADC_level[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32592), .COUT(n32593), .S0(\voltage_code[13] ), 
          .S1(\voltage_code[14] ));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_436_8.INIT0 = 16'h5aaa;
    defparam add_436_8.INIT1 = 16'h5aaa;
    defparam add_436_8.INJECT1_0 = "NO";
    defparam add_436_8.INJECT1_1 = "NO";
    CCU2D add_436_2 (.A0(\realv_5[0] ), .B0(\ADC_level[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[1] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n32590), .S1(voltage_code[8]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_436_2.INIT0 = 16'h7000;
    defparam add_436_2.INIT1 = 16'h5aaa;
    defparam add_436_2.INJECT1_0 = "NO";
    defparam add_436_2.INJECT1_1 = "NO";
    LUT4 decade_3__bdd_4_lut (.A(\decade[3] ), .B(n38239), .C(n38240), 
         .D(n38241), .Z(\ctrlword_595_5_15__N_646[2] )) /* synthesis lut_function=(A (((D)+!C)+!B)+!A !(B (C (D))+!B (C+(D)))) */ ;
    defparam decade_3__bdd_4_lut.init = 16'hae6f;
    CCU2D add_436_6 (.A0(\voltage_code[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32591), .COUT(n32592), .S0(voltage_code[11]), 
          .S1(\voltage_code[12] ));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_436_6.INIT0 = 16'h5aaa;
    defparam add_436_6.INIT1 = 16'h5aaa;
    defparam add_436_6.INJECT1_0 = "NO";
    defparam add_436_6.INJECT1_1 = "NO";
    PFUMX realv_4_3__I_0_Mux_4_i15 (.BLUT(n7), .ALUT(n10388), .C0(n38094), 
          .Z(ctrlword_595_5_15__N_654[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i5695_3_lut_rep_423_4_lut_3_lut_4_lut (.A(n370[1]), .B(n38196), 
         .C(n373[1]), .D(n38187), .Z(n38170)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5695_3_lut_rep_423_4_lut_3_lut_4_lut.init = 16'h9666;
    L6MUX21 mux_3485_i6 (.D0(n35593), .D1(n35599), .SD(\ctrlword_595_3[13] ), 
            .Z(n35809));
    LUT4 i10560_2_lut_rep_435_4_lut (.A(n370[1]), .B(n38196), .C(n373[1]), 
         .D(n38187), .Z(n38182)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10560_2_lut_rep_435_4_lut.init = 16'hf600;
    PFUMX realv_4_3__I_0_Mux_6_i15 (.BLUT(n22487), .ALUT(n8), .C0(n38094), 
          .Z(n35593)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i6304_2_lut_rep_474_4_lut_4_lut (.A(n38251), .B(n38250), .C(n362[1]), 
         .D(n7704), .Z(n38221)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i6304_2_lut_rep_474_4_lut_4_lut.init = 16'h936c;
    LUT4 i10570_2_lut_rep_520_4_lut (.A(\voltage_code[2] ), .B(n38274), 
         .C(n355[1]), .D(n355[2]), .Z(n38267)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10570_2_lut_rep_520_4_lut.init = 16'heee0;
    L6MUX21 mux_3486_i6 (.D0(n35583), .D1(n35603), .SD(\ctrlword_595_3[13] ), 
            .Z(n35677));
    LUT4 i33035_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2), 
         .D(n1), .Z(n36341)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33035_3_lut_4_lut.init = 16'hf960;
    LUT4 i33027_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5), 
         .D(n4), .Z(n36333)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33027_3_lut_4_lut.init = 16'hf960;
    LUT4 i33017_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_1), 
         .D(n1_adj_2), .Z(n36323)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33017_3_lut_4_lut.init = 16'hf960;
    PFUMX realv_5_3__I_0_Mux_6_i15 (.BLUT(n22469), .ALUT(n8_adj_1293), .C0(n38110), 
          .Z(n35583)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i33024_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_3), 
         .D(n4_adj_4), .Z(n36330)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33024_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_2_0__bdd_4_lut (.A(n38085), .B(n38079), .C(n38084), .D(n38086), 
         .Z(ctrlword_595_3_15__N_622[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_2_0__bdd_4_lut.init = 16'hf67d;
    LUT4 i33029_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_5), 
         .D(n10228), .Z(n36335)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33029_3_lut_4_lut.init = 16'hf960;
    PFUMX i34571 (.BLUT(n355[3]), .ALUT(n38725), .C0(\ADC_level[7] ), 
          .Z(n38726));
    LUT4 i32726_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_6), 
         .D(n1_adj_2), .Z(n36032)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32726_3_lut_4_lut.init = 16'hf960;
    LUT4 i5561_2_lut_rep_514_4_lut_4_lut (.A(\voltage_code[2] ), .B(n38274), 
         .C(n355[1]), .D(n355[2]), .Z(n38261)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5561_2_lut_rep_514_4_lut_4_lut.init = 16'h554a;
    LUT4 i6133_3_lut_4_lut (.A(\voltage_code[5] ), .B(n38194), .C(\voltage_code[4] ), 
         .D(n38179), .Z(n378[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6133_3_lut_4_lut.init = 16'h6966;
    LUT4 i32727_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_7), 
         .D(n4_adj_8), .Z(n36033)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32727_3_lut_4_lut.init = 16'hf960;
    LUT4 i4967_2_lut_rep_437_3_lut (.A(\voltage_code[5] ), .B(n38194), .C(\voltage_code[4] ), 
         .Z(n38184)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4967_2_lut_rep_437_3_lut.init = 16'hf6f6;
    LUT4 Mux_404_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_9), 
         .D(n4_adj_10), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_404_i6_3_lut_4_lut.init = 16'hf960;
    PFUMX decade_3__I_0_Mux_4_i15 (.BLUT(n7_c), .ALUT(n10444), .C0(\decade[3] ), 
          .Z(ctrlword_595_5_15__N_646[4])) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i5247_2_lut_rep_741 (.A(\voltage_code[6] ), .B(\voltage_code[5] ), 
         .C(\ADC_level[7] ), .Z(n38488)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5247_2_lut_rep_741.init = 16'he0e0;
    LUT4 i4928_4_lut_then_4_lut (.A(n7772), .B(n38316), .C(n7768), .D(realv_1_1__N_292), 
         .Z(n38504)) /* synthesis lut_function=(A (B (D)+!B (C))+!A !(B (D)+!B !(C))) */ ;
    defparam i4928_4_lut_then_4_lut.init = 16'hb874;
    LUT4 i32915_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5), 
         .D(n4), .Z(n36221)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32915_3_lut_4_lut.init = 16'hf960;
    LUT4 i6557_3_lut_4_lut_3_lut (.A(n355[3]), .B(decade_3__N_561), .C(n38488), 
         .Z(n353[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i6557_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i32932_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_6), 
         .D(n1_adj_2), .Z(n36238)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32932_3_lut_4_lut.init = 16'hf960;
    LUT4 i32875_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_1), 
         .D(n1_adj_2), .Z(n36181)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32875_3_lut_4_lut.init = 16'hf960;
    LUT4 i32923_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_5), 
         .D(n10228), .Z(n36229)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32923_3_lut_4_lut.init = 16'hf960;
    LUT4 i32914_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_11), 
         .D(n1_adj_12), .Z(n36220)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32914_3_lut_4_lut.init = 16'hf960;
    LUT4 i33023_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_13), 
         .D(n1_adj_12), .Z(n36329)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33023_3_lut_4_lut.init = 16'hf960;
    LUT4 i32906_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_3), 
         .D(n4_adj_4), .Z(n36212)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32906_3_lut_4_lut.init = 16'hf960;
    LUT4 i5828_3_lut_4_lut (.A(n39798), .B(n38307), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n355[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5828_3_lut_4_lut.init = 16'h7f80;
    LUT4 Mux_321_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_9), 
         .D(n4_adj_10), .Z(n6_adj_14)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_321_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i5002_2_lut_rep_523_3_lut (.A(\voltage_code[3] ), .B(n39798), .C(\voltage_code[2] ), 
         .Z(n38270)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5002_2_lut_rep_523_3_lut.init = 16'hf6f6;
    LUT4 i32929_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2), 
         .D(n1), .Z(n36235)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32929_3_lut_4_lut.init = 16'hf960;
    LUT4 i32927_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_15), 
         .D(n4_adj_16), .Z(n36233)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32927_3_lut_4_lut.init = 16'hf960;
    LUT4 i32924_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_17), 
         .D(n4_adj_18), .Z(n36230)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32924_3_lut_4_lut.init = 16'hf960;
    LUT4 i4928_4_lut_else_4_lut (.A(n7772), .B(n38316), .C(n7768), .D(realv_1_1__N_292), 
         .Z(n38503)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (D)+!B !(C (D))))) */ ;
    defparam i4928_4_lut_else_4_lut.init = 16'h3044;
    LUT4 i33036_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_19), 
         .D(n4_adj_20), .Z(n36342)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33036_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_330_4_lut_4_lut (.A(n38101), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n38103), .Z(n38077)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_330_4_lut_4_lut.init = 16'hff6c;
    LUT4 i32926_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_21), 
         .D(n10228), .Z(n36232)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32926_3_lut_4_lut.init = 16'hf960;
    LUT4 n13808_bdd_4_lut_4_lut (.A(n355[3]), .B(decade_3__N_561), .C(n38488), 
         .D(n38259), .Z(n7731)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B (C+!(D))+!B !(C))) */ ;
    defparam n13808_bdd_4_lut_4_lut.init = 16'h9c18;
    LUT4 i32884_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_22), 
         .D(n1_adj_23), .Z(n36190)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32884_3_lut_4_lut.init = 16'hf960;
    LUT4 i32876_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_24), 
         .D(n4_adj_25), .Z(n36182)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32876_3_lut_4_lut.init = 16'hf960;
    LUT4 i18365_2_lut_2_lut_4_lut_4_lut (.A(n38101), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n38103), .Z(ctrlword_595_2_15__N_614[4])) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B)) */ ;
    defparam i18365_2_lut_2_lut_4_lut_4_lut.init = 16'hff93;
    LUT4 i32885_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_26), 
         .D(n4_adj_27), .Z(n36191)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32885_3_lut_4_lut.init = 16'hf960;
    LUT4 i32930_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_19), 
         .D(n4_adj_20), .Z(n36236)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32930_3_lut_4_lut.init = 16'hf960;
    LUT4 i32905_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n2_adj_13), 
         .D(n1_adj_12), .Z(n36211)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32905_3_lut_4_lut.init = 16'hf960;
    LUT4 i5589_2_lut_rep_464_4_lut_4_lut_then_4_lut (.A(n38225), .B(voltage_code[8]), 
         .C(n365[1]), .D(n365[2]), .Z(n38565)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i5589_2_lut_rep_464_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i5589_2_lut_rep_464_4_lut_4_lut_else_4_lut (.A(n38225), .B(voltage_code[8]), 
         .C(n365[1]), .D(n365[2]), .Z(n38564)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i5589_2_lut_rep_464_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i32933_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_7), 
         .D(n4_adj_8), .Z(n36239)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32933_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_rep_327_2_lut_4_lut_4_lut (.A(n38101), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n38502), .Z(n38074)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_327_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 Mux_330_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38135), .C(n5_adj_28), 
         .D(n4_adj_29), .Z(n6_adj_30)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_330_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_4_3__bdd_4_lut_33747 (.A(\decade[3] ), .B(n38239), .C(n38240), 
         .D(n38241), .Z(n37045)) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !(B+(C+!(D))))) */ ;
    defparam realv_4_3__bdd_4_lut_33747.init = 16'h76f7;
    LUT4 realv_3_0__bdd_4_lut_33798 (.A(n38098), .B(n38088), .C(n38089), 
         .D(n38097), .Z(\ctrlword_595_4_15__N_638[6] )) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A (B (D)+!B (C (D))))) */ ;
    defparam realv_3_0__bdd_4_lut_33798.init = 16'h297f;
    LUT4 realv_4_3__bdd_4_lut_34278 (.A(n38094), .B(n38105), .C(n38104), 
         .D(n38114), .Z(n37046)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam realv_4_3__bdd_4_lut_34278.init = 16'h7f67;
    LUT4 i6181_2_lut_rep_408_4_lut_4_lut_then_4_lut (.A(n374[2]), .B(n374[1]), 
         .C(n38190), .D(n374[0]), .Z(n38572)) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B (C (D)+!C !(D))+!B (D)))) */ ;
    defparam i6181_2_lut_rep_408_4_lut_4_lut_then_4_lut.init = 16'h0cd1;
    LUT4 i6181_2_lut_rep_408_4_lut_4_lut_else_4_lut (.A(n374[2]), .B(n374[1]), 
         .C(n38190), .D(n374[0]), .Z(n38571)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C+(D))+!B !(C (D))))) */ ;
    defparam i6181_2_lut_rep_408_4_lut_4_lut_else_4_lut.init = 16'h322e;
    LUT4 realv_5_3__bdd_3_lut_4_lut_4_lut (.A(n38139), .B(n38135), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n37932)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_5_3__bdd_3_lut_4_lut_4_lut.init = 16'hdbe7;
    LUT4 i13_3_lut_4_lut_4_lut (.A(n38139), .B(n38135), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n8_adj_1293)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut.init = 16'h3ca6;
    LUT4 i19088_2_lut_3_lut_4_lut_4_lut (.A(n38139), .B(n38135), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n22469)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19088_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 realv_5_3__bdd_3_lut_33811_4_lut_4_lut (.A(n38139), .B(n38135), 
         .C(\voltage_code[1] ), .D(\realv_5[0] ), .Z(n36976)) /* synthesis lut_function=(A (B (C)+!B !(C (D)))+!A !(B (D)+!B (C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_5_3__bdd_3_lut_33811_4_lut_4_lut.init = 16'h82e7;
    LUT4 i4949_3_lut_rep_364_4_lut (.A(n383[1]), .B(n38132), .C(n386[1]), 
         .D(n38119), .Z(n38111)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4949_3_lut_rep_364_4_lut.init = 16'hf666;
    LUT4 i10624_2_lut_rep_365_4_lut (.A(n383[1]), .B(n38132), .C(n386[1]), 
         .D(n38119), .Z(n38112)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10624_2_lut_rep_365_4_lut.init = 16'hf600;
    LUT4 i6091_3_lut_rep_351_4_lut_3_lut_4_lut (.A(n383[1]), .B(n38132), 
         .C(n386[1]), .D(n38119), .Z(n38098)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6091_3_lut_rep_351_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i6112_2_lut_rep_341_3_lut_3_lut_4_lut (.A(n384[1]), .B(n38127), 
         .C(n387[1]), .D(n38108), .Z(n38088)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6112_2_lut_rep_341_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i6084_2_lut_rep_347_3_lut_3_lut_4_lut (.A(n383[1]), .B(n38132), 
         .C(n386[1]), .D(n38119), .Z(n38094)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6084_2_lut_rep_347_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 voltage_code_4__bdd_4_lut_34692 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n38345)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut_34692.init = 16'h2962;
    LUT4 voltage_code_4__bdd_4_lut_35086 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n38370)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_4__bdd_4_lut_35086.init = 16'h83c8;
    LUT4 i2_3_lut_4_lut (.A(n38080), .B(n38103), .C(n15351), .D(n35589), 
         .Z(n35310)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut.init = 16'h1000;
    LUT4 i2_3_lut_4_lut_adj_55 (.A(n38080), .B(n38103), .C(n38284), .D(n38469), 
         .Z(\data_r_131__N_1121[121] )) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_adj_55.init = 16'h0010;
    LUT4 i6069_2_lut_rep_357_4_lut_4_lut (.A(realv_3_0__N_535), .B(n38125), 
         .C(n386[1]), .D(n38118), .Z(n38104)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6069_2_lut_rep_357_4_lut_4_lut.init = 16'h554a;
    LUT4 i33265_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n14), .D(n7_adj_31), 
         .Z(n36081)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33265_3_lut_4_lut.init = 16'hf960;
    LUT4 i32776_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n14_adj_32), 
         .D(n37060), .Z(n36082)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32776_3_lut_4_lut.init = 16'hf960;
    LUT4 n38063_bdd_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n38061), 
         .D(n38063), .Z(n38064)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n38063_bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i32740_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n14_adj_33), 
         .D(n36153), .Z(n36046)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32740_3_lut_4_lut.init = 16'hf960;
    LUT4 i32723_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n14_adj_34), 
         .D(n37074), .Z(n36029)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32723_3_lut_4_lut.init = 16'hf960;
    LUT4 i32743_3_lut_4_lut (.A(n386[1]), .B(n38112), .C(n14_adj_35), 
         .D(n36984), .Z(n36049)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32743_3_lut_4_lut.init = 16'hf960;
    LUT4 i5040_2_lut_rep_516_3_lut_4_lut_then_4_lut (.A(\voltage_code[5] ), 
         .B(n355[3]), .C(\ADC_level[7] ), .D(\voltage_code[4] ), .Z(n39808)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5040_2_lut_rep_516_3_lut_4_lut_then_4_lut.init = 16'he0c0;
    LUT4 i7846_2_lut_rep_335_3_lut_3_lut_4_lut (.A(n383[3]), .B(n38126), 
         .C(n38115), .D(n38099), .Z(n38082)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7846_2_lut_rep_335_3_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i6105_3_lut_rep_350_4_lut (.A(n383[3]), .B(n38126), .C(n38115), 
         .D(n38099), .Z(n38097)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6105_3_lut_rep_350_4_lut.init = 16'h6966;
    LUT4 voltage_code_13__bdd_4_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n39756)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam voltage_code_13__bdd_4_lut_4_lut.init = 16'h80e0;
    LUT4 i7284_2_lut_3_lut_3_lut_4_lut (.A(n383[3]), .B(n38126), .C(n38115), 
         .D(n38099), .Z(n10412)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7284_2_lut_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i2_4_lut_4_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n7772)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C))) */ ;
    defparam i2_4_lut_4_lut_4_lut.init = 16'h807c;
    LUT4 i6382_3_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n7768)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6382_3_lut_4_lut.init = 16'h7fe0;
    LUT4 i5821_2_lut_3_lut_4_lut_4_lut (.A(n38345), .B(\voltage_code[3] ), 
         .C(decade_3__N_580), .D(decade_3__N_576), .Z(n355[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5821_2_lut_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 i6077_3_lut_rep_358_4_lut (.A(n382[3]), .B(n38131), .C(realv_3_0__N_535), 
         .D(n38111), .Z(n38105)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6077_3_lut_rep_358_4_lut.init = 16'h6966;
    LUT4 i7789_2_lut_rep_348_3_lut_3_lut_4_lut (.A(n382[3]), .B(n38131), 
         .C(realv_3_0__N_535), .D(n38111), .Z(n38095)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7789_2_lut_rep_348_3_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i4875_2_lut_rep_372_3_lut (.A(n382[3]), .B(n38131), .C(realv_3_0__N_535), 
         .Z(n38119)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4875_2_lut_rep_372_3_lut.init = 16'hf6f6;
    LUT4 i7267_2_lut_3_lut_3_lut_4_lut (.A(n382[3]), .B(n38131), .C(realv_3_0__N_535), 
         .D(n38111), .Z(n10395)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7267_2_lut_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i5213_2_lut_rep_354_4_lut_4_lut (.A(n38130), .B(n38129), .C(n384[1]), 
         .D(realv_1_0__N_466), .Z(n38101)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i5213_2_lut_rep_354_4_lut_4_lut.init = 16'hff6c;
    LUT4 i5862_2_lut_4_lut_4_lut (.A(n381[0]), .B(n38133), .C(n381[1]), 
         .D(n381[2]), .Z(realv_1_0__N_466)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5862_2_lut_4_lut_4_lut.init = 16'h332c;
    LUT4 i2_4_lut (.A(\ADC_level[7] ), .B(\voltage_code[6] ), .C(\voltage_code[5] ), 
         .D(n38489), .Z(\ctrlword_595_4_15__N_630[1] )) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i5884_3_lut_rep_356_4_lut_3_lut_4_lut (.A(n381[0]), .B(n38133), 
         .C(n381[1]), .D(n381[2]), .Z(n38103)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5884_3_lut_rep_356_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5877_2_lut_3_lut_3_lut_4_lut (.A(n381[0]), .B(n38133), .C(n381[1]), 
         .D(n381[2]), .Z(realv_1_0__N_460)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5877_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i14554_1_lut_rep_343_3_lut_4_lut_3_lut_4_lut (.A(n381[0]), .B(n38133), 
         .C(n381[1]), .D(n381[2]), .Z(n38090)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i14554_1_lut_rep_343_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i5870_3_lut_4_lut (.A(n381[0]), .B(n38133), .C(n381[1]), .D(n381[2]), 
         .Z(realv_1_0__N_464)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5870_3_lut_4_lut.init = 16'h998a;
    PFUMX decade_3__I_0_Mux_6_i15 (.BLUT(n22509), .ALUT(n8_adj_1327), .C0(\decade[3] ), 
          .Z(n35599)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut (.A(n38134), .B(n385[2]), .C(n385[1]), 
         .D(n38502), .Z(n1_adj_36)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i10548_2_lut_rep_380_4_lut (.A(n380[1]), .B(n38143), .C(n384[1]), 
         .D(n38130), .Z(n38127)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10548_2_lut_rep_380_4_lut.init = 16'hf600;
    LUT4 i4944_3_lut_rep_379_4_lut (.A(n380[1]), .B(n38143), .C(n384[1]), 
         .D(n38130), .Z(n38126)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4944_3_lut_rep_379_4_lut.init = 16'hf666;
    LUT4 i5856_3_lut_rep_366_4_lut_3_lut_4_lut (.A(n380[1]), .B(n38143), 
         .C(n384[1]), .D(n38130), .Z(n38113)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5856_3_lut_rep_366_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5849_2_lut_rep_360_3_lut_3_lut_4_lut (.A(n380[1]), .B(n38143), 
         .C(n384[1]), .D(n38130), .Z(n38107)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5849_2_lut_rep_360_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4930_3_lut_4_lut_rep_768 (.A(voltage_code[11]), .B(n38268), .C(n361[1]), 
         .D(realv_1_1__N_293), .Z(n39815)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4930_3_lut_4_lut_rep_768.init = 16'hffe0;
    LUT4 i5834_2_lut_rep_375_4_lut_4_lut (.A(n38136), .B(n383[3]), .C(n384[1]), 
         .D(n38129), .Z(n38122)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5834_2_lut_rep_375_4_lut_4_lut.init = 16'h332c;
    LUT4 i1_2_lut_4_lut_4_lut (.A(n38108), .B(n38107), .C(n387[1]), .D(n38086), 
         .Z(n35496)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'hff6c;
    LUT4 x_cnt_1__bdd_3_lut_34211 (.A(\x_cnt[2] ), .B(\data_r[91] ), .C(\data_r[98] ), 
         .Z(n37762)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam x_cnt_1__bdd_3_lut_34211.init = 16'hd8d8;
    LUT4 voltage_code_12__bdd_4_lut_34513 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n38268)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_12__bdd_4_lut_34513.init = 16'h294a;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut_adj_56 (.A(n38108), .B(n38107), .C(n387[1]), 
         .D(n38502), .Z(n1_adj_37)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut_adj_56.init = 16'h9300;
    LUT4 i4878_2_lut_rep_361_4_lut_4_lut (.A(n38138), .B(n38137), .C(n383[1]), 
         .D(n38122), .Z(n38108)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i4878_2_lut_rep_361_4_lut_4_lut.init = 16'hff6c;
    LUT4 i5940_3_lut_rep_367_4_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38139), 
         .C(n385[1]), .D(n385[2]), .Z(n38114)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5940_3_lut_rep_367_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5933_2_lut_rep_363_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38139), 
         .C(n385[1]), .D(n385[2]), .Z(n38110)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5933_2_lut_rep_363_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 voltage_code_13__bdd_2_lut (.A(\voltage_code[13] ), .B(\voltage_code[15] ), 
         .Z(n39757)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam voltage_code_13__bdd_2_lut.init = 16'h4444;
    LUT4 i5918_2_lut_rep_369_4_lut_4_lut (.A(\voltage_code[1] ), .B(n38139), 
         .C(n385[1]), .D(n385[2]), .Z(n38116)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5918_2_lut_rep_369_4_lut_4_lut.init = 16'h554a;
    LUT4 i4947_3_lut_rep_388 (.A(\voltage_code[1] ), .B(n38139), .C(n385[1]), 
         .D(n385[2]), .Z(n38135)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4947_3_lut_rep_388.init = 16'hffe0;
    LUT4 x_cnt_1__bdd_3_lut_34219 (.A(\data_r[96] ), .B(\data_r[100] ), 
         .C(\x_cnt[2] ), .Z(n37763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_cnt_1__bdd_3_lut_34219.init = 16'hcaca;
    LUT4 n37764_bdd_3_lut (.A(n37764), .B(n37775), .C(\x_cnt[3] ), .Z(n37765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37764_bdd_3_lut.init = 16'hcaca;
    LUT4 i7190_2_lut_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38139), 
         .C(n385[1]), .D(n385[2]), .Z(n10314)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i7190_2_lut_3_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 x_cnt_1__bdd_2_lut (.A(\x_cnt[2] ), .B(\data_r[99] ), .Z(n37776)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam x_cnt_1__bdd_2_lut.init = 16'h4444;
    LUT4 i5926_3_lut_rep_370_4_lut (.A(\voltage_code[1] ), .B(n38139), .C(n385[1]), 
         .D(n385[2]), .Z(n38117)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5926_3_lut_rep_370_4_lut.init = 16'h998c;
    LUT4 i7720_2_lut_rep_362_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38139), 
         .C(n385[1]), .D(n385[2]), .Z(n38109)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7720_2_lut_rep_362_3_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 x_cnt_3__bdd_4_lut (.A(n21531), .B(\x_cnt[1] ), .C(n12260), .D(\x_cnt[2] ), 
         .Z(n37775)) /* synthesis lut_function=(A (B (C (D))+!B !(D))+!A (B (C (D)))) */ ;
    defparam x_cnt_3__bdd_4_lut.init = 16'hc022;
    LUT4 x_cnt_1__bdd_3_lut (.A(\data_r[97] ), .B(\data_r[101] ), .C(\x_cnt[2] ), 
         .Z(n37777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_cnt_1__bdd_3_lut.init = 16'hcaca;
    LUT4 i5842_3_lut_4_lut (.A(n38154), .B(n38142), .C(n383[3]), .D(n38126), 
         .Z(n387[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5842_3_lut_4_lut.init = 16'h6966;
    LUT4 n37778_bdd_3_lut (.A(n37778), .B(n37775), .C(\x_cnt[3] ), .Z(n37779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n37778_bdd_3_lut.init = 16'hcaca;
    LUT4 i5847_2_lut_rep_383_3_lut (.A(n38154), .B(n38142), .C(n383[3]), 
         .Z(n38130)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5847_2_lut_rep_383_3_lut.init = 16'hf6f6;
    LUT4 i5751_3_lut_rep_368_4_lut_3_lut_4_lut (.A(n379[1]), .B(n38141), 
         .C(n383[1]), .D(n38138), .Z(n38115)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5751_3_lut_rep_368_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4940_3_lut_rep_384_4_lut (.A(n379[1]), .B(n38141), .C(n383[1]), 
         .D(n38138), .Z(n38131)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4940_3_lut_rep_384_4_lut.init = 16'hf666;
    LUT4 i5744_2_lut_rep_371_3_lut_3_lut_4_lut (.A(n379[1]), .B(n38141), 
         .C(n383[1]), .D(n38138), .Z(n38118)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5744_2_lut_rep_371_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i10262_2_lut_rep_385_4_lut (.A(n379[1]), .B(n38141), .C(n383[1]), 
         .D(n38138), .Z(n38132)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10262_2_lut_rep_385_4_lut.init = 16'hf600;
    LUT4 i5729_2_lut_rep_378_4_lut_4_lut (.A(n38144), .B(n382[3]), .C(n383[1]), 
         .D(n38137), .Z(n38125)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5729_2_lut_rep_378_4_lut_4_lut.init = 16'h332c;
    LUT4 voltage_code_12__bdd_4_lut_rep_757 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n39796)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_rep_757.init = 16'h83e0;
    LUT4 i4872_2_lut_rep_387_3_lut (.A(\voltage_code[2] ), .B(n38145), .C(\voltage_code[1] ), 
         .Z(n38134)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4872_2_lut_rep_387_3_lut.init = 16'hf6f6;
    LUT4 realv_3_0__bdd_4_lut_34438 (.A(n38098), .B(n38088), .C(n38089), 
         .D(n38097), .Z(\ctrlword_595_4_15__N_638[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_3_0__bdd_4_lut_34438.init = 16'hf67d;
    LUT4 i5737_3_lut_4_lut (.A(n378[3]), .B(n38146), .C(n382[3]), .D(n38131), 
         .Z(n386[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5737_3_lut_4_lut.init = 16'h6966;
    LUT4 realv_5_3__bdd_4_lut_33808 (.A(n38237), .B(n38249), .C(n38245), 
         .D(\realv_5[0] ), .Z(n37124)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam realv_5_3__bdd_4_lut_33808.init = 16'h7f67;
    LUT4 i5742_2_lut_rep_391_3_lut (.A(n378[3]), .B(n38146), .C(n382[3]), 
         .Z(n38138)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5742_2_lut_rep_391_3_lut.init = 16'hf6f6;
    LUT4 i5477_2_lut_rep_508_4_lut (.A(voltage_code[11]), .B(n38268), .C(n361[1]), 
         .D(realv_1_1__N_293), .Z(n38255)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5477_2_lut_rep_508_4_lut.init = 16'h554a;
    LUT4 i6217_3_lut_4_lut_3_lut (.A(n38147), .B(n371[0]), .C(n39795), 
         .Z(n381[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i6217_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i6209_2_lut_3_lut_3_lut (.A(n38147), .B(n371[0]), .C(n39795), 
         .Z(n381[0])) /* synthesis lut_function=(!(A (C)+!A !(B (C)))) */ ;
    defparam i6209_2_lut_3_lut_3_lut.init = 16'h4a4a;
    LUT4 i2_3_lut_rep_331_4_lut (.A(realv_1_0__N_464), .B(n38092), .C(n38084), 
         .D(n35496), .Z(n38078)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_rep_331_4_lut.init = 16'hfff6;
    LUT4 i5065_2_lut_rep_569 (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(\voltage_code[15] ), .Z(n38316)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5065_2_lut_rep_569.init = 16'he0e0;
    LUT4 i12005_2_lut_3_lut (.A(n38147), .B(n371[0]), .C(n39795), .Z(n381[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12005_2_lut_3_lut.init = 16'h1010;
    LUT4 i5492_2_lut_rep_503_3_lut_4_lut_4_lut (.A(voltage_code[11]), .B(n38268), 
         .C(n361[1]), .D(realv_1_1__N_293), .Z(n38250)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5492_2_lut_rep_503_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 i5215_2_lut_rep_332_3_lut_3_lut_4_lut (.A(realv_1_0__N_466), .B(n38113), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38079)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5215_2_lut_rep_332_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5660_2_lut_3_lut_3_lut_4_lut (.A(n378[1]), .B(n38157), .C(n382[1]), 
         .D(n38149), .Z(n385[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5660_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4937_3_lut_rep_398_4_lut (.A(n378[1]), .B(n38157), .C(n382[1]), 
         .D(n38149), .Z(n38145)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4937_3_lut_rep_398_4_lut.init = 16'hf666;
    LUT4 i5667_3_lut_4_lut_3_lut_4_lut (.A(n378[1]), .B(n38157), .C(n382[1]), 
         .D(n38149), .Z(realv_3_0__N_535)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5667_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5645_2_lut_rep_392_4_lut_4_lut (.A(n38156), .B(\voltage_code[2] ), 
         .C(n382[1]), .D(n38148), .Z(n38139)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5645_2_lut_rep_392_4_lut_4_lut.init = 16'h332c;
    LUT4 i5527_3_lut_rep_386_4_lut_3_lut_4_lut (.A(n377[1]), .B(n38161), 
         .C(n380[1]), .D(n38151), .Z(n38133)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5527_3_lut_rep_386_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10587_2_lut_rep_396_4_lut (.A(n377[1]), .B(n38161), .C(n380[1]), 
         .D(n38151), .Z(n38143)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10587_2_lut_rep_396_4_lut.init = 16'hf600;
    LUT4 i4931_3_lut_rep_395_4_lut (.A(n377[1]), .B(n38161), .C(n380[1]), 
         .D(n38151), .Z(n38142)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4931_3_lut_rep_395_4_lut.init = 16'hf666;
    LUT4 i5520_2_lut_rep_382_3_lut_3_lut_4_lut (.A(n377[1]), .B(n38161), 
         .C(n380[1]), .D(n38151), .Z(n38129)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5520_2_lut_rep_382_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5576_2_lut_rep_509_3_lut_3_lut_4_lut (.A(\voltage_code[2] ), .B(n38274), 
         .C(n355[1]), .D(n355[2]), .Z(n38256)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5576_2_lut_rep_509_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i33018_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_24), 
         .D(n4_adj_25), .Z(n36324)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33018_3_lut_4_lut.init = 16'hf960;
    LUT4 i5222_3_lut_rep_333_4_lut_3_lut_4_lut (.A(realv_1_0__N_466), .B(n38113), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38080)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5222_3_lut_rep_333_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5505_2_lut_rep_389_4_lut_4_lut (.A(n38154), .B(n38155), .C(n380[1]), 
         .D(n38150), .Z(n38136)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5505_2_lut_rep_389_4_lut_4_lut.init = 16'h554a;
    PFUMX i34358 (.BLUT(n37981), .ALUT(n38369), .C0(\ctrlword_595_3[13] ), 
          .Z(\ctrlword_595_4[4] ));
    LUT4 i5415_3_lut_4_lut_3_lut_4_lut (.A(n376[1]), .B(n38165), .C(n379[1]), 
         .D(n38153), .Z(n383[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5415_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4784_3_lut_rep_399_4_lut (.A(n376[1]), .B(n38165), .C(n379[1]), 
         .D(n38153), .Z(n38146)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4784_3_lut_rep_399_4_lut.init = 16'hf666;
    LUT4 i10552_2_lut_rep_394_3_lut_4_lut (.A(n376[1]), .B(n38165), .C(n379[1]), 
         .D(n38153), .Z(n38141)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10552_2_lut_rep_394_3_lut_4_lut.init = 16'hf600;
    LUT4 i5408_2_lut_rep_390_3_lut_3_lut_4_lut (.A(n376[1]), .B(n38165), 
         .C(n379[1]), .D(n38153), .Z(n38137)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5408_2_lut_rep_390_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i6729_1_lut_rep_329_3_lut_4_lut_3_lut_4_lut (.A(realv_1_0__N_466), 
         .B(n38113), .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38076)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6729_1_lut_rep_329_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i1_2_lut_rep_742 (.A(\voltage_code[4] ), .B(\voltage_code[3] ), 
         .Z(n38489)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_742.init = 16'heeee;
    LUT4 i5393_2_lut_rep_397_4_lut_4_lut (.A(n378[3]), .B(n38162), .C(n379[1]), 
         .D(n38152), .Z(n38144)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5393_2_lut_rep_397_4_lut_4_lut.init = 16'h554a;
    LUT4 i10553_2_lut_rep_345_4_lut (.A(realv_1_0__N_466), .B(n38113), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n38092)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10553_2_lut_rep_345_4_lut.init = 16'heee0;
    LUT4 i5513_3_lut_4_lut (.A(n38170), .B(n38160), .C(n38154), .D(n38142), 
         .Z(n384[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5513_3_lut_4_lut.init = 16'h6966;
    LUT4 i5200_2_lut_rep_337_4_lut_4_lut (.A(realv_1_0__N_466), .B(n38113), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38084)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5200_2_lut_rep_337_4_lut_4_lut.init = 16'h332c;
    LUT4 i5653_3_lut_4_lut (.A(\voltage_code[3] ), .B(n38163), .C(\voltage_code[2] ), 
         .D(n38145), .Z(n385[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5653_3_lut_4_lut.init = 16'h6966;
    LUT4 i6424_3_lut_3_lut (.A(n38203), .B(n368[3]), .C(realv_1_1__N_303), 
         .Z(n374[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i6424_3_lut_3_lut.init = 16'h8c8c;
    LUT4 i5658_2_lut_rep_402_3_lut (.A(\voltage_code[3] ), .B(n38163), .C(\voltage_code[2] ), 
         .Z(n38149)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5658_2_lut_rep_402_3_lut.init = 16'hf6f6;
    LUT4 realv_3_2__bdd_4_lut (.A(n38097), .B(n38088), .C(n38098), .D(n38089), 
         .Z(\ctrlword_595_4_15__N_638[5] )) /* synthesis lut_function=(!(A (B ((D)+!C))+!A !(B+(C+!(D))))) */ ;
    defparam realv_3_2__bdd_4_lut.init = 16'h76f7;
    PFUMX unit_3__I_0_Mux_4_i15 (.BLUT(n7_adj_38), .ALUT(n10553), .C0(n38237), 
          .Z(\ctrlword_595_6_15__N_662[4] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 realv_2_3__bdd_4_lut (.A(n38079), .B(n38084), .C(n38085), .D(n38086), 
         .Z(ctrlword_595_3_15__N_622[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam realv_2_3__bdd_4_lut.init = 16'hbdee;
    LUT4 realv_2_1__bdd_4_lut_34323 (.A(n38084), .B(n38085), .C(n38079), 
         .D(n38086), .Z(ctrlword_595_3_15__N_622[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B (C (D)+!C !(D)))) */ ;
    defparam realv_2_1__bdd_4_lut_34323.init = 16'hb7f1;
    LUT4 i4972_3_lut_rep_355 (.A(realv_1_0__N_466), .B(n38113), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n38102)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4972_3_lut_rep_355.init = 16'hffe0;
    LUT4 realv_2_1__bdd_4_lut (.A(n38084), .B(n38079), .C(n38086), .D(n38085), 
         .Z(ctrlword_595_3_15__N_622[5])) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B))) */ ;
    defparam realv_2_1__bdd_4_lut.init = 16'h7f3d;
    LUT4 i4959_2_lut_rep_406_3_lut (.A(n375[3]), .B(n38164), .C(n378[3]), 
         .Z(n38153)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4959_2_lut_rep_406_3_lut.init = 16'hf6f6;
    LUT4 i5401_3_lut_4_lut (.A(n375[3]), .B(n38164), .C(n378[3]), .D(n38146), 
         .Z(n383[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5401_3_lut_4_lut.init = 16'h6966;
    LUT4 i1_2_lut_3_lut (.A(\voltage_code[4] ), .B(\voltage_code[3] ), .C(\voltage_code[2] ), 
         .Z(n35513)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 realv_3_3__bdd_4_lut_34437 (.A(n38088), .B(n38097), .C(n38098), 
         .D(n38089), .Z(n37981)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D)))+!A (B (C (D)+!C !(D))+!B !((D)+!C)))) */ ;
    defparam realv_3_3__bdd_4_lut_34437.init = 16'h3deb;
    LUT4 i4957_2_lut_rep_404_4_lut_4_lut (.A(n38172), .B(n38171), .C(n376[1]), 
         .D(n38155), .Z(n38151)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i4957_2_lut_rep_404_4_lut_4_lut.init = 16'hff6c;
    LUT4 i4955_3_lut_rep_416_4_lut (.A(n375[1]), .B(n38173), .C(n378[1]), 
         .D(n38167), .Z(n38163)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4955_3_lut_rep_416_4_lut.init = 16'hf666;
    LUT4 i33030_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_17), 
         .D(n4_adj_18), .Z(n36336)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33030_3_lut_4_lut.init = 16'hf960;
    LUT4 i5819_2_lut_rep_560_3_lut (.A(\voltage_code[4] ), .B(n38370), .C(\voltage_code[3] ), 
         .Z(n38307)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5819_2_lut_rep_560_3_lut.init = 16'hf6f6;
    LUT4 i5814_3_lut_4_lut (.A(\voltage_code[4] ), .B(n38370), .C(\voltage_code[3] ), 
         .D(n39798), .Z(n355[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5814_3_lut_4_lut.init = 16'h6966;
    LUT4 i10618_2_lut_rep_410_3_lut_4_lut (.A(n375[1]), .B(n38173), .C(n378[1]), 
         .D(n38167), .Z(n38157)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10618_2_lut_rep_410_3_lut_4_lut.init = 16'hf600;
    LUT4 i6245_2_lut_rep_401_3_lut_3_lut_4_lut (.A(n375[1]), .B(n38173), 
         .C(n378[1]), .D(n38167), .Z(n38148)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6245_2_lut_rep_401_3_lut_3_lut_4_lut.init = 16'h06f0;
    PFUMX unit_3__I_0_Mux_6_i15 (.BLUT(n22515), .ALUT(n8_adj_1331), .C0(n38237), 
          .Z(n35603)) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;
    LUT4 i6252_3_lut_4_lut_3_lut_4_lut (.A(n375[1]), .B(n38173), .C(n378[1]), 
         .D(n38167), .Z(n382[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6252_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i6230_2_lut_rep_409_4_lut_4_lut (.A(\voltage_code[3] ), .B(n38174), 
         .C(n378[1]), .D(n38166), .Z(n38156)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6230_2_lut_rep_409_4_lut_4_lut.init = 16'h554a;
    LUT4 i4953_3_lut_rep_413_4_lut (.A(n374[1]), .B(n38176), .C(n377[1]), 
         .D(n38169), .Z(n38160)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4953_3_lut_rep_413_4_lut.init = 16'hf666;
    LUT4 i6196_2_lut_rep_403_3_lut_3_lut_4_lut (.A(n374[1]), .B(n38176), 
         .C(n377[1]), .D(n38169), .Z(n38150)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6196_2_lut_rep_403_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5583_3_lut_rep_512_4_lut_3_lut_4_lut (.A(\voltage_code[2] ), .B(n38274), 
         .C(n355[1]), .D(n355[2]), .Z(n38259)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5583_3_lut_rep_512_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5208_3_lut_rep_339_4_lut (.A(realv_1_0__N_466), .B(n38113), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n38086)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5208_3_lut_rep_339_4_lut.init = 16'h998a;
    LUT4 realv_3_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n38098), .B(n10412), .C(n38088), 
         .D(n38082), .Z(\ctrlword_595_4_15__N_638[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(151[45:54])
    defparam realv_3_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i6203_3_lut_rep_400_4_lut_3_lut_4_lut (.A(n374[1]), .B(n38176), 
         .C(n377[1]), .D(n38169), .Z(n38147)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6203_3_lut_rep_400_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10620_2_lut_rep_414_4_lut (.A(n374[1]), .B(n38176), .C(n377[1]), 
         .D(n38169), .Z(n38161)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10620_2_lut_rep_414_4_lut.init = 16'hf600;
    LUT4 realv_2_1__bdd_4_lut_34320 (.A(n38084), .B(n38079), .C(n38086), 
         .D(n38085), .Z(ctrlword_595_3_15__N_622[6])) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D))))) */ ;
    defparam realv_2_1__bdd_4_lut_34320.init = 16'h671f;
    LUT4 i33450_2_lut_rep_328_2_lut_3_lut_3_lut_4_lut (.A(realv_1_0__N_466), 
         .B(n38113), .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n38075)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33450_2_lut_rep_328_2_lut_3_lut_3_lut_4_lut.init = 16'h4451;
    LUT4 i6168_2_lut_rep_405_3_lut_3_lut_4_lut (.A(n373[1]), .B(n38182), 
         .C(n376[1]), .D(n38172), .Z(n38152)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6168_2_lut_rep_405_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4952_3_lut_rep_417_4_lut (.A(n373[1]), .B(n38182), .C(n376[1]), 
         .D(n38172), .Z(n38164)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4952_3_lut_rep_417_4_lut.init = 16'hf666;
    LUT4 i32757_3_lut (.A(n37765), .B(n37779), .C(\x_cnt[0] ), .Z(n36063)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32757_3_lut.init = 16'hcaca;
    LUT4 i6175_3_lut_rep_407_4_lut_3_lut_4_lut (.A(n373[1]), .B(n38182), 
         .C(n376[1]), .D(n38172), .Z(n38154)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6175_3_lut_rep_407_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10621_2_lut_rep_418_4_lut (.A(n373[1]), .B(n38182), .C(n376[1]), 
         .D(n38172), .Z(n38165)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10621_2_lut_rep_418_4_lut.init = 16'hf600;
    LUT4 i6153_2_lut_rep_415_4_lut_4_lut (.A(n375[3]), .B(n38549), .C(n376[1]), 
         .D(n38171), .Z(n38162)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6153_2_lut_rep_415_4_lut_4_lut.init = 16'h554a;
    LUT4 i4961_2_lut_rep_420_3_lut (.A(\voltage_code[4] ), .B(n38179), .C(\voltage_code[3] ), 
         .Z(n38167)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4961_2_lut_rep_420_3_lut.init = 16'hf6f6;
    LUT4 i6238_3_lut_4_lut (.A(\voltage_code[4] ), .B(n38179), .C(\voltage_code[3] ), 
         .D(n38163), .Z(n382[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6238_3_lut_4_lut.init = 16'h6966;
    LUT4 i6189_3_lut_4_lut (.A(n38190), .B(n38185), .C(n38170), .D(n38160), 
         .Z(n380[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6189_3_lut_4_lut.init = 16'h6966;
    LUT4 realv_3_3__bdd_4_lut (.A(n38088), .B(n38089), .C(n38098), .D(n38097), 
         .Z(\ctrlword_595_4_15__N_638[1] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam realv_3_3__bdd_4_lut.init = 16'hbdee;
    LUT4 realv_2_0__bdd_3_lut_4_lut (.A(n38113), .B(n38102), .C(n3008), 
         .D(n38378), .Z(n37888)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_2_0__bdd_3_lut_4_lut.init = 16'hf960;
    LUT4 i33344_3_lut_4_lut (.A(n38113), .B(n38102), .C(n5_adj_39), .D(n4_adj_40), 
         .Z(n36188)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33344_3_lut_4_lut.init = 16'hf960;
    LUT4 i4973_3_lut_rep_458_4_lut (.A(n367[1]), .B(n38210), .C(n369[1]), 
         .D(n38208), .Z(n38205)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4973_3_lut_rep_458_4_lut.init = 16'hf666;
    LUT4 i10592_2_lut_rep_454_3_lut_4_lut (.A(n367[1]), .B(n38210), .C(n369[1]), 
         .D(n38208), .Z(n38201)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10592_2_lut_rep_454_3_lut_4_lut.init = 16'hf600;
    LUT4 i5464_2_lut_rep_450_3_lut_3_lut_4_lut (.A(n367[1]), .B(n38210), 
         .C(n369[1]), .D(n38208), .Z(n38197)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5464_2_lut_rep_450_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5471_3_lut_4_lut_3_lut_4_lut (.A(n367[1]), .B(n38210), .C(n369[1]), 
         .D(n38208), .Z(n372[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5471_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i2_3_lut_4_lut_adj_57 (.A(n38302), .B(n38077), .C(n38469), .D(n38377), 
         .Z(\data_r_131__N_1121[120] )) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_57.init = 16'h0200;
    LUT4 i5449_2_lut_rep_455_4_lut_4_lut (.A(\voltage_code[6] ), .B(n38566), 
         .C(n369[1]), .D(n38207), .Z(n38202)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5449_2_lut_rep_455_4_lut_4_lut.init = 16'h554a;
    LUT4 i6416_2_lut_4_lut_4_lut (.A(n38212), .B(n368[2]), .C(n368[1]), 
         .D(n39795), .Z(n374[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i6416_2_lut_4_lut_4_lut.init = 16'h936c;
    LUT4 i6161_3_lut_4_lut (.A(n372[3]), .B(n38181), .C(n375[3]), .D(n38164), 
         .Z(n379[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6161_3_lut_4_lut.init = 16'h6966;
    LUT4 i5457_3_lut_4_lut (.A(n38459), .B(n38215), .C(\voltage_code[6] ), 
         .D(n38205), .Z(n372[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5457_3_lut_4_lut.init = 16'h6966;
    LUT4 i4966_2_lut_rep_425_3_lut (.A(n372[3]), .B(n38181), .C(n375[3]), 
         .Z(n38172)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4966_2_lut_rep_425_3_lut.init = 16'hf6f6;
    LUT4 i5779_3_lut_rep_456_4_lut_3_lut_4_lut (.A(n38214), .B(n367[3]), 
         .C(n368[1]), .D(n368[2]), .Z(n38203)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5779_3_lut_rep_456_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5757_2_lut_rep_457_4_lut_4_lut (.A(n38214), .B(n367[3]), .C(n368[1]), 
         .D(n368[2]), .Z(n38204)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5757_2_lut_rep_457_4_lut_4_lut.init = 16'h332c;
    LUT4 i5772_2_lut_3_lut_3_lut_4_lut (.A(n38214), .B(n367[3]), .C(n368[1]), 
         .D(n368[2]), .Z(n370[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5772_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5765_3_lut_4_lut (.A(n38214), .B(n367[3]), .C(n368[1]), .D(n368[2]), 
         .Z(n370[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5765_3_lut_4_lut.init = 16'h998a;
    LUT4 i5770_2_lut_rep_465_3_lut (.A(n38223), .B(n7710), .C(n367[3]), 
         .Z(n38212)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5770_2_lut_rep_465_3_lut.init = 16'hf6f6;
    LUT4 i33440_2_lut_rep_622 (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .Z(n38369)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam i33440_2_lut_rep_622.init = 16'heeee;
    LUT4 Mux_368_i3_3_lut_4_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n2913), .D(n38502), .Z(n3)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam Mux_368_i3_3_lut_4_lut_4_lut.init = 16'he2c0;
    LUT4 Mux_365_i1_3_lut_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n2885), .D(n2897), .Z(n1_adj_41)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam Mux_365_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 Mux_367_i1_3_lut_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n2886), .D(n38405), .Z(n1_adj_42)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam Mux_367_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 hundreds_0__bdd_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n38500), .D(n38432), .Z(n37921)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam hundreds_0__bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 Mux_362_i1_3_lut_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n2886), .D(n38436), .Z(n1_adj_43)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam Mux_362_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 Mux_361_i3_3_lut_4_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_630[1] ), 
         .C(n2895), .D(n38502), .Z(n3_adj_44)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(161[47:57])
    defparam Mux_361_i3_3_lut_4_lut_4_lut.init = 16'he2c0;
    LUT4 i1_2_lut_rep_336_3_lut_4_lut (.A(realv_3_0__N_535), .B(n38111), 
         .C(n38377), .D(n38114), .Z(n38083)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_rep_336_3_lut_4_lut.init = 16'h0090;
    LUT4 i4933_3_lut_rep_524 (.A(\voltage_code[2] ), .B(n38274), .C(n355[1]), 
         .D(n355[2]), .Z(n38271)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4933_3_lut_rep_524.init = 16'hffe0;
    LUT4 i5443_3_lut_4_lut (.A(n7710), .B(n38218), .C(n366[1]), .D(realv_1_1__N_322), 
         .Z(n368[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5443_3_lut_4_lut.init = 16'h7f80;
    LUT4 i19107_2_lut_rep_346_3_lut (.A(realv_3_0__N_535), .B(n38111), .C(n38114), 
         .Z(n38093)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19107_2_lut_rep_346_3_lut.init = 16'hf6f6;
    LUT4 i10568_2_lut_rep_463_3_lut_4_lut (.A(n365[1]), .B(n38220), .C(n367[1]), 
         .D(n38217), .Z(n38210)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10568_2_lut_rep_463_3_lut_4_lut.init = 16'hf600;
    LUT4 i5611_3_lut_4_lut_3_lut_4_lut (.A(n365[1]), .B(n38220), .C(n367[1]), 
         .D(n38217), .Z(n369[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5611_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4935_3_lut_rep_468_4_lut (.A(n365[1]), .B(n38220), .C(n367[1]), 
         .D(n38217), .Z(n38215)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4935_3_lut_rep_468_4_lut.init = 16'hf666;
    LUT4 i5604_2_lut_rep_460_3_lut_3_lut_4_lut (.A(n365[1]), .B(n38220), 
         .C(n367[1]), .D(n38217), .Z(n38207)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5604_2_lut_rep_460_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i2_3_lut_3_lut_4_lut (.A(n38113), .B(n38102), .C(n38377), .D(n38085), 
         .Z(n3_adj_45)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0090;
    LUT4 i5436_2_lut_3_lut_4_lut (.A(n38223), .B(n38221), .C(n366[1]), 
         .D(n7710), .Z(n368[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i5436_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i4974_3_lut_4_lut (.A(n38223), .B(n38221), .C(n366[1]), .D(realv_1_1__N_322), 
         .Z(n7710)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4974_3_lut_4_lut.init = 16'hffe0;
    LUT4 i5597_3_lut_4_lut (.A(voltage_code[8]), .B(n38224), .C(n38459), 
         .D(n38215), .Z(n369[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5597_3_lut_4_lut.init = 16'h6966;
    LUT4 i33340_3_lut_4_lut (.A(n38113), .B(n38102), .C(n5_adj_46), .D(n4_adj_47), 
         .Z(n36209)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33340_3_lut_4_lut.init = 16'hf960;
    LUT4 i5429_3_lut_4_lut (.A(n38230), .B(n7704), .C(n38223), .D(n7710), 
         .Z(n368[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5429_3_lut_4_lut.init = 16'h6966;
    LUT4 i33032_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_21), 
         .D(n10228), .Z(n36338)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33032_3_lut_4_lut.init = 16'hf960;
    LUT4 Mux_413_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_28), 
         .D(n4_adj_29), .Z(n6_adj_48)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_413_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i4989_2_lut_rep_471_3_lut (.A(n38230), .B(n7704), .C(n38223), 
         .Z(n38218)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4989_2_lut_rep_471_3_lut.init = 16'hf6f6;
    LUT4 i10566_2_lut_rep_473_3_lut_4_lut (.A(voltage_code[8]), .B(n38225), 
         .C(n365[1]), .D(n365[2]), .Z(n38220)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10566_2_lut_rep_473_3_lut_4_lut.init = 16'heee0;
    LUT4 i13_3_lut_4_lut_4_lut_adj_58 (.A(n38125), .B(n38111), .C(realv_3_0__N_535), 
         .D(n38114), .Z(n8)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut_adj_58.init = 16'h3ca6;
    LUT4 i5387_3_lut_4_lut_3_lut_4_lut (.A(voltage_code[8]), .B(n38225), 
         .C(n365[1]), .D(n365[2]), .Z(n367[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5387_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4927_3_lut_rep_477 (.A(voltage_code[8]), .B(n38225), .C(n365[1]), 
         .D(n365[2]), .Z(n38224)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4927_3_lut_rep_477.init = 16'hffe0;
    LUT4 i5373_3_lut_4_lut (.A(voltage_code[8]), .B(n38225), .C(n365[1]), 
         .D(n365[2]), .Z(n367[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5373_3_lut_4_lut.init = 16'h998c;
    LUT4 i32515_1_lut (.A(n35809), .Z(\ctrlword_595_5[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i32515_1_lut.init = 16'h5555;
    LUT4 realv_4_3__bdd_3_lut_34277_4_lut_4_lut (.A(n38125), .B(n38111), 
         .C(realv_3_0__N_535), .D(n38114), .Z(n37036)) /* synthesis lut_function=(A (B (C)+!B !(C (D)))+!A !(B (D)+!B (C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_4_3__bdd_3_lut_34277_4_lut_4_lut.init = 16'h82e7;
    LUT4 i32902_3_lut_4_lut (.A(n38113), .B(n38102), .C(n2_adj_49), .D(n10172), 
         .Z(n36208)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32902_3_lut_4_lut.init = 16'hf960;
    LUT4 i18853_3_lut_3_lut_4_lut_4_lut (.A(n38125), .B(n38111), .C(realv_3_0__N_535), 
         .D(n38114), .Z(n10388)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18853_3_lut_3_lut_4_lut_4_lut.init = 16'hdbe7;
    LUT4 i5243_1_lut (.A(\voltage_code[6] ), .Z(\adcdisplay_7__N_1[6] )) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5243_1_lut.init = 16'h5555;
    LUT4 i1_1_lut (.A(\voltage_code[4] ), .Z(\adcdisplay_7__N_1[4] )) /* synthesis lut_function=(!(A)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_1_lut.init = 16'h5555;
    LUT4 i5421_2_lut_rep_467_4_lut_4_lut (.A(n38232), .B(n38231), .C(n363[1]), 
         .D(n7710), .Z(n38214)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5421_2_lut_rep_467_4_lut_4_lut.init = 16'h936c;
    LUT4 i10318_2_lut_rep_449_4_lut (.A(n369[3]), .B(n38204), .C(n370[1]), 
         .D(n370[2]), .Z(n38196)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10318_2_lut_rep_449_4_lut.init = 16'heee0;
    LUT4 i19104_2_lut_3_lut_4_lut_4_lut (.A(n38125), .B(n38111), .C(realv_3_0__N_535), 
         .D(n38114), .Z(n22487)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19104_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 i4965_2_lut_rep_422_4_lut_4_lut (.A(n38187), .B(n38186), .C(n373[1]), 
         .D(n38175), .Z(n38169)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i4965_2_lut_rep_422_4_lut_4_lut.init = 16'hff6c;
    LUT4 i10622_2_lut_rep_426_3_lut_4_lut (.A(n372[1]), .B(n38189), .C(n375[1]), 
         .D(n38184), .Z(n38173)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10622_2_lut_rep_426_3_lut_4_lut.init = 16'hf600;
    LUT4 i32881_3_lut_4_lut (.A(n38113), .B(n38102), .C(n2_adj_50), .D(n10172), 
         .Z(n36187)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32881_3_lut_4_lut.init = 16'hf960;
    PFUMX i34441 (.BLUT(n38503), .ALUT(n38504), .C0(n38230), .Z(n7704));
    LUT4 i2_3_lut_4_lut_adj_59 (.A(realv_1_1__N_292), .B(n38247), .C(n38230), 
         .D(n7704), .Z(n366[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_adj_59.init = 16'h6966;
    LUT4 i2_3_lut_4_lut_adj_60 (.A(n38302), .B(n38077), .C(\x_cnt[1] ), 
         .D(n15357), .Z(n35304)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i2_3_lut_4_lut_adj_60.init = 16'h2000;
    LUT4 i4929_3_lut_rep_482_4_lut (.A(n362[1]), .B(n38244), .C(n363[1]), 
         .D(n38232), .Z(n38229)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4929_3_lut_rep_482_4_lut.init = 16'hf666;
    LUT4 i4951_3_lut_rep_432_4_lut (.A(n372[1]), .B(n38189), .C(n375[1]), 
         .D(n38184), .Z(n38179)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4951_3_lut_rep_432_4_lut.init = 16'hf666;
    LUT4 i6147_3_lut_4_lut_3_lut_4_lut (.A(n372[1]), .B(n38189), .C(n375[1]), 
         .D(n38184), .Z(n378[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6147_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5352_2_lut_3_lut_3_lut_4_lut (.A(n362[1]), .B(n38244), .C(n363[1]), 
         .D(n38232), .Z(n365[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5352_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i6140_2_lut_rep_419_3_lut_3_lut_4_lut (.A(n372[1]), .B(n38189), 
         .C(n375[1]), .D(n38184), .Z(n38166)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6140_2_lut_rep_419_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5359_3_lut_rep_476_4_lut_3_lut_4_lut (.A(n362[1]), .B(n38244), 
         .C(n363[1]), .D(n38232), .Z(n38223)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5359_3_lut_rep_476_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 n1_bdd_4_lut_4_lut (.A(n38240), .B(n38239), .C(n38241), .D(\decade[3] ), 
         .Z(\ctrlword_595_5_15__N_646[3] )) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((C+(D))+!B)) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(163[47:55])
    defparam n1_bdd_4_lut_4_lut.init = 16'hfd51;
    LUT4 i5337_2_lut_rep_478_4_lut_4_lut (.A(voltage_code[9]), .B(n38236), 
         .C(n363[1]), .D(n38231), .Z(n38225)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5337_2_lut_rep_478_4_lut_4_lut.init = 16'h554a;
    LUT4 i5054_2_lut_3_lut_rep_756 (.A(n38203), .B(n368[3]), .C(realv_1_1__N_303), 
         .Z(n39795)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i5054_2_lut_3_lut_rep_756.init = 16'he0e0;
    LUT4 i4978_2_lut_rep_485_3_lut (.A(voltage_code[10]), .B(n38243), .C(voltage_code[9]), 
         .Z(n38232)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4978_2_lut_rep_485_3_lut.init = 16'hf6f6;
    LUT4 i6125_2_lut_rep_427_4_lut_4_lut (.A(\voltage_code[4] ), .B(n38188), 
         .C(n375[1]), .D(n38183), .Z(n38174)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6125_2_lut_rep_427_4_lut_4_lut.init = 16'h554a;
    LUT4 i5345_3_lut_4_lut (.A(voltage_code[10]), .B(n38243), .C(voltage_code[9]), 
         .D(n38229), .Z(n365[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5345_3_lut_4_lut.init = 16'h6966;
    LUT4 i10555_2_lut_rep_429_3_lut_4_lut (.A(n374[0]), .B(n38190), .C(n374[1]), 
         .D(n374[2]), .Z(n38176)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10555_2_lut_rep_429_3_lut_4_lut.init = 16'heee0;
    LUT4 i5723_3_lut_4_lut_3_lut_4_lut (.A(n374[0]), .B(n38190), .C(n374[1]), 
         .D(n374[2]), .Z(n371[0])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5723_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5569_3_lut_4_lut (.A(\voltage_code[2] ), .B(n38274), .C(n355[1]), 
         .D(n355[2]), .Z(decade_0__N_605)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5569_3_lut_4_lut.init = 16'h998c;
    LUT4 voltage_code_12__bdd_4_lut_34512 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n361[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_34512.init = 16'h318c;
    LUT4 i5701_2_lut_rep_428_4_lut_4_lut (.A(n374[0]), .B(n38190), .C(n374[1]), 
         .D(n374[2]), .Z(n38175)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5701_2_lut_rep_428_4_lut_4_lut.init = 16'h332c;
    FD1S1J ctrlword_595_2_15__N_614_7__I_0_i6 (.D(n38080), .CK(\ctrlword_595_3[13]__inv ), 
           .PD(n38090), .Q(\ctrlword_595_2[5] )) /* synthesis LSE_LINE_FILE_ID=20, LSE_LCOL=22, LSE_RCOL=31, LSE_LLINE=137, LSE_RLINE=137 */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(142[2] 169[13])
    defparam ctrlword_595_2_15__N_614_7__I_0_i6.GSR = "DISABLED";
    LUT4 i4939_3_lut_rep_438 (.A(n374[0]), .B(n38190), .C(n374[1]), .D(n374[2]), 
         .Z(n38185)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4939_3_lut_rep_438.init = 16'hffe0;
    LUT4 i5709_3_lut_4_lut (.A(n374[0]), .B(n38190), .C(n374[1]), .D(n374[2]), 
         .Z(n377[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5709_3_lut_4_lut.init = 16'h998a;
    LUT4 i4938_3_lut_rep_434_4_lut (.A(n370[1]), .B(n38196), .C(n373[1]), 
         .D(n38187), .Z(n38181)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4938_3_lut_rep_434_4_lut.init = 16'hf666;
    LUT4 i5688_2_lut_rep_424_3_lut_3_lut_4_lut (.A(n370[1]), .B(n38196), 
         .C(n373[1]), .D(n38187), .Z(n38171)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5688_2_lut_rep_424_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1_2_lut_rep_480_3_lut_4_lut (.A(n38259), .B(n7731), .C(n38377), 
         .D(n38240), .Z(n38227)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_rep_480_3_lut_4_lut.init = 16'h0090;
    LUT4 i13_3_lut_4_lut (.A(n38259), .B(n7731), .C(n38240), .D(n38239), 
         .Z(n8_adj_1327)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut.init = 16'h6f60;
    PFUMX i34220 (.BLUT(n37777), .ALUT(n37776), .C0(\x_cnt[1] ), .Z(n37778));
    LUT4 i18823_3_lut_3_lut_4_lut (.A(n38259), .B(n7731), .C(n38240), 
         .D(n38239), .Z(n10444)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18823_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i33021_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_26), 
         .D(n4_adj_27), .Z(n36327)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33021_3_lut_4_lut.init = 16'hf960;
    LUT4 i33026_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_11), 
         .D(n1_adj_12), .Z(n36332)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33026_3_lut_4_lut.init = 16'hf960;
    LUT4 i33033_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n5_adj_15), 
         .D(n4_adj_16), .Z(n36339)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33033_3_lut_4_lut.init = 16'hf960;
    LUT4 i33020_3_lut_4_lut (.A(\voltage_code[1] ), .B(n38252), .C(n2_adj_22), 
         .D(n1_adj_23), .Z(n36326)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33020_3_lut_4_lut.init = 16'hf960;
    PFUMX i34212 (.BLUT(n37763), .ALUT(n37762), .C0(\x_cnt[1] ), .Z(n37764));
    PFUMX i35179 (.BLUT(n39757), .ALUT(n39756), .C0(\voltage_code[14] ), 
          .Z(n38264));
    LUT4 realv_1_1__N_279_bdd_4_lut_4_lut (.A(realv_1_1__N_292), .B(n38264), 
         .C(n38316), .D(n38230), .Z(n37210)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !((D)+!C))+!A !(B (C+!(D))+!B (D)))) */ ;
    defparam realv_1_1__N_279_bdd_4_lut_4_lut.init = 16'h73c6;
    LUT4 i19126_2_lut_3_lut_4_lut_4_lut (.A(n38261), .B(n38252), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n22515)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19126_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 i4950_3_lut_rep_352_4_lut (.A(n384[1]), .B(n38127), .C(n387[1]), 
         .D(n38108), .Z(n38099)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4950_3_lut_rep_352_4_lut.init = 16'hf666;
    LUT4 i13_3_lut_4_lut_4_lut_adj_61 (.A(n38261), .B(n38252), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n8_adj_1331)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut_adj_61.init = 16'h3ca6;
    LUT4 i18788_3_lut_3_lut_4_lut_4_lut (.A(n38261), .B(n38252), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n10553)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i18788_3_lut_3_lut_4_lut_4_lut.init = 16'hdbe7;
    LUT4 unit_3__bdd_3_lut_4_lut_4_lut (.A(n38261), .B(n38252), .C(\voltage_code[1] ), 
         .D(\realv_5[0] ), .Z(n37499)) /* synthesis lut_function=(A (B (C)+!B !(C (D)))+!A !(B (D)+!B (C+(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam unit_3__bdd_3_lut_4_lut_4_lut.init = 16'h82e7;
    LUT4 i6119_3_lut_rep_338_4_lut_3_lut_4_lut (.A(n384[1]), .B(n38127), 
         .C(n387[1]), .D(n38108), .Z(n38085)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6119_3_lut_rep_338_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10623_2_lut_rep_353_4_lut (.A(n384[1]), .B(n38127), .C(n387[1]), 
         .D(n38108), .Z(n38100)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10623_2_lut_rep_353_4_lut.init = 16'hf600;
    LUT4 ADC_level_7__bdd_4_lut (.A(\voltage_code[6] ), .B(n355[3]), .C(\voltage_code[5] ), 
         .D(decade_3__N_561), .Z(n38725)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !(C (D))))) */ ;
    defparam ADC_level_7__bdd_4_lut.init = 16'h3604;
    LUT4 i6097_2_lut_rep_342_4_lut_4_lut (.A(n38115), .B(n38122), .C(n387[1]), 
         .D(n38107), .Z(n38089)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i6097_2_lut_rep_342_4_lut_4_lut.init = 16'h554a;
    LUT4 i4975_2_lut_rep_440_3_lut (.A(n369[3]), .B(n38200), .C(n372[3]), 
         .Z(n38187)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4975_2_lut_rep_440_3_lut.init = 16'hf6f6;
    LUT4 i32858_3_lut_4_lut (.A(n387[1]), .B(n38100), .C(n14_adj_51), 
         .D(n36937), .Z(n36164)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32858_3_lut_4_lut.init = 16'hf960;
    LUT4 i5681_3_lut_4_lut (.A(n369[3]), .B(n38200), .C(n372[3]), .D(n38181), 
         .Z(n376[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5681_3_lut_4_lut.init = 16'h6966;
    LUT4 realv_2_3__bdd_4_lut_34319 (.A(n38079), .B(n38084), .C(n38085), 
         .D(n38086), .Z(ctrlword_595_3_15__N_622[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B (C (D))+!B !(C (D)+!C !(D))))) */ ;
    defparam realv_2_3__bdd_4_lut_34319.init = 16'h3ee7;
    LUT4 i32389_1_lut (.A(n35677), .Z(\ctrlword_595_6[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i32389_1_lut.init = 16'h5555;
    LUT4 i32838_3_lut_4_lut (.A(n387[1]), .B(n38100), .C(n14_adj_52), 
         .D(n36025), .Z(n36144)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32838_3_lut_4_lut.init = 16'hf960;
    LUT4 i32852_3_lut_4_lut (.A(n387[1]), .B(n38100), .C(n14_adj_53), 
         .D(n38036), .Z(n36158)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32852_3_lut_4_lut.init = 16'hf960;
    LUT4 i4932_3_lut_rep_453 (.A(n369[3]), .B(n38204), .C(n370[1]), .D(n370[2]), 
         .Z(n38200)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4932_3_lut_rep_453.init = 16'hffe0;
    LUT4 i5541_3_lut_4_lut (.A(n369[3]), .B(n38204), .C(n370[1]), .D(n370[2]), 
         .Z(n373[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5541_3_lut_4_lut.init = 16'h998c;
    LUT4 i4970_3_lut_rep_496_4_lut (.A(n361[1]), .B(n38260), .C(n362[1]), 
         .D(n38251), .Z(n38243)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4970_3_lut_rep_496_4_lut.init = 16'hf666;
    LUT4 i5331_3_lut_rep_483_4_lut_3_lut_4_lut (.A(n361[1]), .B(n38260), 
         .C(n362[1]), .D(n38251), .Z(n38230)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5331_3_lut_rep_483_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5324_2_lut_rep_484_3_lut_3_lut_4_lut (.A(n361[1]), .B(n38260), 
         .C(n362[1]), .D(n38251), .Z(n38231)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5324_2_lut_rep_484_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i10360_2_lut_rep_497_4_lut (.A(n361[1]), .B(n38260), .C(n362[1]), 
         .D(n38251), .Z(n38244)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10360_2_lut_rep_497_4_lut.init = 16'hf600;
    LUT4 i19112_2_lut_rep_334_3_lut (.A(n38115), .B(n38099), .C(n38098), 
         .Z(n38081)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i19112_2_lut_rep_334_3_lut.init = 16'hf6f6;
    LUT4 i33327_3_lut_4_lut (.A(n38115), .B(n38099), .C(n38520), .D(n4_adj_54), 
         .Z(n36095)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33327_3_lut_4_lut.init = 16'hf960;
    LUT4 i5309_2_lut_rep_489_4_lut_4_lut (.A(voltage_code[10]), .B(n38255), 
         .C(n362[1]), .D(n38250), .Z(n38236)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5309_2_lut_rep_489_4_lut_4_lut.init = 16'h554a;
    LUT4 i5040_2_lut_rep_516_3_lut_4_lut_else_4_lut (.A(\voltage_code[5] ), 
         .B(n355[3]), .C(\ADC_level[7] ), .Z(n39807)) /* synthesis lut_function=(A (B (C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5040_2_lut_rep_516_3_lut_4_lut_else_4_lut.init = 16'h8080;
    LUT4 i33270_3_lut_4_lut (.A(n38115), .B(n38099), .C(n5_adj_55), .D(n4_adj_56), 
         .Z(n36024)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i33270_3_lut_4_lut.init = 16'hf960;
    LUT4 i32788_3_lut_4_lut (.A(n38115), .B(n38099), .C(n2_adj_57), .D(n1_adj_58), 
         .Z(n36094)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i32788_3_lut_4_lut.init = 16'hf960;
    LUT4 i4943_3_lut_4_lut_rep_759 (.A(n38345), .B(\voltage_code[3] ), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n39798)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4943_3_lut_4_lut_rep_759.init = 16'hffe0;
    CCU2D add_436_4 (.A0(\voltage_code[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n32590), .COUT(n32591), .S0(voltage_code[9]), 
          .S1(voltage_code[10]));   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_436_4.INIT0 = 16'h5aaa;
    defparam add_436_4.INIT1 = 16'h5aaa;
    defparam add_436_4.INJECT1_0 = "NO";
    defparam add_436_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_2_lut_4_lut_4_lut_adj_62 (.A(n38257), .B(n38256), .C(decade_0__N_605), 
         .D(n38502), .Z(n1_adj_59)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut_adj_62.init = 16'h9300;
    LUT4 i32453_2_lut_rep_486_4_lut_4_lut (.A(n38257), .B(n38256), .C(decade_0__N_605), 
         .D(n38241), .Z(n38233)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i32453_2_lut_rep_486_4_lut_4_lut.init = 16'hff6c;
    LUT4 i5800_3_lut_4_lut (.A(n38726), .B(n38259), .C(n7731), .D(n353[1]), 
         .Z(\decade[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5800_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5806_2_lut_rep_527_4_lut (.A(n38345), .B(\voltage_code[3] ), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n38274)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5806_2_lut_rep_527_4_lut.init = 16'h332c;
    LUT4 i5317_3_lut_4_lut (.A(voltage_code[11]), .B(n39815), .C(voltage_code[10]), 
         .D(n38243), .Z(n363[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5317_3_lut_4_lut.init = 16'h6966;
    LUT4 i4983_2_lut_rep_504_3_lut (.A(voltage_code[11]), .B(n39815), .C(voltage_code[10]), 
         .Z(n38251)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4983_2_lut_rep_504_3_lut.init = 16'hf6f6;
    LUT4 i5912_3_lut_rep_493_4_lut_3_lut_4_lut (.A(n355[1]), .B(n38267), 
         .C(decade_0__N_605), .D(n38257), .Z(n38240)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5912_3_lut_rep_493_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5785_2_lut_rep_494_4_lut_4_lut (.A(n38270), .B(n355[2]), .C(n355[1]), 
         .D(n7731), .Z(n38241)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5785_2_lut_rep_494_4_lut_4_lut.init = 16'h936c;
    LUT4 i10628_2_lut_rep_506_4_lut (.A(n355[1]), .B(n38267), .C(decade_0__N_605), 
         .D(n38257), .Z(n38253)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10628_2_lut_rep_506_4_lut.init = 16'hf600;
    LUT4 i4946_3_lut_rep_505_4_lut (.A(n355[1]), .B(n38267), .C(decade_0__N_605), 
         .D(n38257), .Z(n38252)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4946_3_lut_rep_505_4_lut.init = 16'hf666;
    LUT4 i5905_2_lut_rep_490_3_lut_3_lut_4_lut (.A(n355[1]), .B(n38267), 
         .C(decade_0__N_605), .D(n38257), .Z(n38237)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5905_2_lut_rep_490_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 realv_3_0__bdd_3_lut_34383_4_lut (.A(n38115), .B(n38099), .C(n3008), 
         .D(n38378), .Z(n37997)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_0__bdd_3_lut_34383_4_lut.init = 16'hf960;
    LUT4 i5890_2_lut_rep_498_4_lut_4_lut (.A(\voltage_code[1] ), .B(n38261), 
         .C(decade_0__N_605), .D(n38256), .Z(n38245)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5890_2_lut_rep_498_4_lut_4_lut.init = 16'h554a;
    LUT4 i7558_2_lut_rep_487_4_lut_3_lut_4_lut (.A(n355[3]), .B(n38263), 
         .C(n7731), .D(n38259), .Z(n38234)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7558_2_lut_rep_487_4_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i5793_3_lut_rep_492_4_lut (.A(n355[3]), .B(n38263), .C(n38259), 
         .D(n7731), .Z(n38239)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5793_3_lut_rep_492_4_lut.init = 16'h6966;
    LUT4 i10591_2_lut_rep_513_3_lut_4_lut (.A(\voltage_code[12] ), .B(n39796), 
         .C(n39815), .D(voltage_code[11]), .Z(n38260)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10591_2_lut_rep_513_3_lut_4_lut.init = 16'hf060;
    LUT4 i10567_2_lut_rep_442_3_lut_4_lut (.A(n369[1]), .B(n38201), .C(n372[1]), 
         .D(n38198), .Z(n38189)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10567_2_lut_rep_442_3_lut_4_lut.init = 16'hf600;
    LUT4 i4936_3_lut_rep_447_4_lut (.A(n369[1]), .B(n38201), .C(n372[1]), 
         .D(n38198), .Z(n38194)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4936_3_lut_rep_447_4_lut.init = 16'hf666;
    LUT4 i5632_2_lut_rep_436_3_lut_3_lut_4_lut (.A(n369[1]), .B(n38201), 
         .C(n372[1]), .D(n38198), .Z(n38183)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5632_2_lut_rep_436_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5639_3_lut_4_lut_3_lut_4_lut (.A(n369[1]), .B(n38201), .C(n372[1]), 
         .D(n38198), .Z(n375[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5639_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5499_3_lut_4_lut (.A(n39815), .B(n38265), .C(n361[1]), .D(realv_1_1__N_293), 
         .Z(realv_1_1__N_292)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5499_3_lut_4_lut.init = 16'h7f80;
    LUT4 realv_3_2__bdd_2_lut_4_lut_4_lut (.A(n38119), .B(n38118), .C(n386[1]), 
         .D(n38502), .Z(n36935)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_3_2__bdd_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i12030_3_lut_3_lut (.A(n38103), .B(n1_adj_60), .C(n2975), .Z(n15411)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i12030_3_lut_3_lut.init = 16'he4e4;
    LUT4 i12028_3_lut_3_lut (.A(n38103), .B(n10164), .C(n2972), .Z(n15409)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i12028_3_lut_3_lut.init = 16'he4e4;
    LUT4 i5898_3_lut_rep_502_4_lut (.A(\voltage_code[2] ), .B(n38271), .C(\voltage_code[1] ), 
         .D(n38252), .Z(n38249)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5898_3_lut_rep_502_4_lut.init = 16'h6966;
    LUT4 i29373_2_lut_rep_712 (.A(\realv_5[0] ), .B(\ADC_level[7] ), .Z(n38459)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i29373_2_lut_rep_712.init = 16'h6666;
    LUT4 i4985_2_lut_rep_461_3_lut_4_lut (.A(\realv_5[0] ), .B(\ADC_level[7] ), 
         .C(\voltage_code[6] ), .D(n38215), .Z(n38208)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4985_2_lut_rep_461_3_lut_4_lut.init = 16'hf9f6;
    LUT4 i4988_2_lut_rep_470_3_lut_4_lut (.A(\realv_5[0] ), .B(\ADC_level[7] ), 
         .C(n38224), .D(voltage_code[8]), .Z(n38217)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;
    defparam i4988_2_lut_rep_470_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i7402_2_lut_3_lut_3_lut_4_lut (.A(\voltage_code[2] ), .B(n38271), 
         .C(\voltage_code[1] ), .D(n38252), .Z(n10530)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7402_2_lut_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i7180_2_lut_rep_491_3_lut_3_lut_4_lut (.A(\voltage_code[2] ), .B(n38271), 
         .C(\voltage_code[1] ), .D(n38252), .Z(n38238)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7180_2_lut_rep_491_3_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i4984_2_lut_rep_518_3_lut (.A(\voltage_code[12] ), .B(n39796), 
         .C(voltage_code[11]), .Z(n38265)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4984_2_lut_rep_518_3_lut.init = 16'hf6f6;
    LUT4 i5000_2_lut_rep_510_3_lut (.A(\voltage_code[2] ), .B(n38271), .C(\voltage_code[1] ), 
         .Z(n38257)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5000_2_lut_rep_510_3_lut.init = 16'hf6f6;
    LUT4 i5617_2_lut_rep_441_4_lut_4_lut (.A(\voltage_code[5] ), .B(n38202), 
         .C(n372[1]), .D(n38197), .Z(n38188)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5617_2_lut_rep_441_4_lut_4_lut.init = 16'h554a;
    LUT4 i12003_2_lut_3_lut (.A(n38203), .B(n368[3]), .C(realv_1_1__N_303), 
         .Z(n374[2])) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i12003_2_lut_3_lut.init = 16'h1010;
    LUT4 i5673_2_lut_rep_430_4_lut_4_lut_then_4_lut (.A(n38204), .B(n369[3]), 
         .C(n370[1]), .D(n370[2]), .Z(n38548)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i5673_2_lut_rep_430_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 i5485_3_lut_4_lut (.A(\voltage_code[12] ), .B(n39796), .C(voltage_code[11]), 
         .D(n39815), .Z(n362[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // C:/lscc/diamond/3.10_x64/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5485_3_lut_4_lut.init = 16'h6966;
    LUT4 i5673_2_lut_rep_430_4_lut_4_lut_else_4_lut (.A(n38204), .B(n369[3]), 
         .C(n370[1]), .D(n370[2]), .Z(n38547)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i5673_2_lut_rep_430_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 Mux_241_i3_3_lut_rep_326_4_lut_4_lut (.A(n38080), .B(n2_adj_61), 
         .C(n38103), .D(n38502), .Z(n38073)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/hankeyi35/desktop/lab_8/lab8/trans_bcd.vhd(147[48:57])
    defparam Mux_241_i3_3_lut_rep_326_4_lut_4_lut.init = 16'hc5c0;
    PFUMX i33748 (.BLUT(n37046), .ALUT(n37045), .C0(\ctrlword_595_3[13] ), 
          .Z(\ctrlword_595_5[5] ));
    PFUMX i34482 (.BLUT(n38571), .ALUT(n38572), .C0(n38170), .Z(n38155));
    PFUMX i34478 (.BLUT(n38564), .ALUT(n38565), .C0(n38459), .Z(n38566));
    PFUMX i34058 (.BLUT(n37499), .ALUT(n37498), .C0(n38237), .Z(\ctrlword_595_6_15__N_662[2] ));
    PFUMX i35208 (.BLUT(n39807), .ALUT(n39808), .C0(\voltage_code[6] ), 
          .Z(n38263));
    PFUMX i33741 (.BLUT(n37036), .ALUT(n37035), .C0(n38094), .Z(\ctrlword_595_5_15__N_654[2] ));
    LUT4 i5548_2_lut_rep_439_3_lut_3_lut_4_lut (.A(n369[3]), .B(n38204), 
         .C(n370[1]), .D(n370[2]), .Z(n38186)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5548_2_lut_rep_439_3_lut_3_lut_4_lut.init = 16'h1e10;
    
endmodule
