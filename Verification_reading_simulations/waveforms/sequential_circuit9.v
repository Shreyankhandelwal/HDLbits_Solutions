module top_module (
    input clk,
    input a,
    output reg [3:0] q );
    
    integer i;
    
    always @(posedge clk) begin
        if(a) begin
        q <= 4'd4;
        end
        else begin
            if(q == 4'd6)
                q <= 4'd0;
            else
                q = q+1;
        end   
    end

endmodule
