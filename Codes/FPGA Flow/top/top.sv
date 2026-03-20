`include "cyp_defines.svh"
`timescale `TIME_UNIT / `TIME_PRECISION

module tb_top;
    import uvm_pkg::*;
    import cyp_wrapper_env_pkg::*;
    import cyp_wrapper_test_pkg::*;
    import shared_wrapper_pkg::*;

    bit pclk;

    initial begin
        pclk = `LOW;
        forever #(`CLK_PERIOD/2) pclk = ~ pclk;
    end

    cyp_apb_master_if master_if (pclk);
    cyp_apb_slave_if  slave_if  (pclk);
    cyp_core_if       cyp_if    (pclk);

    apb_wrapper u_dut (
        .pclk(pclk),
        .presetn(master_if.presetn),
        .swrite(master_if.swrite),
        .saddr(master_if.saddr),
        .swdata(master_if.swdata),
        .sstrb(master_if.sstrb),
        .sprot(master_if.sprot),
        .transfer(master_if.transfer),
        .prdata(master_if.prdata),
        .pready(master_if.pready),
        .pslverr(master_if.pslverr)
    );

    assign slave_if.psel       = u_dut.psel;
    assign slave_if.penable    = u_dut.penable;
    assign slave_if.pwrite     = u_dut.pwrite;
    assign slave_if.paddr      = u_dut.paddr;
    assign slave_if.pwdata     = u_dut.pwdata;
    assign slave_if.pstrb      = u_dut.pstrb;
    assign slave_if.pprot      = u_dut.pprot;
    assign slave_if.prdata     = u_dut.prdata;
    assign slave_if.pready     = u_dut.pready;
    assign slave_if.pslverr    = u_dut.pslverr;
    assign slave_if.core_rst_n = u_dut.core_rst_n;

    assign cyp_if.rst_n           = master_if.presetn & u_dut.core_rst_n;
    assign cyp_if.N               = u_dut.n;
    assign cyp_if.P               = u_dut.p;
    assign cyp_if.K               = u_dut.k;
    assign cyp_if.soil_ph         = u_dut.soil_ph;
    assign cyp_if.soil_moisture   = u_dut.soil_moisture;
    assign cyp_if.organic_carbon  = u_dut.organic_carbon;
    assign cyp_if.temperature     = u_dut.temperature;
    assign cyp_if.rainfall        = u_dut.rainfall;
    assign cyp_if.sunlight_hours  = u_dut.sunlight_hours;
    assign cyp_if.wind_speed      = u_dut.wind_speed;
    assign cyp_if.crop_type       = u_dut.crop_type;
    assign cyp_if.fertilizer_used = u_dut.fertilizer_used;
    assign cyp_if.altitude        = u_dut.altitude;
    assign cyp_if.region          = u_dut.region;
    assign cyp_if.humidity        = u_dut.humidity;
    assign cyp_if.irrigation_type = u_dut.irrigation_type;
    assign cyp_if.season          = u_dut.season;
    assign cyp_if.pesticide_used  = u_dut.pesticide_used;
    assign cyp_if.soil_type       = u_dut.soil_type;
    assign cyp_if.yield_int       = u_dut.yield_int;
    assign cyp_if.ready           = u_dut.core_ready;

    bind apb_wrapper cyp_sva u_cyp_sva (
        .clk(pclk),
        .rst(~(presetn & core_rst_n)),
        .N(n),
        .P(p),
        .K(k),
        .soil_ph(soil_ph),
        .soil_moisture(soil_moisture),
        .organic_carbon(organic_carbon),
        .temperature(temperature),
        .rainfall(rainfall),
        .sunlight_hours(sunlight_hours),
        .wind_speed(wind_speed),
        .crop_type(crop_type),
        .fertilizer_used(fertilizer_used),
        .altitude(altitude),
        .region(region),
        .humidity(humidity),
        .irrigation_type(irrigation_type),
        .season(season),
        .pesticide_used(pesticide_used),
        .soil_type(soil_type),
        .yield_int(yield_int),
        .ready(core_ready)
    );

    initial begin
        uvm_top.set_report_verbosity_level(UVM_MEDIUM);
        // uvm_top.finish_on_completion = `DISABLE_FINISH;
        uvm_config_db#(int)::set(null, "", "recording_detail", 0);
        uvm_config_db#(uvm_bitstream_t)::set(null, "", "recording_detail", 0);
        uvm_config_db#(virtual cyp_apb_master_if)::set(null, "*", "master_if", master_if);
        uvm_config_db#(virtual cyp_apb_slave_if)::set(null, "*", "slave_if", slave_if);
        uvm_config_db#(virtual cyp_core_if)::set(null, "*", "cyp_if", cyp_if);
        run_test("cyp_wrapper_test_base");
        $stop;
    end
endmodule : tb_top
