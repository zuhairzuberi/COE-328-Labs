-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/18/2021 10:50:01"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	StateMachine IS
    PORT (
	ID_leds : OUT std_logic_vector(0 TO 6);
	clk : IN std_logic;
	data_in : IN std_logic;
	reset : IN std_logic;
	ID_negleds : OUT std_logic_vector(0 TO 6);
	State_leds : OUT std_logic_vector(0 TO 6);
	State_negleds : OUT std_logic_vector(0 TO 6)
	);
END StateMachine;

-- Design Ports Information
-- ID_leds[0]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[1]	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[2]	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[3]	=>  Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[4]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[5]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_leds[6]	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[1]	=>  Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[2]	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[3]	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[4]	=>  Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[5]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ID_negleds[6]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[0]	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[1]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[2]	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[3]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[4]	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_leds[6]	=>  Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[0]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[1]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[2]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[3]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[4]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[5]	=>  Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- State_negleds[6]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- data_in	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF StateMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_ID_leds : std_logic_vector(0 TO 6);
SIGNAL ww_clk : std_logic;
SIGNAL ww_data_in : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_ID_negleds : std_logic_vector(0 TO 6);
SIGNAL ww_State_leds : std_logic_vector(0 TO 6);
SIGNAL ww_State_negleds : std_logic_vector(0 TO 6);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \data_in~combout\ : std_logic;
SIGNAL \inst|yfsm.s1~regout\ : std_logic;
SIGNAL \inst|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s0~regout\ : std_logic;
SIGNAL \inst|yfsm.s3~0_combout\ : std_logic;
SIGNAL \inst|yfsm.s3~regout\ : std_logic;
SIGNAL \inst|yfsm.s7~regout\ : std_logic;
SIGNAL \inst|yfsm.s6~regout\ : std_logic;
SIGNAL \inst|yfsm.s2~regout\ : std_logic;
SIGNAL \inst|yfsm.s4~feeder_combout\ : std_logic;
SIGNAL \inst|yfsm.s4~regout\ : std_logic;
SIGNAL \inst|yfsm.s8~regout\ : std_logic;
SIGNAL \inst|yfsm.s5~regout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst|WideOr11~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~1_combout\ : std_logic;
SIGNAL \inst1|Mux4~2_combout\ : std_logic;
SIGNAL \inst|WideOr12~0_combout\ : std_logic;
SIGNAL \inst|WideOr14~0_combout\ : std_logic;
SIGNAL \inst|WideOr13~0_combout\ : std_logic;
SIGNAL \inst2|Mux0~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux2~0_combout\ : std_logic;
SIGNAL \inst2|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|Mux5~0_combout\ : std_logic;
SIGNAL \inst2|Mux6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~2_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux2~1_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

ID_leds <= ww_ID_leds;
ww_clk <= clk;
ww_data_in <= data_in;
ww_reset <= reset;
ID_negleds <= ww_ID_negleds;
State_leds <= ww_State_leds;
State_negleds <= ww_State_negleds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);
\inst2|ALT_INV_Mux5~0_combout\ <= NOT \inst2|Mux5~0_combout\;
\inst2|ALT_INV_Mux4~0_combout\ <= NOT \inst2|Mux4~0_combout\;
\inst2|ALT_INV_Mux3~0_combout\ <= NOT \inst2|Mux3~0_combout\;
\inst2|ALT_INV_Mux2~0_combout\ <= NOT \inst2|Mux2~0_combout\;
\inst1|ALT_INV_Mux4~2_combout\ <= NOT \inst1|Mux4~2_combout\;
\inst1|ALT_INV_Mux2~1_combout\ <= NOT \inst1|Mux2~1_combout\;
\inst1|ALT_INV_Mux1~0_combout\ <= NOT \inst1|Mux1~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\data_in~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_data_in,
	combout => \data_in~combout\);

-- Location: LCFF_X1_Y33_N7
\inst|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s5~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s1~regout\);

-- Location: LCCOMB_X1_Y33_N2
\inst|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm.s0~0_combout\ = !\inst|yfsm.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|yfsm.s1~regout\,
	combout => \inst|yfsm.s0~0_combout\);

-- Location: LCFF_X1_Y33_N3
\inst|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|yfsm.s0~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s0~regout\);

