if (LE(Fertilizer_Used, 64'h4066AB0A40000000)) begin
    if (LE(Rainfall, 64'h40A09563E0000000)) begin
        if (LE(Organic_Carbon, 64'h3FF8B851E0000000)) begin
            if (LE(Altitude, 64'h40A0EB0000000000)) begin
                if (LE(Temperature, 64'h403B1AE150000000)) begin
                    if (LE(Soil_Moisture, 64'h402E970A40000000)) begin
                        if (LE(Wind_Speed, 64'h4023266660000000)) begin
                            if (LE(Altitude, 64'h4077700000000000)) begin
                                yield_f_reg = 64'h40529CCCCCCCCCCD;
                            end else begin  // Altitude > 64'h4077700000000000
                                if (LE(Irrigation_Type, 64'h4000000000000000)) begin
                                    yield_f_reg = 64'h4052433333333333;
                                end else begin  // Irrigation_Type > 64'h4000000000000000
                                    yield_f_reg = 64'h405218F5C28F5C29;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h4023266660000000
                            if (LE(Soil_Moisture, 64'h402E4CCCD0000000)) begin
                                yield_f_reg = 64'h40367851EB851EB8;
                            end else begin  // Soil_Moisture > 64'h402E4CCCD0000000
                                yield_f_reg = 64'h401BEB851EB851EC;
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h402E970A40000000
                        if (LE(Sunlight_Hours, 64'h4011051EC0000000)) begin
                            if (LE(Sunlight_Hours, 64'h40108A3D70000000)) begin
                                if (LE(K, 64'h404A000000000000)) begin
                                    yield_f_reg = 64'h4041E8F5C28F5C29;
                                end else begin  // K > 64'h404A000000000000
                                    yield_f_reg = 64'h40225640973CA6FF;
                                end
                            end else begin  // Sunlight_Hours > 64'h40108A3D70000000
                                if (LE(N, 64'h4059200000000000)) begin
                                    yield_f_reg = 64'h4050451EB851EB85;
                                end else begin  // N > 64'h4059200000000000
                                    yield_f_reg = 64'h403EFBDD576F108A;
                                end
                            end
                        end else begin  // Sunlight_Hours > 64'h4011051EC0000000
                            if (LE(Fertilizer_Used, 64'h405C5C7AE0000000)) begin
                                if (LE(Sunlight_Hours, 64'h4025E147B0000000)) begin
                                    yield_f_reg = 64'h4032808FBD9C7E3B;
                                end else begin  // Sunlight_Hours > 64'h4025E147B0000000
                                    yield_f_reg = 64'h404CB2C5F92C5F93;
                                end
                            end else begin  // Fertilizer_Used > 64'h405C5C7AE0000000
                                if (LE(Humidity, 64'h40523B8520000000)) begin
                                    yield_f_reg = 64'h4034676E2476E245;
                                end else begin  // Humidity > 64'h40523B8520000000
                                    yield_f_reg = 64'h403A23C553DB77D9;
                                end
                            end
                        end
                    end
                end else begin  // Temperature > 64'h403B1AE150000000
                    if (LE(N, 64'h403F800000000000)) begin
                        if (LE(P, 64'h4045C00000000000)) begin
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                if (LE(K, 64'h4057C00000000000)) begin
                                    yield_f_reg = 64'h40523CCCCCCCCCCD;
                                end else begin  // K > 64'h4057C00000000000
                                    yield_f_reg = 64'h405250A3D70A3D71;
                                end
                            end else begin  // Season > 64'h3FE0000000000000
                                yield_f_reg = 64'h4051DA3D70A3D70A;
                            end
                        end else begin  // P > 64'h4045C00000000000
                            if (LE(Soil_Moisture, 64'h404CF51EC0000000)) begin
                                if (LE(Temperature, 64'h403E35C290000000)) begin
                                    yield_f_reg = 64'h40464F5C28F5C290;
                                end else begin  // Temperature > 64'h403E35C290000000
                                    yield_f_reg = 64'h4024A3D70A3D70A5;
                                end
                            end else begin  // Soil_Moisture > 64'h404CF51EC0000000
                                yield_f_reg = 64'h4052D28F5C28F5C3;
                            end
                        end
                    end else begin  // N > 64'h403F800000000000
                        if (LE(Temperature, 64'h4043D851E0000000)) begin
                            if (LE(Humidity, 64'h40567C7AE0000000)) begin
                                if (LE(Sunlight_Hours, 64'h40100F5C30000000)) begin
                                    yield_f_reg = 64'h405227AE147AE148;
                                end else begin  // Sunlight_Hours > 64'h40100F5C30000000
                                    yield_f_reg = 64'h4031AAE37811EEE3;
                                end
                            end else begin  // Humidity > 64'h40567C7AE0000000
                                yield_f_reg = 64'h405278F5C28F5C29;
                            end
                        end else begin  // Temperature > 64'h4043D851E0000000
                            if (LE(K, 64'h405F600000000000)) begin
                                if (LE(Soil_pH, 64'h401D8F5C20000000)) begin
                                    yield_f_reg = 64'h40278B17E4B17E4B;
                                end else begin  // Soil_pH > 64'h401D8F5C20000000
                                    yield_f_reg = 64'h40521E147AE147AE;
                                end
                            end else begin  // K > 64'h405F600000000000
                                if (LE(Soil_Moisture, 64'h404A7D70A0000000)) begin
                                    yield_f_reg = 64'h40502DA740DA740E;
                                end else begin  // Soil_Moisture > 64'h404A7D70A0000000
                                    yield_f_reg = 64'h4020C28F5C28F5C3;
                                end
                            end
                        end
                    end
                end
            end else begin  // Altitude > 64'h40A0EB0000000000
                if (LE(Organic_Carbon, 64'h3FF4F5C290000000)) begin
                    if (LE(K, 64'h4053A00000000000)) begin
                        if (LE(Soil_pH, 64'h4017FAE150000000)) begin
                            if (LE(Sunlight_Hours, 64'h401D800010000000)) begin
                                if (LE(Pesticide_Used, 64'h4021570A38000000)) begin
                                    yield_f_reg = 64'h4019A3D70A3D70A4;
                                end else begin  // Pesticide_Used > 64'h4021570A38000000
                                    yield_f_reg = 64'h401970A3D70A3D71;
                                end
                            end else begin  // Sunlight_Hours > 64'h401D800010000000
                                yield_f_reg = 64'h4010147AE147AE14;
                            end
                        end else begin  // Soil_pH > 64'h4017FAE150000000
                            if (LE(Humidity, 64'h4042200000000000)) begin
                                if (LE(Fertilizer_Used, 64'h405BA7AE20000000)) begin
                                    yield_f_reg = 64'h401A7AE147AE147B;
                                end else begin  // Fertilizer_Used > 64'h405BA7AE20000000
                                    yield_f_reg = 64'h401BB851EB851EB8;
                                end
                            end else begin  // Humidity > 64'h4042200000000000
                                if (LE(Pesticide_Used, 64'h4026E8F5C0000000)) begin
                                    yield_f_reg = 64'h402359999999999A;
                                end else begin  // Pesticide_Used > 64'h4026E8F5C0000000
                                    yield_f_reg = 64'h40215AE147AE147B;
                                end
                            end
                        end
                    end else begin  // K > 64'h4053A00000000000
                        if (LE(Temperature, 64'h403DB0A3E0000000)) begin
                            if (LE(Soil_pH, 64'h401CC28F60000000)) begin
                                if (LE(K, 64'h4057E00000000000)) begin
                                    yield_f_reg = 64'h40220A3D70A3D70A;
                                end else begin  // K > 64'h4057E00000000000
                                    yield_f_reg = 64'h401B0F5C28F5C28F;
                                end
                            end else begin  // Soil_pH > 64'h401CC28F60000000
                                yield_f_reg = 64'h40369C28F5C28F5C;
                            end
                        end else begin  // Temperature > 64'h403DB0A3E0000000
                            if (LE(Organic_Carbon, 64'h3FDEB851E0000000)) begin
                                yield_f_reg = 64'h403770A3D70A3D71;
                            end else begin  // Organic_Carbon > 64'h3FDEB851E0000000
                                if (LE(Wind_Speed, 64'h40187AE150000000)) begin
                                    yield_f_reg = 64'h4052EE6666666666;
                                end else begin  // Wind_Speed > 64'h40187AE150000000
                                    yield_f_reg = 64'h4052651EB851EB85;
                                end
                            end
                        end
                    end
                end else begin  // Organic_Carbon > 64'h3FF4F5C290000000
                    if (LE(Soil_Moisture, 64'h40487EB850000000)) begin
                        if (LE(Altitude, 64'h40A0F50000000000)) begin
                            yield_f_reg = 64'h405213D70A3D70A4;
                        end else begin  // Altitude > 64'h40A0F50000000000
                            if (LE(K, 64'h4046000000000000)) begin
                                yield_f_reg = 64'h4052451EB851EB85;
                            end else begin  // K > 64'h4046000000000000
                                if (LE(K, 64'h4050600000000000)) begin
                                    yield_f_reg = 64'h40525E147AE147AE;
                                end else begin  // K > 64'h4050600000000000
                                    yield_f_reg = 64'h405270F5C28F5C29;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h40487EB850000000
                        if (LE(P, 64'h4053C00000000000)) begin
                            yield_f_reg = 64'h4038BAE147AE147B;
                        end else begin  // P > 64'h4053C00000000000
                            yield_f_reg = 64'h4038428F5C28F5C3;
                        end
                    end
                end
            end
        end else begin  // Organic_Carbon > 64'h3FF8B851E0000000
            if (LE(Wind_Speed, 64'h3FF7999990000000)) begin
                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                    yield_f_reg = 64'h4052466666666666;
                end else begin  // Irrigation_Type > 64'h3FF8000000000000
                    yield_f_reg = 64'h40522EB851EB851F;
                end
            end else begin  // Wind_Speed > 64'h3FF7999990000000
                if (LE(Pesticide_Used, 64'h3FBD70A3D4000000)) begin
                    yield_f_reg = 64'h4051C1EB851EB852;
                end else begin  // Pesticide_Used > 64'h3FBD70A3D4000000
                    if (LE(Humidity, 64'h4040747AE0000000)) begin
                        if (LE(N, 64'h4051C00000000000)) begin
                            yield_f_reg = 64'h4052170A3D70A3D7;
                        end else begin  // N > 64'h4051C00000000000
                            if (LE(Region, 64'h400C000000000000)) begin
                                yield_f_reg = 64'h4039AB851EB851EC;
                            end else begin  // Region > 64'h400C000000000000
                                yield_f_reg = 64'h4038970A3D70A3D7;
                            end
                        end
                    end else begin  // Humidity > 64'h4040747AE0000000
                        if (LE(Sunlight_Hours, 64'h4015666670000000)) begin
                            if (LE(Sunlight_Hours, 64'h40153851F0000000)) begin
                                if (LE(Rainfall, 64'h4093C54CD0000000)) begin
                                    yield_f_reg = 64'h4024A4DD2F1A9FBE;
                                end else begin  // Rainfall > 64'h4093C54CD0000000
                                    yield_f_reg = 64'h4036755555555555;
                                end
                            end else begin  // Sunlight_Hours > 64'h40153851F0000000
                                if (LE(Region, 64'h3FE0000000000000)) begin
                                    yield_f_reg = 64'h40526AE147AE147B;
                                end else begin  // Region > 64'h3FE0000000000000
                                    yield_f_reg = 64'h4036E66666666666;
                                end
                            end
                        end else begin  // Sunlight_Hours > 64'h4015666670000000
                            if (LE(Altitude, 64'h40A0650000000000)) begin
                                if (LE(Humidity, 64'h4055B00000000000)) begin
                                    yield_f_reg = 64'h40219F9CEF179368;
                                end else begin  // Humidity > 64'h4055B00000000000
                                    yield_f_reg = 64'h4033F40DA740DA74;
                                end
                            end else begin  // Altitude > 64'h40A0650000000000
                                if (LE(N, 64'h4056E00000000000)) begin
                                    yield_f_reg = 64'h40370CCCCCCCCCCD;
                                end else begin  // N > 64'h4056E00000000000
                                    yield_f_reg = 64'h403870A3D70A3D71;
                                end
                            end
                        end
                    end
                end
            end
        end
    end else begin  // Rainfall > 64'h40A09563E0000000
        if (LE(Wind_Speed, 64'h4022F0A3D0000000)) begin
            if (LE(Organic_Carbon, 64'h3FF9333340000000)) begin
                if (LE(Altitude, 64'h4093320000000000)) begin
                    if (LE(K, 64'h4060700000000000)) begin
                        if (LE(Altitude, 64'h40930A0000000000)) begin
                            if (LE(K, 64'h403B800000000000)) begin
                                if (LE(N, 64'h404F400000000000)) begin
                                    yield_f_reg = 64'h4052C4F5C28F5C29;
                                end else begin  // N > 64'h404F400000000000
                                    yield_f_reg = 64'h40312A1907F6E5D5;
                                end
                            end else begin  // K > 64'h403B800000000000
                                if (LE(Altitude, 64'h4092020000000000)) begin
                                    yield_f_reg = 64'h4031937323373232;
                                end else begin  // Altitude > 64'h4092020000000000
                                    yield_f_reg = 64'h403E8DA740DA740E;
                                end
                            end
                        end else begin  // Altitude > 64'h40930A0000000000
                            yield_f_reg = 64'h4052EE147AE147AE;
                        end
                    end else begin  // K > 64'h4060700000000000
                        if (LE(Altitude, 64'h408E9C0000000000)) begin
                            if (LE(Soil_Type, 64'h3FF8000000000000)) begin
                                if (LE(Rainfall, 64'h40A5CD0520000000)) begin
                                    yield_f_reg = 64'h402D9B22D0E56042;
                                end else begin  // Rainfall > 64'h40A5CD0520000000
                                    yield_f_reg = 64'h4052D0A3D70A3D71;
                                end
                            end else begin  // Soil_Type > 64'h3FF8000000000000
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4037D536202ECFB9;
                                end else begin  // Region > 64'h4004000000000000
                                    yield_f_reg = 64'h405050A3D70A3D71;
                                end
                            end
                        end else begin  // Altitude > 64'h408E9C0000000000
                            if (LE(Pesticide_Used, 64'h3FF9333338000000)) begin
                                yield_f_reg = 64'h4038547AE147AE14;
                            end else begin  // Pesticide_Used > 64'h3FF9333338000000
                                if (LE(Organic_Carbon, 64'h3FEC28F5C0000000)) begin
                                    yield_f_reg = 64'h4052E5C28F5C28F6;
                                end else begin  // Organic_Carbon > 64'h3FEC28F5C0000000
                                    yield_f_reg = 64'h4052A28F5C28F5C2;
                                end
                            end
                        end
                    end
                end else begin  // Altitude > 64'h4093320000000000
                    if (LE(P, 64'h4057E00000000000)) begin
                        if (LE(P, 64'h4032800000000000)) begin
                            if (LE(Humidity, 64'h40514BD710000000)) begin
                                if (LE(N, 64'h4046C00000000000)) begin
                                    yield_f_reg = 64'h4038CCCCCCCCCCCD;
                                end else begin  // N > 64'h4046C00000000000
                                    yield_f_reg = 64'h4022AC5F92C5F92C;
                                end
                            end else begin  // Humidity > 64'h40514BD710000000
                                if (LE(Region, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4052770A3D70A3D7;
                                end else begin  // Region > 64'h4004000000000000
                                    yield_f_reg = 64'h4052747AE147AE14;
                                end
                            end
                        end else begin  // P > 64'h4032800000000000
                            if (LE(P, 64'h4050600000000000)) begin
                                if (LE(Soil_Moisture, 64'h402FF0A3D0000000)) begin
                                    yield_f_reg = 64'h404463D70A3D70A4;
                                end else begin  // Soil_Moisture > 64'h402FF0A3D0000000
                                    yield_f_reg = 64'h4027E01644FEE80A;
                                end
                            end else begin  // P > 64'h4050600000000000
                                if (LE(Soil_pH, 64'h401523D710000000)) begin
                                    yield_f_reg = 64'h4045D11111111111;
                                end else begin  // Soil_pH > 64'h401523D710000000
                                    yield_f_reg = 64'h402F8F05EDAD0088;
                                end
                            end
                        end
                    end else begin  // P > 64'h4057E00000000000
                        if (LE(Region, 64'h4004000000000000)) begin
                            if (LE(Season, 64'h3FE0000000000000)) begin
                                yield_f_reg = 64'h403B970A3D70A3D7;
                            end else begin  // Season > 64'h3FE0000000000000
                                if (LE(Organic_Carbon, 64'h3FEDEB8520000000)) begin
                                    yield_f_reg = 64'h4022D8BF258BF259;
                                end else begin  // Organic_Carbon > 64'h3FEDEB8520000000
                                    yield_f_reg = 64'h402570A3D70A3D71;
                                end
                            end
                        end else begin  // Region > 64'h4004000000000000
                            if (LE(Pesticide_Used, 64'h4031A147B0000000)) begin
                                if (LE(N, 64'h405AE00000000000)) begin
                                    yield_f_reg = 64'h40521147AE147AE1;
                                end else begin  // N > 64'h405AE00000000000
                                    yield_f_reg = 64'h4052FF0A3D70A3D7;
                                end
                            end else begin  // Pesticide_Used > 64'h4031A147B0000000
                                yield_f_reg = 64'h4024F5C28F5C28F6;
                            end
                        end
                    end
                end
            end else begin  // Organic_Carbon > 64'h3FF9333340000000
                if (LE(P, 64'h4040400000000000)) begin
                    if (LE(Altitude, 64'h409C060000000000)) begin
                        if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                            if (LE(K, 64'h404D000000000000)) begin
                                if (LE(Soil_pH, 64'h401E947AE0000000)) begin
                                    yield_f_reg = 64'h405269999999999A;
                                end else begin  // Soil_pH > 64'h401E947AE0000000
                                    yield_f_reg = 64'h405280A3D70A3D71;
                                end
                            end else begin  // K > 64'h404D000000000000
                                if (LE(Sunlight_Hours, 64'h4021733330000000)) begin
                                    yield_f_reg = 64'h40529F5C28F5C28F;
                                end else begin  // Sunlight_Hours > 64'h4021733330000000
                                    yield_f_reg = 64'h4052CEB851EB851F;
                                end
                            end
                        end else begin  // Irrigation_Type > 64'h4004000000000000
                            yield_f_reg = 64'h4053666666666666;
                        end
                    end else begin  // Altitude > 64'h409C060000000000
                        yield_f_reg = 64'h4028E66666666666;
                    end
                end else begin  // P > 64'h4040400000000000
                    if (LE(Soil_Moisture, 64'h4041351EB0000000)) begin
                        yield_f_reg = 64'h40221EB851EB851F;
                    end else begin  // Soil_Moisture > 64'h4041351EB0000000
                        if (LE(Fertilizer_Used, 64'h405EBFFFF0000000)) begin
                            yield_f_reg = 64'h402319999999999A;
                        end else begin  // Fertilizer_Used > 64'h405EBFFFF0000000
                            yield_f_reg = 64'h40229EB851EB851F;
                        end
                    end
                end
            end
        end else begin  // Wind_Speed > 64'h4022F0A3D0000000
            if (LE(Region, 64'h400C000000000000)) begin
                if (LE(Pesticide_Used, 64'h4037733330000000)) begin
                    if (LE(Wind_Speed, 64'h40231C2900000000)) begin
                        if (LE(Altitude, 64'h40949E0000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4024D1EB80000000)) begin
                                yield_f_reg = 64'h405310A3D70A3D71;
                            end else begin  // Sunlight_Hours > 64'h4024D1EB80000000
                                yield_f_reg = 64'h405295C28F5C28F6;
                            end
                        end else begin  // Altitude > 64'h40949E0000000000
                            yield_f_reg = 64'h4038F5C28F5C28F6;
                        end
                    end else begin  // Wind_Speed > 64'h40231C2900000000
                        if (LE(P, 64'h4046C00000000000)) begin
                            if (LE(Sunlight_Hours, 64'h4013428F60000000)) begin
                                if (LE(Humidity, 64'h404E27AE10000000)) begin
                                    yield_f_reg = 64'h4026CFDF3B645A1E;
                                end else begin  // Humidity > 64'h404E27AE10000000
                                    yield_f_reg = 64'h404FDBBBBBBBBBBB;
                                end
                            end else begin  // Sunlight_Hours > 64'h4013428F60000000
                                if (LE(K, 64'h4061E00000000000)) begin
                                    yield_f_reg = 64'h402998BCD8DF56FD;
                                end else begin  // K > 64'h4061E00000000000
                                    yield_f_reg = 64'h40487BA5E353F7CF;
                                end
                            end
                        end else begin  // P > 64'h4046C00000000000
                            if (LE(N, 64'h4054400000000000)) begin
                                if (LE(N, 64'h4053400000000000)) begin
                                    yield_f_reg = 64'h403C3C598153D0F8;
                                end else begin  // N > 64'h4053400000000000
                                    yield_f_reg = 64'h4052547AE147AE14;
                                end
                            end else begin  // N > 64'h4054400000000000
                                if (LE(Altitude, 64'h4044C00000000000)) begin
                                    yield_f_reg = 64'h4052CEB851EB851F;
                                end else begin  // Altitude > 64'h4044C00000000000
                                    yield_f_reg = 64'h4034E206D3A06D39;
                                end
                            end
                        end
                    end
                end else begin  // Pesticide_Used > 64'h4037733330000000
                    if (LE(Soil_Moisture, 64'h4044366670000000)) begin
                        if (LE(Organic_Carbon, 64'h3FED1EB850000000)) begin
                            yield_f_reg = 64'h4051E147AE147AE1;
                        end else begin  // Organic_Carbon > 64'h3FED1EB850000000
                            if (LE(Sunlight_Hours, 64'h401FB33330000000)) begin
                                if (LE(Fertilizer_Used, 64'h40531947B0000000)) begin
                                    yield_f_reg = 64'h4052CC28F5C28F5C;
                                end else begin  // Fertilizer_Used > 64'h40531947B0000000
                                    yield_f_reg = 64'h4052DE147AE147AE;
                                end
                            end else begin  // Sunlight_Hours > 64'h401FB33330000000
                                if (LE(Humidity, 64'h4049BC28F0000000)) begin
                                    yield_f_reg = 64'h40528C28F5C28F5C;
                                end else begin  // Humidity > 64'h4049BC28F0000000
                                    yield_f_reg = 64'h4052AE147AE147AE;
                                end
                            end
                        end
                    end else begin  // Soil_Moisture > 64'h4044366670000000
                        if (LE(Soil_pH, 64'h401CD1EB80000000)) begin
                            if (LE(Rainfall, 64'h40A2496900000000)) begin
                                if (LE(Fertilizer_Used, 64'h405B747AE0000000)) begin
                                    yield_f_reg = 64'h403B147AE147AE14;
                                end else begin  // Fertilizer_Used > 64'h405B747AE0000000
                                    yield_f_reg = 64'h4038D70A3D70A3D7;
                                end
                            end else begin  // Rainfall > 64'h40A2496900000000
                                if (LE(Fertilizer_Used, 64'h4062B5EB80000000)) begin
                                    yield_f_reg = 64'h401F9C28F5C28F5C;
                                end else begin  // Fertilizer_Used > 64'h4062B5EB80000000
                                    yield_f_reg = 64'h4026828F5C28F5C2;
                                end
                            end
                        end else begin  // Soil_pH > 64'h401CD1EB80000000
                            if (LE(Organic_Carbon, 64'h3FE3333330000000)) begin
                                if (LE(Rainfall, 64'h40A31FD990000000)) begin
                                    yield_f_reg = 64'h4039200000000000;
                                end else begin  // Rainfall > 64'h40A31FD990000000
                                    yield_f_reg = 64'h4025051EB851EB85;
                                end
                            end else begin  // Organic_Carbon > 64'h3FE3333330000000
                                if (LE(N, 64'h4065800000000000)) begin
                                    yield_f_reg = 64'h405284BC6A7EF9DB;
                                end else begin  // N > 64'h4065800000000000
                                    yield_f_reg = 64'h4038C00000000000;
                                end
                            end
                        end
                    end
                end
            end else begin  // Region > 64'h400C000000000000
                if (LE(Temperature, 64'h403DC7AE10000000)) begin
                    if (LE(Sunlight_Hours, 64'h4012B33330000000)) begin
                        if (LE(Altitude, 64'h4096800000000000)) begin
                            if (LE(Soil_pH, 64'h401A7AE150000000)) begin
                                if (LE(Wind_Speed, 64'h4027BD70A0000000)) begin
                                    yield_f_reg = 64'h4023666666666666;
                                end else begin  // Wind_Speed > 64'h4027BD70A0000000
                                    yield_f_reg = 64'h402168F5C28F5C29;
                                end
                            end else begin  // Soil_pH > 64'h401A7AE150000000
                                if (LE(K, 64'h405F800000000000)) begin
                                    yield_f_reg = 64'h401ECCCCCCCCCCCD;
                                end else begin  // K > 64'h405F800000000000
                                    yield_f_reg = 64'h40191EB851EB851F;
                                end
                            end
                        end else begin  // Altitude > 64'h4096800000000000
                            if (LE(Rainfall, 64'h40A231DC30000000)) begin
                                yield_f_reg = 64'h40256147AE147AE1;
                            end else begin  // Rainfall > 64'h40A231DC30000000
                                yield_f_reg = 64'h4027A8F5C28F5C29;
                            end
                        end
                    end else begin  // Sunlight_Hours > 64'h4012B33330000000
                        if (LE(Sunlight_Hours, 64'h40201C2900000000)) begin
                            if (LE(Pesticide_Used, 64'h4014AE1480000000)) begin
                                if (LE(Temperature, 64'h403ACCCCC0000000)) begin
                                    yield_f_reg = 64'h4028FAE147AE147B;
                                end else begin  // Temperature > 64'h403ACCCCC0000000
                                    yield_f_reg = 64'h405207AE147AE148;
                                end
                            end else begin  // Pesticide_Used > 64'h4014AE1480000000
                                if (LE(Altitude, 64'h407CF00000000000)) begin
                                    yield_f_reg = 64'h40393851EB851EB8;
                                end else begin  // Altitude > 64'h407CF00000000000
                                    yield_f_reg = 64'h40514AE147AE147B;
                                end
                            end
                        end else begin  // Sunlight_Hours > 64'h40201C2900000000
                            if (LE(Altitude, 64'h409A8A0000000000)) begin
                                if (LE(Temperature, 64'h403D50A3D0000000)) begin
                                    yield_f_reg = 64'h4030FA83A83A83A8;
                                end else begin  // Temperature > 64'h403D50A3D0000000
                                    yield_f_reg = 64'h4052A33333333333;
                                end
                            end else begin  // Altitude > 64'h409A8A0000000000
                                if (LE(Wind_Speed, 64'h402747AE10000000)) begin
                                    yield_f_reg = 64'h40226147AE147AE1;
                                end else begin  // Wind_Speed > 64'h402747AE10000000
                                    yield_f_reg = 64'h4052C5C28F5C28F6;
                                end
                            end
                        end
                    end
                end else begin  // Temperature > 64'h403DC7AE10000000
                    if (LE(Organic_Carbon, 64'h3FD428F5C0000000)) begin
                        yield_f_reg = 64'h405393D70A3D70A4;
                    end else begin  // Organic_Carbon > 64'h3FD428F5C0000000
                        if (LE(Altitude, 64'h409C1E0000000000)) begin
                            if (LE(K, 64'h4060A00000000000)) begin
                                if (LE(Pesticide_Used, 64'h402A0F5C30000000)) begin
                                    yield_f_reg = 64'h402047AE147AE147;
                                end else begin  // Pesticide_Used > 64'h402A0F5C30000000
                                    yield_f_reg = 64'h402F8DE5AB277F45;
                                end
                            end else begin  // K > 64'h4060A00000000000
                                if (LE(Wind_Speed, 64'h402BA147A0000000)) begin
                                    yield_f_reg = 64'h4039666666666666;
                                end else begin  // Wind_Speed > 64'h402BA147A0000000
                                    yield_f_reg = 64'h4025FAE147AE147B;
                                end
                            end
                        end else begin  // Altitude > 64'h409C1E0000000000
                            if (LE(Humidity, 64'h404D6851E0000000)) begin
                                yield_f_reg = 64'h401651EB851EB852;
                            end else begin  // Humidity > 64'h404D6851E0000000
                                if (LE(Fertilizer_Used, 64'h4060B68F58000000)) begin
                                    yield_f_reg = 64'h4052D00000000000;
                                end else begin  // Fertilizer_Used > 64'h4060B68F58000000
                                    yield_f_reg = 64'h4052BCCCCCCCCCCD;
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end else begin  // Fertilizer_Used > 64'h4066AB0A40000000
    if (LE(Fertilizer_Used, 64'h4066B6E150000000)) begin
        if (LE(N, 64'h4064000000000000)) begin
            if (LE(Soil_pH, 64'h401551EB90000000)) begin
                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                    yield_f_reg = 64'h40522EB851EB851F;
                end else begin  // Irrigation_Type > 64'h3FF8000000000000
                    yield_f_reg = 64'h405257AE147AE148;
                end
            end else begin  // Soil_pH > 64'h401551EB90000000
                if (LE(Region, 64'h3FE0000000000000)) begin
                    yield_f_reg = 64'h4052A1EB851EB852;
                end else begin  // Region > 64'h3FE0000000000000
                    yield_f_reg = 64'h4052B7AE147AE148;
                end
            end
        end else begin  // N > 64'h4064000000000000
            yield_f_reg = 64'h4026570A3D70A3D7;
        end
    end else begin  // Fertilizer_Used > 64'h4066B6E150000000
        if (LE(Soil_pH, 64'h401E051EC0000000)) begin
            if (LE(Soil_Moisture, 64'h402F947AE0000000)) begin
                if (LE(Sunlight_Hours, 64'h4019428F60000000)) begin
                    if (LE(K, 64'h405CC00000000000)) begin
                        if (LE(Sunlight_Hours, 64'h401128F5C0000000)) begin
                            if (LE(Organic_Carbon, 64'h3FF6000000000000)) begin
                                if (LE(Wind_Speed, 64'h40155C28EC000000)) begin
                                    yield_f_reg = 64'h4020851EB851EB85;
                                end else begin  // Wind_Speed > 64'h40155C28EC000000
                                    yield_f_reg = 64'h402699999999999A;
                                end
                            end else begin  // Organic_Carbon > 64'h3FF6000000000000
                                yield_f_reg = 64'h40527851EB851EB8;
                            end
                        end else begin  // Sunlight_Hours > 64'h401128F5C0000000
                            if (LE(Organic_Carbon, 64'h3FDBD70A30000000)) begin
                                yield_f_reg = 64'h401B147AE147AE14;
                            end else begin  // Organic_Carbon > 64'h3FDBD70A30000000
                                if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                                    yield_f_reg = 64'h4052CFA06D3A06D3;
                                end else begin  // Irrigation_Type > 64'h4004000000000000
                                    yield_f_reg = 64'h4025947AE147AE14;
                                end
                            end
                        end
                    end else begin  // K > 64'h405CC00000000000
                        if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                            if (LE(Soil_Moisture, 64'h402EA147B0000000)) begin
                                yield_f_reg = 64'h401A147AE147AE14;
                            end else begin  // Soil_Moisture > 64'h402EA147B0000000
                                if (LE(Rainfall, 64'h4098EBC290000000)) begin
                                    yield_f_reg = 64'h40240F5C28F5C28F;
                                end else begin  // Rainfall > 64'h4098EBC290000000
                                    yield_f_reg = 64'h4023E147AE147AE1;
                                end
                            end
                        end else begin  // Irrigation_Type > 64'h3FF8000000000000
                            yield_f_reg = 64'h4037B0A3D70A3D71;
                        end
                    end
                end else begin  // Sunlight_Hours > 64'h4019428F60000000
                    if (LE(Pesticide_Used, 64'h40350A3D70000000)) begin
                        if (LE(Pesticide_Used, 64'h3FEBAE1480000000)) begin
                            yield_f_reg = 64'h40534147AE147AE1;
                        end else begin  // Pesticide_Used > 64'h3FEBAE1480000000
                            if (LE(Temperature, 64'h4043D28F60000000)) begin
                                if (LE(Soil_pH, 64'h401CD1EB80000000)) begin
                                    yield_f_reg = 64'h403063501CE9B682;
                                end else begin  // Soil_pH > 64'h401CD1EB80000000
                                    yield_f_reg = 64'h4046A051EB851EB9;
                                end
                            end else begin  // Temperature > 64'h4043D28F60000000
                                yield_f_reg = 64'h405325C28F5C28F6;
                            end
                        end
                    end else begin  // Pesticide_Used > 64'h40350A3D70000000
                        if (LE(Temperature, 64'h40422B8520000000)) begin
                            if (LE(Altitude, 64'h409D3E0000000000)) begin
                                if (LE(Humidity, 64'h4047A3D700000000)) begin
                                    yield_f_reg = 64'h40536A3D70A3D70A;
                                end else begin  // Humidity > 64'h4047A3D700000000
                                    yield_f_reg = 64'h4053528F5C28F5C3;
                                end
                            end else begin  // Altitude > 64'h409D3E0000000000
                                yield_f_reg = 64'h4052300000000000;
                            end
                        end else begin  // Temperature > 64'h40422B8520000000
                            yield_f_reg = 64'h40240A3D70A3D70A;
                        end
                    end
                end
            end else begin  // Soil_Moisture > 64'h402F947AE0000000
                if (LE(Sunlight_Hours, 64'h4024733330000000)) begin
                    if (LE(Sunlight_Hours, 64'h4022B0A3E0000000)) begin
                        if (LE(Wind_Speed, 64'h3FF2CCCCC0000000)) begin
                            if (LE(Season, 64'h3FF8000000000000)) begin
                                if (LE(Rainfall, 64'h409D331480000000)) begin
                                    yield_f_reg = 64'h40422CE601934C68;
                                end else begin  // Rainfall > 64'h409D331480000000
                                    yield_f_reg = 64'h40533DCE434A9B10;
                                end
                            end else begin  // Season > 64'h3FF8000000000000
                                if (LE(Organic_Carbon, 64'h3FF747AE20000000)) begin
                                    yield_f_reg = 64'h4022B645A1CAC083;
                                end else begin  // Organic_Carbon > 64'h3FF747AE20000000
                                    yield_f_reg = 64'h403AF5C28F5C28F6;
                                end
                            end
                        end else begin  // Wind_Speed > 64'h3FF2CCCCC0000000
                            if (LE(Wind_Speed, 64'h4009666670000000)) begin
                                if (LE(K, 64'h4054200000000000)) begin
                                    yield_f_reg = 64'h40309A84C232D6B2;
                                end else begin  // K > 64'h4054200000000000
                                    yield_f_reg = 64'h403777EBF9A0E1BD;
                                end
                            end else begin  // Wind_Speed > 64'h4009666670000000
                                if (LE(Wind_Speed, 64'h4009EB8520000000)) begin
                                    yield_f_reg = 64'h40444F1EB851EB86;
                                end else begin  // Wind_Speed > 64'h4009EB8520000000
                                    yield_f_reg = 64'h403842C44849D4A4;
                                end
                            end
                        end
                    end else begin  // Sunlight_Hours > 64'h4022B0A3E0000000
                        if (LE(Altitude, 64'h40A0E30000000000)) begin
                            if (LE(Humidity, 64'h40400EB860000000)) begin
                                if (LE(Wind_Speed, 64'h400A147AF0000000)) begin
                                    yield_f_reg = 64'h40291DB22D0E5604;
                                end else begin  // Wind_Speed > 64'h400A147AF0000000
                                    yield_f_reg = 64'h404EE12C5F92C5F9;
                                end
                            end else begin  // Humidity > 64'h40400EB860000000
                                if (LE(Altitude, 64'h4095AA0000000000)) begin
                                    yield_f_reg = 64'h403D69D1DCAE8148;
                                end else begin  // Altitude > 64'h4095AA0000000000
                                    yield_f_reg = 64'h4034EE147AE147AA;
                                end
                            end
                        end else begin  // Altitude > 64'h40A0E30000000000
                            if (LE(Region, 64'h3FE0000000000000)) begin
                                if (LE(Season, 64'h3FF8000000000000)) begin
                                    yield_f_reg = 64'h403A4CCCCCCCCCCD;
                                end else begin  // Season > 64'h3FF8000000000000
                                    yield_f_reg = 64'h4024B851EB851EB8;
                                end
                            end else begin  // Region > 64'h3FE0000000000000
                                if (LE(Soil_Moisture, 64'h403C9EB850000000)) begin
                                    yield_f_reg = 64'h40525D70A3D70A3E;
                                end else begin  // Soil_Moisture > 64'h403C9EB850000000
                                    yield_f_reg = 64'h40532147AE147AE1;
                                end
                            end
                        end
                    end
                end else begin  // Sunlight_Hours > 64'h4024733330000000
                    if (LE(Fertilizer_Used, 64'h4075D20000000000)) begin
                        if (LE(Sunlight_Hours, 64'h4025547AE0000000)) begin
                            if (LE(Temperature, 64'h40438C28F0000000)) begin
                                if (LE(K, 64'h4062900000000000)) begin
                                    yield_f_reg = 64'h4030346BFC46BFC4;
                                end else begin  // K > 64'h4062900000000000
                                    yield_f_reg = 64'h405351EB851EB852;
                                end
                            end else begin  // Temperature > 64'h40438C28F0000000
                                if (LE(Sunlight_Hours, 64'h4024E8F5C0000000)) begin
                                    yield_f_reg = 64'h402825E353F7CED8;
                                end else begin  // Sunlight_Hours > 64'h4024E8F5C0000000
                                    yield_f_reg = 64'h405075C28F5C28F6;
                                end
                            end
                        end else begin  // Sunlight_Hours > 64'h4025547AE0000000
                            if (LE(Fertilizer_Used, 64'h40673E8F60000000)) begin
                                if (LE(P, 64'h4045800000000000)) begin
                                    yield_f_reg = 64'h4052DAE147AE147B;
                                end else begin  // P > 64'h4045800000000000
                                    yield_f_reg = 64'h4052CAE147AE147B;
                                end
                            end else begin  // Fertilizer_Used > 64'h40673E8F60000000
                                if (LE(Rainfall, 64'h407F8FEB90000000)) begin
                                    yield_f_reg = 64'h4044F0D2A6C405DA;
                                end else begin  // Rainfall > 64'h407F8FEB90000000
                                    yield_f_reg = 64'h403635D610943C77;
                                end
                            end
                        end
                    end else begin  // Fertilizer_Used > 64'h4075D20000000000
                        if (LE(Sunlight_Hours, 64'h4024B851F0000000)) begin
                            yield_f_reg = 64'h40531851EB851EB8;
                        end else begin  // Sunlight_Hours > 64'h4024B851F0000000
                            yield_f_reg = 64'h40536A3D70A3D70A;
                        end
                    end
                end
            end
        end else begin  // Soil_pH > 64'h401E051EC0000000
            if (LE(K, 64'h4062900000000000)) begin
                if (LE(Organic_Carbon, 64'h3FF95C2900000000)) begin
                    if (LE(Rainfall, 64'h409979E150000000)) begin
                        if (LE(Humidity, 64'h404CD5C290000000)) begin
                            if (LE(Temperature, 64'h4031B70A40000000)) begin
                                if (LE(Sunlight_Hours, 64'h4012A3D710000000)) begin
                                    yield_f_reg = 64'h404CB88888888888;
                                end else begin  // Sunlight_Hours > 64'h4012A3D710000000
                                    yield_f_reg = 64'h403C5F5884E4773C;
                                end
                            end else begin  // Temperature > 64'h4031B70A40000000
                                if (LE(P, 64'h4058400000000000)) begin
                                    yield_f_reg = 64'h4032654F027AAA16;
                                end else begin  // P > 64'h4058400000000000
                                    yield_f_reg = 64'h4049DDDDDDDDDDDD;
                                end
                            end
                        end else begin  // Humidity > 64'h404CD5C290000000
                            if (LE(N, 64'h4066500000000000)) begin
                                if (LE(Sunlight_Hours, 64'h401023D710000000)) begin
                                    yield_f_reg = 64'h4052DC28F5C28F5C;
                                end else begin  // Sunlight_Hours > 64'h401023D710000000
                                    yield_f_reg = 64'h402F71ECD353D666;
                                end
                            end else begin  // N > 64'h4066500000000000
                                yield_f_reg = 64'h4052F33333333333;
                            end
                        end
                    end else begin  // Rainfall > 64'h409979E150000000
                        if (LE(Soil_Moisture, 64'h4041200000000000)) begin
                            if (LE(Rainfall, 64'h409A1A9480000000)) begin
                                if (LE(K, 64'h404BC00000000000)) begin
                                    yield_f_reg = 64'h40528EB851EB851E;
                                end else begin  // K > 64'h404BC00000000000
                                    yield_f_reg = 64'h40386147AE147AE1;
                                end
                            end else begin  // Rainfall > 64'h409A1A9480000000
                                if (LE(Pesticide_Used, 64'h3FB5C28F60000000)) begin
                                    yield_f_reg = 64'h4053251EB851EB85;
                                end else begin  // Pesticide_Used > 64'h3FB5C28F60000000
                                    yield_f_reg = 64'h40312B0B9EE4806A;
                                end
                            end
                        end else begin  // Soil_Moisture > 64'h4041200000000000
                            if (LE(Soil_Moisture, 64'h4043700000000000)) begin
                                if (LE(Soil_Moisture, 64'h4042DB8520000000)) begin
                                    yield_f_reg = 64'h404007EF9DB22D0D;
                                end else begin  // Soil_Moisture > 64'h4042DB8520000000
                                    yield_f_reg = 64'h4052E020C49BA5E3;
                                end
                            end else begin  // Soil_Moisture > 64'h4043700000000000
                                if (LE(Pesticide_Used, 64'h402DB33340000000)) begin
                                    yield_f_reg = 64'h403403218E41D9E0;
                                end else begin  // Pesticide_Used > 64'h402DB33340000000
                                    yield_f_reg = 64'h403E62800C3FED9F;
                                end
                            end
                        end
                    end
                end else begin  // Organic_Carbon > 64'h3FF95C2900000000
                    if (LE(Organic_Carbon, 64'h3FF9851EC0000000)) begin
                        if (LE(N, 64'h405CC00000000000)) begin
                            if (LE(Wind_Speed, 64'h402791EB80000000)) begin
                                yield_f_reg = 64'h4052A70A3D70A3D7;
                            end else begin  // Wind_Speed > 64'h402791EB80000000
                                yield_f_reg = 64'h4052A0A3D70A3D71;
                            end
                        end else begin  // N > 64'h405CC00000000000
                            if (LE(Rainfall, 64'h4097EF3330000000)) begin
                                yield_f_reg = 64'h4052CA3D70A3D70A;
                            end else begin  // Rainfall > 64'h4097EF3330000000
                                yield_f_reg = 64'h4052F1EB851EB852;
                            end
                        end
                    end else begin  // Organic_Carbon > 64'h3FF9851EC0000000
                        if (LE(Rainfall, 64'h4095F323D0000000)) begin
                            yield_f_reg = 64'h40163D70A3D70A3D;
                        end else begin  // Rainfall > 64'h4095F323D0000000
                            if (LE(Humidity, 64'h4053F6B860000000)) begin
                                yield_f_reg = 64'h4023AE147AE147AE;
                            end else begin  // Humidity > 64'h4053F6B860000000
                                yield_f_reg = 64'h4026428F5C28F5C3;
                            end
                        end
                    end
                end
            end else begin  // K > 64'h4062900000000000
                if (LE(Region, 64'h4004000000000000)) begin
                    if (LE(Soil_Moisture, 64'h403DA00010000000)) begin
                        yield_f_reg = 64'h405268F5C28F5C29;
                    end else begin  // Soil_Moisture > 64'h403DA00010000000
                        if (LE(Wind_Speed, 64'h4021EB8520000000)) begin
                            if (LE(Soil_Type, 64'h4004000000000000)) begin
                                yield_f_reg = 64'h4025333333333333;
                            end else begin  // Soil_Type > 64'h4004000000000000
                                yield_f_reg = 64'h4023C7AE147AE148;
                            end
                        end else begin  // Wind_Speed > 64'h4021EB8520000000
                            yield_f_reg = 64'h40210F5C28F5C28F;
                        end
                    end
                end else begin  // Region > 64'h4004000000000000
                    if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                        if (LE(Temperature, 64'h40347AE150000000)) begin
                            yield_f_reg = 64'h405295C28F5C28F6;
                        end else begin  // Temperature > 64'h40347AE150000000
                            yield_f_reg = 64'h405281EB851EB852;
                        end
                    end else begin  // Irrigation_Type > 64'h3FF8000000000000
                        if (LE(Altitude, 64'h40941E0000000000)) begin
                            yield_f_reg = 64'h405333D70A3D70A4;
                        end else begin  // Altitude > 64'h40941E0000000000
                            yield_f_reg = 64'h405310A3D70A3D71;
                        end
                    end
                end
            end
        end
    end
end
