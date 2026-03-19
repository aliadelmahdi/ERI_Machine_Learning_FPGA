def predict_tree(features):
    if features['Fertilizer_Used'] <= 192.3549957275:
        if features['Rainfall'] <= 1173.4500122070:
            if features['Fertilizer_Used'] <= 130.1450042725:
                if features['Soil_Moisture'] <= 39.8999996185:
                    if features['Temperature'] <= 13.0100002289:
                        if features['Humidity'] <= 56.4400005341:
                            return 9.5433333333
                        else:
                            return 7.9666666667
                    else:
                        if features['Pesticide_Used'] <= 13.2100000381:
                            return 6.9458620690
                        else:
                            return 7.6466666667
                else:
                    if features['Humidity'] <= 84.5950012207:
                        if features['Rainfall'] <= 605.0899963379:
                            return 7.6545000000
                        else:
                            return 8.6161538462
                    else:
                        if features['Rainfall'] <= 731.6000061035:
                            return 9.1280000000
                        else:
                            return 10.3300000000
            else:
                if features['K'] <= 141.0000000000:
                    if features['Soil_Moisture'] <= 38.5550003052:
                        if features['Sunlight_Hours'] <= 5.0949997902:
                            return 9.0083333333
                        else:
                            return 8.1092500000
                    else:
                        if features['Temperature'] <= 22.1149997711:
                            return 9.6135000000
                        else:
                            return 8.7443589744
                else:
                    if features['Wind_Speed'] <= 5.9100000858:
                        if features['Pesticide_Used'] <= 4.9500000477:
                            return 11.5700000000
                        else:
                            return 10.5750000000
                    else:
                        if features['Temperature'] <= 23.3149995804:
                            return 10.2900000000
                        else:
                            return 8.9850000000
        else:
            if features['Rainfall'] <= 2229.6900634766:
                if features['N'] <= 138.5000000000:
                    if features['K'] <= 101.5000000000:
                        if features['Soil_Moisture'] <= 40.1499996185:
                            return 8.6291525424
                        else:
                            return 9.4336363636
                    else:
                        if features['Fertilizer_Used'] <= 158.3649978638:
                            return 9.4460416667
                        else:
                            return 10.4530769231
                else:
                    if features['Humidity'] <= 36.5100002289:
                        if features['Region'] <= 2.0000000000:
                            return 7.5100000000
                        else:
                            return 8.4366666667
                    else:
                        if features['Pesticide_Used'] <= 16.7849998474:
                            return 10.3656818182
                        else:
                            return 9.4829411765
            else:
                if features['Fertilizer_Used'] <= 122.6649971008:
                    if features['Soil_Moisture'] <= 24.6250000000:
                        if features['Soil_pH'] <= 5.9349999428:
                            return 8.2720000000
                        else:
                            return 9.3214285714
                    else:
                        if features['Soil_Moisture'] <= 62.1700000763:
                            return 9.8634693878
                        else:
                            return 12.4500000000
                else:
                    if features['Soil_pH'] <= 7.8949999809:
                        if features['Wind_Speed'] <= 6.3000001907:
                            return 11.5382352941
                        else:
                            return 10.5648888889
                    else:
                        if features['Humidity'] <= 63.2150001526:
                            return 6.8100000000
                        else:
                            return 9.1500000000
    else:
        if features['Rainfall'] <= 1543.9949951172:
            if features['Soil_Moisture'] <= 40.8950004578:
                if features['Fertilizer_Used'] <= 270.3550109863:
                    if features['Soil_Moisture'] <= 22.7049999237:
                        if features['Humidity'] <= 86.1199989319:
                            return 8.2152941176
                        else:
                            return 10.0300000000
                    else:
                        if features['Rainfall'] <= 808.1700134277:
                            return 8.9202941176
                        else:
                            return 9.8673529412
                else:
                    if features['Temperature'] <= 20.8099994659:
                        if features['Altitude'] <= 1381.5000000000:
                            return 9.5960869565
                        else:
                            return 8.5562500000
                    else:
                        if features['Soil_pH'] <= 5.0999999046:
                            return 8.0150000000
                        else:
                            return 10.5445454545
            else:
                if features['Fertilizer_Used'] <= 310.6400146484:
                    if features['Rainfall'] <= 1086.3599853516:
                        if features['Fertilizer_Used'] <= 265.8900146484:
                            return 9.7197959184
                        else:
                            return 10.5750000000
                    else:
                        if features['Pesticide_Used'] <= 20.8399991989:
                            return 11.0504166667
                        else:
                            return 9.4511111111
                else:
                    if features['Rainfall'] <= 900.2449951172:
                        if features['N'] <= 131.0000000000:
                            return 10.4438461538
                        else:
                            return 12.6325000000
                    else:
                        if features['Wind_Speed'] <= 9.0599999428:
                            return 12.6281818182
                        else:
                            return 11.1980000000
        else:
            if features['Soil_Moisture'] <= 53.3899993896:
                if features['Fertilizer_Used'] <= 305.4100036621:
                    if features['Rainfall'] <= 2342.6300048828:
                        if features['Wind_Speed'] <= 14.0649995804:
                            return 10.7487096774
                        else:
                            return 9.7032258065
                    else:
                        if features['Soil_Moisture'] <= 45.3800010681:
                            return 11.2472131148
                        else:
                            return 12.4400000000
                else:
                    if features['Rainfall'] <= 2115.1149902344:
                        if features['Pesticide_Used'] <= 4.2650001049:
                            return 12.1875000000
                        else:
                            return 11.2267857143
                    else:
                        if features['Soil_Moisture'] <= 32.4549999237:
                            return 11.7320000000
                        else:
                            return 12.6484000000
            else:
                if features['Fertilizer_Used'] <= 233.6550064087:
                    if features['Rainfall'] <= 2227.2099609375:
                        if features['Altitude'] <= 1037.0000000000:
                            return 10.1911111111
                        else:
                            return 11.8200000000
                    else:
                        if features['Wind_Speed'] <= 3.7849999666:
                            return 13.3950000000
                        else:
                            return 11.7990000000
                else:
                    if features['N'] <= 111.5000000000:
                        if features['Temperature'] <= 11.6949996948:
                            return 14.5450000000
                        else:
                            return 11.9177142857
                    else:
                        if features['Rainfall'] <= 2288.9750976562:
                            return 12.4613043478
                        else:
                            return 13.8040000000
