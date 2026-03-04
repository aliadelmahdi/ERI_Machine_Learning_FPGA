package shared_pkg;

    // Include macros inside the package
    `include "sis_defines.svh"
    `include "uvm_macros.svh"
   
    typedef enum int {
    WHEAT   = 'h3f800000,
    SOYBEAN = 'h40000000,
    MAIZE   = 'h40400000,
    COTTON  = 'h40800000,
    RICE    = 'h40a00000
    } crop_type_e;

endpackage : shared_pkg
    