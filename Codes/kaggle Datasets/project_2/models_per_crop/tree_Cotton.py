def predict_tree(features):
    if features['Fertilizer_Used'] <= 216.1450042725:
        if features['Rainfall'] <= 1716.9500122070:
            if features['Fertilizer_Used'] <= 108.8699989319:
                if features['Soil_pH'] <= 7.2750000954:
                    if features['Soil_pH'] <= 5.6799998283:
                        if features['Wind_Speed'] <= 11.5299997330:
                            return 5.2991304348
                        else:
                            return 4.2615384615
                    else:
                        if features['Temperature'] <= 17.4900007248:
                            return 6.8843750000
                        else:
                            return 5.7980434783
                else:
                    if features['Rainfall'] <= 743.5850219727:
                        if features['Sunlight_Hours'] <= 10.5199999809:
                            return 3.8045454545
                        else:
                            return 5.7750000000
                    else:
                        if features['Organic_Carbon'] <= 1.3799999952:
                            return 5.6215384615
                        else:
                            return 4.0520000000
            else:
                if features['Soil_Moisture'] <= 38.6499996185:
                    if features['Wind_Speed'] <= 11.7100000381:
                        if features['Fertilizer_Used'] <= 171.3950042725:
                            return 5.6794117647
                        else:
                            return 6.9053125000
                    else:
                        if features['Rainfall'] <= 704.5499877930:
                            return 4.4466666667
                        else:
                            return 5.6020512821
                else:
                    if features['Wind_Speed'] <= 9.6900000572:
                        if features['Rainfall'] <= 1343.5549926758:
                            return 6.9704166667
                        else:
                            return 8.1711764706
                    else:
                        if features['K'] <= 37.5000000000:
                            return 5.0885714286
                        else:
                            return 6.4719230769
        else:
            if features['Fertilizer_Used'] <= 149.8099975586:
                if features['Soil_Moisture'] <= 48.7449989319:
                    if features['P'] <= 79.5000000000:
                        if features['Wind_Speed'] <= 1.7150000334:
                            return 7.9225000000
                        else:
                            return 6.3830208333
                    else:
                        if features['Rainfall'] <= 2699.8349609375:
                            return 7.5562500000
                        else:
                            return 10.5100000000
                else:
                    if features['N'] <= 112.5000000000:
                        if features['Soil_Moisture'] <= 62.4949989319:
                            return 7.0153846154
                        else:
                            return 8.9266666667
                    else:
                        if features['Soil_Moisture'] <= 59.9200000763:
                            return 8.0430769231
                        else:
                            return 9.7066666667
            else:
                if features['Wind_Speed'] <= 9.3300004005:
                    if features['Soil_Moisture'] <= 34.2899990082:
                        if features['Humidity'] <= 60.8600006104:
                            return 7.4193750000
                        else:
                            return 8.7621428571
                    else:
                        if features['Soil_pH'] <= 5.3949999809:
                            return 7.7833333333
                        else:
                            return 9.3979487179
                else:
                    if features['Fertilizer_Used'] <= 204.3199996948:
                        if features['Soil_Moisture'] <= 32.3100004196:
                            return 7.0922222222
                        else:
                            return 7.8871111111
                    else:
                        if features['Altitude'] <= 917.5000000000:
                            return 8.6050000000
                        else:
                            return 9.4233333333
    else:
        if features['Rainfall'] <= 1745.0050048828:
            if features['Soil_Moisture'] <= 27.7649993896:
                if features['N'] <= 115.5000000000:
                    if features['Wind_Speed'] <= 8.3200001717:
                        if features['Soil_pH'] <= 5.3400001526:
                            return 5.7100000000
                        else:
                            return 7.2245000000
                    else:
                        if features['N'] <= 33.5000000000:
                            return 3.9950000000
                        else:
                            return 6.3067741935
                else:
                    if features['Fertilizer_Used'] <= 300.1850128174:
                        if features['Wind_Speed'] <= 2.3000000119:
                            return 8.6733333333
                        else:
                            return 6.8960869565
                    else:
                        if features['Organic_Carbon'] <= 1.2350000143:
                            return 8.4118750000
                        else:
                            return 6.8100000000
            else:
                if features['Soil_pH'] <= 5.2349998951:
                    if features['P'] <= 42.5000000000:
                        if features['Wind_Speed'] <= 16.3100004196:
                            return 6.4050000000
                        else:
                            return 3.7200000000
                    else:
                        if features['Fertilizer_Used'] <= 273.4450073242:
                            return 6.6985714286
                        else:
                            return 7.7000000000
                else:
                    if features['Rainfall'] <= 1169.5899658203:
                        if features['Soil_Moisture'] <= 60.9050006866:
                            return 7.6663157895
                        else:
                            return 8.7631250000
                    else:
                        if features['Soil_pH'] <= 7.0250000954:
                            return 8.9311627907
                        else:
                            return 8.0273469388
        else:
            if features['N'] <= 71.5000000000:
                if features['Wind_Speed'] <= 4.8849999905:
                    if features['Humidity'] <= 84.9799995422:
                        if features['Altitude'] <= 834.0000000000:
                            return 10.5050000000
                        else:
                            return 9.4700000000
                    else:
                        if features['Humidity'] <= 89.0200004578:
                            return 8.9900000000
                        else:
                            return 7.4900000000
                else:
                    if features['Soil_Moisture'] <= 47.7849998474:
                        if features['Rainfall'] <= 2037.2500610352:
                            return 6.9777777778
                        else:
                            return 8.2154166667
                    else:
                        if features['Soil_pH'] <= 7.6000001431:
                            return 9.3430000000
                        else:
                            return 7.9780000000
            else:
                if features['P'] <= 58.5000000000:
                    if features['Fertilizer_Used'] <= 271.7249908447:
                        if features['Altitude'] <= 1730.5000000000:
                            return 8.0223076923
                        else:
                            return 9.4055555556
                    else:
                        if features['Altitude'] <= 155.5000000000:
                            return 8.0225000000
                        else:
                            return 9.4270175439
                else:
                    if features['Soil_Moisture'] <= 42.5349998474:
                        if features['Rainfall'] <= 2222.9050292969:
                            return 8.6722727273
                        else:
                            return 9.8055555556
                    else:
                        if features['Fertilizer_Used'] <= 222.6250000000:
                            return 8.4500000000
                        else:
                            return 10.3723809524
