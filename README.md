
# Circuit Solver with MATLAB

This repository contains MATLAB-based applications for solving electrical circuits and performing transient analysis of a series RLC circuit. The two primary components are:

1. **circuitAnalyze.mlapp**:  
   A circuit solver application that takes a netlist of a circuit and computes the solution for the given network of components.  
   It automates circuit analysis and provides numerical results based on input parameters.

2. **app_seriesRLC_res.mlapp**:  
   An application for performing transient analysis on a series RLC circuit. This app simulates the behavior of the series RLC circuit over time, helping you understand the transient response to various inputs.

## Features:
- **Circuit Solver**: Analyzes circuits from a netlist, solving for voltages and currents using standard analysis methods.
- **Transient Analysis**: Simulates the response of a series RLC circuit, displaying the voltage and current waveforms over time.
  
## Requirements:
- MATLAB (preferably 2020 or later)  
- MATLAB App Designer (for .mlapp file support)

## Folder Structure
- `src/:` Contains Arduino source code for the project.
- `docs/:` Includes additional documentation and schematics.
- `media/:` Demonstration videos and images.

## Installation:
1. Clone or download the repository.
2. Open the `home.mlapp` file in MATLAB App Designer.
3. Ensure that you have MATLAB with App Designer support.

## Usage:
- **home.mlapp**
  - Gives 2 button to navigate to `circuitAnalyze.mlapp` and `app_seriesRLC_res.mlapp`
- **circuitAnalyze.mlapp**:  
  - Load a circuit netlist(or type the in text box).
  - Run the solver to get voltage and current values at different nodes and components.
  
- **app_seriesRLC_res.mlapp**:  
  - Configure the values for resistance (R), inductance (L), and capacitance (C).
  - Run the simulation to view transient responses like voltage and current over time.


## Authors:
- [Ameer Hamja Ibne Jamal]
- [Tanvir Rahman]
