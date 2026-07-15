module top_module(
	input x,
	input y,
	output z);

	wire o1, o2, o3, o4;
	
	A IA1 (x, y, o1);
	B IB1 (x, y, o2);
	A IA2 (x, y, o3);
	B IB2 (x, y, o4);
	
	assign z = (o1 | o2) ^ (o3 & o4);

	// Or you could simplify the circuit including the sub-modules:
	// assign z = x|~y;
	
endmodule

module A (
	input x,
	input y,
	output z);

	assign z = (x^y) & x;
	
endmodule

module B (
	input x,
	input y,
	output z);

	assign z = ~(x^y);

endmodule