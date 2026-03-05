// import uvm_pkg::*;
// import shared_pkg::*;
// `timescale 1ns/1ns

// module tb_top;

//     // Clock / Reset
//     logic clk;
//     logic rst;

//     // DUT float inputs (32-bit single precision)
//     logic [31:0] soil_moisture_f, soil_ph_f, temperature_f;
//     logic [31:0] rainfall_f, humidity_f, sunlight_hours_f;
//     logic [31:0] NDVI_index_f, growing_days_f;
//     logic [31:0] crop_number;
//     crop_type_e crop_type;

//     // DUT output
//     logic [31:0] yield_int;

//     // Golden model variables (real)
//     real soil_moisture, soil_ph, temperature;
//     real rainfall, humidity, sunlight_hours, NDVI_index, growing_days;

//     logic [31:0] golden_yield_int_v1;
//     logic [31:0] golden_yield_int_v2;
//     logic [31:0] golden_yield_int_v3;

//     // Clock generation
//     initial clk = 0;
//     always #5 clk = ~clk;

//     // DUT
//     SIS dut (
//         .clk(clk),
//         .rst(rst),
//         .soil_moisture_f(soil_moisture_f),
//         .soil_ph_f(soil_ph_f),
//         .temperature_f(temperature_f),
//         .rainfall_f(rainfall_f),
//         .humidity_f(humidity_f),
//         .sunlight_hours_f(sunlight_hours_f),
//         .NDVI_index_f(NDVI_index_f),
//         .growing_days_f(growing_days_f),
//         .crop_type(crop_type),
//         .yield_int(yield_int)
//     );

// //     // Golden model (v1) scaling - no FSM
// //     golden_model_v1 golden_model_v1_inst (
// //         .clk(clk),
// //         .rst(rst),
// //         .soil_moisture(soil_moisture),
// //         .soil_ph(soil_ph),
// //         .temperature(temperature),
// //         .rainfall(rainfall),
// //         .humidity(humidity),
// //         .sunlight_hours(sunlight_hours),
// //         .NDVI_index(NDVI_index),
// //         .growing_days(growing_days),
// //         .crop_type(crop_number),
// //         .yield(golden_yield_int_v1)
// //     );

// //     // Golden model (v2) scalling - FSM
// //     golden_model_v2 golden_model_v2_inst (
// //         .clk(clk),
// //         .rst(rst),
// //         .soil_moisture(soil_moisture),
// //         .soil_ph(soil_ph),
// //         .temperature(temperature),
// //         .rainfall(rainfall),
// //         .humidity(humidity),
// //         .sunlight_hours(sunlight_hours),
// //         .NDVI_index(NDVI_index),
// //         .growing_days(growing_days),
// //         .crop_type(crop_number),
// //         .yield_int(golden_yield_int_v2)
// //     );
//     logic [31:0] A ;
//      logic [31:0] B ;
//      logic  C;

//     LE LE_inst (A,B,C);


//      // Golden model (v3) - no scalling - FSM
//         golden_model_v3 golden_model_v3_inst (
//                 .clk(clk),
//                 .rst(rst),
//                 .soil_moisture(soil_moisture),
//                 .soil_ph(soil_ph),
//                 .temperature(temperature),
//                 .rainfall(rainfall),
//                 .humidity(humidity),
//                 .sunlight_hours(sunlight_hours),
//                 .NDVI_index(NDVI_index),
//                 .growing_days(growing_days),
//                 .crop_type(crop_number),
//                 .yield_int(golden_yield_int_v3)
//         );


