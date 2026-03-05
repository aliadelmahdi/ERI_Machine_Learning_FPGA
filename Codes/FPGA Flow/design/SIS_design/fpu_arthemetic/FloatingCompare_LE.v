`ifndef FLOATINGLEQ
`define FLOATINGLEQ

// returns A <= B via the output register
module LE (input [31:0] A,
                          input [31:0] B,
                          output reg result);
    always @(*) begin
        // If signs differ
        if (A[31] != B[31])
            result = A[31];  // If A is negative (1) and B positive (0), A <= B -> result = 1

        // If signs are the same
        else begin
            // Compare exponents
            if (A[30:23] != B[30:23]) begin
                result = (A[30:23] < B[30:23]) ? 1'b1 : 1'b0;
                if (A[31]) result = ~result; // invert if negative numbers
            end
            // Compare mantissas
            else begin
                result = (A[22:0] <= B[22:0]) ? 1'b1 : 1'b0;
                if (A[31]) result = ~result; // invert if negative numbers
            end
        end
    end

endmodule
`endif // FLOATINGLEQ