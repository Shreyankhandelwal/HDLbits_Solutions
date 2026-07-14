// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );   //reg to be changed to wire if you go for method 3

//A priority encoder is a combinational circuit that, when given an input bit vector, outputs the position of the first '1' bit in the vector. 

//method 1:
always @(*) begin
        if (in[0]) 
            pos = 2'd0;
        else if (in[1]) 
            pos = 2'd1;
        else if (in[2]) 
            pos = 2'd2;
        else if (in[3]) 
            pos = 2'd3;
        else 
            pos = 2'd0;
    end

//method 2:
//A normal case statement looks for exact matches. 
//But Verilog offers a special variant called casez, which allows you to use z or ? as don't-care bits.

/*

always @(*) begin
        casez (in[3:0])
            4'bzzz1: pos = 2'd0; 
            4'bzz10: pos = 2'd1; 
            4'bz100: pos = 2'd2;
            4'b1000: pos = 2'd3;
            default: pos = 2'd0; // Handles 4'b0000
        endcase
    end
*/

//method 3:
/*
assign pos = in[0] ? 2'd0 :
             in[1] ? 2'd1 :
             in[2] ? 2'd2 : 
             in[3] ? 2'd3 : 2'd0; 
*/

endmodule
