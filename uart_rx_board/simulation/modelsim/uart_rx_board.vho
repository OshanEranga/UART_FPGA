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
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "04/06/2026 04:26:44"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	rx_top IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(1 DOWNTO 0);
	UART_RX : IN std_logic;
	LED : BUFFER std_logic_vector(7 DOWNTO 0);
	SEG : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END rx_top;

-- Design Ports Information
-- KEY[0]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LED[0]	=>  Location: PIN_A15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[2]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[3]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[4]	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[5]	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[6]	=>  Location: PIN_B1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- LED[7]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[0]	=>  Location: PIN_A3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[1]	=>  Location: PIN_B3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[2]	=>  Location: PIN_A2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[3]	=>  Location: PIN_A5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[4]	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[5]	=>  Location: PIN_B6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SEG[6]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- CLOCK_50	=>  Location: PIN_R8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RX	=>  Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF rx_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_UART_RX : std_logic;
SIGNAL ww_LED : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SEG : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \LED[0]~output_o\ : std_logic;
SIGNAL \LED[1]~output_o\ : std_logic;
SIGNAL \LED[2]~output_o\ : std_logic;
SIGNAL \LED[3]~output_o\ : std_logic;
SIGNAL \LED[4]~output_o\ : std_logic;
SIGNAL \LED[5]~output_o\ : std_logic;
SIGNAL \LED[6]~output_o\ : std_logic;
SIGNAL \LED[7]~output_o\ : std_logic;
SIGNAL \SEG[0]~output_o\ : std_logic;
SIGNAL \SEG[1]~output_o\ : std_logic;
SIGNAL \SEG[2]~output_o\ : std_logic;
SIGNAL \SEG[3]~output_o\ : std_logic;
SIGNAL \SEG[4]~output_o\ : std_logic;
SIGNAL \SEG[5]~output_o\ : std_logic;
SIGNAL \SEG[6]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \UART_RX~input_o\ : std_logic;
SIGNAL \U_RX|r_rx_sync_0~0_combout\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_RX|r_rx_sync_0~q\ : std_logic;
SIGNAL \U_RX|r_rx_sync_1~feeder_combout\ : std_logic;
SIGNAL \U_RX|r_rx_sync_1~q\ : std_logic;
SIGNAL \U_RX|r_clk_count[0]~13_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[10]~34\ : std_logic;
SIGNAL \U_RX|r_clk_count[11]~35_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[11]~36\ : std_logic;
SIGNAL \U_RX|r_clk_count[12]~37_combout\ : std_logic;
SIGNAL \U_RX|Equal0~1_combout\ : std_logic;
SIGNAL \U_RX|Equal0~0_combout\ : std_logic;
SIGNAL \U_RX|Equal0~3_combout\ : std_logic;
SIGNAL \U_RX|Selector18~0_combout\ : std_logic;
SIGNAL \U_RX|r_state.RX_START~q\ : std_logic;
SIGNAL \U_RX|LessThan1~2_combout\ : std_logic;
SIGNAL \U_RX|Selector20~2_combout\ : std_logic;
SIGNAL \U_RX|LessThan1~3_combout\ : std_logic;
SIGNAL \U_RX|LessThan1~4_combout\ : std_logic;
SIGNAL \U_RX|LessThan1~5_combout\ : std_logic;
SIGNAL \U_RX|LessThan1~6_combout\ : std_logic;
SIGNAL \U_RX|Selector20~0_combout\ : std_logic;
SIGNAL \U_RX|Selector20~1_combout\ : std_logic;
SIGNAL \U_RX|Selector20~3_combout\ : std_logic;
SIGNAL \U_RX|r_state.RX_STOP~q\ : std_logic;
SIGNAL \U_RX|o_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \U_RX|r_state.CLEANUP~q\ : std_logic;
SIGNAL \U_RX|r_clk_count[12]~40_combout\ : std_logic;
SIGNAL \U_RX|Equal0~2_combout\ : std_logic;
SIGNAL \U_RX|Selector19~0_combout\ : std_logic;
SIGNAL \U_RX|Selector19~1_combout\ : std_logic;
SIGNAL \U_RX|Selector17~0_combout\ : std_logic;
SIGNAL \U_RX|r_state.IDLE~q\ : std_logic;
SIGNAL \U_RX|Selector0~0_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[12]~39_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[0]~14\ : std_logic;
SIGNAL \U_RX|r_clk_count[1]~15_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[1]~16\ : std_logic;
SIGNAL \U_RX|r_clk_count[2]~17_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[2]~18\ : std_logic;
SIGNAL \U_RX|r_clk_count[3]~19_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[3]~20\ : std_logic;
SIGNAL \U_RX|r_clk_count[4]~21_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[4]~22\ : std_logic;
SIGNAL \U_RX|r_clk_count[5]~23_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[5]~24\ : std_logic;
SIGNAL \U_RX|r_clk_count[6]~25_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[6]~26\ : std_logic;
SIGNAL \U_RX|r_clk_count[7]~27_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[7]~28\ : std_logic;
SIGNAL \U_RX|r_clk_count[8]~29_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[8]~30\ : std_logic;
SIGNAL \U_RX|r_clk_count[9]~31_combout\ : std_logic;
SIGNAL \U_RX|r_clk_count[9]~32\ : std_logic;
SIGNAL \U_RX|r_clk_count[10]~33_combout\ : std_logic;
SIGNAL \U_RX|LessThan1~7_combout\ : std_logic;
SIGNAL \U_RX|Selector16~2_combout\ : std_logic;
SIGNAL \U_RX|Selector19~3_combout\ : std_logic;
SIGNAL \U_RX|Selector19~2_combout\ : std_logic;
SIGNAL \U_RX|Selector19~4_combout\ : std_logic;
SIGNAL \U_RX|r_state.RX_DATA~q\ : std_logic;
SIGNAL \U_RX|Selector15~2_combout\ : std_logic;
SIGNAL \U_RX|Selector15~3_combout\ : std_logic;
SIGNAL \U_RX|Selector14~0_combout\ : std_logic;
SIGNAL \U_RX|Selector14~1_combout\ : std_logic;
SIGNAL \U_RX|Selector14~2_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~0_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[0]~0_combout\ : std_logic;
SIGNAL \led_reg[0]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Selector0~1_combout\ : std_logic;
SIGNAL \U_RX|o_rx_dv~q\ : std_logic;
SIGNAL \U_RX|Decoder0~1_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[1]~1_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[1]~feeder_combout\ : std_logic;
SIGNAL \led_reg[1]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~2_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[2]~2_combout\ : std_logic;
SIGNAL \led_reg[2]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~3_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[3]~3_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[3]~feeder_combout\ : std_logic;
SIGNAL \led_reg[3]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~4_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[4]~4_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[4]~feeder_combout\ : std_logic;
SIGNAL \led_reg[4]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~5_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[5]~5_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[5]~feeder_combout\ : std_logic;
SIGNAL \led_reg[5]~feeder_combout\ : std_logic;
SIGNAL \U_RX|Decoder0~6_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[6]~6_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[6]~feeder_combout\ : std_logic;
SIGNAL \led_reg[6]~feeder_combout\ : std_logic;
SIGNAL \U_RX|r_rx_byte[7]~7_combout\ : std_logic;
SIGNAL \U_RX|o_rx_byte[7]~feeder_combout\ : std_logic;
SIGNAL \led_reg[7]~feeder_combout\ : std_logic;
SIGNAL \U_SEG|WideOr6~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr5~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr4~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr3~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr2~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr1~0_combout\ : std_logic;
SIGNAL \U_SEG|WideOr0~0_combout\ : std_logic;
SIGNAL led_reg : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_RX|r_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_RX|r_clk_count\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \U_RX|r_bit_index\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \U_RX|o_rx_byte\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \U_SEG|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_UART_RX <= UART_RX;
LED <= ww_LED;
SEG <= ww_SEG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\KEY[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \KEY[1]~input_o\);

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);
\U_SEG|ALT_INV_WideOr0~0_combout\ <= NOT \U_SEG|WideOr0~0_combout\;

