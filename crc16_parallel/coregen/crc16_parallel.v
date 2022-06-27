/*******************************************************************************
*     This file is owned and controlled by Xilinx and must be used             *
*     solely for design, simulation, implementation and creation of            *
*     design files limited to Xilinx devices or technologies. Use              *
*     with non-Xilinx devices or technologies is expressly prohibited          *
*     and immediately terminates your license.                                 *
*                                                                              *
*     XILINX IS PROVIDING THIS DESIGN, CODE, OR INFORMATION "AS IS"            *
*     SOLELY FOR USE IN DEVELOPING PROGRAMS AND SOLUTIONS FOR                  *
*     XILINX DEVICES.  BY PROVIDING THIS DESIGN, CODE, OR INFORMATION          *
*     AS ONE POSSIBLE IMPLEMENTATION OF THIS FEATURE, APPLICATION              *
*     OR STANDARD, XILINX IS MAKING NO REPRESENTATION THAT THIS                *
*     IMPLEMENTATION IS FREE FROM ANY CLAIMS OF INFRINGEMENT,                  *
*     AND YOU ARE RESPONSIBLE FOR OBTAINING ANY RIGHTS YOU MAY REQUIRE         *
*     FOR YOUR IMPLEMENTATION.  XILINX EXPRESSLY DISCLAIMS ANY                 *
*     WARRANTY WHATSOEVER WITH RESPECT TO THE ADEQUACY OF THE                  *
*     IMPLEMENTATION, INCLUDING BUT NOT LIMITED TO ANY WARRANTIES OR           *
*     REPRESENTATIONS THAT THIS IMPLEMENTATION IS FREE FROM CLAIMS OF          *
*     INFRINGEMENT, IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS          *
*     FOR A PARTICULAR PURPOSE.                                                *
*                                                                              *
*     Xilinx products are not intended for use in life support                 *
*     appliances, devices, or systems. Use in such applications are            *
*     expressly prohibited.                                                    *
*                                                                              *
*     (c) Copyright 1995-2006 Xilinx, Inc.                                     *
*     All rights reserved.                                                     *
*******************************************************************************/
// The synopsys directives "translate_off/translate_on" specified below are
// supported by XST, FPGA Compiler II, Mentor Graphics and Synplicity synthesis
// tools. Ensure they are correct for your synthesis tool(s).

// You must compile the wrapper file crc16_parallel.v when simulating
// the core, crc16_parallel. When compiling the wrapper file, be sure to
// reference the XilinxCoreLib Verilog simulation library. For detailed
// instructions, please refer to the "CORE Generator Help".

`timescale 1ns/1ps

module crc16_parallel(
	clk,
	pd_out,
	load,
	pd_in,
	ce,
	ainit);


input clk;
output [15 : 0] pd_out;
input load;
input [15 : 0] pd_in;
input ce;
input ainit;

// synopsys translate_off

      LFSR_V3_0 #(
		"1111111111111111",	// c_ainit_val
		0,	// c_enable_rlocs
		0,	// c_gate
		1,	// c_has_ainit
		1,	// c_has_ce
		0,	// c_has_data_valid
		1,	// c_has_load
		0,	// c_has_load_taps
		0,	// c_has_new_seed
		1,	// c_has_pd_in
		1,	// c_has_pd_out
		0,	// c_has_sd_in
		0,	// c_has_sd_out
		0,	// c_has_sinit
		0,	// c_has_taps_in
		0,	// c_has_term_cnt
		0,	// c_implementation
		1,	// c_max_len_logic
		0,	// c_max_len_logic_type
		"1111111111111111",	// c_sinit_val
		16,	// c_size
		"0001000000001011",	// c_tap_pos
		1)	// c_type
	inst (
		.CLK(clk),
		.PD_OUT(pd_out),
		.LOAD(load),
		.PD_IN(pd_in),
		.CE(ce),
		.AINIT(ainit),
		.SD_OUT(),
		.SD_IN(),
		.DATA_VALID(),
		.LOAD_TAPS(),
		.TAPS_IN(),
		.SINIT(),
		.NEW_SEED(),
		.TERM_CNT());


// synopsys translate_on

endmodule

