`ifndef CYP_MAIN_SEQUENCE_SVH
`define CYP_MAIN_SEQUENCE_SVH

class cyp_main_sequence extends uvm_sequence#(cyp_seq_item);

    `uvm_object_utils(cyp_main_sequence)

    // --- 1. File handles ---
    int fp_Altitude, fp_Crop_Type, fp_Fertilizer_Used, fp_Humidity, fp_Irrigation_Type;
    int fp_K, fp_N, fp_Organic_Carbon, fp_P, fp_Pesticide_Used;
    int fp_Rainfall, fp_Region, fp_Season, fp_Soil_Moisture, fp_Soil_pH;
    int fp_Soil_Type, fp_Sunlight_Hours, fp_Temperature, fp_Wind_Speed;

    // --- 2. Percentage of rows to use ---
    int PERCENTAGE;

    // Constructor
    function new(string name = "cyp_main_sequence", uvm_component parent = null, int percent = 100);
        super.new(name);
        PERCENTAGE = percent;
    endfunction : new

    // --- Main task ---
    task body;
        string line;
        int total_lines = 0;
        int cycles_to_run;
        int i;
        cyp_seq_item seq_item;

        // --- 3. Open all input files ---
        fp_Altitude         = $fopen("design/cyp_design/hex_outputs/Altitude.hex","r");
        fp_Crop_Type        = $fopen("design/cyp_design/hex_outputs/Crop_Type.hex","r");
        fp_Fertilizer_Used  = $fopen("design/cyp_design/hex_outputs/Fertilizer_Used.hex","r");
        fp_Humidity         = $fopen("design/cyp_design/hex_outputs/Humidity.hex","r");
        fp_Irrigation_Type  = $fopen("design/cyp_design/hex_outputs/Irrigation_Type.hex","r");
        fp_K                = $fopen("design/cyp_design/hex_outputs/K.hex","r");
        fp_N                = $fopen("design/cyp_design/hex_outputs/N.hex","r");
        fp_Organic_Carbon   = $fopen("design/cyp_design/hex_outputs/Organic_Carbon.hex","r");
        fp_P                = $fopen("design/cyp_design/hex_outputs/P.hex","r");
        fp_Pesticide_Used   = $fopen("design/cyp_design/hex_outputs/Pesticide_Used.hex","r");
        fp_Rainfall         = $fopen("design/cyp_design/hex_outputs/Rainfall.hex","r");
        fp_Region           = $fopen("design/cyp_design/hex_outputs/Region.hex","r");
        fp_Season           = $fopen("design/cyp_design/hex_outputs/Season.hex","r");
        fp_Soil_Moisture    = $fopen("design/cyp_design/hex_outputs/Soil_Moisture.hex","r");
        fp_Soil_pH          = $fopen("design/cyp_design/hex_outputs/Soil_pH.hex","r");
        fp_Soil_Type        = $fopen("design/cyp_design/hex_outputs/Soil_Type.hex","r");
        fp_Sunlight_Hours   = $fopen("design/cyp_design/hex_outputs/Sunlight_Hours.hex","r");
        fp_Temperature      = $fopen("design/cyp_design/hex_outputs/Temperature.hex","r");
        fp_Wind_Speed       = $fopen("design/cyp_design/hex_outputs/Wind_Speed.hex","r");

        // --- 4. Count total lines in Altitude file ---
        while (!$feof(fp_Altitude)) begin
            $fgets(line, fp_Altitude);
            total_lines++;
        end
        cycles_to_run = (total_lines * PERCENTAGE) / 100;

        // --- 5. Rewind all files ---
        $fclose(fp_Altitude);         fp_Altitude        = $fopen("design/cyp_design/hex_outputs/Altitude.hex","r");
        $fclose(fp_Crop_Type);        fp_Crop_Type       = $fopen("design/cyp_design/hex_outputs/Crop_Type.hex","r");
        $fclose(fp_Fertilizer_Used);  fp_Fertilizer_Used = $fopen("design/cyp_design/hex_outputs/Fertilizer_Used.hex","r");
        $fclose(fp_Humidity);         fp_Humidity        = $fopen("design/cyp_design/hex_outputs/Humidity.hex","r");
        $fclose(fp_Irrigation_Type);  fp_Irrigation_Type = $fopen("design/cyp_design/hex_outputs/Irrigation_Type.hex","r");
        $fclose(fp_K);                fp_K               = $fopen("design/cyp_design/hex_outputs/K.hex","r");
        $fclose(fp_N);                fp_N               = $fopen("design/cyp_design/hex_outputs/N.hex","r");
        $fclose(fp_Organic_Carbon);   fp_Organic_Carbon  = $fopen("design/cyp_design/hex_outputs/Organic_Carbon.hex","r");
        $fclose(fp_P);                fp_P               = $fopen("design/cyp_design/hex_outputs/P.hex","r");
        $fclose(fp_Pesticide_Used);   fp_Pesticide_Used  = $fopen("design/cyp_design/hex_outputs/Pesticide_Used.hex","r");
        $fclose(fp_Rainfall);         fp_Rainfall        = $fopen("design/cyp_design/hex_outputs/Rainfall.hex","r");
        $fclose(fp_Region);           fp_Region          = $fopen("design/cyp_design/hex_outputs/Region.hex","r");
        $fclose(fp_Season);           fp_Season          = $fopen("design/cyp_design/hex_outputs/Season.hex","r");
        $fclose(fp_Soil_Moisture);    fp_Soil_Moisture   = $fopen("design/cyp_design/hex_outputs/Soil_Moisture.hex","r");
        $fclose(fp_Soil_pH);          fp_Soil_pH         = $fopen("design/cyp_design/hex_outputs/Soil_pH.hex","r");
        $fclose(fp_Soil_Type);        fp_Soil_Type       = $fopen("design/cyp_design/hex_outputs/Soil_Type.hex","r");
        $fclose(fp_Sunlight_Hours);   fp_Sunlight_Hours  = $fopen("design/cyp_design/hex_outputs/Sunlight_Hours.hex","r");
        $fclose(fp_Temperature);      fp_Temperature     = $fopen("design/cyp_design/hex_outputs/Temperature.hex","r");
        $fclose(fp_Wind_Speed);       fp_Wind_Speed      = $fopen("design/cyp_design/hex_outputs/Wind_Speed.hex","r");

        // --- 6. Run only the desired percentage of cycles ---
        for (i = 0; i < cycles_to_run; i++) begin
            seq_item = cyp_seq_item::type_id::create("seq_item");

            $fgets(line, fp_Altitude);         $sscanf(line, "%h", seq_item.Altitude);
            $fgets(line, fp_Crop_Type);        $sscanf(line, "%h", seq_item.Crop_Type);
            $fgets(line, fp_Fertilizer_Used);  $sscanf(line, "%h", seq_item.Fertilizer_Used);
            $fgets(line, fp_Humidity);         $sscanf(line, "%h", seq_item.Humidity);
            $fgets(line, fp_Irrigation_Type);  $sscanf(line, "%h", seq_item.Irrigation_Type);
            $fgets(line, fp_K);                $sscanf(line, "%h", seq_item.K);
            $fgets(line, fp_N);                $sscanf(line, "%h", seq_item.N);
            $fgets(line, fp_Organic_Carbon);   $sscanf(line, "%h", seq_item.Organic_Carbon);
            $fgets(line, fp_P);                $sscanf(line, "%h", seq_item.P);
            $fgets(line, fp_Pesticide_Used);   $sscanf(line, "%h", seq_item.Pesticide_Used);
            $fgets(line, fp_Rainfall);         $sscanf(line, "%h", seq_item.Rainfall);
            $fgets(line, fp_Region);           $sscanf(line, "%h", seq_item.Region);
            $fgets(line, fp_Season);           $sscanf(line, "%h", seq_item.Season);
            $fgets(line, fp_Soil_Moisture);    $sscanf(line, "%h", seq_item.Soil_Moisture);
            $fgets(line, fp_Soil_pH);          $sscanf(line, "%h", seq_item.Soil_pH);
            $fgets(line, fp_Soil_Type);        $sscanf(line, "%h", seq_item.Soil_Type);
            $fgets(line, fp_Sunlight_Hours);   $sscanf(line, "%h", seq_item.Sunlight_Hours);
            $fgets(line, fp_Temperature);      $sscanf(line, "%h", seq_item.Temperature);
            $fgets(line, fp_Wind_Speed);       $sscanf(line, "%h", seq_item.Wind_Speed);

            start_item(seq_item);
            finish_item(seq_item);
        end

        // --- 7. Close all files ---
        $fclose(fp_Altitude);         $fclose(fp_Crop_Type);        $fclose(fp_Fertilizer_Used);  $fclose(fp_Humidity);
        $fclose(fp_Irrigation_Type);  $fclose(fp_K);                $fclose(fp_N);                $fclose(fp_Organic_Carbon);
        $fclose(fp_P);                $fclose(fp_Pesticide_Used);   $fclose(fp_Rainfall);         $fclose(fp_Region);
        $fclose(fp_Season);           $fclose(fp_Soil_Moisture);    $fclose(fp_Soil_pH);          $fclose(fp_Soil_Type);
        $fclose(fp_Sunlight_Hours);   $fclose(fp_Temperature);      $fclose(fp_Wind_Speed);

    endtask : body

endclass : cyp_main_sequence

`endif // CYP_MAIN_SEQUENCE_SVH