//     initial begin
//      A = 32'd5; // decimal 7
//      B = 32'd7; // decimal 5
//         // // Scale
//         // $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
//         // $display("| Row | Actual Yield (kaggle dataset) | Python Golden Model  | Golden Model V1 - Without FSM | Golden Model V2 - With FSM | RTL Design With FSM |");
//         // $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
//         // run_row(1, 35.95, 32'h420FCCCD, 5.99, 32'h40BFAE14, 17.79, 32'h418E51EC, 75.62, 32'h42973D71, 77.03, 32'h429A0F5C, 7.27, 32'h40E8A3D7, 0.63, 32'h3F2147AE, 122, 32'h42F40000, WHEAT, 4408, 4162);
//         // print_error();
//         // run_row(2, 19.74, 32'h419DEB85, 7.24, 32'h40E7AE14, 30.18, 32'h41F170A4, 89.91, 32'h42B3D1EC, 61.13, 32'h4274851F, 5.67, 32'h40B570A4, 0.58, 32'h3F147AE1, 112, 32'h42E00000, SOYBEAN, 5390, 4142);
//         // run_row(3, 29.32, 32'h41EA8F5C, 7.16, 32'h40E51EB8, 27.37, 32'h41DAF5C3, 265.43, 32'h4384B70A, 68.87, 32'h4289BD71, 8.23, 32'h4103AE14, 0.80, 32'h3F4CCCCD, 144, 32'h43100000, WHEAT, 2931, 4010);
//         // run_row(4, 17.33, 32'h418AA3D7, 6.03, 32'h40C0F5C3, 33.73, 32'h4206EB85, 212.01, 32'h4354028F, 70.46, 32'h428CEB85, 5.03, 32'h40A0F5C3, 0.44, 32'h3EE147AE, 134, 32'h43060000, MAIZE, 4228, 4162);
//         // run_row(5, 19.37, 32'h419AF5C3, 5.92, 32'h40BD70A4, 33.86, 32'h420770A4, 269.09, 32'h43868B85, 55.73, 32'h425EEB85, 7.93, 32'h40FDC28F, 0.84, 32'h3F570A3D, 105, 32'h42D20000, COTTON, 4980, 4203);
//         // run_row(6, 44.91, 32'h4233A3D7, 5.78, 32'h40B8F5C3, 24.87, 32'h41C6F5C3, 238.95, 32'h436EF333, 83.06, 32'h42A61EB8, 4.92, 32'h409D70A4, 0.82, 32'h3F51EB85, 114, 32'h42E40000, RICE, 4384, 4001);
//         // run_row(7, 36.28, 32'h42111EB8, 7.04, 32'h40E147AE, 21.80, 32'h41AE6666, 123.38, 32'h42F6C28F, 47.91, 32'h423FA3D7, 4.02, 32'h4080A3D7, 0.76, 32'h3F428F5C, 145, 32'h43110000, SOYBEAN, 4501, 4010);
//         // $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
//         // print_error();

//         // No scale
//         $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
//         $display("| Row | Actual Yield (kaggle dataset) | Python Golden Model  | Golden Model V3 - With FSM | RTL Design With FSM |");
//         $display("-------------------------------------------------------------------------------------------------------------------------------------------------");
//         run_row(1, 35.95, 32'h420FCCCD, 5.99, 32'h40BFAE14, 17.79, 32'h418E51EC, 75.62, 32'h42973D71, 77.03, 32'h429A0F5C, 7.27, 32'h40E8A3D7, 0.63, 32'h3F2147AE, 122, 32'h42F40000,1, WHEAT, 4408.07, 4718.38);
//         run_row(2, 19.74, 32'h419DEB85, 7.24, 32'h40E7AE14, 30.18, 32'h41F170A4, 89.91, 32'h42B3D1EC, 61.13, 32'h4274851F, 5.67, 32'h40B570A4, 0.58, 32'h3F147AE1, 112, 32'h42E00000,2, SOYBEAN, 5389.98, 4376.08);
//         run_row(3, 29.32, 32'h41EA8F5C, 7.16, 32'h40E51EB8, 27.37, 32'h41DAF5C3, 265.43, 32'h4384B70A, 68.87, 32'h4289BD71, 8.23, 32'h4103AE14, 0.80, 32'h3F4CCCCD, 144, 32'h43100000,1, WHEAT, 2931.16, 4074.15);
//         run_row(4, 17.33, 32'h418AA3D7, 6.03, 32'h40C0F5C3, 33.73, 32'h4206EB85, 212.01, 32'h4354028F, 70.46, 32'h428CEB85, 5.03, 32'h40A0F5C3, 0.44, 32'h3EE147AE, 134, 32'h43060000,3, MAIZE, 4227.80, 3824.74);
//         run_row(5, 19.37, 32'h419AF5C3, 5.92, 32'h40BD70A4, 33.86, 32'h420770A4, 269.09, 32'h43868B85, 55.73, 32'h425EEB85, 7.93, 32'h40FDC28F, 0.84, 32'h3F570A3D, 105, 32'h42D20000,4, COTTON, 4979.96, 4012.16);
//         run_row(6, 44.91, 32'h4233A3D7, 5.78, 32'h40B8F5C3, 24.87, 32'h41C6F5C3, 238.95, 32'h436EF333, 83.06, 32'h42A61EB8, 4.92, 32'h409D70A4, 0.82, 32'h3F51EB85, 114, 32'h42E40000,5, RICE, 4383.55, 4168.09);
//         run_row(7, 36.28, 32'h42111EB8, 7.04, 32'h40E147AE, 21.80, 32'h41AE6666, 123.38, 32'h42F6C28F, 47.91, 32'h423FA3D7, 4.02, 32'h4080A3D7, 0.76, 32'h3F428F5C, 145, 32'h43110000,2, SOYBEAN, 4501.20, 4004.49);
//         $display("-------------------------------------------------------------------------------------------------------------------------------------------------");

