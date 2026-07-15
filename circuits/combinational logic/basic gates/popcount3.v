module top_module( 
    input [2:0] in,
    output [1:0] out );
    integer i,count;
	always @ * begin
        count = 0;
        for (i=0; i<3;i=i+1) begin
            if (in[i]==1'b1) count=count+1;
        end
        out = count;
    end

        
    
    /*
    //the hard coding option
    always @(*) begin
        case(in) begin
        3'b001: out = 1
        end    
    end
*/
    
    //method 3: as per the solution given
    //One method is to use a 8-entry truth table:
	// in[2:0] out[1:0]
	// 000      00
	// 001      01
	// 010      01
	// 011      10
	// 100      01
	// 101      10
	// 110      10
	// 111      11
	assign out[0] = (~in[2] & ~in[1] & in[0]) | (~in[2] & in[1] & ~in[0]) | (in[2] & ~in[1] & ~in[0]) | (in[2] & in[1] & in[0]);
	assign out[1] = (in[1] & in[0]) | (in[2] & in[0]) | (in[2] & in[1]);
	
	// Using the addition operator works too:
	// assign out = in[0]+in[1]+in[2];
	

endmodule
