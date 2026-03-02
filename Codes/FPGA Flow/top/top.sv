import uvm_pkg::*;
import shared_pkg::*;
`timescale 1ns/1ps

module tb_top;

    // Clock / Reset
    logic clk;
    logic rst;

    // -------- DUT float inputs --------
    logic [31:0] soil_moisture_f;
    logic [31:0] soil_ph_f;
    logic [31:0] temperature_f;
    logic [31:0] rainfall_f;
    logic [31:0] humidity_f;
    logic [31:0] sunlight_hours_f;
    logic [31:0] NDVI_index_f;
    logic [31:0] growing_days_f;
    crop_type_e crop_type;

    // -------- DUT outputs --------
    logic [31:0] yield_int;

    // -------- Float-to-int conversion signals --------
    logic [31:0] sm_f2i, ph_f2i, tmp_f2i, rf_f2i;
    logic [31:0] hum_f2i, sun_f2i, ndvi_f2i, gd_f2i;

    logic        sm_stb, ph_stb, tmp_stb, rf_stb;
    logic        hum_stb, sun_stb, ndvi_stb, gd_stb;
    logic        sm_ack, ph_ack, tmp_ack, rf_ack;
    logic        hum_ack, sun_ack, ndvi_ack, gd_ack;

    // Clock generation
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // ------------------ DUT ------------------
    SIS dut (
        .clk(clk),
        .rst(rst),
        .soil_moisture_f(soil_moisture_f),
        .soil_ph_f(soil_ph_f),
        .temperature_f(temperature_f),
        .rainfall_f(rainfall_f),
        .humidity_f(humidity_f),
        .sunlight_hours_f(sunlight_hours_f),
        .NDVI_index_f(NDVI_index_f),
        .growing_days_f(growing_days_f),
        .crop_type(crop_type),
        .yield_int(yield_int)
    );

    // ------------------ float_to_int converters ------------------
    float_to_int sm_converter (.input_a(sm_f2i), .input_a_stb(sm_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(soil_moisture_f), .output_z_stb(sm_ack));
    float_to_int ph_converter (.input_a(ph_f2i), .input_a_stb(ph_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(soil_ph_f), .output_z_stb(ph_ack));
    float_to_int tmp_converter(.input_a(tmp_f2i), .input_a_stb(tmp_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(temperature_f), .output_z_stb(tmp_ack));
    float_to_int rf_converter (.input_a(rf_f2i), .input_a_stb(rf_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(rainfall_f), .output_z_stb(rf_ack));
    float_to_int hum_converter(.input_a(hum_f2i), .input_a_stb(hum_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(humidity_f), .output_z_stb(hum_ack));
    float_to_int sun_converter(.input_a(sun_f2i), .input_a_stb(sun_stb), .output_z_ack(1'b1),
                               .clk(clk), .rst(rst), .output_z(sunlight_hours_f), .output_z_stb(sun_ack));
    float_to_int ndvi_converter(.input_a(ndvi_f2i), .input_a_stb(ndvi_stb), .output_z_ack(1'b1),
                                .clk(clk), .rst(rst), .output_z(NDVI_index_f), .output_z_stb(ndvi_ack));
    float_to_int gd_converter(.input_a(gd_f2i), .input_a_stb(gd_stb), .output_z_ack(1'b1),
                              .clk(clk), .rst(rst), .output_z(growing_days_f), .output_z_stb(gd_ack));

    // ------------------ Test procedure ------------------
    initial begin
        $display("------------------------------------------------------------");
        $display("| Row | DUT Yield (int)             |");
        $display("------------------------------------------------------------");

        // Example: call test row
        run_row(1, 35.95, 5.99, 17.79, 75.62, 77.03, 7.27, 0.63, 122, WHEAT);
        run_row(2, 19.74, 7.24, 30.18, 89.91, 61.13, 5.67, 0.58, 112, SOYBEAN);
        run_row(3, 29.32, 7.16, 27.37, 265.43, 68.87, 8.23, 0.80, 144, WHEAT);
        run_row(4, 17.33, 6.03, 33.73, 212.01, 70.46, 5.03, 0.44, 134, MAIZE);
        run_row(5, 19.37, 5.92, 33.86, 269.09, 55.73, 7.93, 0.84, 105, COTTON);
        run_row(6, 44.91, 5.78, 24.87, 238.95, 83.06, 4.92, 0.82, 114, RICE);
        run_row(7, 36.28, 7.04, 21.80, 123.38, 47.91, 4.02, 0.76, 145, SOYBEAN);

        $display("------------------------------------------------------------");
        $stop;
    end

    // ------------------ Task for each row ------------------
    task automatic run_row(
        input int row,
        input real sm,
        input real ph,
        input real tmp,
        input real rf,
        input real hum,
        input real sun,
        input real ndvi,
        input real gd,
        input crop_type_e ct
    );
        begin
            rst = 1;

            // Convert each input real -> float_to_int input
            sm_f2i  = $realtobits(sm);    sm_stb  = 1; @(posedge sm_ack); sm_stb  = 0;
            ph_f2i  = $realtobits(ph);    ph_stb  = 1; @(posedge ph_ack); ph_stb  = 0;
            tmp_f2i = $realtobits(tmp);   tmp_stb = 1; @(posedge tmp_ack); tmp_stb = 0;
            rf_f2i  = $realtobits(rf);    rf_stb  = 1; @(posedge rf_ack); rf_stb  = 0;
            hum_f2i = $realtobits(hum);   hum_stb = 1; @(posedge hum_ack); hum_stb = 0;
            sun_f2i = $realtobits(sun);   sun_stb = 1; @(posedge sun_ack); sun_stb = 0;
            ndvi_f2i= $realtobits(ndvi);  ndvi_stb= 1; @(posedge ndvi_ack); ndvi_stb=0;
            gd_f2i  = $realtobits(gd);    gd_stb  = 1; @(posedge gd_ack); gd_stb  = 0;

            crop_type = ct;

            #10 rst = 0; #10;

            $display("| %2d  | %25d |", row, yield_int);
        end
    endtask

endmodule