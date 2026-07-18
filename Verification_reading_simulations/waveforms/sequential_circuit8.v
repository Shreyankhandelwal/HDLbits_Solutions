module top_module (
    input clock,
    input a,
    output p,
    output q );

    //instead of the following always block, we could write:
    //assign p = clock & a;

    always @(*) begin
        if (clock) begin
            p = a;
        end
    end 

    always @(negedge clock) begin
        q <= p;
    end


endmodule
