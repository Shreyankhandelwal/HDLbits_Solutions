module top_module(
	input ring, 
	input vibrate_mode,
	output ringer,
	output motor
);
	
    //build truth table. makes it easier
	assign ringer = ring & ~vibrate_mode;
	
	assign motor = ring & vibrate_mode;
	
endmodule