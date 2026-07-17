module top_module (
    input clk,
    input d, 
    input r,   // synchronous reset
    output reg q);
    
    always @(posedge clk) begin
        if(r)
            q <= 0;
        else
            q <= d;
        
        //or you could write q <= (r)? 0 : d
    end

endmodule
