module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

wire topAdd16, bottomAdd16;

/*
add16 instance1(.a(a[15:0]), .b(b[15:0]), .cin(0), .sum(sum[15:0]), .cout(topAdd16));
add16 instance2(.a(a[31:16]), .b(b[31:16]), .cin(topAdd16), .sum(sum[31:16]), .cout(bottomAdd16));  //could leave the cout here blank as well

assign sum = {sum[31:16], sum[15:0]};
*/

endmodule
