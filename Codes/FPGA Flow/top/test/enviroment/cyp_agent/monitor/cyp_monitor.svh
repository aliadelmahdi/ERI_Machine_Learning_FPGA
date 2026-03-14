`ifndef CYP_MONITOR_SVH
`define CYP_MONITOR_SVH

    class cyp_monitor extends uvm_monitor;

        `uvm_component_utils (cyp_monitor)
        virtual CYP_if.monitor cyp_if;
        cyp_seq_item response_seq_item;
        uvm_analysis_port #(cyp_seq_item) monitor_ap;

        // Default Constructor
        function new(string name = "cyp_monitor",uvm_component parent);
            super.new(name,parent);
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            monitor_ap = new ("monitor_ap",this);
        endfunction : build_phase

        // Connect Phase
        function void connect_phase(uvm_phase phase);
			super.connect_phase(phase);
		endfunction : connect_phase

        // Run Phase
        task run_phase(uvm_phase phase);
            super.run_phase(phase);

            forever begin
                // Create a new sequence item to hold monitored data
                response_seq_item = cyp_seq_item::type_id::create("response_seq_item");

                // Sample DUT signals on the negative edge of clk
                @(negedge cyp_if.clk);
                response_seq_item.rst             = cyp_if.rst;
                response_seq_item.N               = cyp_if.N;
                response_seq_item.P               = cyp_if.P;
                response_seq_item.K               = cyp_if.K;
                response_seq_item.Soil_pH         = cyp_if.Soil_pH;
                response_seq_item.Soil_Moisture   = cyp_if.Soil_Moisture;
                response_seq_item.Organic_Carbon  = cyp_if.Organic_Carbon;
                response_seq_item.Temperature     = cyp_if.Temperature;
                response_seq_item.Rainfall        = cyp_if.Rainfall;
                response_seq_item.Sunlight_Hours  = cyp_if.Sunlight_Hours;
                response_seq_item.Wind_Speed      = cyp_if.Wind_Speed;
                response_seq_item.Crop_Type       = cyp_if.Crop_Type;
                response_seq_item.Fertilizer_Used = cyp_if.Fertilizer_Used;
                response_seq_item.Altitude        = cyp_if.Altitude;
                response_seq_item.Region          = cyp_if.Region;
                response_seq_item.Humidity        = cyp_if.Humidity;
                response_seq_item.Irrigation_Type = cyp_if.Irrigation_Type;
                response_seq_item.Season          = cyp_if.Season;
                response_seq_item.Pesticide_Used  = cyp_if.Pesticide_Used;
                response_seq_item.Soil_Type       = cyp_if.Soil_Type;

                // Capture DUT outputs
                response_seq_item.Yield_Int       = cyp_if.Yield_Int;
                response_seq_item.ready           = cyp_if.ready;

                // Write the monitored item to the analysis port
                monitor_ap.write(response_seq_item);

                // Optional: print for debugging
                `uvm_info("RUN_PHASE", response_seq_item.sprint(), UVM_HIGH)
            end
        endtask : run_phase
        
    endclass : cyp_monitor

`endif // CYP_MONITOR_SVH