-- Location: IOOBUF_X38_Y34_N16
\LED[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(0),
	devoe => ww_devoe,
	o => \LED[0]~output_o\);

-- Location: IOOBUF_X49_Y34_N2
\LED[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(1),
	devoe => ww_devoe,
	o => \LED[1]~output_o\);

-- Location: IOOBUF_X49_Y34_N9
\LED[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(2),
	devoe => ww_devoe,
	o => \LED[2]~output_o\);

-- Location: IOOBUF_X40_Y34_N2
\LED[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(3),
	devoe => ww_devoe,
	o => \LED[3]~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\LED[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(4),
	devoe => ww_devoe,
	o => \LED[4]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\LED[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(5),
	devoe => ww_devoe,
	o => \LED[5]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\LED[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(6),
	devoe => ww_devoe,
	o => \LED[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\LED[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => led_reg(7),
	devoe => ww_devoe,
	o => \LED[7]~output_o\);

-- Location: IOOBUF_X7_Y34_N16
\SEG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr6~0_combout\,
	devoe => ww_devoe,
	o => \SEG[0]~output_o\);

-- Location: IOOBUF_X3_Y34_N2
\SEG[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr5~0_combout\,
	devoe => ww_devoe,
	o => \SEG[1]~output_o\);

-- Location: IOOBUF_X7_Y34_N9
\SEG[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr4~0_combout\,
	devoe => ww_devoe,
	o => \SEG[2]~output_o\);

-- Location: IOOBUF_X14_Y34_N23
\SEG[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \SEG[3]~output_o\);

-- Location: IOOBUF_X5_Y34_N16
\SEG[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \SEG[4]~output_o\);

-- Location: IOOBUF_X16_Y34_N9
\SEG[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \SEG[5]~output_o\);

-- Location: IOOBUF_X20_Y34_N23
\SEG[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_SEG|ALT_INV_WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \SEG[6]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G18
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: IOIBUF_X25_Y34_N15
\UART_RX~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_UART_RX,
	o => \UART_RX~input_o\);

-- Location: LCCOMB_X29_Y32_N8
\U_RX|r_rx_sync_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_sync_0~0_combout\ = !\UART_RX~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \UART_RX~input_o\,
	combout => \U_RX|r_rx_sync_0~0_combout\);

-- Location: IOIBUF_X0_Y16_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: CLKCTRL_G2
\KEY[1]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \KEY[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \KEY[1]~inputclkctrl_outclk\);

-- Location: FF_X29_Y32_N9
\U_RX|r_rx_sync_0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_sync_0~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_sync_0~q\);

-- Location: LCCOMB_X37_Y32_N2
\U_RX|r_rx_sync_1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_sync_1~feeder_combout\ = \U_RX|r_rx_sync_0~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|r_rx_sync_0~q\,
	combout => \U_RX|r_rx_sync_1~feeder_combout\);

-- Location: FF_X37_Y32_N3
\U_RX|r_rx_sync_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_sync_1~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_sync_1~q\);

