#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vitis/2024.2/bin:/opt/Xilinx/Vivado/2024.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2024.2/bin
else
  PATH=/opt/Xilinx/Vitis/2024.2/bin:/opt/Xilinx/Vivado/2024.2/ids_lite/ISE/bin/lin64:/opt/Xilinx/Vivado/2024.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/hg234/2025/COMPX230/Labs/Lab1/Lab1.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log die.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source die.tcl -notrace


