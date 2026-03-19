if (LE(Fertilizer_Used, 64'h40680B5C20000000)) begin
    if (LE(Rainfall, 64'h409255CCD0000000)) begin
        if (LE(Fertilizer_Used, 64'h406044A3E0000000)) begin
            if (LE(Soil_Moisture, 64'h4043F33330000000)) begin
                if (LE(Temperature, 64'h402A051EC0000000)) begin
                    if (LE(Humidity, 64'h404C3851F0000000)) begin
                        yield_f_reg = 64'h4023162FC962FC97;
                    end else begin
                        yield_f_reg = 64'h401FDDDDDDDDDDDF;
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h402A6B8520000000)) begin
                        yield_f_reg = 64'h401BC89010F2EF67;
                    end else begin
                        yield_f_reg = 64'h401E962FC962FC94;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h4055261480000000)) begin
                    if (LE(Rainfall, 64'h4082E8B850000000)) begin
                        yield_f_reg = 64'h401E9E353F7CED92;
                    end else begin
                        yield_f_reg = 64'h40213B788455121D;
                    end
                end else begin
                    if (LE(Rainfall, 64'h4086DCCCD0000000)) begin
                        yield_f_reg = 64'h40224189374BC6A7;
                    end else begin
                        yield_f_reg = 64'h4024A8F5C28F5C29;
                    end
                end
            end
        end else begin
            if (LE(K, 64'h4061A00000000000)) begin
                if (LE(Soil_Moisture, 64'h4043470A40000000)) begin
                    if (LE(Sunlight_Hours, 64'h40146147A0000000)) begin
                        yield_f_reg = 64'h4022044444444444;
                    end else begin
                        yield_f_reg = 64'h402037EF9DB22D0F;
                    end
                end else begin
                    if (LE(Temperature, 64'h40361D70A0000000)) begin
                        yield_f_reg = 64'h40233A1CAC083126;
                    end else begin
                        yield_f_reg = 64'h40217D1C9E96B639;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4017A3D710000000)) begin
                    if (LE(Pesticide_Used, 64'h4013CCCCD0000000)) begin
                        yield_f_reg = 64'h402723D70A3D70A4;
                    end else begin
                        yield_f_reg = 64'h4025266666666667;
                    end
                end else begin
                    if (LE(Temperature, 64'h403750A3D0000000)) begin
                        yield_f_reg = 64'h4024947AE147AE15;
                    end else begin
                        yield_f_reg = 64'h4021F851EB851EB8;
                    end
                end
            end
        end
    end else begin
        if (LE(Rainfall, 64'h40A16B6150000000)) begin
            if (LE(N, 64'h4061500000000000)) begin
                if (LE(K, 64'h4059600000000000)) begin
                    if (LE(Soil_Moisture, 64'h4044133330000000)) begin
                        yield_f_reg = 64'h4021422048335FA1;
                    end else begin
                        yield_f_reg = 64'h4022DE0595E0595E;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4063CBAE10000000)) begin
                        yield_f_reg = 64'h4022E45F92C5F92B;
                    end else begin
                        yield_f_reg = 64'h4024E7F9B2CE6019;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40424147B0000000)) begin
                    if (LE(Region, 64'h4000000000000000)) begin
                        yield_f_reg = 64'h401E0A3D70A3D70A;
                    end else begin
                        yield_f_reg = 64'h4020DF92C5F92C5F;
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4030C8F5C0000000)) begin
                        yield_f_reg = 64'h4024BB3AA5B3AA5C;
                    end else begin
                        yield_f_reg = 64'h4022F74410DDAA78;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405EAA8F50000000)) begin
                if (LE(Soil_Moisture, 64'h4038A00000000000)) begin
                    if (LE(Soil_pH, 64'h4017BD70A0000000)) begin
                        yield_f_reg = 64'h40208B4395810625;
                    end else begin
                        yield_f_reg = 64'h4022A49249249249;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404F15C290000000)) begin
                        yield_f_reg = 64'h4023BA18A8DB02B9;
                    end else begin
                        yield_f_reg = 64'h4028E66666666666;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401F947AE0000000)) begin
                    if (LE(Wind_Speed, 64'h4019333340000000)) begin
                        yield_f_reg = 64'h4027139393939393;
                    end else begin
                        yield_f_reg = 64'h402521391DCF4D97;
                    end
                end else begin
                    if (LE(Humidity, 64'h404F9B8520000000)) begin
                        yield_f_reg = 64'h401B3D70A3D70A3D;
                    end else begin
                        yield_f_reg = 64'h40224CCCCCCCCCCD;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h40981FFAE0000000)) begin
        if (LE(Soil_Moisture, 64'h4044728F60000000)) begin
            if (LE(Fertilizer_Used, 64'h4070E5AE20000000)) begin
                if (LE(Soil_Moisture, 64'h4036B47AE0000000)) begin
                    if (LE(Humidity, 64'h405587AE10000000)) begin
                        yield_f_reg = 64'h40206E3B07D4A16F;
                    end else begin
                        yield_f_reg = 64'h40240F5C28F5C28F;
                    end
                end else begin
                    if (LE(Rainfall, 64'h4089415C30000000)) begin
                        yield_f_reg = 64'h4021D730CA63FD95;
                    end else begin
                        yield_f_reg = 64'h4023BC15AF48E27D;
                    end
                end
            end else begin
                if (LE(Temperature, 64'h4034CF5C20000000)) begin
                    if (LE(Altitude, 64'h4095960000000000)) begin
                        yield_f_reg = 64'h402331324F3FAA84;
                    end else begin
                        yield_f_reg = 64'h40211CCCCCCCCCCD;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4014666660000000)) begin
                        yield_f_reg = 64'h402007AE147AE148;
                    end else begin
                        yield_f_reg = 64'h402516CEA96CEA97;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h40736A3D80000000)) begin
                if (LE(Rainfall, 64'h4090F970A0000000)) begin
                    if (LE(Fertilizer_Used, 64'h40709E3D80000000)) begin
                        yield_f_reg = 64'h4023708917325D35;
                    end else begin
                        yield_f_reg = 64'h4025266666666667;
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4034D70A30000000)) begin
                        yield_f_reg = 64'h402619D0369D0369;
                    end else begin
                        yield_f_reg = 64'h4022E6F8091A2B3D;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h408C21F5C0000000)) begin
                    if (LE(N, 64'h4060600000000000)) begin
                        yield_f_reg = 64'h4024E33FCD967301;
                    end else begin
                        yield_f_reg = 64'h402943D70A3D70A4;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h40221EB850000000)) begin
                        yield_f_reg = 64'h402941A10C1A10C1;
                    end else begin
                        yield_f_reg = 64'h402665604189374B;
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h404AB1EB80000000)) begin
            if (LE(Fertilizer_Used, 64'h4073168F60000000)) begin
                if (LE(Rainfall, 64'h40A24D4290000000)) begin
                    if (LE(Wind_Speed, 64'h402C2147A0000000)) begin
                        yield_f_reg = 64'h40257F56DFF56DFD;
                    end else begin
                        yield_f_reg = 64'h4023680D3680D368;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h4046B0A3E0000000)) begin
                        yield_f_reg = 64'h40267E92B7A605B6;
                    end else begin
                        yield_f_reg = 64'h4028E147AE147AE1;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A0863AE0000000)) begin
                    if (LE(Pesticide_Used, 64'h40110F5C30000000)) begin
                        yield_f_reg = 64'h4028600000000000;
                    end else begin
                        yield_f_reg = 64'h4026741D41D41D40;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h40403A3D70000000)) begin
                        yield_f_reg = 64'h402776C8B439580F;
                    end else begin
                        yield_f_reg = 64'h40294BFB15B573E9;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h406D34F5D0000000)) begin
                if (LE(Rainfall, 64'h40A1666B80000000)) begin
                    if (LE(Altitude, 64'h4090340000000000)) begin
                        yield_f_reg = 64'h402461D950C83FB8;
                    end else begin
                        yield_f_reg = 64'h4027A3D70A3D70A4;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h400E47AE10000000)) begin
                        yield_f_reg = 64'h402ACA3D70A3D70A;
                    end else begin
                        yield_f_reg = 64'h40279916872B020C;
                    end
                end
            end else begin
                if (LE(N, 64'h405BE00000000000)) begin
                    if (LE(Temperature, 64'h402763D700000000)) begin
                        yield_f_reg = 64'h402D170A3D70A3D7;
                    end else begin
                        yield_f_reg = 64'h4027D5DEA5986E04;
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A1E1F340000000)) begin
                        yield_f_reg = 64'h4028EC30155ED4D1;
                    end else begin
                        yield_f_reg = 64'h402B9BA5E353F7CF;
                    end
                end
            end
        end
    end
end
