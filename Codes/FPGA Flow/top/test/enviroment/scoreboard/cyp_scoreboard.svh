`ifndef CYP_SCOREBOARD_SVH
`define CYP_SCOREBOARD_SVH

class cyp_scoreboard extends uvm_scoreboard;
    `uvm_component_utils(cyp_scoreboard)

    // --- TLM and FIFO ---
    uvm_analysis_export #(cyp_seq_item) sb_export;
    uvm_tlm_analysis_fifo #(cyp_seq_item) cyp_sb;
    cyp_seq_item seq_item_sb;

    // --- Counters ---
    int correct_count_predicted;
    int correct_count_actual;
    int total_correct_count;

    int error_count_predicted;
    int error_count_actual;
    int total_error_count;

    // --- Reference output arrays ---
    
    logic [63:0] predicted_yield_mem[$];
    logic [63:0] actual_yield_mem[$];

    // --- File descriptors ---
    int fp_pred;
    int fp_actual;

    // --- Temp line & value for reading files ---
    string line;
    logic [63:0] val;

    // --- Variables for check_results ---
    logic [63:0] yield_int;
    real yield_real;
    real pred_real;
    real act_real;
    real tolerance_p;      // absolute tolerance (10% of predicted)
    real tolerance_a;      // absolute tolerance (10% of actual)
    real diff_pred;
    real diff_act;
    real error_pred_pct;
    real error_act_pct;

    int cycle;

    // --- Constructor ---
    function new(string name = "cyp_scoreboard", uvm_component parent);
        super.new(name,parent);
        correct_count_predicted = 0;
        correct_count_actual = 0;
        total_correct_count = 0;
        error_count_predicted = 0;
        error_count_actual = 0;
        total_error_count = 0;
    endfunction : new

    // --- Build Phase ---
    function void build_phase(uvm_phase phase);
        super.build_phase(phase);

        // --- Create exports / FIFO ---
        sb_export = new("sb_export",this);
        cyp_sb    = new("cyp_sb",this);

        // --- Read predicted_yield.hex ---
        fp_pred = $fopen("design/cyp_design/hex_outputs/predicted_yield.hex", "r");
        if (fp_pred == 0) `uvm_fatal("FILE_ERR","Cannot open predicted_yield.hex");
        while (!$feof(fp_pred)) begin
            $fgets(line, fp_pred);
            $sscanf(line, "%h", val);
            predicted_yield_mem.push_back(val);
        end
        $fclose(fp_pred);

        // --- Read actual_yield.hex ---
        fp_actual = $fopen("design/cyp_design/hex_outputs/actual_yield.hex", "r");
        if (fp_actual == 0) `uvm_fatal("FILE_ERR","Cannot open actual_yield.hex");
        while (!$feof(fp_actual)) begin
            $fgets(line, fp_actual);
            $sscanf(line, "%h", val);
            actual_yield_mem.push_back(val);
        end
        $fclose(fp_actual);
    endfunction : build_phase

    // --- Connect Phase ---
    function void connect_phase(uvm_phase phase);
        super.connect_phase(phase);
        sb_export.connect(cyp_sb.analysis_export);
    endfunction : connect_phase

    // --- Run Phase ---
    task run_phase(uvm_phase phase);
        super.run_phase(phase);

        cycle = 0;
        forever begin
            cyp_sb.get(seq_item_sb);

            // --- Apply 1-cycle shift: skip first cycle ---
            if (cycle > 0)
                check_results(seq_item_sb, cycle-1);

            cycle++;
        end
    endtask : run_phase

    // --- Report Phase ---
   function void report_phase(uvm_phase phase);
    super.report_phase(phase);

    total_correct_count = correct_count_predicted + correct_count_actual;
    total_error_count   = error_count_predicted + error_count_actual;

    `uvm_info("REPORT",$sformatf("Simulation Ends"), UVM_MEDIUM)
    `uvm_info("REPORT",$sformatf("Correct Predicted: %0d", correct_count_predicted), UVM_MEDIUM)
    `uvm_info("REPORT",$sformatf("Correct Actual:    %0d", correct_count_actual), UVM_MEDIUM)
    `uvm_info("REPORT",$sformatf("Total Correct:     %0d", total_correct_count), UVM_MEDIUM)
    `uvm_info("Error",$sformatf("Error Predicted:   %0d", error_count_predicted), UVM_MEDIUM)
    `uvm_info("Error",$sformatf("Error Actual:      %0d", error_count_actual), UVM_MEDIUM)
    `uvm_info("Error",$sformatf("Total Errors:      %0d", total_error_count), UVM_MEDIUM)
endfunction : report_phase

    // --- Check Results ---
    function void check_results(cyp_seq_item seq_item_ch, int cycle);

        yield_int = seq_item_ch.Yield_Int;

        // Convert from 64-bit logic to real
        yield_real = $bitstoreal(yield_int);
        pred_real  = $bitstoreal(predicted_yield_mem[cycle]);
        act_real   = $bitstoreal(actual_yield_mem[cycle]);

        // --- Set 10% tolerance for pass/fail ---
        tolerance_p = 0.01 * (pred_real >= 0 ? pred_real : -pred_real); // absolute value
        tolerance_a = 0.2 * (act_real >= 0 ? act_real : -act_real); // absolute value

        // --- Compute differences and percentage errors ---
        diff_pred = yield_real - pred_real;
        if (diff_pred < 0.0) diff_pred = -diff_pred;
        error_pred_pct = 100.0 * diff_pred / (pred_real != 0.0 ? pred_real : 1.0);

        diff_act = yield_real - act_real;
        if (diff_act < 0.0) diff_act = -diff_act;
        error_act_pct = 100.0 * diff_act / (act_real != 0.0 ? act_real : 1.0);

        // --- Compare using tolerance ---
        if (diff_pred > tolerance_p) begin
            error_count_predicted++;
            `uvm_error("MISMATCH_PRED",
                $sformatf("Cycle %0d: DUT Yield=%.6f Expected Predicted=%.6f (error = %.2f%%)",
                          cycle, yield_real, pred_real, error_pred_pct));
        end
        else begin
            correct_count_predicted++;
        end

        if (diff_act > tolerance_a) begin
            error_count_actual++;
            // `uvm_error("MISMATCH_ACT",
                // $sformatf("Cycle %0d: DUT Yield=%.6f Expected Actual=%.6f (error = %.2f%%)",
                //           cycle, yield_real, act_real, error_act_pct));
        end
        else begin
            correct_count_actual++;
        end
    endfunction : check_results

endclass : cyp_scoreboard

`endif // CYP_SCOREBOARD_SVH