//the following method utilses "data flow modelling"

module top_module(input p2a, p2b, p2c, p2d, p1a, p1b, p1c, p1d, p1e, p1f, output p1y, p2y);

    wire p2a_p2b_wire, p2c_p2d_wire, p1a_p1c_p1b_wire, p1f_p1e_p1d_wire;

    assign p2a_p2b_wire = p2a & p2b;
    assign p2c_p2d_wire = p2c & p2d;
    
    assign p1a_p1c_p1b_wire = p1a & p1c & p1b;
    assign p1f_p1e_p1d_wire = p1f & p1e & p1d;
    
    assign p2y =  p2a_p2b_wire | p2c_p2d_wire;
    assign p1y = p1a_p1c_p1b_wire | p1f_p1e_p1d_wire;

endmodule


//the following method is the "structural modelling" method

/*



*/

