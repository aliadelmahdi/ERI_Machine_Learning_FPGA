`ifndef CYP_DRIVER_SVH
`define CYP_DRIVER_SVH

    class cyp_driver extends uvm_driver #(cyp_seq_item);
         `uvm_component_utils(cyp_driver)
        virtual CYP_if.driver cyp_if;
        cyp_seq_item stimulus_seq_item;

        // Default Constructor
        function new(string name = "cyp_driver", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
        endfunction : build_phase

        // Connect Phase
        function void connect_phase(uvm_phase phase);
			super.connect_phase(phase);
		endfunction : connect_phase
        
        // Run Phase
        task run_phase(uvm_phase phase);
        super.run_phase(phase);

        forever begin
            // Create a new sequence item
            stimulus_seq_item = cyp_seq_item::type_id::create("stimulus_seq_item");

            // Get the next item from the sequencer
            seq_item_port.get_next_item(stimulus_seq_item);

            
            cyp_if.rst              = stimulus_seq_item.rst;
            cyp_if.N                = stimulus_seq_item.N;
            cyp_if.P                = stimulus_seq_item.P;
            cyp_if.K                = stimulus_seq_item.K;
            cyp_if.Soil_pH          = stimulus_seq_item.Soil_pH;
            cyp_if.Soil_Moisture    = stimulus_seq_item.Soil_Moisture;
            cyp_if.Organic_Carbon   = stimulus_seq_item.Organic_Carbon;
            cyp_if.Temperature      = stimulus_seq_item.Temperature;
            cyp_if.Rainfall         = stimulus_seq_item.Rainfall;
            cyp_if.Sunlight_Hours   = stimulus_seq_item.Sunlight_Hours;
            cyp_if.Wind_Speed       = stimulus_seq_item.Wind_Speed;
            cyp_if.Crop_Type        = stimulus_seq_item.Crop_Type;
            cyp_if.Fertilizer_Used  = stimulus_seq_item.Fertilizer_Used;
            cyp_if.Altitude         = stimulus_seq_item.Altitude;
            cyp_if.Region           = stimulus_seq_item.Region;
            cyp_if.Humidity         = stimulus_seq_item.Humidity;
            cyp_if.Irrigation_Type  = stimulus_seq_item.Irrigation_Type;
            cyp_if.Season           = stimulus_seq_item.Season;
            cyp_if.Pesticide_Used   = stimulus_seq_item.Pesticide_Used;
            cyp_if.Soil_Type        = stimulus_seq_item.Soil_Type;
            @(negedge cyp_if.clk);
            // Inform the sequencer that the item is done
            seq_item_port.item_done();
            `uvm_info("RUN_PHASE", stimulus_seq_item.sprint(), UVM_HIGH)
        end
    endtask : run_phase

    endclass : cyp_driver

`endif // CYP_DRIVER_SVH