`timescale `TIME_UNIT / `TIME_PRECISION

interface CYP_if (input bit clk);

    // ========================
    // DUT Signals
    // ========================
    logic        rst;

    logic [63:0] N;
    logic [63:0] P;
    logic [63:0] K;
    logic [63:0] Soil_pH;
    logic [63:0] Soil_Moisture;
    logic [63:0] Organic_Carbon;
    logic [63:0] Temperature;
    logic [63:0] Rainfall;
    logic [63:0] Sunlight_Hours;
    logic [63:0] Wind_Speed;
    logic [63:0] Crop_Type;
    logic [63:0] Fertilizer_Used;
    logic [63:0] Altitude;
    logic [63:0] Region;
    logic [63:0] Humidity;
    logic [63:0] Irrigation_Type;
    logic [63:0] Season;
    logic [63:0] Pesticide_Used;
    logic [63:0] Soil_Type;

    logic [63:0] Yield_Int;
    logic        ready;

    // ========================
    // Driver Modport
    // ========================
    modport driver (
        input  clk,
        output rst,

        output N,
        output P,
        output K,
        output Soil_pH,
        output Soil_Moisture,
        output Organic_Carbon,
        output Temperature,
        output Rainfall,
        output Sunlight_Hours,
        output Wind_Speed,
        output Crop_Type,
        output Fertilizer_Used,
        output Altitude,
        output Region,
        output Humidity,
        output Irrigation_Type,
        output Season,
        output Pesticide_Used,
        output Soil_Type,

        input  Yield_Int,
        input  ready
    );

    // ========================
    // Monitor Modport
    // ========================
    modport monitor (
        input clk,
        input rst,

        input N,
        input P,
        input K,
        input Soil_pH,
        input Soil_Moisture,
        input Organic_Carbon,
        input Temperature,
        input Rainfall,
        input Sunlight_Hours,
        input Wind_Speed,
        input Crop_Type,
        input Fertilizer_Used,
        input Altitude,
        input Region,
        input Humidity,
        input Irrigation_Type,
        input Season,
        input Pesticide_Used,
        input Soil_Type,

        input Yield_Int,
        input ready
    );

endinterface : CYP_if