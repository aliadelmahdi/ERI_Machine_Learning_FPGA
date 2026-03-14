`ifndef SIS_V 
`define SIS_V

module SIS (
    input  wire        clk,
    input  wire        rst,

    input  wire [31:0] soil_moisture_f,
    input  wire [31:0] soil_ph_f,
    input  wire [31:0] temperature_f,
    input  wire [31:0] rainfall_f,
    input  wire [31:0] humidity_f,
    input  wire [31:0] sunlight_hours_f,
    input  wire [31:0] NDVI_index_f,
    input  wire [31:0] growing_days_f,

    input  wire [31:0] crop_type,

    output reg  [31:0] yield_int
);

    // ================= Thresholds =================
    localparam [31:0] TH_76_42  = 32'h4298D70A;
    localparam [31:0] TH_35_31  = 32'h420D3D71;
    localparam [31:0] TH_6_13   = 32'h40C428F6;
    localparam [31:0] TH_127_97 = 32'h42FFF0A4;
    localparam [31:0] TH_125_53 = 32'h42FB0F5C;
    localparam [31:0] TH_23_92  = 32'h41BF5C29;
    localparam [31:0] TH_7_15   = 32'h40E4CCCD;
    localparam [31:0] TH_21_52  = 32'h41AC28F6;
    localparam [31:0] TH_26_21  = 32'h41D1AE14;
    localparam [31:0] TH_0_59   = 32'h3F170A3D;
    localparam [31:0] TH_7_61   = 32'h40F3851F;
    localparam [31:0] TH_2_76   = 32'h4030A3D7;

    // ================= Yield constants =================
    localparam [31:0] Y_4012 = 32'h457AC28F;
    localparam [31:0] Y_3824 = 32'h456F0BD7;
    localparam [31:0] Y_4266 = 32'h458556A4;
    localparam [31:0] Y_3802 = 32'h456DA68F;
    localparam [31:0] Y_4376 = 32'h4588C0A4;
    localparam [31:0] Y_4476 = 32'h458BE47B;
    localparam [31:0] Y_4074 = 32'h457EA266;
    localparam [31:0] Y_4004 = 32'h457A47D7;
    localparam [31:0] Y_3359 = 32'h4551FFD7;
    localparam [31:0] Y_4160 = 32'h45820748;
    localparam [31:0] Y_3504 = 32'h455B019A;
    localparam [31:0] Y_4718 = 32'h4593730A;
    localparam [31:0] Y_4168 = 32'h458240B8;

    // ================= Comparison wires =================
    wire cmp_hum;
    wire cmp_sm;
    wire cmp_ph;
    wire cmp_gd_127;
    wire cmp_gd_125;
    wire cmp_temp_23;
    wire cmp_temp_26;
    wire cmp_ph_715;
    wire cmp_sm_21;
    wire cmp_ndvi;
    wire cmp_sun;
    wire cmp_crop;

    // ================= Floating Comparators =================
    // flip inputs where we need A < B
    FloatingCompare C1  (.A(TH_76_42),       .B(humidity_f),      .result(cmp_hum));    // hum <= 76.42 -> A<B: flip
    FloatingCompare C2  (.A(TH_35_31),       .B(soil_moisture_f), .result(cmp_sm));     // sm <= 35.31 -> A<B: flip
    FloatingCompare C3  (.A(TH_6_13),        .B(soil_ph_f),       .result(cmp_ph));     // ph <= 6.13 -> A<B: flip
    FloatingCompare C4  (.A(TH_127_97),      .B(growing_days_f),  .result(cmp_gd_127)); // gd <= 127.97 -> A<B: flip
    FloatingCompare C5  (.A(TH_125_53),      .B(growing_days_f),  .result(cmp_gd_125)); // gd <= 125.53 -> A<B: flip
    FloatingCompare C6  (.A(TH_23_92),       .B(temperature_f),   .result(cmp_temp_23)); // temp <= 23.92 -> A<B: flip
    FloatingCompare C7  (.A(TH_26_21),  .B(temperature_f),        .result(cmp_temp_26)); // temp <= 26.21 -> A<B, use original since temp<=26.21
    FloatingCompare C8  (.A(TH_7_15),        .B(soil_ph_f),       .result(cmp_ph_715)); // ph <= 7.15 -> A<B: flip
    FloatingCompare C9  (.A(TH_21_52),       .B(soil_moisture_f), .result(cmp_sm_21));   // sm <= 21.52 -> A<B: flip
    FloatingCompare C10 (.A(TH_0_59),        .B(NDVI_index_f),    .result(cmp_ndvi));   // NDVI <=0.59 -> A<B: flip
    FloatingCompare C11 (.A(TH_7_61),        .B(sunlight_hours_f),.result(cmp_sun));    // sun <=7.61 -> A<B: flip
    FloatingCompare C12 (.A(TH_2_76),        .B(crop_type),       .result(cmp_crop));   // crop <=2.76 -> A<B: flip

    // ================= FSM =================
    parameter IDLE    = 2'b00;
    parameter DECIDE  = 2'b01;
    parameter CONVERT = 2'b10;
    reg [1:0] state;

    // ================= Float to Int =================
    reg         f2i_stb;
    wire        f2i_ack;
    wire        f2i_in_ack;
    wire [31:0] f2i_out;
    reg  [31:0] yield_f;

    float_to_int f2i (
        .input_a(yield_f),
        .input_a_stb(f2i_stb),
        .output_z_ack(f2i_ack),
        .clk(clk),
        .rst(rst),
        .output_z(f2i_out),
        .output_z_stb(f2i_ack),
        .input_a_ack(f2i_in_ack)
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

                // if hum <= 76.42
                if (cmp_hum) begin

                    // if sm <= 35.31
                    if (cmp_sm) begin

                        // if ph <= 6.13
                        if (cmp_ph) begin

                            // if gd <= 127.97
                            if (cmp_gd_127)
                                yield_f <= Y_4012;
                            else
                                yield_f <= Y_3824;

                        end 
                        else begin  // ph > 6.13

                            // if gd <= 125.53
                            if (cmp_gd_125) begin

                                // if temp <= 23.92
                                if (cmp_temp_23)
                                    yield_f <= Y_4266;
                                else begin

                                    // if ph <= 7.15
                                    if (cmp_ph_715)
                                        yield_f <= Y_3802;
                                    else
                                        yield_f <= Y_4376;
                                end

                            end 
                            else begin  // gd > 125.53

                                // if sm <= 21.52
                                if (cmp_sm_21)
                                    yield_f <= Y_4476;
                                else
                                    yield_f <= Y_4074;
                            end
                        end

                    end 
                    else begin  // sm > 35.31

                        // if temp <= 26.21
                        if (cmp_temp_26)
                            yield_f <= Y_4004;
                        else
                            yield_f <= Y_3359;
                    end

                end 
                else begin  // hum > 76.42

                    // if ndvi <= 0.59
                    if (cmp_ndvi) begin

                        // if sun <= 7.61
                        if (cmp_sun)
                            yield_f <= Y_4160;
                        else
                            yield_f <= Y_3504;

                    end 
                    else begin  // ndvi > 0.59

                        // if crop <= 2.76
                        if (cmp_crop)
                            yield_f <= Y_4718;
                        else
                            yield_f <= Y_4168;
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

`endif