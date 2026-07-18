
module top_module (
    input a,
    input b,
    output reg q );//

    wire [1:0] ab = {a,b};

    always @(*) begin
    case (ab)
    2'b00: q = 0;
    2'b01: q = 0;
    2'b10: q = 0;
    2'b11: q = 1;
    endcase
    end
    
    //simpler way:
    //assign q = a & b;  //its just an and gate if you look at the truth table

    /*
a b q
0 1 0
1 0 0
1 1 1
0 0 0
*/


endmodule