-- Location: LCCOMB_X1_Y33_N8
\inst|yfsm.s3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm.s3~0_combout\ = !\inst|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|yfsm.s0~regout\,
	combout => \inst|yfsm.s3~0_combout\);

-- Location: LCFF_X1_Y33_N9
\inst|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|yfsm.s3~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s3~regout\);

-- Location: LCFF_X1_Y33_N21
\inst|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s3~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s7~regout\);

-- Location: LCFF_X1_Y33_N17
\inst|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s7~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s6~regout\);

-- Location: LCFF_X1_Y33_N31
\inst|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s6~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s2~regout\);

-- Location: LCCOMB_X1_Y33_N14
\inst|yfsm.s4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|yfsm.s4~feeder_combout\ = \inst|yfsm.s2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|yfsm.s2~regout\,
	combout => \inst|yfsm.s4~feeder_combout\);

-- Location: LCFF_X1_Y33_N15
\inst|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \inst|yfsm.s4~feeder_combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s4~regout\);

-- Location: LCFF_X1_Y33_N25
\inst|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s4~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s8~regout\);

-- Location: LCFF_X1_Y33_N5
\inst|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \inst|yfsm.s8~regout\,
	aclr => \reset~clkctrl_outclk\,
	sload => VCC,
	ena => \data_in~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|yfsm.s5~regout\);

-- Location: LCCOMB_X1_Y33_N12
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|yfsm.s2~regout\) # ((\inst|yfsm.s4~regout\) # (!\inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst|yfsm.s2~regout\,
	datac => \inst|yfsm.s0~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y33_N28
