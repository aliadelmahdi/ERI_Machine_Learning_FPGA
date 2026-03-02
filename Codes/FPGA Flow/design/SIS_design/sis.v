`ifndef SIS_V
`define SIS_V

//////////////////////////////////////////////////////////////////////////////////
//                                                                              //
//                       SIS Smart Irrigation System                            //
//                                                                              //
//  Core module for SIS Smart Irrigation System: sensor processing, yield_reg   //
//  prediction, and irrigation control using FPGA.                              //
//                                                                              //
//  Author: Ali                                                                 //
//  Date  : 16-2-2026                                                           //
//                                                                              //
//////////////////////////////////////////////////////////////////////////////////

module SIS (
    input  wire        clk,
    input  wire        rst,

    // IEEE-754 single-precision inputs
    input  wire [31:0] soil_moisture_f,
    input  wire [31:0] soil_ph_f,
    input  wire [31:0] temperature_f,
    input  wire [31:0] rainfall_f,
    input  wire [31:0] humidity_f,
    input  wire [31:0] sunlight_hours_f,
    input  wire [31:0] NDVI_index_f,
    input  wire [31:0] growing_days_f,

    // Raw integer crop type
    input  wire [31:0] crop_type,

    // Final integer output
    output reg  [31:0] yield_int
);

    // ================= IEEE-754 constants =================
    localparam [31:0] SM_MEAN   = 32'h41D60000; // 26.750
    localparam [31:0] PH_MEAN   = 32'h40D0C49C; // 6.524
    localparam [31:0] TMP_MEAN  = 32'h41C56E14; // 24.676
    localparam [31:0] RF_MEAN   = 32'h4335B5B3; // 181.686
    localparam [31:0] HUM_MEAN  = 32'h4282C63A; // 65.194
    localparam [31:0] SUN_MEAN  = 32'h40E0F5C3; // 7.030
    localparam [31:0] NDVI_MEAN = 32'h3F1A36E3; // 0.602
    localparam [31:0] GD_MEAN   = 32'h42EE7E76; // 119.496

    localparam [31:0] SM_STD   = 32'h41226666; // 10.150
    localparam [31:0] PH_STD   = 32'h3F15E353; // 0.586
    localparam [31:0] TMP_STD  = 32'h40AB47AE; // 5.349
    localparam [31:0] RF_STD   = 32'h428FC5C3; // 72.293
    localparam [31:0] HUM_STD  = 32'h416A4BC7; // 14.643
    localparam [31:0] SUN_STD  = 32'h3FD8F5C3; // 1.692
    localparam [31:0] NDVI_STD = 32'h3E333333; // 0.175
    localparam [31:0] GD_STD   = 32'h41865C29; // 16.798

    localparam [31:0] NEG_1_06 = 32'hBF87AE14;
    localparam [31:0] NEG_0_10 = 32'hBDCCCCCD;
    localparam [31:0] NEG_0_48 = 32'hBEE66666;
    localparam [31:0] NEG_0_08 = 32'hBD4CCCCD;
    localparam [31:0] POS_0_32 = 32'h3EA3D70A;
    localparam [31:0] POS_1_24 = 32'h3F9EB852;
    localparam [31:0] NEG_1_25 = 32'hBFA00000;

    localparam [31:0] Y_3877 = 32'h45727E52;
    localparam [31:0] Y_3889 = 32'h45731D71;
    localparam [31:0] Y_4161 = 32'h45821D71;
    localparam [31:0] Y_4142 = 32'h45816147;
    localparam [31:0] Y_4136 = 32'h458147AE;
    localparam [31:0] Y_4010 = 32'h457A2852;
    localparam [31:0] Y_4399 = 32'h45897F5C;
    localparam [31:0] Y_3646 = 32'h4563B333;
    localparam [31:0] Y_4001 = 32'h457A0666;
    localparam [31:0] Y_4203 = 32'h45834F5C;
    localparam [31:0] Y_3804 = 32'h45703AE1;

    // ================= Normalized feature wires =================
    wire [31:0] sm_norm, ph_norm, temp_norm, rain_norm;
    wire [31:0] hum_norm, sun_norm, ndvi_norm, gd_norm;
    wire [31:0] sub_tmp_sm, sub_tmp_ph, sub_tmp_t, sub_tmp_r;
    wire [31:0] sub_tmp_h, sub_tmp_s, sub_tmp_n, sub_tmp_g;

    // ================= Normalization blocks =================
    FloatingAddition sm_sub (.A(soil_moisture_f), .B({~SM_MEAN[31], SM_MEAN[30:0]}), .result(sub_tmp_sm));
    FloatingDivision sm_div (.A(sub_tmp_sm), .B(SM_STD), .result(sm_norm));

    FloatingAddition ph_sub (.A(soil_ph_f), .B({~PH_MEAN[31], PH_MEAN[30:0]}), .result(sub_tmp_ph));
    FloatingDivision ph_div (.A(sub_tmp_ph), .B(PH_STD), .result(ph_norm));

    FloatingAddition t_sub (.A(temperature_f), .B({~TMP_MEAN[31], TMP_MEAN[30:0]}), .result(sub_tmp_t));
    FloatingDivision t_div (.A(sub_tmp_t), .B(TMP_STD), .result(temp_norm));

    FloatingAddition r_sub (.A(rainfall_f), .B({~RF_MEAN[31], RF_MEAN[30:0]}), .result(sub_tmp_r));
    FloatingDivision r_div (.A(sub_tmp_r), .B(RF_STD), .result(rain_norm));

    FloatingAddition h_sub (.A(humidity_f), .B({~HUM_MEAN[31], HUM_MEAN[30:0]}), .result(sub_tmp_h));
    FloatingDivision h_div (.A(sub_tmp_h), .B(HUM_STD), .result(hum_norm));

    FloatingAddition s_sub (.A(sunlight_hours_f), .B({~SUN_MEAN[31], SUN_MEAN[30:0]}), .result(sub_tmp_s));
    FloatingDivision s_div (.A(sub_tmp_s), .B(SUN_STD), .result(sun_norm));

    FloatingAddition n_sub (.A(NDVI_index_f), .B({~NDVI_MEAN[31], NDVI_MEAN[30:0]}), .result(sub_tmp_n));
    FloatingDivision n_div (.A(sub_tmp_n), .B(NDVI_STD), .result(ndvi_norm));

    FloatingAddition g_sub (.A(growing_days_f), .B({~GD_MEAN[31], GD_MEAN[30:0]}), .result(sub_tmp_g));
    FloatingDivision g_div (.A(sub_tmp_g), .B(GD_STD), .result(gd_norm));

    // ================= Comparisons for decision tree =================
    wire cmp_gd, cmp_ph, cmp_ndvi, cmp_sm, cmp_sun;

    FloatingCompare cmp1 (.A(gd_norm),   .B(NEG_1_06), .result(cmp_gd));
    FloatingCompare cmp2 (.A(ph_norm),   .B(POS_1_24), .result(cmp_ph));
    FloatingCompare cmp3 (.A(ndvi_norm), .B(POS_0_32), .result(cmp_ndvi));
    FloatingCompare cmp4 (.A(sm_norm),   .B(NEG_0_08), .result(cmp_sm));
    FloatingCompare cmp5 (.A(ndvi_norm), .B(NEG_1_25), .result(cmp_sun));

    // ================= FSM =================
    parameter IDLE    = 2'b00;
    parameter DECIDE  = 2'b01;
    parameter CONVERT = 2'b10;
    reg [1:0] state;

    // ================= Float to int conversion =================
    reg         f2i_stb;
    wire        f2i_ack;
    wire [31:0] f2i_out;
    reg [31:0]  yield_f;

    float_to_int f2i (
        .input_a(yield_f),
        .input_a_stb(f2i_stb),
        .output_z_ack(1'b1),
        .clk(clk),
        .rst(rst),
        .output_z(f2i_out),
        .output_z_stb(f2i_ack),
        .input_a_ack()
    );

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            state     <= IDLE;
            yield_f   <= 32'b0;
            yield_int <= 32'b0;
            f2i_stb   <= 1'b0;
        end else begin
            case (state)
                IDLE: state <= DECIDE;

                DECIDE: begin
                    if (!cmp_gd) begin
                        if (crop_type <= 3) yield_f <= Y_3877;
                        else                yield_f <= Y_3889;
                    end else begin
                        if (crop_type <= 3) begin
                            if (!cmp_ph) begin
                                if (!cmp_ndvi) begin
                                    if (!cmp_ph) yield_f <= Y_4161;
                                    else         yield_f <= Y_4142;
                                end else begin
                                    if (!cmp_sm) yield_f <= Y_4136;
                                    else         yield_f <= Y_4010;
                                end
                            end else yield_f <= Y_4399;
                        end else begin
                            if (!cmp_sun)      yield_f <= Y_3646;
                            else if (!cmp_sm)  yield_f <= Y_4001;
                            else if (!cmp_gd)  yield_f <= Y_4203;
                            else               yield_f <= Y_3804;
                        end
                    end
                    f2i_stb <= 1'b1;
                    state   <= CONVERT;
                end

                CONVERT: begin
                    if (f2i_ack) begin
                        yield_int <= f2i_out;
                        f2i_stb   <= 1'b0;
                        state     <= IDLE;
                    end
                end
            endcase
        end
    end

endmodule

`endif // SIS_V