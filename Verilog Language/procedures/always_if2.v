// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

/*
The Golden Rule of Combinational always Blocks
To prevent inferred latches in a combinational circuit, every single possible path must assign a value to the output. You must cover all conditions.

If you use an if, you must include an else.
If you use a case, you must cover all values or include a default.
*/

    always @(*) begin
    if (cpu_overheated) begin
        shut_off_computer = 1'b1;
    end else begin
        shut_off_computer = 1'b0; // Prevents the latch!
    end
end

always @(*) begin
    if (~arrived) begin
        keep_driving = ~gas_tank_empty;
    end else begin
        keep_driving = 1'b0; // Prevents the latch!
    end
end

endmodule
