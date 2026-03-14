import uvm_pkg::*;
import cyp_env_pkg::*;
import cyp_test_pkg::*;
import shared_pkg::*; // For enums and parameters
`timescale `TIME_UNIT / `TIME_PRECISION

module tb_top;
    bit clk;
    // Clock Generation
    initial begin
        clk = `LOW;
        forever #(`CLK_PERIOD/2) clk = ~ clk;
    end

    
    cyp_env env_instance; // Instantiate the CYP4 enviroment
    cyp_test_base test; // Instantiate the CYP4 test

    // Instantiate the interface
    CYP_if cyp_if (clk);

    crop_yield_predictor u_dut (
        .clk(clk),
        .rst(cyp_if.rst),

        .N(cyp_if.N),
        .P(cyp_if.P),
        .K(cyp_if.K),
        .Soil_pH(cyp_if.Soil_pH),
        .Soil_Moisture(cyp_if.Soil_Moisture),
        .Organic_Carbon(cyp_if.Organic_Carbon),
        .Temperature(cyp_if.Temperature),
        .Rainfall(cyp_if.Rainfall),
        .Sunlight_Hours(cyp_if.Sunlight_Hours),
        .Wind_Speed(cyp_if.Wind_Speed),
        .Crop_Type(cyp_if.Crop_Type),
        .Fertilizer_Used(cyp_if.Fertilizer_Used),
        .Altitude(cyp_if.Altitude),
        .Region(cyp_if.Region),
        .Humidity(cyp_if.Humidity),
        .Irrigation_Type(cyp_if.Irrigation_Type),
        .Season(cyp_if.Season),
        .Pesticide_Used(cyp_if.Pesticide_Used),
        .Soil_Type(cyp_if.Soil_Type),

        .Yield_Int(cyp_if.Yield_Int),
        .ready(cyp_if.ready)
    );
    

    // // Binding the cyp_sva module (SystemVerilog Assertions) to the dut instance
    // bind crop_yield_predictor cyp_sva CYP_sva_inst (
    //     .clk(clk),
    //     .rst(rst),

    //     .N(N),
    //     .P(P),
    //     .K(K),
    //     .Soil_pH(Soil_pH),
    //     .Soil_Moisture(Soil_Moisture),
    //     .Organic_Carbon(Organic_Carbon),
    //     .Temperature(Temperature),
    //     .Rainfall(Rainfall),
    //     .Sunlight_Hours(Sunlight_Hours),
    //     .Wind_Speed(Wind_Speed),
    //     .Crop_Type(Crop_Type),
    //     .Fertilizer_Used(Fertilizer_Used),
    //     .Altitude(Altitude),
    //     .Region(Region),
    //     .Humidity(Humidity),
    //     .Irrigation_Type(Irrigation_Type),
    //     .Season(Season),
    //     .Pesticide_Used(Pesticide_Used),
    //     .Soil_Type(Soil_Type),

    //     .Yield_Int(Yield_Int),
    //     .ready(ready)
    // );

    initial begin
        uvm_top.set_report_verbosity_level(UVM_MEDIUM); // Set verbosity level
        uvm_top.finish_on_completion = `DISABLE_FINISH; // Prevent UVM from calling $finish
        uvm_config_db#(virtual CYP_if)::set(null, "*", "cyp_if", cyp_if); // Set CYP interface globally
        run_test("cyp_test_base"); // Start the UVM test
        $stop; // Stop simulation after test execution
    end
endmodule : tb_top