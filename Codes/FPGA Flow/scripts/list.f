+incdir+./design
+incdir+./design/cyp_assertions
+incdir+./design/cyp_design
+incdir+./design/cyp_design/hex_outputs
+incdir+./design/cyp_design/mapped_hex
+incdir+./interface
+incdir+./objects
+incdir+./objects/cyp_objects
+incdir+./top
+incdir+./top/test
+incdir+./top/test/enviroment
+incdir+./top/test/enviroment/coverage_collector
+incdir+./top/test/enviroment/cyp_agent
+incdir+./top/test/enviroment/cyp_agent/monitor
+incdir+./top/test/enviroment/cyp_apb_master_agent
+incdir+./top/test/enviroment/cyp_apb_master_agent/driver
+incdir+./top/test/enviroment/cyp_apb_master_agent/monitor
+incdir+./top/test/enviroment/cyp_apb_master_agent/sequencer
+incdir+./top/test/enviroment/cyp_apb_slave_agent
+incdir+./top/test/enviroment/cyp_apb_slave_agent/monitor
+incdir+./top/test/enviroment/scoreboard
# List of files for the cyp testbench

# Interface files
interface/shared_wrapper_pkg.sv

// interface/cyp_if.sv

interface/cyp_apb_master_if.sv
interface/cyp_apb_slave_if.sv
interface/cyp_core_if.sv

# Design file
design/cyp_design/design.v
# Assertions
design/cyp_assertions/cyp_assertions.sv
# Enviroment
top/test/enviroment/cyp_env_pkg.sv

# Test file
top/test/test.sv

# Top-level file
top/top.sv