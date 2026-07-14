//The following code was not written by me. It was generated instead.
//I still do not understand this

module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum
);

    // Internal wire to chain the carry-outs between the 100 BCD adders
    wire [99:0] carry;

    // 1. Instantiate the first BCD adder (handles digit 0)
    bcd_fadd fadd_inst0 (
        .a(a[3:0]),
        .b(b[3:0]),
        .cin(cin),
        .sum(sum[3:0]),
        .cout(carry[0])
    );

    // 2. Generate block to instantiate the remaining 99 BCD adders
    genvar i;
    generate
        for (i = 1; i < 100; i = i + 1) begin : bcd_adder_loop
            bcd_fadd fadd_inst (
                .a(a[i*4 + 3 : i*4]),      // Selects the 4-bit slice for digit i
                .b(b[i*4 + 3 : i*4]),      // Selects the 4-bit slice for digit i
                .cin(carry[i-1]),          // Carry-in comes from the previous stage
                .sum(sum[i*4 + 3 : i*4]),  // Outputs the 4-bit sum slice
                .cout(carry[i])            // Carry-out goes to the next stage
            );
        end
    endgenerate

    // 3. Connect the final carry-out to the top-level output port
    assign cout = carry[99];

endmodule