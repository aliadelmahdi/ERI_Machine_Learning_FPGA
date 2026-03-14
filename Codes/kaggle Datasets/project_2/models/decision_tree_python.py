def predict_tree(features):
    '''Pure Python Decision Tree Logic'''
    if features['Crop_Type'] <= 3.5000000000:
        if features['Crop_Type'] <= 1.5000000000:
            if features['Crop_Type'] <= 0.5000000000:
                if features['Fertilizer_Used'] <= 241.7200012207:
                    if features['Rainfall'] <= 1684.3199462891:
                        if features['Fertilizer_Used'] <= 108.7750015259:
                            if features['Wind_Speed'] <= 3.7999999523:
                                if features['Rainfall'] <= 438.8499908447:
                                    if features['Rainfall'] <= 383.5449981689:
                                        return 3.6000000000
                                    else:
                                        return 4.0300000000
                                else:
                                    if features['Soil_Moisture'] <= 57.8750000000:
                                        return 6.1453571429
                                    else:
                                        return 8.0766666667
                            else:
                                if features['Rainfall'] <= 1345.6799926758:
                                    if features['Soil_Moisture'] <= 30.5749998093:
                                        return 3.9777777778
                                    else:
                                        return 5.0601639344
                                else:
                                    if features['Wind_Speed'] <= 14.9849996567:
                                        return 6.1386956522
                                    else:
                                        return 3.7833333333
                        else:
                            if features['Soil_Moisture'] <= 50.1949996948:
                                if features['Wind_Speed'] <= 12.0749998093:
                                    if features['Rainfall'] <= 1442.9249877930:
                                        return 6.3790721649
                                    else:
                                        return 7.2225000000
                                else:
                                    if features['Rainfall'] <= 650.7749938965:
                                        return 4.7881250000
                                    else:
                                        return 5.9372058824
                            else:
                                if features['Rainfall'] <= 1308.9600219727:
                                    if features['Wind_Speed'] <= 7.2750000954:
                                        return 7.6300000000
                                    else:
                                        return 6.5175862069
                                else:
                                    if features['Soil_pH'] <= 7.3700001240:
                                        return 8.3147619048
                                    else:
                                        return 7.1280000000
                    else:
                        if features['Fertilizer_Used'] <= 135.1750030518:
                            if features['Soil_Moisture'] <= 43.8700008392:
                                if features['Wind_Speed'] <= 8.4400000572:
                                    if features['Humidity'] <= 71.1300010681:
                                        return 6.6155172414
                                    else:
                                        return 7.7493750000
                                else:
                                    if features['Temperature'] <= 39.3949985504:
                                        return 6.1801923077
                                    else:
                                        return 4.1500000000
                            else:
                                if features['P'] <= 18.5000000000:
                                    return 4.7900000000
                                else:
                                    if features['Soil_Moisture'] <= 61.5500011444:
                                        return 7.4098000000
                                    else:
                                        return 8.4242857143
                        else:
                            if features['Soil_Moisture'] <= 49.6949996948:
                                if features['Rainfall'] <= 1944.8500366211:
                                    if features['K'] <= 25.5000000000:
                                        return 5.2866666667
                                    else:
                                        return 7.3754166667
                                else:
                                    if features['Soil_pH'] <= 5.2800002098:
                                        return 7.2878947368
                                    else:
                                        return 8.2006451613
                            else:
                                if features['Soil_pH'] <= 7.5049998760:
                                    if features['Soil_pH'] <= 6.1549999714:
                                        return 8.3572727273
                                    else:
                                        return 9.6763333333
                                else:
                                    if features['Altitude'] <= 1706.5000000000:
                                        return 8.0383333333
                                    else:
                                        return 6.7325000000
                else:
                    if features['Rainfall'] <= 1691.4949951172:
                        if features['Soil_Moisture'] <= 26.9800004959:
                            if features['N'] <= 115.5000000000:
                                if features['N'] <= 31.5000000000:
                                    return 3.4400000000
                                else:
                                    if features['K'] <= 24.0000000000:
                                        return 3.9800000000
                                    else:
                                        return 6.9459459459
                            else:
                                if features['Rainfall'] <= 1579.1949462891:
                                    if features['Temperature'] <= 34.5949993134:
                                        return 7.8037037037
                                    else:
                                        return 6.8025000000
                                else:
                                    if features['N'] <= 161.5000000000:
                                        return 8.8800000000
                                    else:
                                        return 10.3900000000
                        else:
                            if features['Soil_pH'] <= 5.2449998856:
                                if features['P'] <= 23.5000000000:
                                    if features['Soil_Type'] <= 1.5000000000:
                                        return 6.1400000000
                                    else:
                                        return 4.0800000000
                                else:
                                    if features['Fertilizer_Used'] <= 280.3150024414:
                                        return 6.7066666667
                                    else:
                                        return 7.7544444444
                            else:
                                if features['Rainfall'] <= 1169.5050048828:
                                    if features['Wind_Speed'] <= 15.9199995995:
                                        return 8.0580555556
                                    else:
                                        return 7.0484615385
                                else:
                                    if features['Soil_pH'] <= 7.0099999905:
                                        return 8.9637142857
                                    else:
                                        return 8.2047368421
                    else:
                        if features['Soil_Moisture'] <= 44.3649997711:
                            if features['K'] <= 86.5000000000:
                                if features['Fertilizer_Used'] <= 255.9650039673:
                                    if features['Wind_Speed'] <= 3.6699999571:
                                        return 8.3600000000
                                    else:
                                        return 6.5766666667
                                else:
                                    if features['N'] <= 67.5000000000:
                                        return 7.6346153846
                                    else:
                                        return 8.7813333333
                            else:
                                if features['Rainfall'] <= 1970.1799926758:
                                    if features['Sunlight_Hours'] <= 8.6649999619:
                                        return 9.0109090909
                                    else:
                                        return 7.2725000000
                                else:
                                    if features['N'] <= 58.5000000000:
                                        return 8.2755555556
                                    else:
                                        return 10.0016216216
                        else:
                            if features['P'] <= 58.5000000000:
                                if features['Wind_Speed'] <= 2.9300000668:
                                    if features['Rainfall'] <= 2240.8299560547:
                                        return 9.8550000000
                                    else:
                                        return 10.6925000000
                                else:
                                    if features['Sunlight_Hours'] <= 4.1150000095:
                                        return 6.0100000000
                                    else:
                                        return 9.1895652174
                            else:
                                if features['N'] <= 69.5000000000:
                                    if features['Temperature'] <= 20.9650001526:
                                        return 7.6900000000
                                    else:
                                        return 9.3875000000
                                else:
                                    if features['Rainfall'] <= 1812.6400146484:
                                        return 12.8600000000
                                    else:
                                        return 10.4044444444
            else:
                if features['Fertilizer_Used'] <= 178.9549942017:
                    if features['Rainfall'] <= 1416.7099609375:
                        if features['Soil_Moisture'] <= 31.3149995804:
                            if features['Fertilizer_Used'] <= 122.1149978638:
                                if features['Pesticide_Used'] <= 12.9900002480:
                                    if features['Sunlight_Hours'] <= 5.9749999046:
                                        return 7.8740000000
                                    else:
                                        return 6.2857142857
                                else:
                                    if features['Organic_Carbon'] <= 1.4350000024:
                                        return 7.5483333333
                                    else:
                                        return 9.2583333333
                            else:
                                if features['Altitude'] <= 1436.0000000000:
                                    if features['Altitude'] <= 1397.0000000000:
                                        return 8.4050000000
                                    else:
                                        return 10.6800000000
                                else:
                                    if features['Soil_Moisture'] <= 28.5500001907:
                                        return 7.0100000000
                                    else:
                                        return 9.1750000000
                        else:
                            if features['Wind_Speed'] <= 12.9649996758:
                                if features['K'] <= 81.5000000000:
                                    if features['Fertilizer_Used'] <= 77.0349998474:
                                        return 7.0240000000
                                    else:
                                        return 8.6847540984
                                else:
                                    if features['Rainfall'] <= 585.6049804688:
                                        return 8.6360000000
                                    else:
                                        return 9.5462264151
                            else:
                                if features['Fertilizer_Used'] <= 157.6450042725:
                                    if features['Humidity'] <= 56.6599998474:
                                        return 8.0119230769
                                    else:
                                        return 7.0500000000
                                else:
                                    if features['Pesticide_Used'] <= 4.3200000525:
                                        return 8.5033333333
                                    else:
                                        return 10.1450000000
                    else:
                        if features['Soil_Moisture'] <= 39.5849990845:
                            if features['Fertilizer_Used'] <= 135.3199996948:
                                if features['Rainfall'] <= 2204.8300781250:
                                    if features['K'] <= 104.5000000000:
                                        return 8.3347058824
                                    else:
                                        return 9.2950000000
                                else:
                                    if features['P'] <= 97.0000000000:
                                        return 9.3557142857
                                    else:
                                        return 11.8300000000
                            else:
                                if features['Soil_pH'] <= 7.4900000095:
                                    if features['P'] <= 36.0000000000:
                                        return 9.3340000000
                                    else:
                                        return 10.3986206897
                                else:
                                    if features['Altitude'] <= 1207.5000000000:
                                        return 8.2216666667
                                    else:
                                        return 9.5380000000
                        else:
                            if features['Fertilizer_Used'] <= 143.0450057983:
                                if features['N'] <= 82.5000000000:
                                    if features['Temperature'] <= 37.3550014496:
                                        return 9.6900000000
                                    else:
                                        return 8.2025000000
                                else:
                                    if features['Wind_Speed'] <= 2.9399999380:
                                        return 11.1600000000
                                    else:
                                        return 10.0721212121
                            else:
                                if features['Wind_Speed'] <= 6.1900000572:
                                    if features['Rainfall'] <= 2147.0250244141:
                                        return 10.6950000000
                                    else:
                                        return 12.2575000000
                                else:
                                    if features['P'] <= 48.0000000000:
                                        return 9.6955555556
                                    else:
                                        return 10.8743750000
                else:
                    if features['Rainfall'] <= 1387.2299804688:
                        if features['Soil_Moisture'] <= 51.2500000000:
                            if features['Fertilizer_Used'] <= 270.4100036621:
                                if features['Region'] <= 0.5000000000:
                                    if features['K'] <= 132.5000000000:
                                        return 9.4953846154
                                    else:
                                        return 11.3800000000
                                else:
                                    if features['Soil_Moisture'] <= 24.5999994278:
                                        return 8.3695833333
                                    else:
                                        return 9.1367647059
                            else:
                                if features['Rainfall'] <= 1191.3899536133:
                                    if features['P'] <= 70.5000000000:
                                        return 9.5828571429
                                    else:
                                        return 10.3882142857
                                else:
                                    if features['Fertilizer_Used'] <= 313.8700103760:
                                        return 10.6900000000
                                    else:
                                        return 11.8450000000
                        else:
                            if features['Fertilizer_Used'] <= 303.8949890137:
                                if features['Sunlight_Hours'] <= 10.6749997139:
                                    if features['Rainfall'] <= 1260.6449584961:
                                        return 10.3774074074
                                    else:
                                        return 11.7150000000
                                else:
                                    if features['Soil_Moisture'] <= 57.5100002289:
                                        return 9.1250000000
                                    else:
                                        return 6.8700000000
                            else:
                                if features['Humidity'] <= 61.2900009155:
                                    if features['Humidity'] <= 42.4000015259:
                                        return 12.4080000000
                                    else:
                                        return 10.7444444444
                                else:
                                    if features['Wind_Speed'] <= 4.3200000525:
                                        return 13.2225000000
                                    else:
                                        return 12.5150000000
                    else:
                        if features['Soil_Moisture'] <= 55.6900005341:
                            if features['Rainfall'] <= 2092.6950683594:
                                if features['Soil_pH'] <= 7.1150000095:
                                    if features['Wind_Speed'] <= 16.6900005341:
                                        return 10.9681739130
                                    else:
                                        return 9.3154545455
                                else:
                                    if features['Fertilizer_Used'] <= 291.1399993896:
                                        return 9.7034285714
                                    else:
                                        return 10.7376923077
                            else:
                                if features['Fertilizer_Used'] <= 267.3549957275:
                                    if features['P'] <= 63.5000000000:
                                        return 10.4700000000
                                    else:
                                        return 11.5290909091
                                else:
                                    if features['Soil_Moisture'] <= 33.7049999237:
                                        return 11.4735555556
                                    else:
                                        return 12.2248936170
                        else:
                            if features['Fertilizer_Used'] <= 236.1450042725:
                                if features['Rainfall'] <= 2326.3399658203:
                                    if features['Altitude'] <= 1004.0000000000:
                                        return 10.5021428571
                                    else:
                                        return 11.4050000000
                                else:
                                    if features['N'] <= 106.0000000000:
                                        return 11.6060000000
                                    else:
                                        return 12.4340000000
                            else:
                                if features['N'] <= 111.5000000000:
                                    if features['K'] <= 141.0000000000:
                                        return 11.8246428571
                                    else:
                                        return 14.0750000000
                                else:
                                    if features['Rainfall'] <= 2275.1900634766:
                                        return 12.5295652174
                                    else:
                                        return 14.0550000000
        else:
            if features['Crop_Type'] <= 2.5000000000:
                if features['Rainfall'] <= 1361.0650024414:
                    if features['Fertilizer_Used'] <= 148.4700012207:
                        if features['Soil_Moisture'] <= 42.8849983215:
                            if features['K'] <= 117.0000000000:
                                if features['Wind_Speed'] <= 16.6250000000:
                                    if features['Rainfall'] <= 427.5299987793:
                                        return 21.6300000000
                                    else:
                                        return 22.6324000000
                                else:
                                    if features['K'] <= 79.0000000000:
                                        return 21.4466666667
                                    else:
                                        return 20.5750000000
                            else:
                                if features['Soil_pH'] <= 7.1549999714:
                                    if features['Humidity'] <= 32.7049999237:
                                        return 21.5300000000
                                    else:
                                        return 23.6661904762
                                else:
                                    if features['Soil_pH'] <= 7.5249998569:
                                        return 22.7366666667
                                    else:
                                        return 21.9475000000
                        else:
                            if features['K'] <= 56.0000000000:
                                if features['Rainfall'] <= 808.8600158691:
                                    if features['Humidity'] <= 48.0600013733:
                                        return 21.2950000000
                                    else:
                                        return 22.6388888889
                                else:
                                    if features['Sunlight_Hours'] <= 5.0000000000:
                                        return 24.4366666667
                                    else:
                                        return 23.1315384615
                            else:
                                if features['N'] <= 133.5000000000:
                                    if features['Humidity'] <= 38.3400001526:
                                        return 24.6642857143
                                    else:
                                        return 23.4153488372
                                else:
                                    if features['Altitude'] <= 601.5000000000:
                                        return 23.1533333333
                                    else:
                                        return 24.9436363636
                    else:
                        if features['Soil_Moisture'] <= 33.7849998474:
                            if features['Fertilizer_Used'] <= 229.3349990845:
                                if features['N'] <= 126.5000000000:
                                    if features['Rainfall'] <= 687.6349792480:
                                        return 22.4122222222
                                    else:
                                        return 23.5327777778
                                else:
                                    if features['Temperature'] <= 24.3050003052:
                                        return 24.7326666667
                                    else:
                                        return 23.4460000000
                            else:
                                if features['Wind_Speed'] <= 16.1350002289:
                                    if features['Soil_Moisture'] <= 28.2399997711:
                                        return 24.4457407407
                                    else:
                                        return 25.3004000000
                                else:
                                    if features['Fertilizer_Used'] <= 264.5050048828:
                                        return 22.6816666667
                                    else:
                                        return 23.9490909091
                        else:
                            if features['Fertilizer_Used'] <= 238.9399948120:
                                if features['Pesticide_Used'] <= 2.8250000477:
                                    if features['Temperature'] <= 36.5049991608:
                                        return 25.5227777778
                                    else:
                                        return 23.1400000000
                                else:
                                    if features['K'] <= 37.5000000000:
                                        return 23.6500000000
                                    else:
                                        return 24.5740963855
                            else:
                                if features['N'] <= 172.5000000000:
                                    if features['P'] <= 72.5000000000:
                                        return 24.9307777778
                                    else:
                                        return 25.8964285714
                                else:
                                    if features['Pesticide_Used'] <= 10.9349999428:
                                        return 26.4533333333
                                    else:
                                        return 28.7100000000
                else:
                    if features['Fertilizer_Used'] <= 225.2700042725:
                        if features['Soil_Moisture'] <= 43.8850002289:
                            if features['Fertilizer_Used'] <= 128.1800003052:
                                if features['Organic_Carbon'] <= 0.4650000036:
                                    if features['K'] <= 85.0000000000:
                                        return 23.7820000000
                                    else:
                                        return 22.5916666667
                                else:
                                    if features['Organic_Carbon'] <= 0.9950000048:
                                        return 24.5650000000
                                    else:
                                        return 23.8604166667
                            else:
                                if features['Wind_Speed'] <= 8.7849998474:
                                    if features['Soil_pH'] <= 5.2149999142:
                                        return 23.6400000000
                                    else:
                                        return 25.4400000000
                                else:
                                    if features['Rainfall'] <= 2214.0799560547:
                                        return 24.1607017544
                                    else:
                                        return 25.1150000000
                        else:
                            if features['Rainfall'] <= 2187.1400146484:
                                if features['Fertilizer_Used'] <= 85.2599983215:
                                    if features['Organic_Carbon'] <= 1.3600000143:
                                        return 23.8614285714
                                    else:
                                        return 22.3900000000
                                else:
                                    if features['Soil_pH'] <= 5.5699999332:
                                        return 24.4200000000
                                    else:
                                        return 25.4825974026
                            else:
                                if features['K'] <= 110.0000000000:
                                    if features['P'] <= 78.0000000000:
                                        return 25.4944444444
                                    else:
                                        return 26.5592307692
                                else:
                                    if features['N'] <= 75.5000000000:
                                        return 25.8350000000
                                    else:
                                        return 27.4707142857
                    else:
                        if features['Fertilizer_Used'] <= 320.9300079346:
                            if features['Rainfall'] <= 1917.6300048828:
                                if features['Wind_Speed'] <= 4.2100000381:
                                    if features['Region'] <= 3.5000000000:
                                        return 26.9566666667
                                    else:
                                        return 25.2480000000
                                else:
                                    if features['Soil_Moisture'] <= 34.2999992371:
                                        return 24.7778787879
                                    else:
                                        return 25.5560526316
                            else:
                                if features['Soil_Moisture'] <= 39.7799987793:
                                    if features['Wind_Speed'] <= 12.4800000191:
                                        return 26.2169230769
                                    else:
                                        return 25.3871428571
                                else:
                                    if features['Soil_pH'] <= 5.6549999714:
                                        return 26.0757142857
                                    else:
                                        return 27.1253846154
                        else:
                            if features['Soil_Moisture'] <= 30.2899999619:
                                if features['Organic_Carbon'] <= 0.3799999952:
                                    return 29.0900000000
                                else:
                                    if features['Soil_pH'] <= 5.7150001526:
                                        return 25.7050000000
                                    else:
                                        return 26.6714285714
                            else:
                                if features['Fertilizer_Used'] <= 321.2600097656:
                                    return 30.2700000000
                                else:
                                    if features['Soil_pH'] <= 5.0950000286:
                                        return 26.3200000000
                                    else:
                                        return 27.5430769231
            else:
                if features['Fertilizer_Used'] <= 191.8799972534:
                    if features['Rainfall'] <= 1219.7500000000:
                        if features['Fertilizer_Used'] <= 140.6899948120:
                            if features['Soil_Moisture'] <= 52.0650005341:
                                if features['Rainfall'] <= 897.4299926758:
                                    if features['Sunlight_Hours'] <= 8.6800003052:
                                        return 7.0623255814
                                    else:
                                        return 6.2416000000
                                else:
                                    if features['Season'] <= 0.5000000000:
                                        return 6.6345454545
                                    else:
                                        return 7.9451851852
                            else:
                                if features['Soil_pH'] <= 5.2300000191:
                                    if features['Organic_Carbon'] <= 0.8850000203:
                                        return 7.3700000000
                                    else:
                                        return 6.1266666667
                                else:
                                    if features['Altitude'] <= 400.0000000000:
                                        return 7.3114285714
                                    else:
                                        return 8.3425925926
                        else:
                            if features['Pesticide_Used'] <= 11.3499999046:
                                if features['Wind_Speed'] <= 6.0299999714:
                                    if features['Altitude'] <= 727.0000000000:
                                        return 8.5650000000
                                    else:
                                        return 10.1287500000
                                else:
                                    if features['Pesticide_Used'] <= 1.2999999821:
                                        return 7.2420000000
                                    else:
                                        return 8.8037500000
                            else:
                                if features['Soil_Moisture'] <= 35.4449996948:
                                    if features['N'] <= 129.5000000000:
                                        return 6.9135294118
                                    else:
                                        return 8.3325000000
                                else:
                                    if features['Rainfall'] <= 540.1350097656:
                                        return 7.3240000000
                                    else:
                                        return 8.7096153846
                    else:
                        if features['Rainfall'] <= 2162.9500732422:
                            if features['Soil_pH'] <= 7.4049999714:
                                if features['Soil_Moisture'] <= 33.5050010681:
                                    if features['Wind_Speed'] <= 11.7250003815:
                                        return 8.8977500000
                                    else:
                                        return 7.6910000000
                                else:
                                    if features['Fertilizer_Used'] <= 141.0249938965:
                                        return 8.9296721311
                                    else:
                                        return 9.7738636364
                            else:
                                if features['Soil_Moisture'] <= 43.9650001526:
                                    if features['Rainfall'] <= 1344.6649780273:
                                        return 9.1300000000
                                    else:
                                        return 7.3703571429
                                else:
                                    if features['K'] <= 73.0000000000:
                                        return 7.9188888889
                                    else:
                                        return 9.3784615385
                        else:
                            if features['Soil_Moisture'] <= 40.2099990845:
                                if features['Soil_pH'] <= 7.9850001335:
                                    if features['P'] <= 27.5000000000:
                                        return 8.8500000000
                                    else:
                                        return 9.6989189189
                                else:
                                    if features['Pesticide_Used'] <= 6.1300001144:
                                        return 9.3000000000
                                    else:
                                        return 7.6780000000
                            else:
                                if features['Pesticide_Used'] <= 10.8850002289:
                                    if features['K'] <= 112.0000000000:
                                        return 8.9988888889
                                    else:
                                        return 10.4320000000
                                else:
                                    if features['Rainfall'] <= 2497.3499755859:
                                        return 9.8980000000
                                    else:
                                        return 10.7518750000
                else:
                    if features['Rainfall'] <= 1396.0150146484:
                        if features['Soil_Moisture'] <= 42.4000015259:
                            if features['Fertilizer_Used'] <= 234.8050003052:
                                if features['N'] <= 126.5000000000:
                                    if features['Temperature'] <= 35.0450000763:
                                        return 7.4577272727
                                    else:
                                        return 8.5760000000
                                else:
                                    if features['Irrigation_Type'] <= 1.5000000000:
                                        return 8.3955555556
                                    else:
                                        return 9.7787500000
                            else:
                                if features['Soil_pH'] <= 7.1549999714:
                                    if features['Wind_Speed'] <= 8.2950000763:
                                        return 9.8517391304
                                    else:
                                        return 9.0426530612
                                else:
                                    if features['Fertilizer_Used'] <= 326.1699981689:
                                        return 8.3513793103
                                    else:
                                        return 9.4685714286
                        else:
                            if features['K'] <= 78.5000000000:
                                if features['Rainfall'] <= 947.2200012207:
                                    if features['Organic_Carbon'] <= 1.5399999619:
                                        return 8.6525000000
                                    else:
                                        return 10.9166666667
                                else:
                                    if features['Organic_Carbon'] <= 0.8799999952:
                                        return 8.9840000000
                                    else:
                                        return 10.5200000000
                            else:
                                if features['Soil_pH'] <= 5.2149999142:
                                    if features['Fertilizer_Used'] <= 340.1950073242:
                                        return 8.6581818182
                                    else:
                                        return 11.2250000000
                                else:
                                    if features['K'] <= 96.5000000000:
                                        return 11.0585000000
                                    else:
                                        return 10.2212962963
                    else:
                        if features['Fertilizer_Used'] <= 252.4749984741:
                            if features['Soil_Moisture'] <= 42.8150005341:
                                if features['Sunlight_Hours'] <= 4.1500000954:
                                    if features['Humidity'] <= 69.6800003052:
                                        return 5.6100000000
                                    else:
                                        return 7.4800000000
                                else:
                                    if features['Wind_Speed'] <= 5.5250000954:
                                        return 10.6123076923
                                    else:
                                        return 9.6453658537
                            else:
                                if features['N'] <= 107.5000000000:
                                    if features['Fertilizer_Used'] <= 247.3249969482:
                                        return 10.2148888889
                                    else:
                                        return 12.2300000000
                                else:
                                    if features['Sunlight_Hours'] <= 4.4449999332:
                                        return 8.3300000000
                                    else:
                                        return 11.1827272727
                        else:
                            if features['Rainfall'] <= 2091.3850097656:
                                if features['Fertilizer_Used'] <= 319.5099945068:
                                    if features['Soil_pH'] <= 5.5750000477:
                                        return 9.5566666667
                                    else:
                                        return 10.4250632911
                                else:
                                    if features['Soil_pH'] <= 6.8150000572:
                                        return 11.3887179487
                                    else:
                                        return 10.2905882353
                            else:
                                if features['Soil_Moisture'] <= 45.5200004578:
                                    if features['Soil_pH'] <= 5.6100001335:
                                        return 10.4306250000
                                    else:
                                        return 11.2950847458
                                else:
                                    if features['Pesticide_Used'] <= 24.0649995804:
                                        return 11.8887234043
                                    else:
                                        return 9.2300000000
    else:
        if features['Crop_Type'] <= 4.5000000000:
            if features['Fertilizer_Used'] <= 235.1600036621:
                if features['Rainfall'] <= 1314.0249633789:
                    if features['Soil_Moisture'] <= 25.6799993515:
                        if features['N'] <= 40.5000000000:
                            if features['Organic_Carbon'] <= 0.7800000012:
                                if features['P'] <= 54.5000000000:
                                    return 72.9500000000
                                else:
                                    return 71.6100000000
                            else:
                                if features['Sunlight_Hours'] <= 8.7350001335:
                                    if features['P'] <= 53.5000000000:
                                        return 70.4300000000
                                    else:
                                        return 70.1400000000
                                else:
                                    return 70.7800000000
                        else:
                            if features['Rainfall'] <= 587.9899902344:
                                if features['Wind_Speed'] <= 9.6649999619:
                                    if features['Temperature'] <= 21.7150001526:
                                        return 71.9825000000
                                    else:
                                        return 72.9600000000
                                else:
                                    if features['N'] <= 112.0000000000:
                                        return 71.3100000000
                                    else:
                                        return 72.2225000000
                            else:
                                if features['P'] <= 35.0000000000:
                                    if features['Soil_Moisture'] <= 18.8850002289:
                                        return 71.7328571429
                                    else:
                                        return 73.3760000000
                                else:
                                    if features['P'] <= 91.5000000000:
                                        return 73.4105882353
                                    else:
                                        return 75.1133333333
                    else:
                        if features['Fertilizer_Used'] <= 156.5699996948:
                            if features['Soil_pH'] <= 7.1349999905:
                                if features['K'] <= 52.5000000000:
                                    if features['Rainfall'] <= 804.6000061035:
                                        return 71.5666666667
                                    else:
                                        return 73.1278571429
                                else:
                                    if features['N'] <= 139.0000000000:
                                        return 73.6871428571
                                    else:
                                        return 74.5941176471
                            else:
                                if features['Soil_pH'] <= 8.0300002098:
                                    if features['P'] <= 80.5000000000:
                                        return 72.3943478261
                                    else:
                                        return 73.4644444444
                                else:
                                    if features['Rainfall'] <= 795.8699951172:
                                        return 70.7833333333
                                    else:
                                        return 71.9800000000
                        else:
                            if features['Rainfall'] <= 456.9250030518:
                                if features['K'] <= 66.0000000000:
                                    if features['Organic_Carbon'] <= 1.0850000381:
                                        return 72.7600000000
                                    else:
                                        return 71.9566666667
                                else:
                                    if features['Fertilizer_Used'] <= 213.1149978638:
                                        return 73.4025000000
                                    else:
                                        return 74.2933333333
                            else:
                                if features['N'] <= 71.0000000000:
                                    if features['Pesticide_Used'] <= 21.0699996948:
                                        return 73.5413636364
                                    else:
                                        return 74.7225000000
                                else:
                                    if features['Soil_pH'] <= 7.8700001240:
                                        return 74.7422413793
                                    else:
                                        return 73.6890909091
                else:
                    if features['Fertilizer_Used'] <= 128.3300018311:
                        if features['Rainfall'] <= 2167.6550292969:
                            if features['Organic_Carbon'] <= 0.4950000048:
                                if features['Altitude'] <= 217.5000000000:
                                    if features['Pesticide_Used'] <= 7.2250001431:
                                        return 73.9500000000
                                    else:
                                        return 73.4800000000
                                else:
                                    if features['Humidity'] <= 76.9049987793:
                                        return 75.3212500000
                                    else:
                                        return 74.2050000000
                            else:
                                if features['Soil_pH'] <= 5.4900000095:
                                    if features['Altitude'] <= 221.0000000000:
                                        return 71.7966666667
                                    else:
                                        return 73.2066666667
                                else:
                                    if features['Soil_pH'] <= 7.3949999809:
                                        return 74.0950000000
                                    else:
                                        return 73.1794736842
                        else:
                            if features['K'] <= 54.5000000000:
                                if features['Humidity'] <= 49.5949993134:
                                    if features['Temperature'] <= 27.0650005341:
                                        return 76.1150000000
                                    else:
                                        return 74.4233333333
                                else:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 73.7033333333
                                    else:
                                        return 72.1633333333
                            else:
                                if features['N'] <= 109.0000000000:
                                    if features['Temperature'] <= 33.0650005341:
                                        return 74.3831578947
                                    else:
                                        return 75.2357142857
                                else:
                                    if features['Fertilizer_Used'] <= 110.8650016785:
                                        return 74.9745000000
                                    else:
                                        return 76.0780000000
                    else:
                        if features['Wind_Speed'] <= 12.3949999809:
                            if features['K'] <= 125.0000000000:
                                if features['Sunlight_Hours'] <= 9.7650003433:
                                    if features['N'] <= 141.0000000000:
                                        return 75.0758888889
                                    else:
                                        return 76.1266666667
                                else:
                                    if features['Soil_pH'] <= 7.1349999905:
                                        return 74.7888235294
                                    else:
                                        return 73.7760000000
                            else:
                                if features['N'] <= 107.0000000000:
                                    if features['Temperature'] <= 29.7749996185:
                                        return 76.0191666667
                                    else:
                                        return 75.0733333333
                                else:
                                    if features['Soil_Moisture'] <= 46.6400012970:
                                        return 75.9614285714
                                    else:
                                        return 77.1172727273
                        else:
                            if features['Soil_pH'] <= 6.9100000858:
                                if features['Pesticide_Used'] <= 3.3399999142:
                                    if features['Rainfall'] <= 2373.2299804688:
                                        return 73.1600000000
                                    else:
                                        return 74.9466666667
                                else:
                                    if features['Soil_pH'] <= 5.2599999905:
                                        return 74.3476923077
                                    else:
                                        return 75.5184848485
                            else:
                                if features['Soil_Moisture'] <= 64.1250000000:
                                    if features['Altitude'] <= 1430.5000000000:
                                        return 73.7452000000
                                    else:
                                        return 74.5840000000
                                else:
                                    return 76.9100000000
            else:
                if features['Rainfall'] <= 1614.2600097656:
                    if features['Soil_Moisture'] <= 37.9050006866:
                        if features['Soil_pH'] <= 5.4300000668:
                            if features['K'] <= 59.5000000000:
                                if features['K'] <= 47.0000000000:
                                    if features['Irrigation_Type'] <= 0.5000000000:
                                        return 73.8150000000
                                    else:
                                        return 73.0860000000
                                else:
                                    if features['Sunlight_Hours'] <= 9.6250000000:
                                        return 72.2000000000
                                    else:
                                        return 72.3300000000
                            else:
                                if features['Temperature'] <= 34.8850002289:
                                    if features['Rainfall'] <= 1494.2100219727:
                                        return 74.3222222222
                                    else:
                                        return 75.3900000000
                                else:
                                    if features['Humidity'] <= 44.0650005341:
                                        return 73.8500000000
                                    else:
                                        return 72.7350000000
                        else:
                            if features['Rainfall'] <= 989.7100219727:
                                if features['Humidity'] <= 37.9149990082:
                                    if features['K'] <= 84.0000000000:
                                        return 76.1900000000
                                    else:
                                        return 74.6433333333
                                else:
                                    if features['Temperature'] <= 23.8800001144:
                                        return 74.8366666667
                                    else:
                                        return 74.0353125000
                            else:
                                if features['N'] <= 79.0000000000:
                                    if features['Fertilizer_Used'] <= 273.9349975586:
                                        return 74.0655555556
                                    else:
                                        return 74.9944444444
                                else:
                                    if features['Soil_pH'] <= 6.9249999523:
                                        return 76.0600000000
                                    else:
                                        return 75.0475000000
                    else:
                        if features['P'] <= 40.5000000000:
                            if features['P'] <= 33.5000000000:
                                if features['Soil_pH'] <= 5.1250000000:
                                    if features['N'] <= 47.5000000000:
                                        return 76.4600000000
                                    else:
                                        return 73.3480000000
                                else:
                                    if features['Pesticide_Used'] <= 9.6950001717:
                                        return 74.8712500000
                                    else:
                                        return 76.0245454545
                            else:
                                if features['Wind_Speed'] <= 12.0900001526:
                                    if features['N'] <= 34.5000000000:
                                        return 73.2700000000
                                    else:
                                        return 75.0766666667
                                else:
                                    if features['Irrigation_Type'] <= 2.5000000000:
                                        return 73.4975000000
                                    else:
                                        return 72.4250000000
                        else:
                            if features['Rainfall'] <= 828.0950012207:
                                if features['N'] <= 40.5000000000:
                                    return 71.8500000000
                                else:
                                    if features['Fertilizer_Used'] <= 243.4800033569:
                                        return 73.6200000000
                                    else:
                                        return 75.4443181818
                            else:
                                if features['N'] <= 169.0000000000:
                                    if features['Altitude'] <= 1645.0000000000:
                                        return 75.7648979592
                                    else:
                                        return 76.5593750000
                                else:
                                    if features['Region'] <= 2.5000000000:
                                        return 78.6400000000
                                    else:
                                        return 78.5300000000
                else:
                    if features['Fertilizer_Used'] <= 319.0750122070:
                        if features['N'] <= 110.0000000000:
                            if features['Soil_Moisture'] <= 45.0450000763:
                                if features['Soil_pH'] <= 5.1649999619:
                                    if features['Fertilizer_Used'] <= 257.6100006104:
                                        return 74.9600000000
                                    else:
                                        return 73.3900000000
                                else:
                                    if features['Soil_pH'] <= 6.9949998856:
                                        return 75.9893750000
                                    else:
                                        return 74.9226086957
                            else:
                                if features['Humidity'] <= 32.4149990082:
                                    if features['Season'] <= 0.5000000000:
                                        return 74.4000000000
                                    else:
                                        return 73.8800000000
                                else:
                                    if features['K'] <= 100.5000000000:
                                        return 76.6633333333
                                    else:
                                        return 75.8900000000
                        else:
                            if features['P'] <= 68.5000000000:
                                if features['Humidity'] <= 87.3549995422:
                                    if features['P'] <= 16.5000000000:
                                        return 74.1750000000
                                    else:
                                        return 76.1498076923
                                else:
                                    if features['Fertilizer_Used'] <= 296.4750061035:
                                        return 77.2100000000
                                    else:
                                        return 79.9900000000
                            else:
                                if features['Soil_Moisture'] <= 33.5699996948:
                                    if features['K'] <= 68.5000000000:
                                        return 75.4728571429
                                    else:
                                        return 76.7933333333
                                else:
                                    if features['Soil_Moisture'] <= 61.6099987030:
                                        return 77.7255555556
                                    else:
                                        return 80.9900000000
                    else:
                        if features['Rainfall'] <= 1849.0450439453:
                            if features['Rainfall'] <= 1629.6650390625:
                                if features['Rainfall'] <= 1625.1600341797:
                                    return 77.4500000000
                                else:
                                    if features['Sunlight_Hours'] <= 9.3600001335:
                                        return 77.9000000000
                                    else:
                                        return 78.3000000000
                            else:
                                if features['K'] <= 47.0000000000:
                                    if features['Temperature'] <= 26.7350006104:
                                        return 74.9700000000
                                    else:
                                        return 74.4550000000
                                else:
                                    if features['Soil_pH'] <= 6.3699998856:
                                        return 75.5250000000
                                    else:
                                        return 76.9380000000
                        else:
                            if features['Soil_Moisture'] <= 36.1000003815:
                                if features['Pesticide_Used'] <= 7.2800002098:
                                    if features['Sunlight_Hours'] <= 7.8050000668:
                                        return 75.8257142857
                                    else:
                                        return 76.6900000000
                                else:
                                    if features['Humidity'] <= 67.9200019836:
                                        return 77.3650000000
                                    else:
                                        return 76.2966666667
                            else:
                                if features['N'] <= 43.5000000000:
                                    if features['Organic_Carbon'] <= 0.9600000083:
                                        return 78.9800000000
                                    else:
                                        return 79.5100000000
                                else:
                                    if features['Rainfall'] <= 2384.2000732422:
                                        return 77.2329166667
                                    else:
                                        return 78.0272727273
        else:
            if features['Fertilizer_Used'] <= 218.9599990845:
                if features['Rainfall'] <= 965.1600036621:
                    if features['Soil_Moisture'] <= 32.0949993134:
                        if features['Fertilizer_Used'] <= 161.3099975586:
                            if features['N'] <= 142.5000000000:
                                if features['N'] <= 36.0000000000:
                                    return 9.1000000000
                                else:
                                    if features['N'] <= 43.5000000000:
                                        return 4.0700000000
                                    else:
                                        return 5.8860000000
                            else:
                                if features['Region'] <= 2.5000000000:
                                    if features['Humidity'] <= 70.4949989319:
                                        return 6.4475000000
                                    else:
                                        return 5.2000000000
                                else:
                                    if features['Rainfall'] <= 475.6499938965:
                                        return 8.8350000000
                                    else:
                                        return 7.2133333333
                        else:
                            if features['Fertilizer_Used'] <= 205.0800018311:
                                if features['N'] <= 162.5000000000:
                                    if features['K'] <= 138.5000000000:
                                        return 7.7835714286
                                    else:
                                        return 6.1766666667
                                else:
                                    return 5.0300000000
                            else:
                                if features['Season'] <= 1.5000000000:
                                    if features['Pesticide_Used'] <= 20.3400001526:
                                        return 5.7150000000
                                    else:
                                        return 6.1050000000
                                else:
                                    if features['Sunlight_Hours'] <= 6.9500000477:
                                        return 6.5300000000
                                    else:
                                        return 6.2300000000
                    else:
                        if features['Fertilizer_Used'] <= 139.8750000000:
                            if features['K'] <= 139.0000000000:
                                if features['N'] <= 35.5000000000:
                                    if features['Altitude'] <= 1395.0000000000:
                                        return 5.1400000000
                                    else:
                                        return 4.8200000000
                                else:
                                    if features['Rainfall'] <= 845.1250000000:
                                        return 7.1714893617
                                    else:
                                        return 6.2370000000
                            else:
                                if features['Season'] <= 0.5000000000:
                                    if features['Humidity'] <= 63.8550014496:
                                        return 8.3800000000
                                    else:
                                        return 8.9900000000
                                else:
                                    if features['Wind_Speed'] <= 4.1850000620:
                                        return 8.1300000000
                                    else:
                                        return 7.2800000000
                        else:
                            if features['Soil_Moisture'] <= 58.0249996185:
                                if features['Soil_pH'] <= 7.5250000954:
                                    if features['Rainfall'] <= 361.9900054932:
                                        return 6.4950000000
                                    else:
                                        return 7.9368421053
                                else:
                                    if features['Altitude'] <= 1295.0000000000:
                                        return 7.3900000000
                                    else:
                                        return 6.2400000000
                            else:
                                if features['K'] <= 135.0000000000:
                                    if features['Pesticide_Used'] <= 11.4949998856:
                                        return 8.9550000000
                                    else:
                                        return 10.0300000000
                                else:
                                    return 6.6400000000
                else:
                    if features['Soil_Moisture'] <= 28.3550004959:
                        if features['Fertilizer_Used'] <= 71.9700012207:
                            if features['Wind_Speed'] <= 11.1999998093:
                                if features['Organic_Carbon'] <= 0.8750000000:
                                    return 6.4300000000
                                else:
                                    if features['Humidity'] <= 50.0300006866:
                                        return 7.2133333333
                                    else:
                                        return 7.8900000000
                            else:
                                if features['K'] <= 52.5000000000:
                                    if features['P'] <= 47.5000000000:
                                        return 4.7500000000
                                    else:
                                        return 5.2100000000
                                else:
                                    if features['Region'] <= 3.0000000000:
                                        return 6.2966666667
                                    else:
                                        return 5.7600000000
                        else:
                            if features['Temperature'] <= 37.1350002289:
                                if features['Rainfall'] <= 1916.4299926758:
                                    if features['Wind_Speed'] <= 4.4700000286:
                                        return 8.2675000000
                                    else:
                                        return 7.0558181818
                                else:
                                    if features['Temperature'] <= 33.1099987030:
                                        return 8.3859459459
                                    else:
                                        return 7.1510000000
                            else:
                                if features['Pesticide_Used'] <= 23.3750000000:
                                    if features['Rainfall'] <= 1348.7100219727:
                                        return 11.0000000000
                                    else:
                                        return 9.2383333333
                                else:
                                    if features['Wind_Speed'] <= 7.9449998140:
                                        return 8.4300000000
                                    else:
                                        return 7.0500000000
                    else:
                        if features['Rainfall'] <= 1877.0950317383:
                            if features['Fertilizer_Used'] <= 126.8549995422:
                                if features['Wind_Speed'] <= 15.6050000191:
                                    if features['Temperature'] <= 11.7600002289:
                                        return 9.5100000000
                                    else:
                                        return 7.7330952381
                                else:
                                    if features['Altitude'] <= 1025.0000000000:
                                        return 7.2675000000
                                    else:
                                        return 5.5380000000
                            else:
                                if features['Wind_Speed'] <= 8.0599999428:
                                    if features['Organic_Carbon'] <= 0.3649999946:
                                        return 11.6500000000
                                    else:
                                        return 9.0063636364
                                else:
                                    if features['Soil_pH'] <= 7.8899998665:
                                        return 8.4198387097
                                    else:
                                        return 6.1720000000
                        else:
                            if features['Soil_pH'] <= 5.3000001907:
                                if features['Organic_Carbon'] <= 0.3299999982:
                                    return 4.6800000000
                                else:
                                    if features['P'] <= 71.5000000000:
                                        return 8.2614285714
                                    else:
                                        return 7.0000000000
                            else:
                                if features['Soil_pH'] <= 7.7000000477:
                                    if features['Soil_Moisture'] <= 50.1100006104:
                                        return 9.0250549451
                                    else:
                                        return 9.8224561404
                                else:
                                    if features['Wind_Speed'] <= 3.5850000381:
                                        return 9.5416666667
                                    else:
                                        return 7.6108333333
            else:
                if features['Rainfall'] <= 1326.2550048828:
                    if features['Soil_Moisture'] <= 53.4349994659:
                        if features['Fertilizer_Used'] <= 276.5749969482:
                            if features['Wind_Speed'] <= 11.8800001144:
                                if features['Organic_Carbon'] <= 1.2250000238:
                                    if features['Organic_Carbon'] <= 0.4899999946:
                                        return 7.2560000000
                                    else:
                                        return 8.3568000000
                                else:
                                    if features['P'] <= 53.5000000000:
                                        return 7.9166666667
                                    else:
                                        return 9.8114285714
                            else:
                                if features['Season'] <= 1.5000000000:
                                    if features['Pesticide_Used'] <= 6.3450000286:
                                        return 6.9880000000
                                    else:
                                        return 8.1494736842
                                else:
                                    if features['Sunlight_Hours'] <= 4.3400001526:
                                        return 9.1700000000
                                    else:
                                        return 6.8333333333
                        else:
                            if features['Temperature'] <= 22.8550004959:
                                if features['Rainfall'] <= 867.3950195312:
                                    if features['K'] <= 49.5000000000:
                                        return 6.9733333333
                                    else:
                                        return 8.2747826087
                                else:
                                    if features['Organic_Carbon'] <= 1.2349999547:
                                        return 9.6518750000
                                    else:
                                        return 7.7883333333
                            else:
                                if features['P'] <= 47.0000000000:
                                    if features['Soil_pH'] <= 7.2850000858:
                                        return 9.2433333333
                                    else:
                                        return 8.1722222222
                                else:
                                    if features['Wind_Speed'] <= 4.4349999428:
                                        return 10.4133333333
                                    else:
                                        return 9.4362962963
                    else:
                        if features['N'] <= 96.0000000000:
                            if features['Sunlight_Hours'] <= 6.4249999523:
                                if features['Rainfall'] <= 1041.5849914551:
                                    if features['Soil_Moisture'] <= 57.9549999237:
                                        return 7.6750000000
                                    else:
                                        return 8.4100000000
                                else:
                                    if features['P'] <= 53.0000000000:
                                        return 8.7450000000
                                    else:
                                        return 9.6850000000
                            else:
                                if features['Wind_Speed'] <= 7.2250001431:
                                    if features['Season'] <= 0.5000000000:
                                        return 10.9700000000
                                    else:
                                        return 9.9733333333
                                else:
                                    if features['Temperature'] <= 15.5500001907:
                                        return 9.9500000000
                                    else:
                                        return 8.7885714286
                        else:
                            if features['Soil_pH'] <= 8.1849999428:
                                if features['Pesticide_Used'] <= 12.4100003242:
                                    if features['Temperature'] <= 13.3650002480:
                                        return 8.8000000000
                                    else:
                                        return 10.7194736842
                                else:
                                    if features['Altitude'] <= 1425.0000000000:
                                        return 10.0885714286
                                    else:
                                        return 8.8950000000
                            else:
                                return 6.9200000000
                else:
                    if features['Soil_Moisture'] <= 34.8450012207:
                        if features['Soil_pH'] <= 6.0499999523:
                            if features['Fertilizer_Used'] <= 319.8450012207:
                                if features['Organic_Carbon'] <= 0.4149999917:
                                    if features['Rainfall'] <= 2510.1599121094:
                                        return 11.5100000000
                                    else:
                                        return 10.1650000000
                                else:
                                    if features['Soil_Moisture'] <= 17.7150001526:
                                        return 7.1800000000
                                    else:
                                        return 8.6437500000
                            else:
                                if features['Organic_Carbon'] <= 0.8650000095:
                                    if features['Altitude'] <= 1299.5000000000:
                                        return 10.9833333333
                                    else:
                                        return 12.6300000000
                                else:
                                    if features['Soil_Type'] <= 2.0000000000:
                                        return 8.6766666667
                                    else:
                                        return 9.8066666667
                        else:
                            if features['Soil_pH'] <= 7.1349999905:
                                if features['Rainfall'] <= 2121.2449951172:
                                    if features['N'] <= 59.5000000000:
                                        return 9.2962500000
                                    else:
                                        return 10.4528571429
                                else:
                                    if features['Organic_Carbon'] <= 1.5750000477:
                                        return 11.1094117647
                                    else:
                                        return 9.8400000000
                            else:
                                if features['Sunlight_Hours'] <= 10.9600000381:
                                    if features['Sunlight_Hours'] <= 4.1649999619:
                                        return 11.0200000000
                                    else:
                                        return 9.0042500000
                                else:
                                    return 12.7300000000
                    else:
                        if features['Rainfall'] <= 2516.1051025391:
                            if features['Fertilizer_Used'] <= 260.3099975586:
                                if features['P'] <= 59.5000000000:
                                    if features['Soil_Moisture'] <= 52.3500003815:
                                        return 8.7615384615
                                    else:
                                        return 9.8775000000
                                else:
                                    if features['Wind_Speed'] <= 5.8499999046:
                                        return 10.9600000000
                                    else:
                                        return 9.9133333333
                            else:
                                if features['Rainfall'] <= 1869.3649902344:
                                    if features['Humidity'] <= 57.3800010681:
                                        return 9.6195652174
                                    else:
                                        return 10.5311764706
                                else:
                                    if features['Rainfall'] <= 2232.9799804688:
                                        return 11.3584000000
                                    else:
                                        return 10.5713333333
                        else:
                            if features['Soil_Moisture'] <= 53.2099990845:
                                if features['Altitude'] <= 972.5000000000:
                                    if features['Humidity'] <= 54.8250007629:
                                        return 10.9840000000
                                    else:
                                        return 12.1983333333
                                else:
                                    if features['Pesticide_Used'] <= 15.9649996758:
                                        return 10.6066666667
                                    else:
                                        return 9.3350000000
                            else:
                                if features['P'] <= 60.5000000000:
                                    if features['Organic_Carbon'] <= 1.4650000334:
                                        return 11.1940000000
                                    else:
                                        return 12.0566666667
                                else:
                                    if features['Soil_pH'] <= 5.4100000858:
                                        return 11.1200000000
                                    else:
                                        return 12.8785714286
