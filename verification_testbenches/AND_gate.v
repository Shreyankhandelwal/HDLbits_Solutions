module top_module();

reg [1:0] in;
wire out;

andgate inst(in,out);

    initial begin

        in = 2'b00;

        #10
        in = 2'b01;

        #10
        in = 2'b10;

        #10
        in = 2'b11;

/*
//the following also works

        in[0] = 1'b0;
        in[1] = 1'b0;

        #10
        in[0] = 1'b1;
        in[1] = 1'b0;

        #10
        in[0] = 1'b0;
        in[1] = 1'b1;

        #10
        in[0] = 1'b1;
        in[1] = 1'b1;
*/
    end


endmodule
