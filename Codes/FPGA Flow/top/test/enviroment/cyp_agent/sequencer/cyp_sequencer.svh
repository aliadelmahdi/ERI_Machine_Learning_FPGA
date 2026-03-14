`ifndef CYP_SEQUENCER_SVH
`define CYP_SEQUENCER_SVH

    class cyp_sequencer extends uvm_sequencer#(cyp_seq_item);

        `uvm_component_utils(cyp_sequencer);
      
        // Default Constructor
        function new(string name = "cyp_sequencer", uvm_component parent);
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
        task run_phase (uvm_phase phase);
            super.run_phase(phase);
        endtask : run_phase

    endclass : cyp_sequencer

`endif // CYP_SEQUENCER_SVH