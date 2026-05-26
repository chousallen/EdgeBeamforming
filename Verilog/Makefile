# Makefile for RTL Simulation and Synthesis
# VCS RTL simulation for chip design

# Define source file directories
RTL_DIR = RTL
TB_DIR = Testbed
SYNTH_DIR = Synthesis

# Define source files
RTL_FILES = $(RTL_DIR)/chip.v \
            $(RTL_DIR)/phi_table.v \
            $(RTL_DIR)/track.v \
            $(RTL_DIR)/steer.v \
            $(RTL_DIR)/cordic_stage.v \
            $(RTL_DIR)/cordic_vector.v \
            $(RTL_DIR)/comparison.v

TB_FILES = $(TB_DIR)/chip_tb.v

# VCS compilation flags
VCS_FLAGS = -full64 -timescale=1ns/1ps

# Simulation output
SIM_DIR = sim_results

# Default target
.PHONY: rtl clean sim_clean help

# RTL Simulation target
rtl: $(RTL_FILES) $(TB_FILES)
	@echo "Starting RTL simulation with VCS..."
	@mkdir -p $(SIM_DIR)
	vcs $(VCS_FLAGS) -o $(SIM_DIR)/chip_sim $(RTL_FILES) $(TB_FILES)
	./$(SIM_DIR)/chip_sim
	@echo "RTL simulation complete!"

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
	@echo "  make sim_clean - Clean simulation artifacts"
	@echo "  make clean     - Clean all generated files"
	@echo "  make help      - Display this help message"
