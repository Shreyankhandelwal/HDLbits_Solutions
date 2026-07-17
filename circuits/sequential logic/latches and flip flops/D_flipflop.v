module top_module (
    input clk,    // Clocks are used in sequential circuits
    input d,
    output reg q );//

    // Undefined simulation behaviour can occur if there is more than one edge-triggered
    always @(posedge clk) begin
    	q <= d;
    end
        
        

endmodule
