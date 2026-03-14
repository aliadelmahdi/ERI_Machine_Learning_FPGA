`ifndef CYP_COVERAGE_SVH
`define CYP_COVERAGE_SVH

    class cyp_coverage extends uvm_component;

       `uvm_component_utils(cyp_coverage)

        // Analysis Export for receiving transactions from monitors
        uvm_analysis_export #(cyp_seq_item) cov_export;
        uvm_tlm_analysis_fifo #(cyp_seq_item) cov_cyp;
        cyp_seq_item seq_item_cov;
       
        // Covergroup definitions
        covergroup cyp_cov_grp;
           
        endgroup : cyp_cov_grp


        // Default Constructor
        function new (string name = "cyp_coverage", uvm_component parent);
            super.new(name, parent);
            cyp_cov_grp = new();
        endfunction : new

        // Build Phase
        function void build_phase(uvm_phase phase);
            super.build_phase(phase);
            cov_export = new("cov_export", this);
            cov_cyp = new("cov_cyp", this);
        endfunction : build_phase

        // Connect Phase
        function void connect_phase(uvm_phase phase);
            super.connect_phase(phase);
            cov_export.connect(cov_cyp.analysis_export);
        endfunction : connect_phase

        // Run Phase
        task run_phase(uvm_phase phase);
            super.run_phase(phase);
            forever begin
                // Get the next transaction from the analysis FIFO.
                cov_cyp.get(seq_item_cov);
               
                cyp_cov_grp.sample();
            end
        endtask : run_phase

    endclass : cyp_coverage

`endif // CYP_COVERAGE_SVH