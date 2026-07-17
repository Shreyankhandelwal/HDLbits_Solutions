module top_module (input a, input b, input c, output out);
    
    wire andout;

    andgate inst1 (andout,a, b, c, 1, 1);
    
    assign out = ~andout;

endmodule
