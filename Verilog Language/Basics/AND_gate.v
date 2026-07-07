//the following method utilses "data flow modelling"

module top_module(input a, b, output out);

    assign out = a&b;

endmodule


//the following method is the "structural modelling" method

/* 
module top_module(input a, b, output out);

    and g1(out, a,b);

endmodule

*/


