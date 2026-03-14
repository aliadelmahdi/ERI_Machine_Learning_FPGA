`ifndef CYP_CONFIG_SVH
`define CYP_CONFIG_SVH

    class cyp_config extends uvm_object;
    
        `uvm_object_utils (cyp_config)
        virtual CYP_if cyp_if;
        uvm_active_passive_enum is_active;

        // Default Constructor
        function new(string name = "cyp_config");
            super.new(name);
        endfunction : new
        
    endclass : cyp_config

`endif // CYP_CONFIG_SVH