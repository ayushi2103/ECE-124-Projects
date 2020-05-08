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

-- DATE "07/18/2019 06:46:21"

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

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	clkin_50 : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(7 DOWNTO 0);
	seg7_data : OUT std_logic_vector(6 DOWNTO 0);
	seg7_char1 : OUT std_logic;
	seg7_char2 : OUT std_logic
	);
END LogicalStep_Lab4_top;

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
-- sw[4]	=>  Location: PIN_8,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[3]	=>  Location: PIN_43,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[5]	=>  Location: PIN_6,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[6]	=>  Location: PIN_39,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[7]	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[0]	=>  Location: PIN_30,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[2]	=>  Location: PIN_44,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[1]	=>  Location: PIN_13,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[2]	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- sw[3]	=>  Location: PIN_11,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[0]	=>  Location: PIN_46,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- rst_n	=>  Location: PIN_32,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- clkin_50	=>  Location: PIN_29,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default
-- pb[1]	=>  Location: PIN_45,	 I/O Standard: 3.3-V LVCMOS,	 Current Strength: Default


ARCHITECTURE structure OF LogicalStep_Lab4_top IS
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
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_seg7_data : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg7_char1 : std_logic;
SIGNAL ww_seg7_char2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \INST5|current_state.MOVE~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST5|Selector8~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkin_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bin_counter[23]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST5|current_state.ERROR~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \clkin_50~input_o\ : std_logic;
SIGNAL \clkin_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \bin_counter[0]~69_combout\ : std_logic;
SIGNAL \bin_counter[1]~23_combout\ : std_logic;
SIGNAL \bin_counter[1]~24\ : std_logic;
SIGNAL \bin_counter[2]~25_combout\ : std_logic;
SIGNAL \bin_counter[2]~26\ : std_logic;
SIGNAL \bin_counter[3]~27_combout\ : std_logic;
SIGNAL \bin_counter[3]~28\ : std_logic;
SIGNAL \bin_counter[4]~29_combout\ : std_logic;
SIGNAL \bin_counter[4]~30\ : std_logic;
SIGNAL \bin_counter[5]~31_combout\ : std_logic;
SIGNAL \bin_counter[5]~32\ : std_logic;
SIGNAL \bin_counter[6]~33_combout\ : std_logic;
SIGNAL \bin_counter[6]~34\ : std_logic;
SIGNAL \bin_counter[7]~35_combout\ : std_logic;
SIGNAL \bin_counter[7]~36\ : std_logic;
SIGNAL \bin_counter[8]~37_combout\ : std_logic;
SIGNAL \bin_counter[8]~38\ : std_logic;
SIGNAL \bin_counter[9]~39_combout\ : std_logic;
SIGNAL \bin_counter[9]~40\ : std_logic;
SIGNAL \bin_counter[10]~41_combout\ : std_logic;
SIGNAL \bin_counter[10]~42\ : std_logic;
SIGNAL \bin_counter[11]~43_combout\ : std_logic;
SIGNAL \bin_counter[11]~44\ : std_logic;
SIGNAL \bin_counter[12]~45_combout\ : std_logic;
SIGNAL \bin_counter[12]~46\ : std_logic;
SIGNAL \bin_counter[13]~47_combout\ : std_logic;
SIGNAL \bin_counter[13]~48\ : std_logic;
SIGNAL \bin_counter[14]~49_combout\ : std_logic;
SIGNAL \bin_counter[14]~50\ : std_logic;
SIGNAL \bin_counter[15]~51_combout\ : std_logic;
SIGNAL \bin_counter[15]~52\ : std_logic;
SIGNAL \bin_counter[16]~53_combout\ : std_logic;
SIGNAL \bin_counter[16]~54\ : std_logic;
SIGNAL \bin_counter[17]~55_combout\ : std_logic;
SIGNAL \bin_counter[17]~56\ : std_logic;
SIGNAL \bin_counter[18]~57_combout\ : std_logic;
SIGNAL \bin_counter[18]~58\ : std_logic;
SIGNAL \bin_counter[19]~59_combout\ : std_logic;
SIGNAL \bin_counter[19]~60\ : std_logic;
SIGNAL \bin_counter[20]~61_combout\ : std_logic;
SIGNAL \bin_counter[20]~62\ : std_logic;
SIGNAL \bin_counter[21]~63_combout\ : std_logic;
SIGNAL \bin_counter[21]~64\ : std_logic;
SIGNAL \bin_counter[22]~65_combout\ : std_logic;
SIGNAL \bin_counter[22]~66\ : std_logic;
SIGNAL \bin_counter[23]~67_combout\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST4|AEQB~0_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~7_combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \INST3|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST3|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~6_combout\ : std_logic;
SIGNAL \INST5|clk_en_Y~0_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~5_combout\ : std_logic;
SIGNAL \INST5|clk_en_Y~1_combout\ : std_logic;
SIGNAL \bin_counter[23]~clkctrl_outclk\ : std_logic;
SIGNAL \INST7|sreg~1_combout\ : std_logic;
SIGNAL \INST6|shift_reg_en~combout\ : std_logic;
SIGNAL \INST7|sreg~0_combout\ : std_logic;
SIGNAL \INST6|Equal0~0_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \INST5|Decoder_Section~1_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~2_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~3_combout\ : std_logic;
SIGNAL \INST5|clk_en_X~2_combout\ : std_logic;
SIGNAL \INST5|clk_en_X~combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[0]~3_combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~5_cout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~7\ : std_logic;
SIGNAL \INST1|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[2]~9\ : std_logic;
SIGNAL \INST1|ud_bin_counter[3]~10_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~4_combout\ : std_logic;
SIGNAL \INST5|Xcount~0_combout\ : std_logic;
SIGNAL \INST5|Xcount~1_combout\ : std_logic;
SIGNAL \INST2|AEQB~combout\ : std_logic;
SIGNAL \INST5|Xcount~2_combout\ : std_logic;
SIGNAL \INST5|Xcount~3_combout\ : std_logic;
SIGNAL \INST5|Xcount~combout\ : std_logic;
SIGNAL \INST1|process_0~0_combout\ : std_logic;
SIGNAL \INST1|ud_bin_counter[1]~6_combout\ : std_logic;
SIGNAL \INST2|AEQB~0_combout\ : std_logic;
SIGNAL \INST5|Selector0~0_combout\ : std_logic;
SIGNAL \INST5|Selector0~1_combout\ : std_logic;
SIGNAL \INST4|AEQB~combout\ : std_logic;
SIGNAL \INST5|Transition_Section~0_combout\ : std_logic;
SIGNAL \INST6|Extender_out~0_combout\ : std_logic;
SIGNAL \INST5|Transition_Section~1_combout\ : std_logic;
SIGNAL \INST5|Selector7~0_combout\ : std_logic;
SIGNAL \INST5|Selector8~0_combout\ : std_logic;
SIGNAL \INST5|Selector8~0clkctrl_outclk\ : std_logic;
SIGNAL \INST5|next_state.INIT_239~combout\ : std_logic;
SIGNAL \INST5|current_state.INIT~0_combout\ : std_logic;
SIGNAL \INST5|current_state.INIT~q\ : std_logic;
SIGNAL \INST5|Selector2~0_combout\ : std_logic;
SIGNAL \INST5|next_state.ERROR_200~combout\ : std_logic;
SIGNAL \INST5|current_state.ERROR~feeder_combout\ : std_logic;
SIGNAL \INST5|current_state.ERROR~q\ : std_logic;
SIGNAL \INST5|current_state.ERROR~clkctrl_outclk\ : std_logic;
SIGNAL \INST5|Extender_en~combout\ : std_logic;
SIGNAL \INST6|current_state.Start~0_combout\ : std_logic;
SIGNAL \INST6|current_state.Start~q\ : std_logic;
SIGNAL \INST6|Selector1~0_combout\ : std_logic;
SIGNAL \INST6|current_state.Extender_hold~q\ : std_logic;
SIGNAL \INST6|Selector0~0_combout\ : std_logic;
SIGNAL \INST6|Selector0~1_combout\ : std_logic;
SIGNAL \INST6|current_state.Extending~q\ : std_logic;
SIGNAL \INST7|sreg~3_combout\ : std_logic;
SIGNAL \INST7|sreg~2_combout\ : std_logic;
SIGNAL \INST6|Equal1~0_combout\ : std_logic;
SIGNAL \INST6|Selector4~0_combout\ : std_logic;
SIGNAL \INST6|current_state.Retracter_hold~q\ : std_logic;
SIGNAL \INST6|Selector2~0_combout\ : std_logic;
SIGNAL \INST6|current_state.Extended~q\ : std_logic;
SIGNAL \INST6|Selector3~0_combout\ : std_logic;
SIGNAL \INST6|Selector3~1_combout\ : std_logic;
SIGNAL \INST6|current_state.Retracting~q\ : std_logic;
SIGNAL \INST6|Selector5~0_combout\ : std_logic;
SIGNAL \INST6|Selector5~1_combout\ : std_logic;
SIGNAL \INST6|current_state.Retracted~q\ : std_logic;
SIGNAL \INST5|Selector6~0_combout\ : std_logic;
SIGNAL \INST5|Selector4~1_combout\ : std_logic;
SIGNAL \INST5|Selector4~0_combout\ : std_logic;
SIGNAL \INST5|Selector4~2_combout\ : std_logic;
SIGNAL \INST5|next_state.STOP_213~combout\ : std_logic;
SIGNAL \INST5|current_state.STOP~q\ : std_logic;
SIGNAL \INST5|Selector6~1_combout\ : std_logic;
SIGNAL \INST5|Selector6~2_combout\ : std_logic;
SIGNAL \INST5|Selector6~3_combout\ : std_logic;
SIGNAL \INST5|next_state.MOVE_226~combout\ : std_logic;
SIGNAL \INST5|current_state.MOVE~q\ : std_logic;
SIGNAL \INST5|current_state.MOVE~clkctrl_outclk\ : std_logic;
SIGNAL \INST5|clk_en_Y~combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~9_combout\ : std_logic;
SIGNAL \INST5|Ycount~1_combout\ : std_logic;
SIGNAL \INST5|Ycount~2_combout\ : std_logic;
SIGNAL \INST5|Ycount~3_combout\ : std_logic;
SIGNAL \INST5|Ycount~4_combout\ : std_logic;
SIGNAL \INST5|Decoder_Section~8_combout\ : std_logic;
SIGNAL \INST5|Ycount~combout\ : std_logic;
SIGNAL \INST3|process_0~0_combout\ : std_logic;
SIGNAL \INST3|ud_bin_counter[2]~8_combout\ : std_logic;
SIGNAL \Y_OUT[2]~2_combout\ : std_logic;
SIGNAL \Y_OUT[0]~0_combout\ : std_logic;
SIGNAL \Y_OUT[1]~1_combout\ : std_logic;
SIGNAL \Y_OUT[3]~3_combout\ : std_logic;
SIGNAL \INST12|Mux5~0_combout\ : std_logic;
SIGNAL \INST5|ERROR_led~combout\ : std_logic;
SIGNAL \INST10|next_state.error_off~0_combout\ : std_logic;
SIGNAL \INST10|current_state.error_off~q\ : std_logic;
SIGNAL \X_OUT[2]~2_combout\ : std_logic;
SIGNAL \X_OUT[1]~1_combout\ : std_logic;
SIGNAL \X_OUT[3]~3_combout\ : std_logic;
SIGNAL \X_OUT[0]~0_combout\ : std_logic;
SIGNAL \INST11|Mux5~0_combout\ : std_logic;
SIGNAL \INST13|DOUT_TEMP[1]~0_combout\ : std_logic;
SIGNAL \INST12|Mux1~0_combout\ : std_logic;
SIGNAL \INST11|Mux1~0_combout\ : std_logic;
SIGNAL \INST13|DOUT_TEMP[5]~1_combout\ : std_logic;
SIGNAL \INST12|Mux0~0_combout\ : std_logic;
SIGNAL \INST11|Mux0~0_combout\ : std_logic;
SIGNAL \INST13|DOUT_TEMP[6]~2_combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \INST8|Decoder_Section~0_combout\ : std_logic;
SIGNAL \INST8|current_state.light_on~q\ : std_logic;
SIGNAL \INST8|led~combout\ : std_logic;
SIGNAL \INST12|Mux6~0_combout\ : std_logic;
SIGNAL \INST11|Mux6~0_combout\ : std_logic;
SIGNAL \INST13|DOUT[0]~0_combout\ : std_logic;
SIGNAL \INST12|Mux4~0_combout\ : std_logic;
SIGNAL \INST11|Mux4~0_combout\ : std_logic;
SIGNAL \INST13|DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST12|Mux3~0_combout\ : std_logic;
SIGNAL \INST11|Mux3~0_combout\ : std_logic;
SIGNAL \INST13|DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST12|Mux2~0_combout\ : std_logic;
SIGNAL \INST11|Mux2~0_combout\ : std_logic;
SIGNAL \INST13|DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST7|sreg\ : std_logic_vector(3 DOWNTO 0);
SIGNAL bin_counter : std_logic_vector(25 DOWNTO 0);
SIGNAL \INST1|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST3|ud_bin_counter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \INST13|ALT_INV_DOUT[4]~4_combout\ : std_logic;
SIGNAL \INST13|ALT_INV_DOUT[3]~3_combout\ : std_logic;
SIGNAL \INST13|ALT_INV_DOUT[2]~2_combout\ : std_logic;
SIGNAL \INST13|ALT_INV_DOUT[0]~0_combout\ : std_logic;
SIGNAL ALT_INV_bin_counter : std_logic_vector(10 DOWNTO 10);

