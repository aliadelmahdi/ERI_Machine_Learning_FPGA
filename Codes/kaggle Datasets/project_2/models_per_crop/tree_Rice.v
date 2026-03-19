if (LE(Fertilizer_Used, 64'h40693A8F60000000)) begin
    if (LE(Rainfall, 64'h409B0C5C30000000)) begin
        if (LE(Fertilizer_Used, 64'h4061868F50000000)) begin
            if (LE(Rainfall, 64'h408C0B70A0000000)) begin
                if (LE(Soil_Moisture, 64'h404D03D710000000)) begin
                    if (LE(Fertilizer_Used, 64'h4059CEB860000000)) begin
                        yield_f_reg = 64'h401A352325EA69B9;
                    end else begin
                        yield_f_reg = 64'h401CFA85D59C752A;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h40191EB850000000)) begin
                        yield_f_reg = 64'h401E088888888888;
                    end else begin
                        yield_f_reg = 64'h4021151EB851EB85;
                    end
                end
            end else begin
                if (LE(Wind_Speed, 64'h4018EB8520000000)) begin
                    if (LE(K, 64'h4060200000000000)) begin
                        yield_f_reg = 64'h402041366F05EDAC;
                    end else begin
                        yield_f_reg = 64'h4022F9B2CE601935;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h40433E1470000000)) begin
                        yield_f_reg = 64'h401CDEF07E640F35;
                    end else begin
                        yield_f_reg = 64'h40201979A1979A1B;
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h404605C290000000)) begin
                if (LE(Soil_pH, 64'h401FF0A3E0000000)) begin
                    if (LE(N, 64'h4055400000000000)) begin
                        yield_f_reg = 64'h401F7C0CDF864A50;
                    end else begin
                        yield_f_reg = 64'h402144F4704F4704;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h4012C7AE10000000)) begin
                        yield_f_reg = 64'h4022666666666666;
                    end else begin
                        yield_f_reg = 64'h40183A83A83A83A9;
                    end
                end
            end else begin
                if (LE(Sunlight_Hours, 64'h4024028F60000000)) begin
                    if (LE(Soil_Type, 64'h4004000000000000)) begin
                        yield_f_reg = 64'h402141FDB97530ED;
                    end else begin
                        yield_f_reg = 64'h402407654320FEDC;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h40170F5C20000000)) begin
                        yield_f_reg = 64'h40255C28F5C28F5C;
                    end else begin
                        yield_f_reg = 64'h402316C16C16C16C;
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4060C570A0000000)) begin
            if (LE(Soil_Moisture, 64'h404468F5C0000000)) begin
                if (LE(Soil_pH, 64'h401CDC28F0000000)) begin
                    if (LE(K, 64'h4044800000000000)) begin
                        yield_f_reg = 64'h401F555555555555;
                    end else begin
                        yield_f_reg = 64'h402272A3572A3572;
                    end
                end else begin
                    if (LE(Humidity, 64'h404C9851F0000000)) begin
                        yield_f_reg = 64'h402226E978D4FDF3;
                    end else begin
                        yield_f_reg = 64'h401D170A3D70A3D8;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A1C19EB0000000)) begin
                    if (LE(Temperature, 64'h4032051EB0000000)) begin
                        yield_f_reg = 64'h4020A66666666667;
                    end else begin
                        yield_f_reg = 64'h4022B56B2DBD1942;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FEC28F5D0000000)) begin
                        yield_f_reg = 64'h402257C57C57C57B;
                    end else begin
                        yield_f_reg = 64'h40253F4D43F4D43F;
                    end
                end
            end
        end else begin
            if (LE(Sunlight_Hours, 64'h4020F0A3D0000000)) begin
                if (LE(Humidity, 64'h404815C290000000)) begin
                    if (LE(Humidity, 64'h403F51EB80000000)) begin
                        yield_f_reg = 64'h4022BF7CED916872;
                    end else begin
                        yield_f_reg = 64'h40256DD2F1A9FBE6;
                    end
                end else begin
                    if (LE(Altitude, 64'h4086F00000000000)) begin
                        yield_f_reg = 64'h4022BEB851EB8520;
                    end else begin
                        yield_f_reg = 64'h4023F6872B020C4A;
                    end
                end
            end else begin
                if (LE(Soil_pH, 64'h401D9999A0000000)) begin
                    if (LE(Soil_pH, 64'h4016EB8510000000)) begin
                        yield_f_reg = 64'h4021777777777777;
                    end else begin
                        yield_f_reg = 64'h402458AB498AB498;
                    end
                end else begin
                    if (LE(Rainfall, 64'h40A16BE8F0000000)) begin
                        yield_f_reg = 64'h401F8B851EB851EC;
                    end else begin
                        yield_f_reg = 64'h4021C369D0369D03;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h40984799A0000000)) begin
        if (LE(Soil_Moisture, 64'h4045333340000000)) begin
            if (LE(Fertilizer_Used, 64'h4072AD8520000000)) begin
                if (LE(Soil_Moisture, 64'h403E68F5C0000000)) begin
                    if (LE(Rainfall, 64'h4086020000000000)) begin
                        yield_f_reg = 64'h401EF126E978D4FE;
                    end else begin
                        yield_f_reg = 64'h402170463796AC9D;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h402835C290000000)) begin
                        yield_f_reg = 64'h4023A1E5DECEEB2B;
                    end else begin
                        yield_f_reg = 64'h40216EEEEEEEEEEF;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h405564CCD0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4024EE1480000000)) begin
                        yield_f_reg = 64'h4022E8F5C28F5C2A;
                    end else begin
                        yield_f_reg = 64'h4024ED61BED61BEE;
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h3FFE28F5D0000000)) begin
                        yield_f_reg = 64'h40288A3D70A3D70A;
                    end else begin
                        yield_f_reg = 64'h4025C3D70A3D70A4;
                    end
                end
            end
        end else begin
            if (LE(K, 64'h4053200000000000)) begin
                if (LE(Soil_pH, 64'h4016851EC0000000)) begin
                    if (LE(Sunlight_Hours, 64'h4025547AE0000000)) begin
                        yield_f_reg = 64'h40202C1C5B5F4F8E;
                    end else begin
                        yield_f_reg = 64'h4025B33333333333;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4074CEB850000000)) begin
                        yield_f_reg = 64'h402304D9BC17B6B3;
                    end else begin
                        yield_f_reg = 64'h4026B020C49BA5E4;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h406F382900000000)) begin
                    if (LE(Rainfall, 64'h4092C56150000000)) begin
                        yield_f_reg = 64'h40228BB3EE721A55;
                    end else begin
                        yield_f_reg = 64'h402438D4FDF3B646;
                    end
                end else begin
                    if (LE(Organic_Carbon, 64'h3FDEB851F0000000)) begin
                        yield_f_reg = 64'h4022B258BF258BF1;
                    end else begin
                        yield_f_reg = 64'h4025BEA27983C131;
                    end
                end
            end
        end
    end else begin
        if (LE(Fertilizer_Used, 64'h4071C7EB80000000)) begin
            if (LE(Soil_Moisture, 64'h404611EB80000000)) begin
                if (LE(Wind_Speed, 64'h401675C290000000)) begin
                    if (LE(Fertilizer_Used, 64'h406A670A40000000)) begin
                        yield_f_reg = 64'h40234E147AE147AE;
                    end else begin
                        yield_f_reg = 64'h4025A4DD2F1A9FBF;
                    end
                end else begin
                    if (LE(Rainfall, 64'h409C0B8000000000)) begin
                        yield_f_reg = 64'h4021BC131D5ACB6F;
                    end else begin
                        yield_f_reg = 64'h40241FB2E6194C7F;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A1194000000000)) begin
                    if (LE(Organic_Carbon, 64'h3FF19999A0000000)) begin
                        yield_f_reg = 64'h4025FCC42D458633;
                    end else begin
                        yield_f_reg = 64'h40238C3B2A1907F7;
                    end
                end else begin
                    if (LE(K, 64'h4053E00000000000)) begin
                        yield_f_reg = 64'h4025E3244E3244E3;
                    end else begin
                        yield_f_reg = 64'h402729930BE0DED3;
                    end
                end
            end
        end else begin
            if (LE(N, 64'h4061500000000000)) begin
                if (LE(Rainfall, 64'h40A3DFB850000000)) begin
                    if (LE(P, 64'h4040400000000000)) begin
                        yield_f_reg = 64'h40241907F6E5D4C4;
                    end else begin
                        yield_f_reg = 64'h4025FA7163A7163B;
                    end
                end else begin
                    if (LE(Pesticide_Used, 64'h4025DC2900000000)) begin
                        yield_f_reg = 64'h40266FC962FC9630;
                    end else begin
                        yield_f_reg = 64'h402894F2094F2094;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404620A3E0000000)) begin
                    if (LE(Soil_pH, 64'h40166147B0000000)) begin
                        yield_f_reg = 64'h4024947AE147AE14;
                    end else begin
                        yield_f_reg = 64'h40274410DDAA7746;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h4017051EB0000000)) begin
                        yield_f_reg = 64'h402748B439581062;
                    end else begin
                        yield_f_reg = 64'h402949BA5E353F7D;
                    end
                end
            end
        end
    end
end
