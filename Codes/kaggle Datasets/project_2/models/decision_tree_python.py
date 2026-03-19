def predict_tree(features):
    '''Pure Python Decision Tree Logic'''
    if features['Fertilizer_Used'] <= 181.3450012207:
        if features['Rainfall'] <= 2122.6950683594:
            if features['Organic_Carbon'] <= 1.5449999571:
                if features['Altitude'] <= 2165.5000000000:
                    if features['Temperature'] <= 27.1050004959:
                        if features['Soil_Moisture'] <= 15.2950000763:
                            if features['Wind_Speed'] <= 9.5749998093:
                                if features['Altitude'] <= 375.0000000000:
                                    return 74.4500000000
                                else:
                                    if features['Irrigation_Type'] <= 2.0000000000:
                                        return 73.0500000000
                                    else:
                                        return 72.3900000000
                            else:
                                if features['Soil_Moisture'] <= 15.1500000954:
                                    return 22.4700000000
                                else:
                                    return 6.9800000000
                        else:
                            if features['Sunlight_Hours'] <= 4.2550001144:
                                if features['Sunlight_Hours'] <= 4.1349999905:
                                    if features['K'] <= 52.0000000000:
                                        return 35.8200000000
                                    else:
                                        return 9.1684615385
                                else:
                                    if features['N'] <= 100.5000000000:
                                        return 65.0800000000
                                    else:
                                        return 30.9838461538
                            else:
                                if features['Fertilizer_Used'] <= 113.4449996948:
                                    if features['Sunlight_Hours'] <= 10.9400000572:
                                        return 18.5021933086
                                    else:
                                        return 57.3966666667
                                else:
                                    if features['Humidity'] <= 72.9300003052:
                                        return 20.4040243902
                                    else:
                                        return 26.1397297297
                    else:
                        if features['N'] <= 31.5000000000:
                            if features['P'] <= 43.5000000000:
                                if features['Season'] <= 0.5000000000:
                                    if features['K'] <= 95.0000000000:
                                        return 72.9500000000
                                    else:
                                        return 73.2600000000
                                else:
                                    return 71.4100000000
                            else:
                                if features['Soil_Moisture'] <= 57.9150009155:
                                    if features['Temperature'] <= 30.2100000381:
                                        return 44.6200000000
                                    else:
                                        return 10.3200000000
                                else:
                                    return 75.2900000000
                        else:
                            if features['Temperature'] <= 39.6899986267:
                                if features['Humidity'] <= 89.9449996948:
                                    if features['Sunlight_Hours'] <= 4.0150001049:
                                        return 72.6200000000
                                    else:
                                        return 17.6675334018
                                else:
                                    return 73.8900000000
                            else:
                                if features['K'] <= 125.5000000000:
                                    if features['Soil_pH'] <= 7.3899998665:
                                        return 11.7716666667
                                    else:
                                        return 72.4700000000
                                else:
                                    if features['Soil_Moisture'] <= 52.9799995422:
                                        return 64.7133333333
                                    else:
                                        return 8.3800000000
                else:
                    if features['Organic_Carbon'] <= 1.3100000024:
                        if features['K'] <= 78.5000000000:
                            if features['Soil_pH'] <= 5.9950001240:
                                if features['Sunlight_Hours'] <= 7.3750002384:
                                    if features['Pesticide_Used'] <= 8.6699998379:
                                        return 6.4100000000
                                    else:
                                        return 6.3600000000
                                else:
                                    return 4.0200000000
                            else:
                                if features['Humidity'] <= 36.2500000000:
                                    if features['Fertilizer_Used'] <= 110.6200027466:
                                        return 6.6200000000
                                    else:
                                        return 6.9300000000
                                else:
                                    if features['Pesticide_Used'] <= 11.4549999237:
                                        return 9.6750000000
                                    else:
                                        return 8.6775000000
                        else:
                            if features['Temperature'] <= 29.6900005341:
                                if features['Soil_pH'] <= 7.1900000572:
                                    if features['K'] <= 95.5000000000:
                                        return 9.0200000000
                                    else:
                                        return 6.7650000000
                                else:
                                    return 22.6100000000
                            else:
                                if features['Organic_Carbon'] <= 0.4799999893:
                                    return 23.4400000000
                                else:
                                    if features['Wind_Speed'] <= 6.1200001240:
                                        return 75.7250000000
                                    else:
                                        return 73.5800000000
                    else:
                        if features['Soil_Moisture'] <= 48.9899997711:
                            if features['Altitude'] <= 2170.5000000000:
                                return 72.3100000000
                            else:
                                if features['K'] <= 44.0000000000:
                                    return 73.0800000000
                                else:
                                    if features['K'] <= 65.5000000000:
                                        return 73.4700000000
                                    else:
                                        return 73.7650000000
                        else:
                            if features['P'] <= 79.0000000000:
                                return 24.7300000000
                            else:
                                return 24.2600000000
            else:
                if features['Wind_Speed'] <= 1.4749999642:
                    if features['Irrigation_Type'] <= 1.5000000000:
                        return 73.1000000000
                    else:
                        return 72.7300000000
                else:
                    if features['Pesticide_Used'] <= 0.1149999993:
                        return 71.0300000000
                    else:
                        if features['Humidity'] <= 32.9099998474:
                            if features['N'] <= 71.0000000000:
                                return 72.3600000000
                            else:
                                if features['Region'] <= 3.5000000000:
                                    return 25.6700000000
                                else:
                                    return 24.5900000000
                        else:
                            if features['Sunlight_Hours'] <= 5.3500001431:
                                if features['Sunlight_Hours'] <= 5.3050000668:
                                    if features['Rainfall'] <= 1265.3250122070:
                                        return 10.3220000000
                                    else:
                                        return 22.4583333333
                                else:
                                    if features['Region'] <= 0.5000000000:
                                        return 73.6700000000
                                    else:
                                        return 22.9000000000
                            else:
                                if features['Altitude'] <= 2098.5000000000:
                                    if features['Humidity'] <= 86.7500000000:
                                        return 8.8117441860
                                    else:
                                        return 19.9533333333
                                else:
                                    if features['N'] <= 91.5000000000:
                                        return 23.0500000000
                                    else:
                                        return 24.4400000000
        else:
            if features['Wind_Speed'] <= 9.4699997902:
                if features['Organic_Carbon'] <= 1.5750000477:
                    if features['Altitude'] <= 1228.5000000000:
                        if features['K'] <= 131.5000000000:
                            if features['Altitude'] <= 1218.5000000000:
                                if features['K'] <= 27.5000000000:
                                    if features['N'] <= 62.5000000000:
                                        return 75.0775000000
                                    else:
                                        return 17.1644444444
                                else:
                                    if features['Altitude'] <= 1152.5000000000:
                                        return 17.5759756098
                                    else:
                                        return 30.5533333333
                            else:
                                return 75.7200000000
                        else:
                            if features['Altitude'] <= 979.5000000000:
                                if features['Soil_Type'] <= 1.5000000000:
                                    if features['Rainfall'] <= 2790.5100097656:
                                        return 14.8030000000
                                    else:
                                        return 75.2600000000
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 23.8328571429
                                    else:
                                        return 65.2600000000
                            else:
                                if features['Pesticide_Used'] <= 1.5750000179:
                                    return 24.3300000000
                                else:
                                    if features['Organic_Carbon'] <= 0.8799999952:
                                        return 75.5900000000
                                    else:
                                        return 74.5400000000
                    else:
                        if features['P'] <= 95.5000000000:
                            if features['P'] <= 18.5000000000:
                                if features['Humidity'] <= 69.1850013733:
                                    if features['N'] <= 45.5000000000:
                                        return 24.8000000000
                                    else:
                                        return 9.3366666667
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 73.8600000000
                                    else:
                                        return 73.8200000000
                            else:
                                if features['P'] <= 65.5000000000:
                                    if features['Soil_Moisture'] <= 15.9699997902:
                                        return 40.7800000000
                                    else:
                                        return 11.9376699029
                                else:
                                    if features['Soil_pH'] <= 5.2850000858:
                                        return 43.6333333333
                                    else:
                                        return 15.7793421053
                        else:
                            if features['Region'] <= 2.5000000000:
                                if features['Season'] <= 0.5000000000:
                                    return 27.5900000000
                                else:
                                    if features['Organic_Carbon'] <= 0.9350000024:
                                        return 9.4233333333
                                    else:
                                        return 10.7200000000
                            else:
                                if features['Pesticide_Used'] <= 17.6300001144:
                                    if features['N'] <= 107.5000000000:
                                        return 72.2700000000
                                    else:
                                        return 75.9850000000
                                else:
                                    return 10.4800000000
                else:
                    if features['P'] <= 32.5000000000:
                        if features['Altitude'] <= 1793.5000000000:
                            if features['Irrigation_Type'] <= 2.5000000000:
                                if features['K'] <= 58.0000000000:
                                    if features['Soil_pH'] <= 7.6449999809:
                                        return 73.6500000000
                                    else:
                                        return 74.0100000000
                                else:
                                    if features['Sunlight_Hours'] <= 8.7249999046:
                                        return 74.4900000000
                                    else:
                                        return 75.2300000000
                            else:
                                return 77.6000000000
                        else:
                            return 12.4500000000
                    else:
                        if features['Soil_Moisture'] <= 34.4149990082:
                            return 9.0600000000
                        else:
                            if features['Fertilizer_Used'] <= 122.9999961853:
                                return 9.5500000000
                            else:
                                return 9.3100000000
            else:
                if features['Region'] <= 3.5000000000:
                    if features['Pesticide_Used'] <= 23.4499998093:
                        if features['Wind_Speed'] <= 9.5550003052:
                            if features['Altitude'] <= 1319.5000000000:
                                if features['Sunlight_Hours'] <= 10.4099998474:
                                    return 76.2600000000
                                else:
                                    return 74.3400000000
                            else:
                                return 24.9600000000
                        else:
                            if features['P'] <= 45.5000000000:
                                if features['Sunlight_Hours'] <= 4.8150000572:
                                    if features['Humidity'] <= 60.3099994659:
                                        return 11.4060000000
                                    else:
                                        return 63.7166666667
                                else:
                                    if features['K'] <= 143.0000000000:
                                        return 12.7983157895
                                    else:
                                        return 48.9660000000
                            else:
                                if features['N'] <= 81.0000000000:
                                    if features['N'] <= 77.0000000000:
                                        return 28.2357407407
                                    else:
                                        return 73.3200000000
                                else:
                                    if features['Altitude'] <= 41.5000000000:
                                        return 75.2300000000
                                    else:
                                        return 20.8829166667
                    else:
                        if features['Soil_Moisture'] <= 40.4250011444:
                            if features['Organic_Carbon'] <= 0.9099999964:
                                return 71.5200000000
                            else:
                                if features['Sunlight_Hours'] <= 7.9249999523:
                                    if features['Fertilizer_Used'] <= 76.3950004578:
                                        return 75.1900000000
                                    else:
                                        return 75.4700000000
                                else:
                                    if features['Humidity'] <= 51.4699993134:
                                        return 74.1900000000
                                    else:
                                        return 74.7200000000
                        else:
                            if features['Soil_pH'] <= 7.2049999237:
                                if features['Rainfall'] <= 2340.7050781250:
                                    if features['Fertilizer_Used'] <= 109.8199996948:
                                        return 27.0800000000
                                    else:
                                        return 24.8400000000
                                else:
                                    if features['Fertilizer_Used'] <= 149.6849975586:
                                        return 7.9025000000
                                    else:
                                        return 11.2550000000
                            else:
                                if features['Organic_Carbon'] <= 0.5999999940:
                                    if features['Rainfall'] <= 2447.9249267578:
                                        return 25.1250000000
                                    else:
                                        return 10.5100000000
                                else:
                                    if features['N'] <= 172.0000000000:
                                        return 74.0740000000
                                    else:
                                        return 24.7500000000
                else:
                    if features['Temperature'] <= 29.7799997330:
                        if features['Sunlight_Hours'] <= 4.6749999523:
                            if features['Altitude'] <= 1440.0000000000:
                                if features['Soil_pH'] <= 6.6200001240:
                                    if features['Wind_Speed'] <= 11.8699998856:
                                        return 9.7000000000
                                    else:
                                        return 8.7050000000
                                else:
                                    if features['K'] <= 126.0000000000:
                                        return 7.7000000000
                                    else:
                                        return 6.2800000000
                            else:
                                if features['Rainfall'] <= 2328.9300537109:
                                    return 10.6900000000
                                else:
                                    return 11.8300000000
                        else:
                            if features['Sunlight_Hours'] <= 8.0550003052:
                                if features['Pesticide_Used'] <= 5.1700000763:
                                    if features['Temperature'] <= 26.7999992371:
                                        return 12.4900000000
                                    else:
                                        return 72.1200000000
                                else:
                                    if features['Altitude'] <= 463.0000000000:
                                        return 25.2200000000
                                    else:
                                        return 69.1700000000
                            else:
                                if features['Altitude'] <= 1698.5000000000:
                                    if features['Temperature'] <= 29.3149995804:
                                        return 16.9785714286
                                    else:
                                        return 74.5500000000
                                else:
                                    if features['Wind_Speed'] <= 11.6399998665:
                                        return 9.1900000000
                                    else:
                                        return 75.0900000000
                    else:
                        if features['Organic_Carbon'] <= 0.3149999976:
                            return 78.3100000000
                        else:
                            if features['Altitude'] <= 1799.5000000000:
                                if features['K'] <= 133.0000000000:
                                    if features['Pesticide_Used'] <= 13.0300002098:
                                        return 8.1400000000
                                    else:
                                        return 15.7771428571
                                else:
                                    if features['Wind_Speed'] <= 13.8149995804:
                                        return 25.4000000000
                                    else:
                                        return 10.9900000000
                            else:
                                if features['Humidity'] <= 58.8149986267:
                                    return 5.5800000000
                                else:
                                    if features['Fertilizer_Used'] <= 133.7049980164:
                                        return 75.2500000000
                                    else:
                                        return 74.9500000000
    else:
        if features['Fertilizer_Used'] <= 181.7150039673:
            if features['N'] <= 160.0000000000:
                if features['Soil_pH'] <= 5.3300001621:
                    if features['Irrigation_Type'] <= 1.5000000000:
                        return 72.7300000000
                    else:
                        return 73.3700000000
                else:
                    if features['Region'] <= 0.5000000000:
                        return 74.5300000000
                    else:
                        return 74.8700000000
            else:
                return 11.1700000000
        else:
            if features['Soil_pH'] <= 7.5050001144:
                if features['Soil_Moisture'] <= 15.7899999619:
                    if features['Sunlight_Hours'] <= 6.3150000572:
                        if features['K'] <= 115.0000000000:
                            if features['Sunlight_Hours'] <= 4.2899999619:
                                if features['Organic_Carbon'] <= 1.3750000000:
                                    if features['Wind_Speed'] <= 5.3399998546:
                                        return 8.2600000000
                                    else:
                                        return 11.3000000000
                                else:
                                    return 73.8800000000
                            else:
                                if features['Organic_Carbon'] <= 0.4349999875:
                                    return 6.7700000000
                                else:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 75.2441666667
                                    else:
                                        return 10.7900000000
                        else:
                            if features['Irrigation_Type'] <= 1.5000000000:
                                if features['Soil_Moisture'] <= 15.3150000572:
                                    return 6.5200000000
                                else:
                                    if features['Rainfall'] <= 1594.9400024414:
                                        return 10.0300000000
                                    else:
                                        return 9.9400000000
                            else:
                                return 23.6900000000
                    else:
                        if features['Pesticide_Used'] <= 21.0399999619:
                            if features['Pesticide_Used'] <= 0.8650000095:
                                return 77.0200000000
                            else:
                                if features['Temperature'] <= 39.6450004578:
                                    if features['Soil_pH'] <= 7.2049999237:
                                        return 16.3879411765
                                    else:
                                        return 45.2525000000
                                else:
                                    return 76.5900000000
                        else:
                            if features['Temperature'] <= 36.3400001526:
                                if features['Altitude'] <= 1871.5000000000:
                                    if features['Humidity'] <= 47.2799987793:
                                        return 77.6600000000
                                    else:
                                        return 77.2900000000
                                else:
                                    return 72.7500000000
                            else:
                                return 10.0200000000
                else:
                    if features['Sunlight_Hours'] <= 10.2249999046:
                        if features['Sunlight_Hours'] <= 9.3450002670:
                            if features['Wind_Speed'] <= 1.1749999523:
                                if features['Season'] <= 1.5000000000:
                                    if features['Rainfall'] <= 1868.7700195312:
                                        return 36.3507692308
                                    else:
                                        return 76.9657142857
                                else:
                                    if features['Organic_Carbon'] <= 1.4550000429:
                                        return 9.3560000000
                                    else:
                                        return 26.9600000000
                            else:
                                if features['Wind_Speed'] <= 3.1750000715:
                                    if features['K'] <= 80.5000000000:
                                        return 16.6035882353
                                    else:
                                        return 23.4684444444
                                else:
                                    if features['Wind_Speed'] <= 3.2400000095:
                                        return 40.6181250000
                                    else:
                                        return 24.2608075314
                        else:
                            if features['Altitude'] <= 2161.5000000000:
                                if features['Humidity'] <= 32.1150016785:
                                    if features['Wind_Speed'] <= 3.2600001097:
                                        return 12.5580000000
                                    else:
                                        return 61.7591666667
                                else:
                                    if features['Altitude'] <= 1386.5000000000:
                                        return 29.4133584906
                                    else:
                                        return 20.9300000000
                            else:
                                if features['Region'] <= 0.5000000000:
                                    if features['Season'] <= 1.5000000000:
                                        return 26.3000000000
                                    else:
                                        return 10.3600000000
                                else:
                                    if features['Soil_Moisture'] <= 28.6199998856:
                                        return 73.4600000000
                                    else:
                                        return 76.5200000000
                    else:
                        if features['Fertilizer_Used'] <= 349.1250000000:
                            if features['Sunlight_Hours'] <= 10.6649999619:
                                if features['Temperature'] <= 39.0949993134:
                                    if features['K'] <= 148.5000000000:
                                        return 16.2047727273
                                    else:
                                        return 77.2800000000
                                else:
                                    if features['Sunlight_Hours'] <= 10.4549999237:
                                        return 12.0740000000
                                    else:
                                        return 65.8400000000
                            else:
                                if features['Fertilizer_Used'] <= 185.9550018311:
                                    if features['P'] <= 43.0000000000:
                                        return 75.4200000000
                                    else:
                                        return 75.1700000000
                                else:
                                    if features['Rainfall'] <= 504.9950103760:
                                        return 41.8814285714
                                    else:
                                        return 22.2102976190
                        else:
                            if features['Sunlight_Hours'] <= 10.3600001335:
                                return 76.3800000000
                            else:
                                return 77.6600000000
            else:
                if features['K'] <= 148.5000000000:
                    if features['Organic_Carbon'] <= 1.5850000381:
                        if features['Rainfall'] <= 1630.4700317383:
                            if features['Humidity'] <= 57.6700000763:
                                if features['Temperature'] <= 17.7150001526:
                                    if features['Sunlight_Hours'] <= 4.6600000858:
                                        return 57.4416666667
                                    else:
                                        return 28.3724444444
                                else:
                                    if features['P'] <= 97.0000000000:
                                        return 18.3957368421
                                    else:
                                        return 51.7333333333
                            else:
                                if features['N'] <= 178.5000000000:
                                    if features['Sunlight_Hours'] <= 4.0350000858:
                                        return 75.4400000000
                                    else:
                                        return 15.7225099602
                                else:
                                    return 75.8000000000
                        else:
                            if features['Soil_Moisture'] <= 34.2500000000:
                                if features['Rainfall'] <= 1670.6450195312:
                                    if features['K'] <= 55.5000000000:
                                        return 74.2300000000
                                    else:
                                        return 24.3800000000
                                else:
                                    if features['Pesticide_Used'] <= 0.0850000009:
                                        return 76.5800000000
                                    else:
                                        return 17.1681460674
                            else:
                                if features['Soil_Moisture'] <= 38.8750000000:
                                    if features['Soil_Moisture'] <= 37.7150001526:
                                        return 32.0620000000
                                    else:
                                        return 75.5020000000
                                else:
                                    if features['Pesticide_Used'] <= 14.8500003815:
                                        return 20.0122307692
                                    else:
                                        return 30.3847663551
                    else:
                        if features['Organic_Carbon'] <= 1.5950000286:
                            if features['N'] <= 115.0000000000:
                                if features['Wind_Speed'] <= 11.7849998474:
                                    return 74.6100000000
                                else:
                                    return 74.5100000000
                            else:
                                if features['Rainfall'] <= 1531.7999877930:
                                    return 75.1600000000
                                else:
                                    return 75.7800000000
                        else:
                            if features['Rainfall'] <= 1404.7849731445:
                                return 5.5600000000
                            else:
                                if features['Humidity'] <= 79.8550033569:
                                    return 9.8400000000
                                else:
                                    return 11.1300000000
                else:
                    if features['Region'] <= 2.5000000000:
                        if features['Soil_Moisture'] <= 29.6250009537:
                            return 73.6400000000
                        else:
                            if features['Wind_Speed'] <= 8.9600000381:
                                if features['Soil_Type'] <= 2.5000000000:
                                    return 10.6000000000
                                else:
                                    return 9.8900000000
                            else:
                                return 8.5300000000
                    else:
                        if features['Irrigation_Type'] <= 1.5000000000:
                            if features['Temperature'] <= 20.4800004959:
                                return 74.3400000000
                            else:
                                return 74.0300000000
                        else:
                            if features['Altitude'] <= 1287.5000000000:
                                return 76.8100000000
                            else:
                                return 76.2600000000
