module top_module ( 
    input [1:0] A, 
    input [1:0] B, 
    output z 
);

    //method 1:
    // z is 1 if (A[0] == B[0]) AND (A[1] == B[1])
    //we used XNOR concept - outputs a 1 if both inputs are the same
    assign z = (A[0] ~^ B[0]) & (A[1] ~^ B[1]);

    //method 2:
    //assign z = (A == B); //or use assign z = (A[1:0]==B[1:0]);

    //method 3:
    /*
    // Check if the 4-bit combination matches any of the 4 valid rows
    assign z = ({A, B} == 4'b0000) || 
               ({A, B} == 4'b0101) || 
               ({A, B} == 4'b1010) || 
               ({A, B} == 4'b1111);

*/    

//method 4:
/*
module top_module ( 
    input [1:0] A, 
    input [1:0] B, 
    output reg z // Must be reg since we are assigning inside an always block
);

    always @(*) begin
        case ({A, B})
            4'b0000: z = 1'b1;
            4'b0101: z = 1'b1;
            4'b1010: z = 1'b1;
            4'b1111: z = 1'b1;
            default: z = 1'b0; // All other 12 combinations output 0
        endcase
    end

endmodule
*/


endmodule
