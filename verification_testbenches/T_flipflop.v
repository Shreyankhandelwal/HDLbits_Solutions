module top_module ();

reg clk;
reg reset;
reg t;
wire q;

tff ins1(clk, reset, t, q);

initial begin
    clk = 1'b0;
    
end

endmodule
