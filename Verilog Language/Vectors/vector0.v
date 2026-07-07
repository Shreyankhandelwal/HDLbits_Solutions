module top_module ( 
    input wire [2:0] vec,
    output wire [2:0] outv,
    output wire o2,
    output wire o1,
    output wire o0  
);

//mentioning its a wire is good practice, if it actually is a wire
//the standard syntax for declaring ports in a module header places the direction (input/output) and data type (wire/reg) 
//before the vector dimensions and the name.

    assign outv[2:0] = vec[2:0];  
    //if all the bits are being transferred, then you don't need to write the bit width in vector form, i.e. you can remove  [2:0]  entirely
    
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
    
endmodule

/*

//Don't write the code in the following manner if its simply a wire and there's no gate or port.
//It'll work but its bad practice.

//output defaults to wire if no other type (like reg) is specified (not mentioning wire still works)

module top_module (input vec[2:0], output outv[2:0], o2, o1, o0);

    assign outv[2:0] = vec[2:0];
    
    assign o0 = vec[0];
    assign o1 = vec[1];
    assign o2 = vec[2];
    
endmodule


*/
