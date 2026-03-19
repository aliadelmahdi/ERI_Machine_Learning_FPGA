if (LE(Fertilizer_Used, 64'h406B3EB850000000)) begin
    if (LE(Rainfall, 64'h40991F1480000000)) begin
        if (LE(Fertilizer_Used, 64'h40622570A0000000)) begin
            if (LE(N, 64'h4059C00000000000)) begin
                if (LE(Soil_Moisture, 64'h403447AE10000000)) begin
                    if (LE(Rainfall, 64'h4087B151E0000000)) begin
                        yield_f_reg = 64'h40146B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h401A5AE147AE147B;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401FD1EB80000000)) begin
                        yield_f_reg = 64'h401BD52AB552AB56;
                    end else begin
                        yield_f_reg = 64'h40166F2D593BFA27;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h40439E1480000000)) begin
                    if (LE(Humidity, 64'h405656B850000000)) begin
                        yield_f_reg = 64'h401BA157AA157AA1;
                    end else begin
                        yield_f_reg = 64'h4023147AE147AE14;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40168A3D70000000)) begin
                        yield_f_reg = 64'h401BE26AF37C048D;
                    end else begin
                        yield_f_reg = 64'h40203D37A6F4DE9C;
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h408DFFF5C0000000)) begin
                if (LE(Soil_Moisture, 64'h40471147B0000000)) begin
                    if (LE(Soil_pH, 64'h401E1999A0000000)) begin
                        yield_f_reg = 64'h401D743151B6056F;
                    end else begin
                        yield_f_reg = 64'h4018FA7C7494160F;
                    end
                end else begin
                    if (LE(Rainfall, 64'h40769FD710000000)) begin
                        yield_f_reg = 64'h4015C28F5C28F5C3;
                    end else begin
                        yield_f_reg = 64'h402097A17A17A17A;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4012BD70A0000000)) begin
                    if (LE(Organic_Carbon, 64'h3FE2E147B0000000)) begin
                        yield_f_reg = 64'h402619999999999A;
                    end else begin
                        yield_f_reg = 64'h402242ECFB9C8695;
                    end
                end else begin
                    if (LE(N, 64'h4060D00000000000)) begin
                        yield_f_reg = 64'h401F12B2FA365108;
                    end else begin
                        yield_f_reg = 64'h40221570A3D70A3D;
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4040047AE0000000)) begin
            if (LE(Fertilizer_Used, 64'h4054099990000000)) begin
                if (LE(Soil_pH, 64'h401575C290000000)) begin
                    if (LE(K, 64'h4053000000000000)) begin
                        yield_f_reg = 64'h4013000000000000;
                    end else begin
                        yield_f_reg = 64'h4012B851EB851EB8;
                    end
                end else begin
                    if (LE(K, 64'h403B800000000000)) begin
                        yield_f_reg = 64'h4015B33333333333;
                    end else begin
                        yield_f_reg = 64'h401C455121DEEABC;
                    end
                end
            end else begin
                if (LE(Irrigation_Type, 64'h3FF8000000000000)) begin
                    if (LE(K, 64'h4053800000000000)) begin
                        yield_f_reg = 64'h401D9A6B50B0F27B;
                    end else begin
                        yield_f_reg = 64'h402077695F7695F7;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40154CCCC0000000)) begin
                        yield_f_reg = 64'h401D222222222223;
                    end else begin
                        yield_f_reg = 64'h4021BC28F5C28F5C;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h40614547B0000000)) begin
                if (LE(Wind_Speed, 64'h400C147AE0000000)) begin
                    if (LE(Humidity, 64'h40540D70A0000000)) begin
                        yield_f_reg = 64'h40237530ECA86420;
                    end else begin
                        yield_f_reg = 64'h401E4CCCCCCCCCCC;
                    end
                end else begin
                    if (LE(Temperature, 64'h4027851EC0000000)) begin
                        yield_f_reg = 64'h4023AB020C49BA5E;
                    end else begin
                        yield_f_reg = 64'h4020981446F86563;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h4015051EC0000000)) begin
                    if (LE(Humidity, 64'h404C1CCCD0000000)) begin
                        yield_f_reg = 64'h4021DDDDDDDDDDDD;
                    end else begin
                        yield_f_reg = 64'h401E1D0369D0369D;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401CA3D710000000)) begin
                        yield_f_reg = 64'h4023831D0F38BC33;
                    end else begin
                        yield_f_reg = 64'h4021AC5F92C5F92E;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409BBC6670000000)) begin
        if (LE(Soil_Moisture, 64'h404AAB8520000000)) begin
            if (LE(Rainfall, 64'h408FC48F50000000)) begin
                if (LE(Fertilizer_Used, 64'h4071E98520000000)) begin
                    if (LE(Wind_Speed, 64'h4028F0A3E0000000)) begin
                        yield_f_reg = 64'h40209F1D2505838C;
                    end else begin
                        yield_f_reg = 64'h401DAB52B52B52B4;
                    end
                end else begin
                    if (LE(Rainfall, 64'h408B080A40000000)) begin
                        yield_f_reg = 64'h4020F3A4316F3A42;
                    end else begin
                        yield_f_reg = 64'h40233B851EB851EB;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h403D3999A0000000)) begin
                    if (LE(Wind_Speed, 64'h4027B0A3D0000000)) begin
                        yield_f_reg = 64'h40226A876EA876EB;
                    end else begin
                        yield_f_reg = 64'h401FDF92C5F92C60;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h407041EB90000000)) begin
                        yield_f_reg = 64'h4022072B020C49BA;
                    end else begin
                        yield_f_reg = 64'h4023866BF432ADE8;
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h401E428F50000000)) begin
                if (LE(N, 64'h4057A00000000000)) begin
                    if (LE(Sunlight_Hours, 64'h4021E147B0000000)) begin
                        yield_f_reg = 64'h402213851EB851EC;
                    end else begin
                        yield_f_reg = 64'h402492C5F92C5F93;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FD947AE10000000)) begin
                        yield_f_reg = 64'h402716872B020C4A;
                    end else begin
                        yield_f_reg = 64'h4024A27C15AF48E3;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h406FED70B0000000)) begin
                    if (LE(Rainfall, 64'h40811B9998000000)) begin
                        yield_f_reg = 64'h4020428F5C28F5C2;
                    end else begin
                        yield_f_reg = 64'h401AB851EB851EB8;
                    end
                end else begin
                    if (LE(Humidity, 64'h404AF66660000000)) begin
                        yield_f_reg = 64'h4023091A2B3C4D5E;
                    end else begin
                        yield_f_reg = 64'h40208A3D70A3D70A;
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h40417A3D70000000)) begin
            if (LE(K, 64'h405EC00000000000)) begin
                if (LE(Fertilizer_Used, 64'h406FAEE150000000)) begin
                    if (LE(Soil_Moisture, 64'h4039EB8520000000)) begin
                        yield_f_reg = 64'h401EB72EA61D950C;
                    end else begin
                        yield_f_reg = 64'h4022530ECA8641FE;
                    end
                end else begin
                    if (LE(N, 64'h405EC00000000000)) begin
                        yield_f_reg = 64'h40228FE6216A2C31;
                    end else begin
                        yield_f_reg = 64'h4025228F5C28F5C3;
                    end
                end
            end else begin
                if (LE(Pesticide_Used, 64'h402187AE18000000)) begin
                    if (LE(P, 64'h4049C00000000000)) begin
                        yield_f_reg = 64'h4025947AE147AE14;
                    end else begin
                        yield_f_reg = 64'h40271374BC6A7EFA;
                    end
                end else begin
                    if (LE(Sunlight_Hours, 64'h40208F5C28000000)) begin
                        yield_f_reg = 64'h4024D7C57C57C57D;
                    end else begin
                        yield_f_reg = 64'h4021555555555555;
                    end
                end
            end
        end else begin
            if (LE(Rainfall, 64'h40A2F24510000000)) begin
                if (LE(N, 64'h405A200000000000)) begin
                    if (LE(Fertilizer_Used, 64'h40728ECCD0000000)) begin
                        yield_f_reg = 64'h4023147AE147AE15;
                    end else begin
                        yield_f_reg = 64'h402528B7584250F2;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404B6999A0000000)) begin
                        yield_f_reg = 64'h4024D34C67F9B2CE;
                    end else begin
                        yield_f_reg = 64'h4026A3126E978D4F;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h40156147B0000000)) begin
                    if (LE(Soil_pH, 64'h401428F5D0000000)) begin
                        yield_f_reg = 64'h40254B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h4022E4B17E4B17E5;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h3FFAE147A0000000)) begin
                        yield_f_reg = 64'h40222B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h4027180AAF6A682D;
                    end
                end
            end
        end
    end
end