BEGIN

ww_clkin_50 <= clkin_50;
ww_rst_n <= rst_n;
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

\INST5|current_state.MOVE~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST5|current_state.MOVE~q\);

\INST5|Selector8~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST5|Selector8~0_combout\);

\clkin_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clkin_50~input_o\);

\bin_counter[23]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & bin_counter(23));

\INST5|current_state.ERROR~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \INST5|current_state.ERROR~q\);
\INST13|ALT_INV_DOUT[4]~4_combout\ <= NOT \INST13|DOUT[4]~4_combout\;
\INST13|ALT_INV_DOUT[3]~3_combout\ <= NOT \INST13|DOUT[3]~3_combout\;
\INST13|ALT_INV_DOUT[2]~2_combout\ <= NOT \INST13|DOUT[2]~2_combout\;
\INST13|ALT_INV_DOUT[0]~0_combout\ <= NOT \INST13|DOUT[0]~0_combout\;
ALT_INV_bin_counter(10) <= NOT bin_counter(10);

-- Location: LCCOMB_X11_Y24_N20
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
	i => \INST13|DOUT_TEMP[1]~0_combout\,
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
	i => \INST13|DOUT_TEMP[5]~1_combout\,
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
	i => \INST13|DOUT_TEMP[6]~2_combout\,
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
	i => \INST5|ERROR_led~combout\,
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
	i => GND,
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
	i => GND,
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
	i => \INST8|led~combout\,
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
	i => \INST7|sreg\(0),
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
	i => \INST7|sreg\(1),
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
	i => \INST7|sreg\(2),
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
	i => \INST7|sreg\(3),
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
	i => \INST13|ALT_INV_DOUT[0]~0_combout\,
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
	i => \INST13|ALT_INV_DOUT[2]~2_combout\,
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
	i => \INST13|ALT_INV_DOUT[3]~3_combout\,
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
	i => \INST13|ALT_INV_DOUT[4]~4_combout\,
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
	i => bin_counter(10),
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
	i => ALT_INV_bin_counter(10),
	devoe => ww_devoe,
	o => \seg7_char2~output_o\);

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

-- Location: LCCOMB_X9_Y9_N4
\bin_counter[0]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[0]~69_combout\ = !bin_counter(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => bin_counter(0),
	combout => \bin_counter[0]~69_combout\);

-- Location: FF_X9_Y9_N5
\bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[0]~69_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(0));

-- Location: LCCOMB_X9_Y9_N10
\bin_counter[1]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[1]~23_combout\ = (bin_counter(1) & (bin_counter(0) $ (VCC))) # (!bin_counter(1) & (bin_counter(0) & VCC))
-- \bin_counter[1]~24\ = CARRY((bin_counter(1) & bin_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(1),
	datab => bin_counter(0),
	datad => VCC,
	combout => \bin_counter[1]~23_combout\,
	cout => \bin_counter[1]~24\);

-- Location: FF_X9_Y9_N11
\bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[1]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(1));

-- Location: LCCOMB_X9_Y9_N12
\bin_counter[2]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[2]~25_combout\ = (bin_counter(2) & (!\bin_counter[1]~24\)) # (!bin_counter(2) & ((\bin_counter[1]~24\) # (GND)))
-- \bin_counter[2]~26\ = CARRY((!\bin_counter[1]~24\) # (!bin_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(2),
	datad => VCC,
	cin => \bin_counter[1]~24\,
	combout => \bin_counter[2]~25_combout\,
	cout => \bin_counter[2]~26\);

-- Location: FF_X9_Y9_N13
\bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[2]~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(2));

-- Location: LCCOMB_X9_Y9_N14
\bin_counter[3]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[3]~27_combout\ = (bin_counter(3) & (\bin_counter[2]~26\ $ (GND))) # (!bin_counter(3) & (!\bin_counter[2]~26\ & VCC))
-- \bin_counter[3]~28\ = CARRY((bin_counter(3) & !\bin_counter[2]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(3),
	datad => VCC,
	cin => \bin_counter[2]~26\,
	combout => \bin_counter[3]~27_combout\,
	cout => \bin_counter[3]~28\);

-- Location: FF_X9_Y9_N15
\bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[3]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(3));

-- Location: LCCOMB_X9_Y9_N16
\bin_counter[4]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[4]~29_combout\ = (bin_counter(4) & (!\bin_counter[3]~28\)) # (!bin_counter(4) & ((\bin_counter[3]~28\) # (GND)))
-- \bin_counter[4]~30\ = CARRY((!\bin_counter[3]~28\) # (!bin_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(4),
	datad => VCC,
	cin => \bin_counter[3]~28\,
	combout => \bin_counter[4]~29_combout\,
	cout => \bin_counter[4]~30\);

-- Location: FF_X9_Y9_N17
\bin_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[4]~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(4));

-- Location: LCCOMB_X9_Y9_N18
\bin_counter[5]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[5]~31_combout\ = (bin_counter(5) & (\bin_counter[4]~30\ $ (GND))) # (!bin_counter(5) & (!\bin_counter[4]~30\ & VCC))
-- \bin_counter[5]~32\ = CARRY((bin_counter(5) & !\bin_counter[4]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(5),
	datad => VCC,
	cin => \bin_counter[4]~30\,
	combout => \bin_counter[5]~31_combout\,
	cout => \bin_counter[5]~32\);

-- Location: FF_X9_Y9_N19
\bin_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[5]~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(5));

-- Location: LCCOMB_X9_Y9_N20
\bin_counter[6]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[6]~33_combout\ = (bin_counter(6) & (!\bin_counter[5]~32\)) # (!bin_counter(6) & ((\bin_counter[5]~32\) # (GND)))
-- \bin_counter[6]~34\ = CARRY((!\bin_counter[5]~32\) # (!bin_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(6),
	datad => VCC,
	cin => \bin_counter[5]~32\,
	combout => \bin_counter[6]~33_combout\,
	cout => \bin_counter[6]~34\);

-- Location: FF_X9_Y9_N21
\bin_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[6]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(6));

-- Location: LCCOMB_X9_Y9_N22
\bin_counter[7]~35\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[7]~35_combout\ = (bin_counter(7) & (\bin_counter[6]~34\ $ (GND))) # (!bin_counter(7) & (!\bin_counter[6]~34\ & VCC))
-- \bin_counter[7]~36\ = CARRY((bin_counter(7) & !\bin_counter[6]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(7),
	datad => VCC,
	cin => \bin_counter[6]~34\,
	combout => \bin_counter[7]~35_combout\,
	cout => \bin_counter[7]~36\);

-- Location: FF_X9_Y9_N23
\bin_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[7]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(7));

-- Location: LCCOMB_X9_Y9_N24
\bin_counter[8]~37\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[8]~37_combout\ = (bin_counter(8) & (!\bin_counter[7]~36\)) # (!bin_counter(8) & ((\bin_counter[7]~36\) # (GND)))
-- \bin_counter[8]~38\ = CARRY((!\bin_counter[7]~36\) # (!bin_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(8),
	datad => VCC,
	cin => \bin_counter[7]~36\,
	combout => \bin_counter[8]~37_combout\,
	cout => \bin_counter[8]~38\);

-- Location: FF_X9_Y9_N25
\bin_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[8]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(8));

-- Location: LCCOMB_X9_Y9_N26
\bin_counter[9]~39\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[9]~39_combout\ = (bin_counter(9) & (\bin_counter[8]~38\ $ (GND))) # (!bin_counter(9) & (!\bin_counter[8]~38\ & VCC))
-- \bin_counter[9]~40\ = CARRY((bin_counter(9) & !\bin_counter[8]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(9),
	datad => VCC,
	cin => \bin_counter[8]~38\,
	combout => \bin_counter[9]~39_combout\,
	cout => \bin_counter[9]~40\);

-- Location: FF_X9_Y9_N27
\bin_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[9]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(9));

-- Location: LCCOMB_X9_Y9_N28
\bin_counter[10]~41\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[10]~41_combout\ = (bin_counter(10) & (!\bin_counter[9]~40\)) # (!bin_counter(10) & ((\bin_counter[9]~40\) # (GND)))
-- \bin_counter[10]~42\ = CARRY((!\bin_counter[9]~40\) # (!bin_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(10),
	datad => VCC,
	cin => \bin_counter[9]~40\,
	combout => \bin_counter[10]~41_combout\,
	cout => \bin_counter[10]~42\);

-- Location: FF_X9_Y9_N29
\bin_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[10]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(10));

