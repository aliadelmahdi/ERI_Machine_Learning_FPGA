`ifndef CYP_RESET_SEQUENCE_SVH
`define CYP_RESET_SEQUENCE_SVH

    class cyp_reset_sequence extends cyp_main_sequence;

        `uvm_object_utils (cyp_reset_sequence)
        cyp_seq_item seq_item;

        // Default Constructor
        function new (string name = "cyp_reset_sequence");
            super.new(name);
        endfunction : new

       task body;
            // Create a sequence item
            seq_item = cyp_seq_item::type_id::create("seq_item");

            // Start the sequence item
            start_item(seq_item);

                // Set all DUT signals to reset values
                seq_item.rst             = 1'b1;      // Assert reset
                seq_item.N               = 64'd0;
                seq_item.P               = 64'd0;
                seq_item.K               = 64'd0;
                seq_item.Soil_pH         = 64'd0;
                seq_item.Soil_Moisture   = 64'd0;
                seq_item.Organic_Carbon  = 64'd0;
                seq_item.Temperature     = 64'd0;
                seq_item.Rainfall        = 64'd0;
                seq_item.Sunlight_Hours  = 64'd0;
                seq_item.Wind_Speed      = 64'd0;
                seq_item.Crop_Type       = 64'd0;
                seq_item.Fertilizer_Used = 64'd0;
                seq_item.Altitude        = 64'd0;
                seq_item.Region          = 64'd0;
                seq_item.Humidity        = 64'd0;
                seq_item.Irrigation_Type = 64'd0;
                seq_item.Season          = 64'd0;
                seq_item.Pesticide_Used  = 64'd0;
                seq_item.Soil_Type       = 64'd0;

            // Finish the sequence item
            finish_item(seq_item);
        endtask : body
        
    endclass : cyp_reset_sequence

`endif // CYP_RESET_SEQUENCE_SVH