import shared_pkg::*;

module golden_model (
    input  logic clk,
    input  logic rst,

    // -------- Raw inputs --------
    input  real soil_moisture,
    input  real soil_ph,
    input  real temperature,
    input  real rainfall,
    input  real humidity,
    input  real sunlight_hours,
    input  real NDVI_index,
    input  real growing_days,

    // RAW, UN-SCALED crop type
    input  logic [31:0] crop_type,

    output real yield
);

    // ========================
    // Internal scaled signals
    // ========================
    real sm, ph, temp, rain, hum, sun, ndvi, gd;
    real yield_reg;

    // ========================
    // Scaling parameters
    // ========================
    parameter real SOILMOISTURE_MEAN  = 26.750;
    parameter real SOILMOISTURE_STD   = 10.150;

    parameter real SOILPH_MEAN        = 6.524;
    parameter real SOILPH_STD         = 0.586;

    parameter real TEMPERATURE_MEAN   = 24.676;
    parameter real TEMPERATURE_STD    = 5.349;

    parameter real RAINFALL_MEAN      = 181.686;
    parameter real RAINFALL_STD       = 72.293;

    parameter real HUMIDITY_MEAN      = 65.194;
    parameter real HUMIDITY_STD       = 14.643;

    parameter real SUNLIGHT_MEAN      = 7.030;
    parameter real SUNLIGHT_STD       = 1.692;

    parameter real NDVI_MEAN          = 0.602;
    parameter real NDVI_STD           = 0.175;

    parameter real GROWINGDAYS_MEAN   = 119.496;
    parameter real GROWINGDAYS_STD    = 16.798;

    // ========================
    // Feature scaling
    // ========================
    always_comb begin
        sm   = (soil_moisture  - SOILMOISTURE_MEAN) / SOILMOISTURE_STD;
        ph   = (soil_ph        - SOILPH_MEAN)       / SOILPH_STD;
        temp = (temperature   - TEMPERATURE_MEAN)  / TEMPERATURE_STD;
        rain = (rainfall      - RAINFALL_MEAN)     / RAINFALL_STD;
        hum  = (humidity      - HUMIDITY_MEAN)     / HUMIDITY_STD;
        sun  = (sunlight_hours- SUNLIGHT_MEAN)     / SUNLIGHT_STD;
        ndvi = (NDVI_index    - NDVI_MEAN)         / NDVI_STD;
        gd   = (growing_days  - GROWINGDAYS_MEAN)  / GROWINGDAYS_STD;
    end

    // ========================
    // Decision Tree
    // ========================
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            yield_reg <= 0.0;
        end else begin

            if (gd <= -1.06) begin
                if (crop_type <= 3)
                    yield_reg <= 3877.71;
                else
                    yield_reg <= 3889.49;

            end else begin  // gd > -1.06

                if (crop_type <= 3) begin
                    if (ph <= 1.24) begin
                        if (ndvi <= 0.32) begin
                            if (ph <= -0.48)
                                yield_reg <= 4161.82;
                            else
                                yield_reg <= 4142.28;
                        end else begin
                            if (sm <= -0.08)
                                yield_reg <= 4136.84;
                            else
                                yield_reg <= 4010.21;
                        end
                    end else begin
                        yield_reg <= 4399.57;
                    end

                end else begin  // crop_type > 3
                    if (ndvi <= -1.25)
                        yield_reg <= 3646.80;
                    else begin
                        if (sun <= -0.08)
                            yield_reg <= 4001.40;
                        else begin
                            if (gd <= -0.10)
                                yield_reg <= 4203.40;
                            else
                                yield_reg <= 3804.23;
                        end
                    end
                end
            end
        end
    end

    assign yield = yield_reg;

endmodule