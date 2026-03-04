import shared_pkg::*;

module golden_model_v1 (
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
    // Decision Tree (Updated)
    // ========================
    always_ff @(posedge clk or posedge rst) begin
        if (rst) begin
            yield_reg <= 0.0;
        end else begin

            if (gd <= -1.06) begin
                if (crop_type <= 3.91)
                    yield_reg <= 3877.71;
                else
                    yield_reg <= 3889.49;

            end else begin  // gd > -1.06

                if (crop_type <= 3.81) begin
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

                end else begin  // crop_type > 3.81
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


module golden_model_v2 (
    input  wire        clk,
    input  wire        rst,

    input  real soil_moisture,
    input  real soil_ph,
    input  real temperature,
    input  real rainfall,
    input  real humidity,
    input  real sunlight_hours,
    input  real NDVI_index,
    input  real growing_days,

    input  real crop_type,  // Use real to match Python thresholds

    output reg  [31:0] yield_int
);
 
    // ================= Mean and Std values (from Python StandardScaler) =================
    real SM_MEAN   = 26.750;
    real PH_MEAN   = 6.524;
    real TMP_MEAN  = 24.676;
    real RF_MEAN   = 181.686;
    real HUM_MEAN  = 65.194;
    real SUN_MEAN  = 7.030;
    real NDVI_MEAN = 0.602;
    real GD_MEAN   = 119.496;

    real SM_STD    = 10.150;
    real PH_STD    = 0.586;
    real TMP_STD   = 5.349;
    real RF_STD    = 72.293;
    real HUM_STD   = 14.643;
    real SUN_STD   = 1.692;
    real NDVI_STD  = 0.175;
    real GD_STD    = 16.798;

    // ================= Decision tree thresholds (from Python scaled tree) =================
    real GD_THRESH1   = -1.06;
    real GD_THRESH2   = -0.10;
    real PH_THRESH1   = 1.24;
    real PH_THRESH2   = -0.48;
    real NDVI_THRESH1 = 0.32;
    real NDVI_THRESH2 = -1.25;
    real SM_THRESH    = -0.08;
    real SUN_THRESH   = -0.08;
    real CROP1        = 3.91;
    real CROP2        = 3.81;

    // ================= Yield constants =================
    real Y_3877 = 3877.71;
    real Y_3889 = 3889.49;
    real Y_4161 = 4161.82;
    real Y_4142 = 4142.28;
    real Y_4136 = 4136.84;
    real Y_4010 = 4010.21;
    real Y_4399 = 4399.57;
    real Y_3646 = 3646.80;
    real Y_4001 = 4001.40;
    real Y_4203 = 4203.40;
    real Y_3804 = 3804.23;

    // ================= Normalized values =================
    real sm_norm, ph_norm, temp_norm, rain_norm;
    real hum_norm, sun_norm, ndvi_norm, gd_norm;
    real yield_real;

    // ================= FSM =================
    parameter IDLE    = 2'b00;
    parameter DECIDE  = 2'b01;
    parameter CONVERT = 2'b10;
    reg [1:0] state;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state      <= IDLE;
            yield_int  <= 0;
            yield_real <= 0.0;
        end else begin
            case (state)
                IDLE: state <= DECIDE;

                DECIDE: begin
                    // ================= Normalization =================
                    sm_norm   = (soil_moisture - SM_MEAN)   / SM_STD;
                    ph_norm   = (soil_ph - PH_MEAN)         / PH_STD;
                    temp_norm = (temperature - TMP_MEAN)   / TMP_STD;
                    rain_norm = (rainfall - RF_MEAN)       / RF_STD;
                    hum_norm  = (humidity - HUM_MEAN)      / HUM_STD;
                    sun_norm  = (sunlight_hours - SUN_MEAN)/ SUN_STD;
                    ndvi_norm = (NDVI_index - NDVI_MEAN)   / NDVI_STD;
                    gd_norm   = (growing_days - GD_MEAN)   / GD_STD;

                    // ================= Decision tree =================
                    if (gd_norm <= GD_THRESH1) begin
                        if (crop_type <= CROP1) yield_real = Y_3877;
                        else                    yield_real = Y_3889;
                    end else begin
                        if (crop_type <= CROP2) begin
                            if (ph_norm <= PH_THRESH1) begin
                                if (ndvi_norm <= NDVI_THRESH1) begin
                                    if (ph_norm <= PH_THRESH2) yield_real = Y_4161;
                                    else                       yield_real = Y_4142;
                                end else begin
                                    if (sm_norm <= SM_THRESH) yield_real = Y_4136;
                                    else                       yield_real = Y_4010;
                                end
                            end else yield_real = Y_4399;
                        end else begin
                            if (ndvi_norm <= NDVI_THRESH2) yield_real = Y_3646;
                            else begin
                                if (sun_norm <= SUN_THRESH)      yield_real = Y_4001;
                                else if (gd_norm <= GD_THRESH2)  yield_real = Y_4203;
                                else                             yield_real = Y_3804;
                            end
                        end
                    end

                    state <= CONVERT;
                end

                CONVERT: begin
                    // ================= Assign final yield =================
                    yield_int <= $rtoi(yield_real);
                    state     <= IDLE;
                end
            endcase
        end
    end
endmodule

module golden_model_v3 (
    input  wire        clk,
    input  wire        rst,

    input  real soil_moisture,
    input  real soil_ph,
    input  real temperature,
    input  real rainfall,
    input  real humidity,
    input  real sunlight_hours,
    input  real NDVI_index,
    input  real growing_days,

    input  int crop_type,

    output reg  [31:0] yield_int
);

    // ================= Decision tree thresholds (raw values from Python) =================
    real HUM_THRESH1   = 76.42;
    real SM_THRESH1    = 35.31;
    real PH_THRESH1    = 6.13;
    real GD_THRESH1    = 127.97;
    real GD_THRESH2    = 125.53;
    real TEMP_THRESH1  = 23.92;
    real PH_THRESH2    = 7.15;
    real SM_THRESH2    = 21.52;
    real TEMP_THRESH2  = 26.21;
    real NDVI_THRESH1  = 0.59;
    real SUN_THRESH1   = 7.61;
    real CROP_THRESH1  = 2.76;

    // ================= Yield constants =================
    real Y_4012 = 4012.16;
    real Y_3824 = 3824.74;
    real Y_4266 = 4266.83;
    real Y_3802 = 3802.41;
    real Y_4376 = 4376.08;
    real Y_4476 = 4476.56;
    real Y_4074 = 4074.15;
    real Y_4004 = 4004.49;
    real Y_3359 = 3359.99;
    real Y_4160 = 4160.91;
    real Y_3504 = 3504.10;
    real Y_4718 = 4718.38;
    real Y_4168 = 4168.09;

    real yield_real;

    // ================= FSM =================
    parameter IDLE    = 2'b00;
    parameter DECIDE  = 2'b01;
    parameter CONVERT = 2'b10;
    reg [1:0] state;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state      <= IDLE;
            yield_int  <= 0;
            yield_real <= 0.0;
        end else begin
            case (state)
                IDLE: state <= DECIDE;

                DECIDE: begin
                    // ================= Decision tree =================
                    if (humidity <= HUM_THRESH1) begin
                        if (soil_moisture <= SM_THRESH1) begin
                            if (soil_ph <= PH_THRESH1) begin
                                if (growing_days <= GD_THRESH1) yield_real = Y_4012;
                                else                            yield_real = Y_3824;
                            end else begin
                                if (growing_days <= GD_THRESH2) begin
                                    if (temperature <= TEMP_THRESH1) yield_real = Y_4266;
                                    else if (soil_ph <= PH_THRESH2)  yield_real = Y_3802;
                                    else                             yield_real = Y_4376;
                                end else begin
                                    if (soil_moisture <= SM_THRESH2) yield_real = Y_4476;
                                    else                             yield_real = Y_4074;
                                end
                            end
                        end else begin
                            if (temperature <= TEMP_THRESH2) yield_real = Y_4004;
                            else                             yield_real = Y_3359;
                        end
                    end else begin
                        if (NDVI_index <= NDVI_THRESH1) begin
                            if (sunlight_hours <= SUN_THRESH1) yield_real = Y_4160;
                            else                              yield_real = Y_3504;
                        end else begin
                            if (crop_type <= CROP_THRESH1) yield_real = Y_4718;
                            else                           yield_real = Y_4168;
                        end
                    end

                    state <= CONVERT;
                end

                CONVERT: begin
                    yield_int <= $rtoi(yield_real);
                    state     <= IDLE;
                end
            endcase
        end
    end
endmodule