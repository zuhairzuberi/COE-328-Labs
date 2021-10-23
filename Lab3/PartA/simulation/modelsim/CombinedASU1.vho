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

-- DATE "10/12/2021 16:04:58"

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

ENTITY 	CombinedASU1 IS
    PORT (
	Cout : OUT std_logic;
	Cin : IN std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	Y : IN std_logic_vector(3 DOWNTO 0);
	display : OUT std_logic_vector(0 TO 6);
	neg_display : OUT std_logic_vector(0 TO 6)
	);
END CombinedASU1;

-- Design Ports Information
-- Cout	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[0]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[1]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[2]	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[3]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[4]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[5]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- display[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[0]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[1]	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[2]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[3]	=>  Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[4]	=>  Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[5]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- neg_display[6]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Cin	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF CombinedASU1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Y : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_display : std_logic_vector(0 TO 6);
SIGNAL ww_neg_display : std_logic_vector(0 TO 6);
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add2~16_combout\ : std_logic;
SIGNAL \inst|neg~0_combout\ : std_logic;
SIGNAL \inst|neg~1_combout\ : std_logic;
SIGNAL \Cin~combout\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|Add2~1_cout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|Add2~13_combout\ : std_logic;
SIGNAL \inst|Add0~1_combout\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Add2~15_combout\ : std_logic;
SIGNAL \inst|Add0~3_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|neg~2_combout\ : std_logic;
SIGNAL \inst|S[2]~1_combout\ : std_logic;
SIGNAL \inst|S[1]~0_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|S[3]~2_combout\ : std_logic;
SIGNAL \inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst1|Mux4~0_combout\ : std_logic;
SIGNAL \inst1|Mux5~0_combout\ : std_logic;
SIGNAL \inst1|Mux6~0_combout\ : std_logic;
SIGNAL \Y~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux4~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

Cout <= ww_Cout;
ww_Cin <= Cin;
ww_X <= X;
ww_Y <= Y;
display <= ww_display;
neg_display <= ww_neg_display;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst1|ALT_INV_Mux5~0_combout\ <= NOT \inst1|Mux5~0_combout\;
\inst1|ALT_INV_Mux4~0_combout\ <= NOT \inst1|Mux4~0_combout\;
\inst1|ALT_INV_Mux3~0_combout\ <= NOT \inst1|Mux3~0_combout\;
\inst1|ALT_INV_Mux2~0_combout\ <= NOT \inst1|Mux2~0_combout\;
\inst1|ALT_INV_Mux1~0_combout\ <= NOT \inst1|Mux1~0_combout\;
\inst1|ALT_INV_Mux0~0_combout\ <= NOT \inst1|Mux0~0_combout\;

-- Location: LCCOMB_X20_Y33_N2
\inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\Y~combout\(0) & ((\X~combout\(0) & (!\inst|Add2~1_cout\)) # (!\X~combout\(0) & ((\inst|Add2~1_cout\) # (GND))))) # (!\Y~combout\(0) & ((\X~combout\(0) & (\inst|Add2~1_cout\ & VCC)) # (!\X~combout\(0) & (!\inst|Add2~1_cout\))))
-- \inst|Add2~3\ = CARRY((\Y~combout\(0) & ((!\inst|Add2~1_cout\) # (!\X~combout\(0)))) # (!\Y~combout\(0) & (!\X~combout\(0) & !\inst|Add2~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \X~combout\(0),
	datad => VCC,
	cin => \inst|Add2~1_cout\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X20_Y33_N6
\inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\Y~combout\(2) & ((\X~combout\(2) & (!\inst|Add2~5\)) # (!\X~combout\(2) & ((\inst|Add2~5\) # (GND))))) # (!\Y~combout\(2) & ((\X~combout\(2) & (\inst|Add2~5\ & VCC)) # (!\X~combout\(2) & (!\inst|Add2~5\))))
-- \inst|Add2~7\ = CARRY((\Y~combout\(2) & ((!\inst|Add2~5\) # (!\X~combout\(2)))) # (!\Y~combout\(2) & (!\X~combout\(2) & !\inst|Add2~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \X~combout\(2),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X20_Y33_N8
\inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\X~combout\(3) $ (\Y~combout\(3) $ (\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\X~combout\(3) & ((!\inst|Add2~7\) # (!\Y~combout\(3)))) # (!\X~combout\(3) & (!\Y~combout\(3) & !\inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(3),
	datab => \Y~combout\(3),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X20_Y33_N10
\inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = \inst|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\);

-- Location: LCCOMB_X19_Y33_N6
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = ((\inst|Add2~14_combout\ $ (\inst|Add0~1_combout\ $ (!\inst|Add0~7\)))) # (GND)
-- \inst|Add0~9\ = CARRY((\inst|Add2~14_combout\ & ((\inst|Add0~1_combout\) # (!\inst|Add0~7\))) # (!\inst|Add2~14_combout\ & (\inst|Add0~1_combout\ & !\inst|Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~14_combout\,
	datab => \inst|Add0~1_combout\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X19_Y32_N0
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\X~combout\(3) & !\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(3),
	datad => \Cin~combout\,
	combout => \inst|Add0~0_combout\);

-- Location: LCCOMB_X20_Y33_N18
\inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = (\Cin~combout\ & ((\inst|Add2~6_combout\))) # (!\Cin~combout\ & (\Y~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \Y~combout\(2),
	datad => \inst|Add2~6_combout\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X19_Y32_N2
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\X~combout\(1) & !\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X~combout\(1),
	datad => \Cin~combout\,
	combout => \inst|Add0~2_combout\);

-- Location: LCCOMB_X20_Y33_N16
\inst|Add2~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~16_combout\ = (\Cin~combout\ & ((\inst|Add2~2_combout\))) # (!\Cin~combout\ & (\Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datac => \Cin~combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|Add2~16_combout\);

-- Location: LCCOMB_X20_Y33_N26
\inst|neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~0_combout\ = (\Y~combout\(1) & (((!\X~combout\(0) & \Y~combout\(0))) # (!\X~combout\(1)))) # (!\Y~combout\(1) & (!\X~combout\(0) & (\Y~combout\(0) & !\X~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(0),
	datac => \Y~combout\(0),
	datad => \X~combout\(1),
	combout => \inst|neg~0_combout\);

-- Location: LCCOMB_X20_Y33_N20
\inst|neg~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~1_combout\ = (\inst|neg~0_combout\ & ((\Y~combout\(2)) # (!\X~combout\(2)))) # (!\inst|neg~0_combout\ & (\Y~combout\(2) & !\X~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|neg~0_combout\,
	datac => \Y~combout\(2),
	datad => \X~combout\(2),
	combout => \inst|neg~1_combout\);

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : cycloneii_io
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
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : cycloneii_io
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
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : cycloneii_io
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
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Cin~I\ : cycloneii_io
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
	padio => ww_Cin,
	combout => \Cin~combout\);

-- Location: LCCOMB_X20_Y33_N28
\inst|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = (\inst|Add2~10_combout\ & \Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~10_combout\,
	datac => \Cin~combout\,
	combout => \inst|Add2~12_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : cycloneii_io
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
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
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
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
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
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
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
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: LCCOMB_X20_Y33_N0
\inst|Add2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~1_cout\ = CARRY(\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datad => VCC,
	cout => \inst|Add2~1_cout\);

-- Location: LCCOMB_X20_Y33_N4
\inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\Y~combout\(1) $ (\X~combout\(1) $ (\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\Y~combout\(1) & (\X~combout\(1) & !\inst|Add2~3\)) # (!\Y~combout\(1) & ((\X~combout\(1)) # (!\inst|Add2~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \X~combout\(1),
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X20_Y33_N30
\inst|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~13_combout\ = (\Cin~combout\ & (\inst|Add2~8_combout\)) # (!\Cin~combout\ & ((\Y~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \inst|Add2~8_combout\,
	datad => \Y~combout\(3),
	combout => \inst|Add2~13_combout\);

-- Location: LCCOMB_X20_Y33_N24
\inst|Add0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~1_combout\ = (\X~combout\(2) & !\Cin~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(2),
	datac => \Cin~combout\,
	combout => \inst|Add0~1_combout\);

-- Location: LCCOMB_X20_Y33_N12
\inst|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add2~15_combout\ = (\Cin~combout\ & ((\inst|Add2~4_combout\))) # (!\Cin~combout\ & (\Y~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(1),
	datab => \Cin~combout\,
	datac => \inst|Add2~4_combout\,
	combout => \inst|Add2~15_combout\);

-- Location: LCCOMB_X20_Y33_N14
\inst|Add0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~3_combout\ = (\Cin~combout\) # (\X~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Cin~combout\,
	datac => \X~combout\(0),
	combout => \inst|Add0~3_combout\);

-- Location: LCCOMB_X19_Y33_N2
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|Add2~16_combout\ & (\inst|Add0~3_combout\ $ (VCC))) # (!\inst|Add2~16_combout\ & (\inst|Add0~3_combout\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|Add2~16_combout\ & \inst|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~16_combout\,
	datab => \inst|Add0~3_combout\,
	datad => VCC,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X19_Y33_N4
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|Add0~2_combout\ & ((\inst|Add2~15_combout\ & (\inst|Add0~5\ & VCC)) # (!\inst|Add2~15_combout\ & (!\inst|Add0~5\)))) # (!\inst|Add0~2_combout\ & ((\inst|Add2~15_combout\ & (!\inst|Add0~5\)) # (!\inst|Add2~15_combout\ & 
-- ((\inst|Add0~5\) # (GND)))))
-- \inst|Add0~7\ = CARRY((\inst|Add0~2_combout\ & (!\inst|Add2~15_combout\ & !\inst|Add0~5\)) # (!\inst|Add0~2_combout\ & ((!\inst|Add0~5\) # (!\inst|Add2~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add2~15_combout\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X19_Y33_N8
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|Add0~0_combout\ & ((\inst|Add2~13_combout\ & (\inst|Add0~9\ & VCC)) # (!\inst|Add2~13_combout\ & (!\inst|Add0~9\)))) # (!\inst|Add0~0_combout\ & ((\inst|Add2~13_combout\ & (!\inst|Add0~9\)) # (!\inst|Add2~13_combout\ & 
-- ((\inst|Add0~9\) # (GND)))))
-- \inst|Add0~11\ = CARRY((\inst|Add0~0_combout\ & (!\inst|Add2~13_combout\ & !\inst|Add0~9\)) # (!\inst|Add0~0_combout\ & ((!\inst|Add0~9\) # (!\inst|Add2~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~0_combout\,
	datab => \inst|Add2~13_combout\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X19_Y33_N10
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|Add2~12_combout\ $ (\inst|Add0~11\ $ (!\Cin~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add2~12_combout\,
	datad => \Cin~combout\,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
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
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X20_Y33_N22
\inst|neg~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|neg~2_combout\ = (\Cin~combout\ & ((\inst|neg~1_combout\ & ((\Y~combout\(3)) # (!\X~combout\(3)))) # (!\inst|neg~1_combout\ & (!\X~combout\(3) & \Y~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|neg~1_combout\,
	datab => \Cin~combout\,
	datac => \X~combout\(3),
	datad => \Y~combout\(3),
	combout => \inst|neg~2_combout\);

-- Location: LCCOMB_X19_Y33_N20
\inst|S[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[2]~1_combout\ = \inst|Add0~8_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add0~4_combout\) # (\inst|Add0~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add0~4_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|neg~2_combout\,
	combout => \inst|S[2]~1_combout\);

-- Location: LCCOMB_X19_Y33_N0
\inst|S[1]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[1]~0_combout\ = \inst|Add0~6_combout\ $ (((\inst|Add0~4_combout\ & \inst|neg~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Add0~4_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|neg~2_combout\,
	combout => \inst|S[1]~0_combout\);

-- Location: LCCOMB_X19_Y33_N30
\inst|Add4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|Add0~6_combout\) # (\inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~6_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Add4~0_combout\);

-- Location: LCCOMB_X19_Y33_N24
\inst|S[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|S[3]~2_combout\ = \inst|Add0~10_combout\ $ (((\inst|neg~2_combout\ & ((\inst|Add0~8_combout\) # (\inst|Add4~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~8_combout\,
	datab => \inst|Add4~0_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|neg~2_combout\,
	combout => \inst|S[3]~2_combout\);

-- Location: LCCOMB_X19_Y33_N26
\inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux0~0_combout\ = (!\inst|S[1]~0_combout\ & ((\inst|S[2]~1_combout\ & (\inst|S[3]~2_combout\ $ (!\inst|Add0~4_combout\))) # (!\inst|S[2]~1_combout\ & (!\inst|S[3]~2_combout\ & \inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y33_N28
\inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (\inst|S[2]~1_combout\ & ((\inst|S[1]~0_combout\ & ((\inst|S[3]~2_combout\) # (!\inst|Add0~4_combout\))) # (!\inst|S[1]~0_combout\ & (\inst|S[3]~2_combout\ $ (\inst|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y33_N22
\inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux2~0_combout\ = (\inst|S[2]~1_combout\ & (\inst|S[3]~2_combout\ & ((\inst|S[1]~0_combout\) # (!\inst|Add0~4_combout\)))) # (!\inst|S[2]~1_combout\ & (\inst|S[1]~0_combout\ & (!\inst|S[3]~2_combout\ & !\inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y33_N16
\inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux3~0_combout\ = (\inst|S[2]~1_combout\ & ((\inst|S[1]~0_combout\ & ((\inst|Add0~4_combout\))) # (!\inst|S[1]~0_combout\ & (!\inst|S[3]~2_combout\ & !\inst|Add0~4_combout\)))) # (!\inst|S[2]~1_combout\ & ((\inst|S[1]~0_combout\ & 
-- (\inst|S[3]~2_combout\)) # (!\inst|S[1]~0_combout\ & ((\inst|Add0~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y33_N18
\inst1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux4~0_combout\ = (\inst|S[2]~1_combout\ & (!\inst|S[3]~2_combout\ & ((\inst|Add0~4_combout\) # (!\inst|S[1]~0_combout\)))) # (!\inst|S[2]~1_combout\ & (((\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y33_N12
\inst1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux5~0_combout\ = (\inst|S[2]~1_combout\ & (\inst|Add0~4_combout\ & (\inst|S[1]~0_combout\ $ (\inst|S[3]~2_combout\)))) # (!\inst|S[2]~1_combout\ & (!\inst|S[3]~2_combout\ & ((\inst|S[1]~0_combout\) # (\inst|Add0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y33_N14
\inst1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|Mux6~0_combout\ = (\inst|Add0~4_combout\ & ((\inst|S[3]~2_combout\) # (\inst|S[2]~1_combout\ $ (\inst|S[1]~0_combout\)))) # (!\inst|Add0~4_combout\ & ((\inst|S[1]~0_combout\) # (\inst|S[2]~1_combout\ $ (\inst|S[3]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|S[2]~1_combout\,
	datab => \inst|S[1]~0_combout\,
	datac => \inst|S[3]~2_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst1|Mux6~0_combout\);

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Cout~I\ : cycloneii_io
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
	datain => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Cout);

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[0]~I\ : cycloneii_io
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
	padio => ww_display(0));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[1]~I\ : cycloneii_io
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
	padio => ww_display(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[2]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(2));

-- Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[3]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(3));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[4]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(4));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[5]~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(5));

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\display[6]~I\ : cycloneii_io
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
	datain => \inst1|Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_display(6));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[0]~I\ : cycloneii_io
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
	padio => ww_neg_display(0));

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[1]~I\ : cycloneii_io
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
	padio => ww_neg_display(1));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[2]~I\ : cycloneii_io
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
	padio => ww_neg_display(2));

-- Location: PIN_A19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[3]~I\ : cycloneii_io
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
	padio => ww_neg_display(3));

-- Location: PIN_V17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[4]~I\ : cycloneii_io
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
	padio => ww_neg_display(4));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[5]~I\ : cycloneii_io
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
	padio => ww_neg_display(5));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\neg_display[6]~I\ : cycloneii_io
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
	datain => \inst|neg~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_neg_display(6));
END structure;


