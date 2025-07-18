#!/bin/bash

#
# Set ESP environment variables (with CAD tools)
#

# Cadence: Stratus HLS, Incisive, XCelium
  # e.g. <stratus_path> = /opt/cadence/stratus182
  # e.g. <incisive_path> = /opt/cadence/incisive152
  # e.g. <xcelium_path> = /opt/cadence/xcelium18
  #export LM_LICENSE_FILE=$LM_LICENSE_FILE:<cadence_license_path>
  #export PATH=$PATH:<stratus_path>/bin:<incisive_path>/tools/cdsgcc/gcc/bin:<xcelium_path>/tools/cdsgcc/gcc/bin
  #export CDS_AUTO_64BIT=all
  # export HOST=$(hostname) # for Ubuntu only

# Xilinx: Vivado, Vivado HLS
  # e.g. <vivado_path> = /opt/xilinx/Vivado/2018.2
  #export XILINXD_LICENSE_FILE=<xilinx_license_path>
  source /opt/Xilinx/Vivado/2019.2/settings64.sh
  #source /opt/Vivado/2020.2/settings64.sh

# Mentor: Catapult HLS, Modelsim
  # e.g. <modelsim_path> = /opt/mentor/modeltech
  # e.g. <catapult_path> = /opt/mentor/catapult
  #export LM_LICENSE_FILE=$LM_LICENSE_FILE:<mentor_license_path>
  #export PATH=$PATH:/opt/intelFPGA/20.1/modelsim_ase/bin
  #export AMS_MODEL_TECH=/opt/intelFPGA/20.1/modelsim_ase
  export PATH=$PATH:/opt/ModelSim/2019.4/modeltech/bin/
  export LM_LICENSE_FILE=$LM_LICENSE_FILE:54085@cselm2.ucsd.edu:1717@cselm2.ucsd.edu:1717@cselm.ucsd.edu:/data/opt/Xilinx/Licenses/:28500@cselm.ucsd.edu:27007@cselm2.ucsd.edu:2100@cselm.ucsd.edu:2100@cselm2.ucsd.edu:27681@cselm2.ucsd.edu:27680@cselm2.ucsd.edu

  #export PATH=$PATH:<catapult_path>/Mgc_home/bin
  #export SYSTEMC=<catapult_path>/Mgc_home/shared
  #export SYSTEMC_HOME=<catapult_path>/Mgc_home/shared
  #export MGC_HOME=<catapult_path>/Mgc_home
  #export LIBDIR=-L<catapult_path>/Mgc_home/shared/lib $LIBDIR

# RISC-V toolchain
  export RISCV=/home/espuser/riscv
  export RISCV32IMC=/home/espuser/riscv32imc
  export PATH=$PATH:/home/espuser/riscv/bin:/home/espuser/riscv32imc/bin

# LEON3 toolchain
  export PATH=$PATH:/home/espuser/leon/bin
  export PATH=$PATH:/home/espuser/leon/mklinuximg
  export PATH=$PATH:/home/espuser/leon/sparc-elf/bin

  cd esp/socs/xilinx-vc707-xc7vx485t
