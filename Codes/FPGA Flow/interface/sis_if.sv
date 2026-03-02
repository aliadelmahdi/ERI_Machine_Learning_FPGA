import shared_pkg::*; // For enums and parameters
`timescale `TIME_UNIT / `TIME_PRECISION

interface sis_if(input bit pclk);

    // ========================
    // Clocking Block: Monitor
    // ========================
    clocking mon_cb @(negedge pclk);
     
    endclocking

    // ========================
    // Clocking Block: Driver
    // ========================
    clocking drv_cb @(posedge pclk);
       
    endclocking

    // ========================
    // Golden Model Modport
    // ========================
    modport gld (
       
    );

    // ========================
    // I2S Agent Modports
    // ========================
    modport mon (
    
    );

    modport drv (
     
    );

endinterface : sis_if
