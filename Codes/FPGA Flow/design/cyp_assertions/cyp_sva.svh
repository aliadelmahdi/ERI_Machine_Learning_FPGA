`ifndef CYP_ASSERTIONS_SV
`define CYP_ASSERTIONS_SV
/*  
    This assertion file follows the **Verification Plan** numbering  
    Each section corresponds to a specific verification requirement:  

    Example:
    1- Reset Behavior Verification  
       - Ensures correct reset values for i2s. 

    The numbers (e.g., 1, 2.2) match the corresponding test items  
    from the **Verification Plan** for traceability and clarity
*/
module cyp_sva (
    // Clock & Reset
    input  wire        clk,
    input  wire        rst,

    // DUT Inputs
    input  wire [63:0] N,
    input  wire [63:0] P,
    input  wire [63:0] K,
    input  wire [63:0] Soil_pH,
    input  wire [63:0] Soil_Moisture,
    input  wire [63:0] Organic_Carbon,
    input  wire [63:0] Temperature,
    input  wire [63:0] Rainfall,
    input  wire [63:0] Sunlight_Hours,
    input  wire [63:0] Wind_Speed,
    input  wire [63:0] Crop_Type,
    input  wire [63:0] Fertilizer_Used,
    input  wire [63:0] Altitude,
    input  wire [63:0] Region,
    input  wire [63:0] Humidity,
    input  wire [63:0] Irrigation_Type,
    input  wire [63:0] Season,
    input  wire [63:0] Pesticide_Used,
    input  wire [63:0] Soil_Type,

    // DUT Outputs
    input  wire [63:0] Yield_Int,
    input  wire        ready
);

endmodule

`endif // CYP_ASSERTIONS_SV
