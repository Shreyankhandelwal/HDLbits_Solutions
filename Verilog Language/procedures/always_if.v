module top_module(
    input a,
    input b,
    input sel_b1,
    input sel_b2,
    output wire out_assign,
    output reg out_always   ); 

//the condition could have also been: sel_b1 & sel_b2
//Also the following two statements serve the same purpose
//An if statement creates a MUX

assign out_assign = (sel_b1 == 1 && sel_b2 == 1) ? b:a;

always @(*) begin
    if (sel_b1 == 1 && sel_b2 == 1) begin
        out_always = b;
    end
    else begin
        out_always = a;
    end
end

endmodule
