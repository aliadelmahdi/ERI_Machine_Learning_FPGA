`ifndef CYP_SEQ_ITEM_SVH
`define CYP_SEQ_ITEM_SVH

    class cyp_seq_item extends uvm_sequence_item;
    
        // RTL Design Signals
        //inputs
        logic        rst;

        logic [63:0] N;
        logic [63:0] P;
        logic [63:0] K;
        logic [63:0] Soil_pH;
        logic [63:0] Soil_Moisture;
        logic [63:0] Organic_Carbon;
        logic [63:0] Temperature;
        logic [63:0] Rainfall;
        logic [63:0] Sunlight_Hours;
        logic [63:0] Wind_Speed;
        logic [63:0] Crop_Type;
        logic [63:0] Fertilizer_Used;
        logic [63:0] Altitude;
        logic [63:0] Region;
        logic [63:0] Humidity;
        logic [63:0] Irrigation_Type;
        logic [63:0] Season;
        logic [63:0] Pesticide_Used;
        logic [63:0] Soil_Type;

        //outputs
        logic [63:0] Yield_Int;
        logic        ready;
        
        // Golden Model Signals
        logic [63:0] actual_yield;
        logic [63:0] predicted_yield;


        // Default Constructor
        function new(string name = "cyp_seq_item");
            super.new(name);
        endfunction : new

        `uvm_object_utils_begin(cyp_seq_item)
            // `uvm_field_int(X, UVM_DEFAULT)
            // Golden Model
            // `uvm_field_int(X, UVM_DEFAULT)
        `uvm_object_utils_end

        constraint c_preset_distribution {
            rst dist { `LOW := 97, `HIGH := 3 };
        }
        
    endclass : cyp_seq_item

`endif // CYP_SEQ_ITEM_SVH