module float_le_checker_64(
    input  [63:0] A, 
    input  [63:0] B,
    output reg    LE_out
);

    // Function to compare two IEEE 754 doubles (64-bit)
    function automatic LE;
        input [63:0] A;
        input [63:0] B;
        reg [10:0] exp_A, exp_B;
        reg [51:0] mant_A, mant_B;
        begin
            exp_A = A[62:52];
            exp_B = B[62:52];
            mant_A = A[51:0];
            mant_B = B[51:0];

            if (A[63] != B[63])
                LE = A[63];  // Different signs: negative is less
            else begin
                if (exp_A != exp_B) begin
                    LE = (exp_A < exp_B) ? 1'b1 : 1'b0;
                    if (A[63]) LE = ~LE;  // negative numbers
                end else begin
                    LE = (mant_A <= mant_B) ? 1'b1 : 1'b0;
                    if (A[63]) LE = ~LE;  // negative numbers
                end
            end
        end
    endfunction

    // Apply the function
    always @(*) begin
        LE_out = LE(A, B);
    end

endmodule