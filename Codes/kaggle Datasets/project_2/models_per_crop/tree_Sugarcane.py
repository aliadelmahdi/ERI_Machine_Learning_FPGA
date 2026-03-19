def predict_tree(features):
    if features['Fertilizer_Used'] <= 234.9199981689:
        if features['Rainfall'] <= 1341.9199829102:
            if features['Soil_Moisture'] <= 38.6799983978:
                if features['K'] <= 57.5000000000:
                    if features['N'] <= 135.0000000000:
                        if features['Wind_Speed'] <= 15.0899996758:
                            return 72.2113636364
                        else:
                            return 71.2250000000
                    else:
                        if features['Season'] <= 0.5000000000:
                            return 71.6150000000
                        else:
                            return 73.3436363636
                else:
                    if features['Soil_pH'] <= 5.0699999332:
                        if features['Irrigation_Type'] <= 0.5000000000:
                            return 70.5166666667
                        else:
                            return 72.9183333333
                    else:
                        if features['Rainfall'] <= 827.3400268555:
                            return 73.0155813953
                        else:
                            return 73.8432258065
            else:
                if features['Fertilizer_Used'] <= 119.7800025940:
                    if features['Wind_Speed'] <= 11.9600000381:
                        if features['Soil_pH'] <= 7.2649998665:
                            return 73.9221428571
                        else:
                            return 72.3866666667
                    else:
                        if features['Fertilizer_Used'] <= 84.8699989319:
                            return 72.0185714286
                        else:
                            return 72.9130769231
                else:
                    if features['Rainfall'] <= 457.2849884033:
                        if features['K'] <= 94.0000000000:
                            return 72.5342857143
                        else:
                            return 73.9640000000
                    else:
                        if features['Irrigation_Type'] <= 2.5000000000:
                            return 74.1724324324
                        else:
                            return 75.2452000000
        else:
            if features['Rainfall'] <= 2323.4100341797:
                if features['Fertilizer_Used'] <= 130.6850051880:
                    if features['Soil_pH'] <= 5.4749999046:
                        if features['Wind_Speed'] <= 13.1449999809:
                            return 73.6273333333
                        else:
                            return 72.4733333333
                    else:
                        if features['Soil_pH'] <= 8.0650000572:
                            return 74.2743023256
                        else:
                            return 72.9516666667
                else:
                    if features['Wind_Speed'] <= 13.3150000572:
                        if features['Soil_Moisture'] <= 34.4200000763:
                            return 74.4715384615
                        else:
                            return 75.3034177215
                    else:
                        if features['Sunlight_Hours'] <= 6.0000000000:
                            return 73.2800000000
                        else:
                            return 74.5766666667
            else:
                if features['Soil_pH'] <= 7.2100000381:
                    if features['K'] <= 115.5000000000:
                        if features['Fertilizer_Used'] <= 120.4350013733:
                            return 74.7130434783
                        else:
                            return 75.6038000000
                    else:
                        if features['Wind_Speed'] <= 12.3499999046:
                            return 76.8415789474
                        else:
                            return 75.4157142857
                else:
                    if features['K'] <= 63.5000000000:
                        if features['Soil_Moisture'] <= 45.1049995422:
                            return 73.4692307692
                        else:
                            return 75.6150000000
                    else:
                        if features['Organic_Carbon'] <= 0.4299999923:
                            return 76.3900000000
                        else:
                            return 74.8703125000
    else:
        if features['Rainfall'] <= 1612.7300415039:
            if features['Soil_Moisture'] <= 35.4200000763:
                if features['Soil_pH'] <= 5.4349999428:
                    if features['Humidity'] <= 35.1449985504:
                        if features['N'] <= 116.5000000000:
                            return 72.1800000000
                        else:
                            return 72.3300000000
                    else:
                        if features['Sunlight_Hours'] <= 10.3299999237:
                            return 73.9114285714
                        else:
                            return 72.9200000000
                else:
                    if features['Rainfall'] <= 1111.8850097656:
                        if features['Soil_pH'] <= 7.2650001049:
                            return 74.5912820513
                        else:
                            return 73.8457142857
                    else:
                        if features['N'] <= 71.0000000000:
                            return 74.6000000000
                        else:
                            return 75.8060000000
            else:
                if features['Rainfall'] <= 714.5950012207:
                    if features['Soil_pH'] <= 5.8150000572:
                        if features['Fertilizer_Used'] <= 327.8950042725:
                            return 74.3681250000
                        else:
                            return 72.2900000000
                    else:
                        if features['Fertilizer_Used'] <= 243.7450027466:
                            return 73.4050000000
                        else:
                            return 75.4905714286
                else:
                    if features['Soil_Moisture'] <= 58.8500003815:
                        if features['Wind_Speed'] <= 8.1399998665:
                            return 75.9052380952
                        else:
                            return 75.1882692308
                    else:
                        if features['Organic_Carbon'] <= 1.1200000048:
                            return 76.2411764706
                        else:
                            return 77.7128571429
        else:
            if features['Fertilizer_Used'] <= 317.9199981689:
                if features['N'] <= 110.0000000000:
                    if features['Soil_Moisture'] <= 49.9650001526:
                        if features['Wind_Speed'] <= 11.3350000381:
                            return 75.8690000000
                        else:
                            return 75.0344000000
                    else:
                        if features['Fertilizer_Used'] <= 253.3099975586:
                            return 74.7025000000
                        else:
                            return 76.6037500000
                else:
                    if features['Wind_Speed'] <= 10.7199997902:
                        if features['Sunlight_Hours'] <= 5.8999998569:
                            return 77.7742857143
                        else:
                            return 76.4508823529
                    else:
                        if features['Fertilizer_Used'] <= 248.6999969482:
                            return 74.8000000000
                        else:
                            return 76.2151612903
            else:
                if features['Soil_Moisture'] <= 40.7399997711:
                    if features['Wind_Speed'] <= 16.0050005913:
                        if features['Soil_pH'] <= 7.6099998951:
                            return 76.8746153846
                        else:
                            return 75.1366666667
                    else:
                        if features['Fertilizer_Used'] <= 329.0250091553:
                            return 77.0000000000
                        else:
                            return 75.3716666667
                else:
                    if features['Humidity'] <= 85.9850006104:
                        if features['Fertilizer_Used'] <= 344.6900024414:
                            return 77.4141379310
                        else:
                            return 78.3537500000
                    else:
                        if features['Temperature'] <= 19.5450000763:
                            return 77.1560000000
                        else:
                            return 75.1633333333
