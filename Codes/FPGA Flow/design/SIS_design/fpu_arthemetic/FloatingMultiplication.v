`ifndef FLOATINGMULTIPLICATION
`define FLOATINGMULTIPLICATION

module FloatingMultiplication #(parameter XLEN=32)
(
    input  [XLEN-1:0] A,
    input  [XLEN-1:0] B,
    output reg [XLEN-1:0] result
);

    // Extract mantissa, exponent, sign
    wire [23:0] A_Mantissa = {1'b1, A[22:0]};
    wire [23:0] B_Mantissa = {1'b1, B[22:0]};
    wire [7:0] A_Exponent = A[30:23];
    wire [7:0] B_Exponent = B[30:23];
    wire A_sign = A[31];
    wire B_sign = B[31];

    reg [47:0] Temp_Mantissa;
    reg [8:0] Temp_Exponent;  // 9 bits to handle overflow
    reg Sign;

    always @(*) begin
        // Multiply mantissas
        Temp_Mantissa = A_Mantissa * B_Mantissa;

        // Add exponents and adjust for bias (127)
        Temp_Exponent = (A_Exponent + B_Exponent < 8'd127) ? 9'd0 : A_Exponent + B_Exponent - 8'd127;

        // Normalize if carry in highest bit
        if (Temp_Mantissa[47]) begin
            Temp_Mantissa = Temp_Mantissa >> 1; // shift right to normalize
            Temp_Exponent = Temp_Exponent + 1;
        end

        // Handle exponent overflow
        if (Temp_Exponent > 9'hFF)
            Temp_Exponent = 9'hFF;

        // Sign of result
        Sign = A_sign ^ B_sign;

        // Assemble final result
        result = {Sign, Temp_Exponent[7:0], Temp_Mantissa[46:24]};  // 23-bit mantissa
    end

endmodule

`endif // FLOATINGMULTIPLICATION