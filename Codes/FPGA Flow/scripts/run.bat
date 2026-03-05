@echo off
REM cd /d "%~dp0\.."
vsim -c -do "scripts/run.tcl"
@REM vsim -gui -do "scripts/run.tcl"