//         $display("C value = %d", C); // decimal

//         $stop;
//     end

//         // task automatic print_error();
//         // begin
//         //         $display("-------------------------------------------------------------------------------------------");
//         // $display("| Parameter | Golden Model | RTL Design | %% Error                                        ");
//         // $display("-------------------------------------------------------------------------------------------");

//         // $display("| sm        | %8.4f      | %8.4f     | %8.2f", 
//         //         golden_model_v2_inst.sm_norm, 
//         //         $bitstoshortreal(dut.sm_norm),
//         //         100.0 * ($bitstoshortreal(dut.sm_norm) - golden_model_v2_inst.sm_norm)/golden_model_v2_inst.sm_norm);

//         // $display("| ph        | %8.4f      | %8.4f     | %8.2f", 
//         //         golden_model_v2_inst.ph_norm, 
//         //         $bitstoshortreal(dut.ph_norm),
//         //         100.0 * ($bitstoshortreal(dut.ph_norm) - golden_model_v2_inst.ph_norm)/golden_model_v2_inst.ph_norm);

//         // $display("| sun       | %8.4f      | %8.4f     | %8.2f", 
//         //         golden_model_v2_inst.sun_norm, 
//         //         $bitstoshortreal(dut.sun_norm),
//         //         100.0 * ($bitstoshortreal(dut.sun_norm) - golden_model_v2_inst.sun_norm)/golden_model_v2_inst.sun_norm);

//         // $display("| ndvi      | %8.4f      | %8.4f     | %8.2f", 
//         //         golden_model_v2_inst.ndvi_norm, 
//         //         $bitstoshortreal(dut.ndvi_norm),
//         //         100.0 * ($bitstoshortreal(dut.ndvi_norm) - golden_model_v2_inst.ndvi_norm)/golden_model_v2_inst.ndvi_norm);

//         // $display("| gd        | %8.4f      | %8.4f     | %8.2f", 
//         //         golden_model_v2_inst.gd_norm, 
//         //         $bitstoshortreal(dut.gd_norm),
//         //         100.0 * ($bitstoshortreal(dut.gd_norm) - golden_model_v2_inst.gd_norm)/golden_model_v2_inst.gd_norm);

//         // $display("-------------------------------------------------------------------------------------------");
//         // end
//         // endtask
//     task automatic run_row(
//         input int row,
//         input real sm_real, input [31:0] sm_ieee,
//         input real ph_real, input [31:0] ph_ieee,
//         input real tmp_real, input [31:0] tmp_ieee,
//         input real rf_real, input [31:0] rf_ieee,
//         input real hum_real, input [31:0] hum_ieee,
//         input real sun_real, input [31:0] sun_ieee,
//         input real ndvi_real, input [31:0] ndvi_ieee,
//         input real gd_real, input [31:0] gd_ieee,
//         input int crop_num,
//         input crop_type_e ct,
//         input real actual_yield,
//         input real golden_model_yield
//     );
//         begin
//             rst = 1; #10;
//             rst = 0; #10;

//             // DUT gets IEEE-754 32-bit
//             soil_moisture_f  = sm_ieee;
//             soil_ph_f        = ph_ieee;
//             temperature_f    = tmp_ieee;
//             rainfall_f       = rf_ieee;
//             humidity_f       = hum_ieee;
//             sunlight_hours_f = sun_ieee;
//             NDVI_index_f     = ndvi_ieee;
//             growing_days_f   = gd_ieee;
//             crop_type        = ct;

//             // Golden models get real numbers
//             soil_moisture  = sm_real;
//             soil_ph        = ph_real;
//             temperature    = tmp_real;
//             rainfall       = rf_real;
//             humidity       = hum_real;
//             sunlight_hours = sun_real;
//             NDVI_index     = ndvi_real;
//             growing_days   = gd_real;
//             crop_number    = crop_num;
//             // Wait until DUT yield_int is valid
//             wait(yield_int != 0);
//             repeat(40) @(posedge clk);
//             check_floating_compare(hum_real,sm_real,ph_real,gd_real,tmp_real,sun_real,ndvi_real,ct);
//             $display("| %3d | %28d | %20d | %25d | %20d |",
//          row, actual_yield, golden_model_yield, golden_yield_int_v3, yield_int);
//         end
//     endtask

//     task automatic check_floating_compare(
//     input real humidity_r,
//     input real soil_moisture_r,
//     input real soil_ph_r,
//     input real growing_days_r,
//     input real temperature_r,
//     input real sunlight_r,
//     input real NDVI_r,
//     input real crop_r
// );
//     // Local "golden" results
//     logic cmp_hum_golden, cmp_sm_golden, cmp_ph_golden;
//     logic cmp_gd_127_golden, cmp_gd_125_golden;
//     logic cmp_temp_23_golden, cmp_temp_26_golden;
//     logic cmp_ph_715_golden, cmp_sm_21_golden;
//     logic cmp_ndvi_golden, cmp_sun_golden, cmp_crop_golden;

