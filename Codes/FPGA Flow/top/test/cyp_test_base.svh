`ifndef CYP_TEST_BASE_SVH
`define CYP_TEST_BASE_SVH

class cyp_test_base extends uvm_test;
         `uvm_component_utils(cyp_test_base)
        cyp_env env; // Enviroment handle to the CYP
        cyp_config cnfg; // configuration
        virtual CYP_if cyp_if; // Virtual interface handle
        cyp_main_sequence cyp_main_seq; // main test sequence
        cyp_reset_sequence cyp_reset_seq; // reset test sequence

        // Default constructor
        function new(string name = "cyp_test_base", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase);
            super.build_phase(phase); // Call parent class's build_phase
            // Create instances from the UVM factory
            env = cyp_env::type_id::create("env",this);
            cnfg = cyp_config::type_id::create("cyp_config",this);
            cyp_main_seq = cyp_main_sequence::type_id::create("main_seq", this); // only name & parent
            cyp_main_seq.PERCENTAGE = 100;  
            cyp_reset_seq = cyp_reset_sequence::type_id::create("reset_seq",this);

            // Retrieve the virtual interface for CYP master from the UVM configuration database
            if(!uvm_config_db #(virtual CYP_if)::get(this,"","cyp_if",cnfg.cyp_if))  
                `uvm_fatal("build_phase" , " test - Unable to get the master virtual interface of the CYP form the configuration database");
        

            uvm_config_db # (cyp_config)::set(this , "*" , "CFG",cnfg);
        endfunction : build_phase

        // Run Phase
        task run_phase(uvm_phase phase);
            super.run_phase(phase); // Call parent class's run phase
            phase.raise_objection(this); // Raise an objection to prevent the test from ending
            // Reset sequence
            `uvm_info("run_phase","stimulus Generation started",UVM_LOW)
            cyp_reset_seq.start(env.agent.cyp_seqr);
            `uvm_info("run_phase","Reset Deasserted",UVM_LOW)
            // Main Sequence
            `uvm_info("run_phase", "Stimulus Generation Started",UVM_LOW)
            cyp_main_seq.start(env.agent.cyp_seqr);
            `uvm_info("run_phase", "Stimulus Generation Ended",UVM_LOW) 

            phase.drop_objection(this); // Drop the objection to allow the test to complete
        endtask : run_phase

endclass : cyp_test_base

`endif // CYP_TEST_BASE_SVH