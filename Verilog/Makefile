# Makefile for RTL Simulation and Synthesis
# VCS RTL simulation for beamforming design

# Define source file directories
RTL_DIR = RTL
TB_DIR = Testbed
SYNTH_DIR = Synthesis
SIM_DIR = RTL/sim

# Define source files
RTL_FILES = $(RTL_DIR)/beamforming.v \
            $(RTL_DIR)/phi_table.v \
            $(RTL_DIR)/track.v \
            $(RTL_DIR)/steer.v \
            $(RTL_DIR)/cordic_stage.v \
            $(RTL_DIR)/cordic_vector.v \
            $(RTL_DIR)/comparison.v

TB_FILES = $(TB_DIR)/beamforming_tb.v

# VCS compilation flags
VCS_FLAGS = -full64 -timescale=1ns/1ps

# Synthesis output
SYNTH_SCRIPT = $(SYNTH_DIR)/synthesis.tcl
SYNTH_OUT_DIR = $(SYNTH_DIR)/ultra

# Default target
.PHONY: rtl syn syn-core gate-core gate-core-sdf clean sim_clean help

# RTL Simulation target
rtl: $(RTL_FILES) $(TB_FILES)
	@echo "Starting RTL simulation with VCS..."
	@mkdir -p $(SIM_DIR)
	vcs $(VCS_FLAGS) -o $(SIM_DIR)/chip_sim $(RTL_FILES) $(TB_FILES)
	./$(SIM_DIR)/chip_sim
	@echo "RTL simulation complete!"

# Synthesis target
syn:
	@echo "Starting synthesis with Design Compiler..."
	cd $(SYNTH_DIR) && dc_shell -f synthesis.tcl
	@echo "Synthesis complete!"

# Core-only synthesis target
syn-core:
	@echo "Starting beamforming core-only synthesis with Design Compiler..."
	cd $(SYNTH_DIR) && dc_shell -f beamforming_synthesis.tcl
	@echo "Beamforming core-only synthesis complete!"

# Zero-delay gate-level simulation of the synthesized beamforming core
gate-core:
	@echo "Starting beamforming core gate-level simulation..."
	cd $(SYNTH_DIR) && vcs ../Testbed/CHIP_syn_tb.v beamforming_ultra/beamforming_syn.v \
		-v db/fsa0m_a_generic_core_21.lib.src \
		-full64 -R +v2k +define+DUT_BEAMFORMING

# SDF-annotated gate-level simulation of the synthesized beamforming core
gate-core-sdf:
	@echo "Starting SDF-annotated beamforming core gate-level simulation..."
	cd $(SYNTH_DIR) && vcs ../Testbed/CHIP_syn_tb.v beamforming_ultra/beamforming_syn.v \
		-v db/fsa0m_a_generic_core_21.lib.src \
		-full64 -R +v2k +neg_tchk +define+DUT_BEAMFORMING \
		'+define+SDF="beamforming_ultra/beamforming_syn.sdf"'

# Clean simulation artifacts
sim_clean:
	@echo "Cleaning simulation artifacts..."
	@rm -rf $(SIM_DIR) simv simv.daidir csrc DVEfiles .vcs* .ucdb INCA_libs

# Full clean
clean: sim_clean
	@echo "Cleaning all generated files..."
	@rm -rf work *.shm *.wdb *.vpd

# Help target
help:
	@echo "Available targets:"
	@echo "  make rtl       - Run RTL simulation"
	@echo "  make syn       - Run synthesis with Design Compiler"
	@echo "  make syn-core  - Synthesize beamforming without IO pads"
	@echo "  make gate-core - Run zero-delay gate simulation of beamforming"
	@echo "  make gate-core-sdf - Run SDF gate simulation of beamforming"
	@echo "  make sim_clean - Clean simulation artifacts"
	@echo "  make clean     - Clean all generated files"
	@echo "  make help      - Display this help message"
