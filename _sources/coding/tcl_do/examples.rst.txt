========
Examples
========

Run simulation
==============

:config_repo:`run_sim.do <blob/master/scripts/tcl_do/run_sim.do>`

This scripts performs the following operations:

#. Quit previous simulation if in action
#. Specify variables

  #.Get PWD
  #.Project path variables
  #.compPath form environmentvar
  #.workPath
  #.ModelsimPath

#. Creating working library

  #. Change to working directory
  #. Create work lib
  #. Change back to modelsim execution directory
  #. Mapping work lib

#. Compile Design

  #. Execute ``comp.do`` files

#. Compile Testbench
#. Loading the design
#. Load do files for simulation
#. Restart and Simulate

Compilation
===========

:config_repo:`run_sim.do <blob/master/scripts/tcl_do/comp.do>`

This scripts performs the following operations:


#. Specify variables of component
#. Specify VHDL source Paths
#. Specify Subcomponent Paths
#. Compile additional Libraries
#. Compile the Design

Calculate Simulation time
=========================

:config_repo:`run_sim.do <blob/master/scripts/tcl_do/calc_simtime.do>`

This scripts allows to measure the simulation time




