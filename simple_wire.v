//the following method utilses "data flow modelling"

module top_module(

    input in, 
    output out

    );

    assign out = in;

endmodule

//the following method is the "structural modelling" method

/*

module top_module(

    input in, 
    output out

);

    buf buf_inst(out, in);   //buffer gate. we can't use wire like this->  w1(out, in);
    
endmodule

*/
