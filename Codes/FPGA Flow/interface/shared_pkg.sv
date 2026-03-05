package shared_pkg;

    // Include macros inside the package
    `include "sis_defines.svh"
    `include "uvm_macros.svh"
   
    // typedef enum int {
    // WHEAT   = 'h3f800000,
    // SOYBEAN = 'h40000000,
    // MAIZE   = 'h40400000,
    // COTTON  = 'h40800000,
    // RICE    = 'h40a00000
    // } crop_type_e;

    // ===============================
    // Categorical Feature Enums
    // ===============================

    // Soil_Type
    typedef enum logic [1:0] {
        CLAY  = 2'd0,
        LOAMY = 2'd1,
        SANDY = 2'd2,
        SILT  = 2'd3
    } Soil_Type_e;

    // Region
    typedef enum logic [2:0] {
        CENTRAL = 3'd0,
        EAST    = 3'd1,
        NORTH   = 3'd2,
        SOUTH   = 3'd3,
        WEST    = 3'd4
    } Region_e;

    // Season
    typedef enum logic [1:0] {
        KHARIF = 2'd0,
        RABI   = 2'd1,
        ZAID   = 2'd2
    } Season_e;

    // Crop_Type
    typedef enum logic [2:0] {
        COTTON    = 3'd0,
        MAIZE     = 3'd1,
        POTATO    = 3'd2,
        RICE      = 3'd3,
        SUGARCANE = 3'd4,
        WHEAT     = 3'd5
    } Crop_Type_e;

    // Irrigation_Type
    typedef enum logic [1:0] {
        CANAL     = 2'd0,
        DRIP      = 2'd1,
        RAINFED   = 2'd2,
        SPRINKLER = 2'd3
    } Irrigation_Type_e;

endpackage : shared_pkg
    