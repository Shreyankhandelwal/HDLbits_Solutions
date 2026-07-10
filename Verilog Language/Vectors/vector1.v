
`default_nettype none  //used to produce a compiler error when there's any undeclared signal 

//The endianness (or, informally, "direction") of a vector is whether the the least significant bit has a lower index 
//(little-endian, e.g., [3:0]) or a higher index (big-endian, e.g., [0:3]). And this endianness must remain same throughout the code

//check vector1 page for more info about 'implicit nets' and 'Unpacked vs. Packed Arrays'

module top_module(input wire [15:0] in, output wire [15:8] out_hi, output wire [7:0] out_lo);
	
    //[15:8] would work too but don't use that while declaring in the port list (you'd create diff pins and will be trying to access diff pins)
    assign out_hi = in[15:8];
    assign out_lo = in[7:0];

endmodule
