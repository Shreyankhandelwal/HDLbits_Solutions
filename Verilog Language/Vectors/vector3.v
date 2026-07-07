module top_module(
    input [4:0] a, b, c, d, e, f,
    output [7:0] w, x, y, z
);

    // assign {w[7:0], x[7:0], y[7:0], z[7:0]} = {a[4:0], b[4:0], c[4:0], d[4:0], e[4:0], f[4:0], 2'b11};   //wrong method

    assign w = {a[4:0], b[4:2]};
    assign x = {b[1:0], c[4:0], d[4]};
    assign y = {d[3:0], e[4:1]};
    assign z = {e[0], f[4:0], 2'b11};


endmodule
