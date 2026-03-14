`ifndef CYP_ENV_SVH
`define CYP_ENV_SVH

    class cyp_env extends uvm_env;

        `uvm_component_utils(cyp_env)

        cyp_agent agent;

        cyp_scoreboard cyp_sb;
        cyp_coverage cyp_cov;
        
        // Default Constructor
        function new (string name = "cyp_env", uvm_component parent);
            super.new(name,parent);
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase );
        super.build_phase (phase);
            agent = cyp_agent::type_id::create("agent",this);
            cyp_sb= cyp_scoreboard::type_id::create("cyp_sb",this);
            cyp_cov= cyp_coverage::type_id::create("cyp_cov",this);
        endfunction : build_phase

        // Connect Phase
        function void connect_phase (uvm_phase phase );
            agent.agent_ap.connect(cyp_sb.sb_export);
            agent.agent_ap.connect(cyp_cov.cov_export);
        endfunction : connect_phase

        // Run Phase
        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_env
    
`endif // CYP_ENV_SVH