`ifndef CYP_AGENT_SVH
`define CYP_AGENT_SVH

    class cyp_agent extends uvm_agent;
      
      `uvm_component_utils(cyp_agent)
        cyp_sequencer cyp_seqr;
        cyp_driver cyp_drv;
        cyp_monitor cyp_mon;
        cyp_config cyp_cnfg;
        uvm_analysis_port #(cyp_seq_item) agent_ap;

        // Default Constructor
        function new(string name = "cyp_agent", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);

            if(!uvm_config_db #(cyp_config)::get(this,"","CFG",cyp_cnfg)) 
                `uvm_fatal ("build_phase","Unable to get the configuration object from the database")
            
            cyp_drv = cyp_driver::type_id::create("cyp_drv",this);
            cyp_seqr = cyp_sequencer::type_id::create("cyp_seqr",this);
            cyp_mon = cyp_monitor::type_id::create("cyp_mon",this);
            agent_ap = new("agent_ap",this);
        endfunction : build_phase

        // Connect Phase
        function void connect_phase(uvm_phase phase);
            cyp_drv.cyp_if = cyp_cnfg.cyp_if;
            cyp_mon.cyp_if = cyp_cnfg.cyp_if;
            cyp_drv.seq_item_port.connect(cyp_seqr.seq_item_export);
            cyp_mon.monitor_ap.connect(agent_ap);
        endfunction : connect_phase

        // Run Phase
        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_agent

`endif // CYP_AGENT_SVH