\inst1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (!\inst|yfsm.s4~regout\ & (!\inst|yfsm.s2~regout\ & !\inst|yfsm.s5~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s4~regout\,
	datab => \inst|yfsm.s2~regout\,
	datad => \inst|yfsm.s5~regout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y33_N24
\inst|WideOr11~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr11~0_combout\ = (!\inst|yfsm.s3~regout\ & (!\inst|yfsm.s8~regout\ & !\inst|yfsm.s7~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst|yfsm.s7~regout\,
	combout => \inst|WideOr11~0_combout\);

-- Location: LCCOMB_X1_Y33_N18
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = ((!\inst1|Mux4~0_combout\ & !\inst|WideOr11~0_combout\)) # (!\inst|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|yfsm.s0~regout\,
	datac => \inst1|Mux4~0_combout\,
	datad => \inst|WideOr11~0_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y33_N6
\inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (((!\inst|yfsm.s6~regout\ & !\inst|yfsm.s1~regout\)) # (!\inst|yfsm.s0~regout\)) # (!\inst|WideOr11~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s6~regout\,
	datab => \inst|WideOr11~0_combout\,
	datac => \inst|yfsm.s1~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y33_N20
\inst1|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~1_combout\ = (!\inst|yfsm.s8~regout\ & (!\inst|yfsm.s3~regout\ & (!\inst|yfsm.s7~regout\ & \inst|yfsm.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s8~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s0~regout\,
	combout => \inst1|Mux2~1_combout\);

-- Location: LCCOMB_X1_Y33_N22
\inst1|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~1_combout\ = (!\inst|yfsm.s5~regout\ & (!\inst|yfsm.s2~regout\ & (!\inst|yfsm.s8~regout\ & !\inst|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst|yfsm.s2~regout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst1|Mux4~1_combout\);

-- Location: LCCOMB_X1_Y33_N16
\inst1|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~2_combout\ = (\inst1|Mux4~1_combout\ & (!\inst|WideOr11~0_combout\ & (!\inst|yfsm.s6~regout\ & !\inst|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Mux4~1_combout\,
	datab => \inst|WideOr11~0_combout\,
	datac => \inst|yfsm.s6~regout\,
	datad => \inst|yfsm.s1~regout\,
	combout => \inst1|Mux4~2_combout\);

-- Location: LCCOMB_X1_Y33_N10
\inst|WideOr12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr12~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|yfsm.s6~regout\) # ((\inst|yfsm.s7~regout\) # (\inst|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst|yfsm.s6~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s4~regout\,
	combout => \inst|WideOr12~0_combout\);

-- Location: LCCOMB_X1_Y33_N26
\inst|WideOr14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr14~0_combout\ = (\inst|yfsm.s5~regout\) # ((\inst|yfsm.s3~regout\) # ((\inst|yfsm.s7~regout\) # (\inst|yfsm.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s5~regout\,
	datab => \inst|yfsm.s3~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s1~regout\,
	combout => \inst|WideOr14~0_combout\);

-- Location: LCCOMB_X1_Y33_N0
\inst|WideOr13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WideOr13~0_combout\ = (\inst|yfsm.s3~regout\) # ((\inst|yfsm.s2~regout\) # ((\inst|yfsm.s7~regout\) # (\inst|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|yfsm.s3~regout\,
	datab => \inst|yfsm.s2~regout\,
	datac => \inst|yfsm.s7~regout\,
	datad => \inst|yfsm.s6~regout\,
	combout => \inst|WideOr13~0_combout\);

-- Location: LCCOMB_X1_Y33_N30
\inst2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux0~0_combout\ = (\inst|WideOr13~0_combout\) # (\inst|WideOr12~0_combout\ $ (!\inst|WideOr14~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr12~0_combout\,
	datab => \inst|WideOr14~0_combout\,
	datad => \inst|WideOr13~0_combout\,
	combout => \inst2|Mux0~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\inst2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (\inst|WideOr14~0_combout\ $ (!\inst|WideOr13~0_combout\)) # (!\inst|WideOr12~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|WideOr13~0_combout\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst2|Mux1~0_combout\);

-- Location: LCCOMB_X1_Y32_N30
\inst2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux2~0_combout\ = (!\inst|WideOr14~0_combout\ & (\inst|WideOr13~0_combout\ & !\inst|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|WideOr13~0_combout\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst2|Mux2~0_combout\);

-- Location: LCCOMB_X1_Y32_N28
\inst2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux3~0_combout\ = (\inst|WideOr14~0_combout\ & (\inst|WideOr13~0_combout\ $ (!\inst|WideOr12~0_combout\))) # (!\inst|WideOr14~0_combout\ & (!\inst|WideOr13~0_combout\ & \inst|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|WideOr13~0_combout\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst2|Mux3~0_combout\);

-- Location: LCCOMB_X1_Y32_N14
\inst2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\inst|WideOr14~0_combout\) # ((!\inst|WideOr13~0_combout\ & \inst|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|WideOr13~0_combout\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst2|Mux4~0_combout\);

-- Location: LCCOMB_X1_Y32_N20
\inst2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux5~0_combout\ = (\inst|WideOr14~0_combout\ & ((\inst|WideOr13~0_combout\) # (!\inst|WideOr12~0_combout\))) # (!\inst|WideOr14~0_combout\ & (\inst|WideOr13~0_combout\ & !\inst|WideOr12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|WideOr13~0_combout\,
	datad => \inst|WideOr12~0_combout\,
	combout => \inst2|Mux5~0_combout\);

-- Location: LCCOMB_X1_Y33_N4
\inst2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|Mux6~0_combout\ = (\inst|yfsm.s8~regout\) # ((\inst|WideOr12~0_combout\ & ((!\inst|WideOr13~0_combout\) # (!\inst|WideOr14~0_combout\))) # (!\inst|WideOr12~0_combout\ & ((\inst|WideOr13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|WideOr12~0_combout\,
	datab => \inst|WideOr14~0_combout\,
	datac => \inst|yfsm.s8~regout\,
	datad => \inst|WideOr13~0_combout\,
	combout => \inst2|Mux6~0_combout\);

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(0));

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(1));

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(2));

-- Location: PIN_F6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(3));

-- Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(4));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(5));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_leds[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_leds(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(0));

-- Location: PIN_W12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(1));

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(2));

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(3));

-- Location: PIN_V24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(4));

-- Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(5));

-- Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\ID_negleds[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ID_negleds(6));

-- Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(0));

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(1));

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(2));

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(3));

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(4));

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(5));

-- Location: PIN_B2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_leds[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst2|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_leds(6));

-- Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(0));

-- Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(1));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(2));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(3));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(4));

-- Location: PIN_B4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(5));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\State_negleds[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_State_negleds(6));
END structure;


