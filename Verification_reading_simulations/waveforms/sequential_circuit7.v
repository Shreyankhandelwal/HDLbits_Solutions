module top_module (
    input clk,
    input a,
    output reg q );

//we look at the rising edges and compare the values of a and q at different time intervals 

/*
| Rising edge | a | q after edge |
| ----------- | - | ------------ |
| 20          | 0 | 1            |
| 30          | 0 | 1            |
| 40          | 0 | 1            |
| 50          | 0 | 1            |
| 60          | 0 | 1            |
| 70          | 0 | 1            |
| 80          | 0 | 1            |
| 90          | 1 | 0            |
*/

    always @(posedge clk) begin
        q <= ~a;
    end

endmodule
