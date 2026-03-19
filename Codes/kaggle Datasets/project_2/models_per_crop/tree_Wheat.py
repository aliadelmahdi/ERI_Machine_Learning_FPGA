def predict_tree(features):
    if features['Fertilizer_Used'] <= 217.9599990845:
        if features['Rainfall'] <= 1607.7700195312:
            if features['Fertilizer_Used'] <= 145.1699981689:
                if features['N'] <= 103.0000000000:
                    if features['Soil_Moisture'] <= 20.2799997330:
                        if features['Rainfall'] <= 758.1649780273:
                            return 5.1050000000
                        else:
                            return 6.5887500000
                    else:
                        if features['Soil_pH'] <= 7.9549999237:
                            return 6.9581707317
                        else:
                            return 5.6085714286
                else:
                    if features['Soil_Moisture'] <= 39.2350006104:
                        if features['Humidity'] <= 89.3549995422:
                            return 6.9075609756
                        else:
                            return 9.5400000000
                    else:
                        if features['Soil_pH'] <= 5.6349999905:
                            return 6.9711111111
                        else:
                            return 8.1195652174
            else:
                if features['Rainfall'] <= 959.9949951172:
                    if features['Soil_Moisture'] <= 46.1350002289:
                        if features['Soil_pH'] <= 7.5250000954:
                            return 7.3634693878
                        else:
                            return 6.2446153846
                    else:
                        if features['Rainfall'] <= 361.9900054932:
                            return 5.4400000000
                        else:
                            return 8.2961538462
                else:
                    if features['Wind_Speed'] <= 4.6849999428:
                        if features['Organic_Carbon'] <= 0.5900000036:
                            return 11.0500000000
                        else:
                            return 9.1307142857
                    else:
                        if features['N'] <= 134.5000000000:
                            return 7.7682608696
                        else:
                            return 9.0418750000
        else:
            if features['Soil_Moisture'] <= 32.0349998474:
                if features['Fertilizer_Used'] <= 80.1499977112:
                    if features['Soil_pH'] <= 5.3650000095:
                        if features['K'] <= 76.0000000000:
                            return 4.7500000000
                        else:
                            return 4.6800000000
                    else:
                        if features['K'] <= 27.5000000000:
                            return 5.4250000000
                        else:
                            return 7.0676923077
                else:
                    if features['Irrigation_Type'] <= 1.5000000000:
                        if features['K'] <= 78.0000000000:
                            return 7.4008000000
                        else:
                            return 8.2332258065
                    else:
                        if features['Soil_pH'] <= 5.3249998093:
                            return 7.2833333333
                        else:
                            return 8.8675000000
            else:
                if features['Fertilizer_Used'] <= 138.1650009155:
                    if features['Wind_Speed'] <= 3.5099999905:
                        if features['Humidity'] <= 80.2099990845:
                            return 9.7288888889
                        else:
                            return 7.5750000000
                    else:
                        if features['Temperature'] <= 11.7600002289:
                            return 9.8340000000
                        else:
                            return 8.2970297030
                else:
                    if features['Soil_pH'] <= 5.2550001144:
                        if features['Humidity'] <= 56.2250003815:
                            return 8.9333333333
                        else:
                            return 7.5283333333
                    else:
                        if features['Soil_pH'] <= 7.1600000858:
                            return 9.7560810811
                        else:
                            return 8.8366666667
    else:
        if features['Rainfall'] <= 1775.1000366211:
            if features['Soil_Moisture'] <= 53.3400001526:
                if features['Rainfall'] <= 1016.5699768066:
                    if features['Fertilizer_Used'] <= 286.5950012207:
                        if features['Wind_Speed'] <= 12.4700002670:
                            return 8.3107692308
                        else:
                            return 7.4173076923
                    else:
                        if features['Rainfall'] <= 865.0050048828:
                            return 8.4758620690
                        else:
                            return 9.6162500000
                else:
                    if features['Soil_Moisture'] <= 29.2250003815:
                        if features['Wind_Speed'] <= 11.8449997902:
                            return 9.2080645161
                        else:
                            return 7.9683333333
                    else:
                        if features['Fertilizer_Used'] <= 260.1200103760:
                            return 9.0140000000
                        else:
                            return 9.7625423729
            else:
                if features['Soil_pH'] <= 7.5649998188:
                    if features['N'] <= 94.5000000000:
                        if features['Sunlight_Hours'] <= 8.9400000572:
                            return 9.0381250000
                        else:
                            return 10.2866666667
                    else:
                        if features['Organic_Carbon'] <= 0.3949999958:
                            return 11.5440000000
                        else:
                            return 10.3173529412
                else:
                    if features['Fertilizer_Used'] <= 255.4200057983:
                        if features['Rainfall'] <= 547.4499969482:
                            return 8.1300000000
                        else:
                            return 6.6800000000
                    else:
                        if features['Humidity'] <= 53.9249992371:
                            return 9.5177777778
                        else:
                            return 8.2700000000
        else:
            if features['Soil_Moisture'] <= 34.9549999237:
                if features['K'] <= 123.0000000000:
                    if features['Fertilizer_Used'] <= 253.4650039673:
                        if features['Soil_Moisture'] <= 25.9200000763:
                            return 7.6788888889
                        else:
                            return 9.1622222222
                    else:
                        if features['N'] <= 123.0000000000:
                            return 9.2810526316
                        else:
                            return 10.5675000000
                else:
                    if features['Pesticide_Used'] <= 8.7650001049:
                        if features['P'] <= 51.5000000000:
                            return 10.7900000000
                        else:
                            return 11.5380000000
                    else:
                        if features['Sunlight_Hours'] <= 8.2799999714:
                            return 10.4214285714
                        else:
                            return 8.6666666667
            else:
                if features['Rainfall'] <= 2425.1348876953:
                    if features['N'] <= 104.5000000000:
                        if features['Fertilizer_Used'] <= 296.9250030518:
                            return 9.5400000000
                        else:
                            return 10.5795238095
                    else:
                        if features['Soil_Moisture'] <= 54.8250007629:
                            return 10.4126923077
                        else:
                            return 11.3185000000
                else:
                    if features['Soil_pH'] <= 5.3450000286:
                        if features['Soil_pH'] <= 5.0400002003:
                            return 10.6475000000
                        else:
                            return 9.4466666667
                    else:
                        if features['Wind_Speed'] <= 1.6799999475:
                            return 9.0850000000
                        else:
                            return 11.5469565217
