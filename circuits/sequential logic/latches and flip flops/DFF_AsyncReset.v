module top_module (
    input clk,
    input d, 
    input ar,   // asynchronous reset
    output reg q);
    
    //The posedge ar is included in the sensitivity list (always @(posedge clk or posedge ar)) because ar is an asynchronous reset.
    always @(posedge clk or posedge ar) begin
        if(ar)
            q <= 0;
        else
            q <= d;
        
        //or you could write q <= (ar)? 0 : d
    end

endmodule