-- Location: LCCOMB_X36_Y32_N2
\U_RX|r_clk_count[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[0]~13_combout\ = \U_RX|r_clk_count\(0) $ (VCC)
-- \U_RX|r_clk_count[0]~14\ = CARRY(\U_RX|r_clk_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(0),
	datad => VCC,
	combout => \U_RX|r_clk_count[0]~13_combout\,
	cout => \U_RX|r_clk_count[0]~14\);

-- Location: LCCOMB_X36_Y32_N22
\U_RX|r_clk_count[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[10]~33_combout\ = (\U_RX|r_clk_count\(10) & (\U_RX|r_clk_count[9]~32\ $ (GND))) # (!\U_RX|r_clk_count\(10) & (!\U_RX|r_clk_count[9]~32\ & VCC))
-- \U_RX|r_clk_count[10]~34\ = CARRY((\U_RX|r_clk_count\(10) & !\U_RX|r_clk_count[9]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(10),
	datad => VCC,
	cin => \U_RX|r_clk_count[9]~32\,
	combout => \U_RX|r_clk_count[10]~33_combout\,
	cout => \U_RX|r_clk_count[10]~34\);

-- Location: LCCOMB_X36_Y32_N24
\U_RX|r_clk_count[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[11]~35_combout\ = (\U_RX|r_clk_count\(11) & (!\U_RX|r_clk_count[10]~34\)) # (!\U_RX|r_clk_count\(11) & ((\U_RX|r_clk_count[10]~34\) # (GND)))
-- \U_RX|r_clk_count[11]~36\ = CARRY((!\U_RX|r_clk_count[10]~34\) # (!\U_RX|r_clk_count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(11),
	datad => VCC,
	cin => \U_RX|r_clk_count[10]~34\,
	combout => \U_RX|r_clk_count[11]~35_combout\,
	cout => \U_RX|r_clk_count[11]~36\);

-- Location: LCCOMB_X36_Y32_N26
\U_RX|r_clk_count[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[12]~37_combout\ = \U_RX|r_clk_count\(12) $ (!\U_RX|r_clk_count[11]~36\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(12),
	cin => \U_RX|r_clk_count[11]~36\,
	combout => \U_RX|r_clk_count[12]~37_combout\);

-- Location: FF_X36_Y32_N27
\U_RX|r_clk_count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[12]~37_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(12));

-- Location: LCCOMB_X37_Y32_N14
\U_RX|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Equal0~1_combout\ = (!\U_RX|r_clk_count\(4) & (!\U_RX|r_clk_count\(2) & (\U_RX|r_clk_count\(3) & \U_RX|r_clk_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(4),
	datab => \U_RX|r_clk_count\(2),
	datac => \U_RX|r_clk_count\(3),
	datad => \U_RX|r_clk_count\(5),
	combout => \U_RX|Equal0~1_combout\);

-- Location: LCCOMB_X37_Y32_N8
\U_RX|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Equal0~0_combout\ = (!\U_RX|r_clk_count\(7) & (!\U_RX|r_clk_count\(8) & (\U_RX|r_clk_count\(1) & \U_RX|r_clk_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(7),
	datab => \U_RX|r_clk_count\(8),
	datac => \U_RX|r_clk_count\(1),
	datad => \U_RX|r_clk_count\(0),
	combout => \U_RX|Equal0~0_combout\);

-- Location: LCCOMB_X37_Y32_N20
\U_RX|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Equal0~3_combout\ = (!\U_RX|r_clk_count\(12) & (\U_RX|Equal0~1_combout\ & (\U_RX|Equal0~0_combout\ & \U_RX|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(12),
	datab => \U_RX|Equal0~1_combout\,
	datac => \U_RX|Equal0~0_combout\,
	datad => \U_RX|Equal0~2_combout\,
	combout => \U_RX|Equal0~3_combout\);

-- Location: LCCOMB_X37_Y32_N12
\U_RX|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector18~0_combout\ = (\U_RX|r_state.IDLE~q\ & (((\U_RX|r_state.RX_START~q\ & !\U_RX|Equal0~3_combout\)))) # (!\U_RX|r_state.IDLE~q\ & ((\U_RX|r_rx_sync_1~q\) # ((\U_RX|r_state.RX_START~q\ & !\U_RX|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.IDLE~q\,
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_state.RX_START~q\,
	datad => \U_RX|Equal0~3_combout\,
	combout => \U_RX|Selector18~0_combout\);

-- Location: FF_X37_Y32_N13
\U_RX|r_state.RX_START\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector18~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_state.RX_START~q\);

-- Location: LCCOMB_X35_Y32_N12
\U_RX|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~2_combout\ = (!\U_RX|r_clk_count\(10) & !\U_RX|r_clk_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(10),
	datad => \U_RX|r_clk_count\(11),
	combout => \U_RX|LessThan1~2_combout\);

-- Location: LCCOMB_X37_Y32_N4
\U_RX|Selector20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector20~2_combout\ = (\U_RX|r_state.RX_STOP~q\ & (!\U_RX|r_state.CLEANUP~q\ & (!\U_RX|Selector19~1_combout\ & \U_RX|r_state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_STOP~q\,
	datab => \U_RX|r_state.CLEANUP~q\,
	datac => \U_RX|Selector19~1_combout\,
	datad => \U_RX|r_state.IDLE~q\,
	combout => \U_RX|Selector20~2_combout\);

-- Location: LCCOMB_X35_Y32_N4
\U_RX|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~3_combout\ = (!\U_RX|r_clk_count\(9) & (!\U_RX|r_clk_count\(11) & (!\U_RX|r_clk_count\(7) & !\U_RX|r_clk_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(9),
	datab => \U_RX|r_clk_count\(11),
	datac => \U_RX|r_clk_count\(7),
	datad => \U_RX|r_clk_count\(8),
	combout => \U_RX|LessThan1~3_combout\);

-- Location: LCCOMB_X35_Y32_N8
\U_RX|LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~4_combout\ = ((!\U_RX|r_clk_count\(5) & !\U_RX|r_clk_count\(4))) # (!\U_RX|r_clk_count\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(5),
	datab => \U_RX|r_clk_count\(4),
	datad => \U_RX|r_clk_count\(6),
	combout => \U_RX|LessThan1~4_combout\);

-- Location: LCCOMB_X35_Y32_N18
\U_RX|LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~5_combout\ = (!\U_RX|r_clk_count\(3) & (((!\U_RX|r_clk_count\(1)) # (!\U_RX|r_clk_count\(2))) # (!\U_RX|r_clk_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(0),
	datab => \U_RX|r_clk_count\(2),
	datac => \U_RX|r_clk_count\(3),
	datad => \U_RX|r_clk_count\(1),
	combout => \U_RX|LessThan1~5_combout\);

-- Location: LCCOMB_X35_Y32_N20
\U_RX|LessThan1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~6_combout\ = (\U_RX|LessThan1~3_combout\ & ((\U_RX|LessThan1~4_combout\) # ((!\U_RX|r_clk_count\(5) & \U_RX|LessThan1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(5),
	datab => \U_RX|LessThan1~3_combout\,
	datac => \U_RX|LessThan1~4_combout\,
	datad => \U_RX|LessThan1~5_combout\,
	combout => \U_RX|LessThan1~6_combout\);

-- Location: LCCOMB_X35_Y32_N2
\U_RX|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector20~0_combout\ = (!\U_RX|LessThan1~2_combout\ & (\U_RX|r_state.RX_DATA~q\ & (\U_RX|r_clk_count\(12) & !\U_RX|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|LessThan1~2_combout\,
	datab => \U_RX|r_state.RX_DATA~q\,
	datac => \U_RX|r_clk_count\(12),
	datad => \U_RX|LessThan1~6_combout\,
	combout => \U_RX|Selector20~0_combout\);

-- Location: LCCOMB_X35_Y32_N24
\U_RX|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector20~1_combout\ = (\U_RX|r_bit_index\(2) & (\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(1) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(2),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_bit_index\(1),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Selector20~1_combout\);

-- Location: LCCOMB_X37_Y32_N22
\U_RX|Selector20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector20~3_combout\ = (!\U_RX|o_rx_byte[0]~0_combout\ & ((\U_RX|Selector20~2_combout\) # (\U_RX|Selector20~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|o_rx_byte[0]~0_combout\,
	datac => \U_RX|Selector20~2_combout\,
	datad => \U_RX|Selector20~1_combout\,
	combout => \U_RX|Selector20~3_combout\);

-- Location: FF_X37_Y32_N23
\U_RX|r_state.RX_STOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector20~3_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_state.RX_STOP~q\);

-- Location: LCCOMB_X35_Y32_N6
\U_RX|o_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[0]~0_combout\ = (!\U_RX|LessThan1~2_combout\ & (\U_RX|r_clk_count\(12) & (\U_RX|r_state.RX_STOP~q\ & !\U_RX|LessThan1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|LessThan1~2_combout\,
	datab => \U_RX|r_clk_count\(12),
	datac => \U_RX|r_state.RX_STOP~q\,
	datad => \U_RX|LessThan1~6_combout\,
	combout => \U_RX|o_rx_byte[0]~0_combout\);

-- Location: FF_X35_Y32_N7
\U_RX|r_state.CLEANUP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[0]~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_state.CLEANUP~q\);

-- Location: LCCOMB_X37_Y32_N18
\U_RX|r_clk_count[12]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[12]~40_combout\ = (!\U_RX|r_state.CLEANUP~q\ & (((\U_RX|r_rx_sync_1~q\) # (!\U_RX|Equal0~3_combout\)) # (!\U_RX|r_state.RX_START~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_START~q\,
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_state.CLEANUP~q\,
	datad => \U_RX|Equal0~3_combout\,
	combout => \U_RX|r_clk_count[12]~40_combout\);

-- Location: FF_X36_Y32_N25
\U_RX|r_clk_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[11]~35_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(11));

-- Location: LCCOMB_X36_Y32_N28
\U_RX|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Equal0~2_combout\ = (!\U_RX|r_clk_count\(10) & (\U_RX|r_clk_count\(9) & (!\U_RX|r_clk_count\(6) & \U_RX|r_clk_count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(10),
	datab => \U_RX|r_clk_count\(9),
	datac => \U_RX|r_clk_count\(6),
	datad => \U_RX|r_clk_count\(11),
	combout => \U_RX|Equal0~2_combout\);

-- Location: LCCOMB_X37_Y32_N28
\U_RX|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector19~0_combout\ = (!\U_RX|r_clk_count\(12) & \U_RX|r_state.RX_START~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|r_clk_count\(12),
	datad => \U_RX|r_state.RX_START~q\,
	combout => \U_RX|Selector19~0_combout\);

-- Location: LCCOMB_X36_Y32_N0
\U_RX|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector19~1_combout\ = (\U_RX|Equal0~2_combout\ & (\U_RX|Equal0~1_combout\ & (\U_RX|Equal0~0_combout\ & \U_RX|Selector19~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|Equal0~2_combout\,
	datab => \U_RX|Equal0~1_combout\,
	datac => \U_RX|Equal0~0_combout\,
	datad => \U_RX|Selector19~0_combout\,
	combout => \U_RX|Selector19~1_combout\);

-- Location: LCCOMB_X37_Y32_N30
\U_RX|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector17~0_combout\ = (!\U_RX|r_state.CLEANUP~q\ & ((\U_RX|r_rx_sync_1~q\) # ((!\U_RX|Selector19~1_combout\ & \U_RX|r_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|Selector19~1_combout\,
	datab => \U_RX|r_state.CLEANUP~q\,
	datac => \U_RX|r_state.IDLE~q\,
	datad => \U_RX|r_rx_sync_1~q\,
	combout => \U_RX|Selector17~0_combout\);

-- Location: FF_X37_Y32_N31
\U_RX|r_state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector17~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_state.IDLE~q\);

-- Location: LCCOMB_X37_Y32_N10
\U_RX|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector0~0_combout\ = (!\U_RX|r_state.RX_STOP~q\ & !\U_RX|r_state.RX_DATA~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|r_state.RX_STOP~q\,
	datad => \U_RX|r_state.RX_DATA~q\,
	combout => \U_RX|Selector0~0_combout\);

-- Location: LCCOMB_X36_Y32_N30
\U_RX|r_clk_count[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[12]~39_combout\ = ((\U_RX|Selector19~1_combout\) # ((!\U_RX|Selector0~0_combout\ & \U_RX|LessThan1~7_combout\))) # (!\U_RX|r_state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.IDLE~q\,
	datab => \U_RX|Selector19~1_combout\,
	datac => \U_RX|Selector0~0_combout\,
	datad => \U_RX|LessThan1~7_combout\,
	combout => \U_RX|r_clk_count[12]~39_combout\);

-- Location: FF_X36_Y32_N3
\U_RX|r_clk_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[0]~13_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(0));

-- Location: LCCOMB_X36_Y32_N4
\U_RX|r_clk_count[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[1]~15_combout\ = (\U_RX|r_clk_count\(1) & (!\U_RX|r_clk_count[0]~14\)) # (!\U_RX|r_clk_count\(1) & ((\U_RX|r_clk_count[0]~14\) # (GND)))
-- \U_RX|r_clk_count[1]~16\ = CARRY((!\U_RX|r_clk_count[0]~14\) # (!\U_RX|r_clk_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(1),
	datad => VCC,
	cin => \U_RX|r_clk_count[0]~14\,
	combout => \U_RX|r_clk_count[1]~15_combout\,
	cout => \U_RX|r_clk_count[1]~16\);

-- Location: FF_X36_Y32_N5
\U_RX|r_clk_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[1]~15_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(1));

-- Location: LCCOMB_X36_Y32_N6
\U_RX|r_clk_count[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[2]~17_combout\ = (\U_RX|r_clk_count\(2) & (\U_RX|r_clk_count[1]~16\ $ (GND))) # (!\U_RX|r_clk_count\(2) & (!\U_RX|r_clk_count[1]~16\ & VCC))
-- \U_RX|r_clk_count[2]~18\ = CARRY((\U_RX|r_clk_count\(2) & !\U_RX|r_clk_count[1]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(2),
	datad => VCC,
	cin => \U_RX|r_clk_count[1]~16\,
	combout => \U_RX|r_clk_count[2]~17_combout\,
	cout => \U_RX|r_clk_count[2]~18\);

-- Location: FF_X36_Y32_N7
\U_RX|r_clk_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[2]~17_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(2));

-- Location: LCCOMB_X36_Y32_N8
\U_RX|r_clk_count[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[3]~19_combout\ = (\U_RX|r_clk_count\(3) & (!\U_RX|r_clk_count[2]~18\)) # (!\U_RX|r_clk_count\(3) & ((\U_RX|r_clk_count[2]~18\) # (GND)))
-- \U_RX|r_clk_count[3]~20\ = CARRY((!\U_RX|r_clk_count[2]~18\) # (!\U_RX|r_clk_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(3),
	datad => VCC,
	cin => \U_RX|r_clk_count[2]~18\,
	combout => \U_RX|r_clk_count[3]~19_combout\,
	cout => \U_RX|r_clk_count[3]~20\);

-- Location: FF_X36_Y32_N9
\U_RX|r_clk_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[3]~19_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(3));

-- Location: LCCOMB_X36_Y32_N10
\U_RX|r_clk_count[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[4]~21_combout\ = (\U_RX|r_clk_count\(4) & (\U_RX|r_clk_count[3]~20\ $ (GND))) # (!\U_RX|r_clk_count\(4) & (!\U_RX|r_clk_count[3]~20\ & VCC))
-- \U_RX|r_clk_count[4]~22\ = CARRY((\U_RX|r_clk_count\(4) & !\U_RX|r_clk_count[3]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(4),
	datad => VCC,
	cin => \U_RX|r_clk_count[3]~20\,
	combout => \U_RX|r_clk_count[4]~21_combout\,
	cout => \U_RX|r_clk_count[4]~22\);

-- Location: FF_X36_Y32_N11
\U_RX|r_clk_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[4]~21_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(4));

-- Location: LCCOMB_X36_Y32_N12
\U_RX|r_clk_count[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[5]~23_combout\ = (\U_RX|r_clk_count\(5) & (!\U_RX|r_clk_count[4]~22\)) # (!\U_RX|r_clk_count\(5) & ((\U_RX|r_clk_count[4]~22\) # (GND)))
-- \U_RX|r_clk_count[5]~24\ = CARRY((!\U_RX|r_clk_count[4]~22\) # (!\U_RX|r_clk_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(5),
	datad => VCC,
	cin => \U_RX|r_clk_count[4]~22\,
	combout => \U_RX|r_clk_count[5]~23_combout\,
	cout => \U_RX|r_clk_count[5]~24\);

-- Location: FF_X36_Y32_N13
\U_RX|r_clk_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[5]~23_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(5));

-- Location: LCCOMB_X36_Y32_N14
\U_RX|r_clk_count[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[6]~25_combout\ = (\U_RX|r_clk_count\(6) & (\U_RX|r_clk_count[5]~24\ $ (GND))) # (!\U_RX|r_clk_count\(6) & (!\U_RX|r_clk_count[5]~24\ & VCC))
-- \U_RX|r_clk_count[6]~26\ = CARRY((\U_RX|r_clk_count\(6) & !\U_RX|r_clk_count[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(6),
	datad => VCC,
	cin => \U_RX|r_clk_count[5]~24\,
	combout => \U_RX|r_clk_count[6]~25_combout\,
	cout => \U_RX|r_clk_count[6]~26\);

-- Location: FF_X36_Y32_N15
\U_RX|r_clk_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[6]~25_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(6));

-- Location: LCCOMB_X36_Y32_N16
\U_RX|r_clk_count[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[7]~27_combout\ = (\U_RX|r_clk_count\(7) & (!\U_RX|r_clk_count[6]~26\)) # (!\U_RX|r_clk_count\(7) & ((\U_RX|r_clk_count[6]~26\) # (GND)))
-- \U_RX|r_clk_count[7]~28\ = CARRY((!\U_RX|r_clk_count[6]~26\) # (!\U_RX|r_clk_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(7),
	datad => VCC,
	cin => \U_RX|r_clk_count[6]~26\,
	combout => \U_RX|r_clk_count[7]~27_combout\,
	cout => \U_RX|r_clk_count[7]~28\);

-- Location: FF_X36_Y32_N17
\U_RX|r_clk_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[7]~27_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(7));

-- Location: LCCOMB_X36_Y32_N18
\U_RX|r_clk_count[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[8]~29_combout\ = (\U_RX|r_clk_count\(8) & (\U_RX|r_clk_count[7]~28\ $ (GND))) # (!\U_RX|r_clk_count\(8) & (!\U_RX|r_clk_count[7]~28\ & VCC))
-- \U_RX|r_clk_count[8]~30\ = CARRY((\U_RX|r_clk_count\(8) & !\U_RX|r_clk_count[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(8),
	datad => VCC,
	cin => \U_RX|r_clk_count[7]~28\,
	combout => \U_RX|r_clk_count[8]~29_combout\,
	cout => \U_RX|r_clk_count[8]~30\);

-- Location: FF_X36_Y32_N19
\U_RX|r_clk_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[8]~29_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(8));

-- Location: LCCOMB_X36_Y32_N20
\U_RX|r_clk_count[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_clk_count[9]~31_combout\ = (\U_RX|r_clk_count\(9) & (!\U_RX|r_clk_count[8]~30\)) # (!\U_RX|r_clk_count\(9) & ((\U_RX|r_clk_count[8]~30\) # (GND)))
-- \U_RX|r_clk_count[9]~32\ = CARRY((!\U_RX|r_clk_count[8]~30\) # (!\U_RX|r_clk_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_clk_count\(9),
	datad => VCC,
	cin => \U_RX|r_clk_count[8]~30\,
	combout => \U_RX|r_clk_count[9]~31_combout\,
	cout => \U_RX|r_clk_count[9]~32\);

-- Location: FF_X36_Y32_N21
\U_RX|r_clk_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[9]~31_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(9));

-- Location: FF_X36_Y32_N23
\U_RX|r_clk_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_clk_count[10]~33_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sclr => \U_RX|r_clk_count[12]~39_combout\,
	ena => \U_RX|r_clk_count[12]~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_clk_count\(10));

-- Location: LCCOMB_X35_Y32_N14
\U_RX|LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|LessThan1~7_combout\ = (\U_RX|r_clk_count\(12) & (!\U_RX|LessThan1~6_combout\ & ((\U_RX|r_clk_count\(10)) # (\U_RX|r_clk_count\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_clk_count\(10),
	datab => \U_RX|r_clk_count\(11),
	datac => \U_RX|r_clk_count\(12),
	datad => \U_RX|LessThan1~6_combout\,
	combout => \U_RX|LessThan1~7_combout\);

-- Location: LCCOMB_X34_Y32_N18
\U_RX|Selector16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector16~2_combout\ = (\U_RX|r_state.RX_DATA~q\ & (\U_RX|LessThan1~7_combout\ $ ((\U_RX|r_bit_index\(0))))) # (!\U_RX|r_state.RX_DATA~q\ & (((\U_RX|r_bit_index\(0) & \U_RX|r_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_DATA~q\,
	datab => \U_RX|LessThan1~7_combout\,
	datac => \U_RX|r_bit_index\(0),
	datad => \U_RX|r_state.IDLE~q\,
	combout => \U_RX|Selector16~2_combout\);

-- Location: FF_X34_Y32_N19
\U_RX|r_bit_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector16~2_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_bit_index\(0));

-- Location: LCCOMB_X34_Y32_N30
\U_RX|Selector19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector19~3_combout\ = (\U_RX|r_state.RX_DATA~q\ & (((!\U_RX|r_bit_index\(1)) # (!\U_RX|r_bit_index\(0))) # (!\U_RX|r_bit_index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(2),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_state.RX_DATA~q\,
	datad => \U_RX|r_bit_index\(1),
	combout => \U_RX|Selector19~3_combout\);

-- Location: LCCOMB_X34_Y32_N0
\U_RX|Selector19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector19~2_combout\ = (\U_RX|r_state.RX_DATA~q\ & (((\U_RX|LessThan1~6_combout\) # (\U_RX|LessThan1~2_combout\)) # (!\U_RX|r_clk_count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_DATA~q\,
	datab => \U_RX|r_clk_count\(12),
	datac => \U_RX|LessThan1~6_combout\,
	datad => \U_RX|LessThan1~2_combout\,
	combout => \U_RX|Selector19~2_combout\);

-- Location: LCCOMB_X34_Y32_N22
\U_RX|Selector19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector19~4_combout\ = (\U_RX|Selector19~3_combout\) # ((\U_RX|Selector19~2_combout\) # ((\U_RX|r_rx_sync_1~q\ & \U_RX|Selector19~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|Selector19~3_combout\,
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|Selector19~1_combout\,
	datad => \U_RX|Selector19~2_combout\,
	combout => \U_RX|Selector19~4_combout\);

-- Location: FF_X34_Y32_N23
\U_RX|r_state.RX_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector19~4_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_state.RX_DATA~q\);

-- Location: LCCOMB_X34_Y32_N6
\U_RX|Selector15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector15~2_combout\ = (\U_RX|r_state.RX_DATA~q\ & (\U_RX|r_bit_index\(1) $ (((\U_RX|r_bit_index\(0) & \U_RX|LessThan1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|LessThan1~7_combout\,
	datad => \U_RX|r_state.RX_DATA~q\,
	combout => \U_RX|Selector15~2_combout\);

-- Location: LCCOMB_X34_Y32_N12
\U_RX|Selector15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector15~3_combout\ = (\U_RX|Selector15~2_combout\) # ((!\U_RX|r_state.RX_DATA~q\ & (\U_RX|r_state.IDLE~q\ & \U_RX|r_bit_index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_DATA~q\,
	datab => \U_RX|r_state.IDLE~q\,
	datac => \U_RX|r_bit_index\(1),
	datad => \U_RX|Selector15~2_combout\,
	combout => \U_RX|Selector15~3_combout\);

-- Location: FF_X34_Y32_N13
\U_RX|r_bit_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector15~3_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_bit_index\(1));

-- Location: LCCOMB_X34_Y32_N16
\U_RX|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector14~0_combout\ = (\U_RX|r_bit_index\(1) & (\U_RX|Selector20~0_combout\ & (\U_RX|r_bit_index\(0) $ (\U_RX|r_bit_index\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Selector14~0_combout\);

-- Location: LCCOMB_X34_Y32_N2
\U_RX|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector14~1_combout\ = (\U_RX|r_state.RX_DATA~q\ & (((!\U_RX|LessThan1~7_combout\)) # (!\U_RX|r_bit_index\(1)))) # (!\U_RX|r_state.RX_DATA~q\ & (((\U_RX|r_state.IDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_state.IDLE~q\,
	datac => \U_RX|LessThan1~7_combout\,
	datad => \U_RX|r_state.RX_DATA~q\,
	combout => \U_RX|Selector14~1_combout\);

-- Location: LCCOMB_X34_Y32_N26
\U_RX|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector14~2_combout\ = (\U_RX|Selector14~0_combout\) # ((\U_RX|r_bit_index\(2) & \U_RX|Selector14~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|Selector14~0_combout\,
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector14~1_combout\,
	combout => \U_RX|Selector14~2_combout\);

-- Location: FF_X34_Y32_N27
\U_RX|r_bit_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector14~2_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_bit_index\(2));

-- Location: LCCOMB_X37_Y32_N24
\U_RX|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~0_combout\ = (!\U_RX|r_bit_index\(2) & (!\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(0) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(2),
	datab => \U_RX|r_bit_index\(1),
	datac => \U_RX|r_bit_index\(0),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~0_combout\);

-- Location: LCCOMB_X37_Y32_N16
\U_RX|r_rx_byte[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[0]~0_combout\ = (\U_RX|Decoder0~0_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~0_combout\ & ((\U_RX|r_rx_byte\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(0),
	datad => \U_RX|Decoder0~0_combout\,
	combout => \U_RX|r_rx_byte[0]~0_combout\);

-- Location: FF_X37_Y32_N17
\U_RX|r_rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[0]~0_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(0));

-- Location: FF_X35_Y32_N13
\U_RX|o_rx_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_RX|r_rx_byte\(0),
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(0));

-- Location: LCCOMB_X31_Y32_N4
\led_reg[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[0]~feeder_combout\ = \U_RX|o_rx_byte\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(0),
	combout => \led_reg[0]~feeder_combout\);

-- Location: LCCOMB_X34_Y32_N8
\U_RX|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Selector0~1_combout\ = (\U_RX|o_rx_byte[0]~0_combout\) # ((\U_RX|o_rx_dv~q\ & ((\U_RX|r_state.RX_START~q\) # (!\U_RX|Selector0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_state.RX_START~q\,
	datab => \U_RX|Selector0~0_combout\,
	datac => \U_RX|o_rx_dv~q\,
	datad => \U_RX|o_rx_byte[0]~0_combout\,
	combout => \U_RX|Selector0~1_combout\);

-- Location: FF_X34_Y32_N9
\U_RX|o_rx_dv\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|Selector0~1_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_dv~q\);

-- Location: FF_X31_Y32_N5
\led_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[0]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(0));

-- Location: LCCOMB_X38_Y32_N2
\U_RX|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~1_combout\ = (\U_RX|r_bit_index\(0) & (!\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(0),
	datab => \U_RX|r_bit_index\(1),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~1_combout\);

-- Location: LCCOMB_X38_Y32_N28
\U_RX|r_rx_byte[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[1]~1_combout\ = (\U_RX|Decoder0~1_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~1_combout\ & ((\U_RX|r_rx_byte\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(1),
	datad => \U_RX|Decoder0~1_combout\,
	combout => \U_RX|r_rx_byte[1]~1_combout\);

-- Location: FF_X38_Y32_N29
\U_RX|r_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[1]~1_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(1));

-- Location: LCCOMB_X35_Y32_N10
\U_RX|o_rx_byte[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[1]~feeder_combout\ = \U_RX|r_rx_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|r_rx_byte\(1),
	combout => \U_RX|o_rx_byte[1]~feeder_combout\);

-- Location: FF_X35_Y32_N11
\U_RX|o_rx_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[1]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(1));

-- Location: LCCOMB_X31_Y32_N6
\led_reg[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[1]~feeder_combout\ = \U_RX|o_rx_byte\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(1),
	combout => \led_reg[1]~feeder_combout\);

-- Location: FF_X31_Y32_N7
\led_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[1]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(1));

-- Location: LCCOMB_X38_Y32_N12
\U_RX|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~2_combout\ = (!\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(0),
	datab => \U_RX|r_bit_index\(1),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~2_combout\);

-- Location: LCCOMB_X38_Y32_N22
\U_RX|r_rx_byte[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[2]~2_combout\ = (\U_RX|Decoder0~2_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~2_combout\ & ((\U_RX|r_rx_byte\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(2),
	datad => \U_RX|Decoder0~2_combout\,
	combout => \U_RX|r_rx_byte[2]~2_combout\);

-- Location: FF_X38_Y32_N23
\U_RX|r_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[2]~2_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(2));

-- Location: FF_X35_Y32_N9
\U_RX|o_rx_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \U_RX|r_rx_byte\(2),
	clrn => \KEY[1]~inputclkctrl_outclk\,
	sload => VCC,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(2));

-- Location: LCCOMB_X31_Y32_N28
\led_reg[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[2]~feeder_combout\ = \U_RX|o_rx_byte\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|o_rx_byte\(2),
	combout => \led_reg[2]~feeder_combout\);

-- Location: FF_X31_Y32_N29
\led_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[2]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(2));

-- Location: LCCOMB_X38_Y32_N18
\U_RX|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~3_combout\ = (\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(0),
	datab => \U_RX|r_bit_index\(1),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~3_combout\);

-- Location: LCCOMB_X38_Y32_N0
\U_RX|r_rx_byte[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[3]~3_combout\ = (\U_RX|Decoder0~3_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~3_combout\ & ((\U_RX|r_rx_byte\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(3),
	datad => \U_RX|Decoder0~3_combout\,
	combout => \U_RX|r_rx_byte[3]~3_combout\);

-- Location: FF_X38_Y32_N1
\U_RX|r_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[3]~3_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(3));

-- Location: LCCOMB_X35_Y32_N26
\U_RX|o_rx_byte[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[3]~feeder_combout\ = \U_RX|r_rx_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|r_rx_byte\(3),
	combout => \U_RX|o_rx_byte[3]~feeder_combout\);

-- Location: FF_X35_Y32_N27
\U_RX|o_rx_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[3]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(3));

-- Location: LCCOMB_X31_Y32_N14
\led_reg[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[3]~feeder_combout\ = \U_RX|o_rx_byte\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(3),
	combout => \led_reg[3]~feeder_combout\);

-- Location: FF_X31_Y32_N15
\led_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[3]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(3));

-- Location: LCCOMB_X34_Y32_N24
\U_RX|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~4_combout\ = (!\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~4_combout\);

-- Location: LCCOMB_X34_Y32_N20
\U_RX|r_rx_byte[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[4]~4_combout\ = (\U_RX|Decoder0~4_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~4_combout\ & ((\U_RX|r_rx_byte\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(4),
	datad => \U_RX|Decoder0~4_combout\,
	combout => \U_RX|r_rx_byte[4]~4_combout\);

-- Location: FF_X34_Y32_N21
\U_RX|r_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[4]~4_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(4));

-- Location: LCCOMB_X35_Y32_N28
\U_RX|o_rx_byte[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[4]~feeder_combout\ = \U_RX|r_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|r_rx_byte\(4),
	combout => \U_RX|o_rx_byte[4]~feeder_combout\);

-- Location: FF_X35_Y32_N29
\U_RX|o_rx_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[4]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(4));

-- Location: LCCOMB_X31_Y32_N12
\led_reg[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[4]~feeder_combout\ = \U_RX|o_rx_byte\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(4),
	combout => \led_reg[4]~feeder_combout\);

-- Location: FF_X31_Y32_N13
\led_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[4]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(4));

-- Location: LCCOMB_X34_Y32_N10
\U_RX|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~5_combout\ = (!\U_RX|r_bit_index\(1) & (\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~5_combout\);

-- Location: LCCOMB_X34_Y32_N14
\U_RX|r_rx_byte[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[5]~5_combout\ = (\U_RX|Decoder0~5_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~5_combout\ & ((\U_RX|r_rx_byte\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(5),
	datad => \U_RX|Decoder0~5_combout\,
	combout => \U_RX|r_rx_byte[5]~5_combout\);

-- Location: FF_X34_Y32_N15
\U_RX|r_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[5]~5_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(5));

-- Location: LCCOMB_X35_Y32_N22
\U_RX|o_rx_byte[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[5]~feeder_combout\ = \U_RX|r_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|r_rx_byte\(5),
	combout => \U_RX|o_rx_byte[5]~feeder_combout\);

-- Location: FF_X35_Y32_N23
\U_RX|o_rx_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[5]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(5));

-- Location: LCCOMB_X31_Y32_N2
\led_reg[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[5]~feeder_combout\ = \U_RX|o_rx_byte\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(5),
	combout => \led_reg[5]~feeder_combout\);

-- Location: FF_X31_Y32_N3
\led_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[5]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(5));

-- Location: LCCOMB_X34_Y32_N28
\U_RX|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|Decoder0~6_combout\ = (\U_RX|r_bit_index\(1) & (!\U_RX|r_bit_index\(0) & (\U_RX|r_bit_index\(2) & \U_RX|Selector20~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_bit_index\(1),
	datab => \U_RX|r_bit_index\(0),
	datac => \U_RX|r_bit_index\(2),
	datad => \U_RX|Selector20~0_combout\,
	combout => \U_RX|Decoder0~6_combout\);

-- Location: LCCOMB_X34_Y32_N4
\U_RX|r_rx_byte[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[6]~6_combout\ = (\U_RX|Decoder0~6_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Decoder0~6_combout\ & ((\U_RX|r_rx_byte\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(6),
	datad => \U_RX|Decoder0~6_combout\,
	combout => \U_RX|r_rx_byte[6]~6_combout\);

-- Location: FF_X34_Y32_N5
\U_RX|r_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[6]~6_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(6));

-- Location: LCCOMB_X35_Y32_N16
\U_RX|o_rx_byte[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[6]~feeder_combout\ = \U_RX|r_rx_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|r_rx_byte\(6),
	combout => \U_RX|o_rx_byte[6]~feeder_combout\);

-- Location: FF_X35_Y32_N17
\U_RX|o_rx_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[6]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(6));

-- Location: LCCOMB_X31_Y32_N20
\led_reg[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[6]~feeder_combout\ = \U_RX|o_rx_byte\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|o_rx_byte\(6),
	combout => \led_reg[6]~feeder_combout\);

-- Location: FF_X31_Y32_N21
\led_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[6]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(6));

-- Location: LCCOMB_X35_Y32_N0
\U_RX|r_rx_byte[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|r_rx_byte[7]~7_combout\ = (\U_RX|Selector20~1_combout\ & (!\U_RX|r_rx_sync_1~q\)) # (!\U_RX|Selector20~1_combout\ & ((\U_RX|r_rx_byte\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_RX|r_rx_sync_1~q\,
	datac => \U_RX|r_rx_byte\(7),
	datad => \U_RX|Selector20~1_combout\,
	combout => \U_RX|r_rx_byte[7]~7_combout\);

-- Location: FF_X35_Y32_N1
\U_RX|r_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|r_rx_byte[7]~7_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|r_rx_byte\(7));

-- Location: LCCOMB_X35_Y32_N30
\U_RX|o_rx_byte[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_RX|o_rx_byte[7]~feeder_combout\ = \U_RX|r_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_RX|r_rx_byte\(7),
	combout => \U_RX|o_rx_byte[7]~feeder_combout\);

-- Location: FF_X35_Y32_N31
\U_RX|o_rx_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \U_RX|o_rx_byte[7]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_byte[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_RX|o_rx_byte\(7));

-- Location: LCCOMB_X31_Y32_N26
\led_reg[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \led_reg[7]~feeder_combout\ = \U_RX|o_rx_byte\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_RX|o_rx_byte\(7),
	combout => \led_reg[7]~feeder_combout\);

-- Location: FF_X31_Y32_N27
\led_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \led_reg[7]~feeder_combout\,
	clrn => \KEY[1]~inputclkctrl_outclk\,
	ena => \U_RX|o_rx_dv~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => led_reg(7));

-- Location: LCCOMB_X31_Y32_N24
\U_SEG|WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr6~0_combout\ = (led_reg(2) & (!led_reg(1) & (led_reg(0) $ (!led_reg(3))))) # (!led_reg(2) & (led_reg(0) & (led_reg(1) $ (!led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr6~0_combout\);

-- Location: LCCOMB_X31_Y32_N22
\U_SEG|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr5~0_combout\ = (led_reg(1) & ((led_reg(0) & ((led_reg(3)))) # (!led_reg(0) & (led_reg(2))))) # (!led_reg(1) & (led_reg(2) & (led_reg(0) $ (led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr5~0_combout\);

-- Location: LCCOMB_X31_Y32_N0
\U_SEG|WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr4~0_combout\ = (led_reg(2) & (led_reg(3) & ((led_reg(1)) # (!led_reg(0))))) # (!led_reg(2) & (led_reg(1) & (!led_reg(0) & !led_reg(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr4~0_combout\);

-- Location: LCCOMB_X31_Y32_N18
\U_SEG|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr3~0_combout\ = (led_reg(1) & ((led_reg(2) & (led_reg(0))) # (!led_reg(2) & (!led_reg(0) & led_reg(3))))) # (!led_reg(1) & (!led_reg(3) & (led_reg(2) $ (led_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr3~0_combout\);

-- Location: LCCOMB_X31_Y32_N16
\U_SEG|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr2~0_combout\ = (led_reg(1) & (((led_reg(0) & !led_reg(3))))) # (!led_reg(1) & ((led_reg(2) & ((!led_reg(3)))) # (!led_reg(2) & (led_reg(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr2~0_combout\);

-- Location: LCCOMB_X31_Y32_N10
\U_SEG|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr1~0_combout\ = (led_reg(1) & (!led_reg(3) & ((led_reg(0)) # (!led_reg(2))))) # (!led_reg(1) & (led_reg(0) & (led_reg(2) $ (!led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr1~0_combout\);

-- Location: LCCOMB_X31_Y32_N8
\U_SEG|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_SEG|WideOr0~0_combout\ = (led_reg(0) & ((led_reg(3)) # (led_reg(1) $ (led_reg(2))))) # (!led_reg(0) & ((led_reg(1)) # (led_reg(2) $ (led_reg(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => led_reg(1),
	datab => led_reg(2),
	datac => led_reg(0),
	datad => led_reg(3),
	combout => \U_SEG|WideOr0~0_combout\);

-- Location: IOIBUF_X38_Y0_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

ww_LED(0) <= \LED[0]~output_o\;

ww_LED(1) <= \LED[1]~output_o\;

ww_LED(2) <= \LED[2]~output_o\;

ww_LED(3) <= \LED[3]~output_o\;

ww_LED(4) <= \LED[4]~output_o\;

ww_LED(5) <= \LED[5]~output_o\;

ww_LED(6) <= \LED[6]~output_o\;

ww_LED(7) <= \LED[7]~output_o\;

ww_SEG(0) <= \SEG[0]~output_o\;

ww_SEG(1) <= \SEG[1]~output_o\;

ww_SEG(2) <= \SEG[2]~output_o\;

ww_SEG(3) <= \SEG[3]~output_o\;

ww_SEG(4) <= \SEG[4]~output_o\;

ww_SEG(5) <= \SEG[5]~output_o\;

ww_SEG(6) <= \SEG[6]~output_o\;
END structure;


