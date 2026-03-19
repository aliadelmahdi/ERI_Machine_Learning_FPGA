def predict_tree(features):
    if features['Fertilizer_Used'] <= 201.8300018311:
        if features['Rainfall'] <= 1731.0900268555:
            if features['Fertilizer_Used'] <= 140.2049942017:
                if features['Rainfall'] <= 897.4299926758:
                    if features['Soil_Moisture'] <= 58.0300006866:
                        if features['Fertilizer_Used'] <= 103.2300033569:
                            return 6.5518918919
                        else:
                            return 7.2446511628
                    else:
                        if features['Soil_pH'] <= 6.2799999714:
                            return 7.5083333333
                        else:
                            return 8.5412500000
                else:
                    if features['Wind_Speed'] <= 6.2300000191:
                        if features['K'] <= 129.0000000000:
                            return 8.1273684211
                        else:
                            return 9.4876923077
                    else:
                        if features['Soil_Moisture'] <= 38.4849987030:
                            return 7.2177142857
                        else:
                            return 8.0497560976
            else:
                if features['Soil_Moisture'] <= 44.0450000763:
                    if features['Soil_pH'] <= 7.9850001335:
                        if features['N'] <= 85.0000000000:
                            return 7.8711428571
                        else:
                            return 8.6346774194
                    else:
                        if features['Wind_Speed'] <= 4.6949999332:
                            return 9.2000000000
                        else:
                            return 6.0571428571
                else:
                    if features['Sunlight_Hours'] <= 10.0050001144:
                        if features['Soil_Type'] <= 2.5000000000:
                            return 8.6288888889
                        else:
                            return 10.0144444444
                    else:
                        if features['Wind_Speed'] <= 5.7649998665:
                            return 10.6800000000
                        else:
                            return 9.5444444444
        else:
            if features['Fertilizer_Used'] <= 134.1699981689:
                if features['Soil_Moisture'] <= 40.8199996948:
                    if features['Soil_pH'] <= 7.2149999142:
                        if features['K'] <= 41.0000000000:
                            return 7.8333333333
                        else:
                            return 9.2239024390
                    else:
                        if features['Humidity'] <= 57.1900005341:
                            return 9.0760000000
                        else:
                            return 7.2725000000
                else:
                    if features['Rainfall'] <= 2272.8099365234:
                        if features['Temperature'] <= 18.0199995041:
                            return 8.3250000000
                        else:
                            return 9.3543333333
                    else:
                        if features['Organic_Carbon'] <= 0.8800000250:
                            return 9.1714285714
                        else:
                            return 10.6236363636
            else:
                if features['Sunlight_Hours'] <= 8.4699997902:
                    if features['Humidity'] <= 48.1700000763:
                        if features['Humidity'] <= 31.3199996948:
                            return 9.3740000000
                        else:
                            return 10.7145000000
                    else:
                        if features['Altitude'] <= 734.0000000000:
                            return 9.3725000000
                        else:
                            return 9.9815000000
                else:
                    if features['Soil_pH'] <= 7.4000000954:
                        if features['Soil_pH'] <= 5.7299997807:
                            return 8.7333333333
                        else:
                            return 10.1731818182
                    else:
                        if features['Rainfall'] <= 2229.9549560547:
                            return 7.8862500000
                        else:
                            return 8.8816666667
    else:
        if features['Rainfall'] <= 1553.9000244141:
            if features['Soil_Moisture'] <= 42.4000015259:
                if features['Fertilizer_Used'] <= 298.8450012207:
                    if features['Soil_Moisture'] <= 30.4099998474:
                        if features['Rainfall'] <= 704.2500000000:
                            return 7.7355000000
                        else:
                            return 8.7192857143
                    else:
                        if features['Wind_Speed'] <= 12.1050000191:
                            return 9.8162068966
                        else:
                            return 8.7166666667
                else:
                    if features['Humidity'] <= 85.5750007629:
                        if features['Sunlight_Hours'] <= 10.4650001526:
                            return 9.4550000000
                        else:
                            return 10.4636363636
                    else:
                        if features['Pesticide_Used'] <= 1.8850000501:
                            return 12.2700000000
                        else:
                            return 10.8825000000
            else:
                if features['K'] <= 76.5000000000:
                    if features['Soil_pH'] <= 5.6300001144:
                        if features['Sunlight_Hours'] <= 10.6649999619:
                            return 8.0861538462
                        else:
                            return 10.8500000000
                    else:
                        if features['Fertilizer_Used'] <= 332.9199981689:
                            return 9.5094736842
                        else:
                            return 11.3440000000
                else:
                    if features['Fertilizer_Used'] <= 249.7550048828:
                        if features['Rainfall'] <= 1201.3450317383:
                            return 9.2728571429
                        else:
                            return 10.1110000000
                    else:
                        if features['Organic_Carbon'] <= 0.4800000042:
                            return 9.3483333333
                        else:
                            return 10.8723333333
        else:
            if features['Fertilizer_Used'] <= 284.4949951172:
                if features['Soil_Moisture'] <= 44.1399993896:
                    if features['Wind_Speed'] <= 5.6150000095:
                        if features['Fertilizer_Used'] <= 211.2200012207:
                            return 9.6525000000
                        else:
                            return 10.8220000000
                    else:
                        if features['Rainfall'] <= 1794.8750000000:
                            return 8.8673333333
                        else:
                            return 10.0619117647
                else:
                    if features['Rainfall'] <= 2188.6250000000:
                        if features['Organic_Carbon'] <= 1.1000000238:
                            return 10.9936842105
                        else:
                            return 9.7738888889
                    else:
                        if features['K'] <= 79.5000000000:
                            return 10.9436363636
                        else:
                            return 11.5812000000
            else:
                if features['N'] <= 138.5000000000:
                    if features['Rainfall'] <= 2543.8599853516:
                        if features['P'] <= 32.5000000000:
                            return 10.0488888889
                        else:
                            return 10.9891463415
                    else:
                        if features['Pesticide_Used'] <= 10.9300003052:
                            return 11.2183333333
                        else:
                            return 12.2909090909
                else:
                    if features['Soil_Moisture'] <= 44.2550010681:
                        if features['Soil_pH'] <= 5.5950000286:
                            return 10.2900000000
                        else:
                            return 11.6329411765
                    else:
                        if features['Soil_pH'] <= 5.7549998760:
                            return 11.6420000000
                        else:
                            return 12.6440000000