-- Location: LCCOMB_X9_Y9_N30
\bin_counter[11]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[11]~43_combout\ = (bin_counter(11) & (\bin_counter[10]~42\ $ (GND))) # (!bin_counter(11) & (!\bin_counter[10]~42\ & VCC))
-- \bin_counter[11]~44\ = CARRY((bin_counter(11) & !\bin_counter[10]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(11),
	datad => VCC,
	cin => \bin_counter[10]~42\,
	combout => \bin_counter[11]~43_combout\,
	cout => \bin_counter[11]~44\);

-- Location: FF_X9_Y9_N31
\bin_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[11]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(11));

-- Location: LCCOMB_X9_Y8_N0
\bin_counter[12]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[12]~45_combout\ = (bin_counter(12) & (!\bin_counter[11]~44\)) # (!bin_counter(12) & ((\bin_counter[11]~44\) # (GND)))
-- \bin_counter[12]~46\ = CARRY((!\bin_counter[11]~44\) # (!bin_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(12),
	datad => VCC,
	cin => \bin_counter[11]~44\,
	combout => \bin_counter[12]~45_combout\,
	cout => \bin_counter[12]~46\);

-- Location: FF_X9_Y8_N1
\bin_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[12]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(12));

-- Location: LCCOMB_X9_Y8_N2
\bin_counter[13]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[13]~47_combout\ = (bin_counter(13) & (\bin_counter[12]~46\ $ (GND))) # (!bin_counter(13) & (!\bin_counter[12]~46\ & VCC))
-- \bin_counter[13]~48\ = CARRY((bin_counter(13) & !\bin_counter[12]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(13),
	datad => VCC,
	cin => \bin_counter[12]~46\,
	combout => \bin_counter[13]~47_combout\,
	cout => \bin_counter[13]~48\);

-- Location: FF_X9_Y8_N3
\bin_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[13]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(13));

-- Location: LCCOMB_X9_Y8_N4
\bin_counter[14]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[14]~49_combout\ = (bin_counter(14) & (!\bin_counter[13]~48\)) # (!bin_counter(14) & ((\bin_counter[13]~48\) # (GND)))
-- \bin_counter[14]~50\ = CARRY((!\bin_counter[13]~48\) # (!bin_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(14),
	datad => VCC,
	cin => \bin_counter[13]~48\,
	combout => \bin_counter[14]~49_combout\,
	cout => \bin_counter[14]~50\);

-- Location: FF_X9_Y8_N5
\bin_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[14]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(14));

-- Location: LCCOMB_X9_Y8_N6
\bin_counter[15]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[15]~51_combout\ = (bin_counter(15) & (\bin_counter[14]~50\ $ (GND))) # (!bin_counter(15) & (!\bin_counter[14]~50\ & VCC))
-- \bin_counter[15]~52\ = CARRY((bin_counter(15) & !\bin_counter[14]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(15),
	datad => VCC,
	cin => \bin_counter[14]~50\,
	combout => \bin_counter[15]~51_combout\,
	cout => \bin_counter[15]~52\);

-- Location: FF_X9_Y8_N7
\bin_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[15]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(15));

-- Location: LCCOMB_X9_Y8_N8
\bin_counter[16]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[16]~53_combout\ = (bin_counter(16) & (!\bin_counter[15]~52\)) # (!bin_counter(16) & ((\bin_counter[15]~52\) # (GND)))
-- \bin_counter[16]~54\ = CARRY((!\bin_counter[15]~52\) # (!bin_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(16),
	datad => VCC,
	cin => \bin_counter[15]~52\,
	combout => \bin_counter[16]~53_combout\,
	cout => \bin_counter[16]~54\);

-- Location: FF_X9_Y8_N9
\bin_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[16]~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(16));

-- Location: LCCOMB_X9_Y8_N10
\bin_counter[17]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[17]~55_combout\ = (bin_counter(17) & (\bin_counter[16]~54\ $ (GND))) # (!bin_counter(17) & (!\bin_counter[16]~54\ & VCC))
-- \bin_counter[17]~56\ = CARRY((bin_counter(17) & !\bin_counter[16]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(17),
	datad => VCC,
	cin => \bin_counter[16]~54\,
	combout => \bin_counter[17]~55_combout\,
	cout => \bin_counter[17]~56\);

-- Location: FF_X9_Y8_N11
\bin_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[17]~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(17));

-- Location: LCCOMB_X9_Y8_N12
\bin_counter[18]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[18]~57_combout\ = (bin_counter(18) & (!\bin_counter[17]~56\)) # (!bin_counter(18) & ((\bin_counter[17]~56\) # (GND)))
-- \bin_counter[18]~58\ = CARRY((!\bin_counter[17]~56\) # (!bin_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bin_counter(18),
	datad => VCC,
	cin => \bin_counter[17]~56\,
	combout => \bin_counter[18]~57_combout\,
	cout => \bin_counter[18]~58\);

-- Location: FF_X9_Y8_N13
\bin_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[18]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(18));

-- Location: LCCOMB_X9_Y8_N14
\bin_counter[19]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[19]~59_combout\ = (bin_counter(19) & (\bin_counter[18]~58\ $ (GND))) # (!bin_counter(19) & (!\bin_counter[18]~58\ & VCC))
-- \bin_counter[19]~60\ = CARRY((bin_counter(19) & !\bin_counter[18]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(19),
	datad => VCC,
	cin => \bin_counter[18]~58\,
	combout => \bin_counter[19]~59_combout\,
	cout => \bin_counter[19]~60\);

-- Location: FF_X9_Y8_N15
\bin_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[19]~59_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(19));

-- Location: LCCOMB_X9_Y8_N16
\bin_counter[20]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[20]~61_combout\ = (bin_counter(20) & (!\bin_counter[19]~60\)) # (!bin_counter(20) & ((\bin_counter[19]~60\) # (GND)))
-- \bin_counter[20]~62\ = CARRY((!\bin_counter[19]~60\) # (!bin_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(20),
	datad => VCC,
	cin => \bin_counter[19]~60\,
	combout => \bin_counter[20]~61_combout\,
	cout => \bin_counter[20]~62\);

-- Location: FF_X9_Y8_N17
\bin_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[20]~61_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(20));

-- Location: LCCOMB_X9_Y8_N18
\bin_counter[21]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[21]~63_combout\ = (bin_counter(21) & (\bin_counter[20]~62\ $ (GND))) # (!bin_counter(21) & (!\bin_counter[20]~62\ & VCC))
-- \bin_counter[21]~64\ = CARRY((bin_counter(21) & !\bin_counter[20]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(21),
	datad => VCC,
	cin => \bin_counter[20]~62\,
	combout => \bin_counter[21]~63_combout\,
	cout => \bin_counter[21]~64\);

-- Location: FF_X9_Y8_N19
\bin_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[21]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(21));

-- Location: LCCOMB_X9_Y8_N20
\bin_counter[22]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[22]~65_combout\ = (bin_counter(22) & (!\bin_counter[21]~64\)) # (!bin_counter(22) & ((\bin_counter[21]~64\) # (GND)))
-- \bin_counter[22]~66\ = CARRY((!\bin_counter[21]~64\) # (!bin_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => bin_counter(22),
	datad => VCC,
	cin => \bin_counter[21]~64\,
	combout => \bin_counter[22]~65_combout\,
	cout => \bin_counter[22]~66\);

-- Location: FF_X9_Y8_N21
\bin_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[22]~65_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(22));

-- Location: LCCOMB_X9_Y8_N22
\bin_counter[23]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \bin_counter[23]~67_combout\ = \bin_counter[22]~66\ $ (!bin_counter(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => bin_counter(23),
	cin => \bin_counter[22]~66\,
	combout => \bin_counter[23]~67_combout\);

-- Location: FF_X9_Y8_N23
\bin_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clkin_50~inputclkctrl_outclk\,
	d => \bin_counter[23]~67_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => bin_counter(23));

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

-- Location: LCCOMB_X9_Y7_N8
\INST3|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[0]~3_combout\ = \INST3|ud_bin_counter\(0) $ (\INST5|clk_en_Y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST5|clk_en_Y~combout\,
	combout => \INST3|ud_bin_counter[0]~3_combout\);

-- Location: IOIBUF_X0_Y2_N15
\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

-- Location: FF_X9_Y7_N9
\INST3|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(0));

