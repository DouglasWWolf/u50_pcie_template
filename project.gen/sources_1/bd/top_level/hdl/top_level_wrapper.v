//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
//Date        : Wed Oct 30 01:55:55 2024
//Host        : simtool-5 running 64-bit Ubuntu 20.04.6 LTS
//Command     : generate_target top_level_wrapper.bd
//Design      : top_level_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module top_level_wrapper
   (HBM_CATTRIP,
    PCIE_REFCLK1_clk_n,
    PCIE_REFCLK1_clk_p,
    pcie_mgt_rxn,
    pcie_mgt_rxp,
    pcie_mgt_txn,
    pcie_mgt_txp);
  output [0:0]HBM_CATTRIP;
  input PCIE_REFCLK1_clk_n;
  input PCIE_REFCLK1_clk_p;
  input [15:0]pcie_mgt_rxn;
  input [15:0]pcie_mgt_rxp;
  output [15:0]pcie_mgt_txn;
  output [15:0]pcie_mgt_txp;

  wire [0:0]HBM_CATTRIP;
  wire PCIE_REFCLK1_clk_n;
  wire PCIE_REFCLK1_clk_p;
  wire [15:0]pcie_mgt_rxn;
  wire [15:0]pcie_mgt_rxp;
  wire [15:0]pcie_mgt_txn;
  wire [15:0]pcie_mgt_txp;

  top_level top_level_i
       (.HBM_CATTRIP(HBM_CATTRIP),
        .PCIE_REFCLK1_clk_n(PCIE_REFCLK1_clk_n),
        .PCIE_REFCLK1_clk_p(PCIE_REFCLK1_clk_p),
        .pcie_mgt_rxn(pcie_mgt_rxn),
        .pcie_mgt_rxp(pcie_mgt_rxp),
        .pcie_mgt_txn(pcie_mgt_txn),
        .pcie_mgt_txp(pcie_mgt_txp));
endmodule
