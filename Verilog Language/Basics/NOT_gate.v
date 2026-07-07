//the following method utilses "data flow modelling"

module top_module(input in, output out);

    assign out = ~in;

endmodule


//the following method is the "structural modelling" method

/*

module alt_method(input in, output out);

    not g1(out, in);

endmodule

*/
