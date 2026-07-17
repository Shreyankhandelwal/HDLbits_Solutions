module top_module (
    input a,
    input b,
    input c,
    input d,
    output out_sop,
    output out_pos
);

    // Minimum Sum-of-Products Form // we look at 1's and the don't care terms
    assign out_sop = (c & d) | (~a & ~b & c);

    // Minimum Product-of-Sums Form // we look at 0's and the don't care terms
    assign out_pos = c & (~a | b) & (~b | d);

endmodule