-- Location: LCCOMB_X9_Y7_N14
\INST3|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~5_cout\ = CARRY(\INST3|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST3|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X9_Y7_N16
\INST3|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[1]~6_combout\ = (\INST3|ud_bin_counter\(1) & ((\INST3|process_0~0_combout\ & (!\INST3|ud_bin_counter[1]~5_cout\)) # (!\INST3|process_0~0_combout\ & (\INST3|ud_bin_counter[1]~5_cout\ & VCC)))) # (!\INST3|ud_bin_counter\(1) & 
-- ((\INST3|process_0~0_combout\ & ((\INST3|ud_bin_counter[1]~5_cout\) # (GND))) # (!\INST3|process_0~0_combout\ & (!\INST3|ud_bin_counter[1]~5_cout\))))
-- \INST3|ud_bin_counter[1]~7\ = CARRY((\INST3|ud_bin_counter\(1) & (\INST3|process_0~0_combout\ & !\INST3|ud_bin_counter[1]~5_cout\)) # (!\INST3|ud_bin_counter\(1) & ((\INST3|process_0~0_combout\) # (!\INST3|ud_bin_counter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(1),
	datab => \INST3|process_0~0_combout\,
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~5_cout\,
	combout => \INST3|ud_bin_counter[1]~6_combout\,
	cout => \INST3|ud_bin_counter[1]~7\);

-- Location: FF_X9_Y7_N17
\INST3|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(1));

-- Location: LCCOMB_X9_Y7_N30
\INST4|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AEQB~0_combout\ = (\sw[0]~input_o\ & ((\sw[1]~input_o\ $ (\INST3|ud_bin_counter\(1))) # (!\INST3|ud_bin_counter\(0)))) # (!\sw[0]~input_o\ & ((\INST3|ud_bin_counter\(0)) # (\sw[1]~input_o\ $ (\INST3|ud_bin_counter\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST4|AEQB~0_combout\);

-- Location: LCCOMB_X9_Y7_N10
\INST5|Decoder_Section~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~7_combout\ = (\sw[1]~input_o\ & (!\sw[0]~input_o\ & (\INST3|ud_bin_counter\(0) & \INST3|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & ((\INST3|ud_bin_counter\(1)) # ((!\sw[0]~input_o\ & \INST3|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST3|ud_bin_counter\(0),
	datad => \INST3|ud_bin_counter\(1),
	combout => \INST5|Decoder_Section~7_combout\);

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

-- Location: LCCOMB_X9_Y7_N18
\INST3|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[2]~8_combout\ = ((\INST3|ud_bin_counter\(2) $ (\INST3|process_0~0_combout\ $ (\INST3|ud_bin_counter[1]~7\)))) # (GND)
-- \INST3|ud_bin_counter[2]~9\ = CARRY((\INST3|ud_bin_counter\(2) & ((!\INST3|ud_bin_counter[1]~7\) # (!\INST3|process_0~0_combout\))) # (!\INST3|ud_bin_counter\(2) & (!\INST3|process_0~0_combout\ & !\INST3|ud_bin_counter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(2),
	datab => \INST3|process_0~0_combout\,
	datad => VCC,
	cin => \INST3|ud_bin_counter[1]~7\,
	combout => \INST3|ud_bin_counter[2]~8_combout\,
	cout => \INST3|ud_bin_counter[2]~9\);

-- Location: LCCOMB_X9_Y7_N20
\INST3|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|ud_bin_counter[3]~10_combout\ = \INST3|ud_bin_counter\(3) $ (\INST3|ud_bin_counter[2]~9\ $ (!\INST3|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \INST3|ud_bin_counter\(3),
	datad => \INST3|process_0~0_combout\,
	cin => \INST3|ud_bin_counter[2]~9\,
	combout => \INST3|ud_bin_counter[3]~10_combout\);

-- Location: FF_X9_Y7_N21
\INST3|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(3));

-- Location: LCCOMB_X9_Y7_N2
\INST5|Decoder_Section~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~6_combout\ = (\sw[3]~input_o\ & (!\sw[2]~input_o\ & (\INST3|ud_bin_counter\(2) & \INST3|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & ((\INST3|ud_bin_counter\(3)) # ((!\sw[2]~input_o\ & \INST3|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \INST3|ud_bin_counter\(2),
	datac => \sw[3]~input_o\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST5|Decoder_Section~6_combout\);

-- Location: LCCOMB_X9_Y7_N4
\INST5|clk_en_Y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_en_Y~0_combout\ = (\INST5|Decoder_Section~7_combout\) # (\INST5|Decoder_Section~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~7_combout\,
	datac => \INST5|Decoder_Section~6_combout\,
	combout => \INST5|clk_en_Y~0_combout\);

-- Location: LCCOMB_X9_Y7_N6
\INST5|Decoder_Section~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~5_combout\ = (\sw[2]~input_o\ & (\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3))))) # (!\sw[2]~input_o\ & (!\INST3|ud_bin_counter\(2) & (\sw[3]~input_o\ $ (!\INST3|ud_bin_counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \INST3|ud_bin_counter\(2),
	datac => \sw[3]~input_o\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST5|Decoder_Section~5_combout\);

-- Location: LCCOMB_X9_Y7_N26
\INST5|clk_en_Y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_en_Y~1_combout\ = (!\pb[2]~input_o\ & ((\INST4|AEQB~0_combout\) # ((\INST5|clk_en_Y~0_combout\) # (!\INST5|Decoder_Section~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|AEQB~0_combout\,
	datab => \pb[2]~input_o\,
	datac => \INST5|clk_en_Y~0_combout\,
	datad => \INST5|Decoder_Section~5_combout\,
	combout => \INST5|clk_en_Y~1_combout\);

-- Location: CLKCTRL_G3
\bin_counter[23]~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bin_counter[23]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bin_counter[23]~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y4_N2
\INST7|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|sreg~1_combout\ = (\INST6|current_state.Extending~q\ & (\INST7|sreg\(2))) # (!\INST6|current_state.Extending~q\ & ((\INST7|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Extending~q\,
	datac => \INST7|sreg\(2),
	datad => \INST7|sreg\(0),
	combout => \INST7|sreg~1_combout\);

-- Location: LCCOMB_X9_Y4_N18
\INST6|shift_reg_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|shift_reg_en~combout\ = (\INST6|current_state.Retracting~q\) # (\INST6|current_state.Extending~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|current_state.Retracting~q\,
	datad => \INST6|current_state.Extending~q\,
	combout => \INST6|shift_reg_en~combout\);

-- Location: FF_X9_Y4_N3
\INST7|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST7|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST6|shift_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg\(1));

-- Location: LCCOMB_X9_Y4_N4
\INST7|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|sreg~0_combout\ = (\INST6|current_state.Extending~q\ & \INST7|sreg\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Extending~q\,
	datab => \INST7|sreg\(1),
	combout => \INST7|sreg~0_combout\);

-- Location: FF_X9_Y4_N5
\INST7|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST7|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST6|shift_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg\(0));

-- Location: LCCOMB_X9_Y4_N30
\INST6|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Equal0~0_combout\ = (\INST7|sreg\(3) & (\INST7|sreg\(0) & (\INST7|sreg\(2) & \INST7|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|sreg\(3),
	datab => \INST7|sreg\(0),
	datac => \INST7|sreg\(2),
	datad => \INST7|sreg\(1),
	combout => \INST6|Equal0~0_combout\);

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

-- Location: LCCOMB_X10_Y4_N0
\INST5|Decoder_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~1_combout\ = (\INST1|ud_bin_counter\(3) & (((!\sw[6]~input_o\ & \INST1|ud_bin_counter\(2))) # (!\sw[7]~input_o\))) # (!\INST1|ud_bin_counter\(3) & (!\sw[7]~input_o\ & (!\sw[6]~input_o\ & \INST1|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(3),
	datab => \sw[7]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \INST1|ud_bin_counter\(2),
	combout => \INST5|Decoder_Section~1_combout\);

-- Location: LCCOMB_X10_Y4_N4
\INST5|Decoder_Section~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~2_combout\ = (\sw[5]~input_o\ & (!\sw[4]~input_o\ & (\INST1|ud_bin_counter\(1) & \INST1|ud_bin_counter\(0)))) # (!\sw[5]~input_o\ & ((\INST1|ud_bin_counter\(1)) # ((!\sw[4]~input_o\ & \INST1|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \INST1|ud_bin_counter\(1),
	datad => \INST1|ud_bin_counter\(0),
	combout => \INST5|Decoder_Section~2_combout\);

-- Location: LCCOMB_X10_Y4_N14
\INST5|Decoder_Section~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~3_combout\ = (\INST5|Decoder_Section~1_combout\) # ((\INST5|Decoder_Section~2_combout\ & \INST5|Decoder_Section~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Decoder_Section~1_combout\,
	datac => \INST5|Decoder_Section~2_combout\,
	datad => \INST5|Decoder_Section~0_combout\,
	combout => \INST5|Decoder_Section~3_combout\);

-- Location: LCCOMB_X11_Y4_N26
\INST5|clk_en_X~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_en_X~2_combout\ = (!\pb[3]~input_o\ & (((\INST2|AEQB~0_combout\) # (\INST5|Decoder_Section~3_combout\)) # (!\INST5|Decoder_Section~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~0_combout\,
	datab => \INST2|AEQB~0_combout\,
	datac => \pb[3]~input_o\,
	datad => \INST5|Decoder_Section~3_combout\,
	combout => \INST5|clk_en_X~2_combout\);

-- Location: LCCOMB_X10_Y4_N28
\INST5|clk_en_X\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_en_X~combout\ = (GLOBAL(\INST5|current_state.MOVE~clkctrl_outclk\) & ((\INST5|clk_en_X~2_combout\))) # (!GLOBAL(\INST5|current_state.MOVE~clkctrl_outclk\) & (\INST5|clk_en_X~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|clk_en_X~combout\,
	datac => \INST5|current_state.MOVE~clkctrl_outclk\,
	datad => \INST5|clk_en_X~2_combout\,
	combout => \INST5|clk_en_X~combout\);

-- Location: LCCOMB_X10_Y4_N20
\INST1|ud_bin_counter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[0]~3_combout\ = \INST1|ud_bin_counter\(0) $ (\INST5|clk_en_X~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST1|ud_bin_counter\(0),
	datad => \INST5|clk_en_X~combout\,
	combout => \INST1|ud_bin_counter[0]~3_combout\);

-- Location: FF_X10_Y4_N21
\INST1|ud_bin_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(0));

-- Location: LCCOMB_X10_Y4_N6
\INST1|ud_bin_counter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[1]~5_cout\ = CARRY(\INST1|ud_bin_counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST1|ud_bin_counter\(0),
	datad => VCC,
	cout => \INST1|ud_bin_counter[1]~5_cout\);

-- Location: LCCOMB_X10_Y4_N8
\INST1|ud_bin_counter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[1]~6_combout\ = (\INST1|process_0~0_combout\ & ((\INST1|ud_bin_counter\(1) & (!\INST1|ud_bin_counter[1]~5_cout\)) # (!\INST1|ud_bin_counter\(1) & ((\INST1|ud_bin_counter[1]~5_cout\) # (GND))))) # (!\INST1|process_0~0_combout\ & 
-- ((\INST1|ud_bin_counter\(1) & (\INST1|ud_bin_counter[1]~5_cout\ & VCC)) # (!\INST1|ud_bin_counter\(1) & (!\INST1|ud_bin_counter[1]~5_cout\))))
-- \INST1|ud_bin_counter[1]~7\ = CARRY((\INST1|process_0~0_combout\ & ((!\INST1|ud_bin_counter[1]~5_cout\) # (!\INST1|ud_bin_counter\(1)))) # (!\INST1|process_0~0_combout\ & (!\INST1|ud_bin_counter\(1) & !\INST1|ud_bin_counter[1]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|process_0~0_combout\,
	datab => \INST1|ud_bin_counter\(1),
	datad => VCC,
	cin => \INST1|ud_bin_counter[1]~5_cout\,
	combout => \INST1|ud_bin_counter[1]~6_combout\,
	cout => \INST1|ud_bin_counter[1]~7\);

-- Location: LCCOMB_X10_Y4_N10
\INST1|ud_bin_counter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[2]~8_combout\ = ((\INST1|process_0~0_combout\ $ (\INST1|ud_bin_counter\(2) $ (\INST1|ud_bin_counter[1]~7\)))) # (GND)
-- \INST1|ud_bin_counter[2]~9\ = CARRY((\INST1|process_0~0_combout\ & (\INST1|ud_bin_counter\(2) & !\INST1|ud_bin_counter[1]~7\)) # (!\INST1|process_0~0_combout\ & ((\INST1|ud_bin_counter\(2)) # (!\INST1|ud_bin_counter[1]~7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|process_0~0_combout\,
	datab => \INST1|ud_bin_counter\(2),
	datad => VCC,
	cin => \INST1|ud_bin_counter[1]~7\,
	combout => \INST1|ud_bin_counter[2]~8_combout\,
	cout => \INST1|ud_bin_counter[2]~9\);

-- Location: FF_X10_Y4_N11
\INST1|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(2));

-- Location: LCCOMB_X10_Y4_N12
\INST1|ud_bin_counter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|ud_bin_counter[3]~10_combout\ = \INST1|ud_bin_counter\(3) $ (\INST1|ud_bin_counter[2]~9\ $ (!\INST1|process_0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(3),
	datad => \INST1|process_0~0_combout\,
	cin => \INST1|ud_bin_counter[2]~9\,
	combout => \INST1|ud_bin_counter[3]~10_combout\);

-- Location: FF_X10_Y4_N13
\INST1|ud_bin_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(3));

-- Location: LCCOMB_X10_Y4_N18
\INST5|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~0_combout\ = (\INST1|ud_bin_counter\(3) & (\sw[7]~input_o\ & (\sw[6]~input_o\ $ (!\INST1|ud_bin_counter\(2))))) # (!\INST1|ud_bin_counter\(3) & (!\sw[7]~input_o\ & (\sw[6]~input_o\ $ (!\INST1|ud_bin_counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(3),
	datab => \sw[7]~input_o\,
	datac => \sw[6]~input_o\,
	datad => \INST1|ud_bin_counter\(2),
	combout => \INST5|Decoder_Section~0_combout\);

-- Location: LCCOMB_X10_Y4_N26
\INST5|Decoder_Section~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~4_combout\ = (!\pb[3]~input_o\ & ((\INST5|Decoder_Section~1_combout\) # ((\INST5|Decoder_Section~0_combout\ & \INST5|Decoder_Section~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \INST5|Decoder_Section~0_combout\,
	datac => \INST5|Decoder_Section~2_combout\,
	datad => \INST5|Decoder_Section~1_combout\,
	combout => \INST5|Decoder_Section~4_combout\);

-- Location: LCCOMB_X11_Y4_N4
\INST5|Xcount~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Xcount~0_combout\ = (\sw[5]~input_o\ & (((\sw[4]~input_o\ & !\INST1|ud_bin_counter\(0))) # (!\INST1|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & (\sw[4]~input_o\ & (!\INST1|ud_bin_counter\(1) & !\INST1|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[4]~input_o\,
	datab => \sw[5]~input_o\,
	datac => \INST1|ud_bin_counter\(1),
	datad => \INST1|ud_bin_counter\(0),
	combout => \INST5|Xcount~0_combout\);

-- Location: LCCOMB_X11_Y4_N14
\INST5|Xcount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Xcount~1_combout\ = (\sw[6]~input_o\ & ((\INST5|Xcount~0_combout\) # (!\INST1|ud_bin_counter\(2)))) # (!\sw[6]~input_o\ & (\INST5|Xcount~0_combout\ & !\INST1|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[6]~input_o\,
	datac => \INST5|Xcount~0_combout\,
	datad => \INST1|ud_bin_counter\(2),
	combout => \INST5|Xcount~1_combout\);

-- Location: LCCOMB_X7_Y4_N22
\INST2|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|AEQB~combout\ = (\INST2|AEQB~0_combout\) # (!\INST5|Decoder_Section~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST2|AEQB~0_combout\,
	datad => \INST5|Decoder_Section~0_combout\,
	combout => \INST2|AEQB~combout\);

-- Location: LCCOMB_X10_Y4_N2
\INST5|Xcount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Xcount~2_combout\ = (\sw[7]~input_o\ & (((\INST5|Xcount~1_combout\ & \INST2|AEQB~combout\)) # (!\INST1|ud_bin_counter\(3)))) # (!\sw[7]~input_o\ & (\INST5|Xcount~1_combout\ & (\INST2|AEQB~combout\ & !\INST1|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \INST5|Xcount~1_combout\,
	datac => \INST2|AEQB~combout\,
	datad => \INST1|ud_bin_counter\(3),
	combout => \INST5|Xcount~2_combout\);

-- Location: LCCOMB_X10_Y4_N24
\INST5|Xcount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Xcount~3_combout\ = (!\pb[3]~input_o\ & (\INST5|current_state.MOVE~q\ & ((\INST5|Decoder_Section~3_combout\) # (\INST5|Xcount~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datab => \INST5|current_state.MOVE~q\,
	datac => \INST5|Decoder_Section~3_combout\,
	datad => \INST5|Xcount~2_combout\,
	combout => \INST5|Xcount~3_combout\);

-- Location: LCCOMB_X10_Y4_N16
\INST5|Xcount\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Xcount~combout\ = (\INST5|Xcount~3_combout\ & ((!\INST5|Decoder_Section~4_combout\))) # (!\INST5|Xcount~3_combout\ & (\INST5|Xcount~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Xcount~combout\,
	datac => \INST5|Decoder_Section~4_combout\,
	datad => \INST5|Xcount~3_combout\,
	combout => \INST5|Xcount~combout\);

-- Location: LCCOMB_X10_Y4_N22
\INST1|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST1|process_0~0_combout\ = (\INST5|Xcount~combout\ & \INST5|clk_en_X~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Xcount~combout\,
	datad => \INST5|clk_en_X~combout\,
	combout => \INST1|process_0~0_combout\);

-- Location: FF_X10_Y4_N9
\INST1|ud_bin_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST1|ud_bin_counter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_X~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST1|ud_bin_counter\(1));

-- Location: LCCOMB_X10_Y4_N30
\INST2|AEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST2|AEQB~0_combout\ = (\sw[5]~input_o\ & ((\sw[4]~input_o\ $ (\INST1|ud_bin_counter\(0))) # (!\INST1|ud_bin_counter\(1)))) # (!\sw[5]~input_o\ & ((\INST1|ud_bin_counter\(1)) # (\sw[4]~input_o\ $ (\INST1|ud_bin_counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \INST1|ud_bin_counter\(1),
	datad => \INST1|ud_bin_counter\(0),
	combout => \INST2|AEQB~0_combout\);

-- Location: LCCOMB_X7_Y4_N8
\INST5|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector0~0_combout\ = (!\INST2|AEQB~0_combout\ & \INST5|current_state.STOP~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|AEQB~0_combout\,
	datad => \INST5|current_state.STOP~q\,
	combout => \INST5|Selector0~0_combout\);

-- Location: LCCOMB_X7_Y4_N30
\INST5|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector0~1_combout\ = (\INST5|Decoder_Section~5_combout\ & (!\INST4|AEQB~0_combout\ & (\INST5|Selector0~0_combout\ & \INST5|Decoder_Section~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~5_combout\,
	datab => \INST4|AEQB~0_combout\,
	datac => \INST5|Selector0~0_combout\,
	datad => \INST5|Decoder_Section~0_combout\,
	combout => \INST5|Selector0~1_combout\);

-- Location: LCCOMB_X9_Y7_N0
\INST4|AEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST4|AEQB~combout\ = (\INST4|AEQB~0_combout\) # (!\INST5|Decoder_Section~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST4|AEQB~0_combout\,
	datad => \INST5|Decoder_Section~5_combout\,
	combout => \INST4|AEQB~combout\);

-- Location: LCCOMB_X6_Y4_N28
\INST5|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Transition_Section~0_combout\ = (\pb[3]~input_o\ & \pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[3]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \INST5|Transition_Section~0_combout\);

-- Location: LCCOMB_X7_Y4_N24
\INST6|Extender_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Extender_out~0_combout\ = (\INST6|current_state.Retracted~q\) # (!\INST6|current_state.Start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST6|current_state.Retracted~q\,
	datac => \INST6|current_state.Start~q\,
	combout => \INST6|Extender_out~0_combout\);

-- Location: LCCOMB_X6_Y4_N18
\INST5|Transition_Section~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Transition_Section~1_combout\ = (\INST4|AEQB~combout\ & (!\INST5|Transition_Section~0_combout\ & (\INST6|Extender_out~0_combout\ & \INST2|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST4|AEQB~combout\,
	datab => \INST5|Transition_Section~0_combout\,
	datac => \INST6|Extender_out~0_combout\,
	datad => \INST2|AEQB~combout\,
	combout => \INST5|Transition_Section~1_combout\);

-- Location: LCCOMB_X6_Y4_N20
\INST5|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector7~0_combout\ = (!\INST5|current_state.INIT~q\ & (\INST5|Transition_Section~1_combout\ $ (((\INST4|AEQB~combout\) # (\INST2|AEQB~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Transition_Section~1_combout\,
	datab => \INST4|AEQB~combout\,
	datac => \INST5|current_state.INIT~q\,
	datad => \INST2|AEQB~combout\,
	combout => \INST5|Selector7~0_combout\);

-- Location: LCCOMB_X6_Y4_N0
\INST5|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector8~0_combout\ = ((\INST2|AEQB~combout\ & (\INST4|AEQB~combout\ & !\INST5|Transition_Section~0_combout\)) # (!\INST2|AEQB~combout\ & (!\INST4|AEQB~combout\ & \INST5|Transition_Section~0_combout\))) # (!\INST5|Selector6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|AEQB~combout\,
	datab => \INST5|Selector6~0_combout\,
	datac => \INST4|AEQB~combout\,
	datad => \INST5|Transition_Section~0_combout\,
	combout => \INST5|Selector8~0_combout\);

-- Location: CLKCTRL_G0
\INST5|Selector8~0clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST5|Selector8~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST5|Selector8~0clkctrl_outclk\);

-- Location: LCCOMB_X6_Y4_N12
\INST5|next_state.INIT_239\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.INIT_239~combout\ = (GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & ((\INST5|Selector7~0_combout\))) # (!GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & (\INST5|next_state.INIT_239~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|next_state.INIT_239~combout\,
	datac => \INST5|Selector7~0_combout\,
	datad => \INST5|Selector8~0clkctrl_outclk\,
	combout => \INST5|next_state.INIT_239~combout\);

-- Location: LCCOMB_X6_Y4_N14
\INST5|current_state.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.INIT~0_combout\ = !\INST5|next_state.INIT_239~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.INIT_239~combout\,
	combout => \INST5|current_state.INIT~0_combout\);

-- Location: FF_X6_Y4_N15
\INST5|current_state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|current_state.INIT~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.INIT~q\);

-- Location: LCCOMB_X6_Y4_N26
\INST5|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector2~0_combout\ = (((\INST5|current_state.STOP~q\) # (\INST6|current_state.Retracted~q\)) # (!\INST6|current_state.Start~q\)) # (!\INST5|current_state.INIT~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|current_state.INIT~q\,
	datab => \INST6|current_state.Start~q\,
	datac => \INST5|current_state.STOP~q\,
	datad => \INST6|current_state.Retracted~q\,
	combout => \INST5|Selector2~0_combout\);

-- Location: LCCOMB_X7_Y4_N2
\INST5|next_state.ERROR_200\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.ERROR_200~combout\ = (GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & (!\INST5|Selector2~0_combout\)) # (!GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & ((\INST5|next_state.ERROR_200~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector2~0_combout\,
	datac => \INST5|next_state.ERROR_200~combout\,
	datad => \INST5|Selector8~0clkctrl_outclk\,
	combout => \INST5|next_state.ERROR_200~combout\);

-- Location: LCCOMB_X7_Y4_N0
\INST5|current_state.ERROR~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|current_state.ERROR~feeder_combout\ = \INST5|next_state.ERROR_200~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \INST5|next_state.ERROR_200~combout\,
	combout => \INST5|current_state.ERROR~feeder_combout\);

-- Location: FF_X7_Y4_N1
\INST5|current_state.ERROR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|current_state.ERROR~feeder_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.ERROR~q\);

-- Location: CLKCTRL_G2
\INST5|current_state.ERROR~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST5|current_state.ERROR~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST5|current_state.ERROR~clkctrl_outclk\);

-- Location: LCCOMB_X7_Y4_N20
\INST5|Extender_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Extender_en~combout\ = (GLOBAL(\INST5|current_state.ERROR~clkctrl_outclk\) & (\INST5|Extender_en~combout\)) # (!GLOBAL(\INST5|current_state.ERROR~clkctrl_outclk\) & ((\INST5|Selector0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Extender_en~combout\,
	datac => \INST5|Selector0~1_combout\,
	datad => \INST5|current_state.ERROR~clkctrl_outclk\,
	combout => \INST5|Extender_en~combout\);

-- Location: LCCOMB_X7_Y4_N16
\INST6|current_state.Start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|current_state.Start~0_combout\ = (\INST6|current_state.Start~q\) # ((!\pb[1]~input_o\ & \INST5|Extender_en~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[1]~input_o\,
	datac => \INST6|current_state.Start~q\,
	datad => \INST5|Extender_en~combout\,
	combout => \INST6|current_state.Start~0_combout\);

-- Location: FF_X7_Y4_N17
\INST6|current_state.Start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST6|current_state.Start~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Start~q\);

-- Location: LCCOMB_X9_Y4_N28
\INST6|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector1~0_combout\ = (\pb[1]~input_o\ & ((\INST6|current_state.Extender_hold~q\) # ((!\INST6|Equal0~0_combout\ & \INST6|current_state.Extending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Equal0~0_combout\,
	datab => \pb[1]~input_o\,
	datac => \INST6|current_state.Extender_hold~q\,
	datad => \INST6|current_state.Extending~q\,
	combout => \INST6|Selector1~0_combout\);

-- Location: FF_X9_Y4_N29
\INST6|current_state.Extender_hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|Selector1~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Extender_hold~q\);

-- Location: LCCOMB_X7_Y4_N14
\INST6|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector0~0_combout\ = (\INST6|current_state.Extender_hold~q\) # ((\INST5|Extender_en~combout\ & ((\INST6|current_state.Retracted~q\) # (!\INST6|current_state.Start~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Start~q\,
	datab => \INST6|current_state.Retracted~q\,
	datac => \INST6|current_state.Extender_hold~q\,
	datad => \INST5|Extender_en~combout\,
	combout => \INST6|Selector0~0_combout\);

-- Location: LCCOMB_X9_Y4_N12
\INST6|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector0~1_combout\ = (!\pb[1]~input_o\ & ((\INST6|Selector0~0_combout\) # ((!\INST6|Equal0~0_combout\ & \INST6|current_state.Extending~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Equal0~0_combout\,
	datab => \pb[1]~input_o\,
	datac => \INST6|current_state.Extending~q\,
	datad => \INST6|Selector0~0_combout\,
	combout => \INST6|Selector0~1_combout\);

-- Location: FF_X9_Y4_N13
\INST6|current_state.Extending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Extending~q\);

-- Location: LCCOMB_X9_Y4_N26
\INST7|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|sreg~3_combout\ = (\INST6|current_state.Extending~q\) # (\INST7|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Extending~q\,
	datac => \INST7|sreg\(2),
	combout => \INST7|sreg~3_combout\);

-- Location: FF_X9_Y4_N27
\INST7|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST7|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST6|shift_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg\(3));

-- Location: LCCOMB_X9_Y4_N8
\INST7|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST7|sreg~2_combout\ = (\INST6|current_state.Extending~q\ & (\INST7|sreg\(3))) # (!\INST6|current_state.Extending~q\ & ((\INST7|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST7|sreg\(3),
	datac => \INST7|sreg\(1),
	datad => \INST6|current_state.Extending~q\,
	combout => \INST7|sreg~2_combout\);

-- Location: FF_X9_Y4_N9
\INST7|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST7|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST6|shift_reg_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST7|sreg\(2));

-- Location: LCCOMB_X9_Y4_N20
\INST6|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Equal1~0_combout\ = (!\INST7|sreg\(2) & (!\INST7|sreg\(1) & (!\INST7|sreg\(0) & !\INST7|sreg\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST7|sreg\(2),
	datab => \INST7|sreg\(1),
	datac => \INST7|sreg\(0),
	datad => \INST7|sreg\(3),
	combout => \INST6|Equal1~0_combout\);

-- Location: LCCOMB_X9_Y4_N22
\INST6|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector4~0_combout\ = (\pb[1]~input_o\ & ((\INST6|current_state.Retracter_hold~q\) # ((!\INST6|Equal1~0_combout\ & \INST6|current_state.Retracting~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Equal1~0_combout\,
	datab => \INST6|current_state.Retracting~q\,
	datac => \INST6|current_state.Retracter_hold~q\,
	datad => \pb[1]~input_o\,
	combout => \INST6|Selector4~0_combout\);

-- Location: FF_X9_Y4_N23
\INST6|current_state.Retracter_hold\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|Selector4~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Retracter_hold~q\);

-- Location: LCCOMB_X9_Y4_N14
\INST6|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector2~0_combout\ = (\INST6|current_state.Extending~q\ & ((\INST6|Equal0~0_combout\) # ((\INST6|current_state.Extended~q\ & \pb[1]~input_o\)))) # (!\INST6|current_state.Extending~q\ & (((\INST6|current_state.Extended~q\ & \pb[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Extending~q\,
	datab => \INST6|Equal0~0_combout\,
	datac => \INST6|current_state.Extended~q\,
	datad => \pb[1]~input_o\,
	combout => \INST6|Selector2~0_combout\);

-- Location: FF_X9_Y4_N15
\INST6|current_state.Extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|Selector2~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Extended~q\);

-- Location: LCCOMB_X9_Y4_N16
\INST6|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector3~0_combout\ = (!\pb[1]~input_o\ & ((\INST6|current_state.Retracter_hold~q\) # (\INST6|current_state.Extended~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Retracter_hold~q\,
	datac => \INST6|current_state.Extended~q\,
	datad => \pb[1]~input_o\,
	combout => \INST6|Selector3~0_combout\);

-- Location: LCCOMB_X7_Y4_N26
\INST6|Selector3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector3~1_combout\ = (\INST6|Selector3~0_combout\) # ((!\pb[1]~input_o\ & (\INST6|current_state.Retracting~q\ & !\INST6|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|Selector3~0_combout\,
	datab => \pb[1]~input_o\,
	datac => \INST6|current_state.Retracting~q\,
	datad => \INST6|Equal1~0_combout\,
	combout => \INST6|Selector3~1_combout\);

-- Location: FF_X7_Y4_N27
\INST6|current_state.Retracting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST6|Selector3~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Retracting~q\);

-- Location: LCCOMB_X7_Y4_N18
\INST6|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector5~0_combout\ = (\INST6|current_state.Retracted~q\ & ((\pb[1]~input_o\) # (!\INST5|Extender_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \pb[1]~input_o\,
	datac => \INST6|current_state.Retracted~q\,
	datad => \INST5|Extender_en~combout\,
	combout => \INST6|Selector5~0_combout\);

-- Location: LCCOMB_X7_Y4_N12
\INST6|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST6|Selector5~1_combout\ = (\INST6|Selector5~0_combout\) # ((\INST6|current_state.Retracting~q\ & \INST6|Equal1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST6|current_state.Retracting~q\,
	datac => \INST6|Equal1~0_combout\,
	datad => \INST6|Selector5~0_combout\,
	combout => \INST6|Selector5~1_combout\);

-- Location: FF_X7_Y4_N13
\INST6|current_state.Retracted\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST6|Selector5~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST6|current_state.Retracted~q\);

-- Location: LCCOMB_X6_Y4_N4
\INST5|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~0_combout\ = (\INST5|current_state.MOVE~q\ & ((\INST6|current_state.Retracted~q\) # (!\INST6|current_state.Start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|current_state.MOVE~q\,
	datac => \INST6|current_state.Retracted~q\,
	datad => \INST6|current_state.Start~q\,
	combout => \INST5|Selector6~0_combout\);

-- Location: LCCOMB_X6_Y4_N16
\INST5|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector4~1_combout\ = (\INST2|AEQB~combout\ & (((!\INST5|Transition_Section~0_combout\ & \INST4|AEQB~combout\)))) # (!\INST2|AEQB~combout\ & ((\INST5|current_state.INIT~q\) # ((\INST4|AEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|AEQB~combout\,
	datab => \INST5|current_state.INIT~q\,
	datac => \INST5|Transition_Section~0_combout\,
	datad => \INST4|AEQB~combout\,
	combout => \INST5|Selector4~1_combout\);

-- Location: LCCOMB_X6_Y4_N10
\INST5|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector4~0_combout\ = (\INST5|Transition_Section~0_combout\ & ((\INST5|current_state.STOP~q\) # ((\INST5|current_state.ERROR~q\ & \INST6|Extender_out~0_combout\)))) # (!\INST5|Transition_Section~0_combout\ & (\INST5|current_state.ERROR~q\ & 
-- (\INST6|Extender_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Transition_Section~0_combout\,
	datab => \INST5|current_state.ERROR~q\,
	datac => \INST6|Extender_out~0_combout\,
	datad => \INST5|current_state.STOP~q\,
	combout => \INST5|Selector4~0_combout\);

-- Location: LCCOMB_X6_Y4_N24
\INST5|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector4~2_combout\ = (\INST5|Selector4~0_combout\) # ((\INST5|Selector6~0_combout\ & ((!\INST5|Selector4~1_combout\) # (!\INST2|AEQB~combout\))) # (!\INST5|Selector6~0_combout\ & (!\INST2|AEQB~combout\ & !\INST5|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector6~0_combout\,
	datab => \INST2|AEQB~combout\,
	datac => \INST5|Selector4~1_combout\,
	datad => \INST5|Selector4~0_combout\,
	combout => \INST5|Selector4~2_combout\);

-- Location: LCCOMB_X6_Y4_N8
\INST5|next_state.STOP_213\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.STOP_213~combout\ = (GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & (\INST5|Selector4~2_combout\)) # (!GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & ((\INST5|next_state.STOP_213~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector4~2_combout\,
	datac => \INST5|next_state.STOP_213~combout\,
	datad => \INST5|Selector8~0clkctrl_outclk\,
	combout => \INST5|next_state.STOP_213~combout\);

-- Location: FF_X6_Y4_N9
\INST5|current_state.STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|next_state.STOP_213~combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.STOP~q\);

-- Location: LCCOMB_X6_Y4_N6
\INST5|Selector6~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~1_combout\ = (\INST5|current_state.STOP~q\ & ((!\pb[3]~input_o\) # (!\pb[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|current_state.STOP~q\,
	datac => \pb[2]~input_o\,
	datad => \pb[3]~input_o\,
	combout => \INST5|Selector6~1_combout\);

-- Location: LCCOMB_X6_Y4_N30
\INST5|Selector6~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~2_combout\ = (\INST2|AEQB~combout\ & (\INST5|Selector6~0_combout\ & (!\INST5|Transition_Section~0_combout\ & \INST4|AEQB~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST2|AEQB~combout\,
	datab => \INST5|Selector6~0_combout\,
	datac => \INST5|Transition_Section~0_combout\,
	datad => \INST4|AEQB~combout\,
	combout => \INST5|Selector6~2_combout\);

-- Location: LCCOMB_X6_Y4_N22
\INST5|Selector6~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Selector6~3_combout\ = (\INST5|Selector6~1_combout\) # ((\INST5|Selector6~2_combout\) # ((!\INST5|current_state.INIT~q\ & \INST5|Transition_Section~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Selector6~1_combout\,
	datab => \INST5|Selector6~2_combout\,
	datac => \INST5|current_state.INIT~q\,
	datad => \INST5|Transition_Section~1_combout\,
	combout => \INST5|Selector6~3_combout\);

-- Location: LCCOMB_X6_Y4_N2
\INST5|next_state.MOVE_226\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|next_state.MOVE_226~combout\ = (GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & ((\INST5|Selector6~3_combout\))) # (!GLOBAL(\INST5|Selector8~0clkctrl_outclk\) & (\INST5|next_state.MOVE_226~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|next_state.MOVE_226~combout\,
	datac => \INST5|Selector6~3_combout\,
	datad => \INST5|Selector8~0clkctrl_outclk\,
	combout => \INST5|next_state.MOVE_226~combout\);

-- Location: FF_X6_Y4_N3
\INST5|current_state.MOVE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST5|next_state.MOVE_226~combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST5|current_state.MOVE~q\);

-- Location: CLKCTRL_G1
\INST5|current_state.MOVE~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \INST5|current_state.MOVE~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \INST5|current_state.MOVE~clkctrl_outclk\);

-- Location: LCCOMB_X9_Y7_N22
\INST5|clk_en_Y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|clk_en_Y~combout\ = (GLOBAL(\INST5|current_state.MOVE~clkctrl_outclk\) & (\INST5|clk_en_Y~1_combout\)) # (!GLOBAL(\INST5|current_state.MOVE~clkctrl_outclk\) & ((\INST5|clk_en_Y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|clk_en_Y~1_combout\,
	datac => \INST5|clk_en_Y~combout\,
	datad => \INST5|current_state.MOVE~clkctrl_outclk\,
	combout => \INST5|clk_en_Y~combout\);

-- Location: LCCOMB_X10_Y7_N10
\INST5|Decoder_Section~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~9_combout\ = (\INST5|Decoder_Section~6_combout\) # ((\INST5|Decoder_Section~5_combout\ & \INST5|Decoder_Section~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~6_combout\,
	datac => \INST5|Decoder_Section~5_combout\,
	datad => \INST5|Decoder_Section~7_combout\,
	combout => \INST5|Decoder_Section~9_combout\);

-- Location: LCCOMB_X10_Y7_N22
\INST5|Ycount~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Ycount~1_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\INST3|ud_bin_counter\(0))) # (!\INST3|ud_bin_counter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\INST3|ud_bin_counter\(1) & !\INST3|ud_bin_counter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[0]~input_o\,
	datab => \sw[1]~input_o\,
	datac => \INST3|ud_bin_counter\(1),
	datad => \INST3|ud_bin_counter\(0),
	combout => \INST5|Ycount~1_combout\);

