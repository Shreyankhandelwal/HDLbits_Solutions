//the following method utilses "data flow modelling"

module top_module(input a, b, c, d, output out, out_n);

    wire and_join1, and_join2, or_out;

    assign and_join1 = a & b;
    assign and_join2 = c & d;
    
    assign out =  and_join1 | and_join2;
    assign or_out = and_join1 | and_join2;

    assign out_n = ~or_out;

endmodule


//the following method is the "structural modelling" method

/* 

module top_module(input a, b, c, d, output out, out_n);

    wire and_join1, and_join2, or_out;

    and g1(and_join1, a,b);
    and g2(and_join2, c,d);
    
    or g3(out, and_join1, and_join2);
    
    not g4(out_n, out);

endmodule

*/