//     // Thresholds (same as SIS module)
//     real TH_76_42  = 76.42;
//     real TH_35_31  = 35.31;
//     real TH_6_13   = 6.13;
//     real TH_127_97 = 127.97;
//     real TH_125_53 = 125.53;
//     real TH_23_92  = 23.92;
//     real TH_26_21  = 26.21;
//     real TH_7_15   = 7.15;
//     real TH_21_52  = 21.52;
//     real TH_0_59   = 0.59;
//     real TH_7_61   = 7.61;
//     real TH_2_76   = 2.76;

//         // Compute golden results
//         // hum <= 76.42
//         cmp_hum_golden     = (humidity_r <= TH_76_42);
//         // sm <= 35.31
//         cmp_sm_golden      = (soil_moisture_r <= TH_35_31);
//         // ph <= 6.13
//         cmp_ph_golden      = (soil_ph_r <= TH_6_13);
//         // gd <= 127.97
//         cmp_gd_127_golden  = (growing_days_r <= TH_127_97);
//         // gd <= 125.53
//         cmp_gd_125_golden  = (growing_days_r <= TH_125_53);
//         // temp <= 23.92
//         cmp_temp_23_golden = (temperature_r <= TH_23_92);
//         // temp <= 26.21
//         cmp_temp_26_golden = (temperature_r <= TH_26_21);
//         // ph <= 7.15
//         cmp_ph_715_golden  = (soil_ph_r <= TH_7_15);
//         // sm <= 21.52
//         cmp_sm_21_golden   = (soil_moisture_r <= TH_21_52);
//         // NDVI <=0.59
//         cmp_ndvi_golden    = (NDVI_r <= TH_0_59);
//         // sun <=7.61
//         cmp_sun_golden     = (sunlight_r <= TH_7_61);
//         // crop <=2.76
//         cmp_crop_golden    = (crop_r <= TH_2_76);

//         // Automatic check against DUT
//         // Check against DUT and print values if there is an error
//         // Check against DUT and print values if there is an error

// if (cmp_hum_golden !== dut.cmp_hum)
//     $display("Error: hum_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", humidity_r, TH_76_42, dut.cmp_hum, cmp_hum_golden);

// if (cmp_sm_golden !== dut.cmp_sm)
//     $display("Error: soil_moisture_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", soil_moisture_r, TH_35_31, dut.cmp_sm, cmp_sm_golden);

// if (cmp_ph_golden !== dut.cmp_ph)
//     $display("Error: soil_ph_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", soil_ph_r, TH_6_13, dut.cmp_ph, cmp_ph_golden);

// if (cmp_gd_127_golden !== dut.cmp_gd_127)
//     $display("Error: growing_days_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", growing_days_r, TH_127_97, dut.cmp_gd_127, cmp_gd_127_golden);

// if (cmp_gd_125_golden !== dut.cmp_gd_125)
//     $display("Error: growing_days_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", growing_days_r, TH_125_53, dut.cmp_gd_125, cmp_gd_125_golden);

// if (cmp_temp_23_golden !== dut.cmp_temp_23)
//     $display("Error: temperature_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", temperature_r, TH_23_92, dut.cmp_temp_23, cmp_temp_23_golden);

// if (cmp_temp_26_golden !== dut.cmp_temp_26)
//     $display("Error: temperature_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", temperature_r, TH_26_21, dut.cmp_temp_26, cmp_temp_26_golden);

// if (cmp_ph_715_golden !== dut.cmp_ph_715)
//     $display("Error: soil_ph_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", soil_ph_r, TH_7_15, dut.cmp_ph_715, cmp_ph_715_golden);

// if (cmp_sm_21_golden !== dut.cmp_sm_21)
//     $display("Error: soil_moisture_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", soil_moisture_r, TH_21_52, dut.cmp_sm_21, cmp_sm_21_golden);

// if (cmp_ndvi_golden !== dut.cmp_ndvi)
//     $display("Error: NDVI_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", NDVI_r, TH_0_59, dut.cmp_ndvi, cmp_ndvi_golden);

// if (cmp_sun_golden !== dut.cmp_sun)
//     $display("Error: sunlight_hours_r=%0.2f <= %0.2f, dut=%0b, golden=%0b", sunlight_r, TH_7_61, dut.cmp_sun, cmp_sun_golden);


//     $display("----------------------------------------------------------------------------------");

// endtask

// endmodule