-- Location: LCCOMB_X10_Y7_N2
\INST5|Ycount~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Ycount~2_combout\ = (\sw[2]~input_o\ & ((\INST5|Ycount~1_combout\) # (!\INST3|ud_bin_counter\(2)))) # (!\sw[2]~input_o\ & (\INST5|Ycount~1_combout\ & !\INST3|ud_bin_counter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datac => \INST5|Ycount~1_combout\,
	datad => \INST3|ud_bin_counter\(2),
	combout => \INST5|Ycount~2_combout\);

-- Location: LCCOMB_X10_Y7_N16
\INST5|Ycount~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Ycount~3_combout\ = (\sw[3]~input_o\ & (((\INST5|Ycount~2_combout\ & \INST4|AEQB~combout\)) # (!\INST3|ud_bin_counter\(3)))) # (!\sw[3]~input_o\ & (\INST5|Ycount~2_combout\ & (\INST4|AEQB~combout\ & !\INST3|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \INST5|Ycount~2_combout\,
	datac => \INST4|AEQB~combout\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \INST5|Ycount~3_combout\);

-- Location: LCCOMB_X10_Y7_N30
\INST5|Ycount~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Ycount~4_combout\ = (\INST5|current_state.MOVE~q\ & (!\pb[2]~input_o\ & ((\INST5|Decoder_Section~9_combout\) # (\INST5|Ycount~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~9_combout\,
	datab => \INST5|current_state.MOVE~q\,
	datac => \pb[2]~input_o\,
	datad => \INST5|Ycount~3_combout\,
	combout => \INST5|Ycount~4_combout\);

-- Location: LCCOMB_X9_Y7_N12
\INST5|Decoder_Section~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Decoder_Section~8_combout\ = (!\pb[2]~input_o\ & ((\INST5|Decoder_Section~6_combout\) # ((\INST5|Decoder_Section~5_combout\ & \INST5|Decoder_Section~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|Decoder_Section~5_combout\,
	datab => \INST5|Decoder_Section~6_combout\,
	datac => \pb[2]~input_o\,
	datad => \INST5|Decoder_Section~7_combout\,
	combout => \INST5|Decoder_Section~8_combout\);

-- Location: LCCOMB_X9_Y7_N28
\INST5|Ycount\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|Ycount~combout\ = (\INST5|Ycount~4_combout\ & ((!\INST5|Decoder_Section~8_combout\))) # (!\INST5|Ycount~4_combout\ & (\INST5|Ycount~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST5|Ycount~combout\,
	datac => \INST5|Ycount~4_combout\,
	datad => \INST5|Decoder_Section~8_combout\,
	combout => \INST5|Ycount~combout\);

-- Location: LCCOMB_X9_Y7_N24
\INST3|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST3|process_0~0_combout\ = (\INST5|clk_en_Y~combout\ & \INST5|Ycount~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST5|clk_en_Y~combout\,
	datad => \INST5|Ycount~combout\,
	combout => \INST3|process_0~0_combout\);

-- Location: FF_X9_Y7_N19
\INST3|ud_bin_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => bin_counter(23),
	d => \INST3|ud_bin_counter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \INST5|clk_en_Y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST3|ud_bin_counter\(2));

-- Location: LCCOMB_X10_Y7_N8
\Y_OUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y_OUT[2]~2_combout\ = (\pb[2]~input_o\ & (\sw[2]~input_o\)) # (!\pb[2]~input_o\ & ((\INST3|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[2]~input_o\,
	datab => \pb[2]~input_o\,
	datad => \INST3|ud_bin_counter\(2),
	combout => \Y_OUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y7_N20
\Y_OUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y_OUT[0]~0_combout\ = (\pb[2]~input_o\ & ((\sw[0]~input_o\))) # (!\pb[2]~input_o\ & (\INST3|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(0),
	datab => \pb[2]~input_o\,
	datad => \sw[0]~input_o\,
	combout => \Y_OUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y7_N14
\Y_OUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y_OUT[1]~1_combout\ = (\pb[2]~input_o\ & ((\sw[1]~input_o\))) # (!\pb[2]~input_o\ & (\INST3|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST3|ud_bin_counter\(1),
	datac => \sw[1]~input_o\,
	datad => \pb[2]~input_o\,
	combout => \Y_OUT[1]~1_combout\);

-- Location: LCCOMB_X10_Y7_N0
\Y_OUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Y_OUT[3]~3_combout\ = (\pb[2]~input_o\ & (\sw[3]~input_o\)) # (!\pb[2]~input_o\ & ((\INST3|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \pb[2]~input_o\,
	datad => \INST3|ud_bin_counter\(3),
	combout => \Y_OUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y7_N6
\INST12|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux5~0_combout\ = (\Y_OUT[1]~1_combout\ & ((\Y_OUT[0]~0_combout\ & ((\Y_OUT[3]~3_combout\))) # (!\Y_OUT[0]~0_combout\ & (\Y_OUT[2]~2_combout\)))) # (!\Y_OUT[1]~1_combout\ & (\Y_OUT[2]~2_combout\ & (\Y_OUT[0]~0_combout\ $ (\Y_OUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[0]~0_combout\,
	datac => \Y_OUT[1]~1_combout\,
	datad => \Y_OUT[3]~3_combout\,
	combout => \INST12|Mux5~0_combout\);

-- Location: LCCOMB_X7_Y4_N10
\INST5|ERROR_led\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST5|ERROR_led~combout\ = (GLOBAL(\INST5|current_state.ERROR~clkctrl_outclk\) & ((!\INST6|Extender_out~0_combout\))) # (!GLOBAL(\INST5|current_state.ERROR~clkctrl_outclk\) & (\INST5|ERROR_led~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST5|ERROR_led~combout\,
	datac => \INST5|current_state.ERROR~clkctrl_outclk\,
	datad => \INST6|Extender_out~0_combout\,
	combout => \INST5|ERROR_led~combout\);

-- Location: LCCOMB_X7_Y4_N28
\INST10|next_state.error_off~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST10|next_state.error_off~0_combout\ = (!\INST10|current_state.error_off~q\ & \INST5|ERROR_led~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST10|current_state.error_off~q\,
	datad => \INST5|ERROR_led~combout\,
	combout => \INST10|next_state.error_off~0_combout\);

-- Location: FF_X7_Y4_N29
\INST10|current_state.error_off\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST10|next_state.error_off~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST10|current_state.error_off~q\);

-- Location: LCCOMB_X11_Y4_N30
\X_OUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X_OUT[2]~2_combout\ = (\pb[3]~input_o\ & (\sw[6]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|ud_bin_counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw[6]~input_o\,
	datac => \pb[3]~input_o\,
	datad => \INST1|ud_bin_counter\(2),
	combout => \X_OUT[2]~2_combout\);

-- Location: LCCOMB_X11_Y4_N12
\X_OUT[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X_OUT[1]~1_combout\ = (\pb[3]~input_o\ & ((\sw[5]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|ud_bin_counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(1),
	datac => \pb[3]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \X_OUT[1]~1_combout\);

-- Location: LCCOMB_X10_Y8_N8
\X_OUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X_OUT[3]~3_combout\ = (\pb[3]~input_o\ & (\sw[7]~input_o\)) # (!\pb[3]~input_o\ & ((\INST1|ud_bin_counter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datac => \INST1|ud_bin_counter\(3),
	datad => \pb[3]~input_o\,
	combout => \X_OUT[3]~3_combout\);

-- Location: LCCOMB_X11_Y4_N16
\X_OUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \X_OUT[0]~0_combout\ = (\pb[3]~input_o\ & ((\sw[4]~input_o\))) # (!\pb[3]~input_o\ & (\INST1|ud_bin_counter\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST1|ud_bin_counter\(0),
	datac => \pb[3]~input_o\,
	datad => \sw[4]~input_o\,
	combout => \X_OUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y8_N30
\INST11|Mux5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux5~0_combout\ = (\X_OUT[1]~1_combout\ & ((\X_OUT[0]~0_combout\ & ((\X_OUT[3]~3_combout\))) # (!\X_OUT[0]~0_combout\ & (\X_OUT[2]~2_combout\)))) # (!\X_OUT[1]~1_combout\ & (\X_OUT[2]~2_combout\ & (\X_OUT[3]~3_combout\ $ (\X_OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux5~0_combout\);

-- Location: LCCOMB_X10_Y7_N24
\INST13|DOUT_TEMP[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT_TEMP[1]~0_combout\ = (!\INST10|current_state.error_off~q\ & ((bin_counter(10) & ((!\INST11|Mux5~0_combout\))) # (!bin_counter(10) & (!\INST12|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Mux5~0_combout\,
	datab => \INST10|current_state.error_off~q\,
	datac => \INST11|Mux5~0_combout\,
	datad => bin_counter(10),
	combout => \INST13|DOUT_TEMP[1]~0_combout\);

-- Location: LCCOMB_X10_Y8_N2
\INST12|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux1~0_combout\ = (\Y_OUT[2]~2_combout\ & ((\Y_OUT[3]~3_combout\ & ((!\Y_OUT[1]~1_combout\))) # (!\Y_OUT[3]~3_combout\ & (\Y_OUT[0]~0_combout\ & \Y_OUT[1]~1_combout\)))) # (!\Y_OUT[2]~2_combout\ & (!\Y_OUT[3]~3_combout\ & ((\Y_OUT[0]~0_combout\) # 
-- (\Y_OUT[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[3]~3_combout\,
	datac => \Y_OUT[0]~0_combout\,
	datad => \Y_OUT[1]~1_combout\,
	combout => \INST12|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y8_N0
\INST11|Mux1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux1~0_combout\ = (\X_OUT[2]~2_combout\ & ((\X_OUT[1]~1_combout\ & (!\X_OUT[3]~3_combout\ & \X_OUT[0]~0_combout\)) # (!\X_OUT[1]~1_combout\ & (\X_OUT[3]~3_combout\)))) # (!\X_OUT[2]~2_combout\ & (!\X_OUT[3]~3_combout\ & ((\X_OUT[1]~1_combout\) # 
-- (\X_OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux1~0_combout\);

-- Location: LCCOMB_X10_Y8_N28
\INST13|DOUT_TEMP[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT_TEMP[5]~1_combout\ = (!\INST10|current_state.error_off~q\ & ((bin_counter(10) & ((!\INST11|Mux1~0_combout\))) # (!bin_counter(10) & (!\INST12|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.error_off~q\,
	datab => \INST12|Mux1~0_combout\,
	datac => bin_counter(10),
	datad => \INST11|Mux1~0_combout\,
	combout => \INST13|DOUT_TEMP[5]~1_combout\);

-- Location: LCCOMB_X10_Y7_N12
\INST12|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux0~0_combout\ = (\Y_OUT[3]~3_combout\) # ((\Y_OUT[2]~2_combout\ & ((!\Y_OUT[1]~1_combout\) # (!\Y_OUT[0]~0_combout\))) # (!\Y_OUT[2]~2_combout\ & ((\Y_OUT[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[0]~0_combout\,
	datac => \Y_OUT[1]~1_combout\,
	datad => \Y_OUT[3]~3_combout\,
	combout => \INST12|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y8_N18
\INST11|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux0~0_combout\ = (\X_OUT[3]~3_combout\) # ((\X_OUT[2]~2_combout\ & ((!\X_OUT[0]~0_combout\) # (!\X_OUT[1]~1_combout\))) # (!\X_OUT[2]~2_combout\ & (\X_OUT[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux0~0_combout\);

-- Location: LCCOMB_X10_Y7_N18
\INST13|DOUT_TEMP[6]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT_TEMP[6]~2_combout\ = (!\INST10|current_state.error_off~q\ & ((bin_counter(10) & ((\INST11|Mux0~0_combout\))) # (!bin_counter(10) & (\INST12|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Mux0~0_combout\,
	datab => \INST10|current_state.error_off~q\,
	datac => \INST11|Mux0~0_combout\,
	datad => bin_counter(10),
	combout => \INST13|DOUT_TEMP[6]~2_combout\);

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

-- Location: LCCOMB_X9_Y4_N24
\INST8|Decoder_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|Decoder_Section~0_combout\ = (\INST6|current_state.Extended~q\ & !\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \INST6|current_state.Extended~q\,
	datad => \pb[0]~input_o\,
	combout => \INST8|Decoder_Section~0_combout\);

-- Location: FF_X9_Y4_N25
\INST8|current_state.light_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \bin_counter[23]~clkctrl_outclk\,
	d => \INST8|Decoder_Section~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \INST8|current_state.light_on~q\);

-- Location: LCCOMB_X9_Y4_N10
\INST8|led\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST8|led~combout\ = (\INST8|current_state.light_on~q\ & ((\INST8|Decoder_Section~0_combout\) # (\INST8|led~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \INST8|current_state.light_on~q\,
	datac => \INST8|Decoder_Section~0_combout\,
	datad => \INST8|led~combout\,
	combout => \INST8|led~combout\);

-- Location: LCCOMB_X10_Y8_N16
\INST12|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux6~0_combout\ = (\Y_OUT[2]~2_combout\ & (!\Y_OUT[1]~1_combout\ & ((\Y_OUT[3]~3_combout\) # (!\Y_OUT[0]~0_combout\)))) # (!\Y_OUT[2]~2_combout\ & (\Y_OUT[0]~0_combout\ & (\Y_OUT[3]~3_combout\ $ (!\Y_OUT[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[3]~3_combout\,
	datac => \Y_OUT[0]~0_combout\,
	datad => \Y_OUT[1]~1_combout\,
	combout => \INST12|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y8_N10
\INST11|Mux6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux6~0_combout\ = (\X_OUT[2]~2_combout\ & (!\X_OUT[1]~1_combout\ & ((\X_OUT[3]~3_combout\) # (!\X_OUT[0]~0_combout\)))) # (!\X_OUT[2]~2_combout\ & (\X_OUT[0]~0_combout\ & (\X_OUT[1]~1_combout\ $ (!\X_OUT[3]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux6~0_combout\);

-- Location: LCCOMB_X10_Y8_N26
\INST13|DOUT[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[0]~0_combout\ = (\INST10|current_state.error_off~q\) # ((bin_counter(10) & ((\INST11|Mux6~0_combout\))) # (!bin_counter(10) & (\INST12|Mux6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.error_off~q\,
	datab => \INST12|Mux6~0_combout\,
	datac => bin_counter(10),
	datad => \INST11|Mux6~0_combout\,
	combout => \INST13|DOUT[0]~0_combout\);

-- Location: LCCOMB_X10_Y8_N14
\INST12|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux4~0_combout\ = (\Y_OUT[2]~2_combout\ & (\Y_OUT[3]~3_combout\ & ((\Y_OUT[1]~1_combout\) # (!\Y_OUT[0]~0_combout\)))) # (!\Y_OUT[2]~2_combout\ & (!\Y_OUT[3]~3_combout\ & (!\Y_OUT[0]~0_combout\ & \Y_OUT[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[3]~3_combout\,
	datac => \Y_OUT[0]~0_combout\,
	datad => \Y_OUT[1]~1_combout\,
	combout => \INST12|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y8_N12
\INST11|Mux4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux4~0_combout\ = (\X_OUT[2]~2_combout\ & (\X_OUT[3]~3_combout\ & ((\X_OUT[1]~1_combout\) # (!\X_OUT[0]~0_combout\)))) # (!\X_OUT[2]~2_combout\ & (\X_OUT[1]~1_combout\ & (!\X_OUT[3]~3_combout\ & !\X_OUT[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux4~0_combout\);

-- Location: LCCOMB_X10_Y8_N4
\INST13|DOUT[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[2]~2_combout\ = (\INST10|current_state.error_off~q\) # ((bin_counter(10) & ((\INST11|Mux4~0_combout\))) # (!bin_counter(10) & (\INST12|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.error_off~q\,
	datab => \INST12|Mux4~0_combout\,
	datac => bin_counter(10),
	datad => \INST11|Mux4~0_combout\,
	combout => \INST13|DOUT[2]~2_combout\);

-- Location: LCCOMB_X10_Y8_N24
\INST12|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux3~0_combout\ = (\Y_OUT[1]~1_combout\ & ((\Y_OUT[2]~2_combout\ & ((\Y_OUT[0]~0_combout\))) # (!\Y_OUT[2]~2_combout\ & (\Y_OUT[3]~3_combout\ & !\Y_OUT[0]~0_combout\)))) # (!\Y_OUT[1]~1_combout\ & (!\Y_OUT[3]~3_combout\ & (\Y_OUT[2]~2_combout\ $ 
-- (\Y_OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[3]~3_combout\,
	datac => \Y_OUT[0]~0_combout\,
	datad => \Y_OUT[1]~1_combout\,
	combout => \INST12|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y8_N6
\INST11|Mux3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux3~0_combout\ = (\X_OUT[1]~1_combout\ & ((\X_OUT[2]~2_combout\ & ((\X_OUT[0]~0_combout\))) # (!\X_OUT[2]~2_combout\ & (\X_OUT[3]~3_combout\ & !\X_OUT[0]~0_combout\)))) # (!\X_OUT[1]~1_combout\ & (!\X_OUT[3]~3_combout\ & (\X_OUT[2]~2_combout\ $ 
-- (\X_OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux3~0_combout\);

-- Location: LCCOMB_X10_Y8_N22
\INST13|DOUT[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[3]~3_combout\ = (\INST10|current_state.error_off~q\) # ((bin_counter(10) & ((\INST11|Mux3~0_combout\))) # (!bin_counter(10) & (\INST12|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST10|current_state.error_off~q\,
	datab => \INST12|Mux3~0_combout\,
	datac => bin_counter(10),
	datad => \INST11|Mux3~0_combout\,
	combout => \INST13|DOUT[3]~3_combout\);

-- Location: LCCOMB_X10_Y7_N26
\INST12|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST12|Mux2~0_combout\ = (\Y_OUT[1]~1_combout\ & (((\Y_OUT[0]~0_combout\ & !\Y_OUT[3]~3_combout\)))) # (!\Y_OUT[1]~1_combout\ & ((\Y_OUT[2]~2_combout\ & ((!\Y_OUT[3]~3_combout\))) # (!\Y_OUT[2]~2_combout\ & (\Y_OUT[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y_OUT[2]~2_combout\,
	datab => \Y_OUT[0]~0_combout\,
	datac => \Y_OUT[1]~1_combout\,
	datad => \Y_OUT[3]~3_combout\,
	combout => \INST12|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y8_N20
\INST11|Mux2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST11|Mux2~0_combout\ = (\X_OUT[1]~1_combout\ & (((!\X_OUT[3]~3_combout\ & \X_OUT[0]~0_combout\)))) # (!\X_OUT[1]~1_combout\ & ((\X_OUT[2]~2_combout\ & (!\X_OUT[3]~3_combout\)) # (!\X_OUT[2]~2_combout\ & ((\X_OUT[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X_OUT[2]~2_combout\,
	datab => \X_OUT[1]~1_combout\,
	datac => \X_OUT[3]~3_combout\,
	datad => \X_OUT[0]~0_combout\,
	combout => \INST11|Mux2~0_combout\);

-- Location: LCCOMB_X10_Y7_N4
\INST13|DOUT[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \INST13|DOUT[4]~4_combout\ = (\INST10|current_state.error_off~q\) # ((bin_counter(10) & ((\INST11|Mux2~0_combout\))) # (!bin_counter(10) & (\INST12|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INST12|Mux2~0_combout\,
	datab => \INST10|current_state.error_off~q\,
	datac => \INST11|Mux2~0_combout\,
	datad => bin_counter(10),
	combout => \INST13|DOUT[4]~4_combout\);

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


