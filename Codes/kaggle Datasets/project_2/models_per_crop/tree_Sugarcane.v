if (LE(Fertilizer_Used, 64'h406D5D70A0000000)) begin
    if (LE(Rainfall, 64'h4094F7AE10000000)) begin
        if (LE(Soil_Moisture, 64'h4043570A30000000)) begin
            if (LE(K, 64'h404CC00000000000)) begin
                if (LE(N, 64'h4060E00000000000)) begin
                    if (LE(Wind_Speed, 64'h402E2E1470000000)) begin
                        yield_f_reg = 64'h40520D86FB586FB6;
                    end else begin
                        yield_f_reg = 64'h4051CE6666666666;
                    end
                end else begin
                    if (LE(Season, 64'h3FE0000000000000)) begin
                        yield_f_reg = 64'h4051E75C28F5C28F;
                    end else begin
                        yield_f_reg = 64'h405255FE235FE237;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401447AE10000000)) begin
                    if (LE(Irrigation_Type, 64'h3FE0000000000000)) begin
                        yield_f_reg = 64'h4051A11111111111;
                    end else begin
                        yield_f_reg = 64'h40523AC5F92C5F93;
                    end
                end else begin
                    if (LE(Rainfall, 64'h4089DAB860000000)) begin
                        yield_f_reg = 64'h405240FF491BDCC1;
                    end else begin
                        yield_f_reg = 64'h405275F7695F7697;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405DF1EB90000000)) begin
                if (LE(Wind_Speed, 64'h4027EB8520000000)) begin
                    if (LE(Soil_pH, 64'h401D0F5C20000000)) begin
                        yield_f_reg = 64'h40527B0463796AC9;
                    end else begin
                        yield_f_reg = 64'h405218BF258BF259;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h405537AE10000000)) begin
                        yield_f_reg = 64'h40520130463796AD;
                    end else begin
                        yield_f_reg = 64'h40523A6FDA30D640;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h407C948F50000000)) begin
                    if (LE(K, 64'h4057800000000000)) begin
                        yield_f_reg = 64'h40522231BCB564F0;
                    end else begin
                        yield_f_reg = 64'h40527DB22D0E5604;
                    end
                end else begin
                    if (LE(Irrigation_Type, 64'h4004000000000000)) begin
                        yield_f_reg = 64'h40528B09220A844A;
                    end else begin
                        yield_f_reg = 64'h4052CFB15B573EAB;
                    end
                end
            end
        end
    end else begin
        if (LE(Rainfall, 64'h40A226D1F0000000)) begin
            if (LE(Fertilizer_Used, 64'h406055EB90000000)) begin
                if (LE(Soil_pH, 64'h4015E66660000000)) begin
                    if (LE(Wind_Speed, 64'h402A4A3D70000000)) begin
                        yield_f_reg = 64'h405268263AB596DF;
                    end else begin
                        yield_f_reg = 64'h40521E4B17E4B17E;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40202147B0000000)) begin
                        yield_f_reg = 64'h4052918E2B5765AF;
                    end else begin
                        yield_f_reg = 64'h40523CE81B4E81B5;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h402AA147B0000000)) begin
                    if (LE(Soil_Moisture, 64'h404135C290000000)) begin
                        yield_f_reg = 64'h40529E2DAFA7C749;
                    end else begin
                        yield_f_reg = 64'h4052D36B3229BCDC;
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h4018000000000000)) begin
                        yield_f_reg = 64'h405251EB851EB852;
                    end else begin
                        yield_f_reg = 64'h4052A4E81B4E81B3;
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h401CD70A40000000)) begin
                if (LE(K, 64'h405CE00000000000)) begin
                    if (LE(Fertilizer_Used, 64'h405E1BD710000000)) begin
                        yield_f_reg = 64'h4052ADA2811CF06A;
                    end else begin
                        yield_f_reg = 64'h4052E6A4A8C154C9;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h4028B33330000000)) begin
                        yield_f_reg = 64'h405335DC6DF1FCC5;
                    end else begin
                        yield_f_reg = 64'h4052DA9B101767DD;
                    end
                end
            end else begin
                if (LE(K, 64'h404FC00000000000)) begin
                    if (LE(Soil_Moisture, 64'h40468D70A0000000)) begin
                        yield_f_reg = 64'h40525E07E07E07E0;
                    end else begin
                        yield_f_reg = 64'h4052E75C28F5C290;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FDB851EB0000000)) begin
                        yield_f_reg = 64'h405318F5C28F5C29;
                    end else begin
                        yield_f_reg = 64'h4052B7B333333334;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409932EB90000000)) begin
        if (LE(Soil_Moisture, 64'h4041B5C290000000)) begin
            if (LE(Soil_pH, 64'h4015BD70A0000000)) begin
                if (LE(Humidity, 64'h4041928F50000000)) begin
                    if (LE(N, 64'h405D200000000000)) begin
                        yield_f_reg = 64'h40520B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h4052151EB851EB85;
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h4024A8F5C0000000)) begin
                        yield_f_reg = 64'h40527A54D880BB3E;
                    end else begin
                        yield_f_reg = 64'h40523AE147AE147B;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40915F8A40000000)) begin
                    if (LE(Soil_pH, 64'h401D0F5C30000000)) begin
                        yield_f_reg = 64'h4052A5D790AC3DF6;
                    end else begin
                        yield_f_reg = 64'h405276202ECFB9C8;
                    end
                end else begin
                    if (LE(N, 64'h4051C00000000000)) begin
                        yield_f_reg = 64'h4052A66666666668;
                    end else begin
                        yield_f_reg = 64'h4052F395810624DD;
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h408654C290000000)) begin
                if (LE(Soil_pH, 64'h4017428F60000000)) begin
                    if (LE(Fertilizer_Used, 64'h40747E51F0000000)) begin
                        yield_f_reg = 64'h4052978F5C28F5C2;
                    end else begin
                        yield_f_reg = 64'h4052128F5C28F5C2;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406E77D710000000)) begin
                        yield_f_reg = 64'h405259EB851EB852;
                    end else begin
                        yield_f_reg = 64'h4052DF6585B4843E;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404D6CCCD0000000)) begin
                    if (LE(Wind_Speed, 64'h402047AE10000000)) begin
                        yield_f_reg = 64'h4052F9EF6BC38904;
                    end else begin
                        yield_f_reg = 64'h4052CC0C9A633FCE;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF1EB8520000000)) begin
                        yield_f_reg = 64'h40530F6F6F6F6F70;
                    end else begin
                        yield_f_reg = 64'h40536D9F7390D2A7;
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4073DEB850000000)) begin
            if (LE(N, 64'h405B800000000000)) begin
                if (LE(Soil_Moisture, 64'h4048FB8520000000)) begin
                    if (LE(Wind_Speed, 64'h4026AB8520000000)) begin
                        yield_f_reg = 64'h4052F79DB22D0E55;
                    end else begin
                        yield_f_reg = 64'h4052C2339C0EBEE0;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406FA9EB80000000)) begin
                        yield_f_reg = 64'h4052ACF5C28F5C2A;
                    end else begin
                        yield_f_reg = 64'h405326A3D70A3D71;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h402570A3D0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4017999990000000)) begin
                        yield_f_reg = 64'h4053718DE5AB277F;
                    end else begin
                        yield_f_reg = 64'h40531CDB41A80E77;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406F166660000000)) begin
                        yield_f_reg = 64'h4052B33333333333;
                    end else begin
                        yield_f_reg = 64'h40530DC533DC533D;
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h40445EB850000000)) begin
                if (LE(Wind_Speed, 64'h40300147B8000000)) begin
                    if (LE(Soil_pH, 64'h401E70A3D0000000)) begin
                        yield_f_reg = 64'h405337F9B2CE6019;
                    end else begin
                        yield_f_reg = 64'h4052C8BF258BF259;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4074906670000000)) begin
                        yield_f_reg = 64'h4053400000000000;
                    end else begin
                        yield_f_reg = 64'h4052D7C962FC9630;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40557F0A40000000)) begin
                    if (LE(Fertilizer_Used, 64'h40758B0A40000000)) begin
                        yield_f_reg = 64'h40535A813C6174E1;
                    end else begin
                        yield_f_reg = 64'h405396A3D70A3D72;
                    end
                end else begin
                    if (LE(Temperature, 64'h40338B8520000000)) begin
                        yield_f_reg = 64'h405349FBE76C8B44;
                    end else begin
                        yield_f_reg = 64'h4052CA740DA740DB;
                    end
                end
            end
        end
    end
end
