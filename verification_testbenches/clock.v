module top_module ( );
    
    reg clk;   //since we can only use 'reg' under procedural blocks like initial and always to assign values 
    dut clock(clk);

    //dut/DUT - device under test

    //in a testbench, you do nto define the inputs and outputs in the port list 


    //An initial block executes exactly once, starting at simulation time 0.    
    initial begin
        clk = 1'b0;
    end
    
    //Unlike initial, an always block never stops. It repeats forever. Example: using it for a clock
    always begin    //equivalent to writing: while (1) begin. So you don't need 'forever' inside an 'always'
        #5          //# is for time delay
        clk = ~clk;
    end
    
    /*
    //another way:
    
    //why this method?
    //Because sometimes you want to do something once, and then loop forever.
    
    initial begin
        clk = 1'b0;

        //assign as many values as you want before 'forever' begins for stuff to be executed once under 'initial'
        //You can't write do this with only always, because always starts immediately at time 0.
        
        //forever is used inside an initial block to create an infinite loop.
        forever
        #5
        clk = ~clk;
    end
    */

/*
//forever must be inside an initial or always block.
//It cannot be used in synthesizable code (only for simulation/testbenches).
//To exit early, use $finish, disable, or add a conditional break (via if + disable).
*/

endmodule
