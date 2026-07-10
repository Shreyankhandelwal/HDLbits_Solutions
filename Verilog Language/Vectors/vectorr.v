
module top_module( 
    input [7:0] in,
    output [7:0] out
);

//Approach 1

    assign out = {in[0], in[1], in[2], in[3], in[4], in[5], in[6], in[7]};

//assign {out[0],out[1],out[2],out[3],out[4],out[5],out[6],out[7]} = in; - also possible


/*
//approach 2 - create a combinational always block
//(Note: If you use this approach, you must declare 'out' as a 'reg' type because it's being assigned inside an always block: output reg [7:0] out).
//reg: Used for procedural assignments (inside always or initial blocks).

We're essentially calculating the same result as sequential code. 
for-loops describe circuit *behaviour*, not *structure*, so they can only be used inside procedural blocks like an always block).

The hardware circuit formed by wires and gates doesn't actually perform any looping. 
Instead, it generates a design that yields the exact same outcome as if a loop had been executed. 
In practice, a logic synthesizer resolves the loop during the compilation phase to determine the specific circuit structure needed. 
This differs from a Verilog simulator, which would run the loop step-by-step in sequence during the simulation process.


integer i;
always @(*) begin             //combinational logic block
    for (i = 0; i < 8; i = i + 1) begin
        out[i] = in[7-i];
    end
end

//a for loop inside a combinational always block in Verilog maps directly to spatial hardware layout. 
//The synthesizer unrolls the loop into parallel physical cross-wires instantly.

*/


/*
//Approach 3

Generate loops are designed to instantiate hardware components such as assign statements, module instances, variable declarations, 
or procedural blocks—rather than to perform sequential actions. 

Unlike procedural loops that describe behavior over time, generate loops operate entirely at compile time. You can view them as a preprocessing 
step that automatically expands code before the logic synthesizer processes it. 

For example, a generate loop might create eight distinct assign statements during compilation, which are then synthesized into the final circuit.
Because they function as a code-generation tool, there are specific constraints, such as the requirement that generate variables (genvars)
be read-only within the loop body.

generate
    genvar i;           // this is a special index variable that is only used with the 'generate' block. It is not a hardware wire or register.
    for (i = 0; i < 8; i = i + 1) begin: bit_reverse          //we're just naming the block (eg: bit_reverse) for good practice
        assign out[i] = in[7-i];       //or 8-i-1
    end
endgenerate
*/


endmodule
