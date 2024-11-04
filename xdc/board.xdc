
#
# Power Constraint to warn User if design will possibly be over cards power limit
#
set_operating_conditions -design_power_budget 63

#
# Bitstream generation
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.CONFIG.CONFIGFALLBACK Enable [current_design]               ;# Golden image is the fall back image if  new bitstream is corrupted.
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 63.8 [current_design]
set_property BITSTREAM.CONFIG.EXTMASTERCCLK_EN disable [current_design]
set_property BITSTREAM.CONFIG.SPI_FALL_EDGE YES [current_design]
set_property BITSTREAM.CONFIG.UNUSEDPIN Pullup [current_design]                    ;# Choices are pullnone, pulldown, and pullup.
set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR Yes [current_design]


#
#  PCIe RefClk
#
set_property PACKAGE_PIN AF8   [get_ports PCIE_REFCLK1_clk_n]       ;# Bank 225 - MGTREFCLK0N_225
set_property PACKAGE_PIN AF9   [get_ports PCIE_REFCLK1_clk_p]       ;# Bank 225 - MGTREFCLK0P_225


#
# HBM Catastrophic Over temperature Output signal to Satellite Controller
#    HBM_CATTRIP Active high indicator to Satellite controller to indicate the HBM has exceded its maximum allowable temperature.
#                This signal is not a dedicated FPGA output and is a derived signal in RTL. Making the signal Active will shut
#                the FPGA power rails off.
#
set_property PACKAGE_PIN J18      [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property IOSTANDARD  LVCMOS18 [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
set_property PULLDOWN TRUE        [get_ports "HBM_CATTRIP"]       ;# Bank  68 VCCO - VCC1V8   - IO_L6N_T0U_N11_AD6N_68
#