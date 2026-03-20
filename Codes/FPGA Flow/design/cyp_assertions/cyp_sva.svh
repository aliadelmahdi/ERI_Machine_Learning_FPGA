`ifndef CYP_SVA_SVH
`define CYP_SVA_SVH
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
    input  wire [63:0] soil_ph,
    input  wire [63:0] soil_moisture,
    input  wire [63:0] organic_carbon,
    input  wire [63:0] temperature,
    input  wire [63:0] rainfall,
    input  wire [63:0] sunlight_hours,
    input  wire [63:0] wind_speed,
    input  wire [63:0] crop_type,
    input  wire [63:0] fertilizer_used,
    input  wire [63:0] altitude,
    input  wire [63:0] region,
    input  wire [63:0] humidity,
    input  wire [63:0] irrigation_type,
    input  wire [63:0] season,
    input  wire [63:0] pesticide_used,
    input  wire [63:0] soil_type,

    // DUT Outputs
    input  wire [63:0] yield_int,
    input  wire        ready
);

    // Reset should force outputs low/zero.
    property p_reset_drives_default_outputs;
        @(posedge clk) rst |-> (!ready && (yield_int == 64'd0));
    endproperty
    a_reset_drives_default_outputs: assert property (p_reset_drives_default_outputs)
        else $error("CYP_SVA: reset must drive ready=0 and yield_int=0");

    // Outside reset, outputs should never go unknown.
    property p_outputs_known_outside_reset;
        @(posedge clk) disable iff (rst) !$isunknown({ready, yield_int});
    endproperty
    a_outputs_known_outside_reset: assert property (p_outputs_known_outside_reset)
        else $error("CYP_SVA: ready/yield_int contains X or Z outside reset");


endmodule

`endif // CYP_SVA_SVH
