if (LE(Fertilizer_Used, 64'h406B04A3E0000000)) begin
    if (LE(Rainfall, 64'h409AD3CCD0000000)) begin
        if (LE(Fertilizer_Used, 64'h405B37AE10000000)) begin
            if (LE(Soil_pH, 64'h401D1999A0000000)) begin
                if (LE(Soil_pH, 64'h4016B851E0000000)) begin
                    if (LE(Wind_Speed, 64'h40270F5C20000000)) begin
                        yield_f_reg = 64'h4015324F3FAA84AD;
                    end else begin
                        yield_f_reg = 64'h40110BD0BD0BD0BE;
                    end
                end else begin
                    if (LE(Temperature, 64'h40317D70B0000000)) begin
                        yield_f_reg = 64'h401B899999999999;
                    end else begin
                        yield_f_reg = 64'h401731324F3FAA86;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40873CAE20000000)) begin
                    if (LE(Sunlight_Hours, 64'h40250A3D70000000)) begin
                        yield_f_reg = 64'h400E6FB586FB5870;
                    end else begin
                        yield_f_reg = 64'h401719999999999A;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF6147AE0000000)) begin
                        yield_f_reg = 64'h40167C7494160E2C;
                    end else begin
                        yield_f_reg = 64'h4010353F7CED9169;
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h4043533330000000)) begin
                if (LE(Wind_Speed, 64'h40276B8520000000)) begin
                    if (LE(Fertilizer_Used, 64'h40656CA3E0000000)) begin
                        yield_f_reg = 64'h4016B7B7B7B7B7B8;
                    end else begin
                        yield_f_reg = 64'h401B9F0A3D70A3D7;
                    end
                end else begin
                    if (LE(Rainfall, 64'h4086046660000000)) begin
                        yield_f_reg = 64'h4011C962FC962FCB;
                    end else begin
                        yield_f_reg = 64'h40166880219BB355;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h40236147B0000000)) begin
                    if (LE(Rainfall, 64'h4094FE3850000000)) begin
                        yield_f_reg = 64'h401BE1B4E81B4E84;
                    end else begin
                        yield_f_reg = 64'h402057A4713E0AD8;
                    end
                end else begin
                    if (LE(K, 64'h4042C00000000000)) begin
                        yield_f_reg = 64'h40145AB277F44C11;
                    end else begin
                        yield_f_reg = 64'h4019E33FCD967300;
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4062B9EB80000000)) begin
            if (LE(Soil_Moisture, 64'h40485F5C20000000)) begin
                if (LE(P, 64'h4053E00000000000)) begin
                    if (LE(Wind_Speed, 64'h3FFB70A3E0000000)) begin
                        yield_f_reg = 64'h401FB0A3D70A3D70;
                    end else begin
                        yield_f_reg = 64'h401988369D0369CF;
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A517AB80000000)) begin
                        yield_f_reg = 64'h401E39999999999A;
                    end else begin
                        yield_f_reg = 64'h4025051EB851EB85;
                    end
                end
            end else begin
                if (LE(N, 64'h405C200000000000)) begin
                    if (LE(Soil_Moisture, 64'h404F3F5C20000000)) begin
                        yield_f_reg = 64'h401C0FC0FC0FC0FC;
                    end else begin
                        yield_f_reg = 64'h4021DA740DA740DB;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404DF5C290000000)) begin
                        yield_f_reg = 64'h4020160E2DAFA7C7;
                    end else begin
                        yield_f_reg = 64'h402369D0369D036B;
                    end
                end
            end
        end else begin
            if (LE(Wind_Speed, 64'h4022A8F5D0000000)) begin
                if (LE(Soil_Moisture, 64'h4041251EB0000000)) begin
                    if (LE(Humidity, 64'h404E6E1480000000)) begin
                        yield_f_reg = 64'h401DAD70A3D70A3C;
                    end else begin
                        yield_f_reg = 64'h4021863796AC9DFD;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4015947AE0000000)) begin
                        yield_f_reg = 64'h401F222222222221;
                    end else begin
                        yield_f_reg = 64'h4022CBBFEF322654;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h40698A3D70000000)) begin
                    if (LE(Soil_Moisture, 64'h404027AE18000000)) begin
                        yield_f_reg = 64'h401C5E6F8091A2B4;
                    end else begin
                        yield_f_reg = 64'h401F8C66DAE88FD2;
                    end
                end else begin
                    if (LE(Altitude, 64'h408CAC0000000000)) begin
                        yield_f_reg = 64'h402135C28F5C28F6;
                    end else begin
                        yield_f_reg = 64'h4022D8BF258BF259;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h409B440520000000)) begin
        if (LE(Soil_Moisture, 64'h403BC3D700000000)) begin
            if (LE(N, 64'h405CE00000000000)) begin
                if (LE(Wind_Speed, 64'h4020A3D710000000)) begin
                    if (LE(Soil_pH, 64'h40155C2900000000)) begin
                        yield_f_reg = 64'h4016D70A3D70A3D8;
                    end else begin
                        yield_f_reg = 64'h401CE5E353F7CEDA;
                    end
                end else begin
                    if (LE(N, 64'h4040C00000000000)) begin
                        yield_f_reg = 64'h400FF5C28F5C28F6;
                    end else begin
                        yield_f_reg = 64'h40193A2303A2303B;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h4072C2F5D0000000)) begin
                    if (LE(Wind_Speed, 64'h4002666668000000)) begin
                        yield_f_reg = 64'h402158BF258BF258;
                    end else begin
                        yield_f_reg = 64'h401B9597D1B2883A;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FF3C28F60000000)) begin
                        yield_f_reg = 64'h4020D2E147AE147B;
                    end else begin
                        yield_f_reg = 64'h401B3D70A3D70A3D;
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h4014F0A3D0000000)) begin
                if (LE(P, 64'h4045400000000000)) begin
                    if (LE(Wind_Speed, 64'h40304F5C30000000)) begin
                        yield_f_reg = 64'h40199EB851EB851E;
                    end else begin
                        yield_f_reg = 64'h400DC28F5C28F5C3;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4071171EC0000000)) begin
                        yield_f_reg = 64'h401ACB564EFE8982;
                    end else begin
                        yield_f_reg = 64'h401ECCCCCCCCCCCD;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h4092465C20000000)) begin
                    if (LE(Soil_Moisture, 64'h404E73D710000000)) begin
                        yield_f_reg = 64'h401EAA4EAFB26443;
                    end else begin
                        yield_f_reg = 64'h402186B851EB851F;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401C1999A0000000)) begin
                        yield_f_reg = 64'h4021DCC15E8A98E3;
                    end else begin
                        yield_f_reg = 64'h40200E006AFF5F81;
                    end
                end
            end
        end
    end else begin
        if (LE(N, 64'h4051E00000000000)) begin
            if (LE(Wind_Speed, 64'h40138A3D70000000)) begin
                if (LE(Humidity, 64'h40553EB850000000)) begin
                    if (LE(Altitude, 64'h408A100000000000)) begin
                        yield_f_reg = 64'h4025028F5C28F5C3;
                    end else begin
                        yield_f_reg = 64'h4022F0A3D70A3D71;
                    end
                end else begin
                    if (LE(Humidity, 64'h40564147B0000000)) begin
                        yield_f_reg = 64'h4021FAE147AE147B;
                    end else begin
                        yield_f_reg = 64'h401DF5C28F5C28F6;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h4047E47AE0000000)) begin
                    if (LE(Rainfall, 64'h409FD50010000000)) begin
                        yield_f_reg = 64'h401BE93E93E93E94;
                    end else begin
                        yield_f_reg = 64'h40206E4B17E4B17F;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401E666670000000)) begin
                        yield_f_reg = 64'h4022AF9DB22D0E56;
                    end else begin
                        yield_f_reg = 64'h401FE978D4FDF3B6;
                    end
                end
            end
        end else begin
            if (LE(P, 64'h404D400000000000)) begin
                if (LE(Fertilizer_Used, 64'h4070FB9990000000)) begin
                    if (LE(Altitude, 64'h409B0A0000000000)) begin
                        yield_f_reg = 64'h40200B6BE9F1D251;
                    end else begin
                        yield_f_reg = 64'h4022CFA4FA4FA4FA;
                    end
                end else begin
                    if (LE(Altitude, 64'h4063700000000000)) begin
                        yield_f_reg = 64'h40200B851EB851EB;
                    end else begin
                        yield_f_reg = 64'h4022DAA20B236410;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h4045447AE0000000)) begin
                    if (LE(Rainfall, 64'h40A15DCF60000000)) begin
                        yield_f_reg = 64'h4021583421834219;
                    end else begin
                        yield_f_reg = 64'h40239C71C71C71C7;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h406BD40000000000)) begin
                        yield_f_reg = 64'h4020E66666666666;
                    end else begin
                        yield_f_reg = 64'h4024BEA8B7584251;
                    end
                end
            end
        end
    end
end
