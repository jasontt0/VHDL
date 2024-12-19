// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.13.0.56.2
// Netlist written on Wed Dec 13 18:30:39 2023
//
// Verilog Description of module dianya
//

module dianya (clk_in, rst_n_in, mode_btn_in, adcdisplay, scl_out, 
            sda_out, din, sck, rck, DA_LCD, CLK_LCD, RST_LCD, 
            DC_LCD, BL_LCD);   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(6[9:15])
    input clk_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    input rst_n_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[3:11])
    input mode_btn_in;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(11[3:14])
    output [7:0]adcdisplay;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    output scl_out;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(14[3:10])
    inout sda_out;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(15[3:10])
    output din;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(16[3:6])
    output sck;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(17[3:6])
    output rck;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(18[3:6])
    output DA_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[3:9])
    output CLK_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[10:17])
    output RST_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[18:25])
    output DC_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[26:32])
    output BL_LCD;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[33:39])
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    wire [15:0]ctrlword_595_3 /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire ctrlword_595_3_13_inv /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    
    wire GND_net, rst_n_in_c, mode_btn_in_c, adcdisplay_c_7, adcdisplay_c_6, 
        adcdisplay_c_5, adcdisplay_c_4, adcdisplay_c_3, adcdisplay_c_2, 
        adcdisplay_c_1, adcdisplay_c_0, scl_out_c, din_c, sck_c, rck_c, 
        DA_LCD_c, CLK_LCD_c, RST_LCD_c, DC_LCD_c, BL_LCD_c;
    wire [7:0]ADC_level;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(25[9:18])
    
    wire btn_state;
    wire [15:0]voltage_code;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(46[9:21])
    wire [3:0]realv_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(28[41:48])
    wire [3:0]decade;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(29[18:24])
    wire [3:0]unit;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(29[25:29])
    wire [15:0]ctrlword_595_1;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(32[9:23])
    wire [15:0]ctrlword_595_4;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(35[9:23])
    
    wire n4, n5;
    wire [15:0]ctrlword_595_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(36[9:23])
    wire [15:0]ctrlword_595_6;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(37[9:23])
    wire [7:0]adcdisplay_7__N_1;
    
    wire VCC_net, clk_divided_N_170;
    wire [3:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[26:35])
    wire [3:0]cnt_main;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(49[12:20])
    wire [4:0]cnt_read;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    
    wire n41320, n5_adj_1564, n44470, scl_out_N_143, n43042, n4_adj_1565, 
        n5_adj_1566, sda_out_N_166, n43041, sda_out_N_183, sda_out_N_182, 
        decade_3__N_561, decade_3__N_576, decade_3__N_580, hundreds_1__N_558, 
        realv_1_1__N_283, realv_1_1__N_293, realv_1_1__N_292, n3, n4_adj_1567, 
        realv_1_1__N_303, realv_1_1__N_322, realv_1_1__N_326, realv_1_1__N_321, 
        n1, n2, realv_1_1__N_275, realv_1_1__N_368, realv_1_1__N_372, 
        realv_2_0__N_520, realv_3_0__N_540, n40992, realv_4_0__N_551;
    wire [7:0]ctrlword_595_4_15__N_630;
    wire [7:0]ctrlword_595_5_15__N_646;
    wire [7:0]ctrlword_595_6_15__N_662;
    wire [7:0]ctrlword_595_4_15__N_622;
    wire [7:0]ctrlword_595_5_15__N_638;
    wire [7:0]ctrlword_595_6_15__N_654;
    
    wire n8700;
    wire [2:0]state_adj_1650;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    wire [7:0]x_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    wire [7:0]y_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    
    wire n42925, n43181, n17083, n2014, n2382, n2385, n2524, n2527, 
        n2531, n2532, n2884, n2886, n2896, n2898, n2913, clk_divided_enable_23, 
        n2973, n17007, n433, clk_in_c_enable_154, n1430, n17065, 
        n41990, n40511, n42484;
    wire [15:0]num_delay_15__N_803;
    
    wire n14, n43462, n43156, n43155, n43154, n43153, n14_adj_1568, 
        n43150, n43149, n43148, n710, n711, n712, n714, n715, 
        n5_adj_1569, n5_adj_1570, n43036, n43018, n43145, n4_adj_1571, 
        n43144, clk_divided_enable_24, n14_adj_1572, n2_adj_1573, n24131, 
        n2_adj_1574, n43143, n43034, n6, n7, n9386, n43445, n14_adj_1575, 
        n7_adj_1576, n3_adj_1577, n41192, n14_adj_1578, n1_adj_1579, 
        n42998, n41301, n42997, n1_adj_1580, n4_adj_1581, n1_adj_1582, 
        n4_adj_1583, n43444, n5_adj_1584, n43033, n9371, n42952, 
        n23, n2_adj_1585, n42951, n43030, n41412, n43439, n42929, 
        clk_in_c_enable_119, n1_adj_1586, n6_adj_1587, n14498, n13333, 
        n40993, n42182, n42884, n43029, n40990, n43115, n43015, 
        n41330, n40987, n41329, n41327, n41326, n41324, n41323, 
        n41321, n43111, n42840, n2_adj_1588, n40508, n7_adj_1589, 
        n42829, n44468, n1_adj_1590, n43108, n40986, n1_adj_1591, 
        n2_adj_1592, n4_adj_1593, n41302, n5_adj_1594, n43417, n43411, 
        n4_adj_1595, n42787, clk_in_c_enable_34, n43408, n43010, n43011, 
        n43026, n43397, n43095, n3_adj_1596, n43438, n43384, n43382, 
        n43380, n42721, n43373, n5_adj_1597, n4_adj_1598, n2_adj_1599, 
        n40989, n42690, n5_adj_1600, n4_adj_1601, n2_adj_1602, n42688, 
        n6_adj_1603, n5_adj_1604, n4_adj_1605, n43086, n43025, n44501, 
        n6727, n43357, n6740, n43355, n43354, n38138, n14_adj_1606, 
        n41198, n3_adj_1607, n43349, n43348, n2_adj_1608, n24328, 
        sda_out_out, n42648, n43341, n43339, n43074, n5_adj_1609, 
        n43024, n43330, n40966, n41217, n41216, n9212, n41214, 
        n42629, n41213, n41211, n41210, n41208, n41207, n41205, 
        n41204, n41202, n41201, n43323, n41199, n42595, n41193, 
        clk_divided_enable_3, clk_divided_enable_36, n40345, n43069, 
        n43023, n40166, n43022, n40406, n44499, n43307, n40953, 
        n9148, clk_divided_enable_40, n43293, n43290, n44503, n42518, 
        n43279, n4_adj_1610, n43272, n43021, n23_adj_1611, n43269, 
        n42482, n43061, n42473, n42472, n43056, n43261, n43013, 
        n43055, clk_divided_enable_39, n40407, n43422, n43020, n43049, 
        n43048, n43019, n42029, n40431, n41914, n37274, n43043;
    
    VHI i40283 (.Z(VCC_net));
    FD1S3AX adcdisplay_i1 (.D(n43417), .CK(clk_in_c), .Q(adcdisplay_c_0));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i1.GSR = "DISABLED";
    FD1S3AX adcdisplay_i2 (.D(n43382), .CK(clk_in_c), .Q(adcdisplay_c_1));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i2.GSR = "DISABLED";
    OB adcdisplay_pad_6 (.I(adcdisplay_c_6), .O(adcdisplay[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_7 (.I(adcdisplay_c_7), .O(adcdisplay[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    VLO i1 (.Z(GND_net));
    BB sda_out_pad (.I(sda_out_N_166), .T(n8700), .B(sda_out), .O(sda_out_out));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(43[2] 191[14])
    FD1S3AX adcdisplay_i8 (.D(adcdisplay_7__N_1[7]), .CK(clk_in_c), .Q(adcdisplay_c_7));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i8.GSR = "DISABLED";
    PFUMX i39742 (.BLUT(n43444), .ALUT(n43445), .C0(ADC_level[7]), .Z(decade_3__N_561));
    FD1S3AX adcdisplay_i7 (.D(adcdisplay_7__N_1[6]), .CK(clk_in_c), .Q(adcdisplay_c_6));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i7.GSR = "DISABLED";
    FD1S3AX adcdisplay_i6 (.D(adcdisplay_7__N_1[5]), .CK(clk_in_c), .Q(adcdisplay_c_5));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i6.GSR = "DISABLED";
    FD1S3AX adcdisplay_i5 (.D(n43349), .CK(clk_in_c), .Q(adcdisplay_c_4));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i5.GSR = "DISABLED";
    FD1S3AX adcdisplay_i4 (.D(n43348), .CK(clk_in_c), .Q(adcdisplay_c_3));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i4.GSR = "DISABLED";
    PFUMX i39720 (.BLUT(n42998), .ALUT(n42997), .C0(n23_adj_1611), .Z(realv_1_1__N_322));
    FD1S3AX adcdisplay_i3 (.D(n43373), .CK(clk_in_c), .Q(adcdisplay_c_2));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(138[3] 140[10])
    defparam adcdisplay_i3.GSR = "DISABLED";
    PFUMX i39688 (.BLUT(n42952), .ALUT(n42951), .C0(n23), .Z(realv_1_1__N_368));
    LUT4 voltage_code_6__bdd_4_lut (.A(voltage_code[6]), .B(voltage_code[4]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_576)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A ((C+!(D))+!B))) */ ;
    defparam voltage_code_6__bdd_4_lut.init = 16'h2402;
    TSALL TSALL_INST (.TSALL(GND_net));
    OB adcdisplay_pad_5 (.I(adcdisplay_c_5), .O(adcdisplay[5]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_4 (.I(adcdisplay_c_4), .O(adcdisplay[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_3 (.I(adcdisplay_c_3), .O(adcdisplay[3]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_2 (.I(adcdisplay_c_2), .O(adcdisplay[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_1 (.I(adcdisplay_c_1), .O(adcdisplay[1]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB adcdisplay_pad_0 (.I(adcdisplay_c_0), .O(adcdisplay[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(13[3:13])
    OB scl_out_pad (.I(scl_out_c), .O(scl_out));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(14[3:10])
    OB din_pad (.I(din_c), .O(din));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(16[3:6])
    OB sck_pad (.I(sck_c), .O(sck));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(17[3:6])
    OB rck_pad (.I(rck_c), .O(rck));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(18[3:6])
    OB DA_LCD_pad (.I(DA_LCD_c), .O(DA_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[3:9])
    OB CLK_LCD_pad (.I(CLK_LCD_c), .O(CLK_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[10:17])
    OB RST_LCD_pad (.I(RST_LCD_c), .O(RST_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[18:25])
    OB DC_LCD_pad (.I(DC_LCD_c), .O(DC_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[26:32])
    OB BL_LCD_pad (.I(BL_LCD_c), .O(BL_LCD));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(19[33:39])
    IB clk_in_pad (.I(clk_in), .O(clk_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    IB rst_n_in_pad (.I(rst_n_in), .O(rst_n_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(10[3:11])
    IB mode_btn_in_pad (.I(mode_btn_in), .O(mode_btn_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(11[3:14])
    LUT4 voltage_code_4__bdd_4_lut (.A(voltage_code[4]), .B(voltage_code[6]), 
         .C(voltage_code[5]), .D(ADC_level[7]), .Z(decade_3__N_580)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut.init = 16'h0db0;
    LUT4 mux_6266_i3_else_4_lut (.A(voltage_code[15]), .B(voltage_code[13]), 
         .Z(n43438)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam mux_6266_i3_else_4_lut.init = 16'h2222;
    LUT4 voltage_code_13__bdd_4_lut (.A(voltage_code[13]), .B(voltage_code[12]), 
         .C(voltage_code[14]), .D(voltage_code[15]), .Z(realv_1_1__N_293)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam voltage_code_13__bdd_4_lut.init = 16'h2410;
    LUT4 i2_4_lut (.A(n23_adj_1611), .B(realv_1_1__N_292), .C(n43145), 
         .D(n43150), .Z(realv_1_1__N_326)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut.init = 16'h36c9;
    LUT4 i2_4_lut_adj_296 (.A(n23), .B(realv_1_1__N_321), .C(n43111), 
         .D(n43115), .Z(realv_1_1__N_372)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_adj_296.init = 16'h36c9;
    PFUMX i39738 (.BLUT(n43438), .ALUT(n43439), .C0(voltage_code[14]), 
          .Z(realv_1_1__N_283));
    LUT4 realv_1_1__N_302_bdd_4_lut (.A(n43115), .B(realv_1_1__N_303), .C(realv_1_1__N_321), 
         .D(n43111), .Z(n42952)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam realv_1_1__N_302_bdd_4_lut.init = 16'h399c;
    LUT4 realv_1_1__N_279_bdd_4_lut (.A(n43150), .B(realv_1_1__N_283), .C(realv_1_1__N_292), 
         .D(n43145), .Z(n42998)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A (B (C+(D))+!B !(C+(D))))) */ ;
    defparam realv_1_1__N_279_bdd_4_lut.init = 16'h399c;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    GSR GSR_INST (.GSR(rst_n_in_c));
    LUT4 ADC_level_7__I_0_i4_1_lut_rep_631 (.A(voltage_code[3]), .Z(n43348)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i4_1_lut_rep_631.init = 16'h5555;
    LUT4 i4681_3_lut_4_lut_4_lut (.A(voltage_code[3]), .B(n43086), .C(n43095), 
         .D(voltage_code[4]), .Z(realv_3_0__N_540)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i4681_3_lut_4_lut_4_lut.init = 16'h4bb4;
    LUT4 ADC_level_7__I_0_i5_1_lut_rep_632 (.A(voltage_code[4]), .Z(n43349)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i5_1_lut_rep_632.init = 16'h5555;
    LUT4 i5346_3_lut_4_lut_4_lut (.A(voltage_code[4]), .B(n43095), .C(n43108), 
         .D(voltage_code[5]), .Z(realv_2_0__N_520)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i5346_3_lut_4_lut_4_lut.init = 16'h4bb4;
    ctrlword_595 datato595 (.clk_in_c(clk_in_c), .sck_c(sck_c), .n42482(n42482), 
            .\ctrlword_595_3[13] (ctrlword_595_3[13]), .n42473(n42473), 
            .n42472(n42472), .n43023(n43023), .GND_net(GND_net), .\ctrlword_595_5_15__N_638[3] (ctrlword_595_5_15__N_638[3]), 
            .din_c(din_c), .n43025(n43025), .n43019(n43019), .n43024(n43024), 
            .n43026(n43026), .\ctrlword_595_4_15__N_630[5] (ctrlword_595_4_15__N_630[5]), 
            .n43029(n43029), .n43030(n43030), .n43036(n43036), .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), 
            .hundreds_1__N_558(hundreds_1__N_558), .n9386(n9386), .n7(n7), 
            .n40953(n40953), .n433(n433), .\ctrlword_595_4_15__N_630[2] (ctrlword_595_4_15__N_630[2]), 
            .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .\ctrlword_595_3[1] (ctrlword_595_3[1]), .\ctrlword_595_3[2] (ctrlword_595_3[2]), 
            .\ctrlword_595_3[3] (ctrlword_595_3[3]), .\ctrlword_595_3[4] (ctrlword_595_3[4]), 
            .\decade[3] (decade[3]), .n43153(n43153), .n43154(n43154), 
            .n43148(n43148), .\ctrlword_595_6_15__N_662[7] (ctrlword_595_6_15__N_662[7]), 
            .\ctrlword_595_6_15__N_654[7] (ctrlword_595_6_15__N_654[7]), .rst_n_in_c(rst_n_in_c), 
            .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), .\ctrlword_595_5[6] (ctrlword_595_5[6]), 
            .\ctrlword_595_5_15__N_646[2] (ctrlword_595_5_15__N_646[2]), .\ctrlword_595_5_15__N_638[2] (ctrlword_595_5_15__N_638[2]), 
            .\ctrlword_595_4[7] (ctrlword_595_4[7]), .\ctrlword_595_1[7] (ctrlword_595_1[7]), 
            .\ctrlword_595_6[4] (ctrlword_595_6[4]), .\ctrlword_595_6[5] (ctrlword_595_6[5]), 
            .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), .\ctrlword_595_6[6] (ctrlword_595_6[6]), 
            .rck_c(rck_c), .\ctrlword_595_6[3] (ctrlword_595_6[3]), .n43357(n43357), 
            .\ctrlword_595_4_15__N_630[3] (ctrlword_595_4_15__N_630[3]), .\ctrlword_595_5_15__N_638[4] (ctrlword_595_5_15__N_638[4]), 
            .\ctrlword_595_5_15__N_638[5] (ctrlword_595_5_15__N_638[5]), .\ctrlword_595_5_15__N_638[1] (ctrlword_595_5_15__N_638[1]));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(133[12:24])
    LUT4 ADC_level_7__I_0_i8_1_lut (.A(ADC_level[7]), .Z(adcdisplay_7__N_1[7])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i8_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i3_1_lut_rep_656 (.A(voltage_code[2]), .Z(n43373)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i3_1_lut_rep_656.init = 16'h5555;
    LUT4 i4905_3_lut_4_lut_4_lut (.A(voltage_code[2]), .B(n43074), .C(n43086), 
         .D(voltage_code[3]), .Z(realv_4_0__N_551)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i4905_3_lut_4_lut_4_lut.init = 16'h4bb4;
    LUT4 ADC_level_7__I_0_i6_1_lut (.A(voltage_code[5]), .Z(adcdisplay_7__N_1[5])) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i6_1_lut.init = 16'h5555;
    LUT4 ADC_level_7__I_0_i2_1_lut_rep_665 (.A(voltage_code[1]), .Z(n43382)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam ADC_level_7__I_0_i2_1_lut_rep_665.init = 16'h5555;
    mode_shift mode_control (.\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), 
            .\ctrlword_595_3[13] (ctrlword_595_3[13]), .clk_in_c(clk_in_c), 
            .btn_state(btn_state), .n714(n714), .clk_divided_enable_39(clk_divided_enable_39), 
            .n710(n710), .n5(n5_adj_1609), .clk_divided_enable_24(clk_divided_enable_24), 
            .n42884(n42884), .scl_out_N_143(scl_out_N_143), .rst_n_in_c(rst_n_in_c), 
            .n715(n715), .clk_divided_enable_40(clk_divided_enable_40), 
            .n40511(n40511), .state({state_adj_1650}), .n40166(n40166), 
            .\num_delay_15__N_803[1] (num_delay_15__N_803[1]), .n40345(n40345), 
            .n711(n711), .clk_divided_enable_23(clk_divided_enable_23), 
            .n712(n712), .n24328(n24328), .n37274(n37274), .n17007(n17007), 
            .sda_out_N_183(sda_out_N_183), .sda_out_N_182(sda_out_N_182), 
            .n43330(n43330), .clk_divided_N_170(clk_divided_N_170), .n1430(n1430), 
            .n43462(n43462), .n43397(n43397), .n2014(n2014), .clk_in_c_enable_154(clk_in_c_enable_154), 
            .n17065(n17065), .n24131(n24131), .n43341(n43341), .n40508(n40508), 
            .n42925(n42925), .clk_in_c_enable_119(clk_in_c_enable_119), 
            .clk_in_c_enable_34(clk_in_c_enable_34), .n17083(n17083), .\cnt_main[2] (cnt_main[2]), 
            .\cnt_main[1] (cnt_main[1]), .\cnt_main[3] (cnt_main[3]), .n44470(n44470), 
            .n43384(n43384), .n7(n7_adj_1589), .\cnt_read[0] (cnt_read[0]), 
            .n43279(n43279), .n40407(n40407), .\cnt_write[0] (cnt_write[0]), 
            .n40406(n40406), .n43408(n43408));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(131[15:25])
    LUT4 i5290_3_lut_rep_339_4_lut_4_lut (.A(voltage_code[1]), .B(n43061), 
         .C(n43074), .D(voltage_code[2]), .Z(n43056)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i5290_3_lut_rep_339_4_lut_4_lut.init = 16'h4bb4;
    LUT4 i38833_2_lut_rep_331_2_lut_3_lut_4_lut_3_lut (.A(voltage_code[1]), 
         .B(n43061), .C(n43069), .Z(n43048)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i38833_2_lut_rep_331_2_lut_3_lut_4_lut_3_lut.init = 16'h0909;
    LUT4 i5318_3_lut_rep_438_4_lut_4_lut (.A(voltage_code[1]), .B(n44468), 
         .C(n43181), .D(voltage_code[2]), .Z(n43155)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(139[21:30])
    defparam i5318_3_lut_rep_438_4_lut_4_lut.init = 16'h4bb4;
    LCD_display LCDdisplay (.clk_in_c(clk_in_c), .\realv_5[0] (realv_5[0]), 
            .n5(n5_adj_1584), .x_cnt({Open_0, Open_1, Open_2, Open_3, 
            Open_4, Open_5, Open_6, x_cnt[0]}), .y_cnt({Open_7, Open_8, 
            Open_9, Open_10, y_cnt[3:0]}), .clk_in_c_enable_154(clk_in_c_enable_154), 
            .n41301(n41301), .n41302(n41302), .n43154(n43154), .n43049(n43049), 
            .n42484(n42484), .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), 
            .n43036(n43036), .n2884(n2884), .n2898(n2898), .state({state_adj_1650}), 
            .rst_n_in_c(rst_n_in_c), .n43026(n43026), .GND_net(GND_net), 
            .clk_in_c_enable_34(clk_in_c_enable_34), .n43020(n43020), .n43033(n43033), 
            .n14(n14), .n43041(n43041), .n41990(n41990), .n43355(n43355), 
            .n9148(n9148), .n17083(n17083), .n43148(n43148), .n2973(n2973), 
            .BL_LCD_c(BL_LCD_c), .n40986(n40986), .n40987(n40987), .n43155(n43155), 
            .n40989(n40989), .n40990(n40990), .n40992(n40992), .n40993(n40993), 
            .n41320(n41320), .n41321(n41321), .n41323(n41323), .n41324(n41324), 
            .n41326(n41326), .n41327(n41327), .n41329(n41329), .n41330(n41330), 
            .n43034(n43034), .n1(n1_adj_1582), .n43411(n43411), .DA_LCD_c(DA_LCD_c), 
            .n14498(n14498), .n43293(n43293), .\decade[3] (decade[3]), 
            .n43153(n43153), .n2014(n2014), .n44468(n44468), .\voltage_code[1] (voltage_code[1]), 
            .n4(n4_adj_1583), .n5_adj_46(n5_adj_1594), .n4_adj_47(n4_adj_1581), 
            .n3(n3_adj_1607), .n43024(n43024), .n42929(n42929), .n43156(n43156), 
            .n43341(n43341), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .n40508(n40508), .n43339(n43339), .n43022(n43022), .n43030(n43030), 
            .n43021(n43021), .n43011(n43011), .n2(n2_adj_1608), .\realv_5[3] (realv_5[3]), 
            .n43048(n43048), .n14_adj_48(n14_adj_1568), .n14_adj_49(n14_adj_1606), 
            .n2886(n2886), .n43023(n43023), .\num_delay_15__N_803[1] (num_delay_15__N_803[1]), 
            .n43307(n43307), .n2913(n2913), .n43043(n43043), .n43042(n43042), 
            .n40431(n40431), .n41914(n41914), .n2896(n2896), .n43380(n43380), 
            .n2385(n2385), .n42840(n42840), .n1_adj_50(n1_adj_1579), .n4_adj_51(n4_adj_1565), 
            .n42629(n42629), .n3_adj_52(n3_adj_1577), .n7(n7_adj_1576), 
            .n42829(n42829), .n4_adj_53(n4_adj_1593), .n43025(n43025), 
            .n43019(n43019), .n42182(n42182), .n2382(n2382), .hundreds_1__N_558(hundreds_1__N_558), 
            .n40511(n40511), .n17065(n17065), .n13333(n13333), .n43013(n43013), 
            .n42787(n42787), .n2524(n2524), .n40966(n40966), .n43018(n43018), 
            .n37274(n37274), .n43272(n43272), .n44499(n44499), .n44501(n44501), 
            .clk_divided_enable_3(clk_divided_enable_3), .n2527(n2527), 
            .n1_adj_54(n1_adj_1586), .n43010(n43010), .n42721(n42721), 
            .n43029(n43029), .n42925(n42925), .n43269(n43269), .n42690(n42690), 
            .n42688(n42688), .n43143(n43143), .n43354(n43354), .n5_adj_55(n5_adj_1600), 
            .n43144(n43144), .n2532(n2532), .n2531(n2531), .n43149(n43149), 
            .\unit[3] (unit[3]), .RST_LCD_c(RST_LCD_c), .CLK_LCD_c(CLK_LCD_c), 
            .clk_in_c_enable_119(clk_in_c_enable_119), .DC_LCD_c(DC_LCD_c), 
            .n9212(n9212), .n2_adj_56(n2_adj_1588), .n4_adj_57(n4_adj_1605), 
            .n5_adj_58(n5_adj_1604), .n1_adj_59(n1_adj_1590), .n4_adj_60(n4_adj_1598), 
            .n5_adj_61(n5_adj_1597), .n4_adj_62(n4_adj_1601), .n2_adj_63(n2_adj_1574), 
            .n4_adj_64(n4), .n5_adj_65(n5), .n1_adj_66(n1), .n2_adj_67(n2_adj_1585), 
            .n4_adj_68(n4_adj_1595), .n5_adj_69(n5_adj_1564), .n2_adj_70(n2), 
            .n4_adj_71(n4_adj_1567), .n2_adj_72(n2_adj_1573), .n4_adj_73(n4_adj_1571), 
            .n5_adj_74(n5_adj_1570), .n40166(n40166), .n42648(n42648), 
            .n3_adj_75(n3), .n14_adj_76(n14_adj_1575), .n14_adj_77(n14_adj_1578), 
            .n43422(n43422), .n43290(n43290), .n6(n6_adj_1603), .n43408(n43408), 
            .n14_adj_78(n14_adj_1572), .n43323(n43323), .n1_adj_79(n1_adj_1580), 
            .n5_adj_80(n5_adj_1566), .n42595(n42595), .n5_adj_81(n5_adj_1569), 
            .n43015(n43015), .n9371(n9371), .\ctrlword_595_5_15__N_646[3] (ctrlword_595_5_15__N_646[3]), 
            .n42029(n42029), .n24328(n24328), .n43261(n43261), .n4_adj_82(n4_adj_1610), 
            .clk_divided_enable_36(clk_divided_enable_36), .n2_adj_83(n2_adj_1602), 
            .n2_adj_84(n2_adj_1599), .n43056(n43056), .n43055(n43055), 
            .n6_adj_85(n6_adj_1587), .n6_adj_86(n6), .n41192(n41192), 
            .n41193(n41193), .n1_adj_87(n1_adj_1591), .n41198(n41198), 
            .n41199(n41199), .n2_adj_88(n2_adj_1592), .n41201(n41201), 
            .n41202(n41202), .n41204(n41204), .n41205(n41205), .n41207(n41207), 
            .n41208(n41208), .n3_adj_89(n3_adj_1596), .n41210(n41210), 
            .n41211(n41211), .n41213(n41213), .n41214(n41214), .\ctrlword_595_4_15__N_630[5] (ctrlword_595_4_15__N_630[5]), 
            .n42482(n42482), .n42518(n42518), .n43397(n43397), .n41216(n41216), 
            .n41217(n41217));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(134[13:24])
    btn_debouncing btn_debounce (.GND_net(GND_net), .clk_in_c(clk_in_c), 
            .btn_state(btn_state), .mode_btn_in_c(mode_btn_in_c));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(130[15:29])
    PFUMX mux_6264_i3 (.BLUT(n6727), .ALUT(n38138), .C0(n43115), .Z(realv_1_1__N_275));
    LUT4 m0_lut (.Z(n44503)) /* synthesis lut_function=0, syn_instantiated=1 */ ;
    defparam m0_lut.init = 16'h0000;
    ADC ADC_work (.n43408(n43408), .clk_divided_enable_3(clk_divided_enable_3), 
        .sda_out_N_166(sda_out_N_166), .clk_divided_enable_39(clk_divided_enable_39), 
        .cnt_main({cnt_main[3], Open_11, cnt_main[1], Open_12}), .clk_divided_enable_40(clk_divided_enable_40), 
        .n44503(n44503), .n43279(n43279), .\cnt_main[2] (cnt_main[2]), 
        .n715(n715), .n44470(n44470), .n43272(n43272), .n710(n710), 
        .clk_in_c(clk_in_c), .\cnt_write[0] (cnt_write[0]), .clk_divided_enable_36(clk_divided_enable_36), 
        .n7(n7_adj_1589), .\voltage_code[1] (voltage_code[1]), .clk_divided_enable_23(clk_divided_enable_23), 
        .n24131(n24131), .n5(n5_adj_1609), .sda_out_N_183(sda_out_N_183), 
        .n712(n712), .n44499(n44499), .n43261(n43261), .\cnt_read[0] (cnt_read[0]), 
        .n711(n711), .sda_out_out(sda_out_out), .n1430(n1430), .\voltage_code[2] (voltage_code[2]), 
        .\voltage_code[3] (voltage_code[3]), .n42884(n42884), .rst_n_in_c(rst_n_in_c), 
        .n40345(n40345), .n37274(n37274), .n714(n714), .\voltage_code[4] (voltage_code[4]), 
        .\voltage_code[5] (voltage_code[5]), .\voltage_code[6] (voltage_code[6]), 
        .\ADC_level[7] (ADC_level[7]), .n43384(n43384), .scl_out_c(scl_out_c), 
        .clk_divided_enable_24(clk_divided_enable_24), .scl_out_N_143(scl_out_N_143), 
        .sda_out_N_182(sda_out_N_182), .n8700(n8700), .clk_divided_N_170(clk_divided_N_170), 
        .GND_net(GND_net), .n17007(n17007), .\realv_5[0] (realv_5[0]), 
        .n40406(n40406), .n40407(n40407), .n4(n4_adj_1610), .n43330(n43330), 
        .n44501(n44501), .n43462(n43462));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(129[11:14])
    PFUMX mux_6265_i3 (.BLUT(n41412), .ALUT(n6740), .C0(n43150), .Z(realv_1_1__N_303));
    trans_BCD BCD_transform (.\voltage_code[1] (voltage_code[1]), .n43061(n43061), 
            .n2(n2_adj_1599), .n1(n1_adj_1590), .n41213(n41213), .realv_1_1__N_293(realv_1_1__N_293), 
            .n43036(n43036), .\ctrlword_595_5_15__N_638[2] (ctrlword_595_5_15__N_638[2]), 
            .n42472(n42472), .\ctrlword_595_1[7] (ctrlword_595_1[7]), .GND_net(GND_net), 
            .\ctrlword_595_3[13]__inv (ctrlword_595_3_13_inv), .n44503(n44503), 
            .\ctrlword_595_3[1] (ctrlword_595_3[1]), .n43041(n43041), .\ctrlword_595_3[2] (ctrlword_595_3[2]), 
            .\ctrlword_595_3[3] (ctrlword_595_3[3]), .\ctrlword_595_3[4] (ctrlword_595_3[4]), 
            .\ctrlword_595_5_15__N_638[4] (ctrlword_595_5_15__N_638[4]), .\voltage_code[2] (voltage_code[2]), 
            .\voltage_code[3] (voltage_code[3]), .\realv_5[0] (realv_5[0]), 
            .\ADC_level[7] (ADC_level[7]), .n23(n23_adj_1611), .\voltage_code[6] (voltage_code[6]), 
            .\decade[3] (decade[3]), .realv_1_1__N_326(realv_1_1__N_326), 
            .n43154(n43154), .n43144(n43144), .n43380(n43380), .n1_adj_1(n1_adj_1582), 
            .n42473(n42473), .\unit[3] (unit[3]), .n43145(n43145), .n43111(n43111), 
            .n43049(n43049), .n43034(n43034), .n43033(n43033), .\ctrlword_595_6_15__N_662[3] (ctrlword_595_6_15__N_662[3]), 
            .\voltage_code[15] (voltage_code[15]), .n43153(n43153), .decade_3__N_561(decade_3__N_561), 
            .n5(n5_adj_1569), .n6(n6), .n4(n4_adj_1567), .n41205(n41205), 
            .n2_adj_2(n2_adj_1585), .n1_adj_3(n1), .n41201(n41201), .n2_adj_4(n2_adj_1602), 
            .n41216(n41216), .n5_adj_5(n5), .n4_adj_6(n4), .n41199(n41199), 
            .\voltage_code[13] (voltage_code[13]), .\voltage_code[14] (voltage_code[14]), 
            .n2_adj_7(n2_adj_1574), .n1_adj_8(n1_adj_1580), .n41198(n41198), 
            .n5_adj_9(n5_adj_1594), .n4_adj_10(n4_adj_1583), .n41193(n41193), 
            .n43269(n43269), .n41192(n41192), .\voltage_code[4] (voltage_code[4]), 
            .\voltage_code[5] (voltage_code[5]), .\voltage_code[12] (voltage_code[12]), 
            .n43156(n43156), .realv_1_1__N_292(realv_1_1__N_292), .realv_1_1__N_283(realv_1_1__N_283), 
            .n5_adj_11(n5_adj_1584), .n4_adj_12(n4_adj_1581), .n6_adj_13(n6_adj_1587), 
            .n5_adj_14(n5_adj_1597), .n4_adj_15(n4_adj_1598), .n41214(n41214), 
            .n42997(n42997), .realv_1_1__N_321(realv_1_1__N_321), .realv_1_1__N_303(realv_1_1__N_303), 
            .n43150(n43150), .n42951(n42951), .n5_adj_16(n5_adj_1604), 
            .n4_adj_17(n4_adj_1605), .n41211(n41211), .realv_1_1__N_275(realv_1_1__N_275), 
            .n43115(n43115), .n2_adj_18(n2_adj_1588), .n9212(n9212), .n41210(n41210), 
            .n2_adj_19(n2_adj_1573), .n41207(n41207), .n5_adj_20(n5_adj_1570), 
            .n4_adj_21(n4_adj_1571), .n41208(n41208), .n38138(n38138), 
            .n6740(n6740), .n2_adj_22(n2), .n41204(n41204), .n5_adj_23(n5_adj_1564), 
            .n4_adj_24(n4_adj_1595), .n41202(n41202), .\y_cnt[2] (y_cnt[2]), 
            .\y_cnt[1] (y_cnt[1]), .\y_cnt[0] (y_cnt[0]), .\y_cnt[3] (y_cnt[3]), 
            .n43445(n43445), .n43444(n43444), .n43020(n43020), .n2_adj_25(n2_adj_1608), 
            .n43010(n43010), .n43043(n43043), .n43042(n43042), .\ctrlword_595_3[13] (ctrlword_595_3[13]), 
            .n40953(n40953), .n43026(n43026), .n43019(n43019), .n43025(n43025), 
            .n43024(n43024), .n43011(n43011), .n43439(n43439), .\ctrlword_595_4_15__N_630[1] (ctrlword_595_4_15__N_630[1]), 
            .n43013(n43013), .realv_1_1__N_322(realv_1_1__N_322), .n43155(n43155), 
            .n14(n14_adj_1578), .n42829(n42829), .n2531(n2531), .n14_adj_26(n14_adj_1575), 
            .n7(n7_adj_1576), .n2532(n2532), .n14_adj_27(n14), .n42840(n42840), 
            .n2524(n2524), .n43018(n43018), .\ctrlword_595_4_15__N_630[3] (ctrlword_595_4_15__N_630[3]), 
            .realv_4_0__N_551(realv_4_0__N_551), .n1_adj_28(n1_adj_1579), 
            .n43293(n43293), .n42721(n42721), .n23_adj_29(n23), .n14_adj_30(n14_adj_1572), 
            .n42787(n42787), .n2527(n2527), .realv_3_0__N_540(realv_3_0__N_540), 
            .\realv_5[3] (realv_5[3]), .n43069(n43069), .n43055(n43055), 
            .n43149(n43149), .n42595(n42595), .n43074(n43074), .n42518(n42518), 
            .decade_3__N_580(decade_3__N_580), .decade_3__N_576(decade_3__N_576), 
            .n43417(n43417), .n43354(n43354), .n43290(n43290), .n43339(n43339), 
            .\x_cnt[0] (x_cnt[0]), .n42929(n42929), .n44468(n44468), .n433(n433), 
            .\ctrlword_595_6[6] (ctrlword_595_6[6]), .\ctrlword_595_4_15__N_630[2] (ctrlword_595_4_15__N_630[2]), 
            .\ctrlword_595_6_15__N_662[7] (ctrlword_595_6_15__N_662[7]), .\ctrlword_595_6_15__N_654[7] (ctrlword_595_6_15__N_654[7]), 
            .n14_adj_31(n14_adj_1606), .n42690(n42690), .n2382(n2382), 
            .n14_adj_32(n14_adj_1568), .n42648(n42648), .n2385(n2385), 
            .n9386(n9386), .\ctrlword_595_5[6] (ctrlword_595_5[6]), .n41412(n41412), 
            .realv_1_1__N_372(realv_1_1__N_372), .n7_adj_33(n7), .realv_2_0__N_520(realv_2_0__N_520), 
            .n43086(n43086), .realv_1_1__N_368(realv_1_1__N_368), .hundreds_1__N_558(hundreds_1__N_558), 
            .\ctrlword_595_4_15__N_622[1] (ctrlword_595_4_15__N_622[1]), .n2884(n2884), 
            .n2898(n2898), .n1_adj_34(n1_adj_1586), .n43355(n43355), .n2886(n2886), 
            .n42029(n42029), .n2896(n2896), .n42182(n42182), .n43411(n43411), 
            .n43307(n43307), .n41990(n41990), .n43323(n43323), .n42484(n42484), 
            .n2913(n2913), .n3(n3), .\ctrlword_595_4[7] (ctrlword_595_4[7]), 
            .n3_adj_35(n3_adj_1607), .n43357(n43357), .\ctrlword_595_6[3] (ctrlword_595_6[3]), 
            .n43023(n43023), .n43095(n43095), .n43108(n43108), .n43148(n43148), 
            .\ctrlword_595_5_15__N_638[1] (ctrlword_595_5_15__N_638[1]), .\ctrlword_595_6[4] (ctrlword_595_6[4]), 
            .\ctrlword_595_6[5] (ctrlword_595_6[5]), .\ctrlword_595_3[5] (ctrlword_595_3[5]), 
            .\ctrlword_595_5_15__N_638[5] (ctrlword_595_5_15__N_638[5]), .n43029(n43029), 
            .n41914(n41914), .n5_adj_36(n5_adj_1600), .n4_adj_37(n4_adj_1601), 
            .n41217(n41217), .\ctrlword_595_5_15__N_638[3] (ctrlword_595_5_15__N_638[3]), 
            .n43021(n43021), .n9371(n9371), .n40966(n40966), .n43030(n43030), 
            .n43422(n43422), .n4_adj_38(n4_adj_1593), .n41302(n41302), 
            .n2_adj_39(n2_adj_1592), .n1_adj_40(n1_adj_1591), .n41301(n41301), 
            .n3_adj_41(n3_adj_1596), .n40431(n40431), .\ctrlword_595_5_15__N_646[2] (ctrlword_595_5_15__N_646[2]), 
            .n6727(n6727), .n3_adj_42(n3_adj_1577), .n41323(n41323), .n6_adj_43(n6_adj_1603), 
            .n41327(n41327), .n40986(n40986), .n41324(n41324), .n41329(n41329), 
            .n40993(n40993), .n41330(n41330), .n41321(n41321), .n40992(n40992), 
            .n41326(n41326), .n41320(n41320), .n40990(n40990), .n40989(n40989), 
            .n40987(n40987), .n43143(n43143), .n43181(n43181), .n9148(n9148), 
            .n2973(n2973), .n14498(n14498), .n42688(n42688), .\adcdisplay_7__N_1[6] (adcdisplay_7__N_1[6]), 
            .n4_adj_44(n4_adj_1565), .n5_adj_45(n5_adj_1566), .n42629(n42629), 
            .n43015(n43015), .n43022(n43022), .n13333(n13333));   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(132[19:28])
    
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
// Verilog Description of module ctrlword_595
//

module ctrlword_595 (clk_in_c, sck_c, n42482, \ctrlword_595_3[13] , 
            n42473, n42472, n43023, GND_net, \ctrlword_595_5_15__N_638[3] , 
            din_c, n43025, n43019, n43024, n43026, \ctrlword_595_4_15__N_630[5] , 
            n43029, n43030, n43036, \ctrlword_595_4_15__N_622[1] , hundreds_1__N_558, 
            n9386, n7, n40953, n433, \ctrlword_595_4_15__N_630[2] , 
            \ctrlword_595_4_15__N_630[1] , \ctrlword_595_3[5] , \ctrlword_595_3[1] , 
            \ctrlword_595_3[2] , \ctrlword_595_3[3] , \ctrlword_595_3[4] , 
            \decade[3] , n43153, n43154, n43148, \ctrlword_595_6_15__N_662[7] , 
            \ctrlword_595_6_15__N_654[7] , rst_n_in_c, \ctrlword_595_5_15__N_646[3] , 
            \ctrlword_595_5[6] , \ctrlword_595_5_15__N_646[2] , \ctrlword_595_5_15__N_638[2] , 
            \ctrlword_595_4[7] , \ctrlword_595_1[7] , \ctrlword_595_6[4] , 
            \ctrlword_595_6[5] , \ctrlword_595_6_15__N_662[3] , \ctrlword_595_6[6] , 
            rck_c, \ctrlword_595_6[3] , n43357, \ctrlword_595_4_15__N_630[3] , 
            \ctrlword_595_5_15__N_638[4] , \ctrlword_595_5_15__N_638[5] , 
            \ctrlword_595_5_15__N_638[1] );
    input clk_in_c;
    output sck_c;
    input n42482;
    input \ctrlword_595_3[13] ;
    input n42473;
    input n42472;
    input n43023;
    input GND_net;
    input \ctrlword_595_5_15__N_638[3] ;
    output din_c;
    input n43025;
    input n43019;
    input n43024;
    input n43026;
    output \ctrlword_595_4_15__N_630[5] ;
    input n43029;
    input n43030;
    input n43036;
    input \ctrlword_595_4_15__N_622[1] ;
    input hundreds_1__N_558;
    input n9386;
    input n7;
    input n40953;
    output n433;
    input \ctrlword_595_4_15__N_630[2] ;
    input \ctrlword_595_4_15__N_630[1] ;
    input \ctrlword_595_3[5] ;
    input \ctrlword_595_3[1] ;
    input \ctrlword_595_3[2] ;
    input \ctrlword_595_3[3] ;
    input \ctrlword_595_3[4] ;
    input \decade[3] ;
    input n43153;
    input n43154;
    input n43148;
    input \ctrlword_595_6_15__N_662[7] ;
    input \ctrlword_595_6_15__N_654[7] ;
    input rst_n_in_c;
    input \ctrlword_595_5_15__N_646[3] ;
    input \ctrlword_595_5[6] ;
    input \ctrlword_595_5_15__N_646[2] ;
    input \ctrlword_595_5_15__N_638[2] ;
    input \ctrlword_595_4[7] ;
    input \ctrlword_595_1[7] ;
    input \ctrlword_595_6[4] ;
    input \ctrlword_595_6[5] ;
    input \ctrlword_595_6_15__N_662[3] ;
    input \ctrlword_595_6[6] ;
    output rck_c;
    input \ctrlword_595_6[3] ;
    output n43357;
    input \ctrlword_595_4_15__N_630[3] ;
    input \ctrlword_595_5_15__N_638[4] ;
    input \ctrlword_595_5_15__N_638[5] ;
    input \ctrlword_595_5_15__N_638[1] ;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire [15:0]n33;
    
    wire clk_in_c_enable_95;
    wire [15:0]n419;
    
    wire shift_clock_ls, sck_N_765, n42481, n42483;
    wire [2:0]codeword_partnum;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(32[9:25])
    
    wire n6802;
    wire [2:0]n1;
    
    wire n42475, n42470, n9630, n42474, n41090, n38018, n42378, 
        n37827;
    wire [31:0]shift_clock_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(26[9:24])
    wire [31:0]n133;
    
    wire n37826, n37825, n37824, n37823, n37822, n37821, n37820, 
        n37819, n37818, n37817, n37816, n42377, din_N_755, n37815, 
        n37814, n37813, n37812, n42255, n40932, n42256, n42253, 
        n9629, n43313, n42254, n42252, din_N_762, n42529, n44043, 
        n44044, n44045, n44046, n44047, n44048, n44049, n44050, 
        n9666, n9667;
    wire [0:0]n2939;
    
    wire n9655;
    wire [0:0]n3087;
    
    wire n3256;
    wire [0:0]n3097;
    
    wire n41088, n41089, n12559;
    wire [0:0]n3167;
    
    wire n17029, clk_in_c_enable_41, n3, n40121, n49, n41523, n58, 
        n50, n41, n60, n54, n42, n51, n39, n12557, n38010, 
        n56, n46, n42603, n42602, n12923;
    wire [15:0]ctrlword_595_6;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(37[9:23])
    
    wire n12924, n17050, n12906, n12564, n40437;
    wire [0:0]n2998;
    
    wire n41139, n12655, n9640, n12554, n38058, n9639, n43371, 
        n43318, n12, n13627, n44051, n40955, n41138;
    wire [15:0]ctrlword_595_5;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(36[9:23])
    
    wire n43356, n43370, n42376, n40908, n12905, n42471, n42480;
    
    FD1P3AY shift_cnt_FSM__i0 (.D(n419[15]), .SP(clk_in_c_enable_95), .CK(clk_in_c), 
            .Q(n33[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i0.GSR = "ENABLED";
    FD1S3AX shift_clock_ls_60 (.D(sck_c), .CK(clk_in_c), .Q(shift_clock_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(66[3] 68[10])
    defparam shift_clock_ls_60.GSR = "DISABLED";
    FD1S3AY shift_clock_59 (.D(sck_N_765), .CK(clk_in_c), .Q(sck_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(51[3] 60[10])
    defparam shift_clock_59.GSR = "ENABLED";
    PFUMX i39326 (.BLUT(n42482), .ALUT(n42481), .C0(n419[6]), .Z(n42483));
    FD1S3IX codeword_partnum__i0 (.D(n1[0]), .CK(clk_in_c), .CD(n6802), 
            .Q(codeword_partnum[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i0.GSR = "DISABLED";
    PFUMX i39322 (.BLUT(n42475), .ALUT(n42470), .C0(\ctrlword_595_3[13] ), 
          .Z(n9630));
    PFUMX i39320 (.BLUT(n42473), .ALUT(n42472), .C0(n43023), .Z(n42474));
    LUT4 n41090_bdd_4_lut (.A(n41090), .B(n38018), .C(n33[0]), .D(codeword_partnum[2]), 
         .Z(n42378)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+!(D)))+!A ((D)+!B))) */ ;
    defparam n41090_bdd_4_lut.init = 16'h0acc;
    CCU2D shift_clock_cnt_3795_add_4_33 (.A0(shift_clock_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37827), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_33.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_33.INIT1 = 16'h0000;
    defparam shift_clock_cnt_3795_add_4_33.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_33.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_31 (.A0(shift_clock_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37826), .COUT(n37827), .S0(n133[29]), 
          .S1(n133[30]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_31.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_31.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_31.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_31.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_29 (.A0(shift_clock_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37825), .COUT(n37826), .S0(n133[27]), 
          .S1(n133[28]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_29.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_29.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_29.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_29.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_27 (.A0(shift_clock_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37824), .COUT(n37825), .S0(n133[25]), 
          .S1(n133[26]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_27.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_27.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_27.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_27.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_25 (.A0(shift_clock_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37823), .COUT(n37824), .S0(n133[23]), 
          .S1(n133[24]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_25.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_25.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_25.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_25.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_23 (.A0(shift_clock_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37822), .COUT(n37823), .S0(n133[21]), 
          .S1(n133[22]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_23.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_23.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_23.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_23.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_21 (.A0(shift_clock_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37821), .COUT(n37822), .S0(n133[19]), 
          .S1(n133[20]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_21.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_21.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_21.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_21.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_19 (.A0(shift_clock_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37820), .COUT(n37821), .S0(n133[17]), 
          .S1(n133[18]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_19.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_19.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_19.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_19.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_17 (.A0(shift_clock_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37819), .COUT(n37820), .S0(n133[15]), 
          .S1(n133[16]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_17.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_17.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_17.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_17.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_15 (.A0(shift_clock_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37818), .COUT(n37819), .S0(n133[13]), 
          .S1(n133[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_15.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_15.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_15.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_15.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_13 (.A0(shift_clock_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37817), .COUT(n37818), .S0(n133[11]), 
          .S1(n133[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_13.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_13.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_13.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_13.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_11 (.A0(shift_clock_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37816), .COUT(n37817), .S0(n133[9]), 
          .S1(n133[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_11.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_11.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_11.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_11.INJECT1_1 = "NO";
    PFUMX i39263 (.BLUT(n42378), .ALUT(n42377), .C0(codeword_partnum[1]), 
          .Z(din_N_755));
    CCU2D shift_clock_cnt_3795_add_4_9 (.A0(shift_clock_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37815), .COUT(n37816), .S0(n133[7]), 
          .S1(n133[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_9.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_9.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_9.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_9.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_7 (.A0(shift_clock_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37814), .COUT(n37815), .S0(n133[5]), 
          .S1(n133[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_7.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_7.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_7.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_7.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_5 (.A0(shift_clock_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37813), .COUT(n37814), .S0(n133[3]), 
          .S1(n133[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_5.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_5.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_5.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_5.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_3 (.A0(shift_clock_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(shift_clock_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37812), .COUT(n37813), .S0(n133[1]), 
          .S1(n133[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_3.INIT0 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_3.INIT1 = 16'hfaaa;
    defparam shift_clock_cnt_3795_add_4_3.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_3.INJECT1_1 = "NO";
    CCU2D shift_clock_cnt_3795_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(shift_clock_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n37812), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795_add_4_1.INIT0 = 16'hF000;
    defparam shift_clock_cnt_3795_add_4_1.INIT1 = 16'h0555;
    defparam shift_clock_cnt_3795_add_4_1.INJECT1_0 = "NO";
    defparam shift_clock_cnt_3795_add_4_1.INJECT1_1 = "NO";
    PFUMX i39198 (.BLUT(n9630), .ALUT(n42255), .C0(n40932), .Z(n42256));
    L6MUX21 i39196 (.D0(n42253), .D1(n9629), .SD(n43313), .Z(n42254));
    PFUMX i39194 (.BLUT(n42252), .ALUT(\ctrlword_595_5_15__N_638[3] ), .C0(n419[3]), 
          .Z(n42253));
    FD1P3AX din_62 (.D(din_N_755), .SP(din_N_762), .CK(clk_in_c), .Q(din_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam din_62.GSR = "ENABLED";
    LUT4 realv_2_1__bdd_4_lut (.A(n43025), .B(n43019), .C(n43024), .D(n43026), 
         .Z(\ctrlword_595_4_15__N_630[5] )) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A !(((D)+!C)+!B))) */ ;
    defparam realv_2_1__bdd_4_lut.init = 16'h7f3d;
    LUT4 realv_3_3__bdd_4_lut_39437 (.A(n43023), .B(n43029), .C(n43030), 
         .D(n43036), .Z(n42529)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam realv_3_3__bdd_4_lut_39437.init = 16'hbede;
    LUT4 ctrlword_595_4_15__N_622_1__bdd_2_lut_40036 (.A(\ctrlword_595_4_15__N_622[1] ), 
         .B(hundreds_1__N_558), .Z(n44043)) /* synthesis lut_function=(A+(B)) */ ;
    defparam ctrlword_595_4_15__N_622_1__bdd_2_lut_40036.init = 16'heeee;
    LUT4 ctrlword_595_4_15__N_622_1__bdd_2_lut (.A(n43025), .B(n9386), .Z(n44044)) /* synthesis lut_function=((B)+!A) */ ;
    defparam ctrlword_595_4_15__N_622_1__bdd_2_lut.init = 16'hdddd;
    LUT4 n7_bdd_3_lut_40193 (.A(n7), .B(n44045), .C(n40953), .Z(n44046)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n7_bdd_3_lut_40193.init = 16'hcaca;
    LUT4 ctrlword_595_4_15__N_630_2__bdd_4_lut_40176 (.A(\ctrlword_595_4_15__N_622[1] ), 
         .B(hundreds_1__N_558), .C(n419[3]), .D(n433), .Z(n44047)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+(D)))) */ ;
    defparam ctrlword_595_4_15__N_630_2__bdd_4_lut_40176.init = 16'hecea;
    LUT4 ctrlword_595_4_15__N_630_2__bdd_3_lut_40177 (.A(\ctrlword_595_4_15__N_630[2] ), 
         .B(n433), .C(\ctrlword_595_4_15__N_630[1] ), .Z(n44048)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam ctrlword_595_4_15__N_630_2__bdd_3_lut_40177.init = 16'hb8b8;
    LUT4 n44049_bdd_3_lut (.A(n44049), .B(n44047), .C(\ctrlword_595_3[13] ), 
         .Z(n44050)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n44049_bdd_3_lut.init = 16'hcaca;
    LUT4 i6917_3_lut (.A(n9666), .B(\ctrlword_595_3[5] ), .C(n419[5]), 
         .Z(n9667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i6917_3_lut.init = 16'hcaca;
    LUT4 mux_1386_i1_3_lut (.A(\ctrlword_595_3[1] ), .B(\ctrlword_595_3[2] ), 
         .C(n433), .Z(n2939[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam mux_1386_i1_3_lut.init = 16'hcaca;
    PFUMX mux_1509_i1 (.BLUT(n9655), .ALUT(n3087[0]), .C0(n3256), .Z(n3097[0]));
    L6MUX21 i38114 (.D0(n41088), .D1(n41089), .SD(codeword_partnum[0]), 
            .Z(n41090));
    PFUMX i38112 (.BLUT(n12559), .ALUT(n3167[0]), .C0(n3256), .Z(n41088));
    LUT4 i1_2_lut (.A(sck_c), .B(n17029), .Z(sck_N_765)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    FD1P3IX codeword_partnum__i1 (.D(n3), .SP(clk_in_c_enable_41), .CD(n6802), 
            .CK(clk_in_c), .Q(codeword_partnum[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i1.GSR = "DISABLED";
    FD1P3IX codeword_partnum__i2 (.D(n40121), .SP(clk_in_c_enable_41), .CD(n6802), 
            .CK(clk_in_c), .Q(codeword_partnum[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=12, LSE_RCOL=24, LSE_LLINE=133, LSE_RLINE=133 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam codeword_partnum__i2.GSR = "DISABLED";
    LUT4 i38848_4_lut (.A(n49), .B(n41523), .C(n58), .D(n50), .Z(n17029)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i38848_4_lut.init = 16'h0004;
    LUT4 i17_4_lut (.A(shift_clock_cnt[0]), .B(shift_clock_cnt[18]), .C(shift_clock_cnt[28]), 
         .D(shift_clock_cnt[2]), .Z(n49)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i17_4_lut.init = 16'hfffe;
    LUT4 i38847_4_lut (.A(n41), .B(n60), .C(n54), .D(n42), .Z(n41523)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i38847_4_lut.init = 16'h0001;
    LUT4 i26_4_lut (.A(n51), .B(n39), .C(shift_clock_cnt[1]), .D(shift_clock_cnt[4]), 
         .Z(n58)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i26_4_lut.init = 16'hffef;
    LUT4 i18_4_lut (.A(shift_clock_cnt[8]), .B(shift_clock_cnt[11]), .C(shift_clock_cnt[16]), 
         .D(shift_clock_cnt[21]), .Z(n50)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(56[8:25])
    defparam i18_4_lut.init = 16'hfffe;
    PFUMX i38113 (.BLUT(n12557), .ALUT(n38010), .C0(n3256), .Z(n41089));
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
    LUT4 i6916_3_lut (.A(\ctrlword_595_3[3] ), .B(\ctrlword_595_3[4] ), 
         .C(n419[4]), .Z(n9666)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i6916_3_lut.init = 16'hcaca;
    LUT4 realv_3_3__bdd_4_lut_39451 (.A(n43023), .B(n43029), .C(n43030), 
         .D(n43036), .Z(n42603)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C (D)))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam realv_3_3__bdd_4_lut_39451.init = 16'hd6ef;
    LUT4 realv_3_3__bdd_4_lut_39438 (.A(\decade[3] ), .B(n43153), .C(n43154), 
         .D(n43148), .Z(n42602)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A (B (C+(D))+!B ((D)+!C))) */ ;
    defparam realv_3_3__bdd_4_lut_39438.init = 16'hf76b;
    PFUMX i10024 (.BLUT(n12923), .ALUT(ctrlword_595_6[7]), .C0(n419[7]), 
          .Z(n12924));
    LUT4 i38649_3_lut (.A(\ctrlword_595_6_15__N_662[7] ), .B(\ctrlword_595_6_15__N_654[7] ), 
         .C(\ctrlword_595_3[13] ), .Z(ctrlword_595_6[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(112[35:44])
    defparam i38649_3_lut.init = 16'hcaca;
    FD1P3IX shift_cnt_FSM__i1 (.D(n33[0]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[1]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i1.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i2 (.D(n419[1]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n433));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i2.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i3 (.D(n433), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[3]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i3.GSR = "ENABLED";
    LUT4 i3_4_lut (.A(clk_in_c_enable_41), .B(codeword_partnum[0]), .C(codeword_partnum[1]), 
         .D(codeword_partnum[2]), .Z(n6802)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i3_4_lut.init = 16'h0800;
    LUT4 i6287_2_lut (.A(codeword_partnum[0]), .B(clk_in_c_enable_41), .Z(n1[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(102[3] 123[10])
    defparam i6287_2_lut.init = 16'h6666;
    LUT4 i3_4_lut_adj_294 (.A(sck_c), .B(rst_n_in_c), .C(n419[15]), .D(shift_clock_ls), 
         .Z(clk_in_c_enable_41)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(105[8:46])
    defparam i3_4_lut_adj_294.init = 16'h4000;
    FD1P3IX shift_cnt_FSM__i4 (.D(n419[3]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i4.GSR = "ENABLED";
    LUT4 i22984_4_lut (.A(n12906), .B(n419[8]), .C(\ctrlword_595_3[4] ), 
         .D(n419[7]), .Z(n12564)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i22984_4_lut.init = 16'hfcee;
    FD1P3IX shift_cnt_FSM__i5 (.D(n419[4]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[5]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i5.GSR = "ENABLED";
    PFUMX mux_1432_i1 (.BLUT(n12564), .ALUT(n40437), .C0(n3256), .Z(n2998[0]));
    PFUMX i6880 (.BLUT(\ctrlword_595_5_15__N_646[3] ), .ALUT(\ctrlword_595_5[6] ), 
          .C0(n419[6]), .Z(n9629));
    FD1P3IX shift_cnt_FSM__i6 (.D(n419[5]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i6.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i7 (.D(n419[6]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i7.GSR = "ENABLED";
    LUT4 i38163_3_lut (.A(\ctrlword_595_5_15__N_646[2] ), .B(\ctrlword_595_5_15__N_638[2] ), 
         .C(\ctrlword_595_3[13] ), .Z(n41139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38163_3_lut.init = 16'hcaca;
    LUT4 i38703_3_lut (.A(n42483), .B(\ctrlword_595_4[7] ), .C(n419[7]), 
         .Z(n12655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i38703_3_lut.init = 16'hcaca;
    LUT4 i23235_4_lut (.A(n9640), .B(n419[8]), .C(n12924), .D(n40932), 
         .Z(n12557)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(112[35:44])
    defparam i23235_4_lut.init = 16'hfcee;
    LUT4 i23234_2_lut (.A(n42256), .B(n419[8]), .Z(n12559)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i23234_2_lut.init = 16'heeee;
    LUT4 i22914_2_lut (.A(n12554), .B(n419[8]), .Z(n9655)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i22914_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(n419[8]), .B(\ctrlword_595_1[7] ), .C(n3256), .D(n38058), 
         .Z(n38018)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(106[5] 114[14])
    defparam i2_4_lut.init = 16'hfefa;
    L6MUX21 i6890 (.D0(\ctrlword_595_6[4] ), .D1(\ctrlword_595_6[5] ), .SD(n419[5]), 
            .Z(n9640));
    FD1P3IX shift_cnt_FSM__i8 (.D(n419[7]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i8.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i9 (.D(n419[8]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[9]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i9.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i10 (.D(n419[9]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i10.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i11 (.D(n419[10]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[11]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i11.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i12 (.D(n419[11]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i12.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i13 (.D(n419[12]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[13]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i13.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i14 (.D(n419[13]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i14.GSR = "ENABLED";
    FD1P3IX shift_cnt_FSM__i15 (.D(n419[14]), .SP(clk_in_c_enable_95), .CD(n17050), 
            .CK(clk_in_c), .Q(n419[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam shift_cnt_FSM__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i0 (.D(n133[0]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i0.GSR = "ENABLED";
    PFUMX i6889 (.BLUT(\ctrlword_595_6_15__N_662[3] ), .ALUT(\ctrlword_595_6[6] ), 
          .C0(n419[6]), .Z(n9639));
    LUT4 i4_4_lut (.A(n43371), .B(n419[9]), .C(n419[10]), .D(n43318), 
         .Z(n3256)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(n433), .B(n12), .C(n13627), .D(n419[3]), .Z(n38058)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(107[35:44])
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_4_lut (.A(n419[5]), .B(n419[6]), .C(n419[4]), .D(n419[7]), 
         .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(107[35:44])
    defparam i5_4_lut.init = 16'hfffe;
    LUT4 i23224_2_lut (.A(n33[0]), .B(codeword_partnum[0]), .Z(n13627)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(106[5] 114[14])
    defparam i23224_2_lut.init = 16'h8888;
    LUT4 i38708_4_lut (.A(n44051), .B(n12655), .C(n419[7]), .D(n40955), 
         .Z(n12554)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i38708_4_lut.init = 16'hcacc;
    LUT4 i37979_2_lut (.A(n419[6]), .B(n419[5]), .Z(n40955)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(110[35:44])
    defparam i37979_2_lut.init = 16'h1111;
    LUT4 i22862_2_lut (.A(n33[0]), .B(rst_n_in_c), .Z(rck_c)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(90[3] 96[10])
    defparam i22862_2_lut.init = 16'h8888;
    LUT4 n41139_bdd_3_lut_39331 (.A(n41139), .B(n41138), .C(n433), .Z(n42252)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n41139_bdd_3_lut_39331.init = 16'hacac;
    LUT4 i38952_4_lut (.A(n419[7]), .B(n419[6]), .C(n419[5]), .D(n419[4]), 
         .Z(n40932)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i38952_4_lut.init = 16'heeef;
    LUT4 i2644_2_lut (.A(codeword_partnum[0]), .B(codeword_partnum[1]), 
         .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(119[25:41])
    defparam i2644_2_lut.init = 16'h6666;
    LUT4 i15_3_lut (.A(codeword_partnum[0]), .B(codeword_partnum[2]), .C(codeword_partnum[1]), 
         .Z(n40121)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(119[25:41])
    defparam i15_3_lut.init = 16'h6c6c;
    LUT4 n42254_bdd_3_lut (.A(n42254), .B(ctrlword_595_5[7]), .C(n419[7]), 
         .Z(n42255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42254_bdd_3_lut.init = 16'hcaca;
    LUT4 i10023_3_lut_4_lut (.A(n419[6]), .B(n43356), .C(n9639), .D(\ctrlword_595_6[3] ), 
         .Z(n12923)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i10023_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i2_3_lut_4_lut (.A(n419[13]), .B(n43370), .C(n43371), .D(n419[10]), 
         .Z(n38010)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i2_3_lut_4_lut.init = 16'hfeff;
    PFUMX i39439 (.BLUT(n42603), .ALUT(n42602), .C0(\ctrlword_595_3[13] ), 
          .Z(ctrlword_595_5[7]));
    LUT4 n3098_bdd_4_lut (.A(n3097[0]), .B(n2998[0]), .C(codeword_partnum[0]), 
         .D(n33[0]), .Z(n42376)) /* synthesis lut_function=(!(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C)+!B (C+!(D))))) */ ;
    defparam n3098_bdd_4_lut.init = 16'h0fac;
    LUT4 n42376_bdd_2_lut (.A(n42376), .B(codeword_partnum[2]), .Z(n42377)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n42376_bdd_2_lut.init = 16'h2222;
    LUT4 i38967_2_lut_rep_639 (.A(n419[3]), .B(\ctrlword_595_3[13] ), .Z(n43356)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i38967_2_lut_rep_639.init = 16'hdddd;
    LUT4 i38950_2_lut_rep_596_3_lut (.A(n419[3]), .B(\ctrlword_595_3[13] ), 
         .C(n419[6]), .Z(n43313)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(111[35:44])
    defparam i38950_2_lut_rep_596_3_lut.init = 16'hf2f2;
    LUT4 i37928_1_lut_rep_640 (.A(n419[3]), .Z(n43357)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i37928_1_lut_rep_640.init = 16'h5555;
    LUT4 i38977_3_lut_3_lut (.A(n419[3]), .B(n419[4]), .C(n419[5]), .Z(n40908)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i38977_3_lut_3_lut.init = 16'hfefe;
    FD1S3IX shift_clock_cnt_3795__i1 (.D(n133[1]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i1.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i2 (.D(n133[2]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i2.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i3 (.D(n133[3]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i3.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i4 (.D(n133[4]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i4.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i5 (.D(n133[5]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i5.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i6 (.D(n133[6]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i6.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i7 (.D(n133[7]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i7.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i8 (.D(n133[8]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i8.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i9 (.D(n133[9]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i9.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i10 (.D(n133[10]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i10.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i11 (.D(n133[11]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i11.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i12 (.D(n133[12]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i12.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i13 (.D(n133[13]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i13.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i14 (.D(n133[14]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i14.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i15 (.D(n133[15]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i15.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i16 (.D(n133[16]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i16.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i17 (.D(n133[17]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i17.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i18 (.D(n133[18]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i18.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i19 (.D(n133[19]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i19.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i20 (.D(n133[20]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i20.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i21 (.D(n133[21]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i21.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i22 (.D(n133[22]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i22.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i23 (.D(n133[23]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i23.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i24 (.D(n133[24]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i24.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i25 (.D(n133[25]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i25.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i26 (.D(n133[26]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i26.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i27 (.D(n133[27]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i27.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i28 (.D(n133[28]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i28.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i29 (.D(n133[29]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i29.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i30 (.D(n133[30]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i30.GSR = "ENABLED";
    FD1S3IX shift_clock_cnt_3795__i31 (.D(n133[31]), .CK(clk_in_c), .CD(n17029), 
            .Q(shift_clock_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(55[21:36])
    defparam shift_clock_cnt_3795__i31.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_653 (.A(n419[15]), .B(n419[14]), .Z(n43370)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1_2_lut_rep_653.init = 16'heeee;
    LUT4 i1_2_lut_rep_601_3_lut (.A(n419[15]), .B(n419[14]), .C(n419[13]), 
         .Z(n43318)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1_2_lut_rep_601_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_4_lut_adj_295 (.A(n419[15]), .B(n419[14]), .C(n419[13]), 
         .D(\ctrlword_595_3[13] ), .Z(n40437)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i2_3_lut_4_lut_adj_295.init = 16'hffef;
    LUT4 i23018_2_lut_2_lut_3_lut_4_lut (.A(n419[15]), .B(n419[14]), .C(n419[12]), 
         .D(n419[13]), .Z(n3087[0])) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i23018_2_lut_2_lut_3_lut_4_lut.init = 16'hffef;
    LUT4 i1523_2_lut_rep_654 (.A(n419[12]), .B(n419[11]), .Z(n43371)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i1523_2_lut_rep_654.init = 16'heeee;
    LUT4 i22925_3_lut_3_lut_4_lut_4_lut (.A(n419[12]), .B(n419[11]), .C(n43370), 
         .D(n419[13]), .Z(n3167[0])) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(81[17:26])
    defparam i22925_3_lut_3_lut_4_lut_4_lut.init = 16'hfffb;
    LUT4 sck_I_0_73_2_lut_rep_660 (.A(sck_c), .B(shift_clock_ls), .Z(clk_in_c_enable_95)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(77[8:46])
    defparam sck_I_0_73_2_lut_rep_660.init = 16'h2222;
    LUT4 i14027_2_lut_3_lut (.A(sck_c), .B(shift_clock_ls), .C(n419[15]), 
         .Z(n17050)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(77[8:46])
    defparam i14027_2_lut_3_lut.init = 16'h2020;
    PFUMX i10010 (.BLUT(n2939[0]), .ALUT(n9667), .C0(n40908), .Z(n12905));
    PFUMX i40041 (.BLUT(n44050), .ALUT(n44046), .C0(n419[4]), .Z(n44051));
    PFUMX i40039 (.BLUT(n44048), .ALUT(\ctrlword_595_4_15__N_630[3] ), .C0(n419[3]), 
          .Z(n44049));
    PFUMX i40037 (.BLUT(n44044), .ALUT(n44043), .C0(\ctrlword_595_3[13] ), 
          .Z(n44045));
    LUT4 i23147_2_lut (.A(n12905), .B(n419[6]), .Z(n12906)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(109[35:44])
    defparam i23147_2_lut.init = 16'heeee;
    LUT4 din_I_48_2_lut (.A(sck_c), .B(shift_clock_ls), .Z(din_N_762)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/ctrlword_595.vhd(105[8:46])
    defparam din_I_48_2_lut.init = 16'h4444;
    LUT4 n430_bdd_3_lut (.A(n419[5]), .B(\ctrlword_595_5_15__N_638[4] ), 
         .C(\ctrlword_595_5_15__N_638[5] ), .Z(n42470)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n430_bdd_3_lut.init = 16'he4e4;
    LUT4 n430_bdd_4_lut (.A(n43023), .B(n43030), .C(n43029), .D(n43036), 
         .Z(n42471)) /* synthesis lut_function=(!(A (B (C+!(D)))+!A !(B+((D)+!C)))) */ ;
    defparam n430_bdd_4_lut.init = 16'h7f67;
    PFUMX i39374 (.BLUT(n42529), .ALUT(\ctrlword_595_5_15__N_638[1] ), .C0(\ctrlword_595_3[13] ), 
          .Z(n41138));
    LUT4 n42474_bdd_3_lut (.A(n42474), .B(n42471), .C(n419[5]), .Z(n42475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42474_bdd_3_lut.init = 16'hcaca;
    LUT4 n42480_bdd_2_lut (.A(n42480), .B(\ctrlword_595_3[13] ), .Z(n42481)) /* synthesis lut_function=(A+(B)) */ ;
    defparam n42480_bdd_2_lut.init = 16'heeee;
    LUT4 realv_2_3__bdd_4_lut_39339 (.A(n43019), .B(n43024), .C(n43026), 
         .D(n43025), .Z(n42480)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)))+!A !((C (D)+!C !(D))+!B))) */ ;
    defparam realv_2_3__bdd_4_lut_39339.init = 16'h53b7;
    
endmodule
//
// Verilog Description of module mode_shift
//

module mode_shift (\ctrlword_595_3[13]__inv , \ctrlword_595_3[13] , clk_in_c, 
            btn_state, n714, clk_divided_enable_39, n710, n5, clk_divided_enable_24, 
            n42884, scl_out_N_143, rst_n_in_c, n715, clk_divided_enable_40, 
            n40511, state, n40166, \num_delay_15__N_803[1] , n40345, 
            n711, clk_divided_enable_23, n712, n24328, n37274, n17007, 
            sda_out_N_183, sda_out_N_182, n43330, clk_divided_N_170, 
            n1430, n43462, n43397, n2014, clk_in_c_enable_154, n17065, 
            n24131, n43341, n40508, n42925, clk_in_c_enable_119, clk_in_c_enable_34, 
            n17083, \cnt_main[2] , \cnt_main[1] , \cnt_main[3] , n44470, 
            n43384, n7, \cnt_read[0] , n43279, n40407, \cnt_write[0] , 
            n40406, n43408);
    output \ctrlword_595_3[13]__inv ;
    output \ctrlword_595_3[13] ;
    input clk_in_c;
    input btn_state;
    input n714;
    output clk_divided_enable_39;
    input n710;
    input n5;
    output clk_divided_enable_24;
    input n42884;
    output scl_out_N_143;
    input rst_n_in_c;
    input n715;
    output clk_divided_enable_40;
    input n40511;
    input [2:0]state;
    input n40166;
    output \num_delay_15__N_803[1] ;
    input n40345;
    input n711;
    output clk_divided_enable_23;
    input n712;
    output n24328;
    output n37274;
    output n17007;
    input sda_out_N_183;
    output sda_out_N_182;
    output n43330;
    input clk_divided_N_170;
    output n1430;
    input n43462;
    input n43397;
    input n2014;
    input clk_in_c_enable_154;
    output n17065;
    output n24131;
    output n43341;
    output n40508;
    input n42925;
    output clk_in_c_enable_119;
    output clk_in_c_enable_34;
    output n17083;
    input \cnt_main[2] ;
    input \cnt_main[1] ;
    input \cnt_main[3] ;
    input n44470;
    input n43384;
    output n7;
    input \cnt_read[0] ;
    input n43279;
    output n40407;
    input \cnt_write[0] ;
    output n40406;
    output n43408;
    
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    
    wire btn_state_ls, moderec, moderec_N_267, n44493, n44494, n40535;
    
    INV i40285 (.A(\ctrlword_595_3[13] ), .Z(\ctrlword_595_3[13]__inv ));
    FD1S3AX btn_state_ls_19 (.D(btn_state), .CK(clk_in_c), .Q(btn_state_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(34[3] 37[10])
    defparam btn_state_ls_19.GSR = "DISABLED";
    FD1S3AX mode_20 (.D(moderec), .CK(clk_in_c), .Q(\ctrlword_595_3[13] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(34[3] 37[10])
    defparam mode_20.GSR = "DISABLED";
    FD1S3AX moderec_18 (.D(moderec_N_267), .CK(clk_in_c), .Q(moderec)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=25, LSE_LLINE=131, LSE_RLINE=131 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(23[3] 29[10])
    defparam moderec_18.GSR = "ENABLED";
    PFUMX i40280 (.BLUT(n44493), .ALUT(n44494), .C0(n714), .Z(clk_divided_enable_39));
    LUT4 i1_3_lut (.A(n710), .B(n40535), .C(n5), .Z(clk_divided_enable_24)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_3_lut.init = 16'hdcdc;
    LUT4 i1_3_lut_adj_292 (.A(n710), .B(n40535), .C(n42884), .Z(scl_out_N_143)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_3_lut_adj_292.init = 16'hdcdc;
    LUT4 moderec_I_0_3_lut (.A(moderec), .B(btn_state), .C(btn_state_ls), 
         .Z(moderec_N_267)) /* synthesis lut_function=(A (B+!(C))+!A !(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/mode_shift.vhd(26[4] 28[11])
    defparam moderec_I_0_3_lut.init = 16'h9a9a;
    LUT4 i1_2_lut_rep_579_3_lut_3_lut (.A(rst_n_in_c), .B(n714), .C(n715), 
         .Z(clk_divided_enable_40)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_rep_579_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i22850_4_lut_4_lut (.A(rst_n_in_c), .B(n40511), .C(state[2]), 
         .D(n40166), .Z(\num_delay_15__N_803[1] )) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i22850_4_lut_4_lut.init = 16'h5f5d;
    LUT4 i2_3_lut_4_lut_4_lut_4_lut (.A(rst_n_in_c), .B(n715), .C(n40345), 
         .D(n711), .Z(clk_divided_enable_23)) /* synthesis lut_function=((B (C+!(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i2_3_lut_4_lut_4_lut_4_lut.init = 16'hf5fd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(n714), .C(n712), 
         .D(n715), .Z(n24328)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_293 (.A(rst_n_in_c), .B(n714), .C(n710), 
         .D(n715), .Z(n37274)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_293.init = 16'hfffd;
    LUT4 i13972_2_lut_3_lut_4_lut_4_lut_3_lut (.A(rst_n_in_c), .B(n715), 
         .C(n714), .Z(n17007)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i13972_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'h5d5d;
    LUT4 rst_n_in_N_46_I_0_178_2_lut_2_lut (.A(rst_n_in_c), .B(sda_out_N_183), 
         .Z(sda_out_N_182)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam rst_n_in_N_46_I_0_178_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_rep_613_2_lut (.A(rst_n_in_c), .B(n715), .Z(n43330)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_rep_613_2_lut.init = 16'hdddd;
    LUT4 i853_2_lut_2_lut (.A(rst_n_in_c), .B(clk_divided_N_170), .Z(n1430)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i853_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(n710), .C(n43462), .D(n715), 
         .Z(n40535)) /* synthesis lut_function=((B (C+(D))+!B (D))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hffd5;
    LUT4 i14034_4_lut_4_lut (.A(rst_n_in_c), .B(n43397), .C(n2014), .D(clk_in_c_enable_154), 
         .Z(n17065)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i14034_4_lut_4_lut.init = 16'hfd00;
    LUT4 i1_2_lut_3_lut_3_lut_3_lut (.A(rst_n_in_c), .B(n715), .C(n711), 
         .Z(n24131)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i1_2_lut_rep_624_2_lut (.A(rst_n_in_c), .B(state[0]), .Z(n43341)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_rep_624_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_3_lut (.A(rst_n_in_c), .B(state[1]), .C(state[2]), 
         .Z(n40508)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_3_lut.init = 16'hf7f7;
    LUT4 n42925_bdd_2_lut_3_lut_3_lut (.A(rst_n_in_c), .B(n42925), .C(state[0]), 
         .Z(clk_in_c_enable_119)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam n42925_bdd_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i13673_4_lut_4_lut_4_lut_rep_692 (.A(rst_n_in_c), .B(state[0]), 
         .C(state[2]), .D(state[1]), .Z(clk_in_c_enable_34)) /* synthesis lut_function=((B (C (D))+!B ((D)+!C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i13673_4_lut_4_lut_4_lut_rep_692.init = 16'hf757;
    LUT4 i14060_2_lut_3_lut_4_lut_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), 
         .D(state[1]), .Z(n17083)) /* synthesis lut_function=((B (C (D))+!B (C (D)+!C !(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i14060_2_lut_3_lut_4_lut_4_lut.init = 16'hf557;
    LUT4 n42001_bdd_4_lut_then_4_lut (.A(\cnt_main[2] ), .B(\cnt_main[1] ), 
         .C(rst_n_in_c), .D(\cnt_main[3] ), .Z(n44494)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam n42001_bdd_4_lut_then_4_lut.init = 16'hff8f;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n714), .B(n43330), .C(n44470), .D(n43384), 
         .Z(n7)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i38820_2_lut_3_lut_3_lut_4_lut (.A(n714), .B(n43330), .C(\cnt_read[0] ), 
         .D(n43279), .Z(n40407)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i38820_2_lut_3_lut_3_lut_4_lut.init = 16'h0111;
    LUT4 i38800_2_lut_3_lut_3_lut_4_lut (.A(n714), .B(n43330), .C(\cnt_write[0] ), 
         .D(n44470), .Z(n40406)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam i38800_2_lut_3_lut_3_lut_4_lut.init = 16'h1101;
    LUT4 n42001_bdd_4_lut_else_4_lut (.A(n711), .B(rst_n_in_c), .C(n715), 
         .Z(n44493)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam n42001_bdd_4_lut_else_4_lut.init = 16'hfbfb;
    LUT4 rst_n_in_I_0_1_lut_rep_691 (.A(rst_n_in_c), .Z(n43408)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(53[8:22])
    defparam rst_n_in_I_0_1_lut_rep_691.init = 16'h5555;
    
endmodule
//
// Verilog Description of module LCD_display
//

module LCD_display (clk_in_c, \realv_5[0] , n5, x_cnt, y_cnt, clk_in_c_enable_154, 
            n41301, n41302, n43154, n43049, n42484, \ctrlword_595_4_15__N_622[1] , 
            n43036, n2884, n2898, state, rst_n_in_c, n43026, GND_net, 
            clk_in_c_enable_34, n43020, n43033, n14, n43041, n41990, 
            n43355, n9148, n17083, n43148, n2973, BL_LCD_c, n40986, 
            n40987, n43155, n40989, n40990, n40992, n40993, n41320, 
            n41321, n41323, n41324, n41326, n41327, n41329, n41330, 
            n43034, n1, n43411, DA_LCD_c, n14498, n43293, \decade[3] , 
            n43153, n2014, n44468, \voltage_code[1] , n4, n5_adj_46, 
            n4_adj_47, n3, n43024, n42929, n43156, n43341, \ctrlword_595_3[13] , 
            n40508, n43339, n43022, n43030, n43021, n43011, n2, 
            \realv_5[3] , n43048, n14_adj_48, n14_adj_49, n2886, n43023, 
            \num_delay_15__N_803[1] , n43307, n2913, n43043, n43042, 
            n40431, n41914, n2896, n43380, n2385, n42840, n1_adj_50, 
            n4_adj_51, n42629, n3_adj_52, n7, n42829, n4_adj_53, 
            n43025, n43019, n42182, n2382, hundreds_1__N_558, n40511, 
            n17065, n13333, n43013, n42787, n2524, n40966, n43018, 
            n37274, n43272, n44499, n44501, clk_divided_enable_3, 
            n2527, n1_adj_54, n43010, n42721, n43029, n42925, n43269, 
            n42690, n42688, n43143, n43354, n5_adj_55, n43144, n2532, 
            n2531, n43149, \unit[3] , RST_LCD_c, CLK_LCD_c, clk_in_c_enable_119, 
            DC_LCD_c, n9212, n2_adj_56, n4_adj_57, n5_adj_58, n1_adj_59, 
            n4_adj_60, n5_adj_61, n4_adj_62, n2_adj_63, n4_adj_64, 
            n5_adj_65, n1_adj_66, n2_adj_67, n4_adj_68, n5_adj_69, 
            n2_adj_70, n4_adj_71, n2_adj_72, n4_adj_73, n5_adj_74, 
            n40166, n42648, n3_adj_75, n14_adj_76, n14_adj_77, n43422, 
            n43290, n6, n43408, n14_adj_78, n43323, n1_adj_79, n5_adj_80, 
            n42595, n5_adj_81, n43015, n9371, \ctrlword_595_5_15__N_646[3] , 
            n42029, n24328, n43261, n4_adj_82, clk_divided_enable_36, 
            n2_adj_83, n2_adj_84, n43056, n43055, n6_adj_85, n6_adj_86, 
            n41192, n41193, n1_adj_87, n41198, n41199, n2_adj_88, 
            n41201, n41202, n41204, n41205, n41207, n41208, n3_adj_89, 
            n41210, n41211, n41213, n41214, \ctrlword_595_4_15__N_630[5] , 
            n42482, n42518, n43397, n41216, n41217);
    input clk_in_c;
    input \realv_5[0] ;
    output n5;
    output [7:0]x_cnt;
    output [7:0]y_cnt;
    output clk_in_c_enable_154;
    input n41301;
    input n41302;
    input n43154;
    input n43049;
    input n42484;
    input \ctrlword_595_4_15__N_622[1] ;
    input n43036;
    output n2884;
    output n2898;
    output [2:0]state;
    input rst_n_in_c;
    input n43026;
    input GND_net;
    input clk_in_c_enable_34;
    input n43020;
    input n43033;
    output n14;
    input n43041;
    input n41990;
    output n43355;
    output n9148;
    input n17083;
    input n43148;
    output n2973;
    output BL_LCD_c;
    input n40986;
    input n40987;
    input n43155;
    input n40989;
    input n40990;
    input n40992;
    input n40993;
    input n41320;
    input n41321;
    input n41323;
    input n41324;
    input n41326;
    input n41327;
    input n41329;
    input n41330;
    input n43034;
    input n1;
    output n43411;
    output DA_LCD_c;
    input n14498;
    output n43293;
    input \decade[3] ;
    input n43153;
    output n2014;
    input n44468;
    input \voltage_code[1] ;
    output n4;
    output n5_adj_46;
    output n4_adj_47;
    input n3;
    input n43024;
    input n42929;
    input n43156;
    input n43341;
    input \ctrlword_595_3[13] ;
    input n40508;
    output n43339;
    input n43022;
    input n43030;
    input n43021;
    input n43011;
    output n2;
    input \realv_5[3] ;
    input n43048;
    output n14_adj_48;
    output n14_adj_49;
    output n2886;
    input n43023;
    input \num_delay_15__N_803[1] ;
    output n43307;
    output n2913;
    input n43043;
    input n43042;
    input n40431;
    input n41914;
    output n2896;
    output n43380;
    input n2385;
    output n42840;
    input n1_adj_50;
    output n4_adj_51;
    input n42629;
    input n3_adj_52;
    output n7;
    output n42829;
    output n4_adj_53;
    input n43025;
    input n43019;
    input n42182;
    input n2382;
    input hundreds_1__N_558;
    output n40511;
    input n17065;
    input n13333;
    input n43013;
    output n42787;
    input n2524;
    input n40966;
    input n43018;
    input n37274;
    input n43272;
    input n44499;
    input n44501;
    output clk_divided_enable_3;
    input n2527;
    input n1_adj_54;
    input n43010;
    input n42721;
    input n43029;
    output n42925;
    output n43269;
    output n42690;
    input n42688;
    input n43143;
    output n43354;
    output n5_adj_55;
    input n43144;
    input n2532;
    input n2531;
    input n43149;
    input \unit[3] ;
    output RST_LCD_c;
    output CLK_LCD_c;
    input clk_in_c_enable_119;
    output DC_LCD_c;
    output n9212;
    output n2_adj_56;
    output n4_adj_57;
    output n5_adj_58;
    output n1_adj_59;
    output n4_adj_60;
    output n5_adj_61;
    output n4_adj_62;
    output n2_adj_63;
    output n4_adj_64;
    output n5_adj_65;
    output n1_adj_66;
    output n2_adj_67;
    output n4_adj_68;
    output n5_adj_69;
    output n2_adj_70;
    output n4_adj_71;
    output n2_adj_72;
    output n4_adj_73;
    output n5_adj_74;
    output n40166;
    output n42648;
    input n3_adj_75;
    output n14_adj_76;
    output n14_adj_77;
    output n43422;
    input n43290;
    input n6;
    input n43408;
    output n14_adj_78;
    output n43323;
    output n1_adj_79;
    output n5_adj_80;
    input n42595;
    output n5_adj_81;
    input n43015;
    input n9371;
    output \ctrlword_595_5_15__N_646[3] ;
    input n42029;
    input n24328;
    input n43261;
    input n4_adj_82;
    output clk_divided_enable_36;
    output n2_adj_83;
    output n2_adj_84;
    input n43056;
    input n43055;
    input n6_adj_85;
    input n6_adj_86;
    input n41192;
    input n41193;
    output n1_adj_87;
    input n41198;
    input n41199;
    output n2_adj_88;
    input n41201;
    input n41202;
    input n41204;
    input n41205;
    input n41207;
    input n41208;
    input n3_adj_89;
    input n41210;
    input n41211;
    input n41213;
    input n41214;
    input \ctrlword_595_4_15__N_630[5] ;
    output n42482;
    input n42518;
    output n43397;
    input n41216;
    input n41217;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire [2:0]cnt_scan;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[21:29])
    
    wire clk_in_c_enable_1, n43437, n43412, n43379;
    wire [11:0]n3006;
    
    wire n43429, n43430, n44510, n26781, n41237, n41238, n41242, 
        n41239, n41240;
    wire [7:0]x_cnt_c;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    
    wire n41243, n38598, n41303, n43215, n40459, n26074, n26140, 
        n43172, n43209;
    wire [15:0]cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[32:35])
    
    wire n26095, n43195, n26062, n42720;
    wire [11:0]n2903;
    
    wire n41011;
    wire [15:0]cnt_delay;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[12:21])
    
    wire clk_in_c_enable_152, n17098;
    wire [15:0]n3996;
    
    wire n5_adj_1358, n1_c, n41924, n41923, n41925, n18, n40227, 
        n42579, n27, n40225, clk_in_c_enable_98, n41064, n41190, 
        n41231, n41232, n41233, n41234, n41281, n41282, n41283, 
        n43222, n26919, n4_c, n26, n40485, n43193, n14025, n40734, 
        n41288, n41289, n41290, n37788, n37789, n37779;
    wire [15:0]n1696;
    wire [15:0]cnt_init;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[36:44])
    wire [15:0]n17;
    
    wire n40304;
    wire [2:0]state_back;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[18:28])
    
    wire clk_in_c_enable_145, n39481, clk_in_c_enable_136;
    wire [7:0]n19;
    
    wire high_word, high_word_N_1277, n18_adj_1359, n38949;
    wire [11:0]n2967;
    
    wire n2_c, n41994, n41992, n41995;
    wire [11:0]n3045;
    
    wire n43229, n4_adj_1360, n37787, n37786, n37778, n43310;
    wire [11:0]n3032;
    
    wire n14_adj_1361, n37777, n18_adj_1362, n42675, n43208, n43358, 
        n43213, n40747, n37776, n37785, n37775, n43338, n42457, 
        n42456, n26970, n14096, n43333, n43216, n26050, n40640, 
        n40153, n15, n27_adj_1363, n41277, n41278, n41279, n41280, 
        n41284, n41285, n2_adj_1364, n43210, n43197, n43184, n9196, 
        n41286, n41287, n41295, n41296, n41297, n41308, n41309, 
        n41310, n1_adj_1365, n43214, n2_adj_1366;
    wire [131:0]data_r_131__N_1113;
    
    wire n1489, n43218, n43198;
    wire [15:0]num_delay;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(82[22:31])
    wire [15:0]n1586;
    
    wire n37784, n2_adj_1367, n8, n5_adj_1368, n42118, n43238, n2387, 
        n43402, n8_adj_1369, n13901, n41982, n41044, n41983, n42117, 
        n7_c, n10142, n8_adj_1370;
    wire [15:0]n1908;
    
    wire n10471, n41291, n41292, n41293, n41294, n43297, n43201, 
        n43401, n41304, n41305, n41306, n41307, n41314, n41315, 
        n41316, n43381, n43295, n40833;
    wire [11:0]n2993;
    wire [2:0]cnt_main;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(80[12:20])
    
    wire n37930, n9147, n43316, n43211;
    wire [8:0]data_reg;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(79[12:20])
    
    wire n8_adj_1371, n26048, n40635;
    wire [4:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    
    wire clk_in_c_enable_121, n17079;
    wire [4:0]DA_LCD_N_1249;
    
    wire clk_in_c_enable_36, n43325, n41078, n41079, n41082, n40988, 
        n12, n10, n15_adj_1372, n40991, n40994, n7_adj_1373, n7_adj_1374, 
        n7_adj_1375, n7_adj_1376, n40185, n1_adj_1377, n2_adj_1378, 
        n40554, n1_adj_1379, n2_adj_1380;
    wire [131:0]data_r;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(86[12:18])
    
    wire n14056, n38190, n26238;
    wire [11:0]n2980;
    
    wire n43315, n43447, n43448, n43449, n34, n42, n9, n8_adj_1381, 
        n41134, n2525, n11, n12_adj_1382, n41229, n4_adj_1383, n41974, 
        n41975, n44472, n17116, n37811, n35769, n43399, n41015, 
        n41016, n41017, n41968, n41966, n41969, n37810, n39679, 
        n11892, n41220, n2_adj_1384, n41013, n41014, n41967, n2_adj_1386, 
        n43007;
    wire [2:0]state_2__N_1082;
    
    wire n12_adj_1387, n35, n41965, n41964, n43337, n37809, n37808, 
        n37807, n44506, n43407, n37806, n37805, n37804, n39595, 
        n37803, n43268;
    wire [7:0]n3422;
    
    wire n37783;
    wire [7:0]y_cnt_c;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[18:23])
    wire [7:0]n2021;
    
    wire n37774, n37773, n42220, n42219, n36803, n37782, n43353, 
        n44505, n37772, clk_in_c_enable_37, n41062, n37781, n43375, 
        CLK_LCD_N_1257, n43274, n33, n38363, n43410, n43344, n43, 
        n43416;
    wire [2:0]n21;
    
    wire n14497, n14443, n44508, n1_adj_1389, n41221, n3370, n43205, 
        n3_c, n39281;
    wire [11:0]n3019;
    
    wire n41943, n14_adj_1390, n41236, n37780, n43189, n37802;
    wire [7:0]n3840;
    
    wire n13630, n40621, n37801, n42004, n43321, n42805, n41223, 
        n42005, n37800, n43421, n10901, n41222, n44476, n37984, 
        n4_adj_1391, clk_in_c_enable_102, n63, n44014, n2834, n43352, 
        n43433, n2_adj_1392, n40543, n1_adj_1393, n2_adj_1394, n41472, 
        clk_in_c_enable_100, n42502, n43420, n127, n43009, n42007, 
        n42008, n39723, n1_adj_1395, n2_adj_1396, n41245, n41230, 
        n15_adj_1397, n40402, n42954, n8_adj_1398, n41927, n43468, 
        n43298, n43467, n43257, n40441, n43242, n40642, n42504, 
        n41059, n43239, n40453, n43361, n10_adj_1399, n40693, n39783, 
        n2_adj_1400, n2_adj_1401, n40551, n1_adj_1402, n15326, n43432, 
        n2_adj_1403, n14_adj_1404, clk_in_c_enable_126, n43228, n13392, 
        n43227, n41058, n40646, n40307, n43275, n43489, n41057, 
        n43488, n40308, n3994, n43492, n43491, n41012, n43495, 
        n41056, n43494, n11840, n40545, n1_adj_1408, n2_adj_1409, 
        n40309, n42519, n42520, n40310, n40311, n40312, n41092, 
        n40548, n1_adj_1411, n2_adj_1412, n40542, n40302, n2_adj_1413, 
        n42523, n42524, n40313, n41091, n42526, n40314, n40315, 
        n43266, n40316, n43234, n26081, n26775, n13770, n40301, 
        n2_adj_1414, n40317, n41081, n42928, n42930, n40318, n6_c, 
        clk_in_c_enable_118, n20, n43237, n14252, n43194, n41080, 
        n42923, n42921, n42924, n43232, n43398, n43186, n42922, 
        n41179, n41180, n44013, n43496, n42016, n44011, n13055, 
        n44012, n40450, clk_in_c_enable_120, n37981, n104, n44010, 
        n42548, n41049, n42920, n42919;
    wire [8:0]n3720;
    
    wire n43104, n43270, n41048, n43346, n41047, n43236, n43233, 
        n43196, n43326, clk_in_c_enable_122;
    wire [2:0]n22;
    
    wire n42588, n42589, n43240, n40839, n42547, n43301, n42628, 
        n42550, n43217, n43192, n26882, n26731, n43260, n7_adj_1417, 
        n43285, n42625, n40306, n26733, n43202, n40849, n43345, 
        n26735, n43012, n41164, n41194, n8_adj_1419, n43185, n42586, 
        n37, n40, n6668, n13695, n37_adj_1422, n6666, n43267, 
        n8_adj_1423, n39573, n41131, n41130, n4_adj_1424, n41128, 
        n38, n40155, n13697, n42193, n42192, n42194, n42880, n42879, 
        n42881, n41106, n41107, n41108, n8_adj_1425, n41188, n2383, 
        n42654, n2384;
    wire [2:0]n24;
    
    wire n38_adj_1427, n40165, n13700, n8_adj_1428, n42699, n2387_adj_1429, 
        clk_in_c_enable_65, n39575, n37_adj_1430, n6650, n23, n9893, 
        n9891, n42574, n43365, n42872, n42869, n42873, n42871, 
        n42870, n8_adj_1431, n41124, n2388, n41094, n41095, n41096, 
        n41177, n41178, n42576, n8_adj_1432, n42583, n2386, n42868, 
        n42867, n11_adj_1433;
    wire [15:0]num_delay_15__N_1066;
    
    wire n40187, n9873, n7_adj_1434, n38_adj_1435, n13699, n9889, 
        n38403, n7_adj_1436, n8_adj_1437, n41027, n7_adj_1438, n8_adj_1439, 
        n41026, n16_adj_1440, clk_in_c_enable_148, n7_adj_1441, n8_adj_1442, 
        n41025, n41171, n41172, n41173, n41174, n7_adj_1443, n8_adj_1444, 
        n41024, n7_adj_1445, n8_adj_1446, n41000, n9171, n9172, 
        n7_adj_1447, n8_adj_1448, n40999, n42581, n41, n42187, n42188, 
        n7_adj_1449, n40998, n43199, n41159, n41160, n41163, n8_adj_1450, 
        n42017, n40340, n41165, n41166, n41913, n41915, n41175, 
        n41176, n9879, n14445, n44454, n41921, n44453, n8_adj_1451, 
        n37799, n42592, n37798, n3_adj_1452, n9753, n8_adj_1453, 
        n41939, n41938, n42839, n42836, n41161, n41162, n42837, 
        n41169, n41170, n42607, n42185, n42181, n42186, n42608, 
        n42610, n42611, n42630, n42631, n42632, n43342, n43359, 
        n41993, n40520, n41191, n42835, n42834, n42828, n42826, 
        n42827, n43423, n43424, clk_in_c_enable_128, n43327, n43258, 
        n41941, n2242, n41257, n13061, n42643, n74, n37903, n2241, 
        n42644, n3_adj_1459, n2245, n43413, n42183, n42184, n41185, 
        n41184, n2240, n9203, n9204, n42825, n42824, n41182, n2248, 
        n2247, n2243, n42646, n6_adj_1460, n43305, n2239, n4_adj_1461, 
        n42799, n42797, n42800, n42798, n2381, n42796, n42795, 
        n41121, n43219, n41157, n41158, n2244, n12932, n41120, 
        n42649, n41167, n41168, n41225, n41226, n42793, n42788, 
        n42794, n42650, n41252, n41253, n3_adj_1462, n2246, n42652, 
        n42791, n42792, n42789, n14_adj_1463, n41119;
    wire [131:0]n3226;
    
    wire n7_adj_1464, n14_adj_1465, n43264, n14251, n14028, n43394, 
        n14_adj_1466, n2_adj_1467, n40827, n40603, n40829, n50, 
        n37333, n26759, n14_adj_1468, n15_adj_1469, n14_adj_1470, 
        n42677, n7_adj_1471, n8_adj_1472, n42685, n41944, n43262, 
        clk_in_c_enable_96, n26508, n41156, n41945, n42694, n41148, 
        n41149, n41150, n38142, n42783, n42782, n42784, n42693, 
        n43263, n43203, n42696, n42697, n43265, n38271, n42785, 
        n42786, n43190, n43369, n26502, n14128, clk_in_c_enable_139, 
        n17001, n42722, n42723, n41948, n41946, n41949, n8_adj_1473, 
        n7_adj_1474, n41001, n41153, n41154, n41261, n41260, n41259, 
        n41255, n41256, n42724, n41155, n41147, n41146, n41144, 
        n41947;
    wire [6:0]n5274;
    
    wire n42627, n41004, n41960, n41262, n41263, n41264, n41985, 
        n41030, n42590, n42633, n40724, n40891, n4_adj_1475, n42030, 
        n41065, n2380, n43142, n43226, n43283, n9885, n9945, n14_adj_1476, 
        n41145, n26165, n11_adj_1477, n2528, n40477, n43206, n14213, 
        n14189, n14190, n41258, n14130, n42126, n14254, n40484, 
        n14279, n42189, n14102, n42190, n40414, n40398, n43292, 
        n42191, n4_adj_1479, n9944, n14099, n42195, n43207, n14253, 
        n42127, n40354, n37797, n37796, n42698, n42695, n15_adj_1480, 
        n16_adj_1481, n13178, n40384, n6_adj_1482, n43174, n40547, 
        n8_adj_1483, n43368, n40865, n4_adj_1484, n41084, n40353, 
        n26763, n16_adj_1485, n12_adj_1486, n37795, n37794, n24880, 
        n43008, n38075, n42689, n42686, n8_adj_1487, n1_adj_1488, 
        n40881, n9684, n40887, n14_adj_1489, n41063, n37793, n40875, 
        n91, n40336, n12_adj_1490, n37792, n43469, n42687, n94, 
        n4_adj_1491, n41151, n41152, n40129, n13, n26114, n8_adj_1492, 
        n8_adj_1493, n14_adj_1494, n1_adj_1495, n14_adj_1496, n42684, 
        n42010, n42678, n42676, n42679, n8_adj_1497, n44471, n40995, 
        n41189, n41235, n42591, n41122, n41123, n40658, n41942, 
        n41940, n8_adj_1499, n42011, n7_adj_1500, n2530, n2529, 
        n12_adj_1501, n43376, n2526, n10_adj_1502, n26842, n4_adj_1503, 
        n42128, n26326, n38322, n41186, n41187, n9181, n8_adj_1505, 
        n14276, n43241, n37791, n13_adj_1522, n13711, n38_adj_1525, 
        n41118, n40156, n37_adj_1526, n42653, n42651, n12_adj_1527, 
        n18_adj_1528, n40825, n37_adj_1529, n9164, n37790, n42647, 
        n42645, n40857, n14_adj_1530, n26046, n40841, n41183, n9163, 
        n40452, n40819, clk_in_c_enable_123;
    wire [2:0]n25;
    
    wire clk_in_c_enable_129, n42506, n8_adj_1535, n42528, n8_adj_1536, 
        n8_adj_1538, clk_in_c_enable_147;
    wire [15:0]num_delay_15__N_803;
    
    wire n8_adj_1539, n42552, n43367, n9155, n42626, n10211, n10179, 
        n42578, n11906, n8_adj_1541, n43191, n42613, n8_adj_1542, 
        n41093, n41006, n42612, n42609, n40843, n41005, n41007, 
        n42597, n8_adj_1543, n41046, n42596, n42593, n41002, n41003, 
        n41028, n41029, n42573, n42594, n42587, n42517, n42582, 
        n42580, n1_adj_1547, n41132, n41133, n41052, n8_adj_1548, 
        n2_adj_1549, n11_adj_1550, n1_adj_1551, n43179, n40855, n26859, 
        n40627, n7_adj_1552, n42577, n42575, n41984, n41050, n41051, 
        n41083, n7_adj_1553, n41129, n43403, n9156;
    wire [8:0]n1978;
    
    wire n42551, n42549, n40652, n4_adj_1557, n41060, n41061, n43178, 
        n8_adj_1560, n42527, n42525, n42009, n42006, n42505, n42503, 
        n41219, n41244, n41228, n41241, n41224;
    
    FD1P3AX cnt_scan__i2 (.D(n43437), .SP(clk_in_c_enable_1), .CK(clk_in_c), 
            .Q(cnt_scan[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i2.GSR = "DISABLED";
    LUT4 Mux_413_i5_3_lut_4_lut (.A(n43412), .B(n43379), .C(\realv_5[0] ), 
         .D(n3006[1]), .Z(n5)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_413_i5_3_lut_4_lut.init = 16'h2f20;
    PFUMX i39734 (.BLUT(n43429), .ALUT(n43430), .C0(n44510), .Z(n26781));
    PFUMX i38266 (.BLUT(n41237), .ALUT(n41238), .C0(x_cnt[0]), .Z(n41242));
    L6MUX21 i38267 (.D0(n41239), .D1(n41240), .SD(x_cnt_c[1]), .Z(n41243));
    FD1P3AX y_cnt__i0 (.D(n38598), .SP(clk_in_c_enable_154), .CK(clk_in_c), 
            .Q(y_cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i0.GSR = "DISABLED";
    PFUMX i38327 (.BLUT(n41301), .ALUT(n41302), .C0(n43154), .Z(n41303));
    LUT4 i37708_3_lut_rep_455_4_lut (.A(n43215), .B(n40459), .C(n26074), 
         .D(n26140), .Z(n43172)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(196[16:18])
    defparam i37708_3_lut_rep_455_4_lut.init = 16'he000;
    LUT4 i23053_4_lut (.A(n43209), .B(cnt[2]), .C(n26095), .D(n43195), 
         .Z(n26062)) /* synthesis lut_function=(A (B+(D))+!A !(B (C)+!B (C+!(D)))) */ ;
    defparam i23053_4_lut.init = 16'haf8c;
    LUT4 realv_4_0__bdd_3_lut_4_lut (.A(n43412), .B(n43379), .C(n3006[10]), 
         .D(n43049), .Z(n42720)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_4_0__bdd_3_lut_4_lut.init = 16'h22f0;
    PFUMX i39329 (.BLUT(n42484), .ALUT(n2903[3]), .C0(\ctrlword_595_4_15__N_622[1] ), 
          .Z(n41011));
    FD1P3IX cnt_delay__i11 (.D(n3996[11]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i11.GSR = "DISABLED";
    LUT4 Mux_277_i5_3_lut_4_lut (.A(n43412), .B(n43379), .C(n43036), .D(n3006[10]), 
         .Z(n5_adj_1358)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_277_i5_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_304_i1_3_lut (.A(n2884), .B(n2898), .C(n43049), .Z(n1_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i1_3_lut.init = 16'hcaca;
    PFUMX i38996 (.BLUT(n41924), .ALUT(n41923), .C0(state[1]), .Z(n41925));
    LUT4 realv_3_2__bdd_4_lut_4_lut_4_lut (.A(y_cnt[3]), .B(n18), .C(n40227), 
         .D(n43036), .Z(n42579)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam realv_3_2__bdd_4_lut_4_lut_4_lut.init = 16'h44f4;
    LUT4 i38871_4_lut (.A(rst_n_in_c), .B(n27), .C(n40225), .D(state[2]), 
         .Z(clk_in_c_enable_98)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i38871_4_lut.init = 16'h5f77;
    LUT4 i38088_3_lut_4_lut (.A(n43412), .B(n43379), .C(n43026), .D(n3006[1]), 
         .Z(n41064)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam i38088_3_lut_4_lut.init = 16'h2f20;
    LUT4 i38214_3_lut_4_lut (.A(n43412), .B(n43379), .C(n43049), .D(n3006[1]), 
         .Z(n41190)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam i38214_3_lut_4_lut.init = 16'h2f20;
    PFUMX i38263 (.BLUT(n41231), .ALUT(n41232), .C0(x_cnt[0]), .Z(n41239));
    PFUMX i38264 (.BLUT(n41233), .ALUT(n41234), .C0(x_cnt[0]), .Z(n41240));
    L6MUX21 i38307 (.D0(n41281), .D1(n41282), .SD(x_cnt_c[1]), .Z(n41283));
    LUT4 i1_3_lut_3_lut_4_lut (.A(n43222), .B(n26919), .C(cnt[2]), .D(cnt[0]), 
         .Z(n4_c)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;
    defparam i1_3_lut_3_lut_4_lut.init = 16'h1011;
    LUT4 i1_2_lut (.A(state[0]), .B(n26), .Z(n27)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i37768_4_lut (.A(n40485), .B(n43193), .C(cnt[2]), .D(n14025), 
         .Z(n40734)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i37768_4_lut.init = 16'h8880;
    L6MUX21 i38314 (.D0(n41288), .D1(n41289), .SD(x_cnt_c[1]), .Z(n41290));
    CCU2D add_475_11 (.A0(cnt_delay[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37788), .COUT(n37789), .S0(n3996[9]), .S1(n3996[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_11.INIT0 = 16'h5aaa;
    defparam add_475_11.INIT1 = 16'h5aaa;
    defparam add_475_11.INJECT1_0 = "NO";
    defparam add_475_11.INJECT1_1 = "NO";
    CCU2D add_187_17 (.A0(cnt[15]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37779), 
          .S0(n1696[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_17.INIT0 = 16'h5aaa;
    defparam add_187_17.INIT1 = 16'h0000;
    defparam add_187_17.INJECT1_0 = "NO";
    defparam add_187_17.INJECT1_1 = "NO";
    FD1P3AX cnt_init__i0 (.D(n17[0]), .SP(clk_in_c_enable_34), .CK(clk_in_c), 
            .Q(cnt_init[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i0.GSR = "DISABLED";
    FD1P3AX cnt_delay__i0 (.D(n40304), .SP(clk_in_c_enable_152), .CK(clk_in_c), 
            .Q(cnt_delay[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i0.GSR = "DISABLED";
    FD1P3AX state_back__i0 (.D(n39481), .SP(clk_in_c_enable_145), .CK(clk_in_c), 
            .Q(state_back[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state_back__i0.GSR = "DISABLED";
    FD1P3AX x_cnt__i0 (.D(n19[0]), .SP(clk_in_c_enable_136), .CK(clk_in_c), 
            .Q(x_cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i0.GSR = "DISABLED";
    FD1P3AX high_word_544 (.D(high_word_N_1277), .SP(clk_in_c_enable_136), 
            .CK(clk_in_c), .Q(high_word)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam high_word_544.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_4_lut (.A(y_cnt[3]), .B(n40227), .C(n18_adj_1359), 
         .D(n43026), .Z(n38949)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h50dc;
    LUT4 Mux_239_i2_3_lut (.A(n2903[4]), .B(n2967[4]), .C(n43020), .Z(n2_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_239_i2_3_lut.init = 16'hcaca;
    PFUMX i39051 (.BLUT(n41994), .ALUT(n41992), .C0(state[0]), .Z(n41995));
    LUT4 i23613_4_lut_4_lut (.A(n43033), .B(n43049), .C(n3045[9]), .D(n2967[2]), 
         .Z(n14)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i23613_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n43020), .B(n43041), .C(x_cnt_c[1]), 
         .D(n43229), .Z(n4_adj_1360)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    CCU2D add_475_9 (.A0(cnt_delay[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37787), .COUT(n37788), .S0(n3996[7]), .S1(n3996[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_9.INIT0 = 16'h5aaa;
    defparam add_475_9.INIT1 = 16'h5aaa;
    defparam add_475_9.INJECT1_0 = "NO";
    defparam add_475_9.INJECT1_1 = "NO";
    CCU2D add_475_7 (.A0(cnt_delay[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37786), .COUT(n37787), .S0(n3996[5]), .S1(n3996[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_7.INIT0 = 16'h5aaa;
    defparam add_475_7.INIT1 = 16'h5aaa;
    defparam add_475_7.INJECT1_0 = "NO";
    defparam add_475_7.INJECT1_1 = "NO";
    CCU2D add_187_15 (.A0(cnt[13]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[14]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37778), 
          .COUT(n37779), .S0(n1696[13]), .S1(n1696[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_15.INIT0 = 16'h5aaa;
    defparam add_187_15.INIT1 = 16'h5aaa;
    defparam add_187_15.INJECT1_0 = "NO";
    defparam add_187_15.INJECT1_1 = "NO";
    LUT4 i23610_4_lut_4_lut (.A(n43033), .B(n43049), .C(n43310), .D(n3032[1]), 
         .Z(n14_adj_1361)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i23610_4_lut_4_lut.init = 16'h5140;
    CCU2D add_187_13 (.A0(cnt[11]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[12]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37777), 
          .COUT(n37778), .S0(n1696[11]), .S1(n1696[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_13.INIT0 = 16'h5aaa;
    defparam add_187_13.INIT1 = 16'h5aaa;
    defparam add_187_13.INJECT1_0 = "NO";
    defparam add_187_13.INJECT1_1 = "NO";
    LUT4 realv_4_2__bdd_4_lut_4_lut_4_lut (.A(y_cnt[3]), .B(n18_adj_1362), 
         .C(n40227), .D(n43049), .Z(n42675)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam realv_4_2__bdd_4_lut_4_lut_4_lut.init = 16'h44f4;
    LUT4 i37781_2_lut_4_lut (.A(n43208), .B(n43358), .C(n43213), .D(n40734), 
         .Z(n40747)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i37781_2_lut_4_lut.init = 16'ha800;
    FD1P3IX cnt_delay__i10 (.D(n3996[10]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i10.GSR = "DISABLED";
    CCU2D add_187_11 (.A0(cnt[9]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[10]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37776), 
          .COUT(n37777), .S0(n1696[9]), .S1(n1696[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_11.INIT0 = 16'h5aaa;
    defparam add_187_11.INIT1 = 16'h5aaa;
    defparam add_187_11.INJECT1_0 = "NO";
    defparam add_187_11.INJECT1_1 = "NO";
    CCU2D add_475_5 (.A0(cnt_delay[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37785), .COUT(n37786), .S0(n3996[3]), .S1(n3996[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_5.INIT0 = 16'h5aaa;
    defparam add_475_5.INIT1 = 16'h5aaa;
    defparam add_475_5.INJECT1_0 = "NO";
    defparam add_475_5.INJECT1_1 = "NO";
    CCU2D add_187_9 (.A0(cnt[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[8]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37775), 
          .COUT(n37776), .S0(n1696[7]), .S1(n1696[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_9.INIT0 = 16'h5aaa;
    defparam add_187_9.INIT1 = 16'h5aaa;
    defparam add_187_9.INJECT1_0 = "NO";
    defparam add_187_9.INJECT1_1 = "NO";
    LUT4 i23102_2_lut_rep_621_3_lut_3_lut (.A(y_cnt[3]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .Z(n43338)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i23102_2_lut_rep_621_3_lut_3_lut.init = 16'h5454;
    LUT4 i1_2_lut_adj_89 (.A(cnt[1]), .B(cnt[3]), .Z(n40459)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(166[16:18])
    defparam i1_2_lut_adj_89.init = 16'hbbbb;
    PFUMX i39308 (.BLUT(n42457), .ALUT(n42456), .C0(x_cnt_c[1]), .Z(n26970));
    LUT4 i37678_2_lut_4_lut (.A(n14096), .B(n43333), .C(n43216), .D(n26050), 
         .Z(n40640)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i37678_2_lut_4_lut.init = 16'ha800;
    PFUMX i51 (.BLUT(n40153), .ALUT(n15), .C0(cnt[0]), .Z(n27_adj_1363));
    PFUMX i38305 (.BLUT(n41277), .ALUT(n41278), .C0(x_cnt[0]), .Z(n41281));
    PFUMX i38306 (.BLUT(n41279), .ALUT(n41280), .C0(x_cnt[0]), .Z(n41282));
    PFUMX i38312 (.BLUT(n41284), .ALUT(n41285), .C0(x_cnt[0]), .Z(n41288));
    LUT4 Mux_304_i2_3_lut (.A(n2903[5]), .B(n2967[4]), .C(n43049), .Z(n2_adj_1364)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i2_3_lut.init = 16'hcaca;
    LUT4 i24006_3_lut_rep_467_4_lut (.A(cnt[5]), .B(n43210), .C(cnt[2]), 
         .D(n43197), .Z(n43184)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i24006_3_lut_rep_467_4_lut.init = 16'hdfd0;
    PFUMX i39048 (.BLUT(n41990), .ALUT(n43355), .C0(y_cnt[3]), .Z(n9196));
    PFUMX i38313 (.BLUT(n41286), .ALUT(n41287), .C0(x_cnt[0]), .Z(n41289));
    L6MUX21 i38321 (.D0(n41295), .D1(n41296), .SD(n43154), .Z(n41297));
    L6MUX21 i38334 (.D0(n41308), .D1(n41309), .SD(n43154), .Z(n41310));
    LUT4 Mux_238_i1_3_lut (.A(n2884), .B(n2898), .C(n43020), .Z(n1_adj_1365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_238_i1_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n1_adj_1365), .B(n43214), .C(n2_adj_1366), .D(n43041), 
         .Z(data_r_131__N_1113[115])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hc088;
    LUT4 mux_167_i2_3_lut_4_lut (.A(n1489), .B(n43218), .C(n43198), .D(num_delay[1]), 
         .Z(n1586[1])) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam mux_167_i2_3_lut_4_lut.init = 16'hf404;
    CCU2D add_475_3 (.A0(cnt_delay[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37784), .COUT(n37785), .S0(n3996[1]), .S1(n3996[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_3.INIT0 = 16'h5aaa;
    defparam add_475_3.INIT1 = 16'h5aaa;
    defparam add_475_3.INJECT1_0 = "NO";
    defparam add_475_3.INJECT1_1 = "NO";
    LUT4 Mux_238_i2_3_lut (.A(n2903[5]), .B(n2967[4]), .C(n43020), .Z(n2_adj_1366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_238_i2_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_90 (.A(n9148), .B(n43214), .C(n2_adj_1367), .D(n43041), 
         .Z(data_r_131__N_1113[116])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_90.init = 16'hc088;
    LUT4 Mux_306_i8_3_lut (.A(n2967[4]), .B(n3045[3]), .C(n43049), .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_306_i8_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_91 (.A(n5_adj_1368), .B(n42118), .C(cnt[0]), .D(n43238), 
         .Z(n2387)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_91.init = 16'hccec;
    FD1P3IX cnt_delay__i9 (.D(n3996[9]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i9.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_505_2_lut_3_lut_4_lut_4_lut (.A(n43402), .B(n8_adj_1369), 
         .C(n13901), .D(cnt[6]), .Z(n43222)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_505_2_lut_3_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_92 (.A(cnt[1]), .B(cnt[2]), .Z(n5_adj_1368)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_92.init = 16'h8888;
    PFUMX i39046 (.BLUT(n41982), .ALUT(n41044), .C0(x_cnt[0]), .Z(n41983));
    LUT4 n330_bdd_2_lut_39135_3_lut_4_lut_4_lut (.A(n43402), .B(n42117), 
         .C(n13901), .D(cnt[6]), .Z(n42118)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam n330_bdd_2_lut_39135_3_lut_4_lut_4_lut.init = 16'h0004;
    FD1P3IX cnt_delay__i8 (.D(n3996[8]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i8.GSR = "DISABLED";
    FD1P3IX cnt_delay__i7 (.D(n3996[7]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i7.GSR = "DISABLED";
    FD1P3IX cnt_delay__i6 (.D(n3996[6]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i6.GSR = "DISABLED";
    FD1P3IX cnt_delay__i5 (.D(n3996[5]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i5.GSR = "DISABLED";
    LUT4 i7305_3_lut (.A(n7_c), .B(n10142), .C(y_cnt[3]), .Z(n8_adj_1370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i7305_3_lut.init = 16'hcaca;
    FD1P3IX cnt_delay__i4 (.D(n3996[4]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i4.GSR = "DISABLED";
    FD1P3IX cnt_delay__i3 (.D(n3996[3]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i3.GSR = "DISABLED";
    FD1P3IX cnt_delay__i2 (.D(n3996[2]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i2.GSR = "DISABLED";
    FD1P3IX cnt_delay__i1 (.D(n3996[1]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i1.GSR = "DISABLED";
    FD1P3IX cnt_init__i15 (.D(n1908[15]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i15.GSR = "DISABLED";
    FD1P3IX cnt_init__i14 (.D(n1908[14]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i14.GSR = "DISABLED";
    LUT4 i23561_3_lut (.A(cnt[0]), .B(cnt[1]), .C(cnt[2]), .Z(n10471)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam i23561_3_lut.init = 16'h2121;
    PFUMX i38319 (.BLUT(n41291), .ALUT(n41292), .C0(n43148), .Z(n41295));
    FD1P3IX cnt_init__i13 (.D(n1908[13]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i13.GSR = "DISABLED";
    FD1P3IX cnt_init__i12 (.D(n1908[12]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i12.GSR = "DISABLED";
    FD1P3IX cnt_init__i11 (.D(n1908[11]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i11.GSR = "DISABLED";
    FD1P3IX cnt_init__i10 (.D(n1908[10]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i10.GSR = "DISABLED";
    FD1P3IX cnt_init__i9 (.D(n1908[9]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i9.GSR = "DISABLED";
    FD1P3IX cnt_init__i8 (.D(n1908[8]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i8.GSR = "DISABLED";
    FD1P3IX cnt_init__i7 (.D(n1908[7]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i7.GSR = "DISABLED";
    FD1P3IX cnt_init__i6 (.D(n1908[6]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i6.GSR = "DISABLED";
    FD1P3IX cnt_init__i5 (.D(n1908[5]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i5.GSR = "DISABLED";
    FD1P3IX cnt_init__i4 (.D(n1908[4]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i4.GSR = "DISABLED";
    FD1P3IX cnt_init__i3 (.D(n1908[3]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i3.GSR = "DISABLED";
    FD1P3IX cnt_init__i2 (.D(n1908[2]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i2.GSR = "DISABLED";
    PFUMX i38320 (.BLUT(n41293), .ALUT(n41294), .C0(n43148), .Z(n41296));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(n43402), .B(cnt[1]), .C(n13901), 
         .D(cnt[6]), .Z(n15)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_2_lut_rep_484_3_lut_3_lut_4_lut_4_lut (.A(n43402), .B(n26919), 
         .C(n8_adj_1369), .D(n43297), .Z(n43201)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_484_3_lut_3_lut_4_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_684 (.A(cnt[1]), .B(cnt[2]), .Z(n43401)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_684.init = 16'heeee;
    FD1P3IX cnt_init__i1 (.D(n1908[1]), .SP(clk_in_c_enable_34), .CD(n17083), 
            .CK(clk_in_c), .Q(cnt_init[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_init__i1.GSR = "DISABLED";
    PFUMX i38332 (.BLUT(n41304), .ALUT(n41305), .C0(n43148), .Z(n41308));
    PFUMX i38333 (.BLUT(n41306), .ALUT(n41307), .C0(n43148), .Z(n41309));
    LUT4 Mux_237_i2_3_lut (.A(n2903[6]), .B(n2973), .C(n43020), .Z(n2_adj_1367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_237_i2_3_lut.init = 16'hcaca;
    PFUMX i38340 (.BLUT(n41314), .ALUT(n41315), .C0(n43148), .Z(n41316));
    LUT4 i1_2_lut_4_lut_4_lut (.A(n43381), .B(cnt_scan[0]), .C(n43295), 
         .D(n43201), .Z(n40833)) /* synthesis lut_function=(!(A (B (C)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_4_lut.init = 16'h7f5d;
    LUT4 i1_4_lut_4_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(y_cnt[0]), .D(y_cnt[1]), 
         .Z(n2993[3])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_4_lut_4_lut.init = 16'h7400;
    LUT4 i2_3_lut (.A(state[0]), .B(cnt_main[1]), .C(cnt_main[0]), .Z(n37930)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_3_lut.init = 16'h8080;
    LUT4 i6404_3_lut (.A(n9147), .B(n43355), .C(y_cnt[3]), .Z(n9148)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam i6404_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut (.A(n43316), .B(n43211), .C(n1489), .D(data_reg[8]), 
         .Z(n8_adj_1371)) /* synthesis lut_function=(A (C (D))+!A ((C (D))+!B)) */ ;
    defparam i1_3_lut_4_lut.init = 16'hf111;
    LUT4 i37674_2_lut_4_lut (.A(n14096), .B(n43333), .C(n43216), .D(n26048), 
         .Z(n40635)) /* synthesis lut_function=(A (B (D)+!B (C (D)))) */ ;
    defparam i37674_2_lut_4_lut.init = 16'ha800;
    FD1P3IX cnt_write__i4 (.D(DA_LCD_N_1249[4]), .SP(clk_in_c_enable_121), 
            .CD(n17079), .CK(clk_in_c), .Q(cnt_write[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i4.GSR = "DISABLED";
    FD1P3AX BL_LCD_545 (.D(n43325), .SP(clk_in_c_enable_36), .CK(clk_in_c), 
            .Q(BL_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam BL_LCD_545.GSR = "DISABLED";
    PFUMX i38106 (.BLUT(n41078), .ALUT(n41079), .C0(x_cnt_c[1]), .Z(n41082));
    PFUMX i38012 (.BLUT(n40986), .ALUT(n40987), .C0(n43155), .Z(n40988));
    PFUMX i28 (.BLUT(n12), .ALUT(n10), .C0(x_cnt_c[1]), .Z(n15_adj_1372));
    PFUMX i38015 (.BLUT(n40989), .ALUT(n40990), .C0(n43155), .Z(n40991));
    PFUMX i38018 (.BLUT(n40992), .ALUT(n40993), .C0(n43155), .Z(n40994));
    PFUMX i38346 (.BLUT(n41320), .ALUT(n41321), .C0(n43155), .Z(n7_adj_1373));
    PFUMX i38349 (.BLUT(n41323), .ALUT(n41324), .C0(n43155), .Z(n7_adj_1374));
    PFUMX i38352 (.BLUT(n41326), .ALUT(n41327), .C0(n43155), .Z(n7_adj_1375));
    PFUMX i38355 (.BLUT(n41329), .ALUT(n41330), .C0(n43155), .Z(n7_adj_1376));
    PFUMX mux_485_Mux_3_i2 (.BLUT(n40185), .ALUT(n1_adj_1377), .C0(state[0]), 
          .Z(n2_adj_1378)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    PFUMX mux_492_Mux_8_i2 (.BLUT(n40554), .ALUT(n1_adj_1379), .C0(state[0]), 
          .Z(n2_adj_1380)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 i38103_3_lut (.A(data_r[114]), .B(data_r[115]), .C(x_cnt[0]), 
         .Z(n41079)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38103_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_93 (.A(n14056), .B(n38190), .C(n43209), .D(n40459), 
         .Z(n26238)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_93.init = 16'h8880;
    LUT4 i38102_3_lut (.A(data_r[112]), .B(data_r[113]), .C(x_cnt[0]), 
         .Z(n41078)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38102_3_lut.init = 16'hcaca;
    LUT4 y_cnt_0__bdd_4_lut_39750 (.A(y_cnt[0]), .B(y_cnt[3]), .C(y_cnt[2]), 
         .D(y_cnt[1]), .Z(n2980[8])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam y_cnt_0__bdd_4_lut_39750.init = 16'h2034;
    LUT4 i1_2_lut_rep_598_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n43315)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_598_3_lut.init = 16'hefef;
    PFUMX i39744 (.BLUT(n43447), .ALUT(n43448), .C0(cnt[3]), .Z(n43449));
    PFUMX i32895 (.BLUT(n34), .ALUT(n42), .C0(state[0]), .Z(n9));
    LUT4 Mux_301_i15_4_lut_4_lut (.A(n43033), .B(n43034), .C(n8_adj_1381), 
         .D(n41134), .Z(n2525)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_301_i15_4_lut_4_lut.init = 16'h7340;
    PFUMX i38253 (.BLUT(n11), .ALUT(n12_adj_1382), .C0(x_cnt_c[1]), .Z(n41229));
    PFUMX i39040 (.BLUT(n4_adj_1383), .ALUT(n41974), .C0(n43148), .Z(n41975));
    LUT4 i14085_3_lut_4_lut (.A(n44472), .B(rst_n_in_c), .C(state[0]), 
         .D(clk_in_c_enable_145), .Z(n17116)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i14085_3_lut_4_lut.init = 16'hfb00;
    CCU2D add_3092_17 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[15]), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37811), 
          .S0(n1908[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_17.INIT0 = 16'hfd00;
    defparam add_3092_17.INIT1 = 16'h0000;
    defparam add_3092_17.INJECT1_0 = "NO";
    defparam add_3092_17.INJECT1_1 = "NO";
    L6MUX21 i38041 (.D0(n41015), .D1(n41016), .SD(x_cnt_c[1]), .Z(n41017));
    L6MUX21 i39036 (.D0(n41968), .D1(n41966), .SD(n43148), .Z(n41969));
    CCU2D add_3092_15 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[13]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[14]), 
          .CIN(n37810), .COUT(n37811), .S0(n1908[13]), .S1(n1908[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_15.INIT0 = 16'hfd00;
    defparam add_3092_15.INIT1 = 16'hfd00;
    defparam add_3092_15.INJECT1_0 = "NO";
    defparam add_3092_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_94 (.A(state[1]), .B(state[2]), .C(n1908[0]), 
         .D(rst_n_in_c), .Z(n17[0])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i1_2_lut_3_lut_4_lut_adj_94.init = 16'h2000;
    PFUMX i38244 (.BLUT(n39679), .ALUT(n11892), .C0(x_cnt_c[4]), .Z(n41220));
    LUT4 i1_4_lut_adj_95 (.A(n9148), .B(n43214), .C(n2_adj_1384), .D(n43041), 
         .Z(data_r_131__N_1113[117])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_95.init = 16'hc088;
    PFUMX i38040 (.BLUT(n41013), .ALUT(n41014), .C0(x_cnt[0]), .Z(n41016));
    PFUMX i39034 (.BLUT(n1), .ALUT(n41967), .C0(n43154), .Z(n41968));
    L6MUX21 mux_488_Mux_0_i7 (.D0(n2_adj_1386), .D1(n43007), .SD(n44472), 
            .Z(state_2__N_1082[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    PFUMX i52 (.BLUT(n12_adj_1387), .ALUT(n35), .C0(state[1]), .Z(n26));
    PFUMX i39032 (.BLUT(n41965), .ALUT(n41964), .C0(n43154), .Z(n41966));
    LUT4 i1_2_lut_rep_620_3_lut (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .Z(n43337)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i1_2_lut_rep_620_3_lut.init = 16'h2020;
    CCU2D add_3092_13 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[11]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[12]), 
          .CIN(n37809), .COUT(n37810), .S0(n1908[11]), .S1(n1908[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_13.INIT0 = 16'hfd00;
    defparam add_3092_13.INIT1 = 16'hfd00;
    defparam add_3092_13.INJECT1_0 = "NO";
    defparam add_3092_13.INJECT1_1 = "NO";
    CCU2D add_3092_11 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[9]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[10]), 
          .CIN(n37808), .COUT(n37809), .S0(n1908[9]), .S1(n1908[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_11.INIT0 = 16'hfd00;
    defparam add_3092_11.INIT1 = 16'hfd00;
    defparam add_3092_11.INJECT1_0 = "NO";
    defparam add_3092_11.INJECT1_1 = "NO";
    CCU2D add_3092_9 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[7]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[8]), 
          .CIN(n37807), .COUT(n37808), .S0(n1908[7]), .S1(n1908[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_9.INIT0 = 16'hfd00;
    defparam add_3092_9.INIT1 = 16'hfd00;
    defparam add_3092_9.INJECT1_0 = "NO";
    defparam add_3092_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_690 (.A(n44506), .B(n44510), .Z(n43407)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_690.init = 16'h2222;
    CCU2D add_3092_7 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[5]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[6]), 
          .CIN(n37806), .COUT(n37807), .S0(n1908[5]), .S1(n1908[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_7.INIT0 = 16'hfd00;
    defparam add_3092_7.INIT1 = 16'hfd00;
    defparam add_3092_7.INJECT1_0 = "NO";
    defparam add_3092_7.INJECT1_1 = "NO";
    CCU2D add_3092_5 (.A0(cnt_init[0]), .B0(n35769), .C0(n43399), .D0(cnt_init[3]), 
          .A1(cnt_init[0]), .B1(n35769), .C1(n43399), .D1(cnt_init[4]), 
          .CIN(n37805), .COUT(n37806), .S0(n1908[3]), .S1(n1908[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_5.INIT0 = 16'hfd00;
    defparam add_3092_5.INIT1 = 16'hfd00;
    defparam add_3092_5.INJECT1_0 = "NO";
    defparam add_3092_5.INJECT1_1 = "NO";
    CCU2D add_3092_3 (.A0(cnt_init[2]), .B0(cnt_init[0]), .C0(n35769), 
          .D0(cnt_init[1]), .A1(cnt_init[0]), .B1(cnt_init[1]), .C1(n35769), 
          .D1(cnt_init[2]), .CIN(n37804), .COUT(n37805), .S0(n1908[1]), 
          .S1(n1908[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_3.INIT0 = 16'hff00;
    defparam add_3092_3.INIT1 = 16'hfd00;
    defparam add_3092_3.INJECT1_0 = "NO";
    defparam add_3092_3.INJECT1_1 = "NO";
    CCU2D add_475_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt_delay[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .COUT(n37784), .S1(n3996[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_1.INIT0 = 16'hF000;
    defparam add_475_1.INIT1 = 16'h5555;
    defparam add_475_1.INJECT1_0 = "NO";
    defparam add_475_1.INJECT1_1 = "NO";
    CCU2D add_3092_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n39595), .B1(n35769), .C1(n43399), .D1(cnt_init[0]), .COUT(n37804), 
          .S1(n1908[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam add_3092_1.INIT0 = 16'hF000;
    defparam add_3092_1.INIT1 = 16'h56aa;
    defparam add_3092_1.INJECT1_0 = "NO";
    defparam add_3092_1.INJECT1_1 = "NO";
    CCU2D add_1782_9 (.A0(n43295), .B0(high_word), .C0(x_cnt_c[7]), .D0(n43268), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37803), 
          .S0(n3422[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1782_9.INIT0 = 16'hddd2;
    defparam add_1782_9.INIT1 = 16'h0000;
    defparam add_1782_9.INJECT1_0 = "NO";
    defparam add_1782_9.INJECT1_1 = "NO";
    LUT4 Mux_236_i2_3_lut (.A(n2903[7]), .B(n2973), .C(n43020), .Z(n2_adj_1384)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_236_i2_3_lut.init = 16'hcaca;
    CCU2D add_224_9 (.A0(y_cnt_c[7]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37783), 
          .S0(n2021[7]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_9.INIT0 = 16'h5aaa;
    defparam add_224_9.INIT1 = 16'h0000;
    defparam add_224_9.INJECT1_0 = "NO";
    defparam add_224_9.INJECT1_1 = "NO";
    CCU2D add_187_7 (.A0(cnt[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37774), 
          .COUT(n37775), .S0(n1696[5]), .S1(n1696[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_7.INIT0 = 16'h5aaa;
    defparam add_187_7.INIT1 = 16'h5aaa;
    defparam add_187_7.INJECT1_0 = "NO";
    defparam add_187_7.INJECT1_1 = "NO";
    CCU2D add_187_5 (.A0(cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37773), 
          .COUT(n37774), .S0(n1696[3]), .S1(n1696[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_5.INIT0 = 16'h5aaa;
    defparam add_187_5.INIT1 = 16'h5aaa;
    defparam add_187_5.INJECT1_0 = "NO";
    defparam add_187_5.INJECT1_1 = "NO";
    PFUMX i39174 (.BLUT(n42220), .ALUT(n42219), .C0(state[0]), .Z(n36803));
    CCU2D add_224_7 (.A0(y_cnt_c[5]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[6]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37782), .COUT(n37783), .S0(n2021[5]), .S1(n2021[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_7.INIT0 = 16'h5aaa;
    defparam add_224_7.INIT1 = 16'h5aaa;
    defparam add_224_7.INJECT1_0 = "NO";
    defparam add_224_7.INJECT1_1 = "NO";
    LUT4 mux_380_Mux_6_i15_3_lut_4_lut (.A(n44510), .B(n43353), .C(n44505), 
         .D(n43411), .Z(n3045[6])) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_380_Mux_6_i15_3_lut_4_lut.init = 16'hf202;
    CCU2D add_187_3 (.A0(cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37772), 
          .COUT(n37773), .S0(n1696[1]), .S1(n1696[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_3.INIT0 = 16'h5aaa;
    defparam add_187_3.INIT1 = 16'h5aaa;
    defparam add_187_3.INJECT1_0 = "NO";
    defparam add_187_3.INJECT1_1 = "NO";
    CCU2D add_187_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n37772), 
          .S1(n1696[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(223[51:54])
    defparam add_187_1.INIT0 = 16'hF000;
    defparam add_187_1.INIT1 = 16'h5555;
    defparam add_187_1.INJECT1_0 = "NO";
    defparam add_187_1.INJECT1_1 = "NO";
    FD1P3AX DA_LCD_554 (.D(n41062), .SP(clk_in_c_enable_37), .CK(clk_in_c), 
            .Q(DA_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam DA_LCD_554.GSR = "DISABLED";
    CCU2D add_224_5 (.A0(y_cnt[3]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt_c[4]), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37781), .COUT(n37782), .S0(n2021[3]), .S1(n2021[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_5.INIT0 = 16'h5aaa;
    defparam add_224_5.INIT1 = 16'h5aaa;
    defparam add_224_5.INJECT1_0 = "NO";
    defparam add_224_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(n43375), .B(cnt_write[4]), .C(cnt_write[0]), 
         .Z(CLK_LCD_N_1257)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    defparam i1_2_lut_3_lut.init = 16'h0606;
    LUT4 i1_4_lut_adj_96 (.A(cnt[3]), .B(n43274), .C(n27_adj_1363), .D(n33), 
         .Z(n38363)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_96.init = 16'heca0;
    LUT4 mux_375_Mux_9_i15_3_lut_4_lut (.A(n43410), .B(y_cnt[2]), .C(y_cnt[3]), 
         .D(n43344), .Z(n2980[9])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(480[41:46])
    defparam mux_375_Mux_9_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i1_3_lut_4_lut_adj_97 (.A(y_cnt[2]), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[1]), .Z(n40227)) /* synthesis lut_function=(!((B+(C (D)+!C !(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_97.init = 16'h0220;
    LUT4 i1_4_lut_adj_98 (.A(rst_n_in_c), .B(n43), .C(n43416), .D(state[2]), 
         .Z(n21[2])) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_98.init = 16'h0a88;
    LUT4 i1_4_lut_4_lut_4_lut_adj_99 (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), 
         .D(cnt[3]), .Z(n33)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(229[16:17])
    defparam i1_4_lut_4_lut_4_lut_adj_99.init = 16'h64a4;
    LUT4 i1_2_lut_adj_100 (.A(state[1]), .B(n9), .Z(n43)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_adj_100.init = 16'h8888;
    LUT4 i38692_3_lut_4_lut_4_lut (.A(n43041), .B(n14497), .C(n14498), 
         .D(n43020), .Z(n14443)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i38692_3_lut_4_lut_4_lut.init = 16'hf0d8;
    LUT4 i23074_4_lut_4_lut (.A(n44510), .B(n44508), .C(n44505), .D(n44506), 
         .Z(n3045[9])) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam i23074_4_lut_4_lut.init = 16'h070e;
    LUT4 i23544_4_lut (.A(n1_adj_1389), .B(x_cnt_c[7]), .C(n41221), .D(x_cnt_c[6]), 
         .Z(n3370)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i23544_4_lut.init = 16'h3022;
    LUT4 mux_375_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n2980[7])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h01a4;
    LUT4 mux_375_Mux_5_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n2980[5])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C+(D)))+!A (B+(C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0192;
    LUT4 mux_375_Mux_10_i15_3_lut_rep_576_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[2]), 
         .C(y_cnt[1]), .D(y_cnt[3]), .Z(n43293)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_375_Mux_10_i15_3_lut_rep_576_4_lut_4_lut.init = 16'h01c0;
    LUT4 i1_4_lut_adj_101 (.A(n43205), .B(n3_c), .C(data_r[75]), .D(x_cnt[0]), 
         .Z(n39281)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_101.init = 16'ha088;
    LUT4 mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3019[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C))+!A (B (C)+!B !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(480[41:46])
    defparam mux_378_Mux_7_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1f06;
    LUT4 mux_357_Mux_4_i15_3_lut_4_lut (.A(n43410), .B(y_cnt[2]), .C(n44505), 
         .D(n43344), .Z(n2898)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(480[41:46])
    defparam mux_357_Mux_4_i15_3_lut_4_lut.init = 16'h7f70;
    LUT4 i38260_3_lut (.A(n41943), .B(n14_adj_1390), .C(\decade[3] ), 
         .Z(n41236)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38260_3_lut.init = 16'hcaca;
    LUT4 mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+!(D)))+!A (B (C+!(D))+!B !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(480[41:46])
    defparam mux_377_Mux_2_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1f80;
    CCU2D add_224_3 (.A0(y_cnt[1]), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[2]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37780), 
          .COUT(n37781), .S0(n2021[1]), .S1(n2021[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_3.INIT0 = 16'h5aaa;
    defparam add_224_3.INIT1 = 16'h5aaa;
    defparam add_224_3.INJECT1_0 = "NO";
    defparam add_224_3.INJECT1_1 = "NO";
    LUT4 i31_3_lut_rep_472_4_lut (.A(n43222), .B(n26919), .C(cnt_scan[0]), 
         .D(n43295), .Z(n43189)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i31_3_lut_rep_472_4_lut.init = 16'h0efe;
    LUT4 mux_380_Mux_5_i15_3_lut_4_lut_4_lut (.A(n44510), .B(n44508), .C(n44506), 
         .D(n44505), .Z(n3045[5])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C+(D)))+!A ((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_380_Mux_5_i15_3_lut_4_lut_4_lut.init = 16'h0c82;
    CCU2D add_1782_7 (.A0(n3840[0]), .B0(n13630), .C0(x_cnt[0]), .D0(x_cnt_c[5]), 
          .A1(n3840[0]), .B1(n13630), .C1(x_cnt[0]), .D1(x_cnt_c[6]), 
          .CIN(n37802), .COUT(n37803), .S0(n3422[5]), .S1(n3422[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1782_7.INIT0 = 16'h56aa;
    defparam add_1782_7.INIT1 = 16'h56aa;
    defparam add_1782_7.INJECT1_0 = "NO";
    defparam add_1782_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_adj_102 (.A(cnt_init[2]), .B(n35769), .C(cnt_init[0]), 
         .D(n40621), .Z(n39595)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B))) */ ;
    defparam i1_4_lut_4_lut_adj_102.init = 16'h1311;
    CCU2D add_1782_5 (.A0(n3840[0]), .B0(n13630), .C0(x_cnt[0]), .D0(x_cnt_c[3]), 
          .A1(n3840[0]), .B1(n13630), .C1(x_cnt[0]), .D1(x_cnt_c[4]), 
          .CIN(n37801), .COUT(n37802), .S0(n3422[3]), .S1(n3422[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1782_5.INIT0 = 16'h56aa;
    defparam add_1782_5.INIT1 = 16'h56aa;
    defparam add_1782_5.INJECT1_0 = "NO";
    defparam add_1782_5.INJECT1_1 = "NO";
    LUT4 mux_377_Mux_8_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[8])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A (B ((D)+!C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_377_Mux_8_i15_3_lut_4_lut_4_lut.init = 16'h18f0;
    LUT4 decade_2__bdd_3_lut_39059 (.A(n43153), .B(n3032[5]), .C(n3019[4]), 
         .Z(n42004)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39059.init = 16'he4e4;
    LUT4 mux_358_Mux_7_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(n44506), .D(y_cnt[3]), .Z(n2903[7])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B (C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_358_Mux_7_i15_3_lut_4_lut_4_lut.init = 16'h1c06;
    LUT4 mux_358_Mux_6_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(n44506), 
         .C(n44508), .D(y_cnt[3]), .Z(n2903[6])) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_358_Mux_6_i15_3_lut_4_lut_4_lut.init = 16'h1602;
    LUT4 i38247_4_lut (.A(n41290), .B(n43321), .C(x_cnt_c[2]), .D(n42805), 
         .Z(n41223)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i38247_4_lut.init = 16'h0aca;
    LUT4 decade_2__bdd_3_lut_39062 (.A(n43153), .B(n2903[4]), .C(n2967[4]), 
         .Z(n42005)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39062.init = 16'he4e4;
    CCU2D add_1782_3 (.A0(n3840[0]), .B0(n13630), .C0(x_cnt[0]), .D0(x_cnt_c[1]), 
          .A1(n43295), .B1(high_word), .C1(x_cnt_c[2]), .D1(n43268), 
          .CIN(n37800), .COUT(n37801), .S0(n3422[1]), .S1(n3422[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1782_3.INIT0 = 16'h56aa;
    defparam add_1782_3.INIT1 = 16'hddd2;
    defparam add_1782_3.INJECT1_0 = "NO";
    defparam add_1782_3.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut_4_lut_then_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .D(n43153), .Z(n43421)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0002;
    LUT4 i38246_3_lut (.A(n10901), .B(n41283), .C(x_cnt_c[2]), .Z(n41222)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38246_3_lut.init = 16'hcaca;
    LUT4 i38893_4_lut (.A(n44476), .B(n37984), .C(state[0]), .D(n4_adj_1391), 
         .Z(clk_in_c_enable_102)) /* synthesis lut_function=(!((B+!(C+!(D)))+!A)) */ ;
    defparam i38893_4_lut.init = 16'h2022;
    LUT4 i23181_2_lut_4_lut (.A(n63), .B(n44014), .C(x_cnt_c[6]), .D(x_cnt_c[7]), 
         .Z(n2834)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i23181_2_lut_4_lut.init = 16'h00ca;
    LUT4 i38900_4_lut_then_4_lut (.A(n43352), .B(y_cnt[0]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n43433)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i38900_4_lut_then_4_lut.init = 16'hfbff;
    LUT4 i1_2_lut_adj_103 (.A(n36803), .B(n1696[1]), .Z(n2_adj_1392)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_adj_103.init = 16'h8888;
    PFUMX mux_492_Mux_5_i2 (.BLUT(n40543), .ALUT(n1_adj_1393), .C0(state[0]), 
          .Z(n2_adj_1394)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 i38797_2_lut (.A(n41472), .B(clk_in_c_enable_1), .Z(clk_in_c_enable_100)) /* synthesis lut_function=(A (B)) */ ;
    defparam i38797_2_lut.init = 16'h8888;
    LUT4 n38949_bdd_3_lut (.A(n43026), .B(n2980[5]), .C(n2993[5]), .Z(n42502)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n38949_bdd_3_lut.init = 16'he4e4;
    LUT4 i1_4_lut_4_lut_4_lut_else_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .D(n43153), .Z(n43420)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A !(B (C)+!B !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_4_lut_4_lut_4_lut_else_4_lut.init = 16'hbc1c;
    LUT4 i22860_2_lut_rep_292_3_lut (.A(n127), .B(x_cnt_c[7]), .C(high_word), 
         .Z(n43009)) /* synthesis lut_function=((B+(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(428[10] 441[17])
    defparam i22860_2_lut_rep_292_3_lut.init = 16'hfdfd;
    LUT4 decade_2__bdd_3_lut_39063 (.A(n43153), .B(n2898), .C(n2993[5]), 
         .Z(n42007)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39063.init = 16'he4e4;
    LUT4 decade_2__bdd_3_lut (.A(n43153), .B(n2898), .C(n2884), .Z(n42008)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i6892_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n2903[8])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C+(D))+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i6892_4_lut_4_lut_4_lut.init = 16'h181c;
    LUT4 mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[3]), .D(y_cnt[2]), .Z(n2903[4])) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_358_Mux_4_i15_3_lut_4_lut_4_lut_4_lut.init = 16'h1812;
    PFUMX mux_492_Mux_7_i2 (.BLUT(n39723), .ALUT(n1_adj_1395), .C0(state[0]), 
          .Z(n2_adj_1396)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 i33_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(n43049), .D(y_cnt[2]), 
         .Z(n18_adj_1362)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i33_4_lut_4_lut.init = 16'he066;
    LUT4 i29393_i15_4_lut (.A(n41245), .B(n41230), .C(x_cnt_c[3]), .D(n43205), 
         .Z(n15_adj_1397)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29393_i15_4_lut.init = 16'hcac0;
    LUT4 i38796_4_lut (.A(n43337), .B(n40402), .C(n42954), .D(n43325), 
         .Z(n41472)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A (B (D)))) */ ;
    defparam i38796_4_lut.init = 16'h135f;
    LUT4 n330_bdd_2_lut_39029_4_lut (.A(n41925), .B(n8_adj_1398), .C(state[2]), 
         .D(rst_n_in_c), .Z(n41927)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n330_bdd_2_lut_39029_4_lut.init = 16'hca00;
    LUT4 i15_4_lut_4_lut (.A(n44510), .B(n44508), .C(y_cnt[3]), .D(n44506), 
         .Z(n2967[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(477[41:46])
    defparam i15_4_lut_4_lut.init = 16'h1e96;
    CCU2D add_1782_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(n43295), .B1(high_word), .C1(x_cnt[0]), .D1(GND_net), 
          .COUT(n37800), .S1(n3422[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam add_1782_1.INIT0 = 16'hF000;
    defparam add_1782_1.INIT1 = 16'hd2d2;
    defparam add_1782_1.INJECT1_0 = "NO";
    defparam add_1782_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_4_lut_then_4_lut (.A(n13901), .B(cnt[2]), .C(cnt[1]), 
         .D(n43402), .Z(n43468)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_3_lut_4_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_4_lut_4_lut_else_4_lut (.A(n43298), .B(cnt[2]), .C(cnt[1]), 
         .Z(n43467)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_3_lut_4_lut_4_lut_else_4_lut.init = 16'h0101;
    LUT4 i37680_2_lut_4_lut (.A(n43257), .B(n40441), .C(n43242), .D(n26238), 
         .Z(n40642)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i37680_2_lut_4_lut.init = 16'hec00;
    LUT4 n43406_bdd_3_lut_4_lut (.A(state[1]), .B(state[2]), .C(cnt_scan[2]), 
         .D(rst_n_in_c), .Z(n43437)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam n43406_bdd_3_lut_4_lut.init = 16'h2000;
    LUT4 n1_bdd_3_lut (.A(n43026), .B(n2903[5]), .C(n2967[4]), .Z(n42504)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut.init = 16'he4e4;
    LUT4 i38083_3_lut (.A(data_reg[1]), .B(data_reg[0]), .C(cnt_write[1]), 
         .Z(n41059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38083_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_104 (.A(cnt[5]), .B(n43239), .C(n40453), .D(n43361), 
         .Z(n10_adj_1399)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(157[16:18])
    defparam i1_3_lut_4_lut_adj_104.init = 16'hddd0;
    LUT4 i5_4_lut (.A(n2014), .B(cnt_scan[0]), .C(n40693), .D(n43337), 
         .Z(n39783)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i5_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_adj_105 (.A(n36803), .B(n1696[2]), .Z(n2_adj_1400)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_adj_105.init = 16'h8888;
    LUT4 i1_2_lut_adj_106 (.A(n36803), .B(n1696[3]), .Z(n2_adj_1401)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_2_lut_adj_106.init = 16'h8888;
    PFUMX i12302 (.BLUT(n40551), .ALUT(n1_adj_1402), .C0(state[0]), .Z(n15326));
    LUT4 i42_2_lut (.A(cnt_write[1]), .B(cnt_write[0]), .Z(DA_LCD_N_1249[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    defparam i42_2_lut.init = 16'h6666;
    LUT4 i38900_4_lut_else_4_lut (.A(n43352), .B(y_cnt[3]), .C(y_cnt[2]), 
         .Z(n43432)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i38900_4_lut_else_4_lut.init = 16'hfbfb;
    LUT4 i38810_4_lut (.A(n44476), .B(state[2]), .C(n2_adj_1403), .D(n14_adj_1404), 
         .Z(clk_in_c_enable_126)) /* synthesis lut_function=(A (B+!(C+!(D)))) */ ;
    defparam i38810_4_lut.init = 16'h8a88;
    LUT4 i21_4_lut (.A(n43228), .B(n13392), .C(state[0]), .D(n43227), 
         .Z(n14_adj_1404)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i21_4_lut.init = 16'h303a;
    LUT4 y_cnt_0__bdd_4_lut (.A(n44510), .B(n44505), .C(n44508), .D(n44506), 
         .Z(n2993[5])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (C+!(D))+!B !(C (D))))) */ ;
    defparam y_cnt_0__bdd_4_lut.init = 16'h1420;
    LUT4 i38082_3_lut (.A(data_reg[3]), .B(data_reg[2]), .C(cnt_write[1]), 
         .Z(n41058)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38082_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_107 (.A(n1696[4]), .B(n40646), .Z(n40307)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_107.init = 16'h2222;
    LUT4 i37684_4_lut (.A(state[2]), .B(n43275), .C(n43201), .D(state[0]), 
         .Z(n40646)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i37684_4_lut.init = 16'hfaee;
    LUT4 i34264_3_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(cnt_write[0]), 
         .Z(DA_LCD_N_1249[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    defparam i34264_3_lut.init = 16'h6a6a;
    LUT4 i38962_4_lut_then_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), 
         .D(n40833), .Z(n43489)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i38962_4_lut_then_4_lut.init = 16'hf7ff;
    LUT4 i38081_3_lut (.A(data_reg[5]), .B(data_reg[4]), .C(cnt_write[1]), 
         .Z(n41057)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38081_3_lut.init = 16'hcaca;
    LUT4 i38962_4_lut_else_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), 
         .Z(n43488)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam i38962_4_lut_else_4_lut.init = 16'h5757;
    LUT4 i1_2_lut_adj_108 (.A(n1696[5]), .B(n40646), .Z(n40308)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_108.init = 16'h2222;
    LUT4 i38828_4_lut_then_4_lut (.A(rst_n_in_c), .B(n3994), .C(state[1]), 
         .D(state[0]), .Z(n43492)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i38828_4_lut_then_4_lut.init = 16'hfdf5;
    LUT4 i38828_4_lut_else_4_lut (.A(rst_n_in_c), .B(state[1]), .C(state[0]), 
         .Z(n43491)) /* synthesis lut_function=(!(A (B+(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i38828_4_lut_else_4_lut.init = 16'h5757;
    PFUMX i38039 (.BLUT(n41011), .ALUT(n41012), .C0(x_cnt[0]), .Z(n41015));
    LUT4 n1_bdd_3_lut_39068_then_4_lut (.A(n44468), .B(\voltage_code[1] ), 
         .C(n4), .D(n5_adj_46), .Z(n43495)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;
    defparam n1_bdd_3_lut_39068_then_4_lut.init = 16'hf690;
    LUT4 i38080_3_lut (.A(data_reg[7]), .B(data_reg[6]), .C(cnt_write[1]), 
         .Z(n41056)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38080_3_lut.init = 16'hcaca;
    LUT4 n1_bdd_3_lut_39068_else_4_lut (.A(n44468), .B(\voltage_code[1] ), 
         .C(n5), .D(n4_adj_47), .Z(n43494)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;
    defparam n1_bdd_3_lut_39068_else_4_lut.init = 16'hf960;
    LUT4 i9002_3_lut (.A(data_r[98]), .B(data_r[99]), .C(x_cnt[0]), .Z(n11840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i9002_3_lut.init = 16'hcaca;
    PFUMX mux_492_Mux_1_i2 (.BLUT(n40545), .ALUT(n1_adj_1408), .C0(state[0]), 
          .Z(n2_adj_1409)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 i1_2_lut_adj_109 (.A(n1696[6]), .B(n40646), .Z(n40309)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_109.init = 16'h2222;
    LUT4 n3_bdd_3_lut_39388 (.A(n3), .B(n42519), .C(n43024), .Z(n42520)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut_39388.init = 16'hcaca;
    LUT4 i1_2_lut_adj_110 (.A(n1696[7]), .B(n40646), .Z(n40310)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_110.init = 16'h2222;
    LUT4 i1_2_lut_adj_111 (.A(n1696[8]), .B(n40646), .Z(n40311)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_111.init = 16'h2222;
    LUT4 i1_2_lut_adj_112 (.A(n1696[9]), .B(n40646), .Z(n40312)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_112.init = 16'h2222;
    LUT4 i38116_3_lut (.A(data_r[94]), .B(data_r[95]), .C(x_cnt[0]), .Z(n41092)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38116_3_lut.init = 16'hcaca;
    PFUMX mux_492_Mux_2_i2 (.BLUT(n40548), .ALUT(n1_adj_1411), .C0(state[0]), 
          .Z(n2_adj_1412)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    PFUMX mux_492_Mux_4_i2 (.BLUT(n40542), .ALUT(n40302), .C0(state[0]), 
          .Z(n2_adj_1413)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 realv_2_2__bdd_3_lut_39366 (.A(n43026), .B(n3045[3]), .C(n3006[6]), 
         .Z(n42523)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut_39366.init = 16'hd8d8;
    LUT4 realv_2_2__bdd_3_lut_39391 (.A(n43026), .B(n2903[6]), .C(n2973), 
         .Z(n42524)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39391.init = 16'he4e4;
    LUT4 i1_2_lut_adj_113 (.A(n1696[10]), .B(n40646), .Z(n40313)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_113.init = 16'h2222;
    LUT4 i38115_3_lut (.A(data_r[92]), .B(data_r[93]), .C(x_cnt[0]), .Z(n41091)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38115_3_lut.init = 16'hcaca;
    LUT4 n9156_bdd_3_lut_39395 (.A(n43026), .B(n2980[6]), .C(n2993[5]), 
         .Z(n42526)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9156_bdd_3_lut_39395.init = 16'he4e4;
    LUT4 i1_2_lut_adj_114 (.A(n1696[11]), .B(n40646), .Z(n40314)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_114.init = 16'h2222;
    LUT4 i1_2_lut_adj_115 (.A(n1696[12]), .B(n40646), .Z(n40315)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_115.init = 16'h2222;
    LUT4 y_cnt_0__bdd_4_lut_39751 (.A(n44510), .B(n44505), .C(n44508), 
         .D(n44506), .Z(n2993[8])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B (C+!(D))+!B (C (D)+!C !(D))))) */ ;
    defparam y_cnt_0__bdd_4_lut_39751.init = 16'h0732;
    LUT4 mux_167_i16_3_lut_4_lut (.A(n1489), .B(n43266), .C(n43218), .D(num_delay[15]), 
         .Z(n1586[15])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i16_3_lut_4_lut.init = 16'hef03;
    LUT4 i1_2_lut_adj_116 (.A(n1696[13]), .B(n40646), .Z(n40316)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_116.init = 16'h2222;
    LUT4 i2_3_lut_4_lut (.A(cnt[3]), .B(n43234), .C(n26048), .D(n26081), 
         .Z(n26775)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(161[16:18])
    defparam i2_3_lut_4_lut.init = 16'hd000;
    PFUMX mux_492_Mux_6_i2 (.BLUT(n13770), .ALUT(n40301), .C0(state[0]), 
          .Z(n2_adj_1414)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 i1_2_lut_adj_117 (.A(n1696[14]), .B(n40646), .Z(n40317)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_117.init = 16'h2222;
    LUT4 i38105_3_lut (.A(data_r[118]), .B(data_r[119]), .C(x_cnt[0]), 
         .Z(n41081)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38105_3_lut.init = 16'hcaca;
    PFUMX i39675 (.BLUT(n42929), .ALUT(n42928), .C0(n43156), .Z(n42930));
    LUT4 i1_2_lut_adj_118 (.A(n1696[15]), .B(n40646), .Z(n40318)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_118.init = 16'h2222;
    LUT4 i38972_4_lut (.A(cnt_init[0]), .B(n35769), .C(n43341), .D(n6_c), 
         .Z(clk_in_c_enable_118)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i38972_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_119 (.A(cnt_init[0]), .B(cnt_init[1]), .Z(n20)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(125[7] 214[15])
    defparam i1_2_lut_adj_119.init = 16'h4444;
    LUT4 i37668_3_lut_rep_477_4_lut (.A(n43237), .B(n14252), .C(n43213), 
         .D(n43358), .Z(n43194)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(184[16:18])
    defparam i37668_3_lut_rep_477_4_lut.init = 16'heee0;
    LUT4 i38104_3_lut (.A(data_r[116]), .B(data_r[117]), .C(x_cnt[0]), 
         .Z(n41080)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38104_3_lut.init = 16'hcaca;
    L6MUX21 i39673 (.D0(n42923), .D1(n42921), .SD(x_cnt_c[2]), .Z(n42924));
    LUT4 i1_2_lut_rep_469_3_lut_4_lut (.A(n43232), .B(n43398), .C(cnt[2]), 
         .D(cnt[5]), .Z(n43186)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_469_3_lut_4_lut.init = 16'hfffb;
    PFUMX i39671 (.BLUT(n42922), .ALUT(n11840), .C0(x_cnt_c[1]), .Z(n42923));
    LUT4 n41179_bdd_4_lut_40211 (.A(n41179), .B(n41180), .C(n43229), .D(x_cnt_c[4]), 
         .Z(n44013)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B (C (D)))) */ ;
    defparam n41179_bdd_4_lut_40211.init = 16'hc0a0;
    LUT4 n42015_bdd_3_lut (.A(n42930), .B(n43496), .C(n43155), .Z(n42016)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42015_bdd_3_lut.init = 16'hcaca;
    LUT4 n44011_bdd_3_lut (.A(n44011), .B(n13055), .C(x_cnt_c[4]), .Z(n44012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n44011_bdd_3_lut.init = 16'hcaca;
    LUT4 i38975_4_lut (.A(state[0]), .B(n43375), .C(cnt_write[4]), .D(n40450), 
         .Z(clk_in_c_enable_120)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i38975_4_lut.init = 16'h0001;
    LUT4 n12932_bdd_3_lut_40208 (.A(n37981), .B(n104), .C(x_cnt_c[2]), 
         .Z(n44010)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n12932_bdd_3_lut_40208.init = 16'hacac;
    LUT4 realv_2_2__bdd_3_lut_39410 (.A(n43026), .B(n2903[7]), .C(n2973), 
         .Z(n42548)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39410.init = 16'he4e4;
    LUT4 i38073_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n43049), .Z(n41049)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38073_3_lut.init = 16'hcaca;
    PFUMX i39669 (.BLUT(n42920), .ALUT(n42919), .C0(x_cnt[0]), .Z(n42921));
    LUT4 i22885_2_lut_4_lut (.A(n43009), .B(n3370), .C(\ctrlword_595_3[13] ), 
         .D(n43295), .Z(n3720[5])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i22885_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_4_lut (.A(n43009), .B(n43104), .C(\ctrlword_595_3[13] ), 
         .D(n43270), .Z(n40302)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 y_cnt_0__bdd_4_lut_39753 (.A(y_cnt[0]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[2]), .Z(n3006[7])) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(D)))) */ ;
    defparam y_cnt_0__bdd_4_lut_39753.init = 16'h3520;
    LUT4 n63_bdd_3_lut (.A(n63), .B(n44014), .C(x_cnt_c[6]), .Z(n127)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n63_bdd_3_lut.init = 16'hcaca;
    LUT4 i38072_3_lut (.A(n2898), .B(n2993[3]), .C(n43049), .Z(n41048)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38072_3_lut.init = 16'hcaca;
    LUT4 mux_358_Mux_3_i15_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(y_cnt[3]), 
         .D(n43355), .Z(n2903[3])) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_358_Mux_3_i15_3_lut_4_lut.init = 16'hfe0e;
    LUT4 i38071_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n43049), .Z(n41047)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38071_3_lut.init = 16'hcaca;
    LUT4 i34901_2_lut_rep_479_4_lut (.A(n43236), .B(n43233), .C(cnt[2]), 
         .D(n43316), .Z(n43196)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam i34901_2_lut_rep_479_4_lut.init = 16'hffca;
    LUT4 i1_4_lut_adj_120 (.A(n43270), .B(clk_in_c_enable_1), .C(n40508), 
         .D(n43326), .Z(clk_in_c_enable_122)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_120.init = 16'hc4c0;
    LUT4 i1_4_lut_adj_121 (.A(n43222), .B(n43325), .C(n2014), .D(cnt_scan[0]), 
         .Z(n22[0])) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_121.init = 16'h0c88;
    LUT4 n3_bdd_3_lut_39602_4_lut (.A(n43339), .B(n43022), .C(n43030), 
         .D(n42588), .Z(n42589)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n3_bdd_3_lut_39602_4_lut.init = 16'hf202;
    LUT4 i37868_2_lut_3_lut_4_lut (.A(cnt[1]), .B(n43240), .C(n43194), 
         .D(cnt[2]), .Z(n40839)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(202[16:18])
    defparam i37868_2_lut_3_lut_4_lut.init = 16'hd0f0;
    LUT4 realv_2_2__bdd_3_lut_39392 (.A(n43026), .B(n3006[7]), .C(n3019[7]), 
         .Z(n42547)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39392.init = 16'he4e4;
    LUT4 n26613_bdd_4_lut_39562_4_lut (.A(n43021), .B(n2967[2]), .C(n43301), 
         .D(n43036), .Z(n42628)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n26613_bdd_4_lut_39562_4_lut.init = 16'h5044;
    LUT4 n9156_bdd_3_lut (.A(n43026), .B(n2980[7]), .C(n2993[5]), .Z(n42550)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9156_bdd_3_lut.init = 16'he4e4;
    LUT4 i23072_4_lut (.A(n43217), .B(cnt[2]), .C(n40459), .D(n43192), 
         .Z(n26081)) /* synthesis lut_function=(A ((D)+!B)+!A (B (C (D))+!B (C))) */ ;
    defparam i23072_4_lut.init = 16'hfa32;
    LUT4 i1_2_lut_4_lut_adj_122 (.A(n43011), .B(n2), .C(n43041), .D(n43214), 
         .Z(data_r_131__N_1113[112])) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam i1_2_lut_4_lut_adj_122.init = 16'hca00;
    LUT4 i23706_2_lut (.A(data_r[89]), .B(n26882), .Z(n26731)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i23706_2_lut.init = 16'h8888;
    LUT4 i23831_4_lut (.A(n43260), .B(n7_adj_1417), .C(n43285), .D(\ctrlword_595_3[13] ), 
         .Z(n26882)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i23831_4_lut.init = 16'hf5dd;
    LUT4 n26613_bdd_4_lut_39458_4_lut (.A(n43021), .B(n43310), .C(n3032[1]), 
         .D(n43036), .Z(n42625)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n26613_bdd_4_lut_39458_4_lut.init = 16'h4450;
    LUT4 i1_2_lut_adj_123 (.A(n1696[0]), .B(n40646), .Z(n40306)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_123.init = 16'h2222;
    LUT4 i23707_2_lut (.A(data_r[76]), .B(n26882), .Z(n26733)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i23707_2_lut.init = 16'h8888;
    LUT4 i23157_2_lut (.A(state_2__N_1082[0]), .B(rst_n_in_c), .Z(n21[0])) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i23157_2_lut.init = 16'h8888;
    LUT4 i38860_3_lut_4_lut (.A(n14056), .B(n43202), .C(n26050), .D(n43218), 
         .Z(n40849)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i38860_3_lut_4_lut.init = 16'h7fff;
    LUT4 i1_2_lut_rep_628 (.A(state[2]), .B(state[0]), .Z(n43345)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_628.init = 16'h4444;
    LUT4 i23708_2_lut (.A(data_r[75]), .B(n26882), .Z(n26735)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i23708_2_lut.init = 16'h8888;
    LUT4 i38188_3_lut_3_lut (.A(n43321), .B(n43012), .C(x_cnt[0]), .Z(n41164)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i38188_3_lut_3_lut.init = 16'h8080;
    LUT4 i38068_4_lut (.A(n41194), .B(n8_adj_1419), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41044)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38068_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_468_3_lut_4_lut (.A(n43236), .B(n26095), .C(cnt[2]), 
         .D(cnt[0]), .Z(n43185)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(178[16:18])
    defparam i1_2_lut_rep_468_3_lut_4_lut.init = 16'hbfff;
    LUT4 n26613_bdd_4_lut_39457_4_lut (.A(n43021), .B(n43338), .C(n3032[1]), 
         .D(n43036), .Z(n42586)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n26613_bdd_4_lut_39457_4_lut.init = 16'h4450;
    LUT4 i23602_4_lut_4_lut (.A(n43021), .B(n43036), .C(n3045[6]), .D(n3032[5]), 
         .Z(n14_adj_48)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i23602_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_4_lut_adj_124 (.A(cnt_init[0]), .B(num_delay[15]), .C(n37), 
         .D(n40), .Z(n6668)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_124.init = 16'hdc50;
    LUT4 i1_4_lut_adj_125 (.A(n1586[15]), .B(num_delay[15]), .C(n13695), 
         .D(n43399), .Z(n37)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_125.init = 16'heca0;
    LUT4 i23599_4_lut_4_lut (.A(n43021), .B(n43036), .C(n3045[9]), .D(n2967[2]), 
         .Z(n14_adj_49)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i23599_4_lut_4_lut.init = 16'h5140;
    LUT4 i1_2_lut_rep_616_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[0]), .Z(n43333)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_616_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_126 (.A(cnt_init[0]), .B(num_delay[14]), .C(n37_adj_1422), 
         .D(n40), .Z(n6666)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hdc50;
    LUT4 i1_4_lut_adj_127 (.A(n1586[14]), .B(num_delay[14]), .C(n13695), 
         .D(n43399), .Z(n37_adj_1422)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_127.init = 16'heca0;
    LUT4 i1_3_lut (.A(n43267), .B(num_delay[11]), .C(n8_adj_1423), .Z(n39573)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut.init = 16'heaea;
    LUT4 i38155_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n43049), .Z(n41131)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38155_3_lut.init = 16'hcaca;
    LUT4 i38154_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n43049), .Z(n41130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38154_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_128 (.A(n40), .B(cnt_init[0]), .C(n4_adj_1424), 
         .D(n43399), .Z(n8_adj_1423)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_128.init = 16'hbbba;
    LUT4 i38152_3_lut (.A(n2886), .B(n43355), .C(n43049), .Z(n41128)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38152_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_129 (.A(n43267), .B(num_delay[9]), .C(n38), .D(n40), 
         .Z(n40155)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_129.init = 16'hfefa;
    LUT4 i1_4_lut_adj_130 (.A(cnt_init[0]), .B(n13697), .C(num_delay[9]), 
         .D(n43399), .Z(n38)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_130.init = 16'h5444;
    PFUMX i39158 (.BLUT(n42193), .ALUT(n42192), .C0(x_cnt_c[3]), .Z(n42194));
    PFUMX i39648 (.BLUT(n42880), .ALUT(n42879), .C0(x_cnt_c[1]), .Z(n42881));
    L6MUX21 i38132 (.D0(n41106), .D1(n41107), .SD(x_cnt_c[2]), .Z(n41108));
    LUT4 i1_4_lut_adj_131 (.A(n43218), .B(n13695), .C(num_delay[9]), .D(n43198), 
         .Z(n13697)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_131.init = 16'hc044;
    LUT4 i37726_2_lut_rep_629 (.A(n44506), .B(n44508), .Z(n43346)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i37726_2_lut_rep_629.init = 16'heeee;
    LUT4 Mux_279_i15_4_lut_4_lut (.A(n43021), .B(n43023), .C(n8_adj_1425), 
         .D(n41188), .Z(n2383)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_279_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 Mux_280_i15_4_lut_4_lut (.A(n43021), .B(n43023), .C(n3032[5]), 
         .D(n42654), .Z(n2384)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_280_i15_4_lut_4_lut.init = 16'h7340;
    FD1P3AX state_back__i1 (.D(n24[1]), .SP(clk_in_c_enable_145), .CK(clk_in_c), 
            .Q(state_back[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state_back__i1.GSR = "DISABLED";
    FD1P3AX num_delay_i1 (.D(\num_delay_15__N_803[1] ), .SP(clk_in_c_enable_145), 
            .CK(clk_in_c), .Q(num_delay[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_132 (.A(n43267), .B(num_delay[8]), .C(n38_adj_1427), 
         .D(n40), .Z(n40165)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_132.init = 16'hfefa;
    LUT4 i1_4_lut_adj_133 (.A(cnt_init[0]), .B(n13700), .C(num_delay[8]), 
         .D(n43399), .Z(n38_adj_1427)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_133.init = 16'h5444;
    LUT4 i22974_2_lut_rep_590_3_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[0]), 
         .Z(n43307)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i22974_2_lut_rep_590_3_lut.init = 16'h1010;
    LUT4 Mux_283_i15_4_lut_4_lut (.A(n43021), .B(n43023), .C(n8_adj_1428), 
         .D(n42699), .Z(n2387_adj_1429)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_283_i15_4_lut_4_lut.init = 16'h7340;
    FD1P3AX data_r_i0_i34 (.D(data_r_131__N_1113[34]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[34])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i34.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_134 (.A(n43218), .B(n13695), .C(num_delay[8]), .D(n43198), 
         .Z(n13700)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_134.init = 16'hc044;
    LUT4 i1_3_lut_adj_135 (.A(n43267), .B(num_delay[7]), .C(n8_adj_1423), 
         .Z(n39575)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_135.init = 16'heaea;
    LUT4 i1_4_lut_adj_136 (.A(cnt_init[0]), .B(num_delay[6]), .C(n37_adj_1430), 
         .D(n40), .Z(n6650)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_136.init = 16'hdc50;
    LUT4 i1_4_lut_adj_137 (.A(n1586[6]), .B(num_delay[6]), .C(n13695), 
         .D(n43399), .Z(n37_adj_1430)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_137.init = 16'heca0;
    LUT4 i2_3_lut_adj_138 (.A(cnt_write[4]), .B(n43375), .C(cnt_write[0]), 
         .Z(n23)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i2_3_lut_adj_138.init = 16'hdfdf;
    PFUMX i38130 (.BLUT(n9893), .ALUT(n9891), .C0(x_cnt_c[1]), .Z(n41106));
    LUT4 realv_2_2__bdd_3_lut_39441 (.A(n43026), .B(n2913), .C(n2967[2]), 
         .Z(n42574)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39441.init = 16'he4e4;
    FD1P3AX data_r_i0_i47 (.D(data_r_131__N_1113[47]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[47])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i47.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_139 (.A(n43229), .B(n43365), .C(n43012), 
         .D(n43321), .Z(data_r_131__N_1113[102])) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_139.init = 16'h2000;
    L6MUX21 i39643 (.D0(n42872), .D1(n42869), .SD(n43043), .Z(n42873));
    PFUMX i39641 (.BLUT(n42871), .ALUT(n42870), .C0(n43042), .Z(n42872));
    LUT4 Mux_284_i15_4_lut_4_lut (.A(n43021), .B(n43023), .C(n8_adj_1431), 
         .D(n41124), .Z(n2388)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_284_i15_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i38120 (.D0(n41094), .D1(n41095), .SD(x_cnt_c[2]), .Z(n41096));
    L6MUX21 i38204 (.D0(n41177), .D1(n41178), .SD(x_cnt_c[3]), .Z(n41180));
    FD1P3AX data_r_i0_i91 (.D(data_r_131__N_1113[102]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[91])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i91.GSR = "DISABLED";
    FD1P3AX data_r_i0_i92 (.D(data_r_131__N_1113[92]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[92])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i92.GSR = "DISABLED";
    FD1P3AX data_r_i0_i93 (.D(data_r_131__N_1113[93]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[93])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i93.GSR = "DISABLED";
    FD1P3AX data_r_i0_i94 (.D(data_r_131__N_1113[94]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[94])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i94.GSR = "DISABLED";
    FD1P3AX data_r_i0_i95 (.D(data_r_131__N_1113[95]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[95])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i95.GSR = "DISABLED";
    FD1P3AX data_r_i0_i96 (.D(data_r_131__N_1113[96]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[96])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i96.GSR = "DISABLED";
    FD1P3AX data_r_i0_i97 (.D(data_r_131__N_1113[97]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[97])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i97.GSR = "DISABLED";
    FD1P3AX data_r_i0_i98 (.D(data_r_131__N_1113[98]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[98])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i98.GSR = "DISABLED";
    FD1P3AX data_r_i0_i99 (.D(data_r_131__N_1113[99]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[99])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i99.GSR = "DISABLED";
    FD1P3AX data_r_i0_i100 (.D(data_r_131__N_1113[100]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[100])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i100.GSR = "DISABLED";
    FD1P3AX data_r_i0_i101 (.D(data_r_131__N_1113[101]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[101])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i101.GSR = "DISABLED";
    FD1P3AX data_r_i0_i104 (.D(data_r_131__N_1113[104]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[104])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i104.GSR = "DISABLED";
    FD1P3AX data_r_i0_i110 (.D(data_r_131__N_1113[121]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[110])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i110.GSR = "DISABLED";
    FD1P3AX data_r_i0_i111 (.D(data_r_131__N_1113[120]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[111])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i111.GSR = "DISABLED";
    FD1P3AX data_r_i0_i112 (.D(data_r_131__N_1113[112]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[112])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i112.GSR = "DISABLED";
    FD1P3AX data_r_i0_i113 (.D(data_r_131__N_1113[113]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[113])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i113.GSR = "DISABLED";
    FD1P3AX data_r_i0_i114 (.D(data_r_131__N_1113[114]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[114])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i114.GSR = "DISABLED";
    FD1P3AX data_r_i0_i115 (.D(data_r_131__N_1113[115]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[115])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i115.GSR = "DISABLED";
    FD1P3AX data_r_i0_i116 (.D(data_r_131__N_1113[116]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[116])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i116.GSR = "DISABLED";
    FD1P3AX data_r_i0_i117 (.D(data_r_131__N_1113[117]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[117])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i117.GSR = "DISABLED";
    FD1P3AX data_r_i0_i118 (.D(data_r_131__N_1113[118]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[118])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i118.GSR = "DISABLED";
    FD1P3AX data_r_i0_i119 (.D(data_r_131__N_1113[119]), .SP(clk_in_c_enable_65), 
            .CK(clk_in_c), .Q(data_r[119])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i119.GSR = "DISABLED";
    LUT4 n1_bdd_3_lut_adj_140 (.A(n43026), .B(n2980[1]), .C(n2993[2]), 
         .Z(n42576)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_140.init = 16'he4e4;
    LUT4 Mux_282_i15_4_lut_4_lut (.A(n43021), .B(n43023), .C(n8_adj_1432), 
         .D(n42583), .Z(n2386)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_2_lut_4_lut_adj_141 (.A(n43009), .B(n3370), .C(\ctrlword_595_3[13] ), 
         .D(n43270), .Z(n40301)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i1_2_lut_4_lut_adj_141.init = 16'hca00;
    PFUMX i39637 (.BLUT(n42868), .ALUT(n42867), .C0(n43042), .Z(n42869));
    LUT4 i1_4_lut_adj_142 (.A(n44472), .B(n11_adj_1433), .C(n43270), .D(state[0]), 
         .Z(num_delay_15__N_1066[5])) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;
    defparam i1_4_lut_adj_142.init = 16'h5044;
    LUT4 i1_3_lut_adj_143 (.A(n43267), .B(num_delay[5]), .C(n8_adj_1423), 
         .Z(n11_adj_1433)) /* synthesis lut_function=(A+(B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i1_3_lut_adj_143.init = 16'heaea;
    LUT4 i23413_4_lut (.A(n40187), .B(n44472), .C(n43270), .D(state[0]), 
         .Z(num_delay_15__N_1066[4])) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i23413_4_lut.init = 16'h3022;
    PFUMX i38119 (.BLUT(n14443), .ALUT(n9873), .C0(x_cnt_c[1]), .Z(n41095));
    LUT4 i3_4_lut (.A(data_r[47]), .B(x_cnt_c[2]), .C(x_cnt_c[1]), .D(x_cnt[0]), 
         .Z(n7_adj_1434)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_144 (.A(n43267), .B(num_delay[4]), .C(n38_adj_1435), 
         .D(n40), .Z(n40187)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_144.init = 16'hfefa;
    LUT4 i1_4_lut_adj_145 (.A(cnt_init[0]), .B(n13699), .C(num_delay[4]), 
         .D(n43399), .Z(n38_adj_1435)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_145.init = 16'h5444;
    PFUMX i38131 (.BLUT(n9889), .ALUT(n38403), .C0(x_cnt_c[1]), .Z(n41107));
    LUT4 i38051_4_lut (.A(n7_adj_1436), .B(n8_adj_1437), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41027)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38051_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_146 (.A(n43218), .B(n13695), .C(num_delay[4]), .D(n43198), 
         .Z(n13699)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_146.init = 16'hc044;
    LUT4 i38050_4_lut (.A(n7_adj_1438), .B(n8_adj_1439), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41026)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38050_4_lut.init = 16'hca0a;
    LUT4 i38802_4_lut (.A(n16_adj_1440), .B(clk_in_c_enable_1), .C(state[1]), 
         .D(state[0]), .Z(clk_in_c_enable_148)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;
    defparam i38802_4_lut.init = 16'h4ccc;
    LUT4 i38049_4_lut (.A(n7_adj_1441), .B(n8_adj_1442), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41025)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38049_4_lut.init = 16'hca0a;
    L6MUX21 i38201 (.D0(n41171), .D1(n41172), .SD(x_cnt_c[2]), .Z(n41177));
    L6MUX21 i38202 (.D0(n41173), .D1(n41174), .SD(x_cnt_c[2]), .Z(n41178));
    LUT4 i38048_4_lut (.A(n7_adj_1443), .B(n8_adj_1444), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41024)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38048_4_lut.init = 16'hca0a;
    LUT4 i38024_4_lut (.A(n7_adj_1445), .B(n8_adj_1446), .C(\realv_5[3] ), 
         .D(n43048), .Z(n41000)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38024_4_lut.init = 16'hca0a;
    LUT4 i6428_3_lut (.A(n9171), .B(n43355), .C(y_cnt[3]), .Z(n9172)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i6428_3_lut.init = 16'hcaca;
    LUT4 i38023_4_lut (.A(n7_adj_1447), .B(n8_adj_1448), .C(\realv_5[3] ), 
         .D(n43048), .Z(n40999)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38023_4_lut.init = 16'hca0a;
    LUT4 n1_bdd_3_lut_adj_147 (.A(n43036), .B(n2980[5]), .C(n2993[5]), 
         .Z(n42581)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_147.init = 16'he4e4;
    PFUMX i39155 (.BLUT(n41), .ALUT(n42187), .C0(x_cnt_c[2]), .Z(n42188));
    LUT4 i38022_4_lut (.A(n7_adj_1449), .B(n3032[5]), .C(\realv_5[3] ), 
         .D(n43048), .Z(n40998)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i38022_4_lut.init = 16'hca0a;
    LUT4 i22856_2_lut_rep_482_4_lut (.A(cnt[6]), .B(cnt[0]), .C(n43242), 
         .D(n1489), .Z(n43199)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(231[16:17])
    defparam i22856_2_lut_rep_482_4_lut.init = 16'h00fe;
    L6MUX21 i38195 (.D0(n41159), .D1(n41160), .SD(x_cnt_c[1]), .Z(n41171));
    PFUMX i38197 (.BLUT(n41163), .ALUT(n41164), .C0(x_cnt_c[1]), .Z(n41173));
    LUT4 Mux_389_i8_3_lut (.A(n2967[4]), .B(n3045[3]), .C(n43153), .Z(n8_adj_1450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_389_i8_3_lut.init = 16'hcaca;
    LUT4 i8063_4_lut (.A(n40431), .B(n42017), .C(x_cnt_c[1]), .D(n40340), 
         .Z(n10901)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i8063_4_lut.init = 16'hc5c0;
    PFUMX i38198 (.BLUT(n41165), .ALUT(n41166), .C0(x_cnt_c[1]), .Z(n41174));
    PFUMX i38992 (.BLUT(n41914), .ALUT(n41913), .C0(n43148), .Z(n41915));
    L6MUX21 i38203 (.D0(n41175), .D1(n41176), .SD(x_cnt_c[3]), .Z(n41179));
    PFUMX i38118 (.BLUT(n9879), .ALUT(n14445), .C0(x_cnt_c[1]), .Z(n41094));
    LUT4 n1_bdd_3_lut_adj_148 (.A(n1_adj_1365), .B(n44454), .C(n43041), 
         .Z(n14445)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n1_bdd_3_lut_adj_148.init = 16'hcaca;
    LUT4 n41922_bdd_2_lut_3_lut (.A(n41921), .B(cnt_init[0]), .C(state[0]), 
         .Z(n41923)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n41922_bdd_2_lut_3_lut.init = 16'h0202;
    LUT4 n2910_bdd_3_lut (.A(n2903[5]), .B(n2903[4]), .C(x_cnt[0]), .Z(n44453)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n2910_bdd_3_lut.init = 16'hacac;
    LUT4 Mux_387_i8_3_lut (.A(n3032[5]), .B(n3045[5]), .C(n43153), .Z(n8_adj_1451)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i8_3_lut.init = 16'hcaca;
    CCU2D sub_2562_add_2_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37799), .S0(n3994));
    defparam sub_2562_add_2_cout.INIT0 = 16'h0000;
    defparam sub_2562_add_2_cout.INIT1 = 16'h0000;
    defparam sub_2562_add_2_cout.INJECT1_0 = "NO";
    defparam sub_2562_add_2_cout.INJECT1_1 = "NO";
    LUT4 realv_2_1__bdd_3_lut_39432 (.A(n43026), .B(n2980[9]), .C(n2993[8]), 
         .Z(n42592)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_1__bdd_3_lut_39432.init = 16'he4e4;
    CCU2D sub_2562_add_2_16 (.A0(cnt_delay[14]), .B0(num_delay[14]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[15]), .B1(num_delay[15]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37798), .COUT(n37799));
    defparam sub_2562_add_2_16.INIT0 = 16'h5999;
    defparam sub_2562_add_2_16.INIT1 = 16'h5999;
    defparam sub_2562_add_2_16.INJECT1_0 = "NO";
    defparam sub_2562_add_2_16.INJECT1_1 = "NO";
    LUT4 realv_1_0__bdd_4_lut (.A(n43020), .B(n43041), .C(n2896), .D(n43380), 
         .Z(n3_adj_1452)) /* synthesis lut_function=(A (B (D))+!A (B (C)+!B (D))) */ ;
    defparam realv_1_0__bdd_4_lut.init = 16'hd940;
    LUT4 i6999_3_lut (.A(n7_c), .B(n9753), .C(y_cnt[3]), .Z(n8_adj_1453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i6999_3_lut.init = 16'hcaca;
    LUT4 decade_2__bdd_3_lut_39010 (.A(n43153), .B(n2903[6]), .C(n2973), 
         .Z(n41939)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39010.init = 16'he4e4;
    PFUMX i38184 (.BLUT(n2386), .ALUT(n2385), .C0(x_cnt[0]), .Z(n41160));
    LUT4 decade_2__bdd_3_lut_39003 (.A(n43153), .B(n3045[3]), .C(n3006[6]), 
         .Z(n41938)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam decade_2__bdd_3_lut_39003.init = 16'hd8d8;
    L6MUX21 i39628 (.D0(n42839), .D1(n42836), .SD(n43042), .Z(n42840));
    L6MUX21 i38196 (.D0(n41161), .D1(n41162), .SD(x_cnt_c[1]), .Z(n41172));
    PFUMX i39626 (.BLUT(n1_adj_50), .ALUT(n42837), .C0(n43043), .Z(n42839));
    L6MUX21 i38200 (.D0(n41169), .D1(n41170), .SD(x_cnt_c[2]), .Z(n41176));
    LUT4 realv_2_2__bdd_3_lut_39442 (.A(n43026), .B(n3032[5]), .C(n3019[4]), 
         .Z(n42607)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39442.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_149 (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), 
         .D(cnt[0]), .Z(n14252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_149.init = 16'hfffe;
    LUT4 Mux_285_i4_3_lut (.A(n2980[1]), .B(n2993[2]), .C(n43036), .Z(n4_adj_51)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_285_i4_3_lut.init = 16'hcaca;
    PFUMX i39153 (.BLUT(n42185), .ALUT(n42181), .C0(x_cnt[0]), .Z(n42186));
    LUT4 realv_2_2__bdd_3_lut_39445 (.A(n43026), .B(n2903[4]), .C(n2967[4]), 
         .Z(n42608)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39445.init = 16'he4e4;
    LUT4 realv_2_2__bdd_3_lut_39446 (.A(n43026), .B(n2898), .C(n2993[5]), 
         .Z(n42610)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_2_2__bdd_3_lut_39446.init = 16'he4e4;
    LUT4 realv_2_2__bdd_3_lut (.A(n43026), .B(n2898), .C(n2884), .Z(n42611)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_2_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 n1_bdd_3_lut_39563 (.A(n43036), .B(n2967[2]), .C(n2913), .Z(n42630)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam n1_bdd_3_lut_39563.init = 16'hd8d8;
    LUT4 i23093_2_lut_rep_693 (.A(n44510), .B(y_cnt[1]), .Z(n43410)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i23093_2_lut_rep_693.init = 16'heeee;
    LUT4 n42631_bdd_3_lut (.A(n42631), .B(n42629), .C(n43030), .Z(n42632)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42631_bdd_3_lut.init = 16'hcaca;
    LUT4 i23016_2_lut_rep_625_3_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .Z(n43342)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i23016_2_lut_rep_625_3_lut.init = 16'he0e0;
    LUT4 n41993_bdd_2_lut_3_lut_4_lut (.A(n43257), .B(n43359), .C(n41993), 
         .D(n40520), .Z(n41994)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(208[16:18])
    defparam n41993_bdd_2_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 Mux_308_i7_3_lut (.A(n3_adj_52), .B(n41191), .C(n43042), .Z(n7)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_308_i7_3_lut.init = 16'hcaca;
    PFUMX i39623 (.BLUT(n42835), .ALUT(n42834), .C0(n43043), .Z(n42836));
    L6MUX21 i39620 (.D0(n42828), .D1(n42826), .SD(n43043), .Z(n42829));
    PFUMX i39618 (.BLUT(n1_adj_50), .ALUT(n42827), .C0(n43042), .Z(n42828));
    LUT4 i23051_3_lut_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3019[3])) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i23051_3_lut_3_lut_4_lut.init = 16'h001e;
    PFUMX i39730 (.BLUT(n43423), .ALUT(n43424), .C0(n26), .Z(clk_in_c_enable_128));
    LUT4 mux_356_Mux_3_i14_3_lut_rep_694 (.A(n44510), .B(n44508), .C(y_cnt[2]), 
         .Z(n43411)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_356_Mux_3_i14_3_lut_rep_694.init = 16'h1818;
    LUT4 mux_377_Mux_3_i15_3_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), 
         .C(y_cnt[2]), .D(y_cnt[3]), .Z(n3006[3])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_377_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h18c0;
    LUT4 i2845_2_lut_rep_695 (.A(n44510), .B(n44508), .Z(n43412)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i2845_2_lut_rep_695.init = 16'h6666;
    LUT4 i23089_4_lut_4_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3019[4])) /* synthesis lut_function=(!(A (B+(D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i23089_4_lut_4_lut_4_lut.init = 16'h0036;
    LUT4 Mux_387_i4_3_lut (.A(n2980[5]), .B(n2993[5]), .C(n43153), .Z(n4_adj_53)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i4_3_lut.init = 16'hcaca;
    LUT4 i23201_2_lut_rep_610_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n43327)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam i23201_2_lut_rep_610_3_lut_4_lut.init = 16'h0006;
    LUT4 i38771_4_lut_then_4_lut (.A(rst_n_in_c), .B(n40225), .C(state[2]), 
         .D(state[0]), .Z(n43424)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i38771_4_lut_then_4_lut.init = 16'h757f;
    LUT4 n26915_bdd_2_lut_3_lut_4_lut (.A(n43399), .B(n43258), .C(n43275), 
         .D(n43228), .Z(n42220)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam n26915_bdd_2_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_3_lut_4_lut_adj_150 (.A(n43399), .B(n43258), .C(state[2]), 
         .D(n43228), .Z(n4_adj_1391)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_150.init = 16'h0e0f;
    LUT4 i38771_4_lut_else_4_lut (.A(rst_n_in_c), .B(n40225), .C(state[2]), 
         .Z(n43423)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i38771_4_lut_else_4_lut.init = 16'h7f7f;
    LUT4 i38795_3_lut_rep_295_3_lut_4_lut (.A(n43026), .B(n43024), .C(n43025), 
         .D(n43019), .Z(n43012)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i38795_3_lut_rep_295_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_rep_512 (.A(n7_adj_1417), .B(n43260), .Z(n43229)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_512.init = 16'hbbbb;
    LUT4 n9204_bdd_3_lut_39014 (.A(n43153), .B(n2980[6]), .C(n2993[5]), 
         .Z(n41941)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9204_bdd_3_lut_39014.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_151 (.A(n7_adj_1417), .B(n43260), .C(n2242), 
         .D(n43365), .Z(data_r_131__N_1113[98])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_151.init = 16'h00b0;
    LUT4 i10115_2_lut_3_lut (.A(n7_adj_1417), .B(n43260), .C(n41257), 
         .Z(n13061)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i10115_2_lut_3_lut.init = 16'hb0b0;
    LUT4 realv_3_2__bdd_3_lut_39474 (.A(n43036), .B(n3045[3]), .C(n3006[6]), 
         .Z(n42643)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_39474.init = 16'hd8d8;
    PFUMX i21226 (.BLUT(n74), .ALUT(n37903), .C0(state[0]), .Z(n2_adj_1386));
    LUT4 i1_2_lut_3_lut_4_lut_adj_152 (.A(n7_adj_1417), .B(n43260), .C(n2241), 
         .D(n43365), .Z(data_r_131__N_1113[99])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_152.init = 16'h00b0;
    LUT4 realv_3_2__bdd_3_lut_39481 (.A(n43036), .B(n2973), .C(n2903[6]), 
         .Z(n42644)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_39481.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_153 (.A(n7_adj_1417), .B(n43260), .C(n3_adj_1459), 
         .D(n43365), .Z(data_r_131__N_1113[113])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_153.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_154 (.A(n7_adj_1417), .B(n43260), .C(n43365), 
         .D(data_r[34]), .Z(data_r_131__N_1113[34])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_154.init = 16'h0b00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_155 (.A(n7_adj_1417), .B(n43260), .C(n43365), 
         .D(data_r[47]), .Z(data_r_131__N_1113[47])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_155.init = 16'h0b00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_156 (.A(n7_adj_1417), .B(n43260), .C(n2245), 
         .D(n43365), .Z(data_r_131__N_1113[95])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_156.init = 16'h00b0;
    LUT4 mux_374_Mux_6_i7_3_lut_rep_696 (.A(n44510), .B(n44508), .C(n44506), 
         .Z(n43413)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_374_Mux_6_i7_3_lut_rep_696.init = 16'hc6c6;
    PFUMX i39151 (.BLUT(n42183), .ALUT(n42182), .C0(x_cnt_c[1]), .Z(n42184));
    LUT4 i38209_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n43036), .Z(n41185)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38209_3_lut.init = 16'hcaca;
    LUT4 i38208_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n43036), .Z(n41184)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38208_3_lut.init = 16'hcaca;
    LUT4 mux_380_Mux_3_i15_3_lut_4_lut_4_lut (.A(n44510), .B(n44508), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n3045[3])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C))+!A (B (D)+!B (C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_380_Mux_3_i15_3_lut_4_lut_4_lut.init = 16'h03c6;
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(n7_adj_1417), .B(n43260), .C(n2240), 
         .D(n43365), .Z(data_r_131__N_1113[100])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h00b0;
    LUT4 i6458_3_lut (.A(n9203), .B(n43355), .C(y_cnt[3]), .Z(n9204)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i6458_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_158 (.A(n7_adj_1417), .B(n43260), .C(n3_adj_1452), 
         .D(n43365), .Z(data_r_131__N_1113[119])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_158.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(n7_adj_1417), .B(n43260), .C(n43365), 
         .D(data_r[104]), .Z(data_r_131__N_1113[104])) /* synthesis lut_function=(!(A (C+!(D))+!A (B+(C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'h0b00;
    LUT4 y_cnt_2__bdd_4_lut_39752 (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n3006[6])) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A (B+!(C)))) */ ;
    defparam y_cnt_2__bdd_4_lut_39752.init = 16'h1038;
    PFUMX i39616 (.BLUT(n42825), .ALUT(n42824), .C0(n43042), .Z(n42826));
    LUT4 i38206_3_lut (.A(n2886), .B(n43355), .C(n43036), .Z(n41182)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38206_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_160 (.A(n7_adj_1417), .B(n43260), .C(n2248), 
         .D(n43365), .Z(data_r_131__N_1113[92])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_160.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(n7_adj_1417), .B(n43260), .C(n2247), 
         .D(n43365), .Z(data_r_131__N_1113[93])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_162 (.A(n7_adj_1417), .B(n43260), .C(n2243), 
         .D(n43365), .Z(data_r_131__N_1113[97])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_162.init = 16'h00b0;
    LUT4 n9164_bdd_3_lut_39485 (.A(n43036), .B(n2980[6]), .C(n2993[5]), 
         .Z(n42646)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9164_bdd_3_lut_39485.init = 16'he4e4;
    LUT4 n4_bdd_4_lut_4_lut (.A(state[0]), .B(state[2]), .C(n6_adj_1460), 
         .D(n43305), .Z(n43007)) /* synthesis lut_function=(A (B (C)+!B (D))+!A ((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam n4_bdd_4_lut_4_lut.init = 16'hf3d1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(n7_adj_1417), .B(n43260), .C(n2239), 
         .D(n43365), .Z(data_r_131__N_1113[101])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'h00b0;
    LUT4 i22863_3_lut_3_lut_3_lut (.A(state[0]), .B(state_back[0]), .C(state[1]), 
         .Z(n6_adj_1460)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i22863_3_lut_3_lut_3_lut.init = 16'h0d0d;
    LUT4 i2_4_lut_4_lut_4_lut (.A(x_cnt_c[2]), .B(data_r[34]), .C(x_cnt_c[1]), 
         .D(x_cnt[0]), .Z(n4_adj_1461)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_4_lut_4_lut_4_lut.init = 16'h0040;
    L6MUX21 i39598 (.D0(n42799), .D1(n42797), .SD(n43043), .Z(n42800));
    PFUMX i39596 (.BLUT(n9172), .ALUT(n42798), .C0(n43042), .Z(n42799));
    LUT4 i73_2_lut_rep_699 (.A(state[0]), .B(state[1]), .Z(n43416)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i73_2_lut_rep_699.init = 16'heeee;
    LUT4 i38937_3_lut_4_lut (.A(state[0]), .B(state[1]), .C(state[2]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_152)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C (D)))) */ ;
    defparam i38937_3_lut_4_lut.init = 16'he1ff;
    PFUMX i38186 (.BLUT(n2382), .ALUT(n2381), .C0(x_cnt[0]), .Z(n41162));
    PFUMX i39593 (.BLUT(n42796), .ALUT(n42795), .C0(n43042), .Z(n42797));
    LUT4 i38145_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n43036), .Z(n41121)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38145_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_502_3_lut (.A(n7_adj_1417), .B(n43260), .C(data_r[104]), 
         .Z(n43219)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i1_2_lut_rep_502_3_lut.init = 16'hb0b0;
    PFUMX i38194 (.BLUT(n41157), .ALUT(n41158), .C0(x_cnt_c[1]), .Z(n41170));
    LUT4 i1_2_lut_3_lut_4_lut_adj_164 (.A(n7_adj_1417), .B(n43260), .C(n2244), 
         .D(n43365), .Z(data_r_131__N_1113[96])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_164.init = 16'h00b0;
    LUT4 i10029_2_lut_3_lut (.A(n7_adj_1417), .B(n43260), .C(n41108), 
         .Z(n12932)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam i10029_2_lut_3_lut.init = 16'hb0b0;
    LUT4 i38144_3_lut (.A(n2898), .B(n2993[3]), .C(n43036), .Z(n41120)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38144_3_lut.init = 16'hcaca;
    LUT4 realv_3_2__bdd_3_lut_39482 (.A(n43036), .B(n3006[7]), .C(n3019[7]), 
         .Z(n42649)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_39482.init = 16'he4e4;
    L6MUX21 i38199 (.D0(n41167), .D1(n41168), .SD(x_cnt_c[2]), .Z(n41175));
    PFUMX i38251 (.BLUT(n41225), .ALUT(n41226), .C0(n43041), .Z(n3_adj_1459));
    PFUMX i39589 (.BLUT(n42793), .ALUT(n42788), .C0(\decade[3] ), .Z(n42794));
    LUT4 realv_3_2__bdd_3_lut_39522 (.A(n43036), .B(n2973), .C(n2903[7]), 
         .Z(n42650)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_39522.init = 16'hd8d8;
    PFUMX i38278 (.BLUT(n41252), .ALUT(n41253), .C0(n43041), .Z(n3_adj_1462));
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(n7_adj_1417), .B(n43260), .C(n3_adj_1462), 
         .D(n43365), .Z(data_r_131__N_1113[118])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'h00b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_166 (.A(n7_adj_1417), .B(n43260), .C(n2246), 
         .D(n43365), .Z(data_r_131__N_1113[94])) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_166.init = 16'h00b0;
    LUT4 n9164_bdd_3_lut (.A(n43036), .B(n2980[7]), .C(n2993[5]), .Z(n42652)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9164_bdd_3_lut.init = 16'he4e4;
    L6MUX21 i39587 (.D0(n42791), .D1(n41975), .SD(n43154), .Z(n42792));
    PFUMX i39585 (.BLUT(n1), .ALUT(n42789), .C0(n43148), .Z(n42791));
    LUT4 i2_3_lut_4_lut_4_lut (.A(n43260), .B(n14_adj_1463), .C(x_cnt_c[5]), 
         .D(n43285), .Z(n1_adj_1389)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i2_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 i38143_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n43036), .Z(n41119)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38143_3_lut.init = 16'hcaca;
    LUT4 i23392_2_lut_3_lut_4_lut_4_lut (.A(n43260), .B(hundreds_1__N_558), 
         .C(n43339), .D(n43285), .Z(n3226[87])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i23392_2_lut_3_lut_4_lut_4_lut.init = 16'hc040;
    LUT4 n14058_bdd_4_lut (.A(cnt[1]), .B(cnt[3]), .C(cnt[0]), .D(cnt[2]), 
         .Z(n42117)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C))+!A !(B (C (D))))) */ ;
    defparam n14058_bdd_4_lut.init = 16'h420a;
    PFUMX Mux_264_i15 (.BLUT(n7_adj_1464), .ALUT(n14_adj_1465), .C0(n43019), 
          .Z(n2248)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;
    LUT4 mux_374_Mux_6_i15_3_lut (.A(n43413), .B(n43411), .C(n44505), 
         .Z(n2973)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(477[41:46])
    defparam mux_374_Mux_6_i15_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(cnt[3]), .B(n43264), .C(n43333), 
         .D(cnt[5]), .Z(n14251)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(165[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'hfffd;
    LUT4 i1_2_lut_rep_478_3_lut_4_lut (.A(cnt[3]), .B(n43264), .C(cnt[5]), 
         .D(n43398), .Z(n43195)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(165[16:18])
    defparam i1_2_lut_rep_478_3_lut_4_lut.init = 16'hdfff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_168 (.A(cnt[3]), .B(n43264), .C(n14028), 
         .D(cnt[5]), .Z(n38190)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(165[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_168.init = 16'hfffd;
    LUT4 i1_2_lut_rep_475_3_lut_4_lut (.A(cnt[3]), .B(n43264), .C(cnt[5]), 
         .D(n43398), .Z(n43192)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(165[16:18])
    defparam i1_2_lut_rep_475_3_lut_4_lut.init = 16'hfdff;
    LUT4 i121_3_lut_rep_494_4_lut (.A(cnt[5]), .B(n43264), .C(cnt[2]), 
         .D(n43236), .Z(n43211)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(152[16:18])
    defparam i121_3_lut_rep_494_4_lut.init = 16'hefe0;
    LUT4 i1_4_lut_adj_169 (.A(n40508), .B(clk_in_c_enable_1), .C(n40833), 
         .D(state[0]), .Z(clk_in_c_enable_145)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;
    defparam i1_4_lut_adj_169.init = 16'h8ccc;
    LUT4 i1_4_lut_adj_170 (.A(n43394), .B(state_back[0]), .C(n40511), 
         .D(n14_adj_1466), .Z(n39481)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_170.init = 16'h5450;
    LUT4 i1_4_lut_adj_171 (.A(n40), .B(cnt_init[0]), .C(n2_adj_1467), 
         .D(n43399), .Z(n14_adj_1466)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_adj_171.init = 16'hbbba;
    LUT4 i1_4_lut_adj_172 (.A(cnt_init[2]), .B(n40827), .C(n40603), .D(n40829), 
         .Z(n13695)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_172.init = 16'h0002;
    LUT4 i37857_4_lut (.A(cnt_init[12]), .B(cnt_init[4]), .C(cnt_init[5]), 
         .D(cnt_init[3]), .Z(n40827)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i37857_4_lut.init = 16'hfffe;
    LUT4 i37646_2_lut (.A(cnt_init[1]), .B(cnt_init[13]), .Z(n40603)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i37646_2_lut.init = 16'heeee;
    LUT4 i37859_3_lut (.A(cnt_init[9]), .B(n50), .C(n37333), .Z(n40829)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i37859_3_lut.init = 16'hfefe;
    LUT4 i23901_4_lut (.A(cnt[6]), .B(n13901), .C(n26759), .D(n43402), 
         .Z(n1489)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i23901_4_lut.init = 16'heeec;
    LUT4 i4387_4_lut (.A(n43333), .B(cnt[6]), .C(n43402), .D(cnt[3]), 
         .Z(n14_adj_1468)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i4387_4_lut.init = 16'hc8c0;
    LUT4 i8_4_lut (.A(n15_adj_1469), .B(cnt[11]), .C(n14_adj_1470), .D(cnt[12]), 
         .Z(n13901)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i8_4_lut.init = 16'hfffe;
    LUT4 i6_4_lut (.A(cnt[13]), .B(cnt[7]), .C(cnt[14]), .D(cnt[8]), 
         .Z(n15_adj_1469)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i6_4_lut.init = 16'hfffe;
    LUT4 i5_3_lut (.A(cnt[9]), .B(cnt[15]), .C(cnt[10]), .Z(n14_adj_1470)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i5_3_lut.init = 16'hfefe;
    LUT4 i2_3_lut_adj_173 (.A(cnt_init[7]), .B(cnt_init[8]), .C(cnt_init[6]), 
         .Z(n50)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_adj_173.init = 16'hfefe;
    LUT4 i3_4_lut_adj_174 (.A(cnt_init[15]), .B(cnt_init[14]), .C(cnt_init[11]), 
         .D(cnt_init[10]), .Z(n37333)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i3_4_lut_adj_174.init = 16'hfffe;
    LUT4 n1_bdd_3_lut_adj_175 (.A(n43049), .B(n2980[5]), .C(n2993[5]), 
         .Z(n42677)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_175.init = 16'he4e4;
    LUT4 i1_2_lut_adj_176 (.A(state[0]), .B(state[1]), .Z(n40511)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_adj_176.init = 16'hbbbb;
    LUT4 i1_3_lut_adj_177 (.A(cnt_init[2]), .B(n35769), .C(cnt_init[0]), 
         .Z(n40)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_adj_177.init = 16'hecec;
    LUT4 i5_4_lut_adj_178 (.A(cnt_init[5]), .B(n7_adj_1471), .C(n50), 
         .D(n8_adj_1472), .Z(n35769)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i5_4_lut_adj_178.init = 16'hfffe;
    LUT4 i1_2_lut_adj_179 (.A(cnt_init[4]), .B(n37333), .Z(n7_adj_1471)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_179.init = 16'heeee;
    LUT4 i2_4_lut (.A(cnt_init[3]), .B(cnt_init[9]), .C(cnt_init[12]), 
         .D(cnt_init[13]), .Z(n8_adj_1472)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_4_lut.init = 16'hfffe;
    FD1P3IX y_cnt__i1 (.D(n2021[1]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i1.GSR = "DISABLED";
    FD1P3IX y_cnt__i2 (.D(n2021[2]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i2.GSR = "DISABLED";
    LUT4 realv_3_1__bdd_3_lut_39516 (.A(n43036), .B(n2980[9]), .C(n2993[8]), 
         .Z(n42685)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_1__bdd_3_lut_39516.init = 16'he4e4;
    FD1P3IX y_cnt__i3 (.D(n2021[3]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i3.GSR = "DISABLED";
    FD1P3IX y_cnt__i4 (.D(n2021[4]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i4.GSR = "DISABLED";
    FD1P3IX y_cnt__i5 (.D(n2021[5]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i5.GSR = "DISABLED";
    LUT4 decade_2__bdd_3_lut_39011 (.A(n43153), .B(n3006[7]), .C(n3019[7]), 
         .Z(n41944)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39011.init = 16'he4e4;
    FD1P3IX y_cnt__i6 (.D(n2021[6]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i6.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_480_3_lut_4_lut (.A(cnt[4]), .B(n43262), .C(cnt[0]), 
         .D(n26095), .Z(n43197)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_rep_480_3_lut_4_lut.init = 16'hefff;
    FD1P3IX y_cnt__i7 (.D(n2021[7]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(y_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i7.GSR = "DISABLED";
    LUT4 i38757_4_lut_4_lut (.A(state[1]), .B(state[2]), .C(rst_n_in_c), 
         .D(n37930), .Z(clk_in_c_enable_96)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C)+!B (C (D)))) */ ;
    defparam i38757_4_lut_4_lut.init = 16'h8f9f;
    LUT4 i2_3_lut_4_lut_adj_180 (.A(cnt[4]), .B(n43262), .C(cnt[3]), .D(n43333), 
         .Z(n26508)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i2_3_lut_4_lut_adj_180.init = 16'hffef;
    LUT4 i38180_4_lut (.A(n43321), .B(data_r[75]), .C(x_cnt[0]), .D(n13333), 
         .Z(n41156)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i38180_4_lut.init = 16'hc0ca;
    LUT4 mux_356_Mux_0_i15_3_lut_rep_604_3_lut (.A(y_cnt[2]), .B(y_cnt[1]), 
         .C(n44505), .Z(n43321)) /* synthesis lut_function=(!(A (C)+!A (B+!(C)))) */ ;
    defparam mux_356_Mux_0_i15_3_lut_rep_604_3_lut.init = 16'h1a1a;
    LUT4 decade_2__bdd_3_lut_39030 (.A(n43153), .B(n2903[7]), .C(n2973), 
         .Z(n41945)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39030.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_181 (.A(n43229), .B(n43013), .C(n43321), 
         .D(n43365), .Z(data_r_131__N_1113[121])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    defparam i1_2_lut_3_lut_4_lut_adj_181.init = 16'h0020;
    LUT4 realv_3_2__bdd_3_lut_39526 (.A(n43036), .B(n2903[4]), .C(n2967[4]), 
         .Z(n42694)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_39526.init = 16'he4e4;
    L6MUX21 i38174 (.D0(n41148), .D1(n41149), .SD(n43024), .Z(n41150));
    LUT4 i38790_4_lut (.A(n38142), .B(rst_n_in_c), .C(state[2]), .D(state[1]), 
         .Z(high_word_N_1277)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+(D))))) */ ;
    defparam i38790_4_lut.init = 16'h3b3f;
    PFUMX i39579 (.BLUT(n42783), .ALUT(n42782), .C0(n43042), .Z(n42784));
    LUT4 realv_3_2__bdd_3_lut_39523 (.A(n43036), .B(n3032[5]), .C(n3019[4]), 
         .Z(n42693)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_39523.init = 16'he4e4;
    LUT4 i1_2_lut_rep_486_3_lut (.A(cnt[4]), .B(n43263), .C(cnt[5]), .Z(n43203)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(157[16:18])
    defparam i1_2_lut_rep_486_3_lut.init = 16'hdfdf;
    LUT4 realv_3_2__bdd_3_lut_39527 (.A(n43036), .B(n2898), .C(n2993[5]), 
         .Z(n42696)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_3_2__bdd_3_lut_39527.init = 16'he4e4;
    LUT4 realv_3_2__bdd_3_lut_39543 (.A(n43036), .B(n2898), .C(n2884), 
         .Z(n42697)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_3_2__bdd_3_lut_39543.init = 16'hd8d8;
    LUT4 i2_3_lut_4_lut_adj_182 (.A(n43265), .B(n43359), .C(cnt[2]), .D(cnt[1]), 
         .Z(n38271)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(202[16:18])
    defparam i2_3_lut_4_lut_adj_182.init = 16'hffef;
    PFUMX i39581 (.BLUT(n9172), .ALUT(n42785), .C0(n43042), .Z(n42786));
    LUT4 i1_2_lut_rep_473_3_lut_4_lut (.A(n43265), .B(n43359), .C(cnt[2]), 
         .D(cnt[1]), .Z(n43190)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(202[16:18])
    defparam i1_2_lut_rep_473_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_rep_476_3_lut_4_lut (.A(n43369), .B(n43264), .C(n40459), 
         .D(cnt[5]), .Z(n43193)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_rep_476_3_lut_4_lut.init = 16'hfeff;
    PFUMX i38183 (.BLUT(n2388), .ALUT(n2387_adj_1429), .C0(x_cnt[0]), 
          .Z(n41159));
    L6MUX21 i39583 (.D0(n42786), .D1(n42784), .SD(n43043), .Z(n42787));
    LUT4 i23488_2_lut_3_lut_4_lut (.A(n43369), .B(n43264), .C(n43361), 
         .D(cnt[5]), .Z(n26502)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i23488_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(n43369), .B(n43264), .C(n26095), 
         .D(cnt[5]), .Z(n14128)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'hffef;
    FD1P3IX data_reg_i0_i2 (.D(n2_adj_1412), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i2.GSR = "DISABLED";
    LUT4 n3_bdd_3_lut (.A(n3_adj_52), .B(n42722), .C(n43042), .Z(n42723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n3_bdd_3_lut.init = 16'hcaca;
    PFUMX i38185 (.BLUT(n2384), .ALUT(n2383), .C0(x_cnt[0]), .Z(n41161));
    LUT4 i2_3_lut_rep_501_4_lut (.A(n43401), .B(n43265), .C(cnt[0]), .D(cnt[6]), 
         .Z(n43218)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(224[16:17])
    defparam i2_3_lut_rep_501_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_rep_485_4_lut (.A(n43401), .B(n43265), .C(n40441), .D(n43257), 
         .Z(n43202)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(224[16:17])
    defparam i1_3_lut_rep_485_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_184 (.A(n43229), .B(n43013), .C(n43339), 
         .D(n43365), .Z(data_r_131__N_1113[120])) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    defparam i1_2_lut_3_lut_4_lut_adj_184.init = 16'h0020;
    L6MUX21 i39017 (.D0(n41948), .D1(n41946), .SD(n43148), .Z(n41949));
    LUT4 i38537_3_lut_4_lut (.A(n8_adj_1473), .B(n43048), .C(\realv_5[3] ), 
         .D(n7_adj_1474), .Z(n41001)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i38537_3_lut_4_lut.init = 16'h8f80;
    L6MUX21 i38192 (.D0(n41153), .D1(n41154), .SD(x_cnt_c[1]), .Z(n41168));
    FD1P3IX data_reg_i0_i3 (.D(n41995), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i3.GSR = "DISABLED";
    LUT4 i38285_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n43026), .Z(n41261)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38285_3_lut.init = 16'hcaca;
    LUT4 i38284_3_lut (.A(n2898), .B(n2993[3]), .C(n43026), .Z(n41260)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38284_3_lut.init = 16'hcaca;
    LUT4 i38283_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n43026), .Z(n41259)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38283_3_lut.init = 16'hcaca;
    PFUMX i38281 (.BLUT(n41255), .ALUT(n41256), .C0(x_cnt_c[3]), .Z(n41257));
    LUT4 i38612_3_lut (.A(n2524), .B(n42724), .C(x_cnt[0]), .Z(n41155)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38612_3_lut.init = 16'hcaca;
    LUT4 i38171_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n43026), .Z(n41147)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38171_3_lut.init = 16'hcaca;
    LUT4 i38170_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n43026), .Z(n41146)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38170_3_lut.init = 16'hcaca;
    LUT4 i38168_3_lut (.A(n2886), .B(n43355), .C(n43026), .Z(n41144)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38168_3_lut.init = 16'hcaca;
    LUT4 n9204_bdd_3_lut (.A(n43153), .B(n2980[7]), .C(n2993[5]), .Z(n41947)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9204_bdd_3_lut.init = 16'he4e4;
    LUT4 mux_2853_i5_3_lut_4_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n5274[4])) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B !(C+(D)))) */ ;
    defparam mux_2853_i5_3_lut_4_lut_4_lut.init = 16'he4e1;
    LUT4 mux_358_Mux_5_i15_4_lut_4_lut (.A(n44506), .B(n44508), .C(n44510), 
         .D(n44505), .Z(n2903[5])) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(457[41:46])
    defparam mux_358_Mux_5_i15_4_lut_4_lut.init = 16'h1310;
    LUT4 i38658_4_lut (.A(n5_adj_1358), .B(n42627), .C(n43023), .D(n40966), 
         .Z(n2381)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;
    defparam i38658_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_4_lut_4_lut_adj_185 (.A(y_cnt[2]), .B(y_cnt[1]), .C(x_cnt[0]), 
         .D(y_cnt[3]), .Z(n40340)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B+!(C (D))))) */ ;
    defparam i1_2_lut_4_lut_4_lut_adj_185.init = 16'h10a0;
    LUT4 i2_3_lut_adj_186 (.A(cnt_scan[1]), .B(cnt_scan[0]), .C(cnt_scan[2]), 
         .Z(n37903)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam i2_3_lut_adj_186.init = 16'h0202;
    LUT4 i38280_4_lut (.A(n41004), .B(n43321), .C(x_cnt_c[2]), .D(n41960), 
         .Z(n41256)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i38280_4_lut.init = 16'h0aca;
    L6MUX21 i38288 (.D0(n41262), .D1(n41263), .SD(n43024), .Z(n41264));
    LUT4 mux_167_i15_3_lut_4_lut (.A(n1489), .B(n43266), .C(n43218), .D(num_delay[14]), 
         .Z(n1586[14])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i15_3_lut_4_lut.init = 16'hef03;
    LUT4 i38279_3_lut (.A(n41985), .B(n41030), .C(x_cnt_c[2]), .Z(n41255)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38279_3_lut.init = 16'hcaca;
    LUT4 n9172_bdd_3_lut_39595 (.A(n43049), .B(n2980[6]), .C(n2993[5]), 
         .Z(n42785)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9172_bdd_3_lut_39595.init = 16'he4e4;
    LUT4 i38656_3_lut (.A(n42590), .B(n42633), .C(x_cnt[0]), .Z(n41158)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38656_3_lut.init = 16'hcaca;
    FD1P3AX y_cnt__i0_rep_725 (.D(n38598), .SP(clk_in_c_enable_154), .CK(clk_in_c), 
            .Q(n44510)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i0_rep_725.GSR = "DISABLED";
    LUT4 i13902_2_lut_3_lut_4_lut_4_lut (.A(n43274), .B(n26919), .C(cnt_scan[0]), 
         .D(n8_adj_1369), .Z(n1_adj_1377)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i13902_2_lut_3_lut_4_lut_4_lut.init = 16'h0002;
    LUT4 i37758_2_lut_3_lut_4_lut_4_lut (.A(n43274), .B(n26919), .C(cnt[1]), 
         .D(n8_adj_1369), .Z(n40724)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i37758_2_lut_3_lut_4_lut_4_lut.init = 16'hfffd;
    LUT4 i37793_4_lut_4_lut_3_lut (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), 
         .Z(n40891)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)+!B !(C)))) */ ;
    defparam i37793_4_lut_4_lut_3_lut.init = 16'h3434;
    LUT4 n26915_bdd_2_lut_39173_3_lut_4_lut_4_lut (.A(n43274), .B(n26919), 
         .C(n13392), .D(n8_adj_1369), .Z(n42219)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam n26915_bdd_2_lut_39173_3_lut_4_lut_4_lut.init = 16'h0002;
    FD1P3IX data_reg_i0_i4 (.D(n2_adj_1413), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i4.GSR = "DISABLED";
    LUT4 i23594_4_lut_4_lut (.A(n43018), .B(n43026), .C(n43338), .D(n3032[1]), 
         .Z(n14_adj_1465)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i23594_4_lut_4_lut.init = 16'h5140;
    LUT4 realv_4_2__bdd_3_lut_39591 (.A(n43049), .B(n2973), .C(n2903[6]), 
         .Z(n42783)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_39591.init = 16'hd8d8;
    FD1P3IX data_reg_i0_i5 (.D(n2_adj_1394), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i5.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_187 (.A(n37274), .B(n43272), .C(n44499), .D(n44501), 
         .Z(clk_divided_enable_3)) /* synthesis lut_function=(!((B (C)+!B !((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_187.init = 16'h2a0a;
    LUT4 realv_4_2__bdd_3_lut_39578 (.A(n43049), .B(n3045[3]), .C(n3006[6]), 
         .Z(n42782)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_39578.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n43274), .B(state[0]), .C(n26919), 
         .D(n8_adj_1369), .Z(n2_adj_1403)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_2_lut_3_lut_4_lut_4_lut (.A(n43274), .B(n26919), .C(cnt[3]), 
         .D(n8_adj_1369), .Z(n4_adj_1475)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_2_lut_2_lut_3_lut_4_lut_4_lut.init = 16'h0020;
    LUT4 n9196_bdd_4_lut_39357 (.A(n3226[87]), .B(x_cnt_c[1]), .C(n43205), 
         .D(n42030), .Z(n42181)) /* synthesis lut_function=(A (B+(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam n9196_bdd_4_lut_39357.init = 16'hb888;
    LUT4 Mux_264_i7_3_lut (.A(n3), .B(n41065), .C(n43024), .Z(n7_adj_1464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_264_i7_3_lut.init = 16'hcaca;
    PFUMX i39015 (.BLUT(n9204), .ALUT(n41947), .C0(n43154), .Z(n41948));
    LUT4 n42792_bdd_3_lut (.A(n42792), .B(n41915), .C(x_cnt[0]), .Z(n42793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42792_bdd_3_lut.init = 16'hcaca;
    LUT4 i38276_3_lut (.A(n2886), .B(n43355), .C(n43020), .Z(n41252)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38276_3_lut.init = 16'hcaca;
    LUT4 i38250_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n43020), .Z(n41226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38250_3_lut.init = 16'hcaca;
    LUT4 realv_4_2__bdd_3_lut_39592 (.A(n43049), .B(n3006[7]), .C(n3019[7]), 
         .Z(n42795)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_39592.init = 16'he4e4;
    LUT4 realv_4_2__bdd_3_lut_39614 (.A(n43049), .B(n2973), .C(n2903[7]), 
         .Z(n42796)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut_39614.init = 16'hd8d8;
    LUT4 i38181_3_lut (.A(data_r[76]), .B(n2380), .C(x_cnt[0]), .Z(n41157)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38181_3_lut.init = 16'hcaca;
    LUT4 n9196_bdd_3_lut_39358 (.A(n9196), .B(n2903[7]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n42183)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n9196_bdd_3_lut_39358.init = 16'hcaca;
    LUT4 n9172_bdd_3_lut (.A(n43049), .B(n2980[7]), .C(n2993[5]), .Z(n42798)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n9172_bdd_3_lut.init = 16'he4e4;
    LUT4 realv_4_2__bdd_3_lut_39635 (.A(n43049), .B(n2913), .C(n2967[2]), 
         .Z(n42825)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_39635.init = 16'he4e4;
    LUT4 x_cnt_1__bdd_4_lut_39647 (.A(x_cnt_c[1]), .B(n43142), .C(x_cnt[0]), 
         .D(n40431), .Z(n42805)) /* synthesis lut_function=(A (B+!(C))+!A (C+(D))) */ ;
    defparam x_cnt_1__bdd_4_lut_39647.init = 16'hdfda;
    LUT4 i1_2_lut_rep_509_4_lut (.A(n43298), .B(cnt[3]), .C(n43401), .D(n43359), 
         .Z(n43226)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_rep_509_4_lut.init = 16'hfffb;
    LUT4 i37658_2_lut_rep_541 (.A(n35769), .B(cnt_init[0]), .Z(n43258)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i37658_2_lut_rep_541.init = 16'heeee;
    LUT4 i22961_2_lut_rep_627_3_lut (.A(n44506), .B(n44508), .C(n44510), 
         .Z(n43344)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i22961_2_lut_rep_627_3_lut.init = 16'hfefe;
    LUT4 i7113_4_lut_4_lut (.A(n43283), .B(n7_adj_1417), .C(n9885), .D(n43219), 
         .Z(n104)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (C+(D))) */ ;
    defparam i7113_4_lut_4_lut.init = 16'hdfd0;
    LUT4 Mux_349_i41_4_lut_4_lut (.A(n43283), .B(x_cnt_c[1]), .C(n9945), 
         .D(n43285), .Z(n41)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B+(D))) */ ;
    defparam Mux_349_i41_4_lut_4_lut.init = 16'hf7c4;
    LUT4 i23581_4_lut_4_lut (.A(n43018), .B(n43026), .C(n43310), .D(n3032[1]), 
         .Z(n14_adj_1476)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i23581_4_lut_4_lut.init = 16'h5140;
    LUT4 n1_bdd_3_lut_adj_188 (.A(n43049), .B(n2980[1]), .C(n2993[2]), 
         .Z(n42827)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_188.init = 16'he4e4;
    PFUMX i38172 (.BLUT(n41144), .ALUT(n41145), .C0(n43025), .Z(n41148));
    LUT4 i3_4_lut_rep_543 (.A(n26165), .B(n11_adj_1477), .C(n43283), .D(n26781), 
         .Z(n43260)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_rep_543.init = 16'h8000;
    PFUMX i38173 (.BLUT(n41146), .ALUT(n41147), .C0(n43025), .Z(n41149));
    PFUMX i38177 (.BLUT(n2528), .ALUT(n2527), .C0(x_cnt[0]), .Z(n41153));
    LUT4 realv_4_1__bdd_3_lut_39625 (.A(n43049), .B(n2980[9]), .C(n2993[8]), 
         .Z(n42835)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_1__bdd_3_lut_39625.init = 16'he4e4;
    PFUMX i38193 (.BLUT(n41155), .ALUT(n41156), .C0(x_cnt_c[1]), .Z(n41169));
    LUT4 i1_2_lut_3_lut_4_lut_adj_189 (.A(n43297), .B(n43315), .C(cnt[3]), 
         .D(cnt[4]), .Z(n40477)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(161[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_189.init = 16'hfeff;
    LUT4 i38036_3_lut (.A(n1_adj_54), .B(n2903[4]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n41012)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38036_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_190 (.A(n1489), .B(n43266), .C(n43218), .D(n13695), 
         .Z(n4_adj_1424)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (B (D))) */ ;
    defparam i1_2_lut_4_lut_adj_190.init = 16'hec00;
    LUT4 i1_2_lut_rep_489_3_lut_4_lut (.A(n43297), .B(n43315), .C(cnt[3]), 
         .D(cnt[4]), .Z(n43206)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(161[16:18])
    defparam i1_2_lut_rep_489_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_191 (.A(n43297), .B(n43315), .C(cnt[3]), 
         .D(n14213), .Z(n14189)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(161[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_191.init = 16'hfffe;
    PFUMX i39012 (.BLUT(n41945), .ALUT(n41944), .C0(n43154), .Z(n41946));
    LUT4 i1_2_lut_3_lut_4_lut_adj_192 (.A(n43297), .B(n43315), .C(cnt[3]), 
         .D(n14213), .Z(n14190)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(161[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_192.init = 16'hffef;
    LUT4 i11478_3_lut (.A(n2903[6]), .B(n2903[7]), .C(x_cnt[0]), .Z(n14497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i11478_3_lut.init = 16'hcaca;
    LUT4 realv_4_2__bdd_3_lut_39639 (.A(n43049), .B(n2903[4]), .C(n2967[4]), 
         .Z(n42868)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_39639.init = 16'he4e4;
    LUT4 Mux_349_i114_3_lut (.A(n3_adj_1462), .B(n3_adj_1452), .C(x_cnt[0]), 
         .Z(n9873)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i114_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i110_3_lut (.A(n43010), .B(n3_adj_1459), .C(x_cnt[0]), 
         .Z(n9879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i110_3_lut.init = 16'hcaca;
    LUT4 i38190_3_lut (.A(n2246), .B(n2245), .C(x_cnt[0]), .Z(n41166)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38190_3_lut.init = 16'hcaca;
    LUT4 i38189_3_lut (.A(n2248), .B(n2247), .C(x_cnt[0]), .Z(n41165)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38189_3_lut.init = 16'hcaca;
    LUT4 i38187_3_lut (.A(n2380), .B(data_r[89]), .C(x_cnt[0]), .Z(n41163)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38187_3_lut.init = 16'hcaca;
    PFUMX i38286 (.BLUT(n41258), .ALUT(n41259), .C0(n43025), .Z(n41262));
    LUT4 i2_3_lut_4_lut_adj_193 (.A(n43297), .B(cnt[5]), .C(n43361), .D(n43369), 
         .Z(n14130)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i2_3_lut_4_lut_adj_193.init = 16'hfffb;
    LUT4 n14226_bdd_2_lut_39118_3_lut_4_lut (.A(n43297), .B(cnt[5]), .C(n40459), 
         .D(cnt[4]), .Z(n42126)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam n14226_bdd_2_lut_39118_3_lut_4_lut.init = 16'h0004;
    PFUMX i38287 (.BLUT(n41260), .ALUT(n41261), .C0(n43025), .Z(n41263));
    LUT4 i33_4_lut_4_lut_adj_194 (.A(y_cnt[0]), .B(y_cnt[1]), .C(n43036), 
         .D(y_cnt[2]), .Z(n18)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i33_4_lut_4_lut_adj_194.init = 16'he066;
    LUT4 i1_2_lut_3_lut_4_lut_adj_195 (.A(n43297), .B(cnt[5]), .C(n14252), 
         .D(cnt[4]), .Z(n14254)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_195.init = 16'hfffb;
    LUT4 n13_bdd_4_lut_39157 (.A(n43229), .B(data_r[47]), .C(n26781), 
         .D(x_cnt[0]), .Z(n42187)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;
    defparam n13_bdd_4_lut_39157.init = 16'h880f;
    LUT4 realv_4_2__bdd_3_lut_39636 (.A(n43049), .B(n3032[5]), .C(n3019[4]), 
         .Z(n42867)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_39636.init = 16'he4e4;
    LUT4 i1_2_lut_rep_496_3_lut_4_lut (.A(n43297), .B(cnt[5]), .C(n26095), 
         .D(cnt[4]), .Z(n43213)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_rep_496_3_lut_4_lut.init = 16'hffbf;
    LUT4 i9628_2_lut_rep_711 (.A(state[1]), .B(rst_n_in_c), .Z(n44476)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i9628_2_lut_rep_711.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_196 (.A(n43297), .B(cnt[5]), .C(n40484), 
         .D(cnt[4]), .Z(n14279)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_196.init = 16'hfffb;
    LUT4 i1_2_lut_rep_491_3_lut_4_lut (.A(n43297), .B(cnt[5]), .C(n14252), 
         .D(cnt[4]), .Z(n43208)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_rep_491_3_lut_4_lut.init = 16'hfbff;
    LUT4 Mux_349_i98_3_lut (.A(n2240), .B(n2239), .C(x_cnt[0]), .Z(n9889)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i98_3_lut.init = 16'hcaca;
    LUT4 n13_bdd_4_lut_39265 (.A(n43229), .B(n26781), .C(x_cnt[0]), .D(data_r[34]), 
         .Z(n42189)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam n13_bdd_4_lut_39265.init = 16'h3a30;
    LUT4 i23039_4_lut (.A(n43358), .B(n14102), .C(n43216), .D(cnt[1]), 
         .Z(n26048)) /* synthesis lut_function=(A (B)+!A (B (C+!(D)))) */ ;
    defparam i23039_4_lut.init = 16'hc8cc;
    LUT4 n42189_bdd_3_lut (.A(n42189), .B(n26970), .C(x_cnt_c[2]), .Z(n42190)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42189_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_492_3_lut_4_lut (.A(n43297), .B(cnt[5]), .C(n43369), 
         .D(cnt[4]), .Z(n43209)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_rep_492_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_197 (.A(n43297), .B(cnt[5]), .C(n40484), 
         .D(cnt[4]), .Z(n40485)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_197.init = 16'hfbff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_198 (.A(n43297), .B(cnt[5]), .C(n40414), 
         .D(cnt[4]), .Z(n14096)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_198.init = 16'hfffb;
    LUT4 i1_4_lut_adj_199 (.A(n43295), .B(clk_in_c_enable_1), .C(n40398), 
         .D(n43292), .Z(clk_in_c_enable_154)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_199.init = 16'hc4c0;
    LUT4 i1_2_lut_rep_499_3_lut_4_lut (.A(n43297), .B(cnt[5]), .C(cnt[3]), 
         .D(cnt[4]), .Z(n43216)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_rep_499_3_lut_4_lut.init = 16'hbfff;
    LUT4 realv_4_2__bdd_3_lut_39640 (.A(n43049), .B(n2898), .C(n2993[5]), 
         .Z(n42870)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam realv_4_2__bdd_3_lut_39640.init = 16'he4e4;
    LUT4 n42190_bdd_3_lut (.A(n42190), .B(n42188), .C(x_cnt_c[3]), .Z(n42191)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42190_bdd_3_lut.init = 16'hcaca;
    LUT4 realv_4_2__bdd_3_lut (.A(n43049), .B(n2898), .C(n2884), .Z(n42871)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam realv_4_2__bdd_3_lut.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.A(n43297), .B(cnt[5]), .C(cnt[2]), 
         .D(cnt[4]), .Z(n4_adj_1479)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_200.init = 16'hfbff;
    LUT4 x_cnt_3__bdd_3_lut_39274 (.A(n41), .B(n9944), .C(x_cnt_c[2]), 
         .Z(n42192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_cnt_3__bdd_3_lut_39274.init = 16'hcaca;
    LUT4 Mux_349_i96_3_lut (.A(n2242), .B(n2241), .C(x_cnt[0]), .Z(n9891)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i96_3_lut.init = 16'hcaca;
    LUT4 Mux_349_i95_3_lut (.A(n2244), .B(n2243), .C(x_cnt[0]), .Z(n9893)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam Mux_349_i95_3_lut.init = 16'hcaca;
    PFUMX i39538 (.BLUT(n42723), .ALUT(n14_adj_1361), .C0(n43034), .Z(n42724));
    LUT4 x_cnt_3__bdd_2_lut (.A(n26970), .B(x_cnt_c[2]), .Z(n42193)) /* synthesis lut_function=(A (B)) */ ;
    defparam x_cnt_3__bdd_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(n43297), .B(cnt[5]), .C(n40414), 
         .D(cnt[4]), .Z(n14099)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(172[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'hfbff;
    LUT4 x_cnt_1__bdd_4_lut_39806 (.A(x_cnt_c[2]), .B(data_r[110]), .C(data_r[111]), 
         .D(x_cnt[0]), .Z(n42879)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam x_cnt_1__bdd_4_lut_39806.init = 16'ha088;
    LUT4 x_cnt_1__bdd_3_lut_39912 (.A(data_r[104]), .B(x_cnt_c[2]), .C(x_cnt[0]), 
         .Z(n42880)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam x_cnt_1__bdd_3_lut_39912.init = 16'h0202;
    LUT4 i23216_4_lut (.A(n42195), .B(x_cnt_c[5]), .C(n13061), .D(x_cnt_c[4]), 
         .Z(n63)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i23216_4_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_490_3_lut_4_lut (.A(n43297), .B(cnt[4]), .C(cnt[5]), 
         .D(cnt[3]), .Z(n43207)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_rep_490_3_lut_4_lut.init = 16'hfbff;
    LUT4 i2_2_lut_rep_493_3_lut_4_lut (.A(n43297), .B(cnt[4]), .C(n43398), 
         .D(cnt[3]), .Z(n43210)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i2_2_lut_rep_493_3_lut_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_202 (.A(n43297), .B(cnt[4]), .C(n43358), 
         .D(cnt[5]), .Z(n40453)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_202.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(n43297), .B(cnt[4]), .C(n14252), 
         .D(cnt[5]), .Z(n14253)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'hfffb;
    LUT4 n14226_bdd_2_lut_39214_3_lut_4_lut (.A(n43297), .B(cnt[4]), .C(n43361), 
         .D(cnt[5]), .Z(n42127)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam n14226_bdd_2_lut_39214_3_lut_4_lut.init = 16'h0004;
    PFUMX i39536 (.BLUT(n42721), .ALUT(n42720), .C0(n43043), .Z(n42722));
    LUT4 i2_4_lut_adj_204 (.A(n43321), .B(n4_adj_1360), .C(n43339), .D(x_cnt[0]), 
         .Z(n37981)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    defparam i2_4_lut_adj_204.init = 16'hc088;
    LUT4 i10112_4_lut (.A(n43229), .B(n41096), .C(n40354), .D(x_cnt_c[3]), 
         .Z(n13055)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i10112_4_lut.init = 16'ha088;
    LUT4 n42194_bdd_3_lut (.A(n42194), .B(n42191), .C(x_cnt_c[1]), .Z(n42195)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42194_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_498_3_lut_4_lut (.A(n43297), .B(cnt[4]), .C(cnt[5]), 
         .D(n43369), .Z(n43215)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_rep_498_3_lut_4_lut.init = 16'hffbf;
    LUT4 x_cnt_0__bdd_2_lut (.A(x_cnt_c[1]), .B(data_r[101]), .Z(n42919)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam x_cnt_0__bdd_2_lut.init = 16'h4444;
    LUT4 x_cnt_0__bdd_3_lut (.A(data_r[100]), .B(data_r[91]), .C(x_cnt_c[1]), 
         .Z(n42920)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam x_cnt_0__bdd_3_lut.init = 16'hcaca;
    CCU2D sub_2562_add_2_14 (.A0(cnt_delay[12]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[13]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37797), .COUT(n37798));
    defparam sub_2562_add_2_14.INIT0 = 16'h5555;
    defparam sub_2562_add_2_14.INIT1 = 16'h5555;
    defparam sub_2562_add_2_14.INJECT1_0 = "NO";
    defparam sub_2562_add_2_14.INJECT1_1 = "NO";
    CCU2D sub_2562_add_2_12 (.A0(cnt_delay[10]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[11]), .B1(num_delay[11]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37796), .COUT(n37797));
    defparam sub_2562_add_2_12.INIT0 = 16'h5555;
    defparam sub_2562_add_2_12.INIT1 = 16'h5999;
    defparam sub_2562_add_2_12.INJECT1_0 = "NO";
    defparam sub_2562_add_2_12.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_500_3_lut_4_lut (.A(n43297), .B(cnt[4]), .C(cnt[5]), 
         .D(n43369), .Z(n43217)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(158[16:18])
    defparam i1_2_lut_rep_500_3_lut_4_lut.init = 16'hfffb;
    LUT4 mux_379_Mux_5_i15_3_lut (.A(n7_c), .B(n43355), .C(n44505), .Z(n3032[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_379_Mux_5_i15_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(cnt[3]), .B(n43298), .C(n43359), 
         .D(n43401), .Z(n14102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'hfffe;
    LUT4 n11840_bdd_3_lut (.A(x_cnt[0]), .B(data_r[96]), .C(data_r[97]), 
         .Z(n42922)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n11840_bdd_3_lut.init = 16'he4e4;
    LUT4 i2_2_lut_3_lut_4_lut (.A(cnt[3]), .B(n43298), .C(n43398), .D(cnt[6]), 
         .Z(n14025)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i2_2_lut_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_206 (.A(cnt[3]), .B(n43298), .C(n43315), 
         .D(cnt[6]), .Z(n14056)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_3_lut_4_lut_adj_206.init = 16'hfeff;
    L6MUX21 i39530 (.D0(n42698), .D1(n42695), .SD(n43029), .Z(n42699));
    LUT4 i1_2_lut_rep_549 (.A(n14_adj_1468), .B(n13901), .Z(n43266)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_549.init = 16'heeee;
    LUT4 n40432_bdd_4_lut (.A(state[2]), .B(cnt_write[0]), .C(n43375), 
         .D(cnt_write[4]), .Z(n42925)) /* synthesis lut_function=(!((B (C (D))+!B (C (D)+!C !(D)))+!A)) */ ;
    defparam n40432_bdd_4_lut.init = 16'h0aa8;
    LUT4 i37660_2_lut_3_lut (.A(n14_adj_1468), .B(n13901), .C(cnt_init[1]), 
         .Z(n40621)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;
    defparam i37660_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i1_4_lut_adj_207 (.A(data_reg[6]), .B(n15_adj_1480), .C(n1489), 
         .D(n16_adj_1481), .Z(n13770)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A !(B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i1_4_lut_adj_207.init = 16'hb3ff;
    LUT4 i3072_3_lut_rep_481_4_lut (.A(n14_adj_1468), .B(n13901), .C(n43218), 
         .D(n1489), .Z(n43198)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i3072_3_lut_rep_481_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_511_3_lut (.A(n14_adj_1468), .B(n13901), .C(n1489), 
         .Z(n43228)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_rep_511_3_lut.init = 16'hefef;
    LUT4 i2_3_lut_rep_550 (.A(cnt_init[2]), .B(cnt_init[0]), .C(n35769), 
         .Z(n43267)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_rep_550.init = 16'h0404;
    LUT4 x_cnt_0__bdd_4_lut (.A(x_cnt[0]), .B(n13333), .C(x_cnt_c[1]), 
         .D(n13178), .Z(n41960)) /* synthesis lut_function=(A (B+!(C))+!A (C+(D))) */ ;
    defparam x_cnt_0__bdd_4_lut.init = 16'hdfda;
    LUT4 i4_4_lut (.A(n40384), .B(n40839), .C(n40849), .D(n6_adj_1482), 
         .Z(n40542)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i4_4_lut.init = 16'hfffb;
    PFUMX i39528 (.BLUT(n42697), .ALUT(n42696), .C0(n43030), .Z(n42698));
    LUT4 cnt_scan_1__bdd_4_lut (.A(cnt_scan[1]), .B(n43222), .C(n43295), 
         .D(cnt_scan[0]), .Z(n42954)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam cnt_scan_1__bdd_4_lut.init = 16'hfa11;
    LUT4 mux_454_Mux_2_i1_4_lut (.A(cnt[1]), .B(n3720[1]), .C(cnt_scan[0]), 
         .D(n4_adj_1475), .Z(n1_adj_1411)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam mux_454_Mux_2_i1_4_lut.init = 16'hcac0;
    LUT4 i5_4_lut_adj_208 (.A(n43174), .B(n40635), .C(n40547), .D(n8_adj_1483), 
         .Z(n40548)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i5_4_lut_adj_208.init = 16'hfffb;
    LUT4 mux_454_Mux_1_i1_4_lut (.A(n43368), .B(n3720[1]), .C(cnt_scan[0]), 
         .D(n4_c), .Z(n1_adj_1408)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam mux_454_Mux_1_i1_4_lut.init = 16'hcac0;
    PFUMX i39524 (.BLUT(n42694), .ALUT(n42693), .C0(n43030), .Z(n42695));
    LUT4 i4_4_lut_adj_209 (.A(n14251), .B(n40865), .C(n43172), .D(n4_adj_1484), 
         .Z(n40545)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i4_4_lut_adj_209.init = 16'hff7f;
    LUT4 i1_4_lut_4_lut_adj_210 (.A(n43295), .B(cnt_scan[0]), .C(n43222), 
         .D(n43381), .Z(n35)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_210.init = 16'h7400;
    LUT4 Mux_412_i2_3_lut_rep_552 (.A(n2913), .B(n2967[2]), .C(\realv_5[0] ), 
         .Z(n43269)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_412_i2_3_lut_rep_552.init = 16'hcaca;
    LUT4 n2_bdd_2_lut_4_lut (.A(n2913), .B(n2967[2]), .C(\realv_5[0] ), 
         .D(x_cnt[0]), .Z(n42928)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam n2_bdd_2_lut_4_lut.init = 16'hca00;
    LUT4 i23379_4_lut (.A(n41084), .B(n43205), .C(n40353), .D(x_cnt_c[3]), 
         .Z(n11892)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23379_4_lut.init = 16'hc088;
    LUT4 mux_454_Mux_0_i1_4_lut (.A(n26763), .B(n3720[1]), .C(cnt_scan[0]), 
         .D(n40724), .Z(n1_adj_1402)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam mux_454_Mux_0_i1_4_lut.init = 16'hc0ca;
    LUT4 i2_2_lut_rep_387 (.A(high_word), .B(n3370), .Z(n43104)) /* synthesis lut_function=(A (B)) */ ;
    defparam i2_2_lut_rep_387.init = 16'h8888;
    LUT4 mux_357_Mux_6_i15_3_lut (.A(n43411), .B(n43355), .C(y_cnt[3]), 
         .Z(n2896)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(454[41:46])
    defparam mux_357_Mux_6_i15_3_lut.init = 16'hcaca;
    LUT4 i8_4_lut_adj_211 (.A(n43203), .B(n16_adj_1485), .C(n12_adj_1486), 
         .D(n43226), .Z(n40551)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i8_4_lut_adj_211.init = 16'hfdff;
    CCU2D sub_2562_add_2_10 (.A0(cnt_delay[8]), .B0(num_delay[8]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[9]), .B1(num_delay[9]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37795), .COUT(n37796));
    defparam sub_2562_add_2_10.INIT0 = 16'h5999;
    defparam sub_2562_add_2_10.INIT1 = 16'h5999;
    defparam sub_2562_add_2_10.INJECT1_0 = "NO";
    defparam sub_2562_add_2_10.INJECT1_1 = "NO";
    CCU2D sub_2562_add_2_8 (.A0(cnt_delay[6]), .B0(num_delay[6]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[7]), .B1(num_delay[7]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37794), .COUT(n37795));
    defparam sub_2562_add_2_8.INIT0 = 16'h5999;
    defparam sub_2562_add_2_8.INIT1 = 16'h5999;
    defparam sub_2562_add_2_8.INJECT1_0 = "NO";
    defparam sub_2562_add_2_8.INJECT1_1 = "NO";
    LUT4 Mux_411_i8_3_lut (.A(n2967[4]), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n8_adj_1444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_212 (.A(clk_in_c_enable_1), .B(n43292), .C(n40398), 
         .D(n43337), .Z(n24880)) /* synthesis lut_function=(!((B (D)+!B ((D)+!C))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_212.init = 16'h00a8;
    LUT4 mux_2587_i5_3_lut_rep_291_4_lut_4_lut (.A(high_word), .B(n3370), 
         .C(\ctrlword_595_3[13] ), .D(n2834), .Z(n43008)) /* synthesis lut_function=(A (B+!(C))+!A !(C+(D))) */ ;
    defparam mux_2587_i5_3_lut_rep_291_4_lut_4_lut.init = 16'h8a8f;
    LUT4 i3_4_lut_adj_213 (.A(y_cnt_c[7]), .B(n38075), .C(y_cnt_c[6]), 
         .D(y_cnt_c[5]), .Z(n2014)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i3_4_lut_adj_213.init = 16'ha8a0;
    LUT4 i1_2_lut_rep_558 (.A(n1489), .B(n14_adj_1468), .Z(n43275)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i1_2_lut_rep_558.init = 16'heeee;
    L6MUX21 i39519 (.D0(n42689), .D1(n42686), .SD(n43030), .Z(n42690));
    LUT4 i1_2_lut_3_lut_adj_214 (.A(n1489), .B(n14_adj_1468), .C(n13695), 
         .Z(n2_adj_1467)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i1_2_lut_3_lut_adj_214.init = 16'he0e0;
    LUT4 i4_4_lut_adj_215 (.A(cnt[5]), .B(n8_adj_1487), .C(n1_adj_1488), 
         .D(n40881), .Z(n39723)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+!(D)))) */ ;
    defparam i4_4_lut_adj_215.init = 16'hfcfd;
    LUT4 i7177_3_lut (.A(n7_c), .B(n9684), .C(y_cnt[3]), .Z(n8_adj_1442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i7177_3_lut.init = 16'hcaca;
    LUT4 Mux_409_i8_3_lut (.A(n3032[5]), .B(n3045[5]), .C(\realv_5[0] ), 
         .Z(n8_adj_1439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i8_3_lut (.A(n3032[5]), .B(n3045[6]), .C(\realv_5[0] ), 
         .Z(n8_adj_1437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i8_3_lut.init = 16'hcaca;
    LUT4 i9_4_lut (.A(n26048), .B(n40887), .C(n14_adj_1489), .D(n43203), 
         .Z(n40543)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i9_4_lut.init = 16'hf7ff;
    PFUMX i38089 (.BLUT(n41063), .ALUT(n41064), .C0(n43025), .Z(n41065));
    LUT4 Mux_405_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(\realv_5[0] ), 
         .Z(n8_adj_1446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_405_i8_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_216 (.A(n43205), .B(n42924), .C(n42881), .D(x_cnt_c[3]), 
         .Z(n39679)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_216.init = 16'ha088;
    CCU2D sub_2562_add_2_6 (.A0(cnt_delay[4]), .B0(num_delay[4]), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[5]), .B1(num_delay[5]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37793), .COUT(n37794));
    defparam sub_2562_add_2_6.INIT0 = 16'h5999;
    defparam sub_2562_add_2_6.INIT1 = 16'h5999;
    defparam sub_2562_add_2_6.INJECT1_0 = "NO";
    defparam sub_2562_add_2_6.INJECT1_1 = "NO";
    CCU2D add_224_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(y_cnt[0]), .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n37780), 
          .S1(n2021[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(244[20:25])
    defparam add_224_1.INIT0 = 16'hF000;
    defparam add_224_1.INIT1 = 16'h5555;
    defparam add_224_1.INJECT1_0 = "NO";
    defparam add_224_1.INJECT1_1 = "NO";
    LUT4 i3_4_lut_adj_217 (.A(cnt[0]), .B(n40875), .C(n91), .D(n40336), 
         .Z(n8_adj_1487)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((D)+!B)) */ ;
    defparam i3_4_lut_adj_217.init = 16'hffb3;
    LUT4 i37902_4_lut (.A(n43333), .B(n43236), .C(n43207), .D(cnt[3]), 
         .Z(n40875)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i37902_4_lut.init = 16'hfaea;
    LUT4 i6_4_lut_adj_218 (.A(x_cnt_c[5]), .B(n12_adj_1490), .C(x_cnt_c[4]), 
         .D(x_cnt_c[1]), .Z(n13630)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i6_4_lut_adj_218.init = 16'hfffe;
    CCU2D sub_2562_add_2_4 (.A0(cnt_delay[2]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[3]), .B1(num_delay[3]), .C1(GND_net), 
          .D1(GND_net), .CIN(n37792), .COUT(n37793));
    defparam sub_2562_add_2_4.INIT0 = 16'h5555;
    defparam sub_2562_add_2_4.INIT1 = 16'h5999;
    defparam sub_2562_add_2_4.INJECT1_0 = "NO";
    defparam sub_2562_add_2_4.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_219 (.A(n43361), .B(cnt[6]), .C(n43211), .D(n43469), 
         .Z(n91)) /* synthesis lut_function=(!(A (B+!(D))+!A (B (C)+!B !((D)+!C)))) */ ;
    defparam i1_4_lut_adj_219.init = 16'h3705;
    PFUMX i39517 (.BLUT(n42688), .ALUT(n42687), .C0(n43029), .Z(n42689));
    LUT4 i1_4_lut_adj_220 (.A(n43209), .B(n43368), .C(n94), .D(n4_adj_1491), 
         .Z(n40336)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_220.init = 16'hc444;
    L6MUX21 i38191 (.D0(n41151), .D1(n41152), .SD(x_cnt_c[1]), .Z(n41167));
    LUT4 select_1220_Select_7_i1_2_lut (.A(data_reg[7]), .B(n1489), .Z(n1_adj_1488)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam select_1220_Select_7_i1_2_lut.init = 16'h8888;
    LUT4 i37906_4_lut (.A(n43210), .B(n43264), .C(cnt[0]), .D(n40891), 
         .Z(n40881)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;
    defparam i37906_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_221 (.A(cnt[1]), .B(cnt[2]), .C(cnt[3]), .D(cnt[0]), 
         .Z(n40129)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam i1_4_lut_adj_221.init = 16'h5004;
    LUT4 i7_4_lut (.A(n13), .B(n40734), .C(n43186), .D(n26114), .Z(n16_adj_1485)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'hbfff;
    LUT4 i5_4_lut_adj_222 (.A(x_cnt_c[2]), .B(x_cnt_c[7]), .C(x_cnt_c[3]), 
         .D(x_cnt_c[6]), .Z(n12_adj_1490)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i5_4_lut_adj_222.init = 16'hfffe;
    LUT4 n41915_bdd_4_lut_4_lut (.A(n43143), .B(n8_adj_1492), .C(n8_adj_1493), 
         .D(x_cnt[0]), .Z(n42788)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam n41915_bdd_4_lut_4_lut.init = 16'h4450;
    LUT4 i22882_4_lut_4_lut (.A(n43143), .B(n43153), .C(n43338), .D(n3032[1]), 
         .Z(n14_adj_1494)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i22882_4_lut_4_lut.init = 16'h5140;
    LUT4 i3_4_lut_adj_223 (.A(n26775), .B(n26502), .C(n14096), .D(n1_adj_1495), 
         .Z(n12_adj_1486)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i3_4_lut_adj_223.init = 16'hff7f;
    LUT4 i23301_4_lut_4_lut (.A(n43143), .B(n43153), .C(n43301), .D(n2967[2]), 
         .Z(n14_adj_1496)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i23301_4_lut_4_lut.init = 16'h5140;
    PFUMX i39514 (.BLUT(n42685), .ALUT(n42684), .C0(n43029), .Z(n42686));
    LUT4 i38258_4_lut_4_lut (.A(n43143), .B(\decade[3] ), .C(n8_adj_1453), 
         .D(n42010), .Z(n41234)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i38258_4_lut_4_lut.init = 16'h7340;
    LUT4 i38257_4_lut_4_lut (.A(n43143), .B(\decade[3] ), .C(n8_adj_1450), 
         .D(n41297), .Z(n41233)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i38257_4_lut_4_lut.init = 16'h7340;
    L6MUX21 i39510 (.D0(n42678), .D1(n42676), .SD(n43043), .Z(n42679));
    LUT4 i23036_2_lut (.A(y_cnt[2]), .B(y_cnt[3]), .Z(n3006[1])) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam i23036_2_lut.init = 16'h4444;
    LUT4 select_1220_Select_0_i1_2_lut (.A(data_reg[0]), .B(n1489), .Z(n1_adj_1495)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam select_1220_Select_0_i1_2_lut.init = 16'h8888;
    LUT4 i23292_4_lut_4_lut (.A(n43143), .B(n43153), .C(n3045[6]), .D(n3032[5]), 
         .Z(n14_adj_1390)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i23292_4_lut_4_lut.init = 16'h5140;
    LUT4 i38262_4_lut_4_lut (.A(n43143), .B(\decade[3] ), .C(n8_adj_1497), 
         .D(n41310), .Z(n41238)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i38262_4_lut_4_lut.init = 16'h7340;
    CCU2D sub_2562_add_2_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[1]), .B1(num_delay[1]), .C1(GND_net), 
          .D1(GND_net), .COUT(n37792));
    defparam sub_2562_add_2_2.INIT0 = 16'h0000;
    defparam sub_2562_add_2_2.INIT1 = 16'h5999;
    defparam sub_2562_add_2_2.INJECT1_0 = "NO";
    defparam sub_2562_add_2_2.INJECT1_1 = "NO";
    LUT4 Mux_413_i4_3_lut_4_lut_4_lut (.A(n44471), .B(n2980[1]), .C(\realv_5[0] ), 
         .D(n43354), .Z(n4_adj_47)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam Mux_413_i4_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i38261_4_lut_4_lut (.A(n43143), .B(\decade[3] ), .C(n3032[5]), 
         .D(n41949), .Z(n41237)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i38261_4_lut_4_lut.init = 16'h7340;
    LUT4 i38338_3_lut_4_lut_4_lut (.A(n44471), .B(n2980[1]), .C(n43153), 
         .D(n43354), .Z(n41314)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i38338_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i38019_3_lut_4_lut_4_lut (.A(n44471), .B(n2980[1]), .C(n43036), 
         .D(n43354), .Z(n40995)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i38019_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i38213_3_lut_4_lut_4_lut (.A(n44471), .B(n2980[1]), .C(n43049), 
         .D(n43354), .Z(n41189)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i38213_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 i38259_4_lut_4_lut (.A(n43143), .B(\decade[3] ), .C(n8_adj_1451), 
         .D(n41303), .Z(n41235)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i38259_4_lut_4_lut.init = 16'h7340;
    LUT4 i38087_3_lut_4_lut_4_lut (.A(n44471), .B(n2980[1]), .C(n43026), 
         .D(n43354), .Z(n41063)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C (D))+!B ((D)+!C)))) */ ;
    defparam i38087_3_lut_4_lut_4_lut.init = 16'h0c5c;
    LUT4 realv_4_1__bdd_3_lut_39622_4_lut (.A(n43342), .B(y_cnt[3]), .C(n43327), 
         .D(n43049), .Z(n42834)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam realv_4_1__bdd_3_lut_39622_4_lut.init = 16'hf066;
    LUT4 n4_bdd_3_lut_4_lut (.A(n43342), .B(y_cnt[3]), .C(n43327), .D(n43153), 
         .Z(n41974)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam n4_bdd_3_lut_4_lut.init = 16'hf066;
    LUT4 Mux_405_i5_3_lut_4_lut (.A(n43342), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n43327), .Z(n5_adj_55)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam Mux_405_i5_3_lut_4_lut.init = 16'hf606;
    PFUMX i39508 (.BLUT(n1_c), .ALUT(n42677), .C0(n43042), .Z(n42678));
    LUT4 realv_2_1__bdd_3_lut_39429_4_lut (.A(n43342), .B(y_cnt[3]), .C(n43327), 
         .D(n43026), .Z(n42591)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam realv_2_1__bdd_3_lut_39429_4_lut.init = 16'hf066;
    LUT4 realv_3_1__bdd_3_lut_39513_4_lut (.A(n43342), .B(y_cnt[3]), .C(n43327), 
         .D(n43036), .Z(n42684)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam realv_3_1__bdd_3_lut_39513_4_lut.init = 16'hf066;
    LUT4 mux_2853_i1_3_lut (.A(cnt[2]), .B(cnt[0]), .C(cnt[3]), .Z(n26763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam mux_2853_i1_3_lut.init = 16'hcaca;
    LUT4 i37915_2_lut_4_lut (.A(n43402), .B(n43401), .C(n13901), .D(cnt[6]), 
         .Z(n40153)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i37915_2_lut_4_lut.init = 16'h0001;
    LUT4 i22887_4_lut (.A(n2834), .B(n43295), .C(n43104), .D(\ctrlword_595_3[13] ), 
         .Z(n3720[1])) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[9] 576[16])
    defparam i22887_4_lut.init = 16'hc044;
    LUT4 i1_3_lut_rep_556_4_lut (.A(cnt_scan[0]), .B(n43326), .C(n40398), 
         .D(clk_in_c_enable_1), .Z(clk_in_c_enable_136)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(216[7] 583[17])
    defparam i1_3_lut_rep_556_4_lut.init = 16'hf800;
    LUT4 i11472_2_lut_rep_584_3_lut_4_lut (.A(y_cnt[2]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[0]), .Z(n43301)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C (D)+!C !(D))))) */ ;
    defparam i11472_2_lut_rep_584_3_lut_4_lut.init = 16'h0f1e;
    L6MUX21 i38148 (.D0(n41122), .D1(n41123), .SD(n43030), .Z(n41124));
    LUT4 i1_2_lut_4_lut_adj_224 (.A(n43144), .B(n43148), .C(\decade[3] ), 
         .D(n43321), .Z(n3_c)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_2_lut_4_lut_adj_224.init = 16'h0100;
    LUT4 n5_bdd_2_lut_39022_4_lut (.A(n3006[10]), .B(n43327), .C(n43153), 
         .D(n43154), .Z(n41913)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam n5_bdd_2_lut_39022_4_lut.init = 16'hca00;
    LUT4 decade_2__bdd_3_lut_39058 (.A(n43153), .B(n2913), .C(n2967[2]), 
         .Z(n41965)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam decade_2__bdd_3_lut_39058.init = 16'he4e4;
    LUT4 i38931_4_lut (.A(rst_n_in_c), .B(state[0]), .C(state[2]), .D(state[1]), 
         .Z(clk_in_c_enable_121)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;
    defparam i38931_4_lut.init = 16'hf577;
    LUT4 i1_2_lut_rep_578 (.A(x_cnt[0]), .B(n13630), .Z(n43295)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_rep_578.init = 16'heeee;
    LUT4 i22924_2_lut_3_lut (.A(x_cnt[0]), .B(n13630), .C(high_word), 
         .Z(n3840[0])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i22924_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i37696_2_lut_3_lut_4_lut (.A(x_cnt[0]), .B(n13630), .C(state[0]), 
         .D(cnt_scan[0]), .Z(n40658)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i37696_2_lut_3_lut_4_lut.init = 16'he000;
    PFUMX i38175 (.BLUT(n2532), .ALUT(n2531), .C0(x_cnt[0]), .Z(n41151));
    L6MUX21 i39008 (.D0(n41942), .D1(n41940), .SD(n43148), .Z(n41943));
    LUT4 n1_bdd_4_lut_4_lut (.A(n43149), .B(n8_adj_1419), .C(n8_adj_1499), 
         .D(x_cnt[0]), .Z(n42011)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam n1_bdd_4_lut_4_lut.init = 16'h4450;
    LUT4 i38461_3_lut_4_lut_4_lut (.A(n43149), .B(n7_adj_1500), .C(\unit[3] ), 
         .D(n8_adj_1473), .Z(n41287)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38461_3_lut_4_lut_4_lut.init = 16'h5c0c;
    PFUMX i38176 (.BLUT(n2530), .ALUT(n2529), .C0(x_cnt[0]), .Z(n41152));
    LUT4 i1_2_lut_rep_553_3_lut (.A(x_cnt[0]), .B(n13630), .C(cnt_scan[0]), 
         .Z(n43270)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_rep_553_3_lut.init = 16'he0e0;
    PFUMX i39506 (.BLUT(n2_adj_1364), .ALUT(n42675), .C0(n43042), .Z(n42676));
    LUT4 i38905_4_lut (.A(rst_n_in_c), .B(n12_adj_1501), .C(state[2]), 
         .D(state[1]), .Z(n17079)) /* synthesis lut_function=((B (C (D))+!B (C+!(D)))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i38905_4_lut.init = 16'hf577;
    LUT4 i1_4_lut_adj_225 (.A(n43257), .B(data_reg[1]), .C(n40441), .D(n1489), 
         .Z(n4_adj_1484)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_4_lut_adj_225.init = 16'hcd05;
    LUT4 i1_2_lut_3_lut_adj_226 (.A(x_cnt[0]), .B(n13630), .C(high_word), 
         .Z(n38142)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i1_2_lut_3_lut_adj_226.init = 16'h1e1e;
    LUT4 i34252_4_lut (.A(cnt_write[4]), .B(cnt_write[3]), .C(cnt_write[0]), 
         .D(n43376), .Z(DA_LCD_N_1249[4])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(81[12:21])
    defparam i34252_4_lut.init = 16'h6aaa;
    LUT4 i23332_1_lut_rep_551_2_lut (.A(x_cnt[0]), .B(n13630), .Z(n43268)) /* synthesis lut_function=(!(A+(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i23332_1_lut_rep_551_2_lut.init = 16'h1111;
    LUT4 i38310_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1446), 
         .D(n40994), .Z(n41286)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38310_4_lut_4_lut.init = 16'h7340;
    LUT4 i38309_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1448), 
         .D(n40991), .Z(n41285)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38309_4_lut_4_lut.init = 16'h7340;
    PFUMX i38178 (.BLUT(n2526), .ALUT(n2525), .C0(x_cnt[0]), .Z(n41154));
    LUT4 i37728_2_lut_3_lut (.A(x_cnt[0]), .B(n13630), .C(cnt_scan[1]), 
         .Z(n40693)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(238[13:23])
    defparam i37728_2_lut_3_lut.init = 16'hfefe;
    LUT4 i38308_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n3032[5]), 
         .D(n40988), .Z(n41284)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38308_4_lut_4_lut.init = 16'h7340;
    LUT4 i5_3_lut_adj_227 (.A(n26508), .B(n10_adj_1502), .C(n26238), .Z(n26842)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i5_3_lut_adj_227.init = 16'h8080;
    LUT4 i38304_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1437), 
         .D(n7_adj_1376), .Z(n41280)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38304_4_lut_4_lut.init = 16'h7340;
    LUT4 i38303_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1439), 
         .D(n7_adj_1375), .Z(n41279)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38303_4_lut_4_lut.init = 16'h7340;
    LUT4 i38302_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1442), 
         .D(n7_adj_1374), .Z(n41278)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38302_4_lut_4_lut.init = 16'h7340;
    LUT4 i1_4_lut_adj_228 (.A(n40402), .B(clk_in_c_enable_1), .C(n40398), 
         .D(n4_adj_1503), .Z(clk_in_c_enable_36)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_228.init = 16'hc0c4;
    PFUMX i39119 (.BLUT(n42127), .ALUT(n42126), .C0(cnt[2]), .Z(n42128));
    FD1P3IX data_reg_i0_i6 (.D(n2_adj_1414), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i6.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i7 (.D(n2_adj_1396), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i7.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i8 (.D(n2_adj_1380), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i8.GSR = "DISABLED";
    LUT4 i4_4_lut_adj_229 (.A(n43208), .B(n43190), .C(n14189), .D(n26326), 
         .Z(n10_adj_1502)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4_4_lut_adj_229.init = 16'h8000;
    FD1P3AX cnt_main__i1 (.D(n38322), .SP(clk_in_c_enable_96), .CK(clk_in_c), 
            .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_main__i1.GSR = "DISABLED";
    FD1P3AX state__i1 (.D(n41927), .SP(clk_in_c_enable_128), .CK(clk_in_c), 
            .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i1.GSR = "DISABLED";
    FD1P3AX state__i2 (.D(n21[2]), .SP(clk_in_c_enable_98), .CK(clk_in_c), 
            .Q(state[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i2.GSR = "DISABLED";
    FD1P3IX cnt_i0_i1 (.D(n2_adj_1392), .SP(clk_in_c_enable_102), .CD(n17001), 
            .CK(clk_in_c), .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i1.GSR = "DISABLED";
    FD1P3AX cnt_scan__i1 (.D(n39783), .SP(clk_in_c_enable_100), .CK(clk_in_c), 
            .Q(cnt_scan[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i1.GSR = "DISABLED";
    FD1P3IX cnt_i0_i2 (.D(n2_adj_1400), .SP(clk_in_c_enable_102), .CD(n17001), 
            .CK(clk_in_c), .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i2.GSR = "DISABLED";
    FD1P3IX cnt_i0_i3 (.D(n2_adj_1401), .SP(clk_in_c_enable_102), .CD(n17001), 
            .CK(clk_in_c), .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i3.GSR = "DISABLED";
    FD1P3IX cnt_write__i1 (.D(DA_LCD_N_1249[1]), .SP(clk_in_c_enable_121), 
            .CD(n17079), .CK(clk_in_c), .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i1.GSR = "DISABLED";
    FD1P3AX cnt_i0_i4 (.D(n40307), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i4.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_230 (.A(cnt_scan[0]), .B(cnt_scan[1]), .Z(n4_adj_1503)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_adj_230.init = 16'hbbbb;
    LUT4 i38301_4_lut_4_lut (.A(n43149), .B(\unit[3] ), .C(n8_adj_1444), 
         .D(n7_adj_1373), .Z(n41277)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i38301_4_lut_4_lut.init = 16'h7340;
    FD1P3IX cnt_write__i2 (.D(DA_LCD_N_1249[2]), .SP(clk_in_c_enable_121), 
            .CD(n17079), .CK(clk_in_c), .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i2.GSR = "DISABLED";
    FD1P3AX cnt_i0_i5 (.D(n40308), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i5.GSR = "DISABLED";
    L6MUX21 i38212 (.D0(n41186), .D1(n41187), .SD(n43030), .Z(n41188));
    FD1P3IX cnt_write__i3 (.D(DA_LCD_N_1249[3]), .SP(clk_in_c_enable_121), 
            .CD(n17079), .CK(clk_in_c), .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i3.GSR = "DISABLED";
    FD1P3AX cnt_i0_i6 (.D(n40309), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i6.GSR = "DISABLED";
    FD1P3AX cnt_i0_i7 (.D(n40310), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i7.GSR = "DISABLED";
    FD1P3AX cnt_i0_i8 (.D(n40311), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i8.GSR = "DISABLED";
    FD1P3AX cnt_i0_i9 (.D(n40312), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i9.GSR = "DISABLED";
    FD1P3AX cnt_i0_i10 (.D(n40313), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[10])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i10.GSR = "DISABLED";
    FD1P3AX cnt_i0_i11 (.D(n40314), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i11.GSR = "DISABLED";
    FD1P3AX cnt_i0_i12 (.D(n40315), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i12.GSR = "DISABLED";
    FD1P3AX cnt_i0_i13 (.D(n40316), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i13.GSR = "DISABLED";
    FD1P3AX cnt_i0_i14 (.D(n40317), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i14.GSR = "DISABLED";
    FD1P3AX cnt_i0_i15 (.D(n40318), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i15.GSR = "DISABLED";
    FD1P3AX RST_LCD_548 (.D(n20), .SP(clk_in_c_enable_118), .CK(clk_in_c), 
            .Q(RST_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam RST_LCD_548.GSR = "DISABLED";
    FD1P3AX CLK_LCD_553 (.D(CLK_LCD_N_1257), .SP(clk_in_c_enable_119), .CK(clk_in_c), 
            .Q(CLK_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam CLK_LCD_553.GSR = "DISABLED";
    FD1P3AX DC_LCD_552 (.D(data_reg[8]), .SP(clk_in_c_enable_120), .CK(clk_in_c), 
            .Q(DC_LCD_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam DC_LCD_552.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_231 (.A(state[0]), .B(cnt_scan[2]), .Z(n40402)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_231.init = 16'hdddd;
    LUT4 i6466_3_lut (.A(n9181), .B(n43355), .C(y_cnt[3]), .Z(n9212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i6466_3_lut.init = 16'hcaca;
    LUT4 Mux_407_i2_3_lut (.A(n2903[7]), .B(n2973), .C(\realv_5[0] ), 
         .Z(n2_adj_56)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_580 (.A(cnt[6]), .B(n13901), .Z(n43297)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_580.init = 16'heeee;
    LUT4 i2_4_lut_adj_232 (.A(n26081), .B(n40384), .C(n8_adj_1505), .D(n43206), 
         .Z(n8_adj_1483)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i2_4_lut_adj_232.init = 16'hfdff;
    LUT4 Mux_407_i4_3_lut (.A(n2980[7]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_57)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_407_i5_3_lut (.A(n3006[7]), .B(n3019[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_58)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_407_i5_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_233 (.A(n14279), .B(data_reg[2]), .C(n26062), .D(n1489), 
         .Z(n8_adj_1505)) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i3_4_lut_adj_233.init = 16'hdf5f;
    LUT4 i2_3_lut_rep_425_4_lut (.A(n43153), .B(n43154), .C(\decade[3] ), 
         .D(n43148), .Z(n43142)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i2_3_lut_rep_425_4_lut.init = 16'hfffe;
    LUT4 i2_4_lut_adj_234 (.A(n14253), .B(n38363), .C(n14099), .D(n14128), 
         .Z(n40384)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i2_4_lut_adj_234.init = 16'hdfff;
    LUT4 Mux_323_i1_3_lut (.A(n2886), .B(n43355), .C(\realv_5[0] ), .Z(n1_adj_59)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam Mux_323_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_519_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(cnt[4]), 
         .D(cnt[5]), .Z(n43236)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_519_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_545_3_lut (.A(cnt[6]), .B(n13901), .C(cnt[5]), .Z(n43262)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_545_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_520_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(cnt[4]), 
         .D(cnt[5]), .Z(n43237)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_520_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_4_lut_adj_235 (.A(n26140), .B(data_reg[4]), .C(n14189), .D(n1489), 
         .Z(n6_adj_1482)) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i1_4_lut_adj_235.init = 16'hdf5f;
    LUT4 Mux_406_i4_3_lut (.A(n2980[8]), .B(n2993[8]), .C(\realv_5[0] ), 
         .Z(n4_adj_60)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_406_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_406_i5_3_lut (.A(n3006[8]), .B(n2903[7]), .C(\realv_5[0] ), 
         .Z(n5_adj_61)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_406_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_405_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(\realv_5[0] ), 
         .Z(n4_adj_62)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_405_i4_3_lut.init = 16'hcaca;
    PFUMX i39006 (.BLUT(n9204), .ALUT(n41941), .C0(n43154), .Z(n41942));
    LUT4 i6_4_lut_adj_236 (.A(n43186), .B(n14128), .C(n14251), .D(n43196), 
         .Z(n15_adj_1480)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut_adj_236.init = 16'h8000;
    LUT4 i7_4_lut_adj_237 (.A(n14254), .B(n26502), .C(n14276), .D(n10_adj_1399), 
         .Z(n16_adj_1481)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut_adj_237.init = 16'h8000;
    LUT4 i1_2_lut_rep_547_3_lut (.A(cnt[6]), .B(n13901), .C(cnt[4]), .Z(n43264)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_547_3_lut.init = 16'hefef;
    LUT4 i2_2_lut_rep_515_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(cnt[3]), 
         .D(cnt[4]), .Z(n43232)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i2_2_lut_rep_515_3_lut_4_lut.init = 16'hefff;
    LUT4 Mux_412_i4_3_lut (.A(n2980[1]), .B(n2993[2]), .C(\realv_5[0] ), 
         .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_412_i4_3_lut.init = 16'hcaca;
    LUT4 i2_2_lut_rep_516_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(cnt[5]), 
         .D(cnt[4]), .Z(n43233)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i2_2_lut_rep_516_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_rep_524_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(n43369), 
         .D(cnt[4]), .Z(n43241)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_524_3_lut_4_lut.init = 16'hfeff;
    LUT4 Mux_411_i2_3_lut (.A(n2903[3]), .B(n2967[2]), .C(\realv_5[0] ), 
         .Z(n2_adj_63)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i2_3_lut.init = 16'hcaca;
    LUT4 i21_3_lut (.A(n2898), .B(n2993[3]), .C(\realv_5[0] ), .Z(n4_adj_64)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam i21_3_lut.init = 16'hcaca;
    LUT4 Mux_411_i5_3_lut (.A(n3006[3]), .B(n3019[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_65)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_411_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i1_3_lut (.A(n2884), .B(n2898), .C(\realv_5[0] ), .Z(n1_adj_66)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i1_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i2_3_lut (.A(n2903[4]), .B(n2967[4]), .C(\realv_5[0] ), 
         .Z(n2_adj_67)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i2_3_lut.init = 16'hcaca;
    CCU2D add_475_17 (.A0(cnt_delay[15]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n37791), .S0(n3996[15]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_17.INIT0 = 16'h5aaa;
    defparam add_475_17.INIT1 = 16'h0000;
    defparam add_475_17.INJECT1_0 = "NO";
    defparam add_475_17.INJECT1_1 = "NO";
    LUT4 Mux_410_i4_3_lut (.A(n2898), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_68)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_410_i5_3_lut (.A(n3032[5]), .B(n3019[4]), .C(\realv_5[0] ), 
         .Z(n5_adj_69)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_410_i5_3_lut.init = 16'hcaca;
    LUT4 Mux_409_i2_3_lut (.A(n2903[5]), .B(n2967[4]), .C(\realv_5[0] ), 
         .Z(n2_adj_70)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i2_3_lut.init = 16'hcaca;
    LUT4 Mux_409_i4_3_lut (.A(n2980[5]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_71)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_409_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i2_3_lut (.A(n2903[6]), .B(n2973), .C(\realv_5[0] ), 
         .Z(n2_adj_72)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i2_3_lut.init = 16'hcaca;
    LUT4 i22816_3_lut (.A(n43339), .B(n43321), .C(x_cnt[0]), .Z(n13_adj_1522)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(85[12:17])
    defparam i22816_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i4_3_lut (.A(n2980[6]), .B(n2993[5]), .C(\realv_5[0] ), 
         .Z(n4_adj_73)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i4_3_lut.init = 16'hcaca;
    LUT4 Mux_408_i5_3_lut (.A(n3006[6]), .B(n3045[3]), .C(\realv_5[0] ), 
         .Z(n5_adj_74)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(502[10] 538[19])
    defparam Mux_408_i5_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_706 (.A(y_cnt[3]), .B(y_cnt[2]), .Z(n44471)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam i1_2_lut_rep_706.init = 16'hdddd;
    LUT4 i7112_2_lut (.A(x_cnt[0]), .B(x_cnt_c[1]), .Z(n9885)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7112_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_517_3_lut_4_lut (.A(cnt[6]), .B(n13901), .C(cnt[4]), 
         .D(n43315), .Z(n43234)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(199[16:18])
    defparam i1_2_lut_rep_517_3_lut_4_lut.init = 16'hffef;
    LUT4 i1_4_lut_adj_238 (.A(cnt_init[0]), .B(n13711), .C(num_delay[3]), 
         .D(n43399), .Z(n38_adj_1525)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;
    defparam i1_4_lut_adj_238.init = 16'h5444;
    LUT4 i1_4_lut_adj_239 (.A(n43199), .B(n13695), .C(num_delay[3]), .D(n43198), 
         .Z(n13711)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_239.init = 16'hc088;
    PFUMX i38146 (.BLUT(n41118), .ALUT(n41119), .C0(n43029), .Z(n41122));
    LUT4 i2_3_lut_rep_540_4_lut (.A(n43402), .B(n13901), .C(n43401), .D(cnt[3]), 
         .Z(n43257)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i2_3_lut_rep_540_4_lut.init = 16'hfeff;
    LUT4 i2_3_lut_4_lut_adj_240 (.A(n43402), .B(n13901), .C(cnt[6]), .D(n8_adj_1369), 
         .Z(n26919)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i2_3_lut_4_lut_adj_240.init = 16'hfffe;
    LUT4 i1_4_lut_adj_241 (.A(n40156), .B(n43337), .C(state[0]), .D(n43267), 
         .Z(n24[1])) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_241.init = 16'hccc8;
    LUT4 n1_bdd_3_lut_adj_242 (.A(n43153), .B(n2980[1]), .C(n2993[2]), 
         .Z(n41967)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_adj_242.init = 16'he4e4;
    LUT4 i1_4_lut_adj_243 (.A(state_back[1]), .B(cnt_init[0]), .C(n40), 
         .D(n37_adj_1526), .Z(n40156)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_adj_243.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_244 (.A(state_back[1]), .B(n43399), .C(n13695), 
         .D(n43275), .Z(n37_adj_1526)) /* synthesis lut_function=(A (B+(C))+!A !((D)+!C)) */ ;
    defparam i1_4_lut_adj_244.init = 16'ha8f8;
    LUT4 mux_379_Mux_4_i7_3_lut (.A(n44510), .B(n44508), .C(n44506), .Z(n7_c)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(492[41:46])
    defparam mux_379_Mux_4_i7_3_lut.init = 16'hc2c2;
    LUT4 i1_3_lut_adj_245 (.A(n38363), .B(cnt[0]), .C(n42128), .Z(n40520)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_3_lut_adj_245.init = 16'heaea;
    L6MUX21 i39488 (.D0(n42653), .D1(n42651), .SD(n43029), .Z(n42654));
    LUT4 i8_4_lut_adj_246 (.A(n40747), .B(n2387), .C(n12_adj_1527), .D(n26238), 
         .Z(n18_adj_1528)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i8_4_lut_adj_246.init = 16'hfdff;
    LUT4 i2_4_lut_adj_247 (.A(n26074), .B(n26508), .C(n40825), .D(n8_adj_1371), 
         .Z(n12_adj_1527)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i2_4_lut_adj_247.init = 16'hff7f;
    LUT4 i37855_4_lut (.A(n43449), .B(n43184), .C(cnt[5]), .D(n40477), 
         .Z(n40825)) /* synthesis lut_function=(A (B ((D)+!C))) */ ;
    defparam i37855_4_lut.init = 16'h8808;
    LUT4 i38038_3_lut (.A(n9196), .B(n2903[6]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n41014)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38038_3_lut.init = 16'hcaca;
    LUT4 i38037_3_lut (.A(n1_adj_54), .B(n2903[5]), .C(\ctrlword_595_4_15__N_622[1] ), 
         .Z(n41013)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38037_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_248 (.A(cnt_init[0]), .B(num_delay[1]), .C(n37_adj_1529), 
         .D(n40), .Z(n40166)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i1_4_lut_adj_248.init = 16'hdc50;
    PFUMX i39486 (.BLUT(n9164), .ALUT(n42652), .C0(n43030), .Z(n42653));
    CCU2D add_475_15 (.A0(cnt_delay[13]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[14]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37790), .COUT(n37791), .S0(n3996[13]), 
          .S1(n3996[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_15.INIT0 = 16'h5aaa;
    defparam add_475_15.INIT1 = 16'h5aaa;
    defparam add_475_15.INJECT1_0 = "NO";
    defparam add_475_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_249 (.A(x_cnt[0]), .B(data_r[91]), .Z(n10)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_249.init = 16'h8888;
    LUT4 i1_4_lut_adj_250 (.A(n1586[1]), .B(num_delay[1]), .C(n13695), 
         .D(n43399), .Z(n37_adj_1529)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_250.init = 16'heca0;
    PFUMX i38147 (.BLUT(n41120), .ALUT(n41121), .C0(n43029), .Z(n41123));
    PFUMX i39483 (.BLUT(n42650), .ALUT(n42649), .C0(n43030), .Z(n42651));
    LUT4 i1_2_lut_rep_523_3_lut_4_lut (.A(n43402), .B(n13901), .C(n43359), 
         .D(cnt[3]), .Z(n43240)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_rep_523_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_525_3_lut_4_lut (.A(n43402), .B(n13901), .C(n43401), 
         .D(cnt[3]), .Z(n43242)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_rep_525_3_lut_4_lut.init = 16'hfffe;
    L6MUX21 i39479 (.D0(n42647), .D1(n42645), .SD(n43029), .Z(n42648));
    LUT4 i1_2_lut_rep_521_3_lut_4_lut (.A(n43402), .B(n13901), .C(cnt[6]), 
         .D(cnt[3]), .Z(n43238)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_rep_521_3_lut_4_lut.init = 16'hffef;
    LUT4 i4_2_lut (.A(n40857), .B(n40547), .Z(n14_adj_1530)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i4_2_lut.init = 16'hdddd;
    PFUMX i39477 (.BLUT(n9164), .ALUT(n42646), .C0(n43030), .Z(n42647));
    LUT4 i23850_4_lut (.A(n26165), .B(n11_adj_1477), .C(n26781), .D(x_cnt[0]), 
         .Z(n9944)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam i23850_4_lut.init = 16'h5f77;
    LUT4 i37886_4_lut (.A(n14099), .B(n26114), .C(n26046), .D(n40640), 
         .Z(n40857)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i37886_4_lut.init = 16'h8000;
    LUT4 i3_4_lut_adj_251 (.A(n40841), .B(cnt[4]), .C(n26326), .D(n14130), 
         .Z(n40547)) /* synthesis lut_function=(!(A (B (C (D))+!B (C)))) */ ;
    defparam i3_4_lut_adj_251.init = 16'h5fdf;
    PFUMX i38210 (.BLUT(n41182), .ALUT(n41183), .C0(n43029), .Z(n41186));
    PFUMX i39475 (.BLUT(n42644), .ALUT(n42643), .C0(n43030), .Z(n42645));
    LUT4 i6420_3_lut (.A(n9163), .B(n43355), .C(y_cnt[3]), .Z(n9164)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i6420_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n43222), .B(n13392), .C(n43345), .D(n26919), 
         .Z(n37984)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd0c0;
    FD1P3AX cnt_write__i0 (.D(n40452), .SP(clk_in_c_enable_121), .CK(clk_in_c), 
            .Q(cnt_write[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_write__i0.GSR = "DISABLED";
    LUT4 i37870_4_lut (.A(n40819), .B(n38271), .C(cnt[5]), .D(n43239), 
         .Z(n40841)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i37870_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_685 (.A(cnt[5]), .B(cnt[4]), .Z(n43402)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_685.init = 16'heeee;
    FD1P3AX cnt_scan__i0 (.D(n22[0]), .SP(clk_in_c_enable_122), .CK(clk_in_c), 
            .Q(cnt_scan[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_scan__i0.GSR = "DISABLED";
    PFUMX i38211 (.BLUT(n41184), .ALUT(n41185), .C0(n43029), .Z(n41187));
    FD1P3AX cnt_main__i0 (.D(n25[0]), .SP(clk_in_c_enable_123), .CK(clk_in_c), 
            .Q(cnt_main[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_main__i0.GSR = "DISABLED";
    FD1P3IX data_reg_i0_i0 (.D(n15326), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i0.GSR = "DISABLED";
    FD1P3IX data_r_i0_i89 (.D(n26731), .SP(clk_in_c_enable_129), .CD(n17001), 
            .CK(clk_in_c), .Q(data_r[89])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i89.GSR = "DISABLED";
    FD1P3AX cnt_i0_i0 (.D(n40306), .SP(clk_in_c_enable_126), .CK(clk_in_c), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_i0_i0.GSR = "DISABLED";
    FD1P3IX data_r_i0_i76 (.D(n26733), .SP(clk_in_c_enable_129), .CD(n17001), 
            .CK(clk_in_c), .Q(data_r[76])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i76.GSR = "DISABLED";
    FD1P3AX state__i0 (.D(n21[0]), .SP(clk_in_c_enable_128), .CK(clk_in_c), 
            .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam state__i0.GSR = "DISABLED";
    FD1P3IX data_r_i0_i75 (.D(n26735), .SP(clk_in_c_enable_129), .CD(n17001), 
            .CK(clk_in_c), .Q(data_r[75])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_r_i0_i75.GSR = "DISABLED";
    FD1P3IX x_cnt__i7 (.D(n3422[7]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i7.GSR = "DISABLED";
    FD1P3IX x_cnt__i6 (.D(n3422[6]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i6.GSR = "DISABLED";
    FD1P3IX x_cnt__i5 (.D(n3422[5]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i5.GSR = "DISABLED";
    FD1P3IX x_cnt__i4 (.D(n3422[4]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i4.GSR = "DISABLED";
    FD1P3IX x_cnt__i3 (.D(n3422[3]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i3.GSR = "DISABLED";
    FD1P3IX x_cnt__i2 (.D(n3422[2]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i2.GSR = "DISABLED";
    FD1P3IX x_cnt__i1 (.D(n3422[1]), .SP(clk_in_c_enable_136), .CD(n24880), 
            .CK(clk_in_c), .Q(x_cnt_c[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam x_cnt__i1.GSR = "DISABLED";
    LUT4 i29393_i12_4_lut (.A(n3226[87]), .B(n3_adj_75), .C(x_cnt[0]), 
         .D(n43205), .Z(n12_adj_1382)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i29393_i12_4_lut.init = 16'hca0a;
    FD1P3IX num_delay_i15 (.D(n6668), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i15.GSR = "DISABLED";
    LUT4 i38830_4_lut (.A(\ctrlword_595_3[13] ), .B(clk_in_c_enable_129), 
         .C(n43205), .D(state[2]), .Z(clk_in_c_enable_65)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i38830_4_lut.init = 16'hcc4c;
    LUT4 i2_4_lut_adj_252 (.A(n43381), .B(n44476), .C(state[2]), .D(n40658), 
         .Z(clk_in_c_enable_129)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i2_4_lut_adj_252.init = 16'hc8c0;
    LUT4 i22879_4_lut_4_lut (.A(n43033), .B(n43049), .C(n43338), .D(n3032[1]), 
         .Z(n14_adj_76)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i22879_4_lut_4_lut.init = 16'h5140;
    LUT4 i22875_4_lut_4_lut (.A(n43033), .B(n43049), .C(n43301), .D(n2967[2]), 
         .Z(n14_adj_77)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i22875_4_lut_4_lut.init = 16'h5140;
    LUT4 Mux_260_i15_4_lut (.A(n42506), .B(n8_adj_1535), .C(n43019), .D(n43018), 
         .Z(n2244)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i15_4_lut.init = 16'h0aca;
    LUT4 i29_4_lut (.A(n43321), .B(data_r[89]), .C(x_cnt[0]), .D(hundreds_1__N_558), 
         .Z(n12)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29_4_lut.init = 16'hcac0;
    PFUMX i39728 (.BLUT(n43420), .ALUT(n43421), .C0(y_cnt[3]), .Z(n43422));
    FD1P3IX y_cnt__i1_rep_723 (.D(n2021[1]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(n44508)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i1_rep_723.GSR = "DISABLED";
    LUT4 Mux_260_i8_3_lut (.A(n3032[5]), .B(n3045[5]), .C(n43026), .Z(n8_adj_1535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_259_i15_4_lut (.A(n42528), .B(n8_adj_1536), .C(n43019), .D(n43018), 
         .Z(n2243)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_259_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_259_i8_3_lut (.A(n3032[5]), .B(n3045[6]), .C(n43026), .Z(n8_adj_1536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_259_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_404_i7_3_lut_4_lut (.A(n43156), .B(n43290), .C(n43155), .D(n6), 
         .Z(n7_adj_1500)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_404_i7_3_lut_4_lut.init = 16'hf404;
    FD1P3IX data_reg_i0_i1 (.D(n2_adj_1409), .SP(clk_in_c_enable_139), .CD(n17001), 
            .CK(clk_in_c), .Q(data_reg[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam data_reg_i0_i1.GSR = "DISABLED";
    LUT4 Mux_412_i8_3_lut_4_lut (.A(n43344), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2967[2]), .Z(n8_adj_1419)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_412_i8_3_lut_4_lut.init = 16'h6f60;
    FD1P3IX num_delay_i14 (.D(n6666), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i14.GSR = "DISABLED";
    FD1P3IX num_delay_i11 (.D(n39573), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[11])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i11.GSR = "DISABLED";
    FD1P3IX num_delay_i9 (.D(n40155), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[9])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i9.GSR = "DISABLED";
    LUT4 i23009_3_lut_4_lut_4_lut (.A(cnt_main[0]), .B(cnt_main[1]), .C(n43345), 
         .D(rst_n_in_c), .Z(n25[0])) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(118[7] 123[16])
    defparam i23009_3_lut_4_lut_4_lut.init = 16'hd000;
    FD1P3IX num_delay_i8 (.D(n40165), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[8])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i8.GSR = "DISABLED";
    FD1P3IX num_delay_i7 (.D(n39575), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i7.GSR = "DISABLED";
    LUT4 Mux_263_i8_3_lut_4_lut (.A(n43344), .B(y_cnt[3]), .C(n43026), 
         .D(n2967[2]), .Z(n8_adj_1538)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_263_i8_3_lut_4_lut.init = 16'h6f60;
    FD1P3IX num_delay_i6 (.D(n6650), .SP(clk_in_c_enable_145), .CD(n17116), 
            .CK(clk_in_c), .Q(num_delay[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i6.GSR = "DISABLED";
    FD1P3JX num_delay_i5 (.D(num_delay_15__N_1066[5]), .SP(clk_in_c_enable_147), 
            .PD(n43408), .CK(clk_in_c), .Q(num_delay[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i5.GSR = "DISABLED";
    LUT4 i23105_4_lut (.A(cnt[5]), .B(n43316), .C(n40477), .D(n4_adj_1479), 
         .Z(n26114)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i23105_4_lut.init = 16'hfac8;
    FD1P3JX num_delay_i4 (.D(num_delay_15__N_1066[4]), .SP(clk_in_c_enable_147), 
            .PD(n43408), .CK(clk_in_c), .Q(num_delay[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i4.GSR = "DISABLED";
    FD1P3AX num_delay_i3 (.D(num_delay_15__N_803[3]), .SP(clk_in_c_enable_148), 
            .CK(clk_in_c), .Q(num_delay[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam num_delay_i3.GSR = "DISABLED";
    FD1P3IX cnt_delay__i15 (.D(n3996[15]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[15])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i15.GSR = "DISABLED";
    FD1P3IX cnt_delay__i14 (.D(n3996[14]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[14])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i14.GSR = "DISABLED";
    LUT4 i23037_4_lut (.A(n14028), .B(n43215), .C(n43216), .D(n26095), 
         .Z(n26046)) /* synthesis lut_function=(A (B+!(D))+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i23037_4_lut.init = 16'hc8fa;
    FD1P3IX cnt_delay__i13 (.D(n3996[13]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[13])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i13.GSR = "DISABLED";
    LUT4 i23086_2_lut (.A(cnt[3]), .B(cnt[1]), .Z(n26095)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23086_2_lut.init = 16'h8888;
    LUT4 Mux_384_i8_3_lut_4_lut (.A(n43413), .B(y_cnt[3]), .C(n43153), 
         .D(n2967[4]), .Z(n8_adj_1497)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_384_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_406_i8_3_lut_4_lut (.A(n43413), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n2967[4]), .Z(n8_adj_1448)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_406_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_257_i8_3_lut_4_lut (.A(n43413), .B(y_cnt[3]), .C(n43026), 
         .D(n2967[4]), .Z(n8_adj_1539)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_257_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_279_i8_3_lut_4_lut (.A(n43413), .B(y_cnt[3]), .C(n43036), 
         .D(n2967[4]), .Z(n8_adj_1425)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_279_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_301_i8_3_lut_4_lut (.A(n43413), .B(y_cnt[3]), .C(n43049), 
         .D(n2967[4]), .Z(n8_adj_1381)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_301_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 i1_4_lut_adj_253 (.A(n43266), .B(n43267), .C(n43227), .D(n1489), 
         .Z(n34)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i1_4_lut_adj_253.init = 16'hcccd;
    LUT4 i37641_4_lut_then_2_lut (.A(n40453), .B(cnt[1]), .Z(n43448)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i37641_4_lut_then_2_lut.init = 16'hbbbb;
    LUT4 Mux_258_i15_4_lut (.A(n42552), .B(n3032[5]), .C(n43019), .D(n43018), 
         .Z(n2242)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_258_i15_4_lut.init = 16'h0aca;
    LUT4 i37641_4_lut_else_2_lut (.A(cnt[2]), .B(n43359), .C(cnt[1]), 
         .D(n43298), .Z(n43447)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i37641_4_lut_else_2_lut.init = 16'hffef;
    LUT4 Mux_257_i15_4_lut (.A(n41150), .B(n8_adj_1539), .C(n43019), .D(n43018), 
         .Z(n2241)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_257_i15_4_lut.init = 16'h0aca;
    LUT4 i23620_4_lut_4_lut (.A(n43033), .B(n43049), .C(n3045[6]), .D(n3032[5]), 
         .Z(n14_adj_78)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam i23620_4_lut_4_lut.init = 16'h5140;
    PFUMX i39465 (.BLUT(n42632), .ALUT(n42628), .C0(n43023), .Z(n42633));
    LUT4 i23130_4_lut_4_lut (.A(n43368), .B(n43367), .C(n43274), .D(n14279), 
         .Z(n26140)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(D))) */ ;
    defparam i23130_4_lut_4_lut.init = 16'h7f00;
    LUT4 i1_2_lut_2_lut (.A(cnt_main[0]), .B(cnt_main[1]), .Z(n12_adj_1387)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(118[7] 123[16])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 mux_356_Mux_5_i15_3_lut_4_lut (.A(n44510), .B(n43346), .C(n44505), 
         .D(n43355), .Z(n2884)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_356_Mux_5_i15_3_lut_4_lut.init = 16'hf202;
    PFUMX i39463 (.BLUT(n42688), .ALUT(n42630), .C0(n43029), .Z(n42631));
    LUT4 i6457_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(n43153), .D(n43411), 
         .Z(n9203)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6457_3_lut_4_lut.init = 16'hf202;
    LUT4 i6427_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(n43049), .D(n43411), 
         .Z(n9171)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6427_3_lut_4_lut.init = 16'hf202;
    LUT4 i6436_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(\realv_5[0] ), 
         .D(n43411), .Z(n9181)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6436_3_lut_4_lut.init = 16'hf202;
    LUT4 i6403_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(n43020), .D(n43411), 
         .Z(n9147)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6403_3_lut_4_lut.init = 16'hf202;
    LUT4 i6411_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(n43026), .D(n43411), 
         .Z(n9155)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6411_3_lut_4_lut.init = 16'hf202;
    LUT4 i6419_3_lut_4_lut (.A(y_cnt[0]), .B(n43346), .C(n43036), .D(n43411), 
         .Z(n9163)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6419_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_254 (.A(n43368), .B(n43369), .C(n43262), 
         .D(cnt[4]), .Z(n14276)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_254.init = 16'hfffd;
    PFUMX i39459 (.BLUT(n42626), .ALUT(n42625), .C0(n43023), .Z(n42627));
    LUT4 i6998_3_lut_4_lut (.A(n43412), .B(y_cnt[2]), .C(n43153), .D(n43355), 
         .Z(n9753)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6998_3_lut_4_lut.init = 16'h2f20;
    LUT4 i6934_3_lut_4_lut (.A(n43412), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n43355), .Z(n9684)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i6934_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7304_3_lut_4_lut (.A(n43412), .B(y_cnt[2]), .C(n43049), .D(n43355), 
         .Z(n10142)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7304_3_lut_4_lut.init = 16'h2f20;
    LUT4 mux_379_Mux_1_i15_3_lut_4_lut (.A(n43412), .B(n44506), .C(y_cnt[3]), 
         .D(n43411), .Z(n3032[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_379_Mux_1_i15_3_lut_4_lut.init = 16'h2f20;
    LUT4 mux_356_Mux_3_i15_3_lut_4_lut (.A(n43412), .B(n44506), .C(n44505), 
         .D(n43411), .Z(n2886)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam mux_356_Mux_3_i15_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_2_lut_adj_255 (.A(cnt[5]), .B(cnt[4]), .Z(n14213)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(173[16:18])
    defparam i1_2_lut_adj_255.init = 16'hdddd;
    LUT4 i7373_3_lut_4_lut (.A(n43412), .B(y_cnt[2]), .C(n43026), .D(n43355), 
         .Z(n10211)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7373_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7341_3_lut_4_lut (.A(n43412), .B(y_cnt[2]), .C(n43036), .D(n43355), 
         .Z(n10179)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(451[41:46])
    defparam i7341_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_382_i8_3_lut_4_lut (.A(n43353), .B(y_cnt[3]), .C(n43153), 
         .D(n3032[1]), .Z(n8_adj_1492)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_382_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_404_i8_3_lut_4_lut (.A(n43353), .B(y_cnt[3]), .C(\realv_5[0] ), 
         .D(n3032[1]), .Z(n8_adj_1473)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam Mux_404_i8_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_413_i8_3_lut_4_lut_4_lut (.A(y_cnt[3]), .B(n3032[1]), .C(\realv_5[0] ), 
         .D(n43346), .Z(n8_adj_1499)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_413_i8_3_lut_4_lut_4_lut.init = 16'h5c0c;
    LUT4 i2_3_lut_4_lut_adj_256 (.A(n44505), .B(n43352), .C(n44506), .D(n43354), 
         .Z(n26165)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_3_lut_4_lut_adj_256.init = 16'hffef;
    LUT4 Mux_263_i15_4_lut (.A(n42578), .B(n8_adj_1538), .C(n43019), .D(n43018), 
         .Z(n2247)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_263_i15_4_lut.init = 16'h0aca;
    LUT4 i23374_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n43352), .B(n43260), .C(n42794), 
         .D(n43323), .Z(n11906)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam i23374_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 n330_bdd_2_lut_39218_3_lut_3_lut_4_lut_4_lut (.A(n43352), .B(n43260), 
         .C(n42184), .D(n43323), .Z(n42185)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam n330_bdd_2_lut_39218_3_lut_3_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 Mux_262_i15_4_lut (.A(n41264), .B(n8_adj_1541), .C(n43019), .D(n43018), 
         .Z(n2246)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_262_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_262_i8_3_lut (.A(n2967[4]), .B(n3045[3]), .C(n43026), .Z(n8_adj_1541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_262_i8_3_lut.init = 16'hcaca;
    LUT4 i23538_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n43352), .B(n43260), .C(data_r[76]), 
         .D(n43323), .Z(n3226[76])) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam i23538_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 i38897_2_lut_rep_474_3_lut_3_lut_4_lut_4_lut (.A(n43352), .B(n43260), 
         .C(hundreds_1__N_558), .D(n43323), .Z(n43191)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C (D))+!B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(553[18:20])
    defparam i38897_2_lut_rep_474_3_lut_3_lut_4_lut_4_lut.init = 16'h7030;
    LUT4 Mux_383_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(n43153), .Z(n8_adj_1493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_383_i8_3_lut.init = 16'hcaca;
    LUT4 Mux_261_i15_4_lut (.A(n42613), .B(n8_adj_1542), .C(n43019), .D(n43018), 
         .Z(n2245)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_261_i15_4_lut.init = 16'h0aca;
    LUT4 i23041_4_lut_4_lut (.A(n43368), .B(n43238), .C(n43215), .D(n14028), 
         .Z(n26050)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B+(D))) */ ;
    defparam i23041_4_lut_4_lut.init = 16'hf5c4;
    LUT4 i38030_4_lut (.A(n43205), .B(n41093), .C(x_cnt_c[2]), .D(n15_adj_1372), 
         .Z(n41006)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i38030_4_lut.init = 16'h8a80;
    LUT4 i2_3_lut_rep_546_4_lut_4_lut (.A(n43368), .B(n43367), .C(n13901), 
         .D(cnt[6]), .Z(n43263)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i2_3_lut_rep_546_4_lut_4_lut.init = 16'hfff7;
    L6MUX21 i39449 (.D0(n42612), .D1(n42609), .SD(n43025), .Z(n42613));
    LUT4 i37849_2_lut_4_lut_4_lut (.A(n43368), .B(n14213), .C(n43297), 
         .D(n43367), .Z(n40819)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i37849_2_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_522_4_lut_4_lut (.A(n43368), .B(cnt[4]), .C(n43297), 
         .D(n43367), .Z(n43239)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_2_lut_rep_522_4_lut_4_lut.init = 16'hf7ff;
    LUT4 i38817_3_lut_4_lut_4_lut (.A(n43368), .B(n26775), .C(n43241), 
         .D(cnt[5]), .Z(n40843)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;
    defparam i38817_3_lut_4_lut_4_lut.init = 16'h333b;
    LUT4 i7374_3_lut (.A(n7_c), .B(n10211), .C(y_cnt[3]), .Z(n8_adj_1542)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i7374_3_lut.init = 16'hcaca;
    LUT4 i38029_4_lut (.A(n41017), .B(n42186), .C(x_cnt_c[2]), .D(n43205), 
         .Z(n41005)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i38029_4_lut.init = 16'hcac0;
    LUT4 i38501_3_lut (.A(n41005), .B(n41006), .C(x_cnt_c[3]), .Z(n41007)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38501_3_lut.init = 16'hcaca;
    PFUMX i39447 (.BLUT(n42611), .ALUT(n42610), .C0(n43024), .Z(n42612));
    PFUMX i39443 (.BLUT(n42608), .ALUT(n42607), .C0(n43024), .Z(n42609));
    LUT4 i9_4_lut_adj_257 (.A(n40520), .B(n18_adj_1528), .C(n14_adj_1530), 
         .D(n40843), .Z(n40554)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut_adj_257.init = 16'hfffe;
    LUT4 i1_4_lut_adj_258 (.A(n43267), .B(num_delay[3]), .C(n38_adj_1525), 
         .D(n40), .Z(n40185)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_258.init = 16'hfefa;
    LUT4 Mux_256_i15_4_lut (.A(n42597), .B(n8_adj_1543), .C(n43019), .D(n43018), 
         .Z(n2240)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_256_i15_4_lut.init = 16'h0aca;
    LUT4 Mux_256_i8_3_lut (.A(n2967[2]), .B(n3045[9]), .C(n43026), .Z(n8_adj_1543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_256_i8_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_259 (.A(cnt_write[4]), .B(n43375), .C(state[0]), 
         .D(state[2]), .Z(n12_adj_1501)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C+(D))) */ ;
    defparam i1_3_lut_4_lut_adj_259.init = 16'hf7f0;
    LUT4 i38980_3_lut_4_lut (.A(cnt_write[4]), .B(n43375), .C(state[1]), 
         .D(n40450), .Z(n40452)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (C+(D)))) */ ;
    defparam i38980_3_lut_4_lut.init = 16'h0007;
    FD1P3IX cnt_delay__i12 (.D(n3996[12]), .SP(clk_in_c_enable_152), .CD(n17098), 
            .CK(clk_in_c), .Q(cnt_delay[12])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam cnt_delay__i12.GSR = "DISABLED";
    LUT4 i38142_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(n43036), .D(n2886), 
         .Z(n41118)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i38142_3_lut_4_lut.init = 16'h8f80;
    LUT4 i38282_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(n43026), .D(n2886), 
         .Z(n41258)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i38282_3_lut_4_lut.init = 16'h8f80;
    LUT4 i38070_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(n43049), .D(n2886), 
         .Z(n41046)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i38070_3_lut_4_lut.init = 16'h8f80;
    LUT4 i38315_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(n43153), .D(n2886), 
         .Z(n41291)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i38315_3_lut_4_lut.init = 16'h8f80;
    LUT4 i38249_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(n43020), .D(n2886), 
         .Z(n41225)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i38249_3_lut_4_lut.init = 16'h8f80;
    LUT4 Mux_328_i1_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), .C(\realv_5[0] ), 
         .D(n2886), .Z(n1_adj_79)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam Mux_328_i1_3_lut_4_lut.init = 16'h8f80;
    LUT4 i38948_2_lut_rep_488_2_lut_3_lut_3_lut_4_lut (.A(y_cnt[3]), .B(n43355), 
         .C(n43260), .D(n43352), .Z(n43205)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;
    defparam i38948_2_lut_rep_488_2_lut_3_lut_3_lut_4_lut.init = 16'h0f8f;
    L6MUX21 i39435 (.D0(n42596), .D1(n42593), .SD(n43024), .Z(n42597));
    LUT4 i38837_2_lut_rep_568_2_lut_3_lut (.A(n44505), .B(n43355), .C(n43352), 
         .Z(n43285)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i38837_2_lut_rep_568_2_lut_3_lut.init = 16'h0808;
    LUT4 decade_2__bdd_3_lut_39031_4_lut (.A(n43410), .B(n43379), .C(n3006[2]), 
         .D(n43153), .Z(n41964)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam decade_2__bdd_3_lut_39031_4_lut.init = 16'h22f0;
    LUT4 Mux_412_i5_3_lut_4_lut (.A(n43410), .B(n43379), .C(\realv_5[0] ), 
         .D(n3006[2]), .Z(n5_adj_46)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_412_i5_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i38028 (.D0(n41002), .D1(n41003), .SD(x_cnt_c[1]), .Z(n41004));
    L6MUX21 i38054 (.D0(n41028), .D1(n41029), .SD(x_cnt_c[1]), .Z(n41030));
    LUT4 realv_2_2__bdd_3_lut_39411_4_lut (.A(n43410), .B(n43379), .C(n3006[2]), 
         .D(n43026), .Z(n42573)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_2_2__bdd_3_lut_39411_4_lut.init = 16'h22f0;
    LUT4 realv_4_2__bdd_3_lut_39615_4_lut (.A(n43410), .B(n43379), .C(n3006[2]), 
         .D(n43049), .Z(n42824)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_4_2__bdd_3_lut_39615_4_lut.init = 16'h22f0;
    LUT4 Mux_285_i5_3_lut_4_lut (.A(n43410), .B(n43379), .C(n43036), .D(n3006[2]), 
         .Z(n5_adj_80)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_285_i5_3_lut_4_lut.init = 16'h2f20;
    PFUMX i39433 (.BLUT(n42595), .ALUT(n42594), .C0(n43025), .Z(n42596));
    LUT4 Mux_241_i2_3_lut (.A(n2913), .B(n2967[2]), .C(n43020), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(249[10] 265[19])
    defparam Mux_241_i2_3_lut.init = 16'hcaca;
    PFUMX i39004 (.BLUT(n41939), .ALUT(n41938), .C0(n43154), .Z(n41940));
    LUT4 i23065_3_lut (.A(n26062), .B(cnt[4]), .C(n14130), .Z(n26074)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i23065_3_lut.init = 16'ha8a8;
    LUT4 mux_375_Mux_1_i15_3_lut_4_lut (.A(n44506), .B(n43354), .C(n44505), 
         .D(n43344), .Z(n2980[1])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_375_Mux_1_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i3_3_lut_4_lut (.A(state[1]), .B(n43394), .C(n2014), .D(n2021[0]), 
         .Z(n38598)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i3_3_lut_4_lut.init = 16'h0200;
    LUT4 realv_3_1__bdd_3_lut_39512_4_lut (.A(n43412), .B(n43379), .C(n3006[1]), 
         .D(n43036), .Z(n42587)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam realv_3_1__bdd_3_lut_39512_4_lut.init = 16'h22f0;
    LUT4 Mux_404_i5_3_lut_4_lut (.A(n43412), .B(n43379), .C(\realv_5[0] ), 
         .D(n3006[10]), .Z(n5_adj_81)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam Mux_404_i5_3_lut_4_lut.init = 16'h2f20;
    PFUMX i39430 (.BLUT(n42592), .ALUT(n42591), .C0(n43025), .Z(n42593));
    LUT4 Mux_302_i15_4_lut_4_lut (.A(n43033), .B(n43034), .C(n3032[5]), 
         .D(n42800), .Z(n2526)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_302_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i38339_3_lut_4_lut (.A(n43412), .B(n43379), .C(n43153), .D(n3006[1]), 
         .Z(n41315)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam i38339_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_305_i15_4_lut_4_lut (.A(n43033), .B(n43034), .C(n8_adj_1370), 
         .D(n42873), .Z(n2529)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_305_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 n1_bdd_3_lut_39400_4_lut (.A(n43412), .B(n43379), .C(n3006[10]), 
         .D(n43026), .Z(n42517)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam n1_bdd_3_lut_39400_4_lut.init = 16'h22f0;
    LUT4 i1_4_lut_adj_260 (.A(n1_adj_1365), .B(n43214), .C(n2_c), .D(n43041), 
         .Z(data_r_131__N_1113[114])) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_260.init = 16'hc088;
    PFUMX i39427 (.BLUT(n42589), .ALUT(n42586), .C0(n43023), .Z(n42590));
    LUT4 mux_2853_i7_4_lut (.A(cnt[0]), .B(cnt[3]), .C(cnt[1]), .D(cnt[2]), 
         .Z(n5274[6])) /* synthesis lut_function=(!(A (B (C)+!B !(C+!(D)))+!A (B (C)+!B !(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(222[10] 235[19])
    defparam mux_2853_i7_4_lut.init = 16'h3d3e;
    PFUMX i39425 (.BLUT(n40995), .ALUT(n42587), .C0(n43029), .Z(n42588));
    LUT4 i2_3_lut_3_lut (.A(state[1]), .B(state_back[1]), .C(state[0]), 
         .Z(n8_adj_1398)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_2_lut_adj_261 (.A(state[1]), .B(cnt_init[2]), .Z(n6_c)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_2_lut_adj_261.init = 16'hdddd;
    LUT4 i1_4_lut_4_lut_adj_262 (.A(state[1]), .B(state[0]), .C(n3994), 
         .D(n23), .Z(n40225)) /* synthesis lut_function=(!(A+(B (C)+!B !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_4_lut_4_lut_adj_262.init = 16'h1504;
    L6MUX21 i39422 (.D0(n42582), .D1(n42580), .SD(n43029), .Z(n42583));
    LUT4 i2_2_lut_3_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main[0]), .C(n43345), 
         .D(rst_n_in_c), .Z(n38322)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_2_lut_3_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_rep_588_2_lut (.A(cnt_main[1]), .B(cnt_main[0]), .Z(n43305)) /* synthesis lut_function=(!(A+!(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_588_2_lut.init = 16'h4444;
    LUT4 i38331_3_lut (.A(n3006[8]), .B(n2903[7]), .C(n43153), .Z(n41307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38331_3_lut.init = 16'hcaca;
    LUT4 i38330_3_lut (.A(n2980[8]), .B(n2993[8]), .C(n43153), .Z(n41306)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38330_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_rep_635 (.A(y_cnt_c[4]), .B(y_cnt_c[6]), .C(y_cnt_c[5]), 
         .D(y_cnt_c[7]), .Z(n43352)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(544[18:19])
    defparam i3_4_lut_rep_635.init = 16'hfffe;
    LUT4 i9725_2_lut_rep_636 (.A(n44508), .B(n44506), .Z(n43353)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam i9725_2_lut_rep_636.init = 16'h6666;
    LUT4 mux_374_Mux_2_i15_3_lut_3_lut (.A(n44508), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n2967[2])) /* synthesis lut_function=(!(A (B)+!A (B (C)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam mux_374_Mux_2_i15_3_lut_3_lut.init = 16'h3636;
    PFUMX i39420 (.BLUT(n1_adj_1547), .ALUT(n42581), .C0(n43030), .Z(n42582));
    LUT4 i23071_2_lut_rep_593_3_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(y_cnt[3]), 
         .Z(n43310)) /* synthesis lut_function=(!(A (B+(C))+!A ((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(495[41:46])
    defparam i23071_2_lut_rep_593_3_lut.init = 16'h0606;
    LUT4 i38328_3_lut (.A(n2886), .B(n43355), .C(n43153), .Z(n41304)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38328_3_lut.init = 16'hcaca;
    PFUMX i40266 (.BLUT(n44453), .ALUT(n2967[4]), .C0(n43020), .Z(n44454));
    L6MUX21 i38158 (.D0(n41132), .D1(n41133), .SD(n43042), .Z(n41134));
    PFUMX i38026 (.BLUT(n40998), .ALUT(n40999), .C0(x_cnt[0]), .Z(n41002));
    LUT4 Mux_306_i15_4_lut_4_lut (.A(n43033), .B(n43034), .C(n8), .D(n41052), 
         .Z(n2530)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_306_i15_4_lut_4_lut.init = 16'h7340;
    LUT4 i2_3_lut_3_lut_adj_263 (.A(x_cnt[0]), .B(n43321), .C(n43012), 
         .Z(n38403)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_3_lut_adj_263.init = 16'h4040;
    LUT4 i1_2_lut_rep_637 (.A(n44510), .B(n44508), .Z(n43354)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_637.init = 16'h8888;
    LUT4 i15_3_lut_rep_622_4_lut (.A(n44510), .B(n44508), .C(n44506), 
         .D(n44505), .Z(n43339)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)+!C !(D)))+!A (C (D)+!C !(D)))) */ ;
    defparam i15_3_lut_rep_622_4_lut.init = 16'h07f8;
    LUT4 Mux_304_i15_4_lut_4_lut (.A(n43033), .B(n43034), .C(n8_adj_1548), 
         .D(n42679), .Z(n2528)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i15_4_lut_4_lut.init = 16'h7340;
    PFUMX i39418 (.BLUT(n2_adj_1549), .ALUT(n42579), .C0(n43030), .Z(n42580));
    LUT4 mux_376_Mux_2_i15_3_lut_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[3]), 
         .D(y_cnt[2]), .Z(n2993[2])) /* synthesis lut_function=(!(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam mux_376_Mux_2_i15_3_lut_4_lut.init = 16'h08f8;
    LUT4 i38318_3_lut (.A(n3006[3]), .B(n3019[3]), .C(n43153), .Z(n41294)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38318_3_lut.init = 16'hcaca;
    LUT4 i38317_3_lut (.A(n2898), .B(n2993[3]), .C(n43153), .Z(n41293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38317_3_lut.init = 16'hcaca;
    LUT4 i38909_3_lut_rep_638 (.A(n44510), .B(n44508), .C(n44506), .Z(n43355)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i38909_3_lut_rep_638.init = 16'h1010;
    LUT4 i38911_2_lut_rep_606_4_lut (.A(y_cnt[0]), .B(y_cnt[1]), .C(y_cnt[2]), 
         .D(y_cnt[3]), .Z(n43323)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i38911_2_lut_rep_606_4_lut.init = 16'h1000;
    PFUMX i28_adj_264 (.BLUT(n4_adj_1461), .ALUT(n7_adj_1434), .C0(x_cnt_c[3]), 
          .Z(n11_adj_1550));
    LUT4 i38316_3_lut (.A(n2903[3]), .B(n2967[2]), .C(n43153), .Z(n41292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38316_3_lut.init = 16'hcaca;
    LUT4 Mux_260_i1_3_lut (.A(n2884), .B(n2898), .C(n43026), .Z(n1_adj_1551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam Mux_260_i1_3_lut.init = 16'hcaca;
    PFUMX i38027 (.BLUT(n41000), .ALUT(n41001), .C0(x_cnt[0]), .Z(n41003));
    LUT4 i1_2_lut_rep_641 (.A(cnt[0]), .B(cnt[2]), .Z(n43358)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(225[16:17])
    defparam i1_2_lut_rep_641.init = 16'heeee;
    LUT4 y_cnt_2__bdd_4_lut (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt[0]), .Z(n2980[6])) /* synthesis lut_function=(!(A (B+!(C (D)))+!A (B (C+(D))+!B !(C)))) */ ;
    defparam y_cnt_2__bdd_4_lut.init = 16'h3014;
    LUT4 i1_2_lut_rep_642 (.A(cnt[0]), .B(cnt[6]), .Z(n43359)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(208[16:18])
    defparam i1_2_lut_rep_642.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_462_3_lut_4_lut (.A(cnt[0]), .B(cnt[6]), .C(n40520), 
         .D(n43257), .Z(n43179)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(208[16:18])
    defparam i1_2_lut_rep_462_3_lut_4_lut.init = 16'hf0f4;
    LUT4 i37884_2_lut_4_lut (.A(n26140), .B(n43193), .C(n26074), .D(n40839), 
         .Z(n40855)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i37884_2_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_rep_456 (.A(n44476), .B(state[2]), .C(n26859), .D(n40627), 
         .Z(clk_in_c_enable_139)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(83[12:17])
    defparam i1_4_lut_rep_456.init = 16'h888a;
    LUT4 n41044_bdd_4_lut_39073 (.A(n7_adj_1552), .B(n43048), .C(\realv_5[3] ), 
         .D(n8_adj_1499), .Z(n41982)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam n41044_bdd_4_lut_39073.init = 16'hca0a;
    LUT4 n43_bdd_2_lut_39002 (.A(cnt_main[1]), .B(state[0]), .Z(n41924)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam n43_bdd_2_lut_39002.init = 16'h4444;
    LUT4 i1_2_lut_rep_644 (.A(cnt[3]), .B(cnt[1]), .Z(n43361)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_644.init = 16'hbbbb;
    PFUMX i38052 (.BLUT(n41024), .ALUT(n41025), .C0(x_cnt[0]), .Z(n41028));
    LUT4 i1_2_lut_3_lut_4_lut_adj_265 (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), 
         .D(cnt[0]), .Z(n40484)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_265.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_266 (.A(cnt[3]), .B(cnt[1]), .C(cnt[2]), 
         .D(cnt[0]), .Z(n40414)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_266.init = 16'hbfff;
    LUT4 i1_2_lut_rep_599_3_lut (.A(cnt[3]), .B(cnt[1]), .C(cnt[0]), .Z(n43316)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_rep_599_3_lut.init = 16'hbfbf;
    LUT4 i3_4_lut_adj_267 (.A(n43321), .B(n43023), .C(n43030), .D(n43022), 
         .Z(n2380)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i3_4_lut_adj_267.init = 16'h0002;
    PFUMX i38053 (.BLUT(n41026), .ALUT(n41027), .C0(x_cnt[0]), .Z(n41029));
    LUT4 n26613_bdd_4_lut_39461_4_lut (.A(n43036), .B(n43293), .C(n43030), 
         .D(n43015), .Z(n42626)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam n26613_bdd_4_lut_39461_4_lut.init = 16'h4f40;
    LUT4 Mux_383_i4_3_lut (.A(n2980[9]), .B(n2993[8]), .C(n43153), .Z(n4_adj_1383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_383_i4_3_lut.init = 16'hcaca;
    L6MUX21 i39416 (.D0(n42577), .D1(n42575), .SD(n43025), .Z(n42578));
    LUT4 i1_2_lut_3_lut_adj_268 (.A(state[1]), .B(rst_n_in_c), .C(state[2]), 
         .Z(n17001)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_3_lut_adj_268.init = 16'h8080;
    LUT4 i37662_2_lut_rep_648 (.A(state[2]), .B(\ctrlword_595_3[13] ), .Z(n43365)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i37662_2_lut_rep_648.init = 16'heeee;
    LUT4 i1_2_lut_rep_497_3_lut_4_lut (.A(state[2]), .B(\ctrlword_595_3[13] ), 
         .C(n43260), .D(n7_adj_1417), .Z(n43214)) /* synthesis lut_function=(!(A+(B+!((D)+!C)))) */ ;
    defparam i1_2_lut_rep_497_3_lut_4_lut.init = 16'h1101;
    PFUMX i39414 (.BLUT(n42595), .ALUT(n42576), .C0(n43024), .Z(n42577));
    LUT4 i23140_2_lut_rep_650 (.A(cnt[0]), .B(cnt[2]), .Z(n43367)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23140_2_lut_rep_650.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(cnt[0]), .B(cnt[2]), .C(n13901), 
         .D(cnt[6]), .Z(n4_adj_1491)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'h0008;
    PFUMX i39412 (.BLUT(n42574), .ALUT(n42573), .C0(n43024), .Z(n42575));
    LUT4 i1_2_lut_3_lut_adj_270 (.A(cnt[0]), .B(cnt[2]), .C(cnt[1]), .Z(n14028)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_270.init = 16'hf7f7;
    LUT4 i38868_2_lut_rep_651 (.A(cnt[3]), .B(cnt[1]), .Z(n43368)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i38868_2_lut_rep_651.init = 16'h1111;
    LUT4 n13178_bdd_3_lut (.A(n13178), .B(x_cnt[0]), .C(n43321), .Z(n41984)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam n13178_bdd_3_lut.init = 16'h4040;
    LUT4 n43322_bdd_3_lut_4_lut (.A(n44505), .B(n44506), .C(n44508), .D(n43352), 
         .Z(n43283)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam n43322_bdd_3_lut_4_lut.init = 16'hffdf;
    LUT4 realv_3_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n43036), .B(n9371), .C(n43023), 
         .D(n43021), .Z(\ctrlword_595_5_15__N_646[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam realv_3_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    L6MUX21 i38076 (.D0(n41050), .D1(n41051), .SD(n43042), .Z(n41052));
    LUT4 i1_2_lut_rep_652 (.A(cnt[0]), .B(cnt[2]), .Z(n43369)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(229[16:17])
    defparam i1_2_lut_rep_652.init = 16'hbbbb;
    L6MUX21 i38108 (.D0(n41082), .D1(n41083), .SD(x_cnt_c[2]), .Z(n41084));
    LUT4 y_cnt_0__bdd_4_lut_39766 (.A(n44510), .B(n44505), .C(y_cnt[1]), 
         .D(y_cnt[2]), .Z(n2913)) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam y_cnt_0__bdd_4_lut_39766.init = 16'h1730;
    LUT4 Mux_282_i8_3_lut (.A(n3032[5]), .B(n3045[5]), .C(n43036), .Z(n8_adj_1432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i8_3_lut.init = 16'hcaca;
    LUT4 i3_4_lut_adj_271 (.A(n44505), .B(n43352), .C(n44508), .D(n43407), 
         .Z(n7_adj_1417)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i3_4_lut_adj_271.init = 16'h0200;
    LUT4 i38484_3_lut (.A(n7_adj_1553), .B(n14_adj_1494), .C(\decade[3] ), 
         .Z(n41231)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38484_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_2_lut (.A(cnt[5]), .B(cnt[4]), .Z(n94)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_3_lut_2_lut.init = 16'h9999;
    PFUMX i38156 (.BLUT(n41128), .ALUT(n41129), .C0(n43043), .Z(n41132));
    LUT4 i38960_2_lut_rep_707 (.A(state[1]), .B(state[2]), .Z(n44472)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i38960_2_lut_rep_707.init = 16'hdddd;
    LUT4 i2_3_lut_rep_658 (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[3]), 
         .Z(n43375)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i2_3_lut_rep_658.init = 16'hfefe;
    LUT4 n26029_bdd_3_lut (.A(n43283), .B(n11_adj_1477), .C(x_cnt[0]), 
         .Z(n42456)) /* synthesis lut_function=(!(A (B+(C)))) */ ;
    defparam n26029_bdd_3_lut.init = 16'h5757;
    PFUMX i38157 (.BLUT(n41130), .ALUT(n41131), .C0(n43043), .Z(n41133));
    LUT4 n26029_bdd_4_lut (.A(n26165), .B(n26781), .C(n11_adj_1477), .D(x_cnt[0]), 
         .Z(n42457)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D))))) */ ;
    defparam n26029_bdd_4_lut.init = 16'h5f77;
    PFUMX i39082 (.BLUT(n42029), .ALUT(n2903[8]), .C0(\ctrlword_595_4_15__N_622[1] ), 
          .Z(n42030));
    LUT4 i7143_2_lut (.A(x_cnt[0]), .B(n11_adj_1477), .Z(n9945)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(435[22:27])
    defparam i7143_2_lut.init = 16'h2222;
    PFUMX i38215 (.BLUT(n41189), .ALUT(n41190), .C0(n43043), .Z(n41191));
    LUT4 i1_2_lut_rep_659 (.A(cnt_write[1]), .B(cnt_write[2]), .Z(n43376)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i1_2_lut_rep_659.init = 16'h8888;
    LUT4 i2_3_lut_4_lut_adj_272 (.A(state[1]), .B(n3994), .C(n43403), 
         .D(n3996[0]), .Z(n40304)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_3_lut_4_lut_adj_272.init = 16'h1000;
    LUT4 i1_4_lut_adj_273 (.A(n24328), .B(n43261), .C(n44499), .D(n4_adj_82), 
         .Z(clk_divided_enable_36)) /* synthesis lut_function=(!((B (C (D))+!B (C))+!A)) */ ;
    defparam i1_4_lut_adj_273.init = 16'h0a8a;
    LUT4 i34261_3_lut_4_lut (.A(cnt_write[1]), .B(cnt_write[2]), .C(cnt_write[0]), 
         .D(cnt_write[3]), .Z(DA_LCD_N_1249[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i34261_3_lut_4_lut.init = 16'h7f80;
    LUT4 n41984_bdd_3_lut (.A(n41984), .B(n41983), .C(x_cnt_c[1]), .Z(n41985)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n41984_bdd_3_lut.init = 16'hcaca;
    LUT4 i6412_3_lut (.A(n9155), .B(n43355), .C(y_cnt[3]), .Z(n9156)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i6412_3_lut.init = 16'hcaca;
    LUT4 i4_2_lut_3_lut_4_lut (.A(n43184), .B(n26046), .C(n40849), .D(n2387), 
         .Z(n13)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i4_2_lut_3_lut_4_lut.init = 16'hfff7;
    LUT4 n40503_bdd_4_lut_39050 (.A(n43008), .B(n1978[3]), .C(n43295), 
         .D(cnt_scan[0]), .Z(n41992)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A !((D)+!B)) */ ;
    defparam n40503_bdd_4_lut_39050.init = 16'ha0cc;
    LUT4 i1_2_lut_rep_457_3_lut (.A(n43184), .B(n26046), .C(n2387), .Z(n43174)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_457_3_lut.init = 16'hf7f7;
    LUT4 i6943_2_lut_rep_662 (.A(n44506), .B(y_cnt[3]), .Z(n43379)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam i6943_2_lut_rep_662.init = 16'heeee;
    LUT4 i2_3_lut_4_lut_adj_274 (.A(y_cnt[2]), .B(y_cnt[3]), .C(y_cnt[1]), 
         .D(y_cnt_c[4]), .Z(n38075)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(489[41:46])
    defparam i2_3_lut_4_lut_adj_274.init = 16'hfffe;
    FD1P3IX y_cnt__i2_rep_721 (.D(n2021[2]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(n44506)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i2_rep_721.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_663 (.A(n44508), .B(n44506), .Z(n43380)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_663.init = 16'h2222;
    LUT4 realv_2_1__bdd_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2896), 
         .D(n43026), .Z(n42594)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam realv_2_1__bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 Mux_405_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2896), .Z(n2_adj_83)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_405_i2_3_lut_4_lut.init = 16'h2f20;
    LUT4 Mux_406_i2_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(\realv_5[0] ), 
         .D(n2903[8]), .Z(n2_adj_84)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam Mux_406_i2_3_lut_4_lut.init = 16'h2f20;
    L6MUX21 i39398 (.D0(n42551), .D1(n42549), .SD(n43025), .Z(n42552));
    LUT4 Mux_282_i1_3_lut (.A(n2884), .B(n2898), .C(n43036), .Z(n1_adj_1547)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i1_3_lut.init = 16'hcaca;
    LUT4 realv_3_1__bdd_3_lut_39546_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2896), 
         .D(n43036), .Z(n42687)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam realv_3_1__bdd_3_lut_39546_4_lut.init = 16'h22f0;
    LUT4 Mux_282_i2_3_lut (.A(n2903[5]), .B(n2967[4]), .C(n43036), .Z(n2_adj_1549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_282_i2_3_lut.init = 16'hcaca;
    PFUMX i39396 (.BLUT(n9156), .ALUT(n42550), .C0(n43024), .Z(n42551));
    LUT4 i2_3_lut_4_lut_adj_275 (.A(n43020), .B(n43041), .C(n13_adj_1522), 
         .D(n40652), .Z(n40354)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i2_3_lut_4_lut_adj_275.init = 16'h0010;
    LUT4 i38277_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n43020), .D(n2903[8]), 
         .Z(n41253)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i38277_3_lut_4_lut.init = 16'h2f20;
    LUT4 realv_4_1__bdd_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2896), 
         .D(n43049), .Z(n42837)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam realv_4_1__bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 Mux_284_i8_3_lut (.A(n2967[4]), .B(n3045[3]), .C(n43036), .Z(n8_adj_1431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam Mux_284_i8_3_lut.init = 16'hcaca;
    LUT4 i38169_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n43026), .D(n2903[8]), 
         .Z(n41145)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i38169_3_lut_4_lut.init = 16'h2f20;
    LUT4 i38153_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n43049), .D(n2903[8]), 
         .Z(n41129)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i38153_3_lut_4_lut.init = 16'h2f20;
    LUT4 i7342_3_lut (.A(n7_c), .B(n10179), .C(y_cnt[3]), .Z(n8_adj_1428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(303[10] 339[19])
    defparam i7342_3_lut.init = 16'hcaca;
    LUT4 i38207_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n43036), .D(n2903[8]), 
         .Z(n41183)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i38207_3_lut_4_lut.init = 16'h2f20;
    LUT4 i38329_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n43153), .D(n2903[8]), 
         .Z(n41305)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam i38329_3_lut_4_lut.init = 16'h2f20;
    LUT4 decade_0__bdd_3_lut_4_lut (.A(y_cnt[1]), .B(y_cnt[2]), .C(n2896), 
         .D(n43153), .Z(n42789)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam decade_0__bdd_3_lut_4_lut.init = 16'h22f0;
    LUT4 i20_4_lut (.A(n43266), .B(n43381), .C(state[0]), .D(n43227), 
         .Z(n26859)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i20_4_lut.init = 16'h3f3a;
    LUT4 i38787_2_lut_rep_664 (.A(cnt_scan[2]), .B(cnt_scan[1]), .Z(n43381)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i38787_2_lut_rep_664.init = 16'h1111;
    LUT4 i1_2_lut_rep_575_3_lut_4_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), 
         .C(cnt_scan[0]), .D(state[0]), .Z(n43292)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_rep_575_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_adj_276 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(rst_n_in_c), 
         .Z(n4_adj_1557)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_276.init = 16'he0e0;
    LUT4 i1_2_lut_rep_548_3_lut_4_lut (.A(cnt[5]), .B(cnt[4]), .C(cnt[3]), 
         .D(n13901), .Z(n43265)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_548_3_lut_4_lut.init = 16'hfffe;
    CCU2D add_475_13 (.A0(cnt_delay[11]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_delay[12]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37789), .COUT(n37790), .S0(n3996[11]), 
          .S1(n3996[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(615[20:29])
    defparam add_475_13.INIT0 = 16'h5aaa;
    defparam add_475_13.INIT1 = 16'h5aaa;
    defparam add_475_13.INJECT1_0 = "NO";
    defparam add_475_13.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_277 (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(cnt_scan[0]), 
         .Z(n13392)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_277.init = 16'hfefe;
    LUT4 i1_2_lut_rep_609_3_lut (.A(cnt_scan[2]), .B(cnt_scan[1]), .C(state[0]), 
         .Z(n43326)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_609_3_lut.init = 16'h1010;
    PFUMX i39393 (.BLUT(n42548), .ALUT(n42547), .C0(n43024), .Z(n42549));
    LUT4 i1_2_lut_rep_581_3_lut (.A(cnt[5]), .B(cnt[4]), .C(n13901), .Z(n43298)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_581_3_lut.init = 16'hfefe;
    LUT4 i38854_2_lut_rep_557_3_lut_3_lut_4_lut (.A(cnt[5]), .B(cnt[4]), 
         .C(cnt[6]), .D(n13901), .Z(n43274)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i38854_2_lut_rep_557_3_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_278 (.A(data_r[111]), .B(n40652), .C(data_r[110]), 
         .D(x_cnt[0]), .Z(n40353)) /* synthesis lut_function=(!(A (B+!(C+!(D)))+!A (B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_278.init = 16'h3022;
    LUT4 mux_167_i7_3_lut_4_lut (.A(n1489), .B(n43266), .C(n43218), .D(num_delay[6]), 
         .Z(n1586[6])) /* synthesis lut_function=(A (B (D)+!B ((D)+!C))+!A (B (D)+!B !(C))) */ ;
    defparam mux_167_i7_3_lut_4_lut.init = 16'hef03;
    PFUMX i38074 (.BLUT(n41046), .ALUT(n41047), .C0(n43043), .Z(n41050));
    PFUMX i39071 (.BLUT(n42016), .ALUT(n42011), .C0(\unit[3] ), .Z(n42017));
    LUT4 i37690_2_lut (.A(x_cnt_c[1]), .B(x_cnt_c[2]), .Z(n40652)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i37690_2_lut.init = 16'heeee;
    L6MUX21 i38086 (.D0(n41060), .D1(n41061), .SD(cnt_write[3]), .Z(n41062));
    LUT4 mux_377_Mux_10_i15_3_lut_3_lut (.A(n44508), .B(n44506), .C(n44505), 
         .Z(n3006[10])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(486[41:46])
    defparam mux_377_Mux_10_i15_3_lut_3_lut.init = 16'h3838;
    LUT4 i3_4_lut_adj_279 (.A(\realv_5[0] ), .B(n43056), .C(n43055), .D(\realv_5[3] ), 
         .Z(n13178)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(376[10] 410[19])
    defparam i3_4_lut_adj_279.init = 16'hfffe;
    PFUMX i38075 (.BLUT(n41048), .ALUT(n41049), .C0(n43043), .Z(n41051));
    LUT4 n40503_bdd_4_lut (.A(n26842), .B(n40843), .C(n1489), .D(data_reg[3]), 
         .Z(n41993)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;
    defparam n40503_bdd_4_lut.init = 16'hfddd;
    PFUMX i40017 (.BLUT(n44013), .ALUT(n44012), .C0(x_cnt_c[5]), .Z(n44014));
    PFUMX i40015 (.BLUT(n12932), .ALUT(n44010), .C0(x_cnt_c[3]), .Z(n44011));
    LUT4 i3_4_lut_adj_280 (.A(cnt_write[4]), .B(state[0]), .C(cnt_write[0]), 
         .D(n43403), .Z(clk_in_c_enable_37)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam i3_4_lut_adj_280.init = 16'h1000;
    PFUMX i38107 (.BLUT(n41080), .ALUT(n41081), .C0(x_cnt_c[1]), .Z(n41083));
    LUT4 mux_454_Mux_8_i1_4_lut_4_lut (.A(n43201), .B(n5274[6]), .C(cnt_scan[0]), 
         .D(n43295), .Z(n1_adj_1379)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_8_i1_4_lut_4_lut.init = 16'hf404;
    LUT4 mux_454_Mux_5_i1_4_lut_4_lut (.A(n43201), .B(n5274[4]), .C(cnt_scan[0]), 
         .D(n3720[5]), .Z(n1_adj_1393)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam mux_454_Mux_5_i1_4_lut_4_lut.init = 16'hf404;
    LUT4 i37912_4_lut (.A(n40855), .B(n40642), .C(n14253), .D(n43178), 
         .Z(n40887)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i37912_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_adj_281 (.A(n43201), .B(cnt[3]), .C(cnt[1]), .D(n10471), 
         .Z(n1978[3])) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_281.init = 16'h5140;
    LUT4 i20953_4_lut_4_lut (.A(n43201), .B(cnt_scan[0]), .C(n3720[5]), 
         .D(n40129), .Z(n1_adj_1395)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam i20953_4_lut_4_lut.init = 16'hd1c0;
    LUT4 Mux_330_i7_3_lut_4_lut (.A(n43055), .B(n43290), .C(n43056), .D(n6_adj_85), 
         .Z(n7_adj_1552)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_330_i7_3_lut_4_lut.init = 16'hf404;
    LUT4 i1_4_lut_4_lut_adj_282 (.A(n43201), .B(cnt_scan[0]), .C(n43295), 
         .D(n43381), .Z(n42)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_282.init = 16'hd100;
    LUT4 Mux_321_i7_3_lut_4_lut (.A(n43055), .B(n43290), .C(n43056), .D(n6_adj_86), 
         .Z(n7_adj_1474)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;
    defparam Mux_321_i7_3_lut_4_lut.init = 16'hf404;
    PFUMX i38218 (.BLUT(n41192), .ALUT(n41193), .C0(n43056), .Z(n41194));
    LUT4 i23067_2_lut_rep_461_4_lut (.A(n43197), .B(n43195), .C(cnt[2]), 
         .D(n26046), .Z(n43178)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i23067_2_lut_rep_461_4_lut.init = 16'hca00;
    LUT4 i4_4_lut_adj_283 (.A(n43185), .B(n43179), .C(n8_adj_1560), .D(n14254), 
         .Z(n14_adj_1489)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;
    defparam i4_4_lut_adj_283.init = 16'hfdff;
    LUT4 i3_4_lut_adj_284 (.A(n14276), .B(data_reg[5]), .C(n14190), .D(n1489), 
         .Z(n8_adj_1560)) /* synthesis lut_function=((B ((D)+!C)+!B !(C))+!A) */ ;
    defparam i3_4_lut_adj_284.init = 16'hdf5f;
    LUT4 i2_3_lut_4_lut_adj_285 (.A(cnt[2]), .B(n43197), .C(n14190), .D(n14254), 
         .Z(n26326)) /* synthesis lut_function=(A (B (C (D)))+!A (C (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(183[16:18])
    defparam i2_3_lut_4_lut_adj_285.init = 16'hd000;
    LUT4 i38413_3_lut_4_lut (.A(n43321), .B(n43191), .C(x_cnt[0]), .D(n3226[76]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(135[10] 210[19])
    defparam i38413_3_lut_4_lut.init = 16'h8f80;
    LUT4 Mux_387_i1_3_lut (.A(n2884), .B(n2898), .C(n43153), .Z(n1_adj_87)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i1_3_lut.init = 16'hcaca;
    PFUMX i38224 (.BLUT(n41198), .ALUT(n41199), .C0(n43056), .Z(n7_adj_1443));
    LUT4 Mux_387_i2_3_lut (.A(n2903[5]), .B(n2967[4]), .C(n43153), .Z(n2_adj_88)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_387_i2_3_lut.init = 16'hcaca;
    LUT4 i37894_3_lut_4_lut (.A(cnt[2]), .B(n43192), .C(n26842), .D(n40857), 
         .Z(n40865)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(163[16:18])
    defparam i37894_3_lut_4_lut.init = 16'he000;
    LUT4 i2_4_lut_then_3_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(n43352), 
         .Z(n43430)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 i2_4_lut_else_3_lut (.A(y_cnt[3]), .B(y_cnt[2]), .C(y_cnt[1]), 
         .D(n43352), .Z(n43429)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i2_4_lut_else_3_lut.init = 16'hffef;
    LUT4 i38792_2_lut_2_lut_3_lut_4_lut_4_lut_3_lut (.A(state[1]), .B(state[2]), 
         .C(rst_n_in_c), .Z(clk_in_c_enable_123)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;
    defparam i38792_2_lut_2_lut_3_lut_4_lut_4_lut_3_lut.init = 16'h9f9f;
    LUT4 state_2__bdd_4_lut_rep_675 (.A(state[2]), .B(state[1]), .C(state[0]), 
         .D(rst_n_in_c), .Z(clk_in_c_enable_1)) /* synthesis lut_function=(A (B+!(D))+!A (B+!(C (D)))) */ ;
    defparam state_2__bdd_4_lut_rep_675.init = 16'hcdff;
    PFUMX i38227 (.BLUT(n41201), .ALUT(n41202), .C0(n43056), .Z(n7_adj_1441));
    L6MUX21 i39371 (.D0(n42527), .D1(n42525), .SD(n43025), .Z(n42528));
    LUT4 i2_2_lut_rep_677 (.A(state[2]), .B(rst_n_in_c), .Z(n43394)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i2_2_lut_rep_677.init = 16'hbbbb;
    PFUMX i39369 (.BLUT(n9156), .ALUT(n42526), .C0(n43024), .Z(n42527));
    PFUMX i38230 (.BLUT(n41204), .ALUT(n41205), .C0(n43056), .Z(n7_adj_1438));
    LUT4 i1_2_lut_3_lut_4_lut_adj_286 (.A(state[2]), .B(rst_n_in_c), .C(n3422[0]), 
         .D(state[1]), .Z(n19[0])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_286.init = 16'h4000;
    LUT4 i1_2_lut_adj_287 (.A(cnt[0]), .B(cnt[6]), .Z(n40441)) /* synthesis lut_function=((B)+!A) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(232[16:17])
    defparam i1_2_lut_adj_287.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_adj_288 (.A(state[2]), .B(rst_n_in_c), .C(state[1]), 
         .Z(n40398)) /* synthesis lut_function=(A+!(B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_288.init = 16'hbfbf;
    PFUMX i38117 (.BLUT(n41091), .ALUT(n41092), .C0(x_cnt_c[1]), .Z(n41093));
    LUT4 i1_4_lut_4_lut_adj_289 (.A(state[2]), .B(rst_n_in_c), .C(n43189), 
         .D(n4_adj_1557), .Z(n16_adj_1440)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_289.init = 16'h5540;
    PFUMX i39367 (.BLUT(n42524), .ALUT(n42523), .C0(n43024), .Z(n42525));
    PFUMX i38233 (.BLUT(n41207), .ALUT(n41208), .C0(n43056), .Z(n7_adj_1436));
    LUT4 i22869_2_lut_rep_608_3_lut (.A(state[2]), .B(rst_n_in_c), .C(state[1]), 
         .Z(n43325)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i22869_2_lut_rep_608_3_lut.init = 16'h4040;
    LUT4 Mux_391_i7_3_lut (.A(n3_adj_89), .B(n41316), .C(n43154), .Z(n7_adj_1553)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(465[10] 500[19])
    defparam Mux_391_i7_3_lut.init = 16'hcaca;
    LUT4 i23329_3_lut_3_lut_4_lut (.A(state[2]), .B(rst_n_in_c), .C(n2_adj_1378), 
         .D(state[1]), .Z(num_delay_15__N_803[3])) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i23329_3_lut_3_lut_4_lut.init = 16'h4044;
    LUT4 i37666_2_lut_4_lut (.A(n43201), .B(n43295), .C(cnt_scan[0]), 
         .D(state[0]), .Z(n40627)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A (B+!(C (D))))) */ ;
    defparam i37666_2_lut_4_lut.init = 16'h3a00;
    PFUMX i38236 (.BLUT(n41210), .ALUT(n41211), .C0(n43056), .Z(n7_adj_1449));
    LUT4 Mux_304_i8_3_lut (.A(n3032[5]), .B(n3045[5]), .C(n43049), .Z(n8_adj_1548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(340[10] 374[19])
    defparam Mux_304_i8_3_lut.init = 16'hcaca;
    PFUMX i39364 (.BLUT(n42520), .ALUT(n14_adj_1476), .C0(n43019), .Z(n2239));
    LUT4 i23726_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .D(cnt[3]), 
         .Z(n26759)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i23726_3_lut_4_lut.init = 16'hfe00;
    PFUMX i38239 (.BLUT(n41213), .ALUT(n41214), .C0(n43056), .Z(n7_adj_1447));
    LUT4 i38256_3_lut (.A(n41969), .B(n14_adj_1496), .C(\decade[3] ), 
         .Z(n41232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i38256_3_lut.init = 16'hcaca;
    LUT4 ctrlword_595_4_15__N_630_5__bdd_3_lut_3_lut (.A(\ctrlword_595_3[13] ), 
         .B(\ctrlword_595_4_15__N_622[1] ), .C(\ctrlword_595_4_15__N_630[5] ), 
         .Z(n42482)) /* synthesis lut_function=(!(A (B)+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(139[8:16])
    defparam ctrlword_595_4_15__N_630_5__bdd_3_lut_3_lut.init = 16'h7272;
    PFUMX i39362 (.BLUT(n42518), .ALUT(n42517), .C0(n43025), .Z(n42519));
    LUT4 i2_2_lut_rep_680 (.A(state[2]), .B(state[1]), .Z(n43397)) /* synthesis lut_function=(A+!(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(103[5] 618[13])
    defparam i2_2_lut_rep_680.init = 16'hbbbb;
    LUT4 i22992_2_lut_rep_681 (.A(cnt[1]), .B(cnt[0]), .Z(n43398)) /* synthesis lut_function=(A (B)) */ ;
    defparam i22992_2_lut_rep_681.init = 16'h8888;
    LUT4 i4389_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), .D(cnt[2]), 
         .Z(n8_adj_1369)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i4389_3_lut_4_lut.init = 16'hf080;
    PFUMX i39773 (.BLUT(n43494), .ALUT(n43495), .C0(x_cnt[0]), .Z(n43496));
    LUT4 i1_2_lut_rep_686 (.A(rst_n_in_c), .B(state[2]), .Z(n43403)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_686.init = 16'h8888;
    PFUMX i38084 (.BLUT(n41056), .ALUT(n41057), .C0(cnt_write[2]), .Z(n41060));
    PFUMX i38242 (.BLUT(n41216), .ALUT(n41217), .C0(n43056), .Z(n7_adj_1445));
    LUT4 i1_2_lut_3_lut_adj_290 (.A(rst_n_in_c), .B(state[2]), .C(cnt_write[0]), 
         .Z(n40450)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_3_lut_adj_290.init = 16'hf7f7;
    PFUMX i39771 (.BLUT(n43491), .ALUT(n43492), .C0(state[2]), .Z(n17098));
    LUT4 i1_2_lut_rep_682 (.A(cnt_init[1]), .B(cnt_init[2]), .Z(n43399)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_682.init = 16'hbbbb;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(n35769), 
         .D(cnt_init[0]), .Z(n74)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0700;
    L6MUX21 i39066 (.D0(n42009), .D1(n42006), .SD(n43148), .Z(n42010));
    PFUMX i39769 (.BLUT(n43488), .ALUT(n43489), .C0(state[1]), .Z(clk_in_c_enable_147));
    PFUMX i39736 (.BLUT(n43432), .ALUT(n43433), .C0(n44508), .Z(n11_adj_1477));
    PFUMX i38085 (.BLUT(n41058), .ALUT(n41059), .C0(cnt_write[2]), .Z(n41061));
    L6MUX21 i39353 (.D0(n42505), .D1(n42503), .SD(n43024), .Z(n42506));
    PFUMX i39351 (.BLUT(n1_adj_1551), .ALUT(n42504), .C0(n43025), .Z(n42505));
    PFUMX i39756 (.BLUT(n43467), .ALUT(n43468), .C0(cnt[3]), .Z(n43469));
    PFUMX i39064 (.BLUT(n42008), .ALUT(n42007), .C0(n43154), .Z(n42009));
    PFUMX i39349 (.BLUT(n42502), .ALUT(n38949), .C0(n43025), .Z(n42503));
    L6MUX21 i38245 (.D0(n41219), .D1(n41220), .SD(x_cnt_c[5]), .Z(n41221));
    PFUMX i38243 (.BLUT(n15_adj_1397), .ALUT(n41007), .C0(x_cnt_c[4]), 
          .Z(n41219));
    LUT4 i37783_2_lut_rep_510_3_lut_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), 
         .C(cnt_init[0]), .D(n35769), .Z(n43227)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i37783_2_lut_rep_510_3_lut_4_lut.init = 16'hfffb;
    PFUMX i39060 (.BLUT(n42005), .ALUT(n42004), .C0(n43154), .Z(n42006));
    L6MUX21 i38269 (.D0(n41243), .D1(n41244), .SD(x_cnt_c[2]), .Z(n41245));
    LUT4 n43_bdd_4_lut_39001_4_lut (.A(cnt_init[1]), .B(cnt_init[2]), .C(n35769), 
         .D(n43266), .Z(n41921)) /* synthesis lut_function=(!(A (B+(C))+!A (B (C+!(D))+!B (C)))) */ ;
    defparam n43_bdd_4_lut_39001_4_lut.init = 16'h0703;
    FD1P3IX y_cnt__i3_rep_720 (.D(n2021[3]), .SP(clk_in_c_enable_154), .CD(n17065), 
            .CK(clk_in_c), .Q(n44505)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=13, LSE_RCOL=24, LSE_LLINE=134, LSE_RLINE=134 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(88[3] 620[8])
    defparam y_cnt__i3_rep_720.GSR = "DISABLED";
    L6MUX21 i38254 (.D0(n41228), .D1(n41229), .SD(x_cnt_c[2]), .Z(n41230));
    L6MUX21 i38268 (.D0(n41241), .D1(n41242), .SD(x_cnt_c[1]), .Z(n41244));
    L6MUX21 i27 (.D0(n11_adj_1550), .D1(n41224), .SD(x_cnt_c[4]), .Z(n14_adj_1463));
    PFUMX i38248 (.BLUT(n41222), .ALUT(n41223), .C0(x_cnt_c[3]), .Z(n41224));
    PFUMX i38265 (.BLUT(n41235), .ALUT(n41236), .C0(x_cnt[0]), .Z(n41241));
    PFUMX i38252 (.BLUT(n11906), .ALUT(n39281), .C0(x_cnt_c[1]), .Z(n41228));
    LUT4 i33_4_lut_4_lut_adj_291 (.A(y_cnt[0]), .B(y_cnt[1]), .C(n43026), 
         .D(y_cnt[2]), .Z(n18_adj_1359)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A (B (C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/lcd_display.vhd(267[10] 302[19])
    defparam i33_4_lut_4_lut_adj_291.init = 16'he066;
    
endmodule
//
// Verilog Description of module btn_debouncing
//

module btn_debouncing (GND_net, clk_in_c, btn_state, mode_btn_in_c);
    input GND_net;
    input clk_in_c;
    output btn_state;
    input mode_btn_in_c;
    
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    
    wire n37842;
    wire [31:0]btnsampler_clk_cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(15[9:27])
    wire [31:0]n133;
    
    wire n37843, btnsampler_clk, btnsampler_clk_N_266, btnsampler_clk_ls, 
        btn_state_N_264, n37841, n37840, n37839, n37838, n37837, 
        n37836, n17030, n40861, n37835, n37834, n37833, n37832, 
        n37831, n37830, n37829, n43, n38, n47, n37828, n9;
    wire [2:0]btnsamp_store;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(18[9:22])
    
    wire btnsamp_store_2__N_261, n45, n46, n40, n28, n42, n32;
    
    CCU2D btnsampler_clk_cnt_3794_add_4_31 (.A0(btnsampler_clk_cnt[29]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[30]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37842), .COUT(n37843), .S0(n133[29]), 
          .S1(n133[30]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_31.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_31.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_31.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_31.INJECT1_1 = "NO";
    FD1S3AX btnsampler_clk_30 (.D(btnsampler_clk_N_266), .CK(clk_in_c), 
            .Q(btnsampler_clk)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(24[3] 30[10])
    defparam btnsampler_clk_30.GSR = "DISABLED";
    FD1S3AX btnsampler_clk_ls_31 (.D(btnsampler_clk), .CK(clk_in_c), .Q(btnsampler_clk_ls)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(35[3] 37[10])
    defparam btnsampler_clk_ls_31.GSR = "DISABLED";
    FD1S3AX btn_state_33 (.D(btn_state_N_264), .CK(clk_in_c), .Q(btn_state)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btn_state_33.GSR = "DISABLED";
    CCU2D btnsampler_clk_cnt_3794_add_4_29 (.A0(btnsampler_clk_cnt[27]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[28]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37841), .COUT(n37842), .S0(n133[27]), 
          .S1(n133[28]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_29.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_29.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_29.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_29.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_27 (.A0(btnsampler_clk_cnt[25]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[26]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37840), .COUT(n37841), .S0(n133[25]), 
          .S1(n133[26]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_27.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_27.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_27.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_27.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_25 (.A0(btnsampler_clk_cnt[23]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[24]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37839), .COUT(n37840), .S0(n133[23]), 
          .S1(n133[24]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_25.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_25.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_25.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_25.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_23 (.A0(btnsampler_clk_cnt[21]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[22]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37838), .COUT(n37839), .S0(n133[21]), 
          .S1(n133[22]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_23.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_23.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_23.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_23.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_21 (.A0(btnsampler_clk_cnt[19]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[20]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37837), .COUT(n37838), .S0(n133[19]), 
          .S1(n133[20]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_21.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_21.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_21.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_21.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_19 (.A0(btnsampler_clk_cnt[17]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[18]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37836), .COUT(n37837), .S0(n133[17]), 
          .S1(n133[18]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_19.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_19.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_19.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(btnsampler_clk), .B(n17030), .Z(btnsampler_clk_N_266)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i37890_4_lut (.A(btnsampler_clk_cnt[14]), .B(btnsampler_clk_cnt[12]), 
         .C(btnsampler_clk_cnt[6]), .D(btnsampler_clk_cnt[7]), .Z(n40861)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i37890_4_lut.init = 16'h8000;
    CCU2D btnsampler_clk_cnt_3794_add_4_17 (.A0(btnsampler_clk_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[16]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37835), .COUT(n37836), .S0(n133[15]), 
          .S1(n133[16]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_17.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_17.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_17.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_17.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_15 (.A0(btnsampler_clk_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37834), .COUT(n37835), .S0(n133[13]), 
          .S1(n133[14]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_15.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_15.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_15.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_15.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_13 (.A0(btnsampler_clk_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37833), .COUT(n37834), .S0(n133[11]), 
          .S1(n133[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_13.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_13.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_13.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_13.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_11 (.A0(btnsampler_clk_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37832), .COUT(n37833), .S0(n133[9]), 
          .S1(n133[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_11.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_11.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_11.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_11.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_9 (.A0(btnsampler_clk_cnt[7]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[8]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37831), .COUT(n37832), .S0(n133[7]), 
          .S1(n133[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_9.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_9.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_9.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_9.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_7 (.A0(btnsampler_clk_cnt[5]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[6]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37830), .COUT(n37831), .S0(n133[5]), 
          .S1(n133[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_7.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_7.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_7.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_7.INJECT1_1 = "NO";
    CCU2D btnsampler_clk_cnt_3794_add_4_5 (.A0(btnsampler_clk_cnt[3]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[4]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37829), .COUT(n37830), .S0(n133[3]), 
          .S1(n133[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_5.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_5.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_5.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_5.INJECT1_1 = "NO";
    LUT4 i22_4_lut (.A(n43), .B(btnsampler_clk_cnt[3]), .C(n38), .D(btnsampler_clk_cnt[2]), 
         .Z(n47)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i22_4_lut.init = 16'hfffe;
    CCU2D btnsampler_clk_cnt_3794_add_4_3 (.A0(btnsampler_clk_cnt[1]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(btnsampler_clk_cnt[2]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37828), .COUT(n37829), .S0(n133[1]), 
          .S1(n133[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_3.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_3.INIT1 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_3.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_3.INJECT1_1 = "NO";
    LUT4 i38857_4_lut (.A(n9), .B(n40861), .C(btnsampler_clk_cnt[10]), 
         .D(btnsampler_clk_cnt[16]), .Z(n17030)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(26[8:35])
    defparam i38857_4_lut.init = 16'h4000;
    CCU2D btnsampler_clk_cnt_3794_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(btnsampler_clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n37828), .S1(n133[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_1.INIT0 = 16'hF000;
    defparam btnsampler_clk_cnt_3794_add_4_1.INIT1 = 16'h0555;
    defparam btnsampler_clk_cnt_3794_add_4_1.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_1.INJECT1_1 = "NO";
    FD1P3AX btnsamp_store_i0_i0 (.D(btnsamp_store[1]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i0.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(n47), .B(btnsampler_clk_cnt[15]), .C(n45), .D(n46), 
         .Z(n9)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut.init = 16'hfffb;
    FD1S3IX btnsampler_clk_cnt_3794__i0 (.D(n133[0]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i0.GSR = "DISABLED";
    FD1P3AX btnsamp_store_i0_i1 (.D(btnsamp_store[2]), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i1.GSR = "DISABLED";
    FD1P3AX btnsamp_store_i0_i2 (.D(mode_btn_in_c), .SP(btnsamp_store_2__N_261), 
            .CK(clk_in_c), .Q(btnsamp_store[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=15, LSE_RCOL=29, LSE_LLINE=130, LSE_RLINE=130 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(42[3] 49[10])
    defparam btnsamp_store_i0_i2.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i1 (.D(n133[1]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i1.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i2 (.D(n133[2]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i2.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i3 (.D(n133[3]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i3.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i4 (.D(n133[4]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i4.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i5 (.D(n133[5]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i5.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i6 (.D(n133[6]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i6.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i7 (.D(n133[7]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i7.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i8 (.D(n133[8]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i8.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i9 (.D(n133[9]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i9.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i10 (.D(n133[10]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i10.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i11 (.D(n133[11]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i11.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i12 (.D(n133[12]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i12.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i13 (.D(n133[13]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i13.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i14 (.D(n133[14]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i14.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i15 (.D(n133[15]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i15.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i16 (.D(n133[16]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[16])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i16.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i17 (.D(n133[17]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[17])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i17.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i18 (.D(n133[18]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[18])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i18.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i19 (.D(n133[19]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[19])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i19.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i20 (.D(n133[20]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[20])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i20.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i21 (.D(n133[21]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[21])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i21.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i22 (.D(n133[22]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[22])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i22.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i23 (.D(n133[23]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[23])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i23.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i24 (.D(n133[24]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[24])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i24.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i25 (.D(n133[25]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[25])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i25.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i26 (.D(n133[26]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[26])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i26.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i27 (.D(n133[27]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[27])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i27.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i28 (.D(n133[28]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[28])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i28.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i29 (.D(n133[29]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[29])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i29.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i30 (.D(n133[30]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[30])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i30.GSR = "DISABLED";
    FD1S3IX btnsampler_clk_cnt_3794__i31 (.D(n133[31]), .CK(clk_in_c), .CD(n17030), 
            .Q(btnsampler_clk_cnt[31])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794__i31.GSR = "DISABLED";
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
    CCU2D btnsampler_clk_cnt_3794_add_4_33 (.A0(btnsampler_clk_cnt[31]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37843), .S0(n133[31]));   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(25[26:44])
    defparam btnsampler_clk_cnt_3794_add_4_33.INIT0 = 16'hfaaa;
    defparam btnsampler_clk_cnt_3794_add_4_33.INIT1 = 16'h0000;
    defparam btnsampler_clk_cnt_3794_add_4_33.INJECT1_0 = "NO";
    defparam btnsampler_clk_cnt_3794_add_4_33.INJECT1_1 = "NO";
    LUT4 i2_3_lut (.A(btnsamp_store[2]), .B(btnsamp_store[1]), .C(btnsamp_store[0]), 
         .Z(btn_state_N_264)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(48[15:73])
    defparam i2_3_lut.init = 16'h8080;
    LUT4 btnsampler_clk_I_0_36_2_lut (.A(btnsampler_clk), .B(btnsampler_clk_ls), 
         .Z(btnsamp_store_2__N_261)) /* synthesis lut_function=(!((B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/btn_debouncing.vhd(43[8:52])
    defparam btnsampler_clk_I_0_36_2_lut.init = 16'h2222;
    
endmodule
//
// Verilog Description of module ADC
//

module ADC (n43408, clk_divided_enable_3, sda_out_N_166, clk_divided_enable_39, 
            cnt_main, clk_divided_enable_40, n44503, n43279, \cnt_main[2] , 
            n715, n44470, n43272, n710, clk_in_c, \cnt_write[0] , 
            clk_divided_enable_36, n7, \voltage_code[1] , clk_divided_enable_23, 
            n24131, n5, sda_out_N_183, n712, n44499, n43261, \cnt_read[0] , 
            n711, sda_out_out, n1430, \voltage_code[2] , \voltage_code[3] , 
            n42884, rst_n_in_c, n40345, n37274, n714, \voltage_code[4] , 
            \voltage_code[5] , \voltage_code[6] , \ADC_level[7] , n43384, 
            scl_out_c, clk_divided_enable_24, scl_out_N_143, sda_out_N_182, 
            n8700, clk_divided_N_170, GND_net, n17007, \realv_5[0] , 
            n40406, n40407, n4, n43330, n44501, n43462);
    input n43408;
    input clk_divided_enable_3;
    output sda_out_N_166;
    input clk_divided_enable_39;
    output [3:0]cnt_main;
    input clk_divided_enable_40;
    input n44503;
    output n43279;
    output \cnt_main[2] ;
    output n715;
    output n44470;
    output n43272;
    output n710;
    input clk_in_c;
    output \cnt_write[0] ;
    input clk_divided_enable_36;
    input n7;
    output \voltage_code[1] ;
    input clk_divided_enable_23;
    input n24131;
    output n5;
    output sda_out_N_183;
    output n712;
    output n44499;
    output n43261;
    output \cnt_read[0] ;
    output n711;
    input sda_out_out;
    input n1430;
    output \voltage_code[2] ;
    output \voltage_code[3] ;
    output n42884;
    input rst_n_in_c;
    output n40345;
    input n37274;
    output n714;
    output \voltage_code[4] ;
    output \voltage_code[5] ;
    output \voltage_code[6] ;
    output \ADC_level[7] ;
    output n43384;
    output scl_out_c;
    input clk_divided_enable_24;
    input scl_out_N_143;
    input sda_out_N_182;
    output n8700;
    output clk_divided_N_170;
    input GND_net;
    input n17007;
    output \realv_5[0] ;
    input n40406;
    input n40407;
    output n4;
    input n43330;
    output n44501;
    output n43462;
    
    wire clk_divided /* synthesis is_clock=1, SET_AS_NETWORK=\ADC_work/clk_divided */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(18[9:20])
    wire clk_in_c /* synthesis SET_AS_NETWORK=clk_in_c, is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(8[3:9])
    wire [3:0]cnt;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[12:15])
    wire [3:0]cnt_3__N_91;
    wire [3:0]cnt_stop;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[36:44])
    
    wire n40359, n42501, n40224, n40218;
    wire [3:0]cnt_start;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[16:25])
    
    wire clk_divided_enable_38, n40216, n40220, n40213;
    wire [4:0]cnt_read;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(50[12:20])
    
    wire n40219, n40223, n40217;
    wire [7:0]data_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(47[12:22])
    
    wire clk_divided_enable_10, n16990, n40221, n43252;
    wire [3:0]cnt_main_c;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(49[12:20])
    
    wire n43335, n43256, n43244, n43225, n40346, n38237, clk_divided_enable_13, 
        n43277, n39547;
    wire [3:0]cnt_write;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(48[26:35])
    
    wire n43385, n40212, n40222, n43299, n43247, n43334, n43388, 
        n44475;
    wire [3:0]n174;
    
    wire n43455, n43456;
    wire [7:0]n707;
    
    wire n4_c, clk_divided_N_169, n43450, n43451, n43452, n44500, 
        n43405;
    wire [7:0]ADC_level_r;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(46[12:23])
    
    wire n60, n54, n40984, n42235, n43303, n42233, n42232, n42234, 
        n8, n42433, n8_adj_1347, n40183, n40325, n6, n42048, sda_out_N_177, 
        n40859, n42497, n40193, n43254, n43393, clk_divided_enable_30, 
        n4_adj_1348, n43204, n42498, n42499, clk_divided_enable_32, 
        n42500, clk_divided_enable_28, clk_divided_enable_26, clk_divided_enable_29, 
        n43471, n43470, n43473, n43224, n40872, n43243, n24100, 
        n43482, n43366, n43317, n43481, n37963, n6_adj_1349, n41929, 
        n43435;
    wire [13:0]cnt_divided;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(26[12:23])
    wire [13:0]n61;
    
    wire n41930, n43245, n40742, n8_adj_1350, clk_divided_enable_25, 
        n40582, n43436, n44052, n44485, n42200, n42883, n42882, 
        clk_divided_enable_35, n40344, clk_divided_enable_37, n40214, 
        n9278, n9280, n39661, n9284, n40557, n3, n4_adj_1351, 
        clk_divided_enable_31, clk_divided_enable_27, n44502, n43282, 
        n43418, n43419, n43281, n40141, n40356, n4_adj_1352, n4_adj_1353, 
        n26159, n26, n42749, n42750, n42751, n42748, sda_out_N_190, 
        n4_adj_1354, n21, n40785, n43246, n43287, n43294, n43308, 
        n43329, sda_out_N_167, n7_adj_1355, n37947, n38084, n37953, 
        n6_adj_1356, n43347, n43230, n37850, n37849, n37848, n37847, 
        n37846, n43483, n43472, n40405, n43271, n43231, n44484, 
        n26649, n43284, n9645, n40174, n43362, n37845, n37844, 
        n40347;
    
    FD1S3IX cnt__i3 (.D(cnt_3__N_91[3]), .CK(clk_divided), .CD(n43408), 
            .Q(cnt[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i3.GSR = "DISABLED";
    FD1S3IX cnt__i2 (.D(cnt_3__N_91[2]), .CK(clk_divided), .CD(n43408), 
            .Q(cnt[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i2.GSR = "DISABLED";
    FD1S3IX cnt__i1 (.D(cnt_3__N_91[1]), .CK(clk_divided), .CD(n43408), 
            .Q(cnt[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i1.GSR = "DISABLED";
    FD1P3AX cnt_stop__i3 (.D(n40359), .SP(clk_divided_enable_3), .CK(clk_divided), 
            .Q(cnt_stop[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i3.GSR = "DISABLED";
    FD1S3JX sda_out_r_155 (.D(n42501), .CK(clk_divided), .PD(n43408), 
            .Q(sda_out_N_166)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam sda_out_r_155.GSR = "DISABLED";
    FD1P3AX cnt_stop__i2 (.D(n40224), .SP(clk_divided_enable_3), .CK(clk_divided), 
            .Q(cnt_stop[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i2.GSR = "DISABLED";
    FD1P3AX cnt_stop__i1 (.D(n40218), .SP(clk_divided_enable_3), .CK(clk_divided), 
            .Q(cnt_stop[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i1.GSR = "DISABLED";
    FD1P3AX cnt_start__i3 (.D(n40216), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_start[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i3.GSR = "DISABLED";
    FD1P3AX cnt_start__i2 (.D(n40220), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_start[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i2.GSR = "DISABLED";
    FD1P3AX cnt_start__i1 (.D(n40213), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_start[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i1.GSR = "DISABLED";
    FD1P3AX cnt_read__i4 (.D(n40219), .SP(clk_divided_enable_39), .CK(clk_divided), 
            .Q(cnt_read[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i4.GSR = "DISABLED";
    FD1P3AX cnt_read__i3 (.D(n40223), .SP(clk_divided_enable_39), .CK(clk_divided), 
            .Q(cnt_read[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i3.GSR = "DISABLED";
    FD1P3AX cnt_read__i2 (.D(n40217), .SP(clk_divided_enable_39), .CK(clk_divided), 
            .Q(cnt_read[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i2.GSR = "DISABLED";
    FD1P3AX data_write__i7 (.D(n16990), .SP(clk_divided_enable_10), .CK(clk_divided), 
            .Q(data_write[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam data_write__i7.GSR = "DISABLED";
    FD1P3AX cnt_read__i1 (.D(n40221), .SP(clk_divided_enable_39), .CK(clk_divided), 
            .Q(cnt_read[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i1.GSR = "DISABLED";
    FD1P3AX cnt_main__i3 (.D(n44503), .SP(clk_divided_enable_40), .CK(clk_divided), 
            .Q(cnt_main[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i3.GSR = "DISABLED";
    LUT4 mux_51_i3_3_lut_rep_535_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n43279), 
         .D(cnt[2]), .Z(n43252)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (D)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_51_i3_3_lut_rep_535_3_lut_4_lut.init = 16'hf708;
    LUT4 i4462_2_lut_rep_618_3_lut (.A(cnt_main[1]), .B(cnt_main_c[0]), 
         .C(\cnt_main[2] ), .Z(n43335)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i4462_2_lut_rep_618_3_lut.init = 16'h8080;
    LUT4 i2_3_lut_4_lut (.A(n43256), .B(n43244), .C(n43225), .D(n40346), 
         .Z(n38237)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut_4_lut.init = 16'h4000;
    FD1P3AX data_write__i0 (.D(n43277), .SP(clk_divided_enable_13), .CK(clk_divided), 
            .Q(data_write[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam data_write__i0.GSR = "DISABLED";
    FD1S3IX cnt__i0 (.D(cnt_3__N_91[0]), .CK(clk_divided), .CD(n43408), 
            .Q(cnt[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt__i0.GSR = "DISABLED";
    FD1S3JX state_FSM_i1 (.D(n39547), .CK(clk_divided), .PD(n43408), .Q(n715));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(cnt_write[2]), .B(n43385), .C(n40212), 
         .D(n44470), .Z(n40222)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(121[7] 130[16])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0060;
    LUT4 i38778_2_lut_rep_530_4_lut_4_lut_4_lut (.A(cnt_write[3]), .B(cnt_write[2]), 
         .C(n43385), .D(n43299), .Z(n43247)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i38778_2_lut_rep_530_4_lut_4_lut_4_lut.init = 16'h95ff;
    LUT4 i2_2_lut_rep_617_3_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[2]), .Z(n43334)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam i2_2_lut_rep_617_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(cnt_stop[2]), .B(n43388), .C(n40212), 
         .D(n44475), .Z(n40359)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(168[7] 172[15])
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'h0080;
    LUT4 mux_35_i3_3_lut_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(n44470), 
         .D(cnt[2]), .Z(n174[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_35_i3_3_lut_3_lut_4_lut.init = 16'h7f80;
    LUT4 i23677_2_lut_rep_582_3_lut_4_lut (.A(cnt[1]), .B(cnt[0]), .C(cnt[3]), 
         .D(cnt[2]), .Z(n43299)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam i23677_2_lut_rep_582_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i22843_2_lut_rep_555_3_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main_c[0]), 
         .C(cnt_main[3]), .D(\cnt_main[2] ), .Z(n43272)) /* synthesis lut_function=(A ((C+(D))+!B)+!A ((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i22843_2_lut_rep_555_3_lut_4_lut_4_lut.init = 16'hfbf3;
    PFUMX i39748 (.BLUT(n43455), .ALUT(n43456), .C0(\cnt_main[2] ), .Z(clk_divided_enable_10));
    LUT4 i2_4_lut_4_lut (.A(n710), .B(n707[2]), .C(n4_c), .D(cnt[0]), 
         .Z(cnt_3__N_91[0])) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_4_lut_4_lut.init = 16'hfef0;
    FD1S3IX temp_divided_153 (.D(clk_divided_N_169), .CK(clk_in_c), .CD(n43408), 
            .Q(clk_divided)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(29[3] 39[10])
    defparam temp_divided_153.GSR = "DISABLED";
    LUT4 i23208_2_lut_rep_560_3_lut_4_lut_3_lut_4_lut (.A(cnt_main[1]), .B(cnt_main_c[0]), 
         .C(cnt_main[3]), .D(\cnt_main[2] ), .Z(n43277)) /* synthesis lut_function=(A (B+(C+(D)))+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i23208_2_lut_rep_560_3_lut_4_lut_3_lut_4_lut.init = 16'hfff8;
    PFUMX i39746 (.BLUT(n43450), .ALUT(n43451), .C0(\cnt_write[0] ), .Z(n43452));
    LUT4 i4453_2_lut_rep_719 (.A(cnt_main[1]), .B(cnt_main_c[0]), .Z(n44500)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i4453_2_lut_rep_719.init = 16'h6666;
    LUT4 i4460_2_lut_rep_688 (.A(cnt_main[1]), .B(cnt_main_c[0]), .C(\cnt_main[2] ), 
         .Z(n43405)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i4460_2_lut_rep_688.init = 16'h7878;
    FD1P3AX cnt_write__i1 (.D(n7), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i1.GSR = "DISABLED";
    FD1P3IX ADC_level__i2 (.D(ADC_level_r[1]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i2.GSR = "DISABLED";
    PFUMX i20337 (.BLUT(n60), .ALUT(n54), .C0(n40984), .Z(n5));
    PFUMX i39184 (.BLUT(n42235), .ALUT(n43303), .C0(n710), .Z(sda_out_N_183));
    PFUMX i39182 (.BLUT(n42233), .ALUT(n42232), .C0(n712), .Z(n42234));
    LUT4 i38813_3_lut_4_lut_then_4_lut (.A(n44499), .B(cnt_main_c[0]), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n43456)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i38813_3_lut_4_lut_then_4_lut.init = 16'h0008;
    LUT4 i1_4_lut_4_lut (.A(n710), .B(n707[2]), .Z(n8)) /* synthesis lut_function=(A+(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_4_lut.init = 16'heeee;
    LUT4 i38813_3_lut_4_lut_else_4_lut (.A(n44499), .B(cnt_main_c[0]), .C(cnt_main[1]), 
         .D(cnt_main[3]), .Z(n43455)) /* synthesis lut_function=(!((B (C+(D))+!B ((D)+!C))+!A)) */ ;
    defparam i38813_3_lut_4_lut_else_4_lut.init = 16'h0028;
    LUT4 i23209_2_lut_rep_544_3_lut_4_lut_4_lut (.A(\cnt_main[2] ), .B(cnt_main[1]), 
         .C(cnt_main_c[0]), .D(cnt_main[3]), .Z(n43261)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B ((D)+!C)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i23209_2_lut_rep_544_3_lut_4_lut_4_lut.init = 16'hffbc;
    LUT4 n10090_bdd_3_lut_4_lut_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), 
         .C(\cnt_write[0] ), .D(n44470), .Z(n42433)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (D)+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(121[7] 130[16])
    defparam n10090_bdd_3_lut_4_lut_4_lut.init = 16'h007e;
    LUT4 i1_4_lut (.A(n715), .B(n8_adj_1347), .C(n38237), .Z(n40183)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut.init = 16'hfefe;
    LUT4 i3_4_lut (.A(n40325), .B(n6), .C(n42048), .D(n710), .Z(n8_adj_1347)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i3_4_lut.init = 16'heccc;
    LUT4 sda_out_N_177_bdd_4_lut_39696 (.A(sda_out_N_177), .B(n44470), .C(n40859), 
         .D(cnt_write[2]), .Z(n42497)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam sda_out_N_177_bdd_4_lut_39696.init = 16'h888a;
    LUT4 i38917_3_lut_3_lut_4_lut (.A(n40193), .B(n43254), .C(n43393), 
         .D(n43252), .Z(clk_divided_enable_30)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38917_3_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), 
         .C(\cnt_read[0] ), .D(n43279), .Z(n4_adj_1348)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A !(B (C+!(D))+!B !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h42ff;
    LUT4 i1_2_lut_rep_487_3_lut_3_lut_4_lut_4_lut (.A(cnt_read[2]), .B(cnt_read[1]), 
         .C(\cnt_read[0] ), .D(n43279), .Z(n43204)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_487_3_lut_3_lut_4_lut_4_lut.init = 16'h4200;
    LUT4 n42498_bdd_2_lut (.A(n42498), .B(n711), .Z(n42499)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n42498_bdd_2_lut.init = 16'h2222;
    LUT4 i38877_2_lut_2_lut_3_lut_4_lut (.A(n40193), .B(n43254), .C(n43252), 
         .D(n43393), .Z(clk_divided_enable_32)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38877_2_lut_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 sda_out_out_bdd_3_lut (.A(sda_out_out), .B(n42500), .C(sda_out_N_183), 
         .Z(n42501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam sda_out_out_bdd_3_lut.init = 16'hcaca;
    LUT4 i38922_2_lut_2_lut_3_lut_4_lut (.A(n40193), .B(n43254), .C(n43252), 
         .D(n43393), .Z(clk_divided_enable_28)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38922_2_lut_2_lut_3_lut_4_lut.init = 16'h0200;
    LUT4 i38928_3_lut_3_lut_4_lut (.A(n43252), .B(n40193), .C(n43254), 
         .D(n43393), .Z(clk_divided_enable_26)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38928_3_lut_3_lut_4_lut.init = 16'h0004;
    LUT4 i38919_3_lut_3_lut_4_lut (.A(n43252), .B(n40193), .C(n43254), 
         .D(n43393), .Z(clk_divided_enable_29)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38919_3_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i36_then_4_lut (.A(n43279), .B(cnt_read[2]), .C(\cnt_read[0] ), 
         .D(cnt_read[1]), .Z(n43471)) /* synthesis lut_function=(A (B (C+!(D))+!B ((D)+!C))) */ ;
    defparam i36_then_4_lut.init = 16'ha28a;
    LUT4 i36_else_4_lut (.A(n43279), .B(cnt_read[2]), .C(\cnt_read[0] ), 
         .D(cnt_read[1]), .Z(n43470)) /* synthesis lut_function=(!((B (C+(D))+!B (C+!(D)))+!A)) */ ;
    defparam i36_else_4_lut.init = 16'h0208;
    LUT4 cnt_main_0__bdd_4_lut_40113 (.A(cnt_main_c[0]), .B(cnt_main[1]), 
         .C(cnt_main[3]), .D(\cnt_main[2] ), .Z(n43473)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+!(D)))) */ ;
    defparam cnt_main_0__bdd_4_lut_40113.init = 16'hfef7;
    LUT4 i1_2_lut_3_lut_4_lut_adj_64 (.A(n43256), .B(n43224), .C(n40872), 
         .D(n43243), .Z(n24100)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_adj_64.init = 16'h0004;
    LUT4 i89_then_4_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), .C(cnt_write[2]), 
         .D(n44470), .Z(n43482)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i89_then_4_lut.init = 16'h0080;
    LUT4 i89_else_4_lut (.A(cnt_start[1]), .B(n43366), .C(n43317), .D(n707[2]), 
         .Z(n43481)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B (C (D)))) */ ;
    defparam i89_else_4_lut.init = 16'hdc00;
    LUT4 i1_4_lut_adj_65 (.A(n707[2]), .B(n37963), .C(n6_adj_1349), .D(n43317), 
         .Z(n6)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_65.init = 16'heccc;
    LUT4 cnt_0__bdd_4_lut_38998 (.A(cnt[0]), .B(data_write[0]), .C(cnt[1]), 
         .D(n44470), .Z(n41929)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam cnt_0__bdd_4_lut_38998.init = 16'h4080;
    LUT4 cnt_stop_0__bdd_3_lut (.A(cnt_stop[0]), .B(cnt_stop[2]), .C(cnt_stop[3]), 
         .Z(n43435)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam cnt_stop_0__bdd_3_lut.init = 16'h0202;
    FD1S3IX cnt_divided_3793__i0 (.D(n61[0]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[0])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i0.GSR = "DISABLED";
    LUT4 cnt_0__bdd_4_lut_39547 (.A(cnt[0]), .B(data_write[7]), .C(cnt[1]), 
         .D(n44470), .Z(n41930)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)+!C !(D)))) */ ;
    defparam cnt_0__bdd_4_lut_39547.init = 16'hc084;
    LUT4 i3_4_lut_adj_66 (.A(n43247), .B(\cnt_write[0] ), .C(n43245), 
         .D(n712), .Z(n37963)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i3_4_lut_adj_66.init = 16'h0400;
    LUT4 i5_4_lut (.A(n40742), .B(cnt_read[1]), .C(n8_adj_1350), .D(cnt[0]), 
         .Z(clk_divided_enable_25)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i5_4_lut.init = 16'h4000;
    LUT4 i37776_3_lut (.A(n43393), .B(n40582), .C(n43252), .Z(n40742)) /* synthesis lut_function=((B+!(C))+!A) */ ;
    defparam i37776_3_lut.init = 16'hdfdf;
    LUT4 cnt_start_1__bdd_4_lut_39841 (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(cnt_start[2]), .D(cnt_start[3]), .Z(n43436)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam cnt_start_1__bdd_4_lut_39841.init = 16'hffbf;
    FD1P3IX ADC_level__i3 (.D(ADC_level_r[2]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i3.GSR = "DISABLED";
    LUT4 n711_bdd_4_lut_40143 (.A(n711), .B(n43279), .C(cnt_read[4]), 
         .D(cnt_read[3]), .Z(n44052)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam n711_bdd_4_lut_40143.init = 16'h8880;
    LUT4 i4_4_lut_4_lut_4_lut_then_4_lut (.A(cnt_main_c[0]), .B(cnt_main[3]), 
         .C(n44499), .D(\cnt_main[2] ), .Z(n44485)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i4_4_lut_4_lut_4_lut_then_4_lut.init = 16'h0010;
    FD1P3IX ADC_level__i4 (.D(ADC_level_r[3]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i4.GSR = "DISABLED";
    LUT4 i38940_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut_3_lut (.A(cnt_main[1]), 
         .B(cnt_main_c[0]), .C(cnt_main[3]), .Z(n16990)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i38940_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut_3_lut.init = 16'h0404;
    LUT4 i4354_3_lut_rep_710 (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n44475)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i4354_3_lut_rep_710.init = 16'hecec;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), 
         .C(cnt_stop[2]), .D(cnt_stop[0]), .Z(n40325)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 sda_out_N_177_bdd_2_lut_39251_3_lut_4_lut_4_lut_3_lut (.A(cnt_stop[1]), 
         .B(cnt_stop[3]), .C(cnt_stop[2]), .Z(n42200)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam sda_out_N_177_bdd_2_lut_39251_3_lut_4_lut_4_lut_3_lut.init = 16'h1010;
    PFUMX i39650 (.BLUT(n42883), .ALUT(n42882), .C0(n711), .Z(n42884));
    LUT4 i38839_4_lut (.A(rst_n_in_c), .B(n715), .C(n24100), .D(n711), 
         .Z(clk_divided_enable_35)) /* synthesis lut_function=((B (C+!(D))+!B (C (D)))+!A) */ ;
    defparam i38839_4_lut.init = 16'hf5dd;
    LUT4 i3_3_lut (.A(rst_n_in_c), .B(n40345), .C(ADC_level_r[0]), .Z(n40344)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i3_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_67 (.A(n37274), .B(n43272), .C(n44499), .D(n43473), 
         .Z(clk_divided_enable_37)) /* synthesis lut_function=(!((B (C)+!B (C (D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_67.init = 16'h0a2a;
    FD1P3AX cnt_write__i3 (.D(n40214), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i3.GSR = "DISABLED";
    FD1P3AX cnt_write__i2 (.D(n40222), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(cnt_write[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i2.GSR = "DISABLED";
    FD1S3IX state_FSM_i2 (.D(n40183), .CK(clk_divided), .CD(n43408), .Q(n714));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i2.GSR = "DISABLED";
    FD1S3IX state_FSM_i3 (.D(n9278), .CK(clk_divided), .CD(n43408), .Q(n707[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i3.GSR = "DISABLED";
    FD1S3IX state_FSM_i4 (.D(n9280), .CK(clk_divided), .CD(n43408), .Q(n712));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i4.GSR = "DISABLED";
    FD1S3IX state_FSM_i5 (.D(n39661), .CK(clk_divided), .CD(n43408), .Q(n711));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i5.GSR = "DISABLED";
    FD1S3IX state_FSM_i6 (.D(n9284), .CK(clk_divided), .CD(n43408), .Q(n710));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam state_FSM_i6.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_main[1]), .B(cnt_main_c[0]), 
         .C(cnt_main[3]), .Z(n40557)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(81[20:28])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hfefe;
    LUT4 i2_4_lut (.A(cnt[3]), .B(n3), .C(n8), .D(n4_adj_1351), .Z(cnt_3__N_91[3])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_4_lut.init = 16'hffec;
    LUT4 i38914_3_lut_3_lut_4_lut (.A(n43393), .B(n43254), .C(n40193), 
         .D(n43252), .Z(clk_divided_enable_31)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38914_3_lut_3_lut_4_lut.init = 16'h4000;
    LUT4 i38925_2_lut_2_lut_3_lut_4_lut (.A(n43393), .B(n43254), .C(n40193), 
         .D(n43252), .Z(clk_divided_enable_27)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(151[21:26])
    defparam i38925_2_lut_2_lut_3_lut_4_lut.init = 16'h0040;
    LUT4 cnt_main_1__bdd_4_lut (.A(cnt_main[1]), .B(cnt_main_c[0]), .C(\cnt_main[2] ), 
         .D(cnt_main[3]), .Z(n44502)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A ((D)+!B))) */ ;
    defparam cnt_main_1__bdd_4_lut.init = 16'h0046;
    LUT4 i1_2_lut_3_lut (.A(n43282), .B(n43279), .C(n40212), .Z(n40219)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(n43282), .B(n43279), .C(n711), .Z(n40346)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_adj_68.init = 16'h7070;
    LUT4 cnt_read_2__bdd_4_lut (.A(cnt_read[2]), .B(n43282), .C(\cnt_read[0] ), 
         .D(cnt_read[3]), .Z(n40582)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam cnt_read_2__bdd_4_lut.init = 16'hfffe;
    FD1P3IX ADC_level__i5 (.D(ADC_level_r[4]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i5.GSR = "DISABLED";
    FD1P3IX ADC_level__i6 (.D(ADC_level_r[5]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i6.GSR = "DISABLED";
    FD1P3IX ADC_level__i7 (.D(ADC_level_r[6]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\voltage_code[6] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i7.GSR = "DISABLED";
    LUT4 i23109_2_lut_rep_701 (.A(n711), .B(rst_n_in_c), .Z(n43418)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23109_2_lut_rep_701.init = 16'h8888;
    LUT4 i2_2_lut_3_lut (.A(n711), .B(rst_n_in_c), .C(n43279), .Z(n8_adj_1350)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i7265_2_lut_rep_702 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n43419)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i7265_2_lut_rep_702.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_69 (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n40212), .D(n43279), .Z(n40221)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_adj_69.init = 16'h6000;
    LUT4 i7267_2_lut_rep_539_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n43279), .Z(n43256)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i7267_2_lut_rep_539_3_lut.init = 16'h6060;
    LUT4 i3_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), .C(n43282), 
         .D(n43281), .Z(n40141)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i3_4_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n714), .B(n43261), .C(n43277), .D(n43272), 
         .Z(n40356)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_3_lut_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_70 (.A(n43254), .B(n174[0]), .C(n711), .D(n712), 
         .Z(n4_c)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_70.init = 16'heca0;
    LUT4 i2_3_lut (.A(cnt[2]), .B(n4_adj_1352), .C(n8), .Z(cnt_3__N_91[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut.init = 16'hecec;
    FD1P3IX ADC_level__i8 (.D(ADC_level_r[7]), .SP(clk_divided_enable_23), 
            .CD(n24131), .CK(clk_divided), .Q(\ADC_level[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i8.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_71 (.A(n712), .B(n43252), .C(n174[2]), .D(n711), 
         .Z(n4_adj_1352)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_71.init = 16'heca0;
    LUT4 i2_3_lut_adj_72 (.A(cnt[1]), .B(n4_adj_1353), .C(n8), .Z(cnt_3__N_91[1])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_3_lut_adj_72.init = 16'hecec;
    LUT4 n42234_bdd_3_lut_4_lut (.A(n43279), .B(n40141), .C(n711), .D(n42234), 
         .Z(n42235)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(C+(D)))) */ ;
    defparam n42234_bdd_3_lut_4_lut.init = 16'h7f70;
    LUT4 i1_4_lut_4_lut_adj_73 (.A(n43272), .B(n26159), .Z(n26)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1_4_lut_4_lut_adj_73.init = 16'h1111;
    LUT4 i1_4_lut_adj_74 (.A(n712), .B(n43393), .C(n174[1]), .D(n711), 
         .Z(n4_adj_1353)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_74.init = 16'heca0;
    LUT4 i22849_2_lut_rep_526 (.A(\cnt_read[0] ), .B(n43279), .Z(n43243)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i22849_2_lut_rep_526.init = 16'h8888;
    LUT4 n712_bdd_4_lut (.A(cnt_write[2]), .B(cnt_write[1]), .C(\cnt_write[0] ), 
         .D(cnt_write[3]), .Z(n42749)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam n712_bdd_4_lut.init = 16'hfffd;
    LUT4 pwr_bdd_2_lut_39610 (.A(n42749), .B(n712), .Z(n42750)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam pwr_bdd_2_lut_39610.init = 16'hbbbb;
    PFUMX i39557 (.BLUT(n42751), .ALUT(n42748), .C0(n711), .Z(sda_out_N_190));
    LUT4 i5938_2_lut_rep_537 (.A(cnt[0]), .B(n43279), .Z(n43254)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i5938_2_lut_rep_537.init = 16'h9999;
    LUT4 i2_3_lut_adj_75 (.A(n714), .B(rst_n_in_c), .C(n715), .Z(n40212)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i2_3_lut_adj_75.init = 16'h0404;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n43419), .B(n43279), .C(n43281), .D(n43282), 
         .Z(n4_adj_1354)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hcc80;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n43419), .B(n43279), .C(n43418), .D(n40582), 
         .Z(n40193)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0080;
    LUT4 i4_4_lut_4_lut (.A(n21), .B(n44052), .C(n26), .D(n714), .Z(n39547)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i4_4_lut_4_lut.init = 16'hfeee;
    LUT4 i859_3_lut_rep_705 (.A(n43334), .B(cnt[3]), .C(cnt_write[3]), 
         .D(cnt_write[2]), .Z(n44470)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i859_3_lut_rep_705.init = 16'h1110;
    LUT4 i1_4_lut_adj_76 (.A(n712), .B(n40785), .C(n43247), .D(n42433), 
         .Z(n21)) /* synthesis lut_function=(!((B (C+!(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_76.init = 16'h2a22;
    LUT4 i1_4_lut_2_lut_2_lut_else_3_lut_3_lut (.A(n43334), .B(cnt[3]), 
         .C(cnt_write[3]), .Z(n43450)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_4_lut_2_lut_2_lut_else_3_lut_3_lut.init = 16'he0e0;
    LUT4 scl_out_N_151_1__bdd_4_lut_39715 (.A(n43246), .B(n43247), .C(n43287), 
         .D(n712), .Z(n42883)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+(D)))+!A !(C+(D))) */ ;
    defparam scl_out_N_151_1__bdd_4_lut_39715.init = 16'h880f;
    LUT4 n42750_bdd_2_lut_4_lut (.A(cnt_write[2]), .B(n43299), .C(cnt_write[3]), 
         .D(n42750), .Z(n42751)) /* synthesis lut_function=(A ((D)+!B)+!A (B (D)+!B (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam n42750_bdd_2_lut_4_lut.init = 16'hff32;
    LUT4 i1_2_lut_rep_528_4_lut (.A(cnt_write[2]), .B(n43299), .C(cnt_write[3]), 
         .D(n43294), .Z(n43245)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i1_2_lut_rep_528_4_lut.init = 16'hcd00;
    LUT4 i5937_2_lut_4_lut (.A(cnt_write[2]), .B(n43299), .C(cnt_write[3]), 
         .D(cnt[0]), .Z(n174[0])) /* synthesis lut_function=(A (B (D)+!B !(D))+!A (B (D)+!B !(C (D)+!C !(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i5937_2_lut_4_lut.init = 16'hcd32;
    LUT4 i7257_2_lut_rep_529_4_lut (.A(cnt_write[2]), .B(n43299), .C(cnt_write[3]), 
         .D(n43384), .Z(n43246)) /* synthesis lut_function=(A (B (D))+!A (B (D)+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i7257_2_lut_rep_529_4_lut.init = 16'hcd00;
    LUT4 n1436_bdd_2_lut_4_lut (.A(cnt_write[2]), .B(n43299), .C(cnt_write[3]), 
         .D(n40859), .Z(n42232)) /* synthesis lut_function=(!(A (B (D))+!A (B (D)+!B !(C+!(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam n1436_bdd_2_lut_4_lut.init = 16'h32ff;
    LUT4 i38889_4_lut_rep_562 (.A(cnt_read[4]), .B(n43299), .C(cnt_read[3]), 
         .D(cnt_read[2]), .Z(n43279)) /* synthesis lut_function=(A (B)+!A (B+!(C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(132[7] 143[14])
    defparam i38889_4_lut_rep_562.init = 16'hcccd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(cnt_read[3]), .B(n43308), .C(n40212), 
         .D(n43279), .Z(n40223)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'h6000;
    LUT4 scl_out_N_151_1__bdd_2_lut_39714_3_lut_3_lut_4_lut (.A(cnt_read[3]), 
         .B(n43308), .C(n43279), .D(n43419), .Z(n42882)) /* synthesis lut_function=(A (B (C (D)))+!A !(B+!(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam scl_out_N_151_1__bdd_2_lut_39714_3_lut_3_lut_4_lut.init = 16'h9000;
    LUT4 i37899_3_lut_4_lut_4_lut (.A(cnt_read[4]), .B(cnt_read[3]), .C(n43308), 
         .D(n43279), .Z(n40872)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i37899_3_lut_4_lut_4_lut.init = 16'h7e00;
    LUT4 i1_2_lut_2_lut_3_lut_3_lut (.A(n43329), .B(n40212), .C(n44470), 
         .Z(n40214)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i1_2_lut_2_lut_3_lut_3_lut.init = 16'h0808;
    LUT4 i37816_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(n43329), .B(n43294), 
         .C(\cnt_write[0] ), .D(n44470), .Z(n40785)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+((D)+!C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i37816_3_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hffed;
    LUT4 i38879_3_lut_4_lut_4_lut (.A(n43329), .B(n711), .C(n712), .D(n44470), 
         .Z(n40984)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B+!(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(109[7] 120[14])
    defparam i38879_3_lut_4_lut_4_lut.init = 16'hcfef;
    FD1P3AX scl_out_r_154 (.D(scl_out_N_143), .SP(clk_divided_enable_24), 
            .CK(clk_divided), .Q(scl_out_c)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam scl_out_r_154.GSR = "DISABLED";
    FD1P3JX i148_166 (.D(sda_out_N_190), .SP(sda_out_N_182), .PD(n43408), 
            .CK(clk_divided), .Q(sda_out_N_167)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam i148_166.GSR = "DISABLED";
    LUT4 i5987_1_lut (.A(sda_out_N_167), .Z(n8700)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(43[2] 191[14])
    defparam i5987_1_lut.init = 16'h5555;
    FD1P3AX ADC_level_r__i0 (.D(sda_out_out), .SP(clk_divided_enable_25), 
            .CK(clk_divided), .Q(ADC_level_r[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i0.GSR = "DISABLED";
    LUT4 n1436_bdd_4_lut_39471 (.A(n7_adj_1355), .B(n714), .C(n707[2]), 
         .Z(n42233)) /* synthesis lut_function=(A ((C)+!B)+!A !(B+(C))) */ ;
    defparam n1436_bdd_4_lut_39471.init = 16'ha3a3;
    LUT4 clk_divided_I_0_2_lut (.A(clk_divided), .B(clk_divided_N_170), 
         .Z(clk_divided_N_169)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(30[4] 38[11])
    defparam clk_divided_I_0_2_lut.init = 16'h6666;
    LUT4 i4433_4_lut (.A(cnt_divided[12]), .B(cnt_divided[13]), .C(cnt_divided[11]), 
         .D(n37947), .Z(clk_divided_N_170)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i4433_4_lut.init = 16'hccc8;
    LUT4 i3_4_lut_adj_78 (.A(n38084), .B(cnt_divided[10]), .C(cnt_divided[9]), 
         .D(cnt_divided[8]), .Z(n37947)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_78.init = 16'h8000;
    LUT4 i4_4_lut (.A(cnt_divided[5]), .B(cnt_divided[7]), .C(n37953), 
         .D(n6_adj_1356), .Z(n38084)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4_4_lut.init = 16'hfffe;
    LUT4 i7270_2_lut_rep_630 (.A(cnt_read[1]), .B(\cnt_read[0] ), .Z(n43347)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i7270_2_lut_rep_630.init = 16'h8888;
    LUT4 i3_4_lut_adj_79 (.A(cnt_divided[0]), .B(cnt_divided[3]), .C(cnt_divided[2]), 
         .D(cnt_divided[1]), .Z(n37953)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i3_4_lut_adj_79.init = 16'h8000;
    LUT4 i1_2_lut (.A(cnt_divided[6]), .B(cnt_divided[4]), .Z(n6_adj_1356)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_527_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n43279), .D(cnt_read[2]), .Z(n43244)) /* synthesis lut_function=(A (B (C (D)))+!A !(((D)+!C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_527_4_lut_4_lut.init = 16'h8040;
    LUT4 i38881_4_lut (.A(n40557), .B(clk_divided_enable_40), .C(n44499), 
         .D(n707[2]), .Z(clk_divided_enable_38)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(D)))) */ ;
    defparam i38881_4_lut.init = 16'h5f4c;
    LUT4 i6531_4_lut (.A(n707[2]), .B(n43272), .C(n43436), .D(n43230), 
         .Z(n9278)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i6531_4_lut.init = 16'heca0;
    CCU2D cnt_divided_3793_add_4_15 (.A0(cnt_divided[13]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37850), .S0(n61[13]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_15.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_15.INIT1 = 16'h0000;
    defparam cnt_divided_3793_add_4_15.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_15.INJECT1_1 = "NO";
    CCU2D cnt_divided_3793_add_4_13 (.A0(cnt_divided[11]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[12]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37849), .COUT(n37850), .S0(n61[11]), 
          .S1(n61[12]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_13.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_13.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_13.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_13.INJECT1_1 = "NO";
    CCU2D cnt_divided_3793_add_4_11 (.A0(cnt_divided[9]), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(cnt_divided[10]), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n37848), .COUT(n37849), .S0(n61[9]), 
          .S1(n61[10]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_11.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_11.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_11.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_11.INJECT1_1 = "NO";
    FD1P3AX ADC_level_r__i7 (.D(sda_out_out), .SP(clk_divided_enable_26), 
            .CK(clk_divided), .Q(ADC_level_r[7])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i7.GSR = "DISABLED";
    CCU2D cnt_divided_3793_add_4_9 (.A0(cnt_divided[7]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[8]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37847), .COUT(n37848), .S0(n61[7]), .S1(n61[8]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_9.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_9.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_9.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_9.INJECT1_1 = "NO";
    CCU2D cnt_divided_3793_add_4_7 (.A0(cnt_divided[5]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[6]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37846), .COUT(n37847), .S0(n61[5]), .S1(n61[6]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_7.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_7.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_7.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_7.INJECT1_1 = "NO";
    LUT4 i37841_2_lut_rep_507_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(n43279), .D(cnt_read[2]), .Z(n43224)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i37841_2_lut_rep_507_3_lut_4_lut.init = 16'h7080;
    LUT4 i9802_2_lut_rep_591_3_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .Z(n43308)) /* synthesis lut_function=(A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i9802_2_lut_rep_591_3_lut.init = 16'h8080;
    LUT4 i90_4_lut (.A(n43483), .B(n43472), .C(n711), .D(n4_adj_1354), 
         .Z(n54)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i90_4_lut.init = 16'h0a3a;
    FD1P3AX ADC_level_r__i6 (.D(sda_out_out), .SP(clk_divided_enable_27), 
            .CK(clk_divided), .Q(ADC_level_r[6])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i6.GSR = "DISABLED";
    LUT4 i23149_2_lut_3_lut_4_lut (.A(n43335), .B(cnt_main[3]), .C(n43405), 
         .D(n44500), .Z(n26159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23149_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX ADC_level_r__i5 (.D(sda_out_out), .SP(clk_divided_enable_28), 
            .CK(clk_divided), .Q(ADC_level_r[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i5.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i4 (.D(sda_out_out), .SP(clk_divided_enable_29), 
            .CK(clk_divided), .Q(ADC_level_r[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i4.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i3 (.D(sda_out_out), .SP(clk_divided_enable_30), 
            .CK(clk_divided), .Q(ADC_level_r[3])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i3.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i2 (.D(sda_out_out), .SP(clk_divided_enable_31), 
            .CK(clk_divided), .Q(ADC_level_r[2])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i2.GSR = "DISABLED";
    FD1P3AX ADC_level_r__i1 (.D(sda_out_out), .SP(clk_divided_enable_32), 
            .CK(clk_divided), .Q(ADC_level_r[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level_r__i1.GSR = "DISABLED";
    FD1P3IX cnt_main__i1 (.D(n43261), .SP(clk_divided_enable_40), .CD(n17007), 
            .CK(clk_divided), .Q(cnt_main[1])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i1.GSR = "DISABLED";
    FD1P3IX cnt_main__i2 (.D(n43277), .SP(clk_divided_enable_40), .CD(n17007), 
            .CK(clk_divided), .Q(\cnt_main[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i2.GSR = "DISABLED";
    FD1P3AX ADC_level__i1 (.D(n40344), .SP(clk_divided_enable_35), .CK(clk_divided), 
            .Q(\realv_5[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam ADC_level__i1.GSR = "DISABLED";
    FD1P3AX cnt_write__i0 (.D(n40406), .SP(clk_divided_enable_36), .CK(clk_divided), 
            .Q(\cnt_write[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_write__i0.GSR = "DISABLED";
    FD1P3AX cnt_stop__i0 (.D(n40405), .SP(clk_divided_enable_37), .CK(clk_divided), 
            .Q(cnt_stop[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_stop__i0.GSR = "DISABLED";
    LUT4 i23123_2_lut_rep_718 (.A(n714), .B(rst_n_in_c), .Z(n44499)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23123_2_lut_rep_718.init = 16'h8888;
    LUT4 i1_3_lut_rep_554_4_lut (.A(n43335), .B(cnt_main[3]), .C(n43405), 
         .D(n44500), .Z(n43271)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;
    defparam i1_3_lut_rep_554_4_lut.init = 16'hfeee;
    LUT4 i1_2_lut_rep_514_3_lut_4_lut (.A(n43335), .B(cnt_main[3]), .C(n714), 
         .D(cnt_main_c[0]), .Z(n43231)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_2_lut_rep_514_3_lut_4_lut.init = 16'he0f0;
    LUT4 i10000_2_lut_rep_564_3_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[3]), .D(cnt_read[2]), .Z(n43281)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i10000_2_lut_rep_564_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_rep_513_3_lut_4_lut (.A(n43335), .B(cnt_main[3]), .C(n714), 
         .D(n44500), .Z(n43230)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_513_3_lut_4_lut.init = 16'h0010;
    LUT4 i4_4_lut_4_lut_4_lut_else_4_lut_4_lut (.A(n714), .B(rst_n_in_c), 
         .C(cnt_main[3]), .D(cnt_main_c[0]), .Z(n44484)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut_4_lut_4_lut_else_4_lut_4_lut.init = 16'h0800;
    FD1P3AX cnt_start__i0 (.D(n26649), .SP(clk_divided_enable_38), .CK(clk_divided), 
            .Q(cnt_start[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_start__i0.GSR = "DISABLED";
    FD1P3AX cnt_read__i0 (.D(n40407), .SP(clk_divided_enable_39), .CK(clk_divided), 
            .Q(\cnt_read[0] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_read__i0.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_80 (.A(cnt[3]), .B(n43334), .C(n44470), .D(n712), 
         .Z(n3)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam i1_4_lut_4_lut_adj_80.init = 16'h6a00;
    LUT4 select_970_Select_3_i4_4_lut_4_lut (.A(cnt[3]), .B(n43334), .C(n43279), 
         .D(n711), .Z(n4_adj_1351)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A !((C+!(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam select_970_Select_3_i4_4_lut_4_lut.init = 16'ha600;
    LUT4 i1_3_lut_3_lut_4_lut_3_lut_4_lut (.A(n43405), .B(cnt_main_c[0]), 
         .C(cnt_main[3]), .D(n43335), .Z(n4)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(83[7] 94[16])
    defparam i1_3_lut_3_lut_4_lut_3_lut_4_lut.init = 16'hfff2;
    LUT4 i1_2_lut_3_lut_4_lut_adj_81 (.A(cnt_read[2]), .B(n43347), .C(n40212), 
         .D(n43279), .Z(n40217)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_3_lut_4_lut_adj_81.init = 16'h6000;
    FD1P3IX cnt_main__i0 (.D(n43272), .SP(clk_divided_enable_40), .CD(n17007), 
            .CK(clk_divided), .Q(cnt_main_c[0])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=11, LSE_RCOL=14, LSE_LLINE=129, LSE_RLINE=129 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(52[3] 190[10])
    defparam cnt_main__i0.GSR = "DISABLED";
    LUT4 n1436_bdd_3_lut_4_lut (.A(cnt_read[2]), .B(n43347), .C(n40141), 
         .D(n43279), .Z(n42748)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam n1436_bdd_3_lut_4_lut.init = 16'hf600;
    PFUMX i40276 (.BLUT(n44484), .ALUT(n44485), .C0(cnt_main[1]), .Z(clk_divided_enable_13));
    LUT4 i1_4_lut_2_lut_2_lut_then_3_lut (.A(n43245), .B(n43247), .C(n44470), 
         .Z(n43451)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(121[7] 130[16])
    defparam i1_4_lut_2_lut_2_lut_then_3_lut.init = 16'h0707;
    LUT4 i1_2_lut_rep_508_3_lut_4_lut (.A(cnt_read[2]), .B(n43347), .C(n43279), 
         .D(cnt_read[3]), .Z(n43225)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C (D)))+!A !(C (D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_2_lut_rep_508_3_lut_4_lut.init = 16'h7080;
    LUT4 i10054_3_lut_rep_565_4_lut (.A(cnt_read[2]), .B(n43347), .C(cnt_read[3]), 
         .D(cnt_read[4]), .Z(n43282)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i10054_3_lut_rep_565_4_lut.init = 16'h7f80;
    LUT4 n714_bdd_4_lut_39305 (.A(n714), .B(n707[2]), .C(n43284), .D(n43287), 
         .Z(n9645)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B ((D)+!C)))) */ ;
    defparam n714_bdd_4_lut_39305.init = 16'h11d1;
    LUT4 i38955_2_lut_2_lut_3_lut_4_lut (.A(cnt_start[0]), .B(n43366), .C(n43330), 
         .D(n714), .Z(n26649)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;
    defparam i38955_2_lut_2_lut_3_lut_4_lut.init = 16'h000d;
    LUT4 i1_3_lut_4_lut_adj_82 (.A(n43204), .B(n43243), .C(n711), .D(n40872), 
         .Z(n40345)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_3_lut_4_lut_adj_82.init = 16'h0020;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_read[1]), .B(\cnt_read[0] ), 
         .C(cnt_read[2]), .D(n43279), .Z(n40174)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A !(B (D)+!B !(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(133[8] 139[15])
    defparam i1_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h6703;
    LUT4 i38808_2_lut_2_lut_3_lut_4_lut (.A(cnt_stop[0]), .B(n44475), .C(n43330), 
         .D(n714), .Z(n40405)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(168[7] 172[15])
    defparam i38808_2_lut_2_lut_3_lut_4_lut.init = 16'h000d;
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(cnt_start[2]), .B(n43362), .C(n40212), 
         .D(n43366), .Z(n40220)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(96[7] 100[14])
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'h0060;
    CCU2D cnt_divided_3793_add_4_5 (.A0(cnt_divided[3]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[4]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37845), .COUT(n37846), .S0(n61[3]), .S1(n61[4]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_5.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_5.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_5.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_5.INJECT1_1 = "NO";
    LUT4 i2_2_lut_2_lut_3_lut_4_lut (.A(cnt_start[2]), .B(n43362), .C(n40212), 
         .D(n43366), .Z(n40216)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i2_2_lut_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_84 (.A(cnt_stop[2]), .B(n43388), .C(n40212), 
         .D(n44475), .Z(n40224)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(168[7] 172[15])
    defparam i1_2_lut_3_lut_4_lut_adj_84.init = 16'h0060;
    CCU2D cnt_divided_3793_add_4_3 (.A0(cnt_divided[1]), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[2]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37844), .COUT(n37845), .S0(n61[1]), .S1(n61[2]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_3.INIT0 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_3.INIT1 = 16'hfaaa;
    defparam cnt_divided_3793_add_4_3.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_3.INJECT1_1 = "NO";
    CCU2D cnt_divided_3793_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(cnt_divided[0]), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n37844), .S1(n61[0]));   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793_add_4_1.INIT0 = 16'hF000;
    defparam cnt_divided_3793_add_4_1.INIT1 = 16'h0555;
    defparam cnt_divided_3793_add_4_1.INJECT1_0 = "NO";
    defparam cnt_divided_3793_add_4_1.INJECT1_1 = "NO";
    LUT4 i6533_4_lut (.A(n712), .B(n44502), .C(n43452), .D(n714), .Z(n9280)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i6533_4_lut.init = 16'hce0a;
    LUT4 i1_4_lut_adj_85 (.A(n40347), .B(n43231), .C(n43271), .Z(n39661)) /* synthesis lut_function=(A+(B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i1_4_lut_adj_85.init = 16'heaea;
    LUT4 i1_2_lut_3_lut_4_lut_adj_86 (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(n40212), .D(n43366), .Z(n40213)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(96[7] 100[14])
    defparam i1_2_lut_3_lut_4_lut_adj_86.init = 16'h0060;
    LUT4 i2_4_lut_adj_87 (.A(n40346), .B(n43225), .C(n40174), .D(n4_adj_1348), 
         .Z(n40347)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i2_4_lut_adj_87.init = 16'h2220;
    LUT4 i6537_4_lut (.A(n710), .B(n40356), .C(n42048), .D(n43435), 
         .Z(n9284)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(65[5] 188[14])
    defparam i6537_4_lut.init = 16'heece;
    LUT4 cnt_main_0__bdd_3_lut (.A(cnt_main_c[0]), .B(cnt_main[1]), .C(\cnt_main[2] ), 
         .Z(n44501)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;
    defparam cnt_main_0__bdd_3_lut.init = 16'h4848;
    LUT4 i7253_2_lut_rep_645 (.A(cnt_start[1]), .B(cnt_start[0]), .Z(n43362)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(96[7] 100[14])
    defparam i7253_2_lut_rep_645.init = 16'h8888;
    LUT4 i38762_2_lut_rep_600_3_lut (.A(cnt_start[1]), .B(cnt_start[0]), 
         .C(cnt_start[2]), .Z(n43317)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(96[7] 100[14])
    defparam i38762_2_lut_rep_600_3_lut.init = 16'h7f7f;
    FD1S3IX cnt_divided_3793__i1 (.D(n61[1]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[1])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i1.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_649 (.A(cnt_start[1]), .B(cnt_start[3]), .C(cnt_start[2]), 
         .Z(n43366)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut_rep_649.init = 16'hecec;
    FD1S3IX cnt_divided_3793__i2 (.D(n61[2]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[2])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i2.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i3 (.D(n61[3]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[3])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i3.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i4 (.D(n61[4]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[4])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i4.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i5 (.D(n61[5]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[5])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i5.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i6 (.D(n61[6]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[6])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i6.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i7 (.D(n61[7]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[7])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i7.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i8 (.D(n61[8]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[8])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i8.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i9 (.D(n61[9]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[9])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i9.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i10 (.D(n61[10]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[10])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i10.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i11 (.D(n61[11]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[11])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i11.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i12 (.D(n61[12]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[12])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i12.GSR = "DISABLED";
    FD1S3IX cnt_divided_3793__i13 (.D(n61[13]), .CK(clk_in_c), .CD(n1430), 
            .Q(cnt_divided[13])) /* synthesis syn_use_carry_chain=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(37[20:31])
    defparam cnt_divided_3793__i13.GSR = "DISABLED";
    LUT4 n121_bdd_3_lut_rep_567_4_lut_2_lut_3_lut (.A(cnt_start[1]), .B(cnt_start[3]), 
         .C(cnt_start[2]), .Z(n43284)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n121_bdd_3_lut_rep_567_4_lut_2_lut_3_lut.init = 16'hfdfd;
    LUT4 scl_out_N_162_2__bdd_4_lut_39727_4_lut_2_lut_3_lut (.A(cnt_start[1]), 
         .B(cnt_start[3]), .C(cnt_start[2]), .Z(n7_adj_1355)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam scl_out_N_162_2__bdd_4_lut_39727_4_lut_2_lut_3_lut.init = 16'hefef;
    LUT4 i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[3]), 
         .C(cnt_start[2]), .D(cnt_start[0]), .Z(n6_adj_1349)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i2_2_lut_3_lut_4_lut_4_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 i7269_2_lut_rep_570_3_lut_4_lut_4_lut (.A(cnt_start[1]), .B(cnt_start[3]), 
         .C(cnt_start[2]), .D(cnt_start[0]), .Z(n43287)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(C)))) */ ;
    defparam i7269_2_lut_rep_570_3_lut_4_lut_4_lut.init = 16'h1210;
    LUT4 cnt_stop_1__bdd_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), .C(cnt_stop[2]), 
         .Z(n43462)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam cnt_stop_1__bdd_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_88 (.A(cnt_stop[1]), .B(cnt_stop[0]), 
         .C(n40212), .D(n44475), .Z(n40218)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (((D)+!C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(168[7] 172[15])
    defparam i1_2_lut_3_lut_4_lut_adj_88.init = 16'h0060;
    PFUMX i38999 (.BLUT(n41930), .ALUT(n41929), .C0(n174[2]), .Z(sda_out_N_177));
    LUT4 i7255_2_lut_rep_667 (.A(cnt_write[1]), .B(\cnt_write[0] ), .Z(n43384)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i7255_2_lut_rep_667.init = 16'h6666;
    LUT4 i37888_3_lut_3_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), .C(cnt_write[3]), 
         .Z(n40859)) /* synthesis lut_function=(A+(B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(110[8] 116[15])
    defparam i37888_3_lut_3_lut.init = 16'hfefe;
    LUT4 i37880_2_lut_rep_668 (.A(cnt_write[1]), .B(\cnt_write[0] ), .Z(n43385)) /* synthesis lut_function=(A (B)) */ ;
    defparam i37880_2_lut_rep_668.init = 16'h8888;
    LUT4 i88_4_lut_4_lut_4_lut_4_lut_4_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), 
         .C(n44470), .D(cnt_write[2]), .Z(n60)) /* synthesis lut_function=(A (C+!(D))+!A (B+(C+!(D)))) */ ;
    defparam i88_4_lut_4_lut_4_lut_4_lut_4_lut.init = 16'hf4ff;
    LUT4 i10002_3_lut_rep_612_4_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), 
         .C(cnt_write[2]), .D(cnt_write[3]), .Z(n43329)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;
    defparam i10002_3_lut_rep_612_4_lut.init = 16'h7f80;
    LUT4 i1_2_lut_rep_577_3_lut_4_lut_3_lut (.A(cnt_write[1]), .B(\cnt_write[0] ), 
         .C(cnt_write[2]), .Z(n43294)) /* synthesis lut_function=(!(A (B (C))+!A !(B+(C)))) */ ;
    defparam i1_2_lut_rep_577_3_lut_4_lut_3_lut.init = 16'h7e7e;
    LUT4 i7278_2_lut_rep_671 (.A(cnt_stop[1]), .B(cnt_stop[0]), .Z(n43388)) /* synthesis lut_function=(A (B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(168[7] 172[15])
    defparam i7278_2_lut_rep_671.init = 16'h8888;
    LUT4 n299_bdd_3_lut_rep_586_4_lut_2_lut_3_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), 
         .C(cnt_stop[2]), .Z(n43303)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam n299_bdd_3_lut_rep_586_4_lut_2_lut_3_lut.init = 16'hfdfd;
    LUT4 n42047_bdd_2_lut_4_lut_4_lut (.A(cnt_stop[1]), .B(cnt_stop[3]), 
         .C(cnt_stop[2]), .D(cnt_stop[0]), .Z(n42048)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+!(D)))) */ ;
    defparam n42047_bdd_2_lut_4_lut_4_lut.init = 16'h1300;
    LUT4 mux_35_i2_3_lut_3_lut (.A(cnt[1]), .B(cnt[0]), .C(n44470), .Z(n174[1])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_35_i2_3_lut_3_lut.init = 16'h6a6a;
    LUT4 mux_51_i2_3_lut_rep_676 (.A(cnt[1]), .B(cnt[0]), .C(n43279), 
         .Z(n43393)) /* synthesis lut_function=(A ((C)+!B)+!A !((C)+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/adc.vhd(112[16:19])
    defparam mux_51_i2_3_lut_rep_676.init = 16'ha6a6;
    PFUMX i39764 (.BLUT(n43481), .ALUT(n43482), .C0(n712), .Z(n43483));
    PFUMX i39758 (.BLUT(n43470), .ALUT(n43471), .C0(cnt_read[3]), .Z(n43472));
    PFUMX i39347 (.BLUT(n42499), .ALUT(n42200), .C0(n710), .Z(n42500));
    PFUMX i39345 (.BLUT(n9645), .ALUT(n42497), .C0(n712), .Z(n42498));
    
endmodule
//
// Verilog Description of module trans_BCD
//

module trans_BCD (\voltage_code[1] , n43061, n2, n1, n41213, realv_1_1__N_293, 
            n43036, \ctrlword_595_5_15__N_638[2] , n42472, \ctrlword_595_1[7] , 
            GND_net, \ctrlword_595_3[13]__inv , n44503, \ctrlword_595_3[1] , 
            n43041, \ctrlword_595_3[2] , \ctrlword_595_3[3] , \ctrlword_595_3[4] , 
            \ctrlword_595_5_15__N_638[4] , \voltage_code[2] , \voltage_code[3] , 
            \realv_5[0] , \ADC_level[7] , n23, \voltage_code[6] , \decade[3] , 
            realv_1_1__N_326, n43154, n43144, n43380, n1_adj_1, n42473, 
            \unit[3] , n43145, n43111, n43049, n43034, n43033, \ctrlword_595_6_15__N_662[3] , 
            \voltage_code[15] , n43153, decade_3__N_561, n5, n6, n4, 
            n41205, n2_adj_2, n1_adj_3, n41201, n2_adj_4, n41216, 
            n5_adj_5, n4_adj_6, n41199, \voltage_code[13] , \voltage_code[14] , 
            n2_adj_7, n1_adj_8, n41198, n5_adj_9, n4_adj_10, n41193, 
            n43269, n41192, \voltage_code[4] , \voltage_code[5] , \voltage_code[12] , 
            n43156, realv_1_1__N_292, realv_1_1__N_283, n5_adj_11, n4_adj_12, 
            n6_adj_13, n5_adj_14, n4_adj_15, n41214, n42997, realv_1_1__N_321, 
            realv_1_1__N_303, n43150, n42951, n5_adj_16, n4_adj_17, 
            n41211, realv_1_1__N_275, n43115, n2_adj_18, n9212, n41210, 
            n2_adj_19, n41207, n5_adj_20, n4_adj_21, n41208, n38138, 
            n6740, n2_adj_22, n41204, n5_adj_23, n4_adj_24, n41202, 
            \y_cnt[2] , \y_cnt[1] , \y_cnt[0] , \y_cnt[3] , n43445, 
            n43444, n43020, n2_adj_25, n43010, n43043, n43042, \ctrlword_595_3[13] , 
            n40953, n43026, n43019, n43025, n43024, n43011, n43439, 
            \ctrlword_595_4_15__N_630[1] , n43013, realv_1_1__N_322, n43155, 
            n14, n42829, n2531, n14_adj_26, n7, n2532, n14_adj_27, 
            n42840, n2524, n43018, \ctrlword_595_4_15__N_630[3] , realv_4_0__N_551, 
            n1_adj_28, n43293, n42721, n23_adj_29, n14_adj_30, n42787, 
            n2527, realv_3_0__N_540, \realv_5[3] , n43069, n43055, 
            n43149, n42595, n43074, n42518, decade_3__N_580, decade_3__N_576, 
            n43417, n43354, n43290, n43339, \x_cnt[0] , n42929, 
            n44468, n433, \ctrlword_595_6[6] , \ctrlword_595_4_15__N_630[2] , 
            \ctrlword_595_6_15__N_662[7] , \ctrlword_595_6_15__N_654[7] , 
            n14_adj_31, n42690, n2382, n14_adj_32, n42648, n2385, 
            n9386, \ctrlword_595_5[6] , n41412, realv_1_1__N_372, n7_adj_33, 
            realv_2_0__N_520, n43086, realv_1_1__N_368, hundreds_1__N_558, 
            \ctrlword_595_4_15__N_622[1] , n2884, n2898, n1_adj_34, 
            n43355, n2886, n42029, n2896, n42182, n43411, n43307, 
            n41990, n43323, n42484, n2913, n3, \ctrlword_595_4[7] , 
            n3_adj_35, n43357, \ctrlword_595_6[3] , n43023, n43095, 
            n43108, n43148, \ctrlword_595_5_15__N_638[1] , \ctrlword_595_6[4] , 
            \ctrlword_595_6[5] , \ctrlword_595_3[5] , \ctrlword_595_5_15__N_638[5] , 
            n43029, n41914, n5_adj_36, n4_adj_37, n41217, \ctrlword_595_5_15__N_638[3] , 
            n43021, n9371, n40966, n43030, n43422, n4_adj_38, n41302, 
            n2_adj_39, n1_adj_40, n41301, n3_adj_41, n40431, \ctrlword_595_5_15__N_646[2] , 
            n6727, n3_adj_42, n41323, n6_adj_43, n41327, n40986, 
            n41324, n41329, n40993, n41330, n41321, n40992, n41326, 
            n41320, n40990, n40989, n40987, n43143, n43181, n9148, 
            n2973, n14498, n42688, \adcdisplay_7__N_1[6] , n4_adj_44, 
            n5_adj_45, n42629, n43015, n43022, n13333);
    input \voltage_code[1] ;
    output n43061;
    input n2;
    input n1;
    output n41213;
    input realv_1_1__N_293;
    output n43036;
    output \ctrlword_595_5_15__N_638[2] ;
    output n42472;
    output \ctrlword_595_1[7] ;
    input GND_net;
    input \ctrlword_595_3[13]__inv ;
    input n44503;
    output \ctrlword_595_3[1] ;
    output n43041;
    output \ctrlword_595_3[2] ;
    output \ctrlword_595_3[3] ;
    output \ctrlword_595_3[4] ;
    output \ctrlword_595_5_15__N_638[4] ;
    input \voltage_code[2] ;
    input \voltage_code[3] ;
    input \realv_5[0] ;
    input \ADC_level[7] ;
    output n23;
    input \voltage_code[6] ;
    output \decade[3] ;
    input realv_1_1__N_326;
    output n43154;
    output n43144;
    input n43380;
    output n1_adj_1;
    output n42473;
    output \unit[3] ;
    output n43145;
    output n43111;
    output n43049;
    output n43034;
    output n43033;
    output \ctrlword_595_6_15__N_662[3] ;
    output \voltage_code[15] ;
    output n43153;
    input decade_3__N_561;
    input n5;
    output n6;
    input n4;
    output n41205;
    input n2_adj_2;
    input n1_adj_3;
    output n41201;
    input n2_adj_4;
    output n41216;
    input n5_adj_5;
    input n4_adj_6;
    output n41199;
    output \voltage_code[13] ;
    output \voltage_code[14] ;
    input n2_adj_7;
    input n1_adj_8;
    output n41198;
    input n5_adj_9;
    input n4_adj_10;
    output n41193;
    input n43269;
    output n41192;
    input \voltage_code[4] ;
    input \voltage_code[5] ;
    output \voltage_code[12] ;
    output n43156;
    output realv_1_1__N_292;
    input realv_1_1__N_283;
    input n5_adj_11;
    input n4_adj_12;
    output n6_adj_13;
    input n5_adj_14;
    input n4_adj_15;
    output n41214;
    output n42997;
    output realv_1_1__N_321;
    input realv_1_1__N_303;
    output n43150;
    output n42951;
    input n5_adj_16;
    input n4_adj_17;
    output n41211;
    input realv_1_1__N_275;
    output n43115;
    input n2_adj_18;
    input n9212;
    output n41210;
    input n2_adj_19;
    output n41207;
    input n5_adj_20;
    input n4_adj_21;
    output n41208;
    output n38138;
    output n6740;
    input n2_adj_22;
    output n41204;
    input n5_adj_23;
    input n4_adj_24;
    output n41202;
    input \y_cnt[2] ;
    input \y_cnt[1] ;
    input \y_cnt[0] ;
    input \y_cnt[3] ;
    output n43445;
    output n43444;
    output n43020;
    input n2_adj_25;
    output n43010;
    output n43043;
    output n43042;
    input \ctrlword_595_3[13] ;
    output n40953;
    output n43026;
    output n43019;
    output n43025;
    output n43024;
    output n43011;
    output n43439;
    output \ctrlword_595_4_15__N_630[1] ;
    output n43013;
    input realv_1_1__N_322;
    input n43155;
    input n14;
    input n42829;
    output n2531;
    input n14_adj_26;
    input n7;
    output n2532;
    input n14_adj_27;
    input n42840;
    output n2524;
    output n43018;
    output \ctrlword_595_4_15__N_630[3] ;
    input realv_4_0__N_551;
    output n1_adj_28;
    input n43293;
    output n42721;
    output n23_adj_29;
    input n14_adj_30;
    input n42787;
    output n2527;
    input realv_3_0__N_540;
    output \realv_5[3] ;
    output n43069;
    output n43055;
    output n43149;
    output n42595;
    output n43074;
    output n42518;
    input decade_3__N_580;
    input decade_3__N_576;
    output n43417;
    input n43354;
    output n43290;
    input n43339;
    input \x_cnt[0] ;
    output n42929;
    output n44468;
    input n433;
    output \ctrlword_595_6[6] ;
    output \ctrlword_595_4_15__N_630[2] ;
    output \ctrlword_595_6_15__N_662[7] ;
    output \ctrlword_595_6_15__N_654[7] ;
    input n14_adj_31;
    input n42690;
    output n2382;
    input n14_adj_32;
    input n42648;
    output n2385;
    output n9386;
    output \ctrlword_595_5[6] ;
    output n41412;
    input realv_1_1__N_372;
    output n7_adj_33;
    input realv_2_0__N_520;
    output n43086;
    input realv_1_1__N_368;
    output hundreds_1__N_558;
    output \ctrlword_595_4_15__N_622[1] ;
    input n2884;
    input n2898;
    output n1_adj_34;
    input n43355;
    input n2886;
    output n42029;
    input n2896;
    output n42182;
    input n43411;
    input n43307;
    output n41990;
    input n43323;
    output n42484;
    input n2913;
    output n3;
    output \ctrlword_595_4[7] ;
    output n3_adj_35;
    input n43357;
    output \ctrlword_595_6[3] ;
    output n43023;
    output n43095;
    output n43108;
    output n43148;
    output \ctrlword_595_5_15__N_638[1] ;
    output \ctrlword_595_6[4] ;
    output \ctrlword_595_6[5] ;
    output \ctrlword_595_3[5] ;
    output \ctrlword_595_5_15__N_638[5] ;
    output n43029;
    output n41914;
    input n5_adj_36;
    input n4_adj_37;
    output n41217;
    output \ctrlword_595_5_15__N_638[3] ;
    output n43021;
    output n9371;
    output n40966;
    output n43030;
    input n43422;
    input n4_adj_38;
    output n41302;
    input n2_adj_39;
    input n1_adj_40;
    output n41301;
    output n3_adj_41;
    output n40431;
    output \ctrlword_595_5_15__N_646[2] ;
    output n6727;
    output n3_adj_42;
    output n41323;
    output n6_adj_43;
    output n41327;
    output n40986;
    output n41324;
    output n41329;
    output n40993;
    output n41330;
    output n41321;
    output n40992;
    output n41326;
    output n41320;
    output n40990;
    output n40989;
    output n40987;
    output n43143;
    output n43181;
    input n9148;
    input n2973;
    output n14498;
    output n42688;
    output \adcdisplay_7__N_1[6] ;
    input n4_adj_44;
    input n5_adj_45;
    output n42629;
    output n43015;
    output n43022;
    output n13333;
    
    wire \ctrlword_595_3[13]__inv  /* synthesis is_inv_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire \ctrlword_595_3[13]  /* synthesis is_clock=1 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/top.vhd(34[9:23])
    wire [15:0]voltage_code;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(46[9:21])
    
    wire n43183;
    wire [3:0]n361;
    
    wire n44496, n43052, n43046;
    wire [3:0]n386;
    
    wire n26022, n43464, n43465, n43168, n43014;
    wire [7:0]ctrlword_595_3_15__N_614;
    
    wire n43426, n43427, n37768, n37769, n43162, n43161;
    wire [3:0]n362;
    
    wire n43133, n43395, n43130, n43116;
    wire [3:0]n372;
    
    wire n42635, n26701, n8, n40615, n43127;
    wire [3:0]n368;
    
    wire n43125, n43113, n8_adj_1282, n43165;
    wire [3:0]n356;
    
    wire n43122, n40430, n14_c;
    wire [7:0]ctrlword_595_6_15__N_654;
    
    wire n7_c, n9503, n43166, n43157, n43121, n26709, n8_adj_1284, 
        n40617, n43146, n43158, n43167, n43152, n43164, n6706;
    wire [2:0]n353;
    
    wire n9348;
    wire [3:0]n363;
    
    wire n43141;
    wire [3:0]n365;
    
    wire n43137;
    wire [3:0]n367;
    
    wire n37771, n43169, n44497, n43415, n43128, n43124, n43118, 
        n4_c, n5_adj_1285, n1_adj_1290, n9498, n37770, n43249, n29, 
        n29_adj_1302, n32, n32_adj_1305;
    wire [3:0]n377;
    wire [2:0]n371;
    
    wire n43077, n6676, n4_adj_1310, n4_adj_1311, n4_adj_1312, n44479, 
        n43476, n43475, n43479, n43478;
    wire [3:0]n385;
    
    wire n43062, n43486, n43485, n43441, n43442, n43112, n43051, 
        n43255, n43058, n43039, realv_1_0__N_460, realv_1_0__N_464;
    wire [7:0]ctrlword_595_4_15__N_630;
    
    wire n44469;
    wire [3:0]n384;
    
    wire n43064;
    wire [2:0]n381;
    
    wire n43047, n43028, n43060, n6692, n43131, n43016, n43066, 
        n43065, n4_adj_1323;
    wire [3:0]n382;
    
    wire n43071, n43057, n43068;
    wire [3:0]n383;
    wire [3:0]n387;
    
    wire n43063, n43248, n4_adj_1325, n4_adj_1326, n43070, n43045, 
        n43171, n44498, n43223, n42104, n43075, n43076, n42662, 
        n42666, n42665, n42667, n40672, n26694, n14_adj_1327, n43080, 
        n43040, n43082;
    wire [3:0]n379;
    wire [3:0]n380;
    
    wire n43083, n43132, n43038, n43087;
    wire [3:0]n378;
    
    wire n40676, n43187, n8415;
    wire [3:0]n355;
    
    wire n43089, n43088, n41428, n9337, n43090, n43085, n43138, 
        n43136, n26675, n40489, n42664, n8_adj_1330;
    wire [3:0]n376;
    
    wire n43091, n43093, n6703, n43096, n43101, n14_adj_1333, n4_adj_1334;
    wire [3:0]n375;
    
    wire n43097, n40609, n43140, n41068, n43098, n43100;
    wire [3:0]n370;
    
    wire n43110;
    wire [3:0]n373;
    
    wire n43103, n43099, n43163, n43107, n43102;
    wire [3:0]n369;
    
    wire n43109, n43147;
    wire [7:0]ctrlword_595_6_15__N_662;
    
    wire n40440, n41956, n42636, n43114, n43135, n42663, n40601, 
        n43176, n7_adj_1343, n43134, n43126, n43120, n42105, n43180, 
        n43374, n44481;
    
    LUT4 i38237_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2), 
         .D(n1), .Z(n41213)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38237_3_lut_4_lut.init = 16'hf960;
    LUT4 i4332_3_lut_4_lut_rep_715 (.A(voltage_code[11]), .B(n43183), .C(n361[1]), 
         .D(realv_1_1__N_293), .Z(n44496)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4332_3_lut_4_lut_rep_715.init = 16'hffe0;
    LUT4 i23014_2_lut_3_lut_4_lut_4_lut (.A(n43052), .B(n43046), .C(n386[3]), 
         .D(n43036), .Z(n26022)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23014_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    PFUMX i39754 (.BLUT(n43464), .ALUT(n43465), .C0(n43168), .Z(\ctrlword_595_5_15__N_638[2] ));
    LUT4 realv_3_3__bdd_3_lut_39382_4_lut_4_lut (.A(n43052), .B(n43046), 
         .C(n386[3]), .D(n43036), .Z(n42472)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)))+!A (B (C+!(D))+!B ((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_3__bdd_3_lut_39382_4_lut_4_lut.init = 16'hdbe7;
    FD1S1B mode_N_613_I_0_i2 (.D(n44503), .CK(GND_net), .PD(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_1[7] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam mode_N_613_I_0_i2.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i2 (.D(n43041), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_3[1] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i2.GSR = "DISABLED";
    FD1S1I ctrlword_595_3_15__N_614_7__I_0_i3 (.D(n43014), .CK(\ctrlword_595_3[13]__inv ), 
           .CD(n43041), .Q(\ctrlword_595_3[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i3.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i4 (.D(n43014), .CK(\ctrlword_595_3[13]__inv ), 
           .Q(\ctrlword_595_3[3] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i4.GSR = "DISABLED";
    FD1S1A ctrlword_595_3_15__N_614_7__I_0_i5 (.D(ctrlword_595_3_15__N_614[4]), 
           .CK(\ctrlword_595_3[13]__inv ), .Q(\ctrlword_595_3[4] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i5.GSR = "DISABLED";
    PFUMX i39732 (.BLUT(n43426), .ALUT(n43427), .C0(n43168), .Z(\ctrlword_595_5_15__N_638[4] ));
    CCU2D add_427_4 (.A0(\voltage_code[2] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[3] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37768), .COUT(n37769), .S0(voltage_code[9]), 
          .S1(voltage_code[10]));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_427_4.INIT0 = 16'h5aaa;
    defparam add_427_4.INIT1 = 16'h5aaa;
    defparam add_427_4.INJECT1_0 = "NO";
    defparam add_427_4.INJECT1_1 = "NO";
    CCU2D add_427_2 (.A0(\realv_5[0] ), .B0(\ADC_level[7] ), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[1] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .COUT(n37768), .S1(voltage_code[8]));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_427_2.INIT0 = 16'h7000;
    defparam add_427_2.INIT1 = 16'h5aaa;
    defparam add_427_2.INJECT1_0 = "NO";
    defparam add_427_2.INJECT1_1 = "NO";
    LUT4 i5685_2_lut_rep_416_4_lut_4_lut (.A(n43162), .B(n43161), .C(n362[1]), 
         .D(n23), .Z(n43133)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i5685_2_lut_rep_416_4_lut_4_lut.init = 16'h6c93;
    LUT4 i4989_3_lut_4_lut (.A(n43395), .B(n43130), .C(\voltage_code[6] ), 
         .D(n43116), .Z(n372[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4989_3_lut_4_lut.init = 16'h6966;
    LUT4 realv_3_3__bdd_3_lut_39468_3_lut_4_lut_4_lut (.A(n43052), .B(n43046), 
         .C(n386[3]), .D(n43036), .Z(n42635)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_3__bdd_3_lut_39468_3_lut_4_lut_4_lut.init = 16'h7dff;
    PFUMX decade_3__I_0_Mux_6_i15 (.BLUT(n26701), .ALUT(n8), .C0(\decade[3] ), 
          .Z(n40615)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4968_2_lut_rep_396_3_lut_3_lut_4_lut (.A(realv_1_1__N_326), .B(n43127), 
         .C(n368[1]), .D(n43125), .Z(n43113)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4968_2_lut_rep_396_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i13_3_lut_4_lut_4_lut (.A(n43052), .B(n43046), .C(n386[3]), .D(n43036), 
         .Z(n8_adj_1282)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut.init = 16'h3ca6;
    LUT4 i1_2_lut_rep_427_4_lut_4_lut (.A(n43165), .B(n356[2]), .C(n356[1]), 
         .D(n43154), .Z(n43144)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i1_2_lut_rep_427_4_lut_4_lut.init = 16'hff6c;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut (.A(n43165), .B(n356[2]), .C(n356[1]), 
         .D(n43380), .Z(n1_adj_1)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i10008_2_lut_rep_405_4_lut (.A(realv_1_1__N_326), .B(n43127), .C(n368[1]), 
         .D(n43125), .Z(n43122)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10008_2_lut_rep_405_4_lut.init = 16'hf600;
    LUT4 realv_3_3__bdd_4_lut_39373_3_lut_4_lut_4_lut (.A(n43052), .B(n43046), 
         .C(n386[3]), .D(n43036), .Z(n42473)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_3__bdd_4_lut_39373_3_lut_4_lut_4_lut.init = 16'h9a7d;
    PFUMX unit_3__I_0_Mux_5_i15 (.BLUT(n40430), .ALUT(n14_c), .C0(\unit[3] ), 
          .Z(ctrlword_595_6_15__N_654[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    PFUMX unit_3__I_0_Mux_4_i15 (.BLUT(n7_c), .ALUT(n9503), .C0(\unit[3] ), 
          .Z(ctrlword_595_6_15__N_654[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4331_3_lut_rep_440_4_lut (.A(n361[1]), .B(n43166), .C(n362[1]), 
         .D(n43162), .Z(n43157)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4331_3_lut_rep_440_4_lut.init = 16'hf666;
    LUT4 i4296_3_lut_rep_404_4_lut (.A(realv_1_1__N_326), .B(n43127), .C(n368[1]), 
         .D(n43125), .Z(n43121)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4296_3_lut_rep_404_4_lut.init = 16'hf666;
    PFUMX unit_3__I_0_Mux_6_i15 (.BLUT(n26709), .ALUT(n8_adj_1284), .C0(\unit[3] ), 
          .Z(n40617)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4800_2_lut_rep_429_3_lut_3_lut_4_lut (.A(n361[1]), .B(n43166), 
         .C(n362[1]), .D(n43162), .Z(n43146)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4800_2_lut_rep_429_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4807_3_lut_rep_428_4_lut_3_lut_4_lut (.A(n361[1]), .B(n43166), 
         .C(n362[1]), .D(n43162), .Z(n43145)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4807_3_lut_rep_428_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10016_2_lut_rep_441_4_lut (.A(n361[1]), .B(n43166), .C(n362[1]), 
         .D(n43162), .Z(n43158)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10016_2_lut_rep_441_4_lut.init = 16'hf600;
    LUT4 i4785_2_lut_rep_435_4_lut_4_lut (.A(voltage_code[10]), .B(n43167), 
         .C(n362[1]), .D(n43161), .Z(n43152)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4785_2_lut_rep_435_4_lut_4_lut.init = 16'h554a;
    LUT4 i5220_3_lut_4_lut (.A(n43168), .B(n43164), .C(n6706), .D(n353[1]), 
         .Z(\decade[3] )) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5220_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4975_3_lut_rep_394_4_lut_3_lut_4_lut (.A(realv_1_1__N_326), .B(n43127), 
         .C(n368[1]), .D(n43125), .Z(n43111)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4975_3_lut_rep_394_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 realv_4_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n43049), .B(n9348), .C(n43034), 
         .D(n43033), .Z(\ctrlword_595_6_15__N_662[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(165[51:60])
    defparam realv_4_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i4863_3_lut_4_lut_3_lut_4_lut (.A(n363[1]), .B(n43141), .C(n365[1]), 
         .D(n43137), .Z(n367[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4863_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    CCU2D add_427_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n37771), 
          .S0(\voltage_code[15] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_427_cout.INIT0 = 16'h0000;
    defparam add_427_cout.INIT1 = 16'h0000;
    defparam add_427_cout.INJECT1_0 = "NO";
    defparam add_427_cout.INJECT1_1 = "NO";
    LUT4 i5332_3_lut_rep_436_4_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43169), 
         .C(n356[1]), .D(n356[2]), .Z(n43153)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5332_3_lut_rep_436_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5924_3_lut_4_lut_3_lut (.A(n44497), .B(decade_3__N_561), .C(n43415), 
         .Z(n353[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i5924_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i4953_2_lut_rep_401_4_lut_4_lut (.A(n367[3]), .B(n43128), .C(n368[1]), 
         .D(n43124), .Z(n43118)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4953_2_lut_rep_401_4_lut_4_lut.init = 16'h554a;
    LUT4 Mux_321_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5), 
         .D(n4_c), .Z(n6)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_321_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i38229_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_1285), 
         .D(n4), .Z(n41205)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38229_3_lut_4_lut.init = 16'hf960;
    LUT4 i38225_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_2), 
         .D(n1_adj_3), .Z(n41201)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38225_3_lut_4_lut.init = 16'hf960;
    LUT4 i38240_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_4), 
         .D(n1_adj_1290), .Z(n41216)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38240_3_lut_4_lut.init = 16'hf960;
    LUT4 i38223_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_5), 
         .D(n4_adj_6), .Z(n41199)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38223_3_lut_4_lut.init = 16'hf960;
    LUT4 i6749_2_lut_2_lut_4_lut_4_lut_3_lut_4_lut (.A(\voltage_code[1] ), 
         .B(n43169), .C(n356[1]), .D(n356[2]), .Z(n9498)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6749_2_lut_2_lut_4_lut_4_lut_3_lut_4_lut.init = 16'h777b;
    CCU2D add_427_8 (.A0(\voltage_code[6] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\ADC_level[7] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37770), .COUT(n37771), .S0(\voltage_code[13] ), 
          .S1(\voltage_code[14] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_427_8.INIT0 = 16'h5aaa;
    defparam add_427_8.INIT1 = 16'h5aaa;
    defparam add_427_8.INJECT1_0 = "NO";
    defparam add_427_8.INJECT1_1 = "NO";
    LUT4 i38222_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_7), 
         .D(n1_adj_8), .Z(n41198)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38222_3_lut_4_lut.init = 16'hf960;
    LUT4 i38217_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_9), 
         .D(n4_adj_10), .Z(n41193)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38217_3_lut_4_lut.init = 16'hf960;
    LUT4 i38216_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n43269), 
         .D(n1_adj_1290), .Z(n41192)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38216_3_lut_4_lut.init = 16'hf960;
    CCU2D add_427_6 (.A0(\voltage_code[4] ), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(\voltage_code[5] ), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n37769), .COUT(n37770), .S0(voltage_code[11]), 
          .S1(\voltage_code[12] ));   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_arit.vhd(838[41:65])
    defparam add_427_6.INIT0 = 16'h5aaa;
    defparam add_427_6.INIT1 = 16'h5aaa;
    defparam add_427_6.INJECT1_0 = "NO";
    defparam add_427_6.INJECT1_1 = "NO";
    LUT4 decade_3__I_0_Mux_4_i15_then_4_lut (.A(n6706), .B(n43164), .C(n43153), 
         .D(n353[1]), .Z(n43427)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A !(B (C)+!B !(C+(D)))) */ ;
    defparam decade_3__I_0_Mux_4_i15_then_4_lut.init = 16'hb7bc;
    LUT4 i5310_2_lut_rep_439_4_lut_4_lut (.A(\voltage_code[1] ), .B(n43169), 
         .C(n356[1]), .D(n356[2]), .Z(n43156)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5310_2_lut_rep_439_4_lut_4_lut.init = 16'h554a;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n43249), .D(n43145), .Z(n29)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'h00b5;
    LUT4 Mux_330_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_11), 
         .D(n4_adj_12), .Z(n6_adj_13)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_330_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i38238_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_14), 
         .D(n4_adj_15), .Z(n41214)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38238_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_1_1__N_279_bdd_3_lut_4_lut_3_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n43249), .Z(n42997)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam realv_1_1__N_279_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_55 (.A(realv_1_1__N_321), .B(realv_1_1__N_303), 
         .C(n43150), .D(n43111), .Z(n29_adj_1302)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C+(D))+!B (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_55.init = 16'h00b5;
    LUT4 realv_1_1__N_302_bdd_3_lut_4_lut_3_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), 
         .C(n43150), .Z(n42951)) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam realv_1_1__N_302_bdd_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i1_4_lut_4_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), .C(n43150), 
         .D(n43111), .Z(n32)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h60e4;
    LUT4 i38235_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_16), 
         .D(n4_adj_17), .Z(n41211)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38235_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_4_lut_4_lut_adj_56 (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n43249), .D(n43145), .Z(n32_adj_1305)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(B (C+!(D))))) */ ;
    defparam i1_4_lut_4_lut_adj_56.init = 16'h60e4;
    LUT4 i5770_3_lut_4_lut_3_lut (.A(n377[3]), .B(realv_1_1__N_275), .C(n43115), 
         .Z(n371[1])) /* synthesis lut_function=(A (B)+!A !((C)+!B)) */ ;
    defparam i5770_3_lut_4_lut_3_lut.init = 16'h8c8c;
    LUT4 i38234_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_18), 
         .D(n9212), .Z(n41210)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38234_3_lut_4_lut.init = 16'hf960;
    LUT4 i38231_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_19), 
         .D(n9212), .Z(n41207)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38231_3_lut_4_lut.init = 16'hf960;
    LUT4 i38232_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_20), 
         .D(n4_adj_21), .Z(n41208)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38232_3_lut_4_lut.init = 16'hf960;
    LUT4 n4_bdd_4_lut_4_lut (.A(n377[3]), .B(realv_1_1__N_275), .C(n43115), 
         .D(n43077), .Z(n6676)) /* synthesis lut_function=(A (B ((D)+!C))+!A !(B (C+!(D))+!B !(C))) */ ;
    defparam n4_bdd_4_lut_4_lut.init = 16'h9c18;
    LUT4 i2_4_lut_4_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), .C(n43150), 
         .D(n4_adj_1310), .Z(n38138)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_4_lut.init = 16'h871e;
    LUT4 i5325_2_lut_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43169), 
         .C(n356[1]), .D(n356[2]), .Z(\unit[3] )) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5325_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i2_4_lut_4_lut_adj_57 (.A(realv_1_1__N_292), .B(realv_1_1__N_283), 
         .C(n43249), .D(n4_adj_1311), .Z(n6740)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A !(B (C)+!B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_4_lut_4_lut_adj_57.init = 16'h871e;
    LUT4 i4350_2_lut (.A(n44497), .B(decade_3__N_561), .Z(n4_adj_1312)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4350_2_lut.init = 16'heeee;
    LUT4 i38228_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n2_adj_22), 
         .D(n1_adj_3), .Z(n41204)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38228_3_lut_4_lut.init = 16'hf960;
    LUT4 i38226_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_23), 
         .D(n4_adj_24), .Z(n41202)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38226_3_lut_4_lut.init = 16'hf960;
    LUT4 i4772_2_lut_rep_444_3_lut_4_lut_4_lut (.A(voltage_code[11]), .B(n43183), 
         .C(n361[1]), .D(realv_1_1__N_293), .Z(n43161)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i4772_2_lut_rep_444_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 voltage_code_4__bdd_4_lut_40225_rep_714 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n44479)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_4__bdd_4_lut_40225_rep_714.init = 16'h83c8;
    LUT4 i1_4_lut_4_lut_4_lut_then_4_lut (.A(\y_cnt[2] ), .B(\y_cnt[1] ), 
         .C(\y_cnt[0] ), .D(\y_cnt[3] ), .Z(n43476)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_4_lut_4_lut_4_lut_then_4_lut.init = 16'h00bc;
    LUT4 i1_4_lut_4_lut_4_lut_else_4_lut (.A(\y_cnt[2] ), .B(\y_cnt[1] ), 
         .C(\y_cnt[0] ), .D(\y_cnt[3] ), .Z(n43475)) /* synthesis lut_function=(!(A (B (C+(D))+!B (C+!(D)))+!A (B (C+(D))+!B ((D)+!C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_4_lut_4_lut_4_lut_else_4_lut.init = 16'h021c;
    LUT4 i23088_2_lut_4_lut_4_lut_then_4_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), 
         .C(\y_cnt[1] ), .D(\y_cnt[0] ), .Z(n43479)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i23088_2_lut_4_lut_4_lut_then_4_lut.init = 16'h0001;
    LUT4 mux_6267_i3_then_4_lut_3_lut (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .Z(n43445)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+(C))) */ ;
    defparam mux_6267_i3_then_4_lut_3_lut.init = 16'h8383;
    LUT4 i23088_2_lut_4_lut_4_lut_else_4_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), 
         .C(\y_cnt[1] ), .Z(n43478)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i23088_2_lut_4_lut_4_lut_else_4_lut.init = 16'h4040;
    LUT4 mux_6267_i3_else_4_lut_4_lut (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n43444)) /* synthesis lut_function=(A (B (C+!(D)))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_6267_i3_else_4_lut_4_lut.init = 16'h80c8;
    LUT4 i2_3_lut_4_lut_then_3_lut (.A(n43049), .B(n385[3]), .C(n43062), 
         .Z(n43486)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_then_3_lut.init = 16'hfbfb;
    LUT4 i2_3_lut_4_lut_else_3_lut (.A(n43049), .B(n385[3]), .C(n43062), 
         .D(n386[2]), .Z(n43485)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_4_lut_else_3_lut.init = 16'hfffe;
    PFUMX i39740 (.BLUT(n43441), .ALUT(n43442), .C0(\voltage_code[6] ), 
          .Z(n43112));
    LUT4 i5381_2_lut_rep_317_3_lut_3_lut_4_lut (.A(n385[3]), .B(n43062), 
         .C(n386[1]), .D(n386[2]), .Z(n43034)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5381_2_lut_rep_317_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 Mux_241_i3_3_lut_rep_293_4_lut_4_lut (.A(n43020), .B(n2_adj_25), 
         .C(n43041), .D(n43380), .Z(n43010)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(159[54:63])
    defparam Mux_241_i3_3_lut_rep_293_4_lut_4_lut.init = 16'hc5c0;
    LUT4 i5366_2_lut_rep_326_4_lut_4_lut (.A(n385[3]), .B(n43062), .C(n386[1]), 
         .D(n386[2]), .Z(n43043)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5366_2_lut_rep_326_4_lut_4_lut.init = 16'h554a;
    LUT4 i5388_3_lut_rep_319_4_lut_3_lut_4_lut (.A(n385[3]), .B(n43062), 
         .C(n386[1]), .D(n386[2]), .Z(n43036)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5388_3_lut_rep_319_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i10057_2_lut_rep_334_4_lut (.A(n385[3]), .B(n43062), .C(n386[1]), 
         .D(n386[2]), .Z(n43051)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10057_2_lut_rep_334_4_lut.init = 16'heee0;
    LUT4 voltage_code_4__bdd_4_lut_39986 (.A(\voltage_code[4] ), .B(\voltage_code[6] ), 
         .C(\voltage_code[5] ), .D(\ADC_level[7] ), .Z(n43255)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_4__bdd_4_lut_39986.init = 16'h2962;
    LUT4 i4312_3_lut_rep_341 (.A(n385[3]), .B(n43062), .C(n386[1]), .D(n386[2]), 
         .Z(n43058)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4312_3_lut_rep_341.init = 16'hffe0;
    LUT4 i5374_3_lut_rep_325_4_lut (.A(n385[3]), .B(n43062), .C(n386[1]), 
         .D(n386[2]), .Z(n43042)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5374_3_lut_rep_325_4_lut.init = 16'h998c;
    LUT4 i38912_2_lut_3_lut_4_lut_4_lut (.A(n43039), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(\ctrlword_595_3[13] ), .Z(n40953)) /* synthesis lut_function=(A (B ((D)+!C)+!B (D))+!A (C+(D))) */ ;
    defparam i38912_2_lut_3_lut_4_lut_4_lut.init = 16'hff58;
    LUT4 i7206_2_lut_rep_316_4_lut_3_lut_4_lut (.A(n385[3]), .B(n43062), 
         .C(n386[1]), .D(n386[2]), .Z(n43033)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7206_2_lut_rep_316_4_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i6600_2_lut_4_lut_3_lut_4_lut (.A(n385[3]), .B(n43062), .C(n386[1]), 
         .D(n386[2]), .Z(n9348)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6600_2_lut_4_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 realv_2_0__bdd_4_lut_39454 (.A(n43026), .B(n43019), .C(n43025), 
         .D(n43024), .Z(ctrlword_595_4_15__N_630[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_2_0__bdd_4_lut_39454.init = 16'hf67d;
    LUT4 voltage_code_12__bdd_4_lut_rep_704 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n44469)) /* synthesis lut_function=(A (B (C)+!B !(C (D)+!C !(D)))+!A !(B ((D)+!C)+!B (C+!(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_rep_704.init = 16'h83e0;
    LUT4 i1_2_lut_rep_294_2_lut_4_lut_4_lut (.A(n43039), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n43380), .Z(n43011)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_rep_294_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 mux_6266_i3_then_4_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n43439)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A !(((D)+!C)+!B)) */ ;
    defparam mux_6266_i3_then_4_lut_4_lut.init = 16'h80e0;
    LUT4 realv_2_3__bdd_4_lut_39645 (.A(n43019), .B(n43025), .C(n43026), 
         .D(n43024), .Z(\ctrlword_595_4_15__N_630[1] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam realv_2_3__bdd_4_lut_39645.init = 16'hbdee;
    LUT4 i5276_3_lut_rep_324_4_lut_3_lut_4_lut (.A(n384[3]), .B(n43064), 
         .C(n381[1]), .D(n381[2]), .Z(n43041)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5276_3_lut_rep_324_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i50_2_lut_rep_296_4_lut_4_lut (.A(n43039), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n43041), .Z(n43013)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i50_2_lut_rep_296_4_lut_4_lut.init = 16'hff6c;
    LUT4 i5269_2_lut_3_lut_3_lut_4_lut (.A(n384[3]), .B(n43064), .C(n381[1]), 
         .D(n381[2]), .Z(realv_1_0__N_460)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5269_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i22899_2_lut_2_lut_4_lut_4_lut (.A(n43039), .B(realv_1_0__N_460), 
         .C(realv_1_0__N_464), .D(n43041), .Z(ctrlword_595_3_15__N_614[4])) /* synthesis lut_function=(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!B)) */ ;
    defparam i22899_2_lut_2_lut_4_lut_4_lut.init = 16'hff93;
    LUT4 i5254_2_lut_rep_330_4_lut_4_lut (.A(n384[3]), .B(n43064), .C(n381[1]), 
         .D(n381[2]), .Z(n43047)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5254_2_lut_rep_330_4_lut_4_lut.init = 16'h554a;
    LUT4 i13988_1_lut_rep_311_3_lut_4_lut_3_lut_4_lut (.A(n384[3]), .B(n43064), 
         .C(n381[1]), .D(n381[2]), .Z(n43028)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i13988_1_lut_rep_311_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i4308_3_lut_rep_343 (.A(n384[3]), .B(n43064), .C(n381[1]), .D(n381[2]), 
         .Z(n43060)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4308_3_lut_rep_343.init = 16'hffe0;
    LUT4 i5262_3_lut_4_lut (.A(n384[3]), .B(n43064), .C(n381[1]), .D(n381[2]), 
         .Z(realv_1_0__N_464)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5262_3_lut_4_lut.init = 16'h998c;
    LUT4 i4891_3_lut_4_lut (.A(n6692), .B(n43131), .C(realv_1_1__N_326), 
         .D(realv_1_1__N_322), .Z(realv_1_1__N_321)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4891_3_lut_4_lut.init = 16'h7f80;
    LUT4 unit_3__bdd_4_lut (.A(\unit[3] ), .B(n43156), .C(n43155), .D(\realv_5[0] ), 
         .Z(ctrlword_595_6_15__N_654[1])) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam unit_3__bdd_4_lut.init = 16'hbede;
    LUT4 Mux_307_i15_3_lut_4_lut (.A(n386[1]), .B(n43051), .C(n14), .D(n42829), 
         .Z(n2531)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_307_i15_3_lut_4_lut.init = 16'hf960;
    LUT4 i38577_3_lut_4_lut (.A(n386[1]), .B(n43051), .C(n14_adj_26), 
         .D(n7), .Z(n2532)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38577_3_lut_4_lut.init = 16'hf960;
    LUT4 Mux_300_i15_3_lut_4_lut (.A(n386[1]), .B(n43051), .C(n14_adj_27), 
         .D(n42840), .Z(n2524)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_300_i15_3_lut_4_lut.init = 16'hf960;
    LUT4 realv_2_3__I_0_Mux_3_i15_4_lut_4_lut (.A(n43026), .B(n43016), .C(n43019), 
         .D(n43018), .Z(\ctrlword_595_4_15__N_630[3] )) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(161[51:60])
    defparam realv_2_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i1_2_lut_2_lut_4_lut_4_lut_adj_58 (.A(n43066), .B(n43065), .C(realv_4_0__N_551), 
         .D(n43380), .Z(n1_adj_28)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_2_lut_4_lut_4_lut_adj_58.init = 16'h9300;
    LUT4 realv_4_0__bdd_2_lut_2_lut_4_lut_4_lut (.A(n43066), .B(n43065), 
         .C(realv_4_0__N_551), .D(n43293), .Z(n42721)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_4_0__bdd_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i10050_3_lut (.A(n23_adj_29), .B(realv_1_1__N_321), .C(n43111), 
         .Z(n4_adj_1323)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10050_3_lut.init = 16'h5454;
    LUT4 i10049_3_lut (.A(n23_adj_29), .B(realv_1_1__N_321), .C(n43111), 
         .Z(n4_adj_1310)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10049_3_lut.init = 16'h5151;
    LUT4 i10047_3_lut (.A(n23), .B(realv_1_1__N_292), .C(n43145), .Z(n4_adj_1311)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10047_3_lut.init = 16'h5151;
    LUT4 Mux_303_i15_3_lut_4_lut (.A(n386[1]), .B(n43051), .C(n14_adj_30), 
         .D(n42787), .Z(n2527)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_303_i15_3_lut_4_lut.init = 16'hf960;
    LUT4 i4237_2_lut_rep_340_3_lut (.A(n382[3]), .B(n43071), .C(n385[3]), 
         .Z(n43057)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4237_2_lut_rep_340_3_lut.init = 16'hf6f6;
    LUT4 i5192_2_lut_3_lut_3_lut_4_lut (.A(n43068), .B(n383[3]), .C(n384[1]), 
         .D(n384[2]), .Z(n387[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5192_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5177_2_lut_rep_335_4_lut_4_lut (.A(n43068), .B(n383[3]), .C(n384[1]), 
         .D(n384[2]), .Z(n43052)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5177_2_lut_rep_335_4_lut_4_lut.init = 16'h332c;
    LUT4 i5199_3_lut_4_lut_3_lut_4_lut (.A(n43068), .B(n383[3]), .C(n384[1]), 
         .D(n384[2]), .Z(n387[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5199_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4304_3_lut_rep_346 (.A(n43068), .B(n383[3]), .C(n384[1]), .D(n384[2]), 
         .Z(n43063)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4304_3_lut_rep_346.init = 16'hffe0;
    LUT4 i5185_3_lut_4_lut (.A(n43068), .B(n383[3]), .C(n384[1]), .D(n384[2]), 
         .Z(n387[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5185_3_lut_4_lut.init = 16'h998a;
    LUT4 i4405_2_lut_rep_398_3_lut_4_lut (.A(n43248), .B(\voltage_code[15] ), 
         .C(n4_adj_1325), .D(n4_adj_1326), .Z(n43115)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4405_2_lut_rep_398_3_lut_4_lut.init = 16'h8000;
    LUT4 i4309_3_lut_rep_344_4_lut (.A(realv_3_0__N_540), .B(n43070), .C(realv_4_0__N_551), 
         .D(n43066), .Z(n43061)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4309_3_lut_rep_344_4_lut.init = 16'hf666;
    LUT4 i5297_2_lut_3_lut_3_lut_4_lut (.A(realv_3_0__N_540), .B(n43070), 
         .C(realv_4_0__N_551), .D(n43066), .Z(\realv_5[3] )) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5297_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5304_3_lut_rep_332_4_lut_3_lut_4_lut (.A(realv_3_0__N_540), .B(n43070), 
         .C(realv_4_0__N_551), .D(n43066), .Z(n43049)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5304_3_lut_rep_332_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i5282_2_lut_rep_338_4_lut_4_lut (.A(\voltage_code[1] ), .B(n43069), 
         .C(realv_4_0__N_551), .D(n43065), .Z(n43055)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5282_2_lut_rep_338_4_lut_4_lut.init = 16'h554a;
    LUT4 i6950_2_lut_rep_432_4_lut_4_lut_3_lut_4_lut (.A(\voltage_code[1] ), 
         .B(n43169), .C(n356[1]), .D(n356[2]), .Z(n43149)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i6950_2_lut_rep_432_4_lut_4_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i4757_2_lut_rep_450_4_lut (.A(voltage_code[11]), .B(n43183), .C(n361[1]), 
         .D(realv_1_1__N_293), .Z(n43167)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4757_2_lut_rep_450_4_lut.init = 16'h554a;
    LUT4 realv_2_1__bdd_2_lut_2_lut_4_lut_4_lut (.A(n43045), .B(n387[2]), 
         .C(n387[1]), .D(n43380), .Z(n42595)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_2_1__bdd_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i4234_2_lut_rep_349_3_lut (.A(\voltage_code[2] ), .B(n43074), .C(\voltage_code[1] ), 
         .Z(n43066)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4234_2_lut_rep_349_3_lut.init = 16'hf6f6;
    LUT4 n1_bdd_2_lut_39677_2_lut_4_lut_4_lut (.A(n43045), .B(n387[2]), 
         .C(n387[1]), .D(n43293), .Z(n42518)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam n1_bdd_2_lut_39677_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i4396_2_lut_rep_454_3_lut_4_lut (.A(\voltage_code[6] ), .B(\voltage_code[5] ), 
         .C(n4_adj_1312), .D(\ADC_level[7] ), .Z(n43171)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4396_2_lut_rep_454_3_lut_4_lut.init = 16'he000;
    LUT4 i5895_2_lut_rep_451_3_lut_4_lut_else_4_lut_4_lut (.A(n44498), .B(n43223), 
         .C(decade_3__N_580), .D(decade_3__N_576), .Z(n44497)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5895_2_lut_rep_451_3_lut_4_lut_else_4_lut_4_lut.init = 16'h7f80;
    LUT4 i4590_2_lut_rep_698 (.A(\voltage_code[6] ), .B(\voltage_code[5] ), 
         .C(\ADC_level[7] ), .Z(n43415)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4590_2_lut_rep_698.init = 16'he0e0;
    LUT4 i4306_3_lut_4_lut_rep_717 (.A(\voltage_code[3] ), .B(n43255), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n44498)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4306_3_lut_4_lut_rep_717.init = 16'hffe0;
    LUT4 i2678_1_lut_rep_700 (.A(\realv_5[0] ), .Z(n43417)) /* synthesis lut_function=(!(A)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i2678_1_lut_rep_700.init = 16'h5555;
    LUT4 unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(\realv_5[0] ), .B(n43155), 
         .C(n43156), .Z(n7_c)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i1_2_lut_rep_573_4_lut_4_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), 
         .C(\y_cnt[3] ), .D(n43354), .Z(n43290)) /* synthesis lut_function=(!(A+(B (C)+!B (C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_2_lut_rep_573_4_lut_4_lut.init = 16'h0514;
    LUT4 unit_3__I_0_Mux_3_i15_4_lut_4_lut (.A(\realv_5[0] ), .B(n9498), 
         .C(\unit[3] ), .D(n43149), .Z(ctrlword_595_6_15__N_654[3])) /* synthesis lut_function=(A (C (D))+!A (B+(C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__I_0_Mux_3_i15_4_lut_4_lut.init = 16'hf454;
    LUT4 i1_2_lut_3_lut_3_lut (.A(\realv_5[0] ), .B(\y_cnt[2] ), .C(\y_cnt[1] ), 
         .Z(n1_adj_1290)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h1010;
    LUT4 n2_bdd_4_lut_4_lut (.A(\realv_5[0] ), .B(n43339), .C(n43380), 
         .D(\x_cnt[0] ), .Z(n42929)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam n2_bdd_4_lut_4_lut.init = 16'h5044;
    LUT4 unit_3__bdd_3_lut_39106_4_lut_4_lut (.A(\realv_5[0] ), .B(n43155), 
         .C(n44468), .D(\voltage_code[1] ), .Z(n42104)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(175[54:60])
    defparam unit_3__bdd_3_lut_39106_4_lut_4_lut.init = 16'h7ff7;
    LUT4 i5149_2_lut_rep_345_4_lut_4_lut (.A(n43075), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n43062)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5149_2_lut_rep_345_4_lut_4_lut.init = 16'h332c;
    LUT4 i5171_3_lut_4_lut_3_lut_4_lut (.A(n43075), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n386[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5171_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5164_2_lut_3_lut_3_lut_4_lut (.A(n43075), .B(n382[3]), .C(n383[1]), 
         .D(n383[2]), .Z(n386[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5164_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4303_3_lut_rep_354 (.A(n43075), .B(n382[3]), .C(n383[1]), .D(n383[2]), 
         .Z(n43071)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4303_3_lut_rep_354.init = 16'hffe0;
    LUT4 i5157_3_lut_4_lut (.A(n43075), .B(n382[3]), .C(n383[1]), .D(n383[2]), 
         .Z(n386[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5157_3_lut_4_lut.init = 16'h998a;
    LUT4 i4667_3_lut_4_lut (.A(n43077), .B(n43076), .C(n6676), .D(n371[1]), 
         .Z(n381[2])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4667_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5601_2_lut_rep_308_4_lut_4_lut (.A(n387[3]), .B(n43047), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n43025)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5601_2_lut_rep_308_4_lut_4_lut.init = 16'h554a;
    LUT4 n1_bdd_3_lut_39495 (.A(n433), .B(ctrlword_595_6_15__N_654[1]), 
         .C(ctrlword_595_6_15__N_654[2]), .Z(n42662)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n1_bdd_3_lut_39495.init = 16'he4e4;
    LUT4 n1_bdd_4_lut_39548 (.A(n43034), .B(n43043), .C(n43042), .D(n43049), 
         .Z(n42666)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B (C (D))+!B !(C))) */ ;
    defparam n1_bdd_4_lut_39548.init = 16'hbede;
    LUT4 n42666_bdd_3_lut (.A(n42666), .B(n42665), .C(n433), .Z(n42667)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n42666_bdd_3_lut.init = 16'hcaca;
    LUT4 i5616_2_lut_rep_302_3_lut_3_lut_4_lut (.A(n387[3]), .B(n43047), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n43019)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5616_2_lut_rep_302_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5623_3_lut_rep_303_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43047), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n43020)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5623_3_lut_rep_303_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i6051_1_lut_rep_297_3_lut_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43047), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n43014)) /* synthesis lut_function=(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i6051_1_lut_rep_297_3_lut_4_lut_3_lut_4_lut.init = 16'he01f;
    LUT4 i37710_1_lut (.A(n40672), .Z(\ctrlword_595_6[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i37710_1_lut.init = 16'h5555;
    PFUMX realv_2_3__I_0_Mux_2_i15 (.BLUT(n26694), .ALUT(n14_adj_1327), 
          .C0(n43019), .Z(\ctrlword_595_4_15__N_630[2] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4660_3_lut_4_lut (.A(n377[3]), .B(n43080), .C(n43077), .D(n6676), 
         .Z(n381[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4660_3_lut_4_lut.init = 16'h6966;
    LUT4 i4317_3_lut_rep_323 (.A(n387[3]), .B(n43047), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n43040)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4317_3_lut_rep_323.init = 16'hffe0;
    LUT4 i4751_3_lut_4_lut_3_lut_4_lut (.A(n43082), .B(n379[3]), .C(n380[1]), 
         .D(n380[2]), .Z(n384[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4751_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4729_2_lut_rep_351_4_lut_4_lut (.A(n43082), .B(n379[3]), .C(n380[1]), 
         .D(n380[2]), .Z(n43068)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4729_2_lut_rep_351_4_lut_4_lut.init = 16'h332c;
    LUT4 i4744_2_lut_3_lut_3_lut_4_lut (.A(n43082), .B(n379[3]), .C(n380[1]), 
         .D(n380[2]), .Z(n384[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4744_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4737_3_lut_4_lut (.A(n43082), .B(n379[3]), .C(n380[1]), .D(n380[2]), 
         .Z(n384[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4737_3_lut_4_lut.init = 16'h998a;
    LUT4 i5609_3_lut_rep_307_4_lut (.A(n387[3]), .B(n43047), .C(realv_1_0__N_464), 
         .D(realv_1_0__N_460), .Z(n43024)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5609_3_lut_rep_307_4_lut.init = 16'h998c;
    LUT4 i4912_2_lut_rep_348_3_lut_3_lut_4_lut (.A(n43083), .B(\voltage_code[2] ), 
         .C(realv_3_0__N_540), .D(n382[2]), .Z(n43065)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4912_2_lut_rep_348_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4919_3_lut_4_lut_3_lut_4_lut (.A(n43083), .B(\voltage_code[2] ), 
         .C(realv_3_0__N_540), .D(n382[2]), .Z(n385[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4919_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i7375_2_lut_rep_301_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43047), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n43018)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7375_2_lut_rep_301_4_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i4294_3_lut_rep_357_4_lut (.A(n43083), .B(\voltage_code[2] ), .C(realv_3_0__N_540), 
         .D(n382[2]), .Z(n43074)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4294_3_lut_rep_357_4_lut.init = 16'hffe0;
    LUT4 i4897_2_lut_rep_352_4_lut_4_lut (.A(n43083), .B(\voltage_code[2] ), 
         .C(realv_3_0__N_540), .D(n382[2]), .Z(n43069)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4897_2_lut_rep_352_4_lut_4_lut.init = 16'h332c;
    LUT4 i10009_2_lut_rep_353_3_lut_4_lut (.A(n43083), .B(\voltage_code[2] ), 
         .C(realv_3_0__N_540), .D(n382[2]), .Z(n43070)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10009_2_lut_rep_353_3_lut_4_lut.init = 16'heee0;
    LUT4 i6645_2_lut_rep_299_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43047), 
         .C(realv_1_0__N_464), .D(realv_1_0__N_460), .Z(n43016)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6645_2_lut_rep_299_4_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 realv_4_0__bdd_4_lut (.A(n43049), .B(n43034), .C(n43043), .D(n43042), 
         .Z(\ctrlword_595_6_15__N_662[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_4_0__bdd_4_lut.init = 16'hf67d;
    LUT4 realv_5_0__bdd_4_lut (.A(\realv_5[0] ), .B(\unit[3] ), .C(n43156), 
         .D(n43155), .Z(\ctrlword_595_6_15__N_654[7] )) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C+(D)))+!A (B+(C+!(D)))) */ ;
    defparam realv_5_0__bdd_4_lut.init = 16'hf67d;
    LUT4 i4981_2_lut_rep_395_4_lut_4_lut_then_4_lut (.A(n43132), .B(n43395), 
         .C(n367[1]), .D(n367[2]), .Z(n43442)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4981_2_lut_rep_395_4_lut_4_lut_then_4_lut.init = 16'h6065;
    LUT4 Mux_278_i15_3_lut_4_lut (.A(n387[1]), .B(n43038), .C(n14_adj_31), 
         .D(n42690), .Z(n2382)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_278_i15_3_lut_4_lut.init = 16'hf960;
    LUT4 Mux_281_i15_3_lut_4_lut (.A(n387[1]), .B(n43038), .C(n14_adj_32), 
         .D(n42648), .Z(n2385)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_281_i15_3_lut_4_lut.init = 16'hf960;
    LUT4 i4716_2_lut_3_lut_3_lut_4_lut (.A(n43087), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n383[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4716_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4723_3_lut_4_lut_3_lut_4_lut (.A(n43087), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n383[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4723_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i7809_2_lut_4_lut (.A(n43047), .B(n43040), .C(n387[3]), .D(n43026), 
         .Z(n9386)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A !(B (C (D)+!C !(D))+!B (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i7809_2_lut_4_lut.init = 16'h59a6;
    LUT4 i4340_2_lut_rep_531 (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .Z(n43248)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4340_2_lut_rep_531.init = 16'heeee;
    LUT4 i4701_2_lut_rep_358_4_lut_4_lut (.A(n43087), .B(n378[3]), .C(n379[1]), 
         .D(n379[2]), .Z(n43075)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4701_2_lut_rep_358_4_lut_4_lut.init = 16'h332c;
    LUT4 i37713_1_lut (.A(n40676), .Z(\ctrlword_595_5[6] )) /* synthesis lut_function=(!(A)) */ ;
    defparam i37713_1_lut.init = 16'h5555;
    LUT4 i4408_2_lut_rep_433_3_lut_4_lut (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(n4_adj_1326), .D(\voltage_code[15] ), .Z(n43150)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i4408_2_lut_rep_433_3_lut_4_lut.init = 16'he000;
    LUT4 i5226_2_lut_rep_470_4_lut (.A(\voltage_code[3] ), .B(n43255), .C(decade_3__N_580), 
         .D(decade_3__N_576), .Z(n43187)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5226_2_lut_rep_470_4_lut.init = 16'h554a;
    LUT4 i38736_2_lut_3_lut_4_lut (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(n8415), .D(\voltage_code[15] ), .Z(n41412)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i38736_2_lut_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i4414_2_lut_rep_532 (.A(\voltage_code[13] ), .B(\voltage_code[14] ), 
         .C(\voltage_code[15] ), .Z(n43249)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i4414_2_lut_rep_532.init = 16'he0e0;
    LUT4 i4709_3_lut_4_lut (.A(n43087), .B(n378[3]), .C(n379[1]), .D(n379[2]), 
         .Z(n383[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4709_3_lut_4_lut.init = 16'h998a;
    LUT4 i5241_2_lut_3_lut_4_lut_4_lut (.A(\voltage_code[3] ), .B(n43255), 
         .C(decade_3__N_580), .D(decade_3__N_576), .Z(n355[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5241_2_lut_3_lut_4_lut_4_lut.init = 16'h1e10;
    LUT4 i4652_2_lut_rep_347_4_lut_4_lut (.A(n43089), .B(n43088), .C(n377[1]), 
         .D(n6676), .Z(n43064)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4652_2_lut_rep_347_4_lut_4_lut.init = 16'h936c;
    LUT4 i1_4_lut (.A(n32_adj_1305), .B(n43249), .C(n29), .D(n41428), 
         .Z(n23)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut.init = 16'hbabb;
    LUT4 i23378_3_lut_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43049), 
         .D(n43042), .Z(n9337)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23378_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i23674_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43040), .C(n43024), 
         .D(n43026), .Z(n26694)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23674_4_lut_3_lut_4_lut.init = 16'h90f9;
    LUT4 i4981_2_lut_rep_395_4_lut_4_lut_else_4_lut (.A(n43132), .B(n43395), 
         .C(n367[1]), .D(n367[2]), .Z(n43441)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i4981_2_lut_rep_395_4_lut_4_lut_else_4_lut.init = 16'h1f18;
    LUT4 i23356_2_lut_3_lut_3_lut_4_lut (.A(n387[3]), .B(n43040), .C(n43024), 
         .D(n43026), .Z(n14_adj_1327)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B+!(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23356_2_lut_3_lut_3_lut_4_lut.init = 16'h6fff;
    LUT4 i4315_3_lut_rep_368_4_lut (.A(realv_1_1__N_372), .B(n43090), .C(n377[1]), 
         .D(n43089), .Z(n43085)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4315_3_lut_rep_368_4_lut.init = 16'hf666;
    LUT4 i5509_3_lut_rep_360_4_lut_3_lut_4_lut (.A(realv_1_1__N_372), .B(n43090), 
         .C(n377[1]), .D(n43089), .Z(n43077)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5509_3_lut_rep_360_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4334_2_lut (.A(realv_1_1__N_292), .B(realv_1_1__N_283), .Z(n4_adj_1326)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4334_2_lut.init = 16'heeee;
    LUT4 i4841_2_lut_rep_415_4_lut_4_lut (.A(voltage_code[8]), .B(n43138), 
         .C(n365[1]), .D(n43136), .Z(n43132)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4841_2_lut_rep_415_4_lut_4_lut.init = 16'h554a;
    LUT4 i23658_2_lut_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43042), 
         .D(n43049), .Z(n26675)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23658_2_lut_3_lut_4_lut.init = 16'h9060;
    LUT4 i5502_2_lut_3_lut_3_lut_4_lut (.A(realv_1_1__N_372), .B(n43090), 
         .C(n377[1]), .D(n43089), .Z(n380[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5502_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43049), 
         .D(n43042), .Z(n40489)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'hfff9;
    LUT4 n1_bdd_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43049), .D(n43042), 
         .Z(n42664)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_4_lut.init = 16'h9f09;
    LUT4 i13_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43049), .D(n43042), 
         .Z(n8_adj_1330)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut.init = 16'h6f60;
    LUT4 i5487_2_lut_rep_365_4_lut_4_lut (.A(n376[3]), .B(n43091), .C(n377[1]), 
         .D(n43088), .Z(n43082)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5487_2_lut_rep_365_4_lut_4_lut.init = 16'h554a;
    LUT4 realv_2_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut (.A(n387[3]), .B(n43040), 
         .C(n43024), .D(n43026), .Z(n7_adj_33)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_2_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut_4_lut.init = 16'h966f;
    LUT4 i4352_2_lut_rep_506_3_lut (.A(\voltage_code[4] ), .B(n44479), .C(\voltage_code[3] ), 
         .Z(n43223)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4352_2_lut_rep_506_3_lut.init = 16'hf6f6;
    LUT4 i5234_3_lut_4_lut (.A(\voltage_code[4] ), .B(n44479), .C(\voltage_code[3] ), 
         .D(n44498), .Z(n355[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5234_3_lut_4_lut.init = 16'h6966;
    LUT4 i4291_3_lut_rep_369_4_lut (.A(n43093), .B(\voltage_code[3] ), .C(realv_2_0__N_520), 
         .D(n378[2]), .Z(n43086)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4291_3_lut_rep_369_4_lut.init = 16'hffe0;
    LUT4 i4673_2_lut_rep_366_4_lut_4_lut (.A(n43093), .B(\voltage_code[3] ), 
         .C(realv_2_0__N_520), .D(n378[2]), .Z(n43083)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4673_2_lut_rep_366_4_lut_4_lut.init = 16'h332c;
    LUT4 i4688_2_lut_3_lut_3_lut_4_lut (.A(n43093), .B(\voltage_code[3] ), 
         .C(realv_2_0__N_520), .D(n378[2]), .Z(n382[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4688_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4695_3_lut_4_lut_3_lut_4_lut (.A(n43093), .B(\voltage_code[3] ), 
         .C(realv_2_0__N_520), .D(n378[2]), .Z(n382[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4695_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i1_4_lut_adj_59 (.A(n32), .B(n43150), .C(n29_adj_1302), .D(n41412), 
         .Z(n23_adj_29)) /* synthesis lut_function=(A+!(B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_59.init = 16'hbabb;
    LUT4 i5143_3_lut_4_lut (.A(n6703), .B(n43096), .C(realv_1_1__N_372), 
         .D(realv_1_1__N_368), .Z(n377[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5143_3_lut_4_lut.init = 16'h7f80;
    LUT4 i4207_2_lut_rep_372_3_lut (.A(n43101), .B(n6703), .C(n376[3]), 
         .Z(n43089)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4207_2_lut_rep_372_3_lut.init = 16'hf6f6;
    LUT4 i5495_3_lut_4_lut (.A(n43101), .B(n6703), .C(n376[3]), .D(n43085), 
         .Z(n380[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5495_3_lut_4_lut.init = 16'h6966;
    LUT4 i38752_2_lut_3_lut_4_lut (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n41428)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i38752_2_lut_3_lut_4_lut.init = 16'h7fe0;
    LUT4 Mux_365_i1_3_lut_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n2884), .D(n2898), .Z(n1_adj_34)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam Mux_365_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i4328_2_lut (.A(realv_1_1__N_321), .B(realv_1_1__N_303), .Z(n4_adj_1325)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4328_2_lut.init = 16'heeee;
    LUT4 hundreds_0__bdd_3_lut_39084_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n43355), .D(n2886), .Z(n42029)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_39084_4_lut.init = 16'hfe10;
    LUT4 n9196_bdd_3_lut_39150_4_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n2896), .D(n43380), .Z(n42182)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam n9196_bdd_3_lut_39150_4_lut_4_lut.init = 16'he2c0;
    LUT4 hundreds_0__bdd_3_lut_39081_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n43411), .D(n43307), .Z(n41990)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_39081_4_lut.init = 16'hfe10;
    LUT4 hundreds_0__bdd_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n43323), .D(n2886), .Z(n42484)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam hundreds_0__bdd_3_lut_4_lut.init = 16'hfe10;
    LUT4 Mux_368_i3_3_lut_4_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(n2913), .D(n43380), .Z(n3)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (C))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam Mux_368_i3_3_lut_4_lut_4_lut.init = 16'he2c0;
    LUT4 mux_6276_i7_3_lut_4_lut (.A(hundreds_1__N_558), .B(\ctrlword_595_4_15__N_622[1] ), 
         .C(\ctrlword_595_3[13] ), .D(ctrlword_595_4_15__N_630[7]), .Z(\ctrlword_595_4[7] )) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(171[48:58])
    defparam mux_6276_i7_3_lut_4_lut.init = 16'hefe0;
    LUT4 i22894_3_lut_3_lut_3_lut_4_lut (.A(n385[3]), .B(n43058), .C(n43049), 
         .D(n43042), .Z(n14_adj_1333)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B (D)+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i22894_3_lut_3_lut_3_lut_4_lut.init = 16'h90ff;
    LUT4 i4210_2_lut (.A(n377[3]), .B(realv_1_1__N_275), .Z(n4_adj_1334)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4210_2_lut.init = 16'heeee;
    LUT4 i5445_3_lut_4_lut_3_lut_4_lut (.A(n375[3]), .B(n43097), .C(n376[1]), 
         .D(n376[2]), .Z(n379[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5445_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i2_3_lut_3_lut_3_lut_4_lut (.A(n387[3]), .B(n43040), .C(n43339), 
         .D(n43026), .Z(n3_adj_35)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_3_lut_3_lut_4_lut.init = 16'h0090;
    LUT4 i5423_2_lut_rep_370_4_lut_4_lut (.A(n375[3]), .B(n43097), .C(n376[1]), 
         .D(n376[2]), .Z(n43087)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5423_2_lut_rep_370_4_lut_4_lut.init = 16'h554a;
    LUT4 i5438_2_lut_3_lut_3_lut_4_lut (.A(n375[3]), .B(n43097), .C(n376[1]), 
         .D(n376[2]), .Z(n379[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5438_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5431_3_lut_4_lut (.A(n375[3]), .B(n43097), .C(n376[1]), .D(n376[2]), 
         .Z(n379[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5431_3_lut_4_lut.init = 16'h998c;
    L6MUX21 mux_2848_i6 (.D0(n40609), .D1(n40615), .SD(\ctrlword_595_3[13] ), 
            .Z(n40676));
    LUT4 i4336_2_lut_rep_420_3_lut (.A(voltage_code[9]), .B(n43140), .C(voltage_code[8]), 
         .Z(n43137)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4336_2_lut_rep_420_3_lut.init = 16'hf6f6;
    PFUMX mux_2849_i3 (.BLUT(ctrlword_595_6_15__N_654[3]), .ALUT(n41068), 
          .C0(n43357), .Z(\ctrlword_595_6[3] ));
    LUT4 i4302_3_lut_4_lut (.A(n43098), .B(n43101), .C(realv_1_1__N_372), 
         .D(realv_1_1__N_368), .Z(n6703)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4302_3_lut_4_lut.init = 16'hffe0;
    LUT4 i5136_2_lut_rep_371_3_lut_4_lut (.A(n43098), .B(n43101), .C(realv_1_1__N_372), 
         .D(n6703), .Z(n43088)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5136_2_lut_rep_371_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i5588_2_lut_rep_306_3_lut_3_lut_4_lut (.A(n386[3]), .B(n43052), 
         .C(n387[1]), .D(n387[2]), .Z(n43023)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5588_2_lut_rep_306_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i5353_2_lut_3_lut_3_lut_4_lut (.A(\voltage_code[4] ), .B(n43100), 
         .C(n375[1]), .D(n375[2]), .Z(n378[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5353_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4311_3_lut_rep_378_4_lut (.A(\voltage_code[4] ), .B(n43100), .C(n375[1]), 
         .D(n375[2]), .Z(n43095)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4311_3_lut_rep_378_4_lut.init = 16'hffe0;
    LUT4 i5338_2_lut_rep_376_4_lut_4_lut (.A(\voltage_code[4] ), .B(n43100), 
         .C(n375[1]), .D(n375[2]), .Z(n43093)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5338_2_lut_rep_376_4_lut_4_lut.init = 16'h554a;
    LUT4 i5360_3_lut_4_lut_3_lut_4_lut (.A(\voltage_code[4] ), .B(n43100), 
         .C(n375[1]), .D(n375[2]), .Z(n378[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5360_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5129_3_lut_4_lut (.A(n43111), .B(n23_adj_29), .C(n43101), .D(n6703), 
         .Z(n377[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5129_3_lut_4_lut.init = 16'h9699;
    LUT4 i5134_2_lut_rep_379_3_lut (.A(n43111), .B(n23_adj_29), .C(n43101), 
         .Z(n43096)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5134_2_lut_rep_379_3_lut.init = 16'hf9f9;
    LUT4 i9988_2_lut_rep_373_3_lut_4_lut (.A(n43111), .B(n23_adj_29), .C(n6703), 
         .D(n43101), .Z(n43090)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9988_2_lut_rep_373_3_lut_4_lut.init = 16'hf090;
    LUT4 i5080_2_lut_3_lut_3_lut_4_lut (.A(n370[1]), .B(n43110), .C(n373[1]), 
         .D(n43103), .Z(n376[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5080_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5087_3_lut_4_lut_3_lut_4_lut (.A(n370[1]), .B(n43110), .C(n373[1]), 
         .D(n43103), .Z(n376[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5087_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4300_3_lut_rep_382_4_lut (.A(n370[1]), .B(n43110), .C(n373[1]), 
         .D(n43103), .Z(n43099)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4300_3_lut_rep_382_4_lut.init = 16'hf666;
    LUT4 i5595_3_lut_rep_309_4_lut_3_lut_4_lut (.A(n386[3]), .B(n43052), 
         .C(n387[1]), .D(n387[2]), .Z(n43026)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5595_3_lut_rep_309_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 n12525_bdd_4_lut (.A(n43163), .B(n43415), .C(decade_3__N_561), 
         .D(n44497), .Z(n6706)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A !((C+(D))+!B)) */ ;
    defparam n12525_bdd_4_lut.init = 16'ha02c;
    LUT4 i5065_2_lut_rep_380_4_lut_4_lut (.A(n372[3]), .B(n43107), .C(n373[1]), 
         .D(n43102), .Z(n43097)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5065_2_lut_rep_380_4_lut_4_lut.init = 16'h554a;
    LUT4 i4320_2_lut_rep_386_3_lut (.A(n369[3]), .B(n43109), .C(n372[3]), 
         .Z(n43103)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4320_2_lut_rep_386_3_lut.init = 16'hf6f6;
    LUT4 i5073_3_lut_4_lut (.A(n369[3]), .B(n43109), .C(n372[3]), .D(n43099), 
         .Z(n376[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5073_3_lut_4_lut.init = 16'h6966;
    LUT4 i5037_2_lut_rep_383_4_lut_4_lut (.A(\voltage_code[5] ), .B(n43112), 
         .C(n372[1]), .D(n372[2]), .Z(n43100)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5037_2_lut_rep_383_4_lut_4_lut.init = 16'h554a;
    LUT4 i5059_3_lut_4_lut_3_lut_4_lut (.A(\voltage_code[5] ), .B(n43112), 
         .C(n372[1]), .D(n372[2]), .Z(n375[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i5059_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i5052_2_lut_3_lut_3_lut_4_lut (.A(\voltage_code[5] ), .B(n43112), 
         .C(n372[1]), .D(n372[2]), .Z(n375[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;
    defparam i5052_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i4299_3_lut_rep_391 (.A(\voltage_code[5] ), .B(n43112), .C(n372[1]), 
         .D(n372[2]), .Z(n43108)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4299_3_lut_rep_391.init = 16'hffe0;
    LUT4 i5045_3_lut_4_lut (.A(\voltage_code[5] ), .B(n43112), .C(n372[1]), 
         .D(n372[2]), .Z(n375[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5045_3_lut_4_lut.init = 16'h998c;
    PFUMX realv_3_3__I_0_Mux_6_i15 (.BLUT(n26022), .ALUT(n8_adj_1282), .C0(n43023), 
          .Z(n40609)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 decade_3__bdd_4_lut (.A(\decade[3] ), .B(n43148), .C(n43153), 
         .D(n43154), .Z(\ctrlword_595_5_15__N_638[1] )) /* synthesis lut_function=(A (B+(C+!(D)))+!A !(B (C (D))+!B !(D))) */ ;
    defparam decade_3__bdd_4_lut.init = 16'hbdee;
    LUT4 i4869_2_lut_rep_411_4_lut_4_lut (.A(n43147), .B(n43146), .C(n363[1]), 
         .D(n6692), .Z(n43128)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i4869_2_lut_rep_411_4_lut_4_lut.init = 16'h936c;
    LUT4 i10052_2_lut_rep_321_4_lut (.A(n386[3]), .B(n43052), .C(n387[1]), 
         .D(n387[2]), .Z(n43038)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i10052_2_lut_rep_321_4_lut.init = 16'heee0;
    L6MUX21 mux_2849_i4 (.D0(ctrlword_595_6_15__N_662[4]), .D1(ctrlword_595_6_15__N_654[4]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_6[4] ));
    L6MUX21 mux_2849_i5 (.D0(ctrlword_595_6_15__N_662[5]), .D1(ctrlword_595_6_15__N_654[5]), 
            .SD(\ctrlword_595_3[13] ), .Z(\ctrlword_595_6[5] ));
    LUT4 i38825_4_lut (.A(\voltage_code[6] ), .B(\ADC_level[7] ), .C(\voltage_code[5] ), 
         .D(n40440), .Z(hundreds_1__N_558)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B))) */ ;
    defparam i38825_4_lut.init = 16'h1333;
    FD1S1J ctrlword_595_3_15__N_614_7__I_0_i6 (.D(n43020), .CK(\ctrlword_595_3[13]__inv ), 
           .PD(n43028), .Q(\ctrlword_595_3[5] )) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(137[4] 178[16])
    defparam ctrlword_595_3_15__N_614_7__I_0_i6.GSR = "DISABLED";
    LUT4 i38607_3_lut_4_lut_4_lut (.A(n43148), .B(n41956), .C(\decade[3] ), 
         .D(n43144), .Z(\ctrlword_595_5_15__N_638[5] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38607_3_lut_4_lut_4_lut.init = 16'hcfc5;
    LUT4 realv_3_3__bdd_3_lut_4_lut_4_lut (.A(n43052), .B(n43046), .C(n386[3]), 
         .D(n43036), .Z(n42636)) /* synthesis lut_function=(A (B (C)+!B !(C (D)))+!A !(B (D)+!B (C+(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam realv_3_3__bdd_3_lut_4_lut_4_lut.init = 16'h82e7;
    LUT4 i5573_2_lut_rep_312_4_lut_4_lut (.A(n386[3]), .B(n43052), .C(n387[1]), 
         .D(n387[2]), .Z(n43029)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5573_2_lut_rep_312_4_lut_4_lut.init = 16'h554a;
    PFUMX i39499 (.BLUT(n42667), .ALUT(n42662), .C0(\ctrlword_595_3[13] ), 
          .Z(n41068));
    LUT4 i4828_2_lut_rep_419_3_lut_3_lut_4_lut (.A(n362[1]), .B(n43158), 
         .C(n363[1]), .D(n43147), .Z(n43136)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4828_2_lut_rep_419_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i4139_3_lut_rep_423_4_lut (.A(n362[1]), .B(n43158), .C(n363[1]), 
         .D(n43147), .Z(n43140)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4139_3_lut_rep_423_4_lut.init = 16'hf666;
    LUT4 i5121_2_lut_rep_374_4_lut_4_lut (.A(n43114), .B(n43113), .C(n370[1]), 
         .D(n6703), .Z(n43091)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5121_2_lut_rep_374_4_lut_4_lut.init = 16'h936c;
    LUT4 i4316_3_lut_rep_329 (.A(n386[3]), .B(n43052), .C(n387[1]), .D(n387[2]), 
         .Z(n43046)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4316_3_lut_rep_329.init = 16'hffe0;
    LUT4 i4835_3_lut_rep_418_4_lut_3_lut_4_lut (.A(n362[1]), .B(n43158), 
         .C(n363[1]), .D(n43147), .Z(n43135)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4835_3_lut_rep_418_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i10015_2_lut_rep_424_4_lut (.A(n362[1]), .B(n43158), .C(n363[1]), 
         .D(n43147), .Z(n43141)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10015_2_lut_rep_424_4_lut.init = 16'hf600;
    LUT4 i4813_2_lut_rep_421_4_lut_4_lut (.A(voltage_code[9]), .B(n43152), 
         .C(n363[1]), .D(n43146), .Z(n43138)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i4813_2_lut_rep_421_4_lut_4_lut.init = 16'h554a;
    PFUMX i39497 (.BLUT(n42664), .ALUT(n42663), .C0(n43034), .Z(n42665));
    LUT4 n5_bdd_4_lut_39023_4_lut (.A(n43153), .B(n43339), .C(n43293), 
         .D(n43154), .Z(n41914)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(173[48:56])
    defparam n5_bdd_4_lut_39023_4_lut.init = 16'h5044;
    LUT4 i38241_3_lut_4_lut (.A(\voltage_code[1] ), .B(n43061), .C(n5_adj_36), 
         .D(n4_adj_37), .Z(n41217)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38241_3_lut_4_lut.init = 16'hf960;
    LUT4 i4298_3_lut_rep_392_4_lut (.A(n368[1]), .B(n43122), .C(n370[1]), 
         .D(n43114), .Z(n43109)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4298_3_lut_rep_392_4_lut.init = 16'hf666;
    LUT4 n1_bdd_4_lut_4_lut (.A(n43153), .B(n43154), .C(n43148), .D(\decade[3] ), 
         .Z(\ctrlword_595_5_15__N_638[3] )) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A ((C+(D))+!B)) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(173[48:56])
    defparam n1_bdd_4_lut_4_lut.init = 16'hfd51;
    LUT4 i5031_3_lut_rep_384_4_lut_3_lut_4_lut (.A(n368[1]), .B(n43122), 
         .C(n370[1]), .D(n43114), .Z(n43101)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5031_3_lut_rep_384_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i7337_2_lut_rep_304_3_lut_3_lut_4_lut (.A(n386[3]), .B(n43052), 
         .C(n387[1]), .D(n387[2]), .Z(n43021)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B+(D))) */ ;
    defparam i7337_2_lut_rep_304_3_lut_3_lut_4_lut.init = 16'hddce;
    LUT4 i6622_2_lut_3_lut_3_lut_4_lut (.A(n386[3]), .B(n43052), .C(n387[1]), 
         .D(n387[2]), .Z(n9371)) /* synthesis lut_function=(!(A (B (C+(D)))+!A !((C+(D))+!B))) */ ;
    defparam i6622_2_lut_3_lut_3_lut_4_lut.init = 16'h777b;
    LUT4 i37990_2_lut_3_lut_3_lut_4_lut (.A(n386[3]), .B(n43052), .C(n387[1]), 
         .D(n387[2]), .Z(n40966)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+!(D)))) */ ;
    defparam i37990_2_lut_3_lut_3_lut_4_lut.init = 16'h1108;
    LUT4 i5024_2_lut_rep_385_3_lut_3_lut_4_lut (.A(n368[1]), .B(n43122), 
         .C(n370[1]), .D(n43114), .Z(n43102)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5024_2_lut_rep_385_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i5581_3_lut_rep_313_4_lut (.A(n386[3]), .B(n43052), .C(n387[1]), 
         .D(n387[2]), .Z(n43030)) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i5581_3_lut_rep_313_4_lut.init = 16'h998c;
    LUT4 i9999_2_lut_rep_393_4_lut (.A(n368[1]), .B(n43122), .C(n370[1]), 
         .D(n43114), .Z(n43110)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (D)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9999_2_lut_rep_393_4_lut.init = 16'hf600;
    LUT4 i38486_3_lut_4_lut (.A(n43164), .B(n6706), .C(n43422), .D(n4_adj_38), 
         .Z(n41302)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38486_3_lut_4_lut.init = 16'hf960;
    L6MUX21 mux_2849_i6 (.D0(n40601), .D1(n40617), .SD(\ctrlword_595_3[13] ), 
            .Z(n40672));
    LUT4 i4243_2_lut_rep_322_3_lut (.A(n384[3]), .B(n43060), .C(n387[3]), 
         .Z(n43039)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4243_2_lut_rep_322_3_lut.init = 16'hf6f6;
    LUT4 i5009_2_lut_rep_390_4_lut_4_lut (.A(n369[3]), .B(n43118), .C(n370[1]), 
         .D(n43113), .Z(n43107)) /* synthesis lut_function=(!(A (C+(D))+!A !(B (C+(D))+!B (D)))) */ ;
    defparam i5009_2_lut_rep_390_4_lut_4_lut.init = 16'h554a;
    LUT4 i38325_3_lut_4_lut (.A(n43164), .B(n6706), .C(n2_adj_39), .D(n1_adj_40), 
         .Z(n41301)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38325_3_lut_4_lut.init = 16'hf960;
    LUT4 i2_3_lut_3_lut_4_lut (.A(n43164), .B(n6706), .C(n43339), .D(n43153), 
         .Z(n3_adj_41)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i2_3_lut_3_lut_4_lut.init = 16'h0090;
    LUT4 i4310_3_lut_rep_703 (.A(\voltage_code[1] ), .B(n43169), .C(n356[1]), 
         .D(n356[2]), .Z(n44468)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4310_3_lut_rep_703.init = 16'hffe0;
    LUT4 i5741_2_lut_rep_359_3_lut_4_lut (.A(n4_adj_1325), .B(n43150), .C(n377[3]), 
         .D(n4_adj_1334), .Z(n43076)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;
    defparam i5741_2_lut_rep_359_3_lut_4_lut.init = 16'h78f0;
    LUT4 i2_3_lut_4_lut (.A(\realv_5[0] ), .B(n43155), .C(\unit[3] ), 
         .D(n43156), .Z(n40431)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i2_3_lut_4_lut.init = 16'hfffe;
    PFUMX i39469 (.BLUT(n42636), .ALUT(n42635), .C0(n43023), .Z(\ctrlword_595_5_15__N_646[2] ));
    LUT4 i4779_3_lut_4_lut (.A(n44496), .B(n43176), .C(n361[1]), .D(realv_1_1__N_293), 
         .Z(realv_1_1__N_292)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4779_3_lut_4_lut.init = 16'h7f80;
    LUT4 i5651_3_lut_4_lut (.A(n4_adj_1326), .B(n43249), .C(n4_adj_1323), 
         .D(realv_1_1__N_303), .Z(n6727)) /* synthesis lut_function=(!(A (B (C (D))+!B !(C (D)))+!A !(C (D)))) */ ;
    defparam i5651_3_lut_4_lut.init = 16'h7888;
    LUT4 i4395_2_lut_rep_363_3_lut_4_lut (.A(n4_adj_1326), .B(n43249), .C(n4_adj_1334), 
         .D(n4_adj_1325), .Z(n43080)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i4395_2_lut_rep_363_3_lut_4_lut.init = 16'h8000;
    LUT4 i2_3_lut_4_lut_4_lut (.A(n43049), .B(n43339), .C(n43058), .D(n385[3]), 
         .Z(n3_adj_42)) /* synthesis lut_function=(!(A+!(B (C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(165[51:60])
    defparam i2_3_lut_4_lut_4_lut.init = 16'h4004;
    PFUMX realv_4_3__I_0_Mux_5_i15 (.BLUT(n40489), .ALUT(n14_adj_1333), 
          .C0(n43034), .Z(ctrlword_595_6_15__N_662[5])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i4325_2_lut_rep_430_3_lut (.A(voltage_code[10]), .B(n43157), .C(voltage_code[9]), 
         .Z(n43147)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4325_2_lut_rep_430_3_lut.init = 16'hf6f6;
    LUT4 realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut (.A(n43049), .B(n43042), 
         .C(n43043), .Z(n7_adj_1343)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !((C)+!B))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(165[51:60])
    defparam realv_4_3__I_0_Mux_4_i7_4_lut_4_lut_3_lut.init = 16'h7979;
    LUT4 i4821_3_lut_4_lut (.A(voltage_code[10]), .B(n43157), .C(voltage_code[9]), 
         .D(n43140), .Z(n365[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4821_3_lut_4_lut.init = 16'h6966;
    LUT4 i4326_2_lut_rep_397_3_lut (.A(n367[3]), .B(n43121), .C(n369[3]), 
         .Z(n43114)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4326_2_lut_rep_397_3_lut.init = 16'hf6f6;
    LUT4 n1_bdd_3_lut_39496_4_lut_4_lut (.A(n43049), .B(n43042), .C(n43058), 
         .D(n385[3]), .Z(n42663)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))))) */ ;   // d:/lattice diamond/project/exp/lab8/impl1/source/trans_bcd.vhd(165[51:60])
    defparam n1_bdd_3_lut_39496_4_lut_4_lut.init = 16'h7ff7;
    PFUMX realv_4_3__I_0_Mux_4_i15 (.BLUT(n7_adj_1343), .ALUT(n9337), .C0(n43034), 
          .Z(ctrlword_595_6_15__N_662[4])) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i5017_3_lut_4_lut (.A(n367[3]), .B(n43121), .C(n369[3]), .D(n43109), 
         .Z(n373[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5017_3_lut_4_lut.init = 16'h6966;
    LUT4 i13_3_lut_4_lut_4_lut_adj_60 (.A(n43168), .B(n6706), .C(n43164), 
         .D(n43153), .Z(n8)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+!(D)))+!A (B (C)+!B !(C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_4_lut_adj_60.init = 16'h3ca6;
    LUT4 i23680_2_lut_3_lut_4_lut_4_lut (.A(n43168), .B(n6706), .C(n43164), 
         .D(n43153), .Z(n26701)) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)+!C !(D)))+!A !((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23680_2_lut_3_lut_4_lut_4_lut.init = 16'h8224;
    LUT4 i4849_3_lut_4_lut (.A(voltage_code[9]), .B(n43140), .C(voltage_code[8]), 
         .D(n43134), .Z(n367[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4849_3_lut_4_lut.init = 16'h6966;
    LUT4 decade_0__bdd_3_lut_39378_4_lut_4_lut (.A(n43168), .B(n6706), .C(n43164), 
         .D(n43153), .Z(n41956)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam decade_0__bdd_3_lut_39378_4_lut_4_lut.init = 16'hdb59;
    LUT4 i5003_3_lut_4_lut_3_lut_4_lut (.A(n367[1]), .B(n43126), .C(n369[1]), 
         .D(n43120), .Z(n372[3])) /* synthesis lut_function=(A (B (C (D))+!B !(C (D)))+!A !(B (C (D))+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5003_3_lut_4_lut_3_lut_4_lut.init = 16'h9666;
    LUT4 i4297_3_lut_rep_399_4_lut (.A(n367[1]), .B(n43126), .C(n369[1]), 
         .D(n43120), .Z(n43116)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4297_3_lut_rep_399_4_lut.init = 16'hf666;
    LUT4 i4996_2_lut_3_lut_3_lut_4_lut (.A(n367[1]), .B(n43126), .C(n369[1]), 
         .D(n43120), .Z(n372[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4996_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i38347_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_2), 
         .D(n1_adj_3), .Z(n41323)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38347_3_lut_4_lut.init = 16'hf960;
    LUT4 Mux_404_i6_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5), 
         .D(n4_c), .Z(n6_adj_43)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam Mux_404_i6_3_lut_4_lut.init = 16'hf960;
    LUT4 i38351_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_1285), 
         .D(n4), .Z(n41327)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38351_3_lut_4_lut.init = 16'hf960;
    LUT4 i38010_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_18), 
         .D(n9212), .Z(n40986)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38010_3_lut_4_lut.init = 16'hf960;
    LUT4 i38348_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_23), 
         .D(n4_adj_24), .Z(n41324)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38348_3_lut_4_lut.init = 16'hf960;
    LUT4 i38353_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_19), 
         .D(n9212), .Z(n41329)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38353_3_lut_4_lut.init = 16'hf960;
    PFUMX i39107 (.BLUT(n42105), .ALUT(n42104), .C0(\unit[3] ), .Z(ctrlword_595_6_15__N_654[2]));
    LUT4 i38017_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_36), 
         .D(n4_adj_37), .Z(n40993)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38017_3_lut_4_lut.init = 16'hf960;
    LUT4 i38354_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_20), 
         .D(n4_adj_21), .Z(n41330)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38354_3_lut_4_lut.init = 16'hf960;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_adj_61 (.A(\voltage_code[1] ), .B(n44468), 
         .C(\realv_5[0] ), .D(n43155), .Z(n40430)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((C+(D))+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_3_lut_3_lut_4_lut_adj_61.init = 16'hfff9;
    LUT4 i22968_3_lut_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), 
         .C(n43155), .D(\realv_5[0] ), .Z(n14_c)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A !(B (C)+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i22968_3_lut_3_lut_3_lut_4_lut.init = 16'h9f0f;
    LUT4 i38345_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_5), 
         .D(n4_adj_6), .Z(n41321)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38345_3_lut_4_lut.init = 16'hf960;
    LUT4 i38016_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_4), 
         .D(n1_adj_1290), .Z(n40992)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38016_3_lut_4_lut.init = 16'hf960;
    LUT4 unit_3__bdd_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(\realv_5[0] ), 
         .D(n43155), .Z(n42105)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C+!(D)))+!A !(B (C+!(D))+!B !((D)+!C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam unit_3__bdd_3_lut_4_lut.init = 16'h9f09;
    LUT4 i13_3_lut_4_lut_adj_62 (.A(\voltage_code[1] ), .B(n44468), .C(\realv_5[0] ), 
         .D(n43155), .Z(n8_adj_1284)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i13_3_lut_4_lut_adj_62.init = 16'h6f60;
    LUT4 i23323_3_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(\realv_5[0] ), 
         .D(n43155), .Z(n9503)) /* synthesis lut_function=(A (B+!(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23323_3_lut_3_lut_4_lut.init = 16'h9ff9;
    LUT4 i38350_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_22), 
         .D(n1_adj_3), .Z(n41326)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38350_3_lut_4_lut.init = 16'hf960;
    LUT4 i38344_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2_adj_7), 
         .D(n1_adj_8), .Z(n41320)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38344_3_lut_4_lut.init = 16'hf960;
    LUT4 i38014_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_14), 
         .D(n4_adj_15), .Z(n40990)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38014_3_lut_4_lut.init = 16'hf960;
    LUT4 i23687_2_lut_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n43155), 
         .D(\realv_5[0] ), .Z(n26709)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23687_2_lut_3_lut_4_lut.init = 16'h9060;
    LUT4 i38013_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n2), 
         .D(n1), .Z(n40989)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38013_3_lut_4_lut.init = 16'hf960;
    LUT4 i38011_3_lut_4_lut (.A(\voltage_code[1] ), .B(n44468), .C(n5_adj_16), 
         .D(n4_adj_17), .Z(n40987)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B (C)+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i38011_3_lut_4_lut.init = 16'hf960;
    LUT4 i5629_2_lut_rep_381_4_lut_4_lut (.A(n43125), .B(n43124), .C(n368[1]), 
         .D(n23_adj_29), .Z(n43098)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D)))) */ ;
    defparam i5629_2_lut_rep_381_4_lut_4_lut.init = 16'h6c93;
    LUT4 i4337_2_lut_rep_445_3_lut (.A(voltage_code[11]), .B(n44496), .C(voltage_code[10]), 
         .Z(n43162)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4337_2_lut_rep_445_3_lut.init = 16'hf6f6;
    LUT4 i4793_3_lut_4_lut (.A(voltage_code[11]), .B(n44496), .C(voltage_code[10]), 
         .D(n43157), .Z(n363[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4793_3_lut_4_lut.init = 16'h6966;
    LUT4 i4329_2_lut_rep_408_3_lut (.A(n43135), .B(n6692), .C(n367[3]), 
         .Z(n43125)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4329_2_lut_rep_408_3_lut.init = 16'hf6f6;
    PFUMX realv_4_3__I_0_Mux_6_i15 (.BLUT(n26675), .ALUT(n8_adj_1330), .C0(n43034), 
          .Z(n40601)) /* synthesis LSE_LINE_FILE_ID=25, LSE_LCOL=19, LSE_RCOL=28, LSE_LLINE=132, LSE_RLINE=132 */ ;
    LUT4 i6984_2_lut_rep_426_3_lut_3_lut_4_lut (.A(n44497), .B(n43171), 
         .C(n43164), .D(n6706), .Z(n43143)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i6984_2_lut_rep_426_3_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i5213_3_lut_rep_437_4_lut (.A(n44497), .B(n43171), .C(n43164), 
         .D(n6706), .Z(n43154)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5213_3_lut_rep_437_4_lut.init = 16'h6966;
    LUT4 i4961_3_lut_4_lut (.A(n43135), .B(n6692), .C(n367[3]), .D(n43121), 
         .Z(n370[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4961_3_lut_4_lut.init = 16'h6966;
    LUT4 i4349_2_lut_rep_448_3_lut (.A(\voltage_code[2] ), .B(n43181), .C(\voltage_code[1] ), 
         .Z(n43165)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4349_2_lut_rep_448_3_lut.init = 16'hf6f6;
    LUT4 i5205_2_lut_rep_431_4_lut_4_lut (.A(n43180), .B(n355[2]), .C(n355[1]), 
         .D(n6706), .Z(n43148)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (D)+!B !(D))) */ ;
    defparam i5205_2_lut_rep_431_4_lut_4_lut.init = 16'h936c;
    LUT4 i5218_2_lut_rep_446_4_lut_4_lut (.A(n43180), .B(n355[2]), .C(n355[1]), 
         .D(n43168), .Z(n43163)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C+(D)))+!A (B+(D))) */ ;
    defparam i5218_2_lut_rep_446_4_lut_4_lut.init = 16'hff6c;
    LUT4 voltage_code_12__bdd_4_lut_39791 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n361[1])) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)))+!A (B (C+(D))+!B !(D)))) */ ;
    defparam voltage_code_12__bdd_4_lut_39791.init = 16'h318c;
    LUT4 i9724_2_lut_rep_409_3_lut_4_lut (.A(n43395), .B(n43132), .C(n367[1]), 
         .D(n367[2]), .Z(n43126)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam i9724_2_lut_rep_409_3_lut_4_lut.init = 16'heee0;
    LUT4 i11479_3_lut_3_lut (.A(n43041), .B(n9148), .C(n2973), .Z(n14498)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i11479_3_lut_3_lut.init = 16'he4e4;
    LUT4 i2_4_lut (.A(\ADC_level[7] ), .B(\voltage_code[6] ), .C(\voltage_code[5] ), 
         .D(n43374), .Z(\ctrlword_595_4_15__N_622[1] )) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i2_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_657 (.A(\voltage_code[4] ), .B(\voltage_code[3] ), 
         .Z(n43374)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_657.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(\voltage_code[4] ), .B(\voltage_code[3] ), .C(\voltage_code[2] ), 
         .Z(n40440)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 realv_3_1__bdd_2_lut_2_lut_4_lut_4_lut (.A(n43057), .B(n386[2]), 
         .C(n386[1]), .D(n43380), .Z(n42688)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))+!A !(B+!(D))) */ ;
    defparam realv_3_1__bdd_2_lut_2_lut_4_lut_4_lut.init = 16'h9300;
    LUT4 i4947_3_lut_4_lut_3_lut_4_lut (.A(n43395), .B(n43132), .C(n367[1]), 
         .D(n367[2]), .Z(n369[3])) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam i4947_3_lut_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 decade_3__I_0_Mux_4_i15_else_4_lut (.A(n6706), .B(n43164), .C(n43153), 
         .D(n353[1]), .Z(n43426)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A !(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam decade_3__I_0_Mux_4_i15_else_4_lut.init = 16'h5bcf;
    LUT4 i4586_1_lut (.A(\voltage_code[6] ), .Z(\adcdisplay_7__N_1[6] )) /* synthesis lut_function=(!(A)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4586_1_lut.init = 16'h5555;
    LUT4 i4295_3_lut_rep_413 (.A(n43395), .B(n43132), .C(n367[1]), .D(n367[2]), 
         .Z(n43130)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4295_3_lut_rep_413.init = 16'hffe0;
    LUT4 i4240_2_lut_rep_328_3_lut (.A(n383[3]), .B(n43063), .C(n386[3]), 
         .Z(n43045)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4240_2_lut_rep_328_3_lut.init = 16'hf6f6;
    LUT4 i4933_3_lut_4_lut (.A(n43395), .B(n43132), .C(n367[1]), .D(n367[2]), 
         .Z(n369[1])) /* synthesis lut_function=(A (B)+!A !(B (C+(D))+!B !(D))) */ ;
    defparam i4933_3_lut_4_lut.init = 16'h998c;
    LUT4 n1_bdd_3_lut_39462_4_lut (.A(n386[3]), .B(n43046), .C(n4_adj_44), 
         .D(n5_adj_45), .Z(n42629)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (B (D)+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam n1_bdd_3_lut_39462_4_lut.init = 16'hf690;
    LUT4 i5093_2_lut_rep_452_4_lut_4_lut (.A(n43187), .B(\voltage_code[2] ), 
         .C(n355[1]), .D(n355[2]), .Z(n43169)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C+(D)))+!A (B (C+(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5093_2_lut_rep_452_4_lut_4_lut.init = 16'h332c;
    LUT4 i4293_3_lut_4_lut (.A(n43135), .B(n43133), .C(realv_1_1__N_326), 
         .D(realv_1_1__N_322), .Z(n6692)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i4293_3_lut_4_lut.init = 16'hffe0;
    LUT4 i5108_2_lut_3_lut_3_lut_4_lut (.A(n43187), .B(\voltage_code[2] ), 
         .C(n355[1]), .D(n355[2]), .Z(n356[2])) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5108_2_lut_3_lut_3_lut_4_lut.init = 16'h1e10;
    LUT4 i1_2_lut_rep_298_3_lut_4_lut (.A(n386[3]), .B(n43046), .C(n43339), 
         .D(n43036), .Z(n43015)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B+((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i1_2_lut_rep_298_3_lut_4_lut.init = 16'h0090;
    LUT4 i5115_3_lut_rep_447_4_lut_3_lut_4_lut (.A(n43187), .B(\voltage_code[2] ), 
         .C(n355[1]), .D(n355[2]), .Z(n43164)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5115_3_lut_rep_447_4_lut_3_lut_4_lut.init = 16'h1fe0;
    LUT4 i4301_3_lut_rep_464 (.A(n43187), .B(\voltage_code[2] ), .C(n355[1]), 
         .D(n355[2]), .Z(n43181)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4301_3_lut_rep_464.init = 16'hffe0;
    LUT4 i5101_3_lut_4_lut (.A(n43187), .B(\voltage_code[2] ), .C(n355[1]), 
         .D(n355[2]), .Z(n356[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A !(B+!(D))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5101_3_lut_4_lut.init = 16'h998a;
    LUT4 i4884_2_lut_rep_407_3_lut_4_lut (.A(n43135), .B(n43133), .C(realv_1_1__N_326), 
         .D(n6692), .Z(n43124)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B (C (D)+!C !(D))+!B !(C)))) */ ;
    defparam i4884_2_lut_rep_407_3_lut_4_lut.init = 16'h1ef0;
    LUT4 i23667_2_lut_rep_305_3_lut (.A(n386[3]), .B(n43046), .C(n43036), 
         .Z(n43022)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i23667_2_lut_rep_305_3_lut.init = 16'hf6f6;
    LUT4 i5702_2_lut_4_lut (.A(n23), .B(realv_1_1__N_292), .C(n43145), 
         .D(realv_1_1__N_283), .Z(n8415)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5702_2_lut_4_lut.init = 16'h5400;
    LUT4 i9733_2_lut_rep_449_3_lut_4_lut (.A(\voltage_code[12] ), .B(n44469), 
         .C(n44496), .D(voltage_code[11]), .Z(n43166)) /* synthesis lut_function=(A (B (C (D))+!B (C))+!A (B (C)+!B (C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i9733_2_lut_rep_449_3_lut_4_lut.init = 16'hf060;
    LUT4 i4338_2_lut_rep_459_3_lut (.A(\voltage_code[12] ), .B(n44469), 
         .C(voltage_code[11]), .Z(n43176)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4338_2_lut_rep_459_3_lut.init = 16'hf6f6;
    LUT4 i4765_3_lut_4_lut (.A(\voltage_code[12] ), .B(n44469), .C(voltage_code[11]), 
         .D(n44496), .Z(n362[1])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D))))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4765_3_lut_4_lut.init = 16'h6966;
    LUT4 i10013_2_lut_rep_410_3_lut_4_lut (.A(n43145), .B(n23), .C(n6692), 
         .D(n43135), .Z(n43127)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (B (C (D))+!B (C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i10013_2_lut_rep_410_3_lut_4_lut.init = 16'hf090;
    LUT4 i4335_2_lut_rep_414_3_lut (.A(n43145), .B(n23), .C(n43135), .Z(n43131)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4335_2_lut_rep_414_3_lut.init = 16'hf9f9;
    LUT4 i4877_3_lut_4_lut (.A(n43145), .B(n23), .C(n43135), .D(n6692), 
         .Z(n368[1])) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+!(D)))+!A !(B (C+!(D))+!B !(C+!(D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4877_3_lut_4_lut.init = 16'h9699;
    LUT4 voltage_code_12__bdd_4_lut_39794 (.A(\voltage_code[12] ), .B(\voltage_code[13] ), 
         .C(\voltage_code[14] ), .D(\voltage_code[15] ), .Z(n43183)) /* synthesis lut_function=(!(A (B (C)+!B !(C (D)+!C !(D)))+!A (B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam voltage_code_12__bdd_4_lut_39794.init = 16'h294a;
    LUT4 i5106_2_lut_rep_463_3_lut (.A(\voltage_code[3] ), .B(n44498), .C(\voltage_code[2] ), 
         .Z(n43180)) /* synthesis lut_function=(A ((C)+!B)+!A (B+(C))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5106_2_lut_rep_463_3_lut.init = 16'hf6f6;
    LUT4 i4856_2_lut_3_lut_3_lut_4_lut (.A(n363[1]), .B(n43141), .C(n365[1]), 
         .D(n43137), .Z(n367[2])) /* synthesis lut_function=(!(A (B ((D)+!C)+!B (C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B ((D)+!C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4856_2_lut_3_lut_3_lut_4_lut.init = 16'h06f0;
    LUT4 i34900_2_lut_rep_678 (.A(\realv_5[0] ), .B(\ADC_level[7] ), .Z(n43395)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i34900_2_lut_rep_678.init = 16'h6666;
    LUT4 i4327_2_lut_rep_403_3_lut_4_lut (.A(\realv_5[0] ), .B(\ADC_level[7] ), 
         .C(\voltage_code[6] ), .D(n43130), .Z(n43120)) /* synthesis lut_function=(A (B (C+(D))+!B (C+!(D)))+!A (B (C+!(D))+!B (C+(D)))) */ ;
    defparam i4327_2_lut_rep_403_3_lut_4_lut.init = 16'hf9f6;
    LUT4 i39027_then_4_lut (.A(n6706), .B(n43164), .C(n43153), .D(n353[1]), 
         .Z(n43465)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(D))+!A (B ((D)+!C)+!B !(C (D)))) */ ;
    defparam i39027_then_4_lut.init = 16'hcd3f;
    LUT4 i39027_else_4_lut (.A(n6706), .B(n43164), .C(n43153), .D(n353[1]), 
         .Z(n43464)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (D)+!B ((D)+!C)))) */ ;
    defparam i39027_else_4_lut.init = 16'h7f8b;
    PFUMX i39767 (.BLUT(n43485), .ALUT(n43486), .C0(n386[1]), .Z(n13333));
    PFUMX i40274 (.BLUT(n44497), .ALUT(n44481), .C0(\ADC_level[7] ), .Z(n43168));
    LUT4 i5895_2_lut_rep_451_3_lut_4_lut_then_4_lut (.A(\voltage_code[5] ), 
         .B(\voltage_code[6] ), .C(n44497), .D(decade_3__N_561), .Z(n44481)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i5895_2_lut_rep_451_3_lut_4_lut_then_4_lut.init = 16'h1e10;
    PFUMX i39762 (.BLUT(n43478), .ALUT(n43479), .C0(\y_cnt[3] ), .Z(n4_c));
    PFUMX i39760 (.BLUT(n43475), .ALUT(n43476), .C0(\realv_5[0] ), .Z(n5_adj_1285));
    LUT4 i4292_3_lut_rep_417_4_lut (.A(n363[1]), .B(n43141), .C(n365[1]), 
         .D(n43137), .Z(n43134)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B+(C (D)))) */ ;   // D:/Lattice Diamond/diamond/3.13/ispfpga/vhdl_packages/syn_unsi.vhd(118[20:31])
    defparam i4292_3_lut_rep_417_4_lut.init = 16'hf666;
    
endmodule
