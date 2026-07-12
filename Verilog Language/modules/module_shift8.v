module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output reg [7:0] q 
);

//Declared as 8-bit vectors. if you don't mention the vector size, it'll assume them to be 1 bit scalars
wire [7:0] q1,q2,q3;


my_dff8 instance1(.clk(clk), .d(d), .q(q1));
my_dff8 instance2(.clk(clk), .d(q1), .q(q2));
my_dff8 instance3(.clk(clk), .d(q2), .q(q3));


// This is one way to make a 4-to-1 multiplexer
always @(*)		// Combinational always block
	case(sel)   //This is the syntax for switch-case
		2'd0: q = d;
		2'd1: q = q1;
		2'd2: q = q2;
		2'd3: q = q3;
	endcase


endmodule
