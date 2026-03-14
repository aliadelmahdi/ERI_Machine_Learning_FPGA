if (LE(Crop_Type, 64'h400C000000000000)) begin
    if (LE(Crop_Type, 64'h3FF8000000000000)) begin
        if (LE(Crop_Type, 64'h3FE0000000000000)) begin
            if (LE(Fertilizer_Used, 64'h406E370A40000000)) begin
                if (LE(Rainfall, 64'h409A5147A0000000)) begin
                    if (LE(Fertilizer_Used, 64'h405B3199A0000000)) begin
                        if (LE(Wind_Speed, 64'h400E666660000000)) begin
                            if (LE(Rainfall, 64'h407B6D9990000000)) begin
                                if (LE(Rainfall, 64'h4077F8B850000000)) begin
                                    yield_f_reg = 64'h400CCCCCCCCCCCCD;
                                end else begin  // Rainfall > 64'h4077F8B850000000
                                    yield_f_reg = 64'h40101EB851EB851F;
                                end
                            end else begin  // Rainfall > 64'h407B6D9990000000
                                if (LE(Soil_Moisture, 64'h404CF00000000000)) begin
                                    yield_f_reg = 64'h401894D880BB3EE8;
                                end else begin  // Soil_Moisture > 64'h404CF00000000000
                                    yield_f_reg = 64'h40202740DA740DA7;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h400E666660000000
                            if (LE(Rainfall, 64'h409506B850000000)) begin
                                if (LE(Soil_Moisture, 64'h403E933330000000)) begin
                                    yield_f_reg = 64'h400FD27D27D27D29;
                                end else begin  // Soil_Moisture > 64'h403E933330000000
                                    yield_f_reg = 64'h40143D9B9D4B0990;
                                end
                            end else begin  // Rainfall > 64'h409506B850000000
                                if (LE(Wind_Speed, 64'h402DF851E0000000)) begin
                                    yield_f_reg = 64'h40188E063BA8BCC6;
                                end else begin  // Wind_Speed > 64'h402DF851E0000000
                                    yield_f_reg = 64'h400E444444444445;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h405B3199A0000000
                        if (LE(Soil_Moisture, 64'h404918F5C0000000)) begin
                            if (LE(Wind_Speed, 64'h4028266660000000)) begin
                                if (LE(Rainfall, 64'h40968BB330000000)) begin
                                    yield_f_reg = 64'h4019842B7E5D1C2D;
                                end else begin  // Rainfall > 64'h40968BB330000000
                                    yield_f_reg = 64'h401CE3D70A3D70A6;
                                end
                            end else begin  // Wind_Speed > 64'h4028266660000000
                                if (LE(Rainfall, 64'h4084563330000000)) begin
                                    yield_f_reg = 64'h4013270A3D70A3D7;
                                end else begin  // Rainfall > 64'h4084563330000000
                                    yield_f_reg = 64'h4017BFB2E6194C81;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h404918F5C0000000
                            if (LE(Rainfall, 64'h409473D710000000)) begin
                                if (LE(Wind_Speed, 64'h401D1999A0000000)) begin
                                    yield_f_reg = 64'h401E851EB851EB86;
                                end else begin  // Wind_Speed > 64'h401D1999A0000000
                                    yield_f_reg = 64'h401A12021E5DECEE;
                                end
                            end else begin  // Rainfall > 64'h409473D710000000
                                if (LE(Soil_pH, 64'h401D7AE150000000)) begin
                                    yield_f_reg = 64'h4020A12878EDF545;
                                end else begin  // Soil_pH > 64'h401D7AE150000000
                                    yield_f_reg = 64'h401C83126E978D50;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h409A5147A0000000
                    if (LE(Fertilizer_Used, 64'h4060E599A0000000)) begin
                        if (LE(Soil_Moisture, 64'h4045EF5C30000000)) begin
                            if (LE(Wind_Speed, 64'h4020E147B0000000)) begin
                                if (LE(Humidity, 64'h4051C851F0000000)) begin
                                    yield_f_reg = 64'h401A764A26D764A1;
                                end else begin  // Humidity > 64'h4051C851F0000000
                                    yield_f_reg = 64'h401EFF5C28F5C290;
                                end
                            end else begin  // Wind_Speed > 64'h4020E147B0000000
                                if (LE(Temperature, 64'h4043B28F50000000)) begin
                                    yield_f_reg = 64'h4018B88455121DEE;
                                end else begin  // Temperature > 64'h4043B28F50000000
                                    yield_f_reg = 64'h401099999999999A;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h4045EF5C30000000
                            if (LE(P, 64'h4032800000000000)) begin
                                yield_f_reg = 64'h401328F5C28F5C29;
                            end else begin  // P > 64'h4032800000000000
                                if (LE(Soil_Moisture, 64'h404EC66670000000)) begin
                                    yield_f_reg = 64'h401DA3A29C779A6A;
                                end else begin  // Soil_Moisture > 64'h404EC66670000000
                                    yield_f_reg = 64'h4020D93BFA2608C7;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4060E599A0000000
                        if (LE(Soil_Moisture, 64'h4048D8F5C0000000)) begin
                            if (LE(Rainfall, 64'h409E636670000000)) begin
                                if (LE(K, 64'h4039800000000000)) begin
                                    yield_f_reg = 64'h4015258BF258BF25;
                                end else begin  // K > 64'h4039800000000000
                                    yield_f_reg = 64'h401D806D3A06D3A3;
                                end
                            end else begin  // Rainfall > 64'h409E636670000000
                                if (LE(Soil_pH, 64'h40151EB860000000)) begin
                                    yield_f_reg = 64'h401D26CDE0BDB5A2;
                                end else begin  // Soil_pH > 64'h40151EB860000000
                                    yield_f_reg = 64'h402066BAF66BAF66;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h4048D8F5C0000000
                            if (LE(Soil_pH, 64'h401E051EB0000000)) begin
                                if (LE(Soil_pH, 64'h40189EB850000000)) begin
                                    yield_f_reg = 64'h4020B6EC736EC736;
                                end else begin  // Soil_pH > 64'h40189EB850000000
                                    yield_f_reg = 64'h40235A485CD7B901;
                                end
                            end else begin  // Soil_pH > 64'h401E051EB0000000
                                if (LE(Altitude, 64'h409AAA0000000000)) begin
                                    yield_f_reg = 64'h402013A06D3A06D4;
                                end else begin  // Altitude > 64'h409AAA0000000000
                                    yield_f_reg = 64'h401AEE147AE147AE;
                                end
                            end
                        end
                    end
                end
            end else begin  // Fertilizer_Used > 64'h406E370A40000000
                if (LE(Rainfall, 64'h409A6DFAE0000000)) begin
                    if (LE(Soil_Moisture, 64'h403AFAE150000000)) begin
                        if (LE(N, 64'h405CE00000000000)) begin
                            if (LE(N, 64'h403F800000000000)) begin
                                yield_f_reg = 64'h400B851EB851EB85;
                            end else begin  // N > 64'h403F800000000000
                                if (LE(K, 64'h4038000000000000)) begin
                                    yield_f_reg = 64'h400FD70A3D70A3D7;
                                end else begin  // K > 64'h4038000000000000
                                    yield_f_reg = 64'h401BC8A60DD67C8A;
                                end
                            end
                        end else begin  // N > 64'h405CE00000000000
                            if (LE(Rainfall, 64'h4098ACC7A0000000)) begin
                                if (LE(Temperature, 64'h40414C28F0000000)) begin
                                    yield_f_reg = 64'h401F36FE1A8C5371;
                                end else begin  // Temperature > 64'h40414C28F0000000
                                    yield_f_reg = 64'h401B35C28F5C28F7;
                                end
                            end else begin  // Rainfall > 64'h4098ACC7A0000000
                                if (LE(N, 64'h4064300000000000)) begin
                                    yield_f_reg = 64'h4021C28F5C28F5C3;
                                end else begin  // N > 64'h4064300000000000
                                    yield_f_reg = 64'h4024C7AE147AE148;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h403AFAE150000000
                        if (LE(Soil_pH, 64'h4014FAE140000000)) begin
                            if (LE(P, 64'h4037800000000000)) begin
                                if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h40188F5C28F5C28F;
                                end else begin  // Soil_Type > 64'h3FF8000000000000
                                    yield_f_reg = 64'h401051EB851EB852;
                                end
                            end else begin  // P > 64'h4037800000000000
                                if (LE(Fertilizer_Used, 64'h4071850A40000000)) begin
                                    yield_f_reg = 64'h401AD3A06D3A06D4;
                                end else begin  // Fertilizer_Used > 64'h4071850A40000000
                                    yield_f_reg = 64'h401F048D159E26B0;
                                end
                            end
                        end else begin  // Soil_pH > 64'h4014FAE140000000
                            if (LE(Rainfall, 64'h4092460520000000)) begin
                                if (LE(Wind_Speed, 64'h402FD70A30000000)) begin
                                    yield_f_reg = 64'h40201DB97530ECA7;
                                end else begin  // Wind_Speed > 64'h402FD70A30000000
                                    yield_f_reg = 64'h401C319FE6CB3980;
                                end
                            end else begin  // Rainfall > 64'h4092460520000000
                                if (LE(Soil_pH, 64'h401C0A3D70000000)) begin
                                    yield_f_reg = 64'h4021ED6BF577A965;
                                end else begin  // Soil_pH > 64'h401C0A3D70000000
                                    yield_f_reg = 64'h402068D3447241C1;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h409A6DFAE0000000
                    if (LE(Soil_Moisture, 64'h40462EB850000000)) begin
                        if (LE(K, 64'h4055A00000000000)) begin
                            if (LE(Fertilizer_Used, 64'h406FFEE150000000)) begin
                                if (LE(Wind_Speed, 64'h400D5C28F0000000)) begin
                                    yield_f_reg = 64'h4020B851EB851EB8;
                                end else begin  // Wind_Speed > 64'h400D5C28F0000000
                                    yield_f_reg = 64'h401A4E81B4E81B4F;
                                end
                            end else begin  // Fertilizer_Used > 64'h406FFEE150000000
                                if (LE(N, 64'h4050E00000000000)) begin
                                    yield_f_reg = 64'h401E89D89D89D89C;
                                end else begin  // N > 64'h4050E00000000000
                                    yield_f_reg = 64'h4021900AEC33E1F7;
                                end
                            end
                        end else begin  // K > 64'h4055A00000000000
                            if (LE(Rainfall, 64'h409EC8B850000000)) begin
                                if (LE(Sunlight_Hours, 64'h4021547AE0000000)) begin
                                    yield_f_reg = 64'h40220595E0595E05;
                                end else begin  // Sunlight_Hours > 64'h4021547AE0000000
                                    yield_f_reg = 64'h401D170A3D70A3D7;
                                end
                            end else begin  // Rainfall > 64'h409EC8B850000000
                                if (LE(N, 64'h404D400000000000)) begin
                                    yield_f_reg = 64'h40208D159E26AF37;
                                end else begin  // N > 64'h404D400000000000
                                    yield_f_reg = 64'h402400D48C97A9A7;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h40462EB850000000
                        if (LE(P, 64'h404D400000000000)) begin
                            if (LE(Wind_Speed, 64'h400770A3E0000000)) begin
                                if (LE(Rainfall, 64'h40A181A8F0000000)) begin
                                    yield_f_reg = 64'h4023B5C28F5C28F6;
                                end else begin  // Rainfall > 64'h40A181A8F0000000
                                    yield_f_reg = 64'h4025628F5C28F5C3;
                                end
                            end else begin  // Wind_Speed > 64'h400770A3E0000000
                                if (LE(Sunlight_Hours, 64'h401075C290000000)) begin
                                    yield_f_reg = 64'h40180A3D70A3D70A;
                                end else begin  // Sunlight_Hours > 64'h401075C290000000
                                    yield_f_reg = 64'h4022610EB1324F3F;
                                end
                            end
                        end else begin  // P > 64'h404D400000000000
                            if (LE(N, 64'h4051600000000000)) begin
                                if (LE(Temperature, 64'h4034F70A40000000)) begin
                                    yield_f_reg = 64'h401EC28F5C28F5C3;
                                end else begin  // Temperature > 64'h4034F70A40000000
                                    yield_f_reg = 64'h4022C66666666666;
                                end
                            end else begin  // N > 64'h4051600000000000
                                if (LE(Rainfall, 64'h409C528F60000000)) begin
                                    yield_f_reg = 64'h4029B851EB851EB8;
                                end else begin  // Rainfall > 64'h409C528F60000000
                                    yield_f_reg = 64'h4024CF13579BE024;
                                end
                            end
                        end
                    end
                end
            end
        end else begin  // Crop_Type > 64'h3FE0000000000000
            if (LE(Fertilizer_Used, 64'h40665E8F50000000)) begin
                if (LE(Rainfall, 64'h409622D700000000)) begin
                    if (LE(Soil_Moisture, 64'h403F50A3D0000000)) begin
                        if (LE(Fertilizer_Used, 64'h405E875C20000000)) begin
                            if (LE(Pesticide_Used, 64'h4029FAE150000000)) begin
                                if (LE(Sunlight_Hours, 64'h4017E66660000000)) begin
                                    yield_f_reg = 64'h401F7EF9DB22D0E5;
                                end else begin  // Sunlight_Hours > 64'h4017E66660000000
                                    yield_f_reg = 64'h4019249249249249;
                                end
                            end else begin  // Pesticide_Used > 64'h4029FAE150000000
                                if (LE(Organic_Carbon, 64'h3FF6F5C290000000)) begin
                                    yield_f_reg = 64'h401E317E4B17E4B2;
                                end else begin  // Organic_Carbon > 64'h3FF6F5C290000000
                                    yield_f_reg = 64'h4022844444444444;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h405E875C20000000
                            if (LE(Altitude, 64'h4096700000000000)) begin
                                if (LE(Altitude, 64'h4095D40000000000)) begin
                                    yield_f_reg = 64'h4020CF5C28F5C28F;
                                end else begin  // Altitude > 64'h4095D40000000000
                                    yield_f_reg = 64'h40255C28F5C28F5C;
                                end
                            end else begin  // Altitude > 64'h4096700000000000
                                if (LE(Soil_Moisture, 64'h403C8CCCD0000000)) begin
                                    yield_f_reg = 64'h401C0A3D70A3D70A;
                                end else begin  // Soil_Moisture > 64'h403C8CCCD0000000
                                    yield_f_reg = 64'h402259999999999A;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h403F50A3D0000000
                        if (LE(Wind_Speed, 64'h4029EE1470000000)) begin
                            if (LE(K, 64'h4054600000000000)) begin
                                if (LE(Fertilizer_Used, 64'h4053423D70000000)) begin
                                    yield_f_reg = 64'h401C189374BC6A7E;
                                end else begin  // Fertilizer_Used > 64'h4053423D70000000
                                    yield_f_reg = 64'h40215E9816D485A1;
                                end
                            end else begin  // K > 64'h4054600000000000
                                if (LE(Rainfall, 64'h40824CD700000000)) begin
                                    yield_f_reg = 64'h402145A1CAC08313;
                                end else begin  // Rainfall > 64'h40824CD700000000
                                    yield_f_reg = 64'h402317AAFD1A1540;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h4029EE1470000000
                            if (LE(Fertilizer_Used, 64'h4063B4A3E0000000)) begin
                                if (LE(Humidity, 64'h404C547AE0000000)) begin
                                    yield_f_reg = 64'h4020061AC812E794;
                                end else begin  // Humidity > 64'h404C547AE0000000
                                    yield_f_reg = 64'h401C333333333334;
                                end
                            end else begin  // Fertilizer_Used > 64'h4063B4A3E0000000
                                if (LE(Pesticide_Used, 64'h401147AE18000000)) begin
                                    yield_f_reg = 64'h402101B4E81B4E81;
                                end else begin  // Pesticide_Used > 64'h401147AE18000000
                                    yield_f_reg = 64'h40244A3D70A3D70B;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h409622D700000000
                    if (LE(Soil_Moisture, 64'h4043CAE140000000)) begin
                        if (LE(Fertilizer_Used, 64'h4060EA3D70000000)) begin
                            if (LE(Rainfall, 64'h40A139A900000000)) begin
                                if (LE(K, 64'h405A200000000000)) begin
                                    yield_f_reg = 64'h4020AB5E91C4F82C;
                                end else begin  // K > 64'h405A200000000000
                                    yield_f_reg = 64'h4022970A3D70A3D7;
                                end
                            end else begin  // Rainfall > 64'h40A139A900000000
                                if (LE(P, 64'h4058400000000000)) begin
                                    yield_f_reg = 64'h4022B6202ECFB9C8;
                                end else begin  // P > 64'h4058400000000000
                                    yield_f_reg = 64'h4027A8F5C28F5C29;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h4060EA3D70000000
                            if (LE(Soil_pH, 64'h401DF5C290000000)) begin
                                if (LE(P, 64'h4042000000000000)) begin
                                    yield_f_reg = 64'h4022AB020C49BA5E;
                                end else begin  // P > 64'h4042000000000000
                                    yield_f_reg = 64'h4024CC1802D327E7;
                                end
                            end else begin  // Soil_pH > 64'h401DF5C290000000
                                if (LE(Altitude, 64'h4092DE0000000000)) begin
                                    yield_f_reg = 64'h4020717E4B17E4B1;
                                end else begin  // Altitude > 64'h4092DE0000000000
                                    yield_f_reg = 64'h40231374BC6A7EFA;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4043CAE140000000
                        if (LE(Fertilizer_Used, 64'h4061E170B0000000)) begin
                            if (LE(N, 64'h4054A00000000000)) begin
                                if (LE(Temperature, 64'h4042AD70B0000000)) begin
                                    yield_f_reg = 64'h40236147AE147AE2;
                                end else begin  // Temperature > 64'h4042AD70B0000000
                                    yield_f_reg = 64'h402067AE147AE148;
                                end
                            end else begin  // N > 64'h4054A00000000000
                                if (LE(Wind_Speed, 64'h4007851EB0000000)) begin
                                    yield_f_reg = 64'h402651EB851EB852;
                                end else begin  // Wind_Speed > 64'h4007851EB0000000
                                    yield_f_reg = 64'h402424ED124ED125;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h4061E170B0000000
                            if (LE(Wind_Speed, 64'h4018C28F60000000)) begin
                                if (LE(Rainfall, 64'h40A0C60CD0000000)) begin
                                    yield_f_reg = 64'h402563D70A3D70A4;
                                end else begin  // Rainfall > 64'h40A0C60CD0000000
                                    yield_f_reg = 64'h402883D70A3D70A4;
                                end
                            end else begin  // Wind_Speed > 64'h4018C28F60000000
                                if (LE(P, 64'h4048000000000000)) begin
                                    yield_f_reg = 64'h4023641FDB97530E;
                                end else begin  // P > 64'h4048000000000000
                                    yield_f_reg = 64'h4025BFAE147AE148;
                                end
                            end
                        end
                    end
                end
            end else begin  // Fertilizer_Used > 64'h40665E8F50000000
                if (LE(Rainfall, 64'h4095ACEB80000000)) begin
                    if (LE(Soil_Moisture, 64'h4049A00000000000)) begin
                        if (LE(Fertilizer_Used, 64'h4070E68F60000000)) begin
                            if (LE(Region, 64'h3FE0000000000000)) begin
                                if (LE(K, 64'h4060900000000000)) begin
                                    yield_f_reg = 64'h4022FDA30D640974;
                                end else begin  // K > 64'h4060900000000000
                                    yield_f_reg = 64'h4026C28F5C28F5C2;
                                end
                            end else begin  // Region > 64'h3FE0000000000000
                                if (LE(Soil_Moisture, 64'h4038999990000000)) begin
                                    yield_f_reg = 64'h4020BD3A06D3A06D;
                                end else begin  // Soil_Moisture > 64'h4038999990000000
                                    yield_f_reg = 64'h4022460606060608;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h4070E68F60000000
                            if (LE(Rainfall, 64'h40929D8F50000000)) begin
                                if (LE(P, 64'h4051A00000000000)) begin
                                    yield_f_reg = 64'h40232A6C405D9F73;
                                end else begin  // P > 64'h4051A00000000000
                                    yield_f_reg = 64'h4024C6C405D9F739;
                                end
                            end else begin  // Rainfall > 64'h40929D8F50000000
                                if (LE(Fertilizer_Used, 64'h40739DEB90000000)) begin
                                    yield_f_reg = 64'h40256147AE147AE2;
                                end else begin  // Fertilizer_Used > 64'h40739DEB90000000
                                    yield_f_reg = 64'h4027B0A3D70A3D71;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4049A00000000000
                        if (LE(Fertilizer_Used, 64'h4072FE51E0000000)) begin
                            if (LE(Sunlight_Hours, 64'h4025599990000000)) begin
                                if (LE(Rainfall, 64'h4093B29470000000)) begin
                                    yield_f_reg = 64'h4024C13B8B302A7B;
                                end else begin  // Rainfall > 64'h4093B29470000000
                                    yield_f_reg = 64'h40276E147AE147AF;
                                end
                            end else begin  // Sunlight_Hours > 64'h4025599990000000
                                if (LE(Soil_Moisture, 64'h404CC147B0000000)) begin
                                    yield_f_reg = 64'h4022400000000000;
                                end else begin  // Soil_Moisture > 64'h404CC147B0000000
                                    yield_f_reg = 64'h401B7AE147AE147B;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h4072FE51E0000000
                            if (LE(Humidity, 64'h404EA51EC0000000)) begin
                                if (LE(Humidity, 64'h4045333340000000)) begin
                                    yield_f_reg = 64'h4028D0E560418936;
                                end else begin  // Humidity > 64'h4045333340000000
                                    yield_f_reg = 64'h40257D27D27D27D3;
                                end
                            end else begin  // Humidity > 64'h404EA51EC0000000
                                if (LE(Wind_Speed, 64'h401147AE18000000)) begin
                                    yield_f_reg = 64'h402A71EB851EB852;
                                end else begin  // Wind_Speed > 64'h401147AE18000000
                                    yield_f_reg = 64'h402907AE147AE148;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h4095ACEB80000000
                    if (LE(Soil_Moisture, 64'h404BD851F0000000)) begin
                        if (LE(Rainfall, 64'h40A05963E0000000)) begin
                            if (LE(Soil_pH, 64'h401C75C290000000)) begin
                                if (LE(Wind_Speed, 64'h4030B0A3E0000000)) begin
                                    yield_f_reg = 64'h4025EFB47DBAB962;
                                end else begin  // Wind_Speed > 64'h4030B0A3E0000000
                                    yield_f_reg = 64'h4022A18342183421;
                                end
                            end else begin  // Soil_pH > 64'h401C75C290000000
                                if (LE(Fertilizer_Used, 64'h4072323D70000000)) begin
                                    yield_f_reg = 64'h40236827CA2AB725;
                                end else begin  // Fertilizer_Used > 64'h4072323D70000000
                                    yield_f_reg = 64'h402579B2CE601936;
                                end
                            end
                        end else begin  // Rainfall > 64'h40A05963E0000000
                            if (LE(Fertilizer_Used, 64'h4070B5AE10000000)) begin
                                if (LE(P, 64'h404FC00000000000)) begin
                                    yield_f_reg = 64'h4024F0A3D70A3D71;
                                end else begin  // P > 64'h404FC00000000000
                                    yield_f_reg = 64'h40270EE500EE500F;
                                end
                            end else begin  // Fertilizer_Used > 64'h4070B5AE10000000
                                if (LE(Soil_Moisture, 64'h4040DA3D70000000)) begin
                                    yield_f_reg = 64'h4026F275DFAFE686;
                                end else begin  // Soil_Moisture > 64'h4040DA3D70000000
                                    yield_f_reg = 64'h4028732541945EFF;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h404BD851F0000000
                        if (LE(Fertilizer_Used, 64'h406D84A3E0000000)) begin
                            if (LE(Rainfall, 64'h40A22CAE10000000)) begin
                                if (LE(Altitude, 64'h408F600000000000)) begin
                                    yield_f_reg = 64'h40250118DE5AB278;
                                end else begin  // Altitude > 64'h408F600000000000
                                    yield_f_reg = 64'h4026CF5C28F5C290;
                                end
                            end else begin  // Rainfall > 64'h40A22CAE10000000
                                if (LE(N, 64'h405A800000000000)) begin
                                    yield_f_reg = 64'h40273645A1CAC083;
                                end else begin  // N > 64'h405A800000000000
                                    yield_f_reg = 64'h4028DE353F7CED91;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h406D84A3E0000000
                            if (LE(N, 64'h405BE00000000000)) begin
                                if (LE(K, 64'h4061A00000000000)) begin
                                    yield_f_reg = 64'h4027A63796AC9DFE;
                                end else begin  // K > 64'h4061A00000000000
                                    yield_f_reg = 64'h402C266666666666;
                                end
                            end else begin  // N > 64'h405BE00000000000
                                if (LE(Rainfall, 64'h40A1C66150000000)) begin
                                    yield_f_reg = 64'h40290F232C1396EF;
                                end else begin  // Rainfall > 64'h40A1C66150000000
                                    yield_f_reg = 64'h402C1C28F5C28F5C;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin  // Crop_Type > 64'h3FF8000000000000
        if (LE(Crop_Type, 64'h4004000000000000)) begin
            if (LE(Rainfall, 64'h4095444290000000)) begin
                if (LE(Fertilizer_Used, 64'h40628F0A40000000)) begin
                    if (LE(Soil_Moisture, 64'h40457147A0000000)) begin
                        if (LE(K, 64'h405D400000000000)) begin
                            if (LE(Wind_Speed, 64'h4030A00000000000)) begin
                                if (LE(Rainfall, 64'h407AB87AE0000000)) begin
                                    yield_f_reg = 64'h4035A147AE147AE1;
                                end else begin  // Rainfall > 64'h407AB87AE0000000
                                    yield_f_reg = 64'h4036A1E4F765FD8A;
                                end
                            end else begin  // Wind_Speed > 64'h4030A00000000000
                                if (LE(K, 64'h4053C00000000000)) begin
                                    yield_f_reg = 64'h40357258BF258BF3;
                                end else begin  // K > 64'h4053C00000000000
                                    yield_f_reg = 64'h4034933333333333;
                                end
                            end
                        end else begin  // K > 64'h405D400000000000
                            if (LE(Soil_pH, 64'h401C9EB850000000)) begin
                                if (LE(Humidity, 64'h40405A3D70000000)) begin
                                    yield_f_reg = 64'h403587AE147AE148;
                                end else begin  // Humidity > 64'h40405A3D70000000
                                    yield_f_reg = 64'h4037AA8B75842510;
                                end
                            end else begin  // Soil_pH > 64'h401C9EB850000000
                                if (LE(Soil_pH, 64'h401E199990000000)) begin
                                    yield_f_reg = 64'h4036BC962FC962FD;
                                end else begin  // Soil_pH > 64'h401E199990000000
                                    yield_f_reg = 64'h4035F28F5C28F5C2;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h40457147A0000000
                        if (LE(K, 64'h404C000000000000)) begin
                            if (LE(Rainfall, 64'h408946E150000000)) begin
                                if (LE(Humidity, 64'h404807AE20000000)) begin
                                    yield_f_reg = 64'h40354B851EB851EC;
                                end else begin  // Humidity > 64'h404807AE20000000
                                    yield_f_reg = 64'h4036A38E38E38E39;
                                end
                            end else begin  // Rainfall > 64'h408946E150000000
                                if (LE(Sunlight_Hours, 64'h4014000000000000)) begin
                                    yield_f_reg = 64'h40386FC962FC9630;
                                end else begin  // Sunlight_Hours > 64'h4014000000000000
                                    yield_f_reg = 64'h403721AC812E794E;
                                end
                            end
                        end else begin  // K > 64'h404C000000000000
                            if (LE(N, 64'h4060B00000000000)) begin
                                if (LE(Humidity, 64'h40432B8520000000)) begin
                                    yield_f_reg = 64'h4038AA0EA0EA0EA1;
                                end else begin  // Humidity > 64'h40432B8520000000
                                    yield_f_reg = 64'h40376A544D283EDE;
                                end
                            end else begin  // N > 64'h4060B00000000000
                                if (LE(Altitude, 64'h4082CC0000000000)) begin
                                    yield_f_reg = 64'h40372740DA740DA8;
                                end else begin  // Altitude > 64'h4082CC0000000000
                                    yield_f_reg = 64'h4038F19227192271;
                                end
                            end
                        end
                    end
                end else begin  // Fertilizer_Used > 64'h40628F0A40000000
                    if (LE(Soil_Moisture, 64'h4040E47AE0000000)) begin
                        if (LE(Fertilizer_Used, 64'h406CAAB850000000)) begin
                            if (LE(N, 64'h405FA00000000000)) begin
                                if (LE(Rainfall, 64'h40857D1470000000)) begin
                                    yield_f_reg = 64'h40366987654320FF;
                                end else begin  // Rainfall > 64'h40857D1470000000
                                    yield_f_reg = 64'h403788641FDB9753;
                                end
                            end else begin  // N > 64'h405FA00000000000
                                if (LE(Temperature, 64'h40384E1480000000)) begin
                                    yield_f_reg = 64'h4038BB900AEC33E2;
                                end else begin  // Temperature > 64'h40384E1480000000
                                    yield_f_reg = 64'h4037722D0E56041A;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h406CAAB850000000
                            if (LE(Wind_Speed, 64'h4030228F60000000)) begin
                                if (LE(Soil_Moisture, 64'h403C3D70A0000000)) begin
                                    yield_f_reg = 64'h4038721C10AFF9EB;
                                end else begin  // Soil_Moisture > 64'h403C3D70A0000000
                                    yield_f_reg = 64'h40394CE703AFB7EA;
                                end
                            end else begin  // Wind_Speed > 64'h4030228F60000000
                                if (LE(Fertilizer_Used, 64'h4070881480000000)) begin
                                    yield_f_reg = 64'h4036AE81B4E81B4F;
                                end else begin  // Fertilizer_Used > 64'h4070881480000000
                                    yield_f_reg = 64'h4037F2F79F2F79F4;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4040E47AE0000000
                        if (LE(Fertilizer_Used, 64'h406DDE1470000000)) begin
                            if (LE(Pesticide_Used, 64'h40069999A0000000)) begin
                                if (LE(Temperature, 64'h404240A3D0000000)) begin
                                    yield_f_reg = 64'h403985D4C3B2A190;
                                end else begin  // Temperature > 64'h404240A3D0000000
                                    yield_f_reg = 64'h403723D70A3D70A4;
                                end
                            end else begin  // Pesticide_Used > 64'h40069999A0000000
                                if (LE(K, 64'h4042C00000000000)) begin
                                    yield_f_reg = 64'h4037A66666666667;
                                end else begin  // K > 64'h4042C00000000000
                                    yield_f_reg = 64'h403892F7FB10A7CA;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h406DDE1470000000
                            if (LE(N, 64'h4065900000000000)) begin
                                if (LE(P, 64'h4052200000000000)) begin
                                    yield_f_reg = 64'h4038EE4773D3662E;
                                end else begin  // P > 64'h4052200000000000
                                    yield_f_reg = 64'h4039E57C57C57C56;
                                end
                            end else begin  // N > 64'h4065900000000000
                                if (LE(Pesticide_Used, 64'h4025DEB850000000)) begin
                                    yield_f_reg = 64'h403A740DA740DA74;
                                end else begin  // Pesticide_Used > 64'h4025DEB850000000
                                    yield_f_reg = 64'h403CB5C28F5C28F6;
                                end
                            end
                        end
                    end
                end
            end else begin  // Rainfall > 64'h4095444290000000
                if (LE(Fertilizer_Used, 64'h406C28A3E0000000)) begin
                    if (LE(Soil_Moisture, 64'h4045F147B0000000)) begin
                        if (LE(Fertilizer_Used, 64'h406005C290000000)) begin
                            if (LE(Organic_Carbon, 64'h3FDDC28F60000000)) begin
                                if (LE(K, 64'h4055400000000000)) begin
                                    yield_f_reg = 64'h4037C83126E978D5;
                                end else begin  // K > 64'h4055400000000000
                                    yield_f_reg = 64'h4036977777777778;
                                end
                            end else begin  // Organic_Carbon > 64'h3FDDC28F60000000
                                if (LE(Organic_Carbon, 64'h3FEFD70A40000000)) begin
                                    yield_f_reg = 64'h403890A3D70A3D6F;
                                end else begin  // Organic_Carbon > 64'h3FEFD70A40000000
                                    yield_f_reg = 64'h4037DC4444444444;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h406005C290000000
                            if (LE(Wind_Speed, 64'h402191EB80000000)) begin
                                if (LE(Soil_pH, 64'h4014DC28F0000000)) begin
                                    yield_f_reg = 64'h4037A3D70A3D70A2;
                                end else begin  // Soil_pH > 64'h4014DC28F0000000
                                    yield_f_reg = 64'h403970A3D70A3D72;
                                end
                            end else begin  // Wind_Speed > 64'h402191EB80000000
                                if (LE(Rainfall, 64'h40A14C28F0000000)) begin
                                    yield_f_reg = 64'h40382923C00B7F61;
                                end else begin  // Rainfall > 64'h40A14C28F0000000
                                    yield_f_reg = 64'h40391D70A3D70A3E;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4045F147B0000000
                        if (LE(Rainfall, 64'h40A11647B0000000)) begin
                            if (LE(Fertilizer_Used, 64'h405550A3D0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF5C28F60000000)) begin
                                    yield_f_reg = 64'h4037DC8695362030;
                                end else begin  // Organic_Carbon > 64'h3FF5C28F60000000
                                    yield_f_reg = 64'h403663D70A3D70A4;
                                end
                            end else begin  // Fertilizer_Used > 64'h405550A3D0000000
                                if (LE(Soil_pH, 64'h401647AE10000000)) begin
                                    yield_f_reg = 64'h40386B851EB851EB;
                                end else begin  // Soil_pH > 64'h401647AE10000000
                                    yield_f_reg = 64'h40397B8B80DD4A56;
                                end
                            end
                        end else begin  // Rainfall > 64'h40A11647B0000000
                            if (LE(K, 64'h405B800000000000)) begin
                                if (LE(P, 64'h4053800000000000)) begin
                                    yield_f_reg = 64'h40397E93E93E93E8;
                                end else begin  // P > 64'h4053800000000000
                                    yield_f_reg = 64'h403A8F29BF68C357;
                                end
                            end else begin  // K > 64'h405B800000000000
                                if (LE(N, 64'h4052E00000000000)) begin
                                    yield_f_reg = 64'h4039D5C28F5C28F6;
                                end else begin  // N > 64'h4052E00000000000
                                    yield_f_reg = 64'h403B7880BB3EE71F;
                                end
                            end
                        end
                    end
                end else begin  // Fertilizer_Used > 64'h406C28A3E0000000
                    if (LE(Fertilizer_Used, 64'h40740EE150000000)) begin
                        if (LE(Rainfall, 64'h409DF68520000000)) begin
                            if (LE(Wind_Speed, 64'h4010D70A40000000)) begin
                                if (LE(Region, 64'h400C000000000000)) begin
                                    yield_f_reg = 64'h403AF4E81B4E81B6;
                                end else begin  // Region > 64'h400C000000000000
                                    yield_f_reg = 64'h40393F7CED916872;
                                end
                            end else begin  // Wind_Speed > 64'h4010D70A40000000
                                if (LE(Soil_Moisture, 64'h4041266660000000)) begin
                                    yield_f_reg = 64'h4038C72310723107;
                                end else begin  // Soil_Moisture > 64'h4041266660000000
                                    yield_f_reg = 64'h40398E59771B7C7F;
                                end
                            end
                        end else begin  // Rainfall > 64'h409DF68520000000
                            if (LE(Soil_Moisture, 64'h4043E3D700000000)) begin
                                if (LE(Wind_Speed, 64'h4028F5C290000000)) begin
                                    yield_f_reg = 64'h403A3788455121E0;
                                end else begin  // Wind_Speed > 64'h4028F5C290000000
                                    yield_f_reg = 64'h4039631BCB564F00;
                                end
                            end else begin  // Soil_Moisture > 64'h4043E3D700000000
                                if (LE(Soil_pH, 64'h40169EB850000000)) begin
                                    yield_f_reg = 64'h403A136202ECFB9B;
                                end else begin  // Soil_pH > 64'h40169EB850000000
                                    yield_f_reg = 64'h403B201934C67F9F;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h40740EE150000000
                        if (LE(Soil_Moisture, 64'h403E4A3D70000000)) begin
                            if (LE(Organic_Carbon, 64'h3FD851EB80000000)) begin
                                yield_f_reg = 64'h403D170A3D70A3D7;
                            end else begin  // Organic_Carbon > 64'h3FD851EB80000000
                                if (LE(Soil_pH, 64'h4016DC2900000000)) begin
                                    yield_f_reg = 64'h4039B47AE147AE14;
                                end else begin  // Soil_pH > 64'h4016DC2900000000
                                    yield_f_reg = 64'h403AABE2BE2BE2BE;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h403E4A3D70000000
                            if (LE(Fertilizer_Used, 64'h4074142900000000)) begin
                                yield_f_reg = 64'h403E451EB851EB85;
                            end else begin  // Fertilizer_Used > 64'h4074142900000000
                                if (LE(Soil_pH, 64'h40146147B0000000)) begin
                                    yield_f_reg = 64'h403A51EB851EB852;
                                end else begin  // Soil_pH > 64'h40146147B0000000
                                    yield_f_reg = 64'h403B8B0716D7D3E4;
                                end
                            end
                        end
                    end
                end
            end
        end else begin  // Crop_Type > 64'h4004000000000000
            if (LE(Fertilizer_Used, 64'h4067FC28F0000000)) begin
                if (LE(Rainfall, 64'h40930F0000000000)) begin
                    if (LE(Fertilizer_Used, 64'h4061961470000000)) begin
                        if (LE(Soil_Moisture, 64'h404A0851F0000000)) begin
                            if (LE(Rainfall, 64'h408C0B70A0000000)) begin
                                if (LE(Sunlight_Hours, 64'h40215C2900000000)) begin
                                    yield_f_reg = 64'h401C3FD246F73056;
                                end else begin  // Sunlight_Hours > 64'h40215C2900000000
                                    yield_f_reg = 64'h4018F765FD8ADABA;
                                end
                            end else begin  // Rainfall > 64'h408C0B70A0000000
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h401A89C6489C6489;
                                end else begin  // Season > 64'h3FE0000000000000
                                    yield_f_reg = 64'h401FC7DEA00C22E6;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h404A0851F0000000
                            if (LE(Soil_pH, 64'h4014EB8520000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEC51EB90000000)) begin
                                    yield_f_reg = 64'h401D7AE147AE147B;
                                end else begin  // Organic_Carbon > 64'h3FEC51EB90000000
                                    yield_f_reg = 64'h401881B4E81B4E81;
                                end
                            end else begin  // Soil_pH > 64'h4014EB8520000000
                                if (LE(Altitude, 64'h4079000000000000)) begin
                                    yield_f_reg = 64'h401D3EE721A54D88;
                                end else begin  // Altitude > 64'h4079000000000000
                                    yield_f_reg = 64'h4020AF684BDA12F7;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4061961470000000
                        if (LE(Pesticide_Used, 64'h4026B33330000000)) begin
                            if (LE(Wind_Speed, 64'h40181EB850000000)) begin
                                if (LE(Altitude, 64'h4086B80000000000)) begin
                                    yield_f_reg = 64'h40212147AE147AE1;
                                end else begin  // Altitude > 64'h4086B80000000000
                                    yield_f_reg = 64'h402441EB851EB851;
                                end
                            end else begin  // Wind_Speed > 64'h40181EB850000000
                                if (LE(Pesticide_Used, 64'h3FF4CCCCC8000000)) begin
                                    yield_f_reg = 64'h401CF7CED916872B;
                                end else begin  // Pesticide_Used > 64'h3FF4CCCCC8000000
                                    yield_f_reg = 64'h40219B851EB851EC;
                                end
                            end
                        end else begin  // Pesticide_Used > 64'h4026B33330000000
                            if (LE(Soil_Moisture, 64'h4041B8F5C0000000)) begin
                                if (LE(N, 64'h4060300000000000)) begin
                                    yield_f_reg = 64'h401BA774410DDAA6;
                                end else begin  // N > 64'h4060300000000000
                                    yield_f_reg = 64'h4020AA3D70A3D70A;
                                end
                            end else begin  // Soil_Moisture > 64'h4041B8F5C0000000
                                if (LE(Rainfall, 64'h4080E11480000000)) begin
                                    yield_f_reg = 64'h401D4BC6A7EF9DB3;
                                end else begin  // Rainfall > 64'h4080E11480000000
                                    yield_f_reg = 64'h40216B52B52B52B5;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h40930F0000000000
                    if (LE(Rainfall, 64'h40A0E5E670000000)) begin
                        if (LE(Soil_pH, 64'h401D9EB850000000)) begin
                            if (LE(Soil_Moisture, 64'h4040C0A3E0000000)) begin
                                if (LE(Wind_Speed, 64'h4027733340000000)) begin
                                    yield_f_reg = 64'h4021CBA5E353F7CE;
                                end else begin  // Wind_Speed > 64'h4027733340000000
                                    yield_f_reg = 64'h401EC395810624DB;
                                end
                            end else begin  // Soil_Moisture > 64'h4040C0A3E0000000
                                if (LE(Fertilizer_Used, 64'h4061A0CCC0000000)) begin
                                    yield_f_reg = 64'h4021DBFDFC4E9007;
                                end else begin  // Fertilizer_Used > 64'h4061A0CCC0000000
                                    yield_f_reg = 64'h40238C37DAC37DAC;
                                end
                            end
                        end else begin  // Soil_pH > 64'h401D9EB850000000
                            if (LE(Soil_Moisture, 64'h4045FB8520000000)) begin
                                if (LE(Rainfall, 64'h409502A8F0000000)) begin
                                    yield_f_reg = 64'h4022428F5C28F5C3;
                                end else begin  // Rainfall > 64'h409502A8F0000000
                                    yield_f_reg = 64'h401D7B3EE721A54E;
                                end
                            end else begin  // Soil_Moisture > 64'h4045FB8520000000
                                if (LE(K, 64'h4052400000000000)) begin
                                    yield_f_reg = 64'h401FACF13579BE02;
                                end else begin  // K > 64'h4052400000000000
                                    yield_f_reg = 64'h4022C1C5B5F4F8E9;
                                end
                            end
                        end
                    end else begin  // Rainfall > 64'h40A0E5E670000000
                        if (LE(Soil_Moisture, 64'h40441AE140000000)) begin
                            if (LE(Soil_pH, 64'h401FF0A3E0000000)) begin
                                if (LE(P, 64'h403B800000000000)) begin
                                    yield_f_reg = 64'h4021B33333333333;
                                end else begin  // P > 64'h403B800000000000
                                    yield_f_reg = 64'h402365D8B3569FF7;
                                end
                            end else begin  // Soil_pH > 64'h401FF0A3E0000000
                                if (LE(Pesticide_Used, 64'h4018851EC0000000)) begin
                                    yield_f_reg = 64'h4022999999999999;
                                end else begin  // Pesticide_Used > 64'h4018851EC0000000
                                    yield_f_reg = 64'h401EB645A1CAC083;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h40441AE140000000
                            if (LE(Pesticide_Used, 64'h4025C51EC0000000)) begin
                                if (LE(K, 64'h405C000000000000)) begin
                                    yield_f_reg = 64'h4021FF6E5D4C3B2B;
                                end else begin  // K > 64'h405C000000000000
                                    yield_f_reg = 64'h4024DD2F1A9FBE76;
                                end
                            end else begin  // Pesticide_Used > 64'h4025C51EC0000000
                                if (LE(Rainfall, 64'h40A382B330000000)) begin
                                    yield_f_reg = 64'h4023CBC6A7EF9DB2;
                                end else begin  // Rainfall > 64'h40A382B330000000
                                    yield_f_reg = 64'h402580F5C28F5C28;
                                end
                            end
                        end
                    end
                end
            end else begin  // Fertilizer_Used > 64'h4067FC28F0000000
                if (LE(Rainfall, 64'h4095D00F60000000)) begin
                    if (LE(Soil_Moisture, 64'h4045333340000000)) begin
                        if (LE(Fertilizer_Used, 64'h406D59C290000000)) begin
                            if (LE(N, 64'h405FA00000000000)) begin
                                if (LE(Temperature, 64'h404185C290000000)) begin
                                    yield_f_reg = 64'h401DD4B6754B6756;
                                end else begin  // Temperature > 64'h404185C290000000
                                    yield_f_reg = 64'h402126E978D4FDF3;
                                end
                            end else begin  // N > 64'h405FA00000000000
                                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h4020CA8641FDB975;
                                end else begin  // Irrigation_Type > 64'h3FF8000000000000
                                    yield_f_reg = 64'h40238EB851EB851E;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h406D59C290000000
                            if (LE(Soil_pH, 64'h401C9EB850000000)) begin
                                if (LE(Wind_Speed, 64'h4020970A40000000)) begin
                                    yield_f_reg = 64'h4023B41726BBE1B9;
                                end else begin  // Wind_Speed > 64'h4020970A40000000
                                    yield_f_reg = 64'h402215D69F3E1125;
                                end
                            end else begin  // Soil_pH > 64'h401C9EB850000000
                                if (LE(Fertilizer_Used, 64'h407462B850000000)) begin
                                    yield_f_reg = 64'h4020B3E7FD2CD81A;
                                end else begin  // Fertilizer_Used > 64'h407462B850000000
                                    yield_f_reg = 64'h4022EFE898231BCB;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4045333340000000
                        if (LE(K, 64'h4053A00000000000)) begin
                            if (LE(Rainfall, 64'h408D99C290000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF8A3D700000000)) begin
                                    yield_f_reg = 64'h40214E147AE147AE;
                                end else begin  // Organic_Carbon > 64'h3FF8A3D700000000
                                    yield_f_reg = 64'h4025D55555555555;
                                end
                            end else begin  // Rainfall > 64'h408D99C290000000
                                if (LE(Organic_Carbon, 64'h3FEC28F5C0000000)) begin
                                    yield_f_reg = 64'h4021F7CED916872A;
                                end else begin  // Organic_Carbon > 64'h3FEC28F5C0000000
                                    yield_f_reg = 64'h40250A3D70A3D70A;
                                end
                            end
                        end else begin  // K > 64'h4053A00000000000
                            if (LE(Soil_pH, 64'h4014DC28F0000000)) begin
                                if (LE(Fertilizer_Used, 64'h4075431EC0000000)) begin
                                    yield_f_reg = 64'h402150FD350FD351;
                                end else begin  // Fertilizer_Used > 64'h4075431EC0000000
                                    yield_f_reg = 64'h4026733333333333;
                                end
                            end else begin  // Soil_pH > 64'h4014DC28F0000000
                                if (LE(K, 64'h4058200000000000)) begin
                                    yield_f_reg = 64'h40261DF3B645A1CA;
                                end else begin  // K > 64'h4058200000000000
                                    yield_f_reg = 64'h4024714DBF86A313;
                                end
                            end
                        end
                    end
                end else begin  // Rainfall > 64'h4095D00F60000000
                    if (LE(Fertilizer_Used, 64'h406F8F3330000000)) begin
                        if (LE(Soil_Moisture, 64'h40456851F0000000)) begin
                            if (LE(Sunlight_Hours, 64'h40109999A0000000)) begin
                                if (LE(Humidity, 64'h40516B8520000000)) begin
                                    yield_f_reg = 64'h401670A3D70A3D71;
                                end else begin  // Humidity > 64'h40516B8520000000
                                    yield_f_reg = 64'h401DEB851EB851EC;
                                end
                            end else begin  // Sunlight_Hours > 64'h40109999A0000000
                                if (LE(Wind_Speed, 64'h40161999A0000000)) begin
                                    yield_f_reg = 64'h4025398064D319FE;
                                end else begin  // Wind_Speed > 64'h40161999A0000000
                                    yield_f_reg = 64'h40234A6D64A6D64C;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h40456851F0000000
                            if (LE(N, 64'h405AE00000000000)) begin
                                if (LE(Fertilizer_Used, 64'h406EEA6660000000)) begin
                                    yield_f_reg = 64'h40246E05EA9C1A66;
                                end else begin  // Fertilizer_Used > 64'h406EEA6660000000
                                    yield_f_reg = 64'h402875C28F5C28F6;
                                end
                            end else begin  // N > 64'h405AE00000000000
                                if (LE(Sunlight_Hours, 64'h4011C7AE10000000)) begin
                                    yield_f_reg = 64'h4020A8F5C28F5C29;
                                end else begin  // Sunlight_Hours > 64'h4011C7AE10000000
                                    yield_f_reg = 64'h40265D8E6DD8E6DE;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h406F8F3330000000
                        if (LE(Rainfall, 64'h40A056C520000000)) begin
                            if (LE(Fertilizer_Used, 64'h4073F828F0000000)) begin
                                if (LE(Soil_pH, 64'h40164CCCD0000000)) begin
                                    yield_f_reg = 64'h40231D0369D0369D;
                                end else begin  // Soil_pH > 64'h40164CCCD0000000
                                    yield_f_reg = 64'h4024D9A1E54C58A9;
                                end
                            end else begin  // Fertilizer_Used > 64'h4073F828F0000000
                                if (LE(Soil_pH, 64'h401B428F60000000)) begin
                                    yield_f_reg = 64'h4026C70609FA393F;
                                end else begin  // Soil_pH > 64'h401B428F60000000
                                    yield_f_reg = 64'h402494C7FB2E6194;
                                end
                            end
                        end else begin  // Rainfall > 64'h40A056C520000000
                            if (LE(Soil_Moisture, 64'h4046C28F60000000)) begin
                                if (LE(Soil_pH, 64'h401670A3E0000000)) begin
                                    yield_f_reg = 64'h4024DC7AE147AE15;
                                end else begin  // Soil_pH > 64'h401670A3E0000000
                                    yield_f_reg = 64'h40269715590932DC;
                                end
                            end else begin  // Soil_Moisture > 64'h4046C28F60000000
                                if (LE(Pesticide_Used, 64'h403810A3D0000000)) begin
                                    yield_f_reg = 64'h4027C706C108EEC8;
                                end else begin  // Pesticide_Used > 64'h403810A3D0000000
                                    yield_f_reg = 64'h402275C28F5C28F6;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end else begin  // Crop_Type > 64'h400C000000000000
    if (LE(Crop_Type, 64'h4012000000000000)) begin
        if (LE(Fertilizer_Used, 64'h406D651EC0000000)) begin
            if (LE(Rainfall, 64'h4094881990000000)) begin
                if (LE(Soil_Moisture, 64'h4039AE1470000000)) begin
                    if (LE(N, 64'h4044400000000000)) begin
                        if (LE(Organic_Carbon, 64'h3FE8F5C290000000)) begin
                            if (LE(P, 64'h404B400000000000)) begin
                                yield_f_reg = 64'h40523CCCCCCCCCCD;
                            end else begin  // P > 64'h404B400000000000
                                yield_f_reg = 64'h4051E70A3D70A3D7;
                            end
                        end else begin  // Organic_Carbon > 64'h3FE8F5C290000000
                            if (LE(Sunlight_Hours, 64'h40217851F0000000)) begin
                                if (LE(P, 64'h404AC00000000000)) begin
                                    yield_f_reg = 64'h40519B851EB851EC;
                                end else begin  // P > 64'h404AC00000000000
                                    yield_f_reg = 64'h405188F5C28F5C29;
                                end
                            end else begin  // Sunlight_Hours > 64'h40217851F0000000
                                yield_f_reg = 64'h4051B1EB851EB852;
                            end
                        end
                    end else begin  // N > 64'h4044400000000000
                        if (LE(Rainfall, 64'h40825FEB80000000)) begin
                            if (LE(Wind_Speed, 64'h4023547AE0000000)) begin
                                if (LE(Temperature, 64'h4035B70A40000000)) begin
                                    yield_f_reg = 64'h4051FEE147AE147C;
                                end else begin  // Temperature > 64'h4035B70A40000000
                                    yield_f_reg = 64'h40523D70A3D70A3E;
                                end
                            end else begin  // Wind_Speed > 64'h4023547AE0000000
                                if (LE(N, 64'h405C000000000000)) begin
                                    yield_f_reg = 64'h4051D3D70A3D70A5;
                                end else begin  // N > 64'h405C000000000000
                                    yield_f_reg = 64'h40520E3D70A3D70A;
                                end
                            end
                        end else begin  // Rainfall > 64'h40825FEB80000000
                            if (LE(P, 64'h4041800000000000)) begin
                                if (LE(Soil_Moisture, 64'h4032E28F60000000)) begin
                                    yield_f_reg = 64'h4051EEE721A54D87;
                                end else begin  // Soil_Moisture > 64'h4032E28F60000000
                                    yield_f_reg = 64'h40525810624DD2F2;
                                end
                            end else begin  // P > 64'h4041800000000000
                                if (LE(P, 64'h4056E00000000000)) begin
                                    yield_f_reg = 64'h40525A4713E0AD79;
                                end else begin  // P > 64'h4056E00000000000
                                    yield_f_reg = 64'h4052C740DA740DA7;
                                end
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h4039AE1470000000
                    if (LE(Fertilizer_Used, 64'h4063923D70000000)) begin
                        if (LE(Soil_pH, 64'h401C8A3D70000000)) begin
                            if (LE(K, 64'h404A400000000000)) begin
                                if (LE(Rainfall, 64'h408924CCD0000000)) begin
                                    yield_f_reg = 64'h4051E44444444444;
                                end else begin  // Rainfall > 64'h408924CCD0000000
                                    yield_f_reg = 64'h4052482ECFB9C86A;
                                end
                            end else begin  // K > 64'h404A400000000000
                                if (LE(N, 64'h4061600000000000)) begin
                                    yield_f_reg = 64'h40526BFA2608C6F3;
                                end else begin  // N > 64'h4061600000000000
                                    yield_f_reg = 64'h4052A60606060606;
                                end
                            end
                        end else begin  // Soil_pH > 64'h401C8A3D70000000
                            if (LE(Soil_pH, 64'h40200F5C30000000)) begin
                                if (LE(P, 64'h4054200000000000)) begin
                                    yield_f_reg = 64'h4052193CFEAA12B4;
                                end else begin  // P > 64'h4054200000000000
                                    yield_f_reg = 64'h40525DB97530ECA7;
                                end
                            end else begin  // Soil_pH > 64'h40200F5C30000000
                                if (LE(Rainfall, 64'h4088DEF5C0000000)) begin
                                    yield_f_reg = 64'h4051B22222222222;
                                end else begin  // Rainfall > 64'h4088DEF5C0000000
                                    yield_f_reg = 64'h4051FEB851EB851F;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4063923D70000000
                        if (LE(Rainfall, 64'h407C8ECCD0000000)) begin
                            if (LE(K, 64'h4050800000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF15C2900000000)) begin
                                    yield_f_reg = 64'h405230A3D70A3D71;
                                end else begin  // Organic_Carbon > 64'h3FF15C2900000000
                                    yield_f_reg = 64'h4051FD3A06D3A06D;
                                end
                            end else begin  // K > 64'h4050800000000000
                                if (LE(Fertilizer_Used, 64'h406AA3AE10000000)) begin
                                    yield_f_reg = 64'h405259C28F5C28F6;
                                end else begin  // Fertilizer_Used > 64'h406AA3AE10000000
                                    yield_f_reg = 64'h405292C5F92C5F93;
                                end
                            end
                        end else begin  // Rainfall > 64'h407C8ECCD0000000
                            if (LE(N, 64'h4051C00000000000)) begin
                                if (LE(Pesticide_Used, 64'h403511EB80000000)) begin
                                    yield_f_reg = 64'h405262A5B3AA5B3C;
                                end else begin  // Pesticide_Used > 64'h403511EB80000000
                                    yield_f_reg = 64'h4052AE3D70A3D70A;
                                end
                            end else begin  // N > 64'h4051C00000000000
                                if (LE(Soil_pH, 64'h401F7AE150000000)) begin
                                    yield_f_reg = 64'h4052AF80E1FC780E;
                                end else begin  // Soil_pH > 64'h401F7AE150000000
                                    yield_f_reg = 64'h40526C1A10C1A10C;
                                end
                            end
                        end
                    end
                end
            end else begin  // Rainfall > 64'h4094881990000000
                if (LE(Fertilizer_Used, 64'h40600A8F60000000)) begin
                    if (LE(Rainfall, 64'h40A0EF4F60000000)) begin
                        if (LE(Organic_Carbon, 64'h3FDFAE1480000000)) begin
                            if (LE(Altitude, 64'h406B300000000000)) begin
                                if (LE(Pesticide_Used, 64'h401CE66670000000)) begin
                                    yield_f_reg = 64'h40527CCCCCCCCCCD;
                                end else begin  // Pesticide_Used > 64'h401CE66670000000
                                    yield_f_reg = 64'h40525EB851EB851F;
                                end
                            end else begin  // Altitude > 64'h406B300000000000
                                if (LE(Humidity, 64'h405339EB80000000)) begin
                                    yield_f_reg = 64'h4052D48F5C28F5C3;
                                end else begin  // Humidity > 64'h405339EB80000000
                                    yield_f_reg = 64'h40528D1EB851EB85;
                                end
                            end
                        end else begin  // Organic_Carbon > 64'h3FDFAE1480000000
                            if (LE(Soil_pH, 64'h4015F5C290000000)) begin
                                if (LE(Altitude, 64'h406BA00000000000)) begin
                                    yield_f_reg = 64'h4051F2FC962FC963;
                                end else begin  // Altitude > 64'h406BA00000000000
                                    yield_f_reg = 64'h40524D3A06D3A06D;
                                end
                            end else begin  // Soil_pH > 64'h4015F5C290000000
                                if (LE(Soil_pH, 64'h401D947AE0000000)) begin
                                    yield_f_reg = 64'h405286147AE147AC;
                                end else begin  // Soil_pH > 64'h401D947AE0000000
                                    yield_f_reg = 64'h40524B7C7F310B52;
                                end
                            end
                        end
                    end else begin  // Rainfall > 64'h40A0EF4F60000000
                        if (LE(K, 64'h404B400000000000)) begin
                            if (LE(Humidity, 64'h4048CC28F0000000)) begin
                                if (LE(Temperature, 64'h403B10A3E0000000)) begin
                                    yield_f_reg = 64'h4053075C28F5C28F;
                                end else begin  // Temperature > 64'h403B10A3E0000000
                                    yield_f_reg = 64'h40529B17E4B17E4B;
                                end
                            end else begin  // Humidity > 64'h4048CC28F0000000
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40526D0369D0369D;
                                end else begin  // Irrigation_Type > 64'h4004000000000000
                                    yield_f_reg = 64'h40520A740DA740DB;
                                end
                            end
                        end else begin  // K > 64'h404B400000000000
                            if (LE(N, 64'h405B400000000000)) begin
                                if (LE(Temperature, 64'h40408851F0000000)) begin
                                    yield_f_reg = 64'h40529885A8B0C655;
                                end else begin  // Temperature > 64'h40408851F0000000
                                    yield_f_reg = 64'h4052CF15F15F15F1;
                                end
                            end else begin  // N > 64'h405B400000000000
                                if (LE(Fertilizer_Used, 64'h405BB75C30000000)) begin
                                    yield_f_reg = 64'h4052BE5E353F7CEE;
                                end else begin  // Fertilizer_Used > 64'h405BB75C30000000
                                    yield_f_reg = 64'h405304FDF3B645A2;
                                end
                            end
                        end
                    end
                end else begin  // Fertilizer_Used > 64'h40600A8F60000000
                    if (LE(Wind_Speed, 64'h4028CA3D70000000)) begin
                        if (LE(K, 64'h405F400000000000)) begin
                            if (LE(Sunlight_Hours, 64'h402387AE20000000)) begin
                                if (LE(N, 64'h4061A00000000000)) begin
                                    yield_f_reg = 64'h4052C4DB5D11FA17;
                                end else begin  // N > 64'h4061A00000000000
                                    yield_f_reg = 64'h4053081B4E81B4E8;
                                end
                            end else begin  // Sunlight_Hours > 64'h402387AE20000000
                                if (LE(Soil_pH, 64'h401C8A3D70000000)) begin
                                    yield_f_reg = 64'h4052B27C15AF48E2;
                                end else begin  // Soil_pH > 64'h401C8A3D70000000
                                    yield_f_reg = 64'h405271A9FBE76C8C;
                                end
                            end
                        end else begin  // K > 64'h405F400000000000
                            if (LE(N, 64'h405AC00000000000)) begin
                                if (LE(Temperature, 64'h403DC66660000000)) begin
                                    yield_f_reg = 64'h4053013A06D3A06D;
                                end else begin  // Temperature > 64'h403DC66660000000
                                    yield_f_reg = 64'h4052C4B17E4B17E5;
                                end
                            end else begin  // N > 64'h405AC00000000000
                                if (LE(Soil_Moisture, 64'h404751EB90000000)) begin
                                    yield_f_reg = 64'h4052FD880BB3EE72;
                                end else begin  // Soil_Moisture > 64'h404751EB90000000
                                    yield_f_reg = 64'h4053478165781657;
                                end
                            end
                        end
                    end else begin  // Wind_Speed > 64'h4028CA3D70000000
                        if (LE(Soil_pH, 64'h401BA3D710000000)) begin
                            if (LE(Pesticide_Used, 64'h400AB851E0000000)) begin
                                if (LE(Rainfall, 64'h40A28A75C0000000)) begin
                                    yield_f_reg = 64'h40524A3D70A3D70A;
                                end else begin  // Rainfall > 64'h40A28A75C0000000
                                    yield_f_reg = 64'h4052BC962FC962FD;
                                end
                            end else begin  // Pesticide_Used > 64'h400AB851E0000000
                                if (LE(Soil_pH, 64'h40150A3D70000000)) begin
                                    yield_f_reg = 64'h40529640973CA6FE;
                                end else begin  // Soil_pH > 64'h40150A3D70000000
                                    yield_f_reg = 64'h4052E12EDB12EDB1;
                                end
                            end
                        end else begin  // Soil_pH > 64'h401BA3D710000000
                            if (LE(Soil_Moisture, 64'h4050080000000000)) begin
                                if (LE(Altitude, 64'h40965A0000000000)) begin
                                    yield_f_reg = 64'h40526FB15B573EAC;
                                end else begin  // Altitude > 64'h40965A0000000000
                                    yield_f_reg = 64'h4052A5604189374B;
                                end
                            end else begin  // Soil_Moisture > 64'h4050080000000000
                                yield_f_reg = 64'h40533A3D70A3D70A;
                            end
                        end
                    end
                end
            end
        end else begin  // Fertilizer_Used > 64'h406D651EC0000000
            if (LE(Rainfall, 64'h4099390A40000000)) begin
                if (LE(Soil_Moisture, 64'h4042F3D710000000)) begin
                    if (LE(Soil_pH, 64'h4015B851F0000000)) begin
                        if (LE(K, 64'h404DC00000000000)) begin
                            if (LE(K, 64'h4047800000000000)) begin
                                if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40527428F5C28F5C;
                                end else begin  // Irrigation_Type > 64'h3FE0000000000000
                                    yield_f_reg = 64'h405245810624DD30;
                                end
                            end else begin  // K > 64'h4047800000000000
                                if (LE(Sunlight_Hours, 64'h4023400000000000)) begin
                                    yield_f_reg = 64'h40520CCCCCCCCCCD;
                                end else begin  // Sunlight_Hours > 64'h4023400000000000
                                    yield_f_reg = 64'h4052151EB851EB85;
                                end
                            end
                        end else begin  // K > 64'h404DC00000000000
                            if (LE(Temperature, 64'h40417147B0000000)) begin
                                if (LE(Rainfall, 64'h409758D710000000)) begin
                                    yield_f_reg = 64'h4052949F49F49F49;
                                end else begin  // Rainfall > 64'h409758D710000000
                                    yield_f_reg = 64'h4052D8F5C28F5C28;
                                end
                            end else begin  // Temperature > 64'h40417147B0000000
                                if (LE(Humidity, 64'h40460851F0000000)) begin
                                    yield_f_reg = 64'h4052766666666666;
                                end else begin  // Humidity > 64'h40460851F0000000
                                    yield_f_reg = 64'h40522F0A3D70A3D8;
                                end
                            end
                        end
                    end else begin  // Soil_pH > 64'h4015B851F0000000
                        if (LE(Rainfall, 64'h408EEDAE20000000)) begin
                            if (LE(Humidity, 64'h4042F51EB0000000)) begin
                                if (LE(K, 64'h4055000000000000)) begin
                                    yield_f_reg = 64'h40530C28F5C28F5C;
                                end else begin  // K > 64'h4055000000000000
                                    yield_f_reg = 64'h4052A92C5F92C5FA;
                                end
                            end else begin  // Humidity > 64'h4042F51EB0000000
                                if (LE(Temperature, 64'h4037E147B0000000)) begin
                                    yield_f_reg = 64'h4052B58BF258BF26;
                                end else begin  // Temperature > 64'h4037E147B0000000
                                    yield_f_reg = 64'h405282428F5C28F6;
                                end
                            end
                        end else begin  // Rainfall > 64'h408EEDAE20000000
                            if (LE(N, 64'h4053C00000000000)) begin
                                if (LE(Fertilizer_Used, 64'h40711EF5C0000000)) begin
                                    yield_f_reg = 64'h405284320FEDCBAA;
                                end else begin  // Fertilizer_Used > 64'h40711EF5C0000000
                                    yield_f_reg = 64'h4052BFA4FA4FA4FB;
                                end
                            end else begin  // N > 64'h4053C00000000000
                                if (LE(Soil_pH, 64'h401BB33330000000)) begin
                                    yield_f_reg = 64'h405303D70A3D70A4;
                                end else begin  // Soil_pH > 64'h401BB33330000000
                                    yield_f_reg = 64'h4052C30A3D70A3D8;
                                end
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h4042F3D710000000
                    if (LE(P, 64'h4044400000000000)) begin
                        if (LE(P, 64'h4040C00000000000)) begin
                            if (LE(Soil_pH, 64'h4014800000000000)) begin
                                if (LE(N, 64'h4047C00000000000)) begin
                                    yield_f_reg = 64'h40531D70A3D70A3D;
                                end else begin  // N > 64'h4047C00000000000
                                    yield_f_reg = 64'h40525645A1CAC083;
                                end
                            end else begin  // Soil_pH > 64'h4014800000000000
                                if (LE(Pesticide_Used, 64'h402363D710000000)) begin
                                    yield_f_reg = 64'h4052B7C28F5C28F6;
                                end else begin  // Pesticide_Used > 64'h402363D710000000
                                    yield_f_reg = 64'h4053019227192271;
                                end
                            end
                        end else begin  // P > 64'h4040C00000000000
                            if (LE(Wind_Speed, 64'h40282E1480000000)) begin
                                if (LE(N, 64'h4041400000000000)) begin
                                    yield_f_reg = 64'h40525147AE147AE1;
                                end else begin  // N > 64'h4041400000000000
                                    yield_f_reg = 64'h4052C4E81B4E81B5;
                                end
                            end else begin  // Wind_Speed > 64'h40282E1480000000
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h40525FD70A3D70A3;
                                end else begin  // Irrigation_Type > 64'h4004000000000000
                                    yield_f_reg = 64'h40521B3333333334;
                                end
                            end
                        end
                    end else begin  // P > 64'h4044400000000000
                        if (LE(Rainfall, 64'h4089E0C290000000)) begin
                            if (LE(N, 64'h4044400000000000)) begin
                                yield_f_reg = 64'h4051F66666666666;
                            end else begin  // N > 64'h4044400000000000
                                if (LE(Fertilizer_Used, 64'h406E6F5C30000000)) begin
                                    yield_f_reg = 64'h405267AE147AE148;
                                end else begin  // Fertilizer_Used > 64'h406E6F5C30000000
                                    yield_f_reg = 64'h4052DC6FB586FB59;
                                end
                            end
                        end else begin  // Rainfall > 64'h4089E0C290000000
                            if (LE(N, 64'h4065200000000000)) begin
                                if (LE(Altitude, 64'h4099B40000000000)) begin
                                    yield_f_reg = 64'h4052F0F41691DE26;
                                end else begin  // Altitude > 64'h4099B40000000000
                                    yield_f_reg = 64'h405323CCCCCCCCCE;
                                end
                            end else begin  // N > 64'h4065200000000000
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4053A8F5C28F5C29;
                                end else begin  // Region > 64'h4004000000000000
                                    yield_f_reg = 64'h4053A1EB851EB852;
                                end
                            end
                        end
                    end
                end
            end else begin  // Rainfall > 64'h4099390A40000000
                if (LE(Fertilizer_Used, 64'h4073F13340000000)) begin
                    if (LE(N, 64'h405B800000000000)) begin
                        if (LE(Soil_Moisture, 64'h404685C290000000)) begin
                            if (LE(Soil_pH, 64'h4014A8F5C0000000)) begin
                                if (LE(Fertilizer_Used, 64'h407019C290000000)) begin
                                    yield_f_reg = 64'h4052BD70A3D70A3D;
                                end else begin  // Fertilizer_Used > 64'h407019C290000000
                                    yield_f_reg = 64'h405258F5C28F5C28;
                                end
                            end else begin  // Soil_pH > 64'h4014A8F5C0000000
                                if (LE(Soil_pH, 64'h401BFAE140000000)) begin
                                    yield_f_reg = 64'h4052FF51EB851EB9;
                                end else begin  // Soil_pH > 64'h401BFAE140000000
                                    yield_f_reg = 64'h4052BB0C0557B533;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h404685C290000000
                            if (LE(Humidity, 64'h4040351EB0000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h405299999999999A;
                                end else begin  // Season > 64'h3FE0000000000000
                                    yield_f_reg = 64'h40527851EB851EB8;
                                end
                            end else begin  // Humidity > 64'h4040351EB0000000
                                if (LE(K, 64'h4059200000000000)) begin
                                    yield_f_reg = 64'h40532A740DA740DB;
                                end else begin  // K > 64'h4059200000000000
                                    yield_f_reg = 64'h4052F8F5C28F5C29;
                                end
                            end
                        end
                    end else begin  // N > 64'h405B800000000000
                        if (LE(P, 64'h4051200000000000)) begin
                            if (LE(Humidity, 64'h4055D6B850000000)) begin
                                if (LE(P, 64'h4030800000000000)) begin
                                    yield_f_reg = 64'h40528B3333333334;
                                end else begin  // P > 64'h4030800000000000
                                    yield_f_reg = 64'h405309967300C9A6;
                                end
                            end else begin  // Humidity > 64'h4055D6B850000000
                                if (LE(Fertilizer_Used, 64'h40728799A0000000)) begin
                                    yield_f_reg = 64'h40534D70A3D70A3D;
                                end else begin  // Fertilizer_Used > 64'h40728799A0000000
                                    yield_f_reg = 64'h4053FF5C28F5C28F;
                                end
                            end
                        end else begin  // P > 64'h4051200000000000
                            if (LE(Soil_Moisture, 64'h4040C8F5C0000000)) begin
                                if (LE(K, 64'h4051200000000000)) begin
                                    yield_f_reg = 64'h4052DE434A9B1017;
                                end else begin  // K > 64'h4051200000000000
                                    yield_f_reg = 64'h405332C5F92C5F93;
                                end
                            end else begin  // Soil_Moisture > 64'h4040C8F5C0000000
                                if (LE(Soil_Moisture, 64'h404ECE1470000000)) begin
                                    yield_f_reg = 64'h40536E6F8091A2B4;
                                end else begin  // Soil_Moisture > 64'h404ECE1470000000
                                    yield_f_reg = 64'h40543F5C28F5C28F;
                                end
                            end
                        end
                    end
                end else begin  // Fertilizer_Used > 64'h4073F13340000000
                    if (LE(Rainfall, 64'h409CE42E20000000)) begin
                        if (LE(Rainfall, 64'h409976A900000000)) begin
                            if (LE(Rainfall, 64'h409964A3E0000000)) begin
                                yield_f_reg = 64'h40535CCCCCCCCCCD;
                            end else begin  // Rainfall > 64'h409964A3E0000000
                                if (LE(Sunlight_Hours, 64'h4022B851F0000000)) begin
                                    yield_f_reg = 64'h405379999999999A;
                                end else begin  // Sunlight_Hours > 64'h4022B851F0000000
                                    yield_f_reg = 64'h4053933333333333;
                                end
                            end
                        end else begin  // Rainfall > 64'h409976A900000000
                            if (LE(K, 64'h4047800000000000)) begin
                                if (LE(Temperature, 64'h403ABC2900000000)) begin
                                    yield_f_reg = 64'h4052BE147AE147AE;
                                end else begin  // Temperature > 64'h403ABC2900000000
                                    yield_f_reg = 64'h40529D1EB851EB85;
                                end
                            end else begin  // K > 64'h4047800000000000
                                if (LE(Soil_pH, 64'h40197AE140000000)) begin
                                    yield_f_reg = 64'h4052E1999999999A;
                                end else begin  // Soil_pH > 64'h40197AE140000000
                                    yield_f_reg = 64'h40533C083126E97A;
                                end
                            end
                        end
                    end else begin  // Rainfall > 64'h409CE42E20000000
                        if (LE(Soil_Moisture, 64'h40420CCCD0000000)) begin
                            if (LE(Pesticide_Used, 64'h401D1EB860000000)) begin
                                if (LE(Sunlight_Hours, 64'h401F3851F0000000)) begin
                                    yield_f_reg = 64'h4052F4D880BB3EE8;
                                end else begin  // Sunlight_Hours > 64'h401F3851F0000000
                                    yield_f_reg = 64'h40532C28F5C28F5C;
                                end
                            end else begin  // Pesticide_Used > 64'h401D1EB860000000
                                if (LE(Humidity, 64'h4050FAE150000000)) begin
                                    yield_f_reg = 64'h4053575C28F5C28F;
                                end else begin  // Humidity > 64'h4050FAE150000000
                                    yield_f_reg = 64'h405312FC962FC963;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h40420CCCD0000000
                            if (LE(N, 64'h4045C00000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FEEB851F0000000)) begin
                                    yield_f_reg = 64'h4053BEB851EB851F;
                                end else begin  // Organic_Carbon > 64'h3FEEB851F0000000
                                    yield_f_reg = 64'h4053E0A3D70A3D71;
                                end
                            end else begin  // N > 64'h4045C00000000000
                                if (LE(Rainfall, 64'h40A2A06670000000)) begin
                                    yield_f_reg = 64'h40534EE81B4E81B5;
                                end else begin  // Rainfall > 64'h40A2A06670000000
                                    yield_f_reg = 64'h405381BED61BED62;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin  // Crop_Type > 64'h4012000000000000
        if (LE(Fertilizer_Used, 64'h406B5EB850000000)) begin
            if (LE(Rainfall, 64'h408E2947B0000000)) begin
                if (LE(Soil_Moisture, 64'h40400C28F0000000)) begin
                    if (LE(Fertilizer_Used, 64'h406429EB80000000)) begin
                        if (LE(N, 64'h4061D00000000000)) begin
                            if (LE(N, 64'h4042000000000000)) begin
                                yield_f_reg = 64'h4022333333333333;
                            end else begin  // N > 64'h4042000000000000
                                if (LE(N, 64'h4045C00000000000)) begin
                                    yield_f_reg = 64'h401047AE147AE148;
                                end else begin  // N > 64'h4045C00000000000
                                    yield_f_reg = 64'h40178B4395810624;
                                end
                            end
                        end else begin  // N > 64'h4061D00000000000
                            if (LE(Region, 64'h4004000000000000)) begin
                                if (LE(Humidity, 64'h40519FAE10000000)) begin
                                    yield_f_reg = 64'h4019CA3D70A3D70B;
                                end else begin  // Humidity > 64'h40519FAE10000000
                                    yield_f_reg = 64'h4014CCCCCCCCCCCD;
                                end
                            end else begin  // Region > 64'h4004000000000000
                                if (LE(Rainfall, 64'h407DBA6660000000)) begin
                                    yield_f_reg = 64'h4021AB851EB851EC;
                                end else begin  // Rainfall > 64'h407DBA6660000000
                                    yield_f_reg = 64'h401CDA740DA740DB;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h406429EB80000000
                        if (LE(Fertilizer_Used, 64'h4069A28F60000000)) begin
                            if (LE(N, 64'h4064500000000000)) begin
                                if (LE(K, 64'h4061500000000000)) begin
                                    yield_f_reg = 64'h401F22608C6F2D5A;
                                end else begin  // K > 64'h4061500000000000
                                    yield_f_reg = 64'h4018B4E81B4E81B5;
                                end
                            end else begin  // N > 64'h4064500000000000
                                yield_f_reg = 64'h40141EB851EB851F;
                            end
                        end else begin  // Fertilizer_Used > 64'h4069A28F60000000
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(Pesticide_Used, 64'h4034570A40000000)) begin
                                    yield_f_reg = 64'h4016DC28F5C28F5C;
                                end else begin  // Pesticide_Used > 64'h4034570A40000000
                                    yield_f_reg = 64'h40186B851EB851EC;
                                end
                            end else begin  // Season > 64'h3FF8000000000000
                                if (LE(Sunlight_Hours, 64'h401BCCCCD0000000)) begin
                                    yield_f_reg = 64'h401A1EB851EB851F;
                                end else begin  // Sunlight_Hours > 64'h401BCCCCD0000000
                                    yield_f_reg = 64'h4018EB851EB851EC;
                                end
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h40400C28F0000000
                    if (LE(Fertilizer_Used, 64'h40617C0000000000)) begin
                        if (LE(K, 64'h4061600000000000)) begin
                            if (LE(N, 64'h4041C00000000000)) begin
                                if (LE(Altitude, 64'h4095CC0000000000)) begin
                                    yield_f_reg = 64'h40148F5C28F5C28F;
                                end else begin  // Altitude > 64'h4095CC0000000000
                                    yield_f_reg = 64'h401347AE147AE148;
                                end
                            end else begin  // N > 64'h4041C00000000000
                                if (LE(Rainfall, 64'h408A690000000000)) begin
                                    yield_f_reg = 64'h401CAF9AE8407D7F;
                                end else begin  // Rainfall > 64'h408A690000000000
                                    yield_f_reg = 64'h4018F2B020C49BA5;
                                end
                            end
                        end else begin  // K > 64'h4061600000000000
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                if (LE(Humidity, 64'h404FED70B0000000)) begin
                                    yield_f_reg = 64'h4020C28F5C28F5C3;
                                end else begin  // Humidity > 64'h404FED70B0000000
                                    yield_f_reg = 64'h4021FAE147AE147B;
                                end
                            end else begin  // Season > 64'h3FE0000000000000
                                if (LE(Wind_Speed, 64'h4010BD70A8000000)) begin
                                    yield_f_reg = 64'h4020428F5C28F5C3;
                                end else begin  // Wind_Speed > 64'h4010BD70A8000000
                                    yield_f_reg = 64'h401D1EB851EB8520;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h40617C0000000000
                        if (LE(Soil_Moisture, 64'h404D033330000000)) begin
                            if (LE(Soil_pH, 64'h401E1999A0000000)) begin
                                if (LE(Rainfall, 64'h40769FD710000000)) begin
                                    yield_f_reg = 64'h4019FAE147AE147B;
                                end else begin  // Rainfall > 64'h40769FD710000000
                                    yield_f_reg = 64'h401FBF53896E7BF4;
                                end
                            end else begin  // Soil_pH > 64'h401E1999A0000000
                                if (LE(Altitude, 64'h40943C0000000000)) begin
                                    yield_f_reg = 64'h401D8F5C28F5C290;
                                end else begin  // Altitude > 64'h40943C0000000000
                                    yield_f_reg = 64'h4018F5C28F5C28F6;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h404D033330000000
                            if (LE(K, 64'h4060E00000000000)) begin
                                if (LE(Pesticide_Used, 64'h4026FD70A0000000)) begin
                                    yield_f_reg = 64'h4021E8F5C28F5C29;
                                end else begin  // Pesticide_Used > 64'h4026FD70A0000000
                                    yield_f_reg = 64'h40240F5C28F5C28F;
                                end
                            end else begin  // K > 64'h4060E00000000000
                                yield_f_reg = 64'h401A8F5C28F5C28F;
                            end
                        end
                    end
                end
            end else begin  // Rainfall > 64'h408E2947B0000000
                if (LE(Soil_Moisture, 64'h403C5AE150000000)) begin
                    if (LE(Fertilizer_Used, 64'h4051FE1480000000)) begin
                        if (LE(Wind_Speed, 64'h4026666660000000)) begin
                            if (LE(Organic_Carbon, 64'h3FEC000000000000)) begin
                                yield_f_reg = 64'h4019B851EB851EB8;
                            end else begin  // Organic_Carbon > 64'h3FEC000000000000
                                if (LE(Humidity, 64'h404903D710000000)) begin
                                    yield_f_reg = 64'h401CDA740DA740DB;
                                end else begin  // Humidity > 64'h404903D710000000
                                    yield_f_reg = 64'h401F8F5C28F5C28F;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h4026666660000000
                            if (LE(K, 64'h404A400000000000)) begin
                                if (LE(P, 64'h4047C00000000000)) begin
                                    yield_f_reg = 64'h4013000000000000;
                                end else begin  // P > 64'h4047C00000000000
                                    yield_f_reg = 64'h4014D70A3D70A3D7;
                                end
                            end else begin  // K > 64'h404A400000000000
                                if (LE(Region, 64'h4008000000000000)) begin
                                    yield_f_reg = 64'h40192FC962FC9630;
                                end else begin  // Region > 64'h4008000000000000
                                    yield_f_reg = 64'h40170A3D70A3D70A;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4051FE1480000000
                        if (LE(Temperature, 64'h40429147B0000000)) begin
                            if (LE(Rainfall, 64'h409DF1B850000000)) begin
                                if (LE(Wind_Speed, 64'h4011E147B0000000)) begin
                                    yield_f_reg = 64'h402088F5C28F5C29;
                                end else begin  // Wind_Speed > 64'h4011E147B0000000
                                    yield_f_reg = 64'h401C392866C5B9A1;
                                end
                            end else begin  // Rainfall > 64'h409DF1B850000000
                                if (LE(Temperature, 64'h40408E1470000000)) begin
                                    yield_f_reg = 64'h4020C59AB4FFB927;
                                end else begin  // Temperature > 64'h40408E1470000000
                                    yield_f_reg = 64'h401C9A9FBE76C8B5;
                                end
                            end
                        end else begin  // Temperature > 64'h40429147B0000000
                            if (LE(Pesticide_Used, 64'h4037600000000000)) begin
                                if (LE(Rainfall, 64'h409512D710000000)) begin
                                    yield_f_reg = 64'h4026000000000000;
                                end else begin  // Rainfall > 64'h409512D710000000
                                    yield_f_reg = 64'h40227A06D3A06D3A;
                                end
                            end else begin  // Pesticide_Used > 64'h4037600000000000
                                if (LE(Wind_Speed, 64'h401FC7AE08000000)) begin
                                    yield_f_reg = 64'h4020DC28F5C28F5C;
                                end else begin  // Wind_Speed > 64'h401FC7AE08000000
                                    yield_f_reg = 64'h401C333333333333;
                                end
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h403C5AE150000000
                    if (LE(Rainfall, 64'h409D546150000000)) begin
                        if (LE(Fertilizer_Used, 64'h405FB6B850000000)) begin
                            if (LE(Wind_Speed, 64'h402F35C290000000)) begin
                                if (LE(Temperature, 64'h4027851EC0000000)) begin
                                    yield_f_reg = 64'h4023051EB851EB85;
                                end else begin  // Temperature > 64'h4027851EC0000000
                                    yield_f_reg = 64'h401EEEB084A1E3B4;
                                end
                            end else begin  // Wind_Speed > 64'h402F35C290000000
                                if (LE(Altitude, 64'h4090040000000000)) begin
                                    yield_f_reg = 64'h401D11EB851EB852;
                                end else begin  // Altitude > 64'h4090040000000000
                                    yield_f_reg = 64'h401626E978D4FDF3;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h405FB6B850000000
                            if (LE(Wind_Speed, 64'h40201EB850000000)) begin
                                if (LE(Organic_Carbon, 64'h3FD75C28F0000000)) begin
                                    yield_f_reg = 64'h40274CCCCCCCCCCD;
                                end else begin  // Organic_Carbon > 64'h3FD75C28F0000000
                                    yield_f_reg = 64'h4022034218342183;
                                end
                            end else begin  // Wind_Speed > 64'h40201EB850000000
                                if (LE(Soil_pH, 64'h401F8F5C20000000)) begin
                                    yield_f_reg = 64'h4020D6F5196F5196;
                                end else begin  // Soil_pH > 64'h401F8F5C20000000
                                    yield_f_reg = 64'h4018B020C49BA5E3;
                                end
                            end
                        end
                    end else begin  // Rainfall > 64'h409D546150000000
                        if (LE(Soil_pH, 64'h4015333340000000)) begin
                            if (LE(Organic_Carbon, 64'h3FD51EB850000000)) begin
                                yield_f_reg = 64'h4012B851EB851EB8;
                            end else begin  // Organic_Carbon > 64'h3FD51EB850000000
                                if (LE(P, 64'h4051E00000000000)) begin
                                    yield_f_reg = 64'h402085D9F7390D2B;
                                end else begin  // P > 64'h4051E00000000000
                                    yield_f_reg = 64'h401C000000000000;
                                end
                            end
                        end else begin  // Soil_pH > 64'h4015333340000000
                            if (LE(Soil_pH, 64'h401ECCCCD0000000)) begin
                                if (LE(Soil_Moisture, 64'h40490E1480000000)) begin
                                    yield_f_reg = 64'h40220CD400733A67;
                                end else begin  // Soil_Moisture > 64'h40490E1480000000
                                    yield_f_reg = 64'h4023A518F8A2671D;
                                end
                            end else begin  // Soil_pH > 64'h401ECCCCD0000000
                                if (LE(Wind_Speed, 64'h400CAE1480000000)) begin
                                    yield_f_reg = 64'h4023155555555555;
                                end else begin  // Wind_Speed > 64'h400CAE1480000000
                                    yield_f_reg = 64'h401E717E4B17E4B0;
                                end
                            end
                        end
                    end
                end
            end
        end else begin  // Fertilizer_Used > 64'h406B5EB850000000
            if (LE(Rainfall, 64'h4094B90520000000)) begin
                if (LE(Soil_Moisture, 64'h404AB7AE10000000)) begin
                    if (LE(Fertilizer_Used, 64'h4071493330000000)) begin
                        if (LE(Wind_Speed, 64'h4027C28F60000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF39999A0000000)) begin
                                if (LE(Organic_Carbon, 64'h3FDF5C28F0000000)) begin
                                    yield_f_reg = 64'h401D0624DD2F1AA0;
                                end else begin  // Organic_Carbon > 64'h3FDF5C28F0000000
                                    yield_f_reg = 64'h4020B6AE7D566CF4;
                                end
                            end else begin  // Organic_Carbon > 64'h3FF39999A0000000
                                if (LE(P, 64'h404AC00000000000)) begin
                                    yield_f_reg = 64'h401FAAAAAAAAAAAB;
                                end else begin  // P > 64'h404AC00000000000
                                    yield_f_reg = 64'h40239F7390D2A6C5;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h4027C28F60000000
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(Pesticide_Used, 64'h40196147B0000000)) begin
                                    yield_f_reg = 64'h401BF3B645A1CAC2;
                                end else begin  // Pesticide_Used > 64'h40196147B0000000
                                    yield_f_reg = 64'h40204C87D09297FB;
                                end
                            end else begin  // Season > 64'h3FF8000000000000
                                if (LE(Sunlight_Hours, 64'h40115C2900000000)) begin
                                    yield_f_reg = 64'h4022570A3D70A3D7;
                                end else begin  // Sunlight_Hours > 64'h40115C2900000000
                                    yield_f_reg = 64'h401B555555555556;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4071493330000000
                        if (LE(Temperature, 64'h4036DAE150000000)) begin
                            if (LE(Rainfall, 64'h408B1B2900000000)) begin
                                if (LE(K, 64'h4048C00000000000)) begin
                                    yield_f_reg = 64'h401BE4B17E4B17E5;
                                end else begin  // K > 64'h4048C00000000000
                                    yield_f_reg = 64'h40208CB04E5BB6FC;
                                end
                            end else begin  // Rainfall > 64'h408B1B2900000000
                                if (LE(Organic_Carbon, 64'h3FF3C28F50000000)) begin
                                    yield_f_reg = 64'h40234DC28F5C28F6;
                                end else begin  // Organic_Carbon > 64'h3FF3C28F50000000
                                    yield_f_reg = 64'h401F2740DA740DA7;
                                end
                            end
                        end else begin  // Temperature > 64'h4036DAE150000000
                            if (LE(P, 64'h4047800000000000)) begin
                                if (LE(Soil_pH, 64'h401D23D710000000)) begin
                                    yield_f_reg = 64'h40227C962FC962FD;
                                end else begin  // Soil_pH > 64'h401D23D710000000
                                    yield_f_reg = 64'h4020582D82D82D83;
                                end
                            end else begin  // P > 64'h4047800000000000
                                if (LE(Wind_Speed, 64'h4011BD70A0000000)) begin
                                    yield_f_reg = 64'h4024D3A06D3A06D3;
                                end else begin  // Wind_Speed > 64'h4011BD70A0000000
                                    yield_f_reg = 64'h4022DF623A67EAC4;
                                end
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h404AB7AE10000000
                    if (LE(N, 64'h4058000000000000)) begin
                        if (LE(Sunlight_Hours, 64'h4019B33330000000)) begin
                            if (LE(Rainfall, 64'h4090465708000000)) begin
                                if (LE(Soil_Moisture, 64'h404CFA3D70000000)) begin
                                    yield_f_reg = 64'h401EB33333333333;
                                end else begin  // Soil_Moisture > 64'h404CFA3D70000000
                                    yield_f_reg = 64'h4020D1EB851EB851;
                                end
                            end else begin  // Rainfall > 64'h4090465708000000
                                if (LE(P, 64'h404A800000000000)) begin
                                    yield_f_reg = 64'h40217D70A3D70A3E;
                                end else begin  // P > 64'h404A800000000000
                                    yield_f_reg = 64'h40235EB851EB851F;
                                end
                            end
                        end else begin  // Sunlight_Hours > 64'h4019B33330000000
                            if (LE(Wind_Speed, 64'h401CE66670000000)) begin
                                if (LE(Season, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h4025F0A3D70A3D71;
                                end else begin  // Season > 64'h3FE0000000000000
                                    yield_f_reg = 64'h4023F258BF258BF3;
                                end
                            end else begin  // Wind_Speed > 64'h401CE66670000000
                                if (LE(Temperature, 64'h402F1999A0000000)) begin
                                    yield_f_reg = 64'h4023E66666666666;
                                end else begin  // Temperature > 64'h402F1999A0000000
                                    yield_f_reg = 64'h402193BFA2608C6F;
                                end
                            end
                        end
                    end else begin  // N > 64'h4058000000000000
                        if (LE(Soil_pH, 64'h40205EB850000000)) begin
                            if (LE(Pesticide_Used, 64'h4028D1EB90000000)) begin
                                if (LE(Temperature, 64'h402ABAE150000000)) begin
                                    yield_f_reg = 64'h402199999999999A;
                                end else begin  // Temperature > 64'h402ABAE150000000
                                    yield_f_reg = 64'h4025705EDAD008A0;
                                end
                            end else begin  // Pesticide_Used > 64'h4028D1EB90000000
                                if (LE(Altitude, 64'h4096440000000000)) begin
                                    yield_f_reg = 64'h40242D593BFA2609;
                                end else begin  // Altitude > 64'h4096440000000000
                                    yield_f_reg = 64'h4021CA3D70A3D70A;
                                end
                            end
                        end else begin  // Soil_pH > 64'h40205EB850000000
                            yield_f_reg = 64'h401BAE147AE147AE;
                        end
                    end
                end
            end else begin  // Rainfall > 64'h4094B90520000000
                if (LE(Soil_Moisture, 64'h40416C2900000000)) begin
                    if (LE(Soil_pH, 64'h4018333330000000)) begin
                        if (LE(Fertilizer_Used, 64'h4073FD8520000000)) begin
                            if (LE(Organic_Carbon, 64'h3FDA8F5C20000000)) begin
                                if (LE(Rainfall, 64'h40A39C51E0000000)) begin
                                    yield_f_reg = 64'h4027051EB851EB85;
                                end else begin  // Rainfall > 64'h40A39C51E0000000
                                    yield_f_reg = 64'h4024547AE147AE14;
                                end
                            end else begin  // Organic_Carbon > 64'h3FDA8F5C20000000
                                if (LE(Soil_Moisture, 64'h4031B70A40000000)) begin
                                    yield_f_reg = 64'h401CB851EB851EB8;
                                end else begin  // Soil_Moisture > 64'h4031B70A40000000
                                    yield_f_reg = 64'h402149999999999A;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h4073FD8520000000
                            if (LE(Organic_Carbon, 64'h3FEBAE1480000000)) begin
                                if (LE(Altitude, 64'h40944E0000000000)) begin
                                    yield_f_reg = 64'h4025F77777777778;
                                end else begin  // Altitude > 64'h40944E0000000000
                                    yield_f_reg = 64'h4029428F5C28F5C3;
                                end
                            end else begin  // Organic_Carbon > 64'h3FEBAE1480000000
                                if (LE(Soil_Type, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h40215A740DA740DB;
                                end else begin  // Soil_Type > 64'h4000000000000000
                                    yield_f_reg = 64'h40239D0369D0369D;
                                end
                            end
                        end
                    end else begin  // Soil_pH > 64'h4018333330000000
                        if (LE(Soil_pH, 64'h401C8A3D70000000)) begin
                            if (LE(Rainfall, 64'h40A0927D70000000)) begin
                                if (LE(N, 64'h404DC00000000000)) begin
                                    yield_f_reg = 64'h402297AE147AE148;
                                end else begin  // N > 64'h404DC00000000000
                                    yield_f_reg = 64'h4024E7DCE434A9B1;
                                end
                            end else begin  // Rainfall > 64'h40A0927D70000000
                                if (LE(Organic_Carbon, 64'h3FF9333340000000)) begin
                                    yield_f_reg = 64'h40263804D19E6B38;
                                end else begin  // Organic_Carbon > 64'h3FF9333340000000
                                    yield_f_reg = 64'h4023AE147AE147AE;
                                end
                            end
                        end else begin  // Soil_pH > 64'h401C8A3D70000000
                            if (LE(Sunlight_Hours, 64'h4025EB8520000000)) begin
                                if (LE(Sunlight_Hours, 64'h4010A8F5C0000000)) begin
                                    yield_f_reg = 64'h40260A3D70A3D70A;
                                end else begin  // Sunlight_Hours > 64'h4010A8F5C0000000
                                    yield_f_reg = 64'h4022022D0E560419;
                                end
                            end else begin  // Sunlight_Hours > 64'h4025EB8520000000
                                yield_f_reg = 64'h402975C28F5C28F6;
                            end
                        end
                    end
                end else begin  // Soil_Moisture > 64'h40416C2900000000
                    if (LE(Rainfall, 64'h40A3A835D0000000)) begin
                        if (LE(Fertilizer_Used, 64'h407044F5C0000000)) begin
                            if (LE(P, 64'h404DC00000000000)) begin
                                if (LE(Soil_Moisture, 64'h404A2CCCD0000000)) begin
                                    yield_f_reg = 64'h402185E85E85E85F;
                                end else begin  // Soil_Moisture > 64'h404A2CCCD0000000
                                    yield_f_reg = 64'h4023C147AE147AE3;
                                end
                            end else begin  // P > 64'h404DC00000000000
                                if (LE(Wind_Speed, 64'h4017666660000000)) begin
                                    yield_f_reg = 64'h4025EB851EB851EB;
                                end else begin  // Wind_Speed > 64'h4017666660000000
                                    yield_f_reg = 64'h4023D3A06D3A06D3;
                                end
                            end
                        end else begin  // Fertilizer_Used > 64'h407044F5C0000000
                            if (LE(Rainfall, 64'h409D3575C0000000)) begin
                                if (LE(Humidity, 64'h404CB0A3E0000000)) begin
                                    yield_f_reg = 64'h40233D37A6F4DE9C;
                                end else begin  // Humidity > 64'h404CB0A3E0000000
                                    yield_f_reg = 64'h40250FF65CC32990;
                                end
                            end else begin  // Rainfall > 64'h409D3575C0000000
                                if (LE(Rainfall, 64'h40A171F5C0000000)) begin
                                    yield_f_reg = 64'h4026B780346DC5D6;
                                end else begin  // Rainfall > 64'h40A171F5C0000000
                                    yield_f_reg = 64'h40252485CD7B900B;
                                end
                            end
                        end
                    end else begin  // Rainfall > 64'h40A3A835D0000000
                        if (LE(Soil_Moisture, 64'h404A9AE140000000)) begin
                            if (LE(Altitude, 64'h408E640000000000)) begin
                                if (LE(Humidity, 64'h404B6999A0000000)) begin
                                    yield_f_reg = 64'h4025F7CED916872B;
                                end else begin  // Humidity > 64'h404B6999A0000000
                                    yield_f_reg = 64'h4028658BF258BF25;
                                end
                            end else begin  // Altitude > 64'h408E640000000000
                                if (LE(Pesticide_Used, 64'h402FEE1470000000)) begin
                                    yield_f_reg = 64'h4025369D0369D037;
                                end else begin  // Pesticide_Used > 64'h402FEE1470000000
                                    yield_f_reg = 64'h4022AB851EB851EC;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h404A9AE140000000
                            if (LE(P, 64'h404E400000000000)) begin
                                if (LE(Organic_Carbon, 64'h3FF770A3E0000000)) begin
                                    yield_f_reg = 64'h40266353F7CED916;
                                end else begin  // Organic_Carbon > 64'h3FF770A3E0000000
                                    yield_f_reg = 64'h40281D0369D0369D;
                                end
                            end else begin  // P > 64'h404E400000000000
                                if (LE(Soil_pH, 64'h4015A3D710000000)) begin
                                    yield_f_reg = 64'h40263D70A3D70A3D;
                                end else begin  // Soil_pH > 64'h4015A3D710000000
                                    yield_f_reg = 64'h4029C1D41D41D41E;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end
