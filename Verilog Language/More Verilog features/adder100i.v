module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum
);

    // 1. First full adder instance connects to the external 'cin'
    fadd fadd_inst0 (
        .a(a[0]), 
        .b(b[0]), 
        .cin(cin), 
        .sum(sum[0]), 
        .cout(cout[0])
    );

    // 2. Generate block to instantiate the remaining 99 full adders
    genvar i;
    generate
        for (i = 1; i < 100; i = i + 1) begin : adder_loop
            fadd fadd_inst (
                .a(a[i]), 
                .b(b[i]), 
                .cin(cout[i-1]), // Carry-in comes from the previous stage's carry-out
                .sum(sum[i]), 
                .cout(cout[i])
            );
        end
    endgenerate

endmodule

// Helper Full Adder Module
module fadd (
    input a, b, cin,
    output sum, cout
);
    assign sum  = a ^ b ^ cin;
    assign cout = (a & b) | (cin & (a ^ b));
endmodule

/*
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    integer i;
    always @(*) begin

    sum[0] = a[0] ^ b[0] ^ cin;
	cout[0] = a[0] & b[0] | cin & (a[0]|b[0]);
    
    for(i = 1; i<100; i++) begin
        sum[i] = a[i] ^ b[i] ^ cout[i-1];
        cout[i] = a[i] & b[i] | cout[i-1] & (a[i]|b[i]);

        end

    end

endmodule
*/

