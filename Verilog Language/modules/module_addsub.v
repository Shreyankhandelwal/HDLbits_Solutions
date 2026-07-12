module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);

wire add16cout1, add16cout2;
wire [31:0] xorout;   //b_in

assign xorout = b ^ {32{sub}};

add16 instance1(.a(a[15:0]),  .b(xorout[15:0]),  .cin(sub), .sum(sum[15:0]), .cout(add16cout1));
add16 instance2(.a(a[31:16]),  .b(xorout[31:16]),  .cin(add16cout1), .sum(sum[31:16]), .cout(add16cout2));

endmodule
