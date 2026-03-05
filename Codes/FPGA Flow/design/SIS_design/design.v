// The following `define` values represent bit widths and sizes used in the design. 
// are only for convenience and to make the code more readable. 
// import shared_pkg::*; // For enums and parameters
`include "fpu.v"
`include "fpu_arthemetic/FloatingAddition.v"
`include "fpu_arthemetic/FloatingCompare.v"
`include "fpu_arthemetic/FloatingDivision.v"
`include "fpu_arthemetic/FloatingMultiplication.v"
`include "fpu_arthemetic/FloatingCompare_LE.v"
// `include "fpu_arthemetic/FloatingSqrt.v"
`include "sis.v"
`include "sis_upgraded.v"
`include "design/SIS_design/fpu_arthemetic/float_le_checker.v"
