+incdir+./design
+incdir+./design/cyp_assertions
+incdir+./design/cyp_design
+incdir+./design/cyp_design/fpu_arthemetic
+incdir+./interface
+incdir+./objects
+incdir+./objects/cyp_objects
+incdir+./top
+incdir+./top/test
+incdir+./top/test/enviroment
+incdir+./top/test/enviroment/coverage_collector
+incdir+./top/test/enviroment/cyp_agent
+incdir+./top/test/enviroment/cyp_agent/driver
+incdir+./top/test/enviroment/cyp_agent/monitor
+incdir+./top/test/enviroment/cyp_agent/sequencer
+incdir+./top/test/enviroment/scoreboard

# List of files for the cyp testbench

# Interface files
interface/shared_pkg.sv
interface/cyp_if.sv

# Design file
design/cyp_design/design.v
design/cyp_design/golden_model.sv

# Assertions
design/cyp_Assertions/cyp_assertions.sv

# Enviroment
top/test/enviroment/cyp_env_pkg.sv

# Test file
top/test/test.sv

# Top-level file
top/top.sv