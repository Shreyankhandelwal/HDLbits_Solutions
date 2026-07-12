//The code for one module is not written inside another module's body (Code for different modules are not nested).
//You may connect signals to the module by port name or port position

module top_module (
	input a,
	input b,
	output out
);



    // Method 1 - Created an instance of "mod_a" named "instance1", and connected ports by name:

	mod_a instance1 ( 
		.in1(a), 	// Port"in1"connects to wire "a"
		.in2(b),	// Port "in2" connects to wire "b"
		.out(out)	// Port "out" connects to wire "out" 
				// (Note: mod_a's port "out" is not related to top_module's wire "out". 
	);
  

/*
	// Method 2 - Created an instance of "mod_a" named "instance2", and connected ports by position:

	mod_a inst2 ( a, b, out );	// The three wires are connected to ports in1, in2, and out, respectively.
*/ 

endmodule

