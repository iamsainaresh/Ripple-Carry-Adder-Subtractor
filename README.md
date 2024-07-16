# Ripple Carry Adder/Subtractor in Verilog

## Overview

This project implements a 4-bit Ripple Carry Adder/Subtractor in Verilog. It includes modules for a full adder, a ripple carry adder/subtractor, and a test bench for simulation.

## Modules

- **Full Adder Module**: Performs basic addition logic.
- **Ripple Carry Adder/Subtractor Module**: Integrates full adders to handle 4-bit addition and subtraction based on a carry-in (`Cin`).
- **Test Bench**: Validates module functionality with example addition and subtraction operations.

## Usage

1. **Simulation**: Use a Verilog simulator (e.g., ModelSim, Xilinx Vivado) to run `tb_ripple_carry_adder_subtractor.v`.
   
2. **Synthesis**: For FPGA implementation, synthesize `ripple_carry_adder_subtractor.v` ensuring correct input/output configurations.

## Files

- `full_adder.v`: Verilog code for the full adder module.
- `ripple_carry_adder_subtractor.v`: Verilog code for the ripple carry adder/subtractor module.
- `tb_ripple_carry_adder_subtractor.v`: Verilog test bench for simulation and verification.

## Output
### After Simulating the testbench this is the result
![Screenshot (23)](https://github.com/user-attachments/assets/0b9a5d41-909b-4b55-9c2b-8a2b8857bd44)

## Contributors

- [Sai Naresh](https://github.com/iamsainaresh)


