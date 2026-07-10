module top_module (
    input [7:0] in,
    output [31:0] out
);

    // Add an outer set of curly braces around the entire right side
    assign out = { {24{in[7]}}, in };

endmodule
