module top_module (
input sel,
input [7:0] a,
input [7:0] b,
output [7:0] out
);

// assign out = (~sel & a) | (sel & b); //this is incorrect. We're using bit wise &, sel is 1 bit and a and b are 8 bits long.

//assign out = (~{8{sel}} & a) | ({8{sel}} & b);  //ideally this should be correct but its not working
assign out = sel ? a:b;

endmodule
