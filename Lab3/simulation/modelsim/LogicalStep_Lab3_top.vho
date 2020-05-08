-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Standard Edition"

-- DATE "07/04/2019 07:15:23"

-- 
-- Device: Altera 10M08SAE144C8G Package EQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab3_top IS
    PORT (
	clkin_50 : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab3_top;

-- Design Ports Information
-- leds[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[1]	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[2]	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[3]	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[4]	=>  Location: PIN_10,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[5]	=>  Location: PIN_7,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[6]	=>  Location: PIN_38,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- leds[7]	=>  Location: PIN_41,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[0]	=>  Location: PIN_123,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[1]	=>  Location: PIN_138,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[2]	=>  Location: PIN_140,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[3]	=>  Location: PIN_105,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[4]	=>  Location: PIN_121,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[5]	=>  Location: PIN_134,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_data[6]	=>  Location: PIN_136,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char1	=>  Location: PIN_122,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- seg7_char2	=>  Location: PIN_120,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: 2mA
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab3_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clkin_50 : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \seg7_data[1]~output_o\ : std_logic;
SIGNAL \seg7_data[5]~output_o\ : std_logic;
SIGNAL \seg7_data[6]~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \seg7_data[0]~output_o\ : std_logic;
SIGNAL \seg7_data[2]~output_o\ : std_logic;
SIGNAL \seg7_data[3]~output_o\ : std_logic;
SIGNAL \seg7_data[4]~output_o\ : std_logic;
SIGNAL \seg7_char1~output_o\ : std_logic;
SIGNAL \seg7_char2~output_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \INST2|fixed_setting[1]~1_combout\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \INST2|Selector0~0_combout\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \INST2|fixed_setting[0]~2_combout\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \INST2|fixed_setting[3]~0_combout\ : std_logic;
SIGNAL \INST3|Mux5~0_combout\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[0]~0_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[0]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[1]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[1]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[1]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[2]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[2]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[2]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[3]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[3]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[3]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[4]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[4]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[4]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[5]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[5]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[5]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[6]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[6]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[6]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[7]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[7]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[7]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[8]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[8]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[8]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[9]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[9]~q\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[9]~2\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[10]~1_combout\ : std_logic;
SIGNAL \INST5|clk_proc:COUNT[10]~q\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \INST4|Mux5~0_combout\ : std_logic;
SIGNAL \INST5|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST3|Mux1~0_combout\ : std_logic;
SIGNAL \INST4|Mux1~0_combout\ : std_logic;
SIGNAL \INST5|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST4|Mux0~0_combout\ : std_logic;
SIGNAL \INST3|Mux0~0_combout\ : std_logic;
SIGNAL \INST5|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \INST1|ALTB~1_combout\ : std_logic;
SIGNAL \INST1|ALTB~0_combout\ : std_logic;
SIGNAL \INST1|ALTB~2_combout\ : std_logic;
SIGNAL \INST1|ALTB~3_combout\ : std_logic;
SIGNAL \INST1|INST3|EQ~0_combout\ : std_logic;
SIGNAL \INST1|AEQB~0_combout\ : std_logic;
SIGNAL \INST1|AGTB~1_combout\ : std_logic;
SIGNAL \INST1|AGTB~0_combout\ : std_logic;
SIGNAL \INST1|AGTB~2_combout\ : std_logic;
SIGNAL \INST6|leds_out[3]~0_combout\ : std_logic;
SIGNAL \TEST_PASS~0_combout\ : std_logic;
SIGNAL \TEST_PASS~1_combout\ : std_logic;
SIGNAL \TEST_PASS~2_combout\ : std_logic;
SIGNAL \TEST_PASS~4_combout\ : std_logic;
SIGNAL \TEST_PASS~3_combout\ : std_logic;
SIGNAL \TEST_PASS~5_combout\ : std_logic;
SIGNAL \TEST_PASS~6_combout\ : std_logic;
SIGNAL \TEST_PASS~7_combout\ : std_logic;
SIGNAL \TEST_PASS~8_combout\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \TEST_PASS~9_combout\ : std_logic;
SIGNAL \INST4|Mux6~0_combout\ : std_logic;
SIGNAL \INST3|Mux6~0_combout\ : std_logic;
SIGNAL \INST5|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST4|Mux4~0_combout\ : std_logic;
SIGNAL \INST3|Mux4~0_combout\ : std_logic;
SIGNAL \INST5|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST3|Mux3~0_combout\ : std_logic;
SIGNAL \INST4|Mux3~0_combout\ : std_logic;
SIGNAL \INST5|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST3|Mux2~0_combout\ : std_logic;
SIGNAL \INST4|Mux2~0_combout\ : std_logic;
SIGNAL \INST5|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST6|leds_out\ : std_logic_vector(5 DOWNTO 0);
SIGNAL \ALT_INV_pb[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_pb[0]~input_o\ : std_logic;
SIGNAL \INST5|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST5|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST5|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST5|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST1|ALT_INV_AEQB~0_combout\ : std_logic;
SIGNAL \INST5|ALT_INV_clk_proc:COUNT[10]~q\ : std_logic;

BEGIN

ww_clkin_50 <= clkin_50;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
seg7_data <= ww_seg7_data;
seg7_char1 <= ww_seg7_char1;
seg7_char2 <= ww_seg7_char2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);
\ALT_INV_pb[3]~input_o\ <= NOT \pb[3]~input_o\;
\ALT_INV_pb[1]~input_o\ <= NOT \pb[1]~input_o\;
\ALT_INV_pb[0]~input_o\ <= NOT \pb[0]~input_o\;
\INST5|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST5|DOUT[4]~4_combout\;
\INST5|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST5|DOUT[3]~3_combout\;
\INST5|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST5|DOUT[2]~2_combout\;
\INST5|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST5|DOUT[0]~0_combout\;
\INST1|ALT_INV_AEQB~0_combout\ <= NOT \INST1|AEQB~0_combout\;
\INST5|ALT_INV_clk_proc:COUNT[10]~q\ <= NOT \INST5|clk_proc:COUNT[10]~q\;

-- Location: LCCOMB_X11_Y13_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X3_Y10_N23
\seg7_data[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST5|DOUT_TEMP[1]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[1]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\seg7_data[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST5|DOUT_TEMP[5]~1_combout\,
	devoe => ww_devoe,
	o => \seg7_data[5]~output_o\);

-- Location: IOOBUF_X3_Y10_N16
\seg7_data[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \INST5|DOUT_TEMP[6]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[6]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|leds_out\(0),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST1|ALT_INV_AEQB~0_combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|leds_out\(2),
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST6|leds_out[3]~0_combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb[0]~input_o\,
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb[1]~input_o\,
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N16
\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TEST_PASS~9_combout\,
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_pb[3]~input_o\,
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

-- Location: IOOBUF_X13_Y25_N30
\seg7_data[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|ALT_INV_DOUT[0]~0_combout\,
	devoe => ww_devoe,
	o => \seg7_data[0]~output_o\);

-- Location: IOOBUF_X1_Y10_N9
\seg7_data[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|ALT_INV_DOUT[2]~2_combout\,
	devoe => ww_devoe,
	o => \seg7_data[2]~output_o\);

-- Location: IOOBUF_X31_Y22_N23
\seg7_data[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|ALT_INV_DOUT[3]~3_combout\,
	devoe => ww_devoe,
	o => \seg7_data[3]~output_o\);

-- Location: IOOBUF_X15_Y25_N23
\seg7_data[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|ALT_INV_DOUT[4]~4_combout\,
	devoe => ww_devoe,
	o => \seg7_data[4]~output_o\);

-- Location: IOOBUF_X13_Y25_N9
\seg7_char1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char1~output_o\);

-- Location: IOOBUF_X15_Y25_N16
\seg7_char2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \INST5|ALT_INV_clk_proc:COUNT[10]~q\,
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

-- Location: IOIBUF_X6_Y0_N15
\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

-- Location: IOIBUF_X10_Y22_N15
\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

-- Location: LCCOMB_X9_Y9_N24
\INST2|fixed_setting[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|fixed_setting[1]~1_combout\ = (\pb[3]~input_o\ & \sw[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[5]~input_o\,
	combout => \INST2|fixed_setting[1]~1_combout\);

-- Location: IOIBUF_X3_Y0_N8
\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

-- Location: LCCOMB_X9_Y9_N14
\INST2|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|Selector0~0_combout\ = (\sw[6]~input_o\) # (!\pb[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[6]~input_o\,
	combout => \INST2|Selector0~0_combout\);

-- Location: IOIBUF_X10_Y21_N15
\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

-- Location: LCCOMB_X9_Y9_N26
\INST2|fixed_setting[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|fixed_setting[0]~2_combout\ = (\pb[3]~input_o\ & \sw[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pb[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \INST2|fixed_setting[0]~2_combout\);

-- Location: IOIBUF_X1_Y10_N15
\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

-- Location: LCCOMB_X9_Y9_N28
\INST2|fixed_setting[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|fixed_setting[3]~0_combout\ = (\pb[3]~input_o\ & \sw[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[7]~input_o\,
	combout => \INST2|fixed_setting[3]~0_combout\);

-- Location: LCCOMB_X12_Y9_N12
\INST3|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux5~0_combout\ = (\INST2|fixed_setting[1]~1_combout\ & ((\INST2|fixed_setting[0]~2_combout\ & ((\INST2|fixed_setting[3]~0_combout\))) # (!\INST2|fixed_setting[0]~2_combout\ & (\INST2|Selector0~0_combout\)))) # (!\INST2|fixed_setting[1]~1_combout\ 
-- & (\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[0]~2_combout\ $ (\INST2|fixed_setting[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[0]~2_combout\,
	datad => \INST2|fixed_setting[3]~0_combout\,
	combout => \INST3|Mux5~0_combout\);

-- Location: IOIBUF_X0_Y6_N22
\clkin_50~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clkin_50,
	o => \clkin_50~input_o\);

-- Location: CLKCTRL_G4
\clkin_50~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clkin_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clkin_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X15_Y21_N28
\INST5|clk_proc:COUNT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[0]~0_combout\ = !\INST5|clk_proc:COUNT[0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|clk_proc:COUNT[0]~q\,
	combout => \INST5|clk_proc:COUNT[0]~0_combout\);

-- Location: FF_X15_Y21_N29
\INST5|clk_proc:COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[0]~q\);

-- Location: LCCOMB_X15_Y21_N8
\INST5|clk_proc:COUNT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[1]~1_combout\ = (\INST5|clk_proc:COUNT[0]~q\ & (\INST5|clk_proc:COUNT[1]~q\ $ (VCC))) # (!\INST5|clk_proc:COUNT[0]~q\ & (\INST5|clk_proc:COUNT[1]~q\ & VCC))
-- \INST5|clk_proc:COUNT[1]~2\ = CARRY((\INST5|clk_proc:COUNT[0]~q\ & \INST5|clk_proc:COUNT[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[0]~q\,
	datab => \INST5|clk_proc:COUNT[1]~q\,
	datad => VCC,
	combout => \INST5|clk_proc:COUNT[1]~1_combout\,
	cout => \INST5|clk_proc:COUNT[1]~2\);

-- Location: FF_X15_Y21_N9
\INST5|clk_proc:COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[1]~q\);

-- Location: LCCOMB_X15_Y21_N10
\INST5|clk_proc:COUNT[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[2]~1_combout\ = (\INST5|clk_proc:COUNT[2]~q\ & (!\INST5|clk_proc:COUNT[1]~2\)) # (!\INST5|clk_proc:COUNT[2]~q\ & ((\INST5|clk_proc:COUNT[1]~2\) # (GND)))
-- \INST5|clk_proc:COUNT[2]~2\ = CARRY((!\INST5|clk_proc:COUNT[1]~2\) # (!\INST5|clk_proc:COUNT[2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[2]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[1]~2\,
	combout => \INST5|clk_proc:COUNT[2]~1_combout\,
	cout => \INST5|clk_proc:COUNT[2]~2\);

-- Location: FF_X15_Y21_N11
\INST5|clk_proc:COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[2]~q\);

-- Location: LCCOMB_X15_Y21_N12
\INST5|clk_proc:COUNT[3]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[3]~1_combout\ = (\INST5|clk_proc:COUNT[3]~q\ & (\INST5|clk_proc:COUNT[2]~2\ $ (GND))) # (!\INST5|clk_proc:COUNT[3]~q\ & (!\INST5|clk_proc:COUNT[2]~2\ & VCC))
-- \INST5|clk_proc:COUNT[3]~2\ = CARRY((\INST5|clk_proc:COUNT[3]~q\ & !\INST5|clk_proc:COUNT[2]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[3]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[2]~2\,
	combout => \INST5|clk_proc:COUNT[3]~1_combout\,
	cout => \INST5|clk_proc:COUNT[3]~2\);

-- Location: FF_X15_Y21_N13
\INST5|clk_proc:COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[3]~q\);

-- Location: LCCOMB_X15_Y21_N14
\INST5|clk_proc:COUNT[4]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[4]~1_combout\ = (\INST5|clk_proc:COUNT[4]~q\ & (!\INST5|clk_proc:COUNT[3]~2\)) # (!\INST5|clk_proc:COUNT[4]~q\ & ((\INST5|clk_proc:COUNT[3]~2\) # (GND)))
-- \INST5|clk_proc:COUNT[4]~2\ = CARRY((!\INST5|clk_proc:COUNT[3]~2\) # (!\INST5|clk_proc:COUNT[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_proc:COUNT[4]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[3]~2\,
	combout => \INST5|clk_proc:COUNT[4]~1_combout\,
	cout => \INST5|clk_proc:COUNT[4]~2\);

-- Location: FF_X15_Y21_N15
\INST5|clk_proc:COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[4]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[4]~q\);

-- Location: LCCOMB_X15_Y21_N16
\INST5|clk_proc:COUNT[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[5]~1_combout\ = (\INST5|clk_proc:COUNT[5]~q\ & (\INST5|clk_proc:COUNT[4]~2\ $ (GND))) # (!\INST5|clk_proc:COUNT[5]~q\ & (!\INST5|clk_proc:COUNT[4]~2\ & VCC))
-- \INST5|clk_proc:COUNT[5]~2\ = CARRY((\INST5|clk_proc:COUNT[5]~q\ & !\INST5|clk_proc:COUNT[4]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_proc:COUNT[5]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[4]~2\,
	combout => \INST5|clk_proc:COUNT[5]~1_combout\,
	cout => \INST5|clk_proc:COUNT[5]~2\);

-- Location: FF_X15_Y21_N17
\INST5|clk_proc:COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[5]~q\);

-- Location: LCCOMB_X15_Y21_N18
\INST5|clk_proc:COUNT[6]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[6]~1_combout\ = (\INST5|clk_proc:COUNT[6]~q\ & (!\INST5|clk_proc:COUNT[5]~2\)) # (!\INST5|clk_proc:COUNT[6]~q\ & ((\INST5|clk_proc:COUNT[5]~2\) # (GND)))
-- \INST5|clk_proc:COUNT[6]~2\ = CARRY((!\INST5|clk_proc:COUNT[5]~2\) # (!\INST5|clk_proc:COUNT[6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_proc:COUNT[6]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[5]~2\,
	combout => \INST5|clk_proc:COUNT[6]~1_combout\,
	cout => \INST5|clk_proc:COUNT[6]~2\);

-- Location: FF_X15_Y21_N19
\INST5|clk_proc:COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[6]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[6]~q\);

-- Location: LCCOMB_X15_Y21_N20
\INST5|clk_proc:COUNT[7]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[7]~1_combout\ = (\INST5|clk_proc:COUNT[7]~q\ & (\INST5|clk_proc:COUNT[6]~2\ $ (GND))) # (!\INST5|clk_proc:COUNT[7]~q\ & (!\INST5|clk_proc:COUNT[6]~2\ & VCC))
-- \INST5|clk_proc:COUNT[7]~2\ = CARRY((\INST5|clk_proc:COUNT[7]~q\ & !\INST5|clk_proc:COUNT[6]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_proc:COUNT[7]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[6]~2\,
	combout => \INST5|clk_proc:COUNT[7]~1_combout\,
	cout => \INST5|clk_proc:COUNT[7]~2\);

-- Location: FF_X15_Y21_N21
\INST5|clk_proc:COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[7]~q\);

-- Location: LCCOMB_X15_Y21_N22
\INST5|clk_proc:COUNT[8]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[8]~1_combout\ = (\INST5|clk_proc:COUNT[8]~q\ & (!\INST5|clk_proc:COUNT[7]~2\)) # (!\INST5|clk_proc:COUNT[8]~q\ & ((\INST5|clk_proc:COUNT[7]~2\) # (GND)))
-- \INST5|clk_proc:COUNT[8]~2\ = CARRY((!\INST5|clk_proc:COUNT[7]~2\) # (!\INST5|clk_proc:COUNT[8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[8]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[7]~2\,
	combout => \INST5|clk_proc:COUNT[8]~1_combout\,
	cout => \INST5|clk_proc:COUNT[8]~2\);

-- Location: FF_X15_Y21_N23
\INST5|clk_proc:COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[8]~q\);

-- Location: LCCOMB_X15_Y21_N24
\INST5|clk_proc:COUNT[9]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[9]~1_combout\ = (\INST5|clk_proc:COUNT[9]~q\ & (\INST5|clk_proc:COUNT[8]~2\ $ (GND))) # (!\INST5|clk_proc:COUNT[9]~q\ & (!\INST5|clk_proc:COUNT[8]~2\ & VCC))
-- \INST5|clk_proc:COUNT[9]~2\ = CARRY((\INST5|clk_proc:COUNT[9]~q\ & !\INST5|clk_proc:COUNT[8]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_proc:COUNT[9]~q\,
	datad => VCC,
	cin => \INST5|clk_proc:COUNT[8]~2\,
	combout => \INST5|clk_proc:COUNT[9]~1_combout\,
	cout => \INST5|clk_proc:COUNT[9]~2\);

-- Location: FF_X15_Y21_N25
\INST5|clk_proc:COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[9]~q\);

-- Location: LCCOMB_X15_Y21_N26
\INST5|clk_proc:COUNT[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_proc:COUNT[10]~1_combout\ = \INST5|clk_proc:COUNT[10]~q\ $ (\INST5|clk_proc:COUNT[9]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[10]~q\,
	cin => \INST5|clk_proc:COUNT[9]~2\,
	combout => \INST5|clk_proc:COUNT[10]~1_combout\);

-- Location: FF_X15_Y21_N27
\INST5|clk_proc:COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \INST5|clk_proc:COUNT[10]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|clk_proc:COUNT[10]~q\);

-- Location: IOIBUF_X10_Y19_N15
\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

-- Location: IOIBUF_X0_Y5_N1
\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

-- Location: IOIBUF_X10_Y20_N15
\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

-- Location: IOIBUF_X10_Y19_N22
\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

-- Location: LCCOMB_X12_Y9_N18
\INST4|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux5~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & (\sw[3]~input_o\)) # (!\sw[0]~input_o\ & ((\sw[2]~input_o\))))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ & (\sw[0]~input_o\ $ (\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux5~0_combout\);

-- Location: LCCOMB_X12_Y9_N24
\INST5|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT_TEMP[1]~0_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & (!\INST3|Mux5~0_combout\)) # (!\INST5|clk_proc:COUNT[10]~q\ & ((!\INST4|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|Mux5~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	datad => \INST4|Mux5~0_combout\,
	combout => \INST5|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X12_Y9_N10
\INST3|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux1~0_combout\ = (\INST2|fixed_setting[1]~1_combout\ & (!\INST2|fixed_setting[3]~0_combout\ & ((\INST2|fixed_setting[0]~2_combout\) # (!\INST2|Selector0~0_combout\)))) # (!\INST2|fixed_setting[1]~1_combout\ & ((\INST2|Selector0~0_combout\ & 
-- ((\INST2|fixed_setting[3]~0_combout\))) # (!\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[0]~2_combout\ & !\INST2|fixed_setting[3]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[0]~2_combout\,
	datad => \INST2|fixed_setting[3]~0_combout\,
	combout => \INST3|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y9_N28
\INST4|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux1~0_combout\ = (\sw[1]~input_o\ & (!\sw[3]~input_o\ & ((\sw[0]~input_o\) # (!\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & ((\sw[3]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[3]~input_o\ & (\sw[0]~input_o\ & !\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux1~0_combout\);

-- Location: LCCOMB_X12_Y9_N6
\INST5|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT_TEMP[5]~1_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & (!\INST3|Mux1~0_combout\)) # (!\INST5|clk_proc:COUNT[10]~q\ & ((!\INST4|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|Mux1~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	datad => \INST4|Mux1~0_combout\,
	combout => \INST5|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X11_Y9_N10
\INST4|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux0~0_combout\ = (\sw[3]~input_o\) # ((\sw[1]~input_o\ & ((!\sw[2]~input_o\) # (!\sw[0]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y9_N16
\INST3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux0~0_combout\ = (\INST2|fixed_setting[3]~0_combout\) # ((\INST2|fixed_setting[1]~1_combout\ & ((!\INST2|fixed_setting[0]~2_combout\) # (!\INST2|Selector0~0_combout\))) # (!\INST2|fixed_setting[1]~1_combout\ & (\INST2|Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[0]~2_combout\,
	datad => \INST2|fixed_setting[3]~0_combout\,
	combout => \INST3|Mux0~0_combout\);

-- Location: LCCOMB_X12_Y9_N30
\INST5|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT_TEMP[6]~2_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & ((\INST3|Mux0~0_combout\))) # (!\INST5|clk_proc:COUNT[10]~q\ & (\INST4|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|Mux0~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	datad => \INST3|Mux0~0_combout\,
	combout => \INST5|DOUT_TEMP[6]~2_combout\);

-- Location: IOIBUF_X9_Y0_N1
\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

-- Location: LCCOMB_X11_Y9_N18
\INST1|ALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ALTB~1_combout\ = (\INST2|fixed_setting[1]~1_combout\ & (((!\sw[0]~input_o\ & \INST2|fixed_setting[0]~2_combout\)) # (!\sw[1]~input_o\))) # (!\INST2|fixed_setting[1]~1_combout\ & (!\sw[0]~input_o\ & (\INST2|fixed_setting[0]~2_combout\ & 
-- !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST2|fixed_setting[0]~2_combout\,
	datac => \INST2|fixed_setting[1]~1_combout\,
	datad => \sw[1]~input_o\,
	combout => \INST1|ALTB~1_combout\);

-- Location: LCCOMB_X11_Y9_N12
\INST1|ALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ALTB~0_combout\ = (\INST2|fixed_setting[3]~0_combout\ & (((\INST2|Selector0~0_combout\ & !\sw[2]~input_o\)) # (!\sw[3]~input_o\))) # (!\INST2|fixed_setting[3]~0_combout\ & (\INST2|Selector0~0_combout\ & (!\sw[3]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[3]~0_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST1|ALTB~0_combout\);

-- Location: LCCOMB_X11_Y9_N16
\INST1|ALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ALTB~2_combout\ = (\INST2|fixed_setting[3]~0_combout\ & (\sw[3]~input_o\ & (\INST2|Selector0~0_combout\ $ (!\sw[2]~input_o\)))) # (!\INST2|fixed_setting[3]~0_combout\ & (!\sw[3]~input_o\ & (\INST2|Selector0~0_combout\ $ (!\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[3]~0_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST1|ALTB~2_combout\);

-- Location: LCCOMB_X10_Y9_N24
\INST1|ALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ALTB~3_combout\ = (\INST1|ALTB~0_combout\) # ((\INST1|ALTB~1_combout\ & \INST1|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|ALTB~1_combout\,
	datac => \INST1|ALTB~0_combout\,
	datad => \INST1|ALTB~2_combout\,
	combout => \INST1|ALTB~3_combout\);

-- Location: LCCOMB_X10_Y9_N22
\INST6|leds_out[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|leds_out\(0) = (\pb[0]~input_o\ & (\pb[1]~input_o\ & \INST1|ALTB~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \INST1|ALTB~3_combout\,
	combout => \INST6|leds_out\(0));

-- Location: LCCOMB_X9_Y9_N8
\INST1|INST3|EQ~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|INST3|EQ~0_combout\ = \sw[1]~input_o\ $ (((\pb[3]~input_o\ & \sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \INST1|INST3|EQ~0_combout\);

-- Location: LCCOMB_X9_Y9_N2
\INST1|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|AEQB~0_combout\ = (\INST1|INST3|EQ~0_combout\) # ((\sw[0]~input_o\ $ (\INST2|fixed_setting[0]~2_combout\)) # (!\INST1|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST2|fixed_setting[0]~2_combout\,
	datac => \INST1|INST3|EQ~0_combout\,
	datad => \INST1|ALTB~2_combout\,
	combout => \INST1|AEQB~0_combout\);

-- Location: LCCOMB_X11_Y9_N4
\INST1|AGTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|AGTB~1_combout\ = (\INST2|fixed_setting[1]~1_combout\ & (\sw[0]~input_o\ & (!\INST2|fixed_setting[0]~2_combout\ & \sw[1]~input_o\))) # (!\INST2|fixed_setting[1]~1_combout\ & ((\sw[1]~input_o\) # ((\sw[0]~input_o\ & 
-- !\INST2|fixed_setting[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \INST2|fixed_setting[0]~2_combout\,
	datac => \INST2|fixed_setting[1]~1_combout\,
	datad => \sw[1]~input_o\,
	combout => \INST1|AGTB~1_combout\);

-- Location: LCCOMB_X11_Y9_N14
\INST1|AGTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|AGTB~0_combout\ = (\INST2|fixed_setting[3]~0_combout\ & (!\INST2|Selector0~0_combout\ & (\sw[3]~input_o\ & \sw[2]~input_o\))) # (!\INST2|fixed_setting[3]~0_combout\ & ((\sw[3]~input_o\) # ((!\INST2|Selector0~0_combout\ & \sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[3]~0_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST1|AGTB~0_combout\);

-- Location: LCCOMB_X10_Y9_N12
\INST1|AGTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|AGTB~2_combout\ = (\INST1|AGTB~0_combout\) # ((\INST1|AGTB~1_combout\ & \INST1|ALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|AGTB~1_combout\,
	datac => \INST1|AGTB~0_combout\,
	datad => \INST1|ALTB~2_combout\,
	combout => \INST1|AGTB~2_combout\);

-- Location: LCCOMB_X10_Y9_N10
\INST6|leds_out[2]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|leds_out\(2) = (\pb[0]~input_o\ & (\pb[1]~input_o\ & \INST1|AGTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datad => \INST1|AGTB~2_combout\,
	combout => \INST6|leds_out\(2));

-- Location: LCCOMB_X10_Y9_N20
\INST6|leds_out[3]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|leds_out[3]~0_combout\ = (\pb[0]~input_o\ & (\pb[1]~input_o\ & ((\INST1|ALTB~3_combout\) # (\INST1|AGTB~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \pb[1]~input_o\,
	datac => \INST1|ALTB~3_combout\,
	datad => \INST1|AGTB~2_combout\,
	combout => \INST6|leds_out[3]~0_combout\);

-- Location: LCCOMB_X9_Y9_N20
\TEST_PASS~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~0_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\sw[4]~input_o\)) # (!\sw[5]~input_o\))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\sw[5]~input_o\ & !\sw[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \TEST_PASS~0_combout\);

-- Location: LCCOMB_X9_Y9_N10
\TEST_PASS~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~1_combout\ = (\sw[2]~input_o\ & ((\TEST_PASS~0_combout\) # (!\sw[6]~input_o\))) # (!\sw[2]~input_o\ & (\TEST_PASS~0_combout\ & !\sw[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \TEST_PASS~0_combout\,
	datac => \sw[6]~input_o\,
	combout => \TEST_PASS~1_combout\);

-- Location: LCCOMB_X9_Y9_N12
\TEST_PASS~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~2_combout\ = (\INST1|AGTB~2_combout\ & ((\TEST_PASS~1_combout\ & ((\sw[3]~input_o\) # (!\sw[7]~input_o\))) # (!\TEST_PASS~1_combout\ & (!\sw[7]~input_o\ & \sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_PASS~1_combout\,
	datab => \INST1|AGTB~2_combout\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \TEST_PASS~2_combout\);

-- Location: LCCOMB_X9_Y9_N0
\TEST_PASS~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~4_combout\ = (\sw[0]~input_o\ & (\sw[4]~input_o\ & (\sw[1]~input_o\ $ (!\sw[5]~input_o\)))) # (!\sw[0]~input_o\ & (!\sw[4]~input_o\ & (\sw[1]~input_o\ $ (!\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \TEST_PASS~4_combout\);

-- Location: LCCOMB_X9_Y9_N22
\TEST_PASS~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~3_combout\ = (\sw[2]~input_o\ & (\sw[6]~input_o\ & (\sw[7]~input_o\ $ (!\sw[3]~input_o\)))) # (!\sw[2]~input_o\ & (!\sw[6]~input_o\ & (\sw[7]~input_o\ $ (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \TEST_PASS~3_combout\);

-- Location: LCCOMB_X9_Y9_N6
\TEST_PASS~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~5_combout\ = (\TEST_PASS~2_combout\) # ((\TEST_PASS~4_combout\ & (\TEST_PASS~3_combout\ & !\INST1|AEQB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_PASS~2_combout\,
	datab => \TEST_PASS~4_combout\,
	datac => \TEST_PASS~3_combout\,
	datad => \INST1|AEQB~0_combout\,
	combout => \TEST_PASS~5_combout\);

-- Location: LCCOMB_X9_Y9_N4
\TEST_PASS~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~6_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\ & (\sw[5]~input_o\ & \sw[4]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[5]~input_o\) # ((!\sw[0]~input_o\ & \sw[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[5]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \TEST_PASS~6_combout\);

-- Location: LCCOMB_X9_Y9_N18
\TEST_PASS~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~7_combout\ = (\sw[2]~input_o\ & (\TEST_PASS~6_combout\ & \sw[6]~input_o\)) # (!\sw[2]~input_o\ & ((\TEST_PASS~6_combout\) # (\sw[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \TEST_PASS~6_combout\,
	datac => \sw[6]~input_o\,
	combout => \TEST_PASS~7_combout\);

-- Location: LCCOMB_X9_Y9_N16
\TEST_PASS~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~8_combout\ = (\TEST_PASS~7_combout\ & ((\sw[7]~input_o\) # (!\sw[3]~input_o\))) # (!\TEST_PASS~7_combout\ & (\sw[7]~input_o\ & !\sw[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \TEST_PASS~7_combout\,
	datac => \sw[7]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \TEST_PASS~8_combout\);

-- Location: IOIBUF_X9_Y0_N29
\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

-- Location: LCCOMB_X9_Y9_N30
\TEST_PASS~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \TEST_PASS~9_combout\ = (!\pb[2]~input_o\ & ((\TEST_PASS~5_combout\) # ((\TEST_PASS~8_combout\ & \INST1|ALTB~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \TEST_PASS~5_combout\,
	datab => \TEST_PASS~8_combout\,
	datac => \pb[2]~input_o\,
	datad => \INST1|ALTB~3_combout\,
	combout => \TEST_PASS~9_combout\);

-- Location: LCCOMB_X11_Y9_N22
\INST4|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux6~0_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\))) # (!\sw[1]~input_o\ & (\sw[2]~input_o\ $ (((\sw[0]~input_o\ & !\sw[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y9_N0
\INST3|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux6~0_combout\ = (\INST2|fixed_setting[1]~1_combout\ & (!\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[0]~2_combout\ & \INST2|fixed_setting[3]~0_combout\))) # (!\INST2|fixed_setting[1]~1_combout\ & (\INST2|Selector0~0_combout\ $ 
-- (((\INST2|fixed_setting[0]~2_combout\ & !\INST2|fixed_setting[3]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[0]~2_combout\,
	datad => \INST2|fixed_setting[3]~0_combout\,
	combout => \INST3|Mux6~0_combout\);

-- Location: LCCOMB_X12_Y9_N26
\INST5|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT[0]~0_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & ((\INST3|Mux6~0_combout\))) # (!\INST5|clk_proc:COUNT[10]~q\ & (\INST4|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST4|Mux6~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	datad => \INST3|Mux6~0_combout\,
	combout => \INST5|DOUT[0]~0_combout\);

-- Location: LCCOMB_X11_Y9_N8
\INST4|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux4~0_combout\ = (\sw[3]~input_o\ & (\sw[2]~input_o\ & ((\sw[1]~input_o\) # (!\sw[0]~input_o\)))) # (!\sw[3]~input_o\ & (!\sw[0]~input_o\ & (\sw[1]~input_o\ & !\sw[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y9_N20
\INST3|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux4~0_combout\ = (\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[3]~0_combout\ & ((\INST2|fixed_setting[1]~1_combout\) # (!\INST2|fixed_setting[0]~2_combout\)))) # (!\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[1]~1_combout\ & 
-- (!\INST2|fixed_setting[0]~2_combout\ & !\INST2|fixed_setting[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[0]~2_combout\,
	datad => \INST2|fixed_setting[3]~0_combout\,
	combout => \INST3|Mux4~0_combout\);

-- Location: LCCOMB_X12_Y9_N14
\INST5|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT[2]~2_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & ((\INST3|Mux4~0_combout\))) # (!\INST5|clk_proc:COUNT[10]~q\ & (\INST4|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|Mux4~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	datad => \INST3|Mux4~0_combout\,
	combout => \INST5|DOUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y9_N26
\INST3|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux3~0_combout\ = (\INST2|fixed_setting[1]~1_combout\ & ((\INST2|Selector0~0_combout\ & ((\INST2|fixed_setting[0]~2_combout\))) # (!\INST2|Selector0~0_combout\ & (\INST2|fixed_setting[3]~0_combout\ & !\INST2|fixed_setting[0]~2_combout\)))) # 
-- (!\INST2|fixed_setting[1]~1_combout\ & (!\INST2|fixed_setting[3]~0_combout\ & (\INST2|Selector0~0_combout\ $ (\INST2|fixed_setting[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[3]~0_combout\,
	datad => \INST2|fixed_setting[0]~2_combout\,
	combout => \INST3|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y9_N8
\INST4|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux3~0_combout\ = (\sw[1]~input_o\ & ((\sw[0]~input_o\ & ((\sw[2]~input_o\))) # (!\sw[0]~input_o\ & (\sw[3]~input_o\ & !\sw[2]~input_o\)))) # (!\sw[1]~input_o\ & (!\sw[3]~input_o\ & (\sw[0]~input_o\ $ (\sw[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux3~0_combout\);

-- Location: LCCOMB_X12_Y9_N2
\INST5|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT[3]~3_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & (\INST3|Mux3~0_combout\)) # (!\INST5|clk_proc:COUNT[10]~q\ & ((\INST4|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|Mux3~0_combout\,
	datab => \INST4|Mux3~0_combout\,
	datac => \INST5|clk_proc:COUNT[10]~q\,
	combout => \INST5|DOUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y9_N24
\INST3|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|Mux2~0_combout\ = (\INST2|fixed_setting[1]~1_combout\ & (((!\INST2|fixed_setting[3]~0_combout\ & \INST2|fixed_setting[0]~2_combout\)))) # (!\INST2|fixed_setting[1]~1_combout\ & ((\INST2|Selector0~0_combout\ & (!\INST2|fixed_setting[3]~0_combout\)) 
-- # (!\INST2|Selector0~0_combout\ & ((\INST2|fixed_setting[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|fixed_setting[1]~1_combout\,
	datab => \INST2|Selector0~0_combout\,
	datac => \INST2|fixed_setting[3]~0_combout\,
	datad => \INST2|fixed_setting[0]~2_combout\,
	combout => \INST3|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y9_N4
\INST4|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|Mux2~0_combout\ = (\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\sw[3]~input_o\))) # (!\sw[1]~input_o\ & ((\sw[2]~input_o\ & ((!\sw[3]~input_o\))) # (!\sw[2]~input_o\ & (\sw[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \INST4|Mux2~0_combout\);

-- Location: LCCOMB_X12_Y9_N22
\INST5|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|DOUT[4]~4_combout\ = (\INST5|clk_proc:COUNT[10]~q\ & (\INST3|Mux2~0_combout\)) # (!\INST5|clk_proc:COUNT[10]~q\ & ((\INST4|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_proc:COUNT[10]~q\,
	datab => \INST3|Mux2~0_combout\,
	datac => \INST4|Mux2~0_combout\,
	combout => \INST5|DOUT[4]~4_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_seg7_data(0) <= \seg7_data[0]~output_o\;

ww_seg7_data(1) <= \seg7_data[1]~output_o\;

ww_seg7_data(2) <= \seg7_data[2]~output_o\;

ww_seg7_data(3) <= \seg7_data[3]~output_o\;

ww_seg7_data(4) <= \seg7_data[4]~output_o\;

ww_seg7_data(5) <= \seg7_data[5]~output_o\;

ww_seg7_data(6) <= \seg7_data[6]~output_o\;

ww_seg7_char1 <= \seg7_char1~output_o\;

ww_seg7_char2 <= \seg7_char2~output_o\;
END structure;


