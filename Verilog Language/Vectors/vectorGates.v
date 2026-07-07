module top_module(
    input [2:0] a,
    input [2:0] b, 
    output [2:0] out_or_bitwise, 
    output out_or_logical, 
    output [5:0] out_not);

    assign out_or_bitwise = a | b; //verilog automatically aligns the bits

    //In Verilog, any vector that is not zero evaluates to 1 (True). Only a vector of all zeros evaluates to 0 (False).
    //For logical operations, Verilog uses double-character symbols - ||, &&
    assign out_or_logical = a || b; 

    // Approach A (Part-select):
    assign out_not[5:3] = ~b;  //the order in which you assign the variables matters. The problem asked for the higher bits to be assigned to b
    assign out_not[2:0] = ~a;

    // Approach B (Concatenation alternative):
    // assign out_not = {~b, ~a};
    
endmodule
