package shared_pkg;

    // Include macros inside the package
    `include "sis_defines.svh"
    `include "uvm_macros.svh"
   
    typedef enum int {
    WHEAT   = 1,
    SOYBEAN = 2,
    MAIZE   = 3,
    COTTON  = 4,
    RICE    = 5
    } crop_type_e;

endpackage : shared_pkg
    