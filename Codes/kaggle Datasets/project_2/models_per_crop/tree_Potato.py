def predict_tree(features):
    if features['Fertilizer_Used'] <= 238.9849929810:
        if features['Rainfall'] <= 1363.5650024414:
            if features['Fertilizer_Used'] <= 126.2049980164:
                if features['Soil_Moisture'] <= 37.1399993896:
                    if features['Temperature'] <= 34.9049987793:
                        if features['K'] <= 99.5000000000:
                            return 21.7430769231
                        else:
                            return 22.5875000000
                    else:
                        if features['Wind_Speed'] <= 14.7199997902:
                            return 23.4450000000
                        else:
                            return 21.2466666667
                else:
                    if features['K'] <= 36.5000000000:
                        if features['Humidity'] <= 48.0600013733:
                            return 21.0466666667
                        else:
                            return 22.8214285714
                    else:
                        if features['N'] <= 133.5000000000:
                            return 23.3877586207
                        else:
                            return 24.3158333333
            else:
                if features['Soil_Moisture'] <= 28.9949998856:
                    if features['Soil_pH'] <= 6.9800000191:
                        if features['Soil_pH'] <= 6.0799999237:
                            return 23.1725000000
                        else:
                            return 24.3021052632
                    else:
                        if features['Soil_Moisture'] <= 22.2799997330:
                            return 22.3741176471
                        else:
                            return 23.3400000000
                else:
                    if features['Soil_Moisture'] <= 57.0900001526:
                        if features['Altitude'] <= 276.0000000000:
                            return 25.1000000000
                        else:
                            return 24.0559433962
                    else:
                        if features['Soil_Moisture'] <= 59.0750007629:
                            return 25.5766666667
                        else:
                            return 24.7466666667
        else:
            if features['Soil_Moisture'] <= 45.6649990082:
                if features['Rainfall'] <= 2071.1700439453:
                    if features['Wind_Speed'] <= 13.2750000954:
                        if features['Fertilizer_Used'] <= 131.1399993896:
                            return 23.9751219512
                        else:
                            return 24.7537500000
                    else:
                        if features['N'] <= 156.5000000000:
                            return 23.5188636364
                        else:
                            return 24.8110000000
                else:
                    if features['Fertilizer_Used'] <= 128.4350051880:
                        if features['Soil_Moisture'] <= 21.3100004196:
                            return 23.4488888889
                        else:
                            return 24.7318518519
                    else:
                        if features['P'] <= 80.0000000000:
                            return 25.2118965517
                        else:
                            return 26.0884210526
            else:
                if features['Fertilizer_Used'] <= 110.5799980164:
                    if features['Rainfall'] <= 2233.9100341797:
                        if features['Soil_Moisture'] <= 49.0599994659:
                            return 25.1585714286
                        else:
                            return 23.7919047619
                    else:
                        if features['Temperature'] <= 31.0050001144:
                            return 25.9490909091
                        else:
                            return 24.0533333333
                else:
                    if features['Rainfall'] <= 2468.3900146484:
                        if features['K'] <= 123.5000000000:
                            return 25.3854285714
                        else:
                            return 26.5886363636
                    else:
                        if features['K'] <= 82.0000000000:
                            return 26.2526086957
                        else:
                            return 27.2773333333
    else:
        if features['Rainfall'] <= 1455.1799926758:
            if features['Soil_Moisture'] <= 24.4049997330:
                if features['Rainfall'] <= 1099.5549926758:
                    if features['Wind_Speed'] <= 14.8250002861:
                        if features['Soil_Moisture'] <= 16.8299999237:
                            return 23.4700000000
                        else:
                            return 24.5205882353
                    else:
                        if features['N'] <= 117.5000000000:
                            return 22.4416666667
                        else:
                            return 24.2375000000
                else:
                    if features['Humidity'] <= 42.7300014496:
                        if features['Region'] <= 2.5000000000:
                            return 24.8200000000
                        else:
                            return 23.9150000000
                    else:
                        if features['N'] <= 112.5000000000:
                            return 25.7620000000
                        else:
                            return 24.7975000000
            else:
                if features['N'] <= 167.5000000000:
                    if features['K'] <= 83.0000000000:
                        if features['Soil_pH'] <= 5.4850001335:
                            return 24.0158823529
                        else:
                            return 25.0242105263
                    else:
                        if features['Soil_pH'] <= 7.8150000572:
                            return 25.6750704225
                        else:
                            return 24.4900000000
                else:
                    if features['Rainfall'] <= 768.9299926758:
                        if features['Temperature'] <= 16.4649996758:
                            return 26.6450000000
                        else:
                            return 24.7325000000
                    else:
                        if features['Altitude'] <= 935.0000000000:
                            return 26.7533333333
                        else:
                            return 28.2733333333
        else:
            if features['Soil_Moisture'] <= 39.7799987793:
                if features['Wind_Speed'] <= 12.4800000191:
                    if features['Fertilizer_Used'] <= 276.7050018311:
                        if features['Soil_pH'] <= 5.1150000095:
                            return 23.7500000000
                        else:
                            return 25.9429166667
                    else:
                        if features['Temperature'] <= 35.0249996185:
                            return 26.7852727273
                        else:
                            return 25.5340000000
                else:
                    if features['Rainfall'] <= 2379.8299560547:
                        if features['Fertilizer_Used'] <= 312.7049865723:
                            return 24.5564000000
                        else:
                            return 26.0511111111
                    else:
                        if features['Fertilizer_Used'] <= 336.5700073242:
                            return 25.9986666667
                        else:
                            return 27.1850000000
            else:
                if features['Soil_pH'] <= 5.6349999905:
                    if features['Pesticide_Used'] <= 18.6150007248:
                        if features['Temperature'] <= 29.9549999237:
                            return 25.5150000000
                        else:
                            return 26.4480000000
                    else:
                        if features['Temperature'] <= 30.2100009918:
                            return 26.8320000000
                        else:
                            return 26.2300000000
                else:
                    if features['Rainfall'] <= 2020.1099853516:
                        if features['Wind_Speed'] <= 13.5199999809:
                            return 27.0620689655
                        else:
                            return 26.1320000000
                    else:
                        if features['Fertilizer_Used'] <= 304.2299957275:
                            return 27.2490625000
                        else:
                            return 28.2231818182
