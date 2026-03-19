if (LE(Fertilizer_Used, 64'h406DDF8510000000)) begin
    if (LE(Rainfall, 64'h40954E4290000000)) begin
        if (LE(Fertilizer_Used, 64'h405F8D1EB0000000)) begin
            if (LE(Soil_Moisture, 64'h404291EB80000000)) begin
                if (LE(Temperature, 64'h404173D700000000)) begin
                    if (LE(K, 64'h4058E00000000000)) begin
                        yield_f_reg = 64'h4035BE3A4A0B0719;
                    end else begin
                        yield_f_reg = 64'h4036966666666666;
                    end
                end else begin
                    if (LE(Wind_Speed, 64'h402D70A3D0000000)) begin
                        yield_f_reg = 64'h403771EB851EB852;
                    end else begin
                        yield_f_reg = 64'h40353F258BF258BF;
                    end
                end
            end else begin
                if (LE(K, 64'h4042400000000000)) begin
                    if (LE(Humidity, 64'h404807AE20000000)) begin
                        yield_f_reg = 64'h40350BF258BF258C;
                    end else begin
                        yield_f_reg = 64'h4036D24924924925;
                    end
                end else begin
                    if (LE(N, 64'h4060B00000000000)) begin
                        yield_f_reg = 64'h4037634426229AA8;
                    end else begin
                        yield_f_reg = 64'h403850DA740DA740;
                    end
                end
            end
        end else begin
            if (LE(Soil_Moisture, 64'h403CFEB850000000)) begin
                if (LE(Soil_pH, 64'h401BEB8520000000)) begin
                    if (LE(Soil_pH, 64'h401851EB80000000)) begin
                        yield_f_reg = 64'h40372C28F5C28F5D;
                    end else begin
                        yield_f_reg = 64'h40384D56C541366E;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h403647AE10000000)) begin
                        yield_f_reg = 64'h40365FC62C92F960;
                    end else begin
                        yield_f_reg = 64'h4037570A3D70A3D6;
                    end
                end
            end else begin
                if (LE(Soil_Moisture, 64'h404C8B8520000000)) begin
                    if (LE(Altitude, 64'h4071400000000000)) begin
                        yield_f_reg = 64'h403919999999999A;
                    end else begin
                        yield_f_reg = 64'h40380E524E71383B;
                    end
                end else begin
                    if (LE(Soil_Moisture, 64'h404D8999A0000000)) begin
                        yield_f_reg = 64'h403993A06D3A06D4;
                    end else begin
                        yield_f_reg = 64'h4038BF258BF258BF;
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4046D51EB0000000)) begin
            if (LE(Rainfall, 64'h40A02E5710000000)) begin
                if (LE(Wind_Speed, 64'h402A8CCCD0000000)) begin
                    if (LE(Fertilizer_Used, 64'h4060647AE0000000)) begin
                        yield_f_reg = 64'h4037F9A1979A1979;
                    end else begin
                        yield_f_reg = 64'h4038C0F5C28F5C29;
                    end
                end else begin
                    if (LE(N, 64'h4063900000000000)) begin
                        yield_f_reg = 64'h403784D43F4D43F4;
                    end else begin
                        yield_f_reg = 64'h4038CF9DB22D0E56;
                    end
                end
            end else begin
                if (LE(Fertilizer_Used, 64'h40600DEB90000000)) begin
                    if (LE(Soil_Moisture, 64'h40354F5C30000000)) begin
                        yield_f_reg = 64'h403772EA61D950C8;
                    end else begin
                        yield_f_reg = 64'h4038BB5AA4993884;
                    end
                end else begin
                    if (LE(P, 64'h4054000000000000)) begin
                        yield_f_reg = 64'h4039363EDA37CA56;
                    end else begin
                        yield_f_reg = 64'h403A16A2C319549D;
                    end
                end
            end
        end else begin
            if (LE(Fertilizer_Used, 64'h405BA51EB0000000)) begin
                if (LE(Rainfall, 64'h40A173D1F0000000)) begin
                    if (LE(Soil_Moisture, 64'h404887AE10000000)) begin
                        yield_f_reg = 64'h40392898231BCB57;
                    end else begin
                        yield_f_reg = 64'h4037CABA453DED78;
                    end
                end else begin
                    if (LE(Temperature, 64'h403F0147B0000000)) begin
                        yield_f_reg = 64'h4039F2F79F2F79F3;
                    end else begin
                        yield_f_reg = 64'h40380DA740DA740D;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A348C7B0000000)) begin
                    if (LE(K, 64'h405EE00000000000)) begin
                        yield_f_reg = 64'h403962AB72653ACF;
                    end else begin
                        yield_f_reg = 64'h403A96B0DF6B0DF6;
                    end
                end else begin
                    if (LE(K, 64'h4054800000000000)) begin
                        yield_f_reg = 64'h403A40AAF6A682E4;
                    end else begin
                        yield_f_reg = 64'h403B46FF513CC1DF;
                    end
                end
            end
        end
    end
end else begin
    if (LE(Rainfall, 64'h4096BCB850000000)) begin
        if (LE(Soil_Moisture, 64'h403867AE10000000)) begin
            if (LE(Rainfall, 64'h40912E3850000000)) begin
                if (LE(Wind_Speed, 64'h402DA66670000000)) begin
                    if (LE(Soil_Moisture, 64'h4030D47AE0000000)) begin
                        yield_f_reg = 64'h40377851EB851EB9;
                    end else begin
                        yield_f_reg = 64'h4038854545454546;
                    end
                end else begin
                    if (LE(N, 64'h405D600000000000)) begin
                        yield_f_reg = 64'h4036711111111110;
                    end else begin
                        yield_f_reg = 64'h40383CCCCCCCCCCD;
                    end
                end
            end else begin
                if (LE(Humidity, 64'h40455D70B0000000)) begin
                    if (LE(Region, 64'h4004000000000000)) begin
                        yield_f_reg = 64'h4038D1EB851EB852;
                    end else begin
                        yield_f_reg = 64'h4037EA3D70A3D70A;
                    end
                end else begin
                    if (LE(N, 64'h405C200000000000)) begin
                        yield_f_reg = 64'h4039C3126E978D50;
                    end else begin
                        yield_f_reg = 64'h4038CC28F5C28F5D;
                    end
                end
            end
        end else begin
            if (LE(N, 64'h4064F00000000000)) begin
                if (LE(K, 64'h4054C00000000000)) begin
                    if (LE(Soil_pH, 64'h4015F0A3E0000000)) begin
                        yield_f_reg = 64'h40380410DDAA7744;
                    end else begin
                        yield_f_reg = 64'h40390632A93ABECA;
                    end
                end else begin
                    if (LE(Soil_pH, 64'h401F428F60000000)) begin
                        yield_f_reg = 64'h4039ACD16A4B4920;
                    end else begin
                        yield_f_reg = 64'h40387D70A3D70A3D;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40880770A0000000)) begin
                    if (LE(Temperature, 64'h4030770A38000000)) begin
                        yield_f_reg = 64'h403AA51EB851EB85;
                    end else begin
                        yield_f_reg = 64'h4038BB851EB851EC;
                    end
                end else begin
                    if (LE(Altitude, 64'h408D380000000000)) begin
                        yield_f_reg = 64'h403AC0DA740DA741;
                    end else begin
                        yield_f_reg = 64'h403C45F92C5F92C7;
                    end
                end
            end
        end
    end else begin
        if (LE(Soil_Moisture, 64'h4043E3D700000000)) begin
            if (LE(Wind_Speed, 64'h4028F5C290000000)) begin
                if (LE(Fertilizer_Used, 64'h40714B47B0000000)) begin
                    if (LE(Soil_pH, 64'h401475C290000000)) begin
                        yield_f_reg = 64'h4037BFFFFFFFFFFF;
                    end else begin
                        yield_f_reg = 64'h4039F162FC962FC8;
                    end
                end else begin
                    if (LE(Temperature, 64'h4041833330000000)) begin
                        yield_f_reg = 64'h403AC907A22A13BD;
                    end else begin
                        yield_f_reg = 64'h403988B439581062;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h40A297A8F0000000)) begin
                    if (LE(Fertilizer_Used, 64'h40738B47A0000000)) begin
                        yield_f_reg = 64'h40388E703AFB7E8F;
                    end else begin
                        yield_f_reg = 64'h403A0D159E26AF39;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h4075091EC0000000)) begin
                        yield_f_reg = 64'h4039FFA89E60F04D;
                    end else begin
                        yield_f_reg = 64'h403B2F5C28F5C290;
                    end
                end
            end
        end else begin
            if (LE(Soil_pH, 64'h40168A3D70000000)) begin
                if (LE(Pesticide_Used, 64'h40329D70B0000000)) begin
                    if (LE(Temperature, 64'h403DF47AE0000000)) begin
                        yield_f_reg = 64'h403983D70A3D70A4;
                    end else begin
                        yield_f_reg = 64'h403A72B020C49BA6;
                    end
                end else begin
                    if (LE(Temperature, 64'h403E35C2A0000000)) begin
                        yield_f_reg = 64'h403AD4FDF3B645A2;
                    end else begin
                        yield_f_reg = 64'h403A3AE147AE147B;
                    end
                end
            end else begin
                if (LE(Rainfall, 64'h409F9070A0000000)) begin
                    if (LE(Wind_Speed, 64'h402B0A3D70000000)) begin
                        yield_f_reg = 64'h403B0FE3C070FE3C;
                    end else begin
                        yield_f_reg = 64'h403A21CAC083126E;
                    end
                end else begin
                    if (LE(Fertilizer_Used, 64'h407303AE10000000)) begin
                        yield_f_reg = 64'h403B3FC28F5C28F7;
                    end else begin
                        yield_f_reg = 64'h403C392271922719;
                    end
                end
            end
        end
    end
end
