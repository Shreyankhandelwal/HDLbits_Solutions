module top_module(output zero);
    assign zero = 0;
endmodule 

//make sure there's no gap b/w end and module - line 3
//you declare the ports (the inputs and outputs) inside the () in the module definition.
//there's always a semicolon after each line except keywords like endmodule, end, initial, begin (usually?)

// assign is used doing "data flow modelling"


