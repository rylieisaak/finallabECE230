module clock_div
#(
    parameter DIVIDE_BY = 17
)

(
    input clock,
    input reset,
    output div_clk
    
  );
  
  
wire [DIVIDE_BY:0] dff_Q;
wire [DIVIDE_BY-1:0] dffNot_Q;

assign dff_Q[0] = clock;

genvar i;

generate 

    for (i=0; i < DIVIDE_BY; i = i + 1) begin
      
    dff clockdividermethod (
    .Default(1'b0),
    .D(dffNot_Q[i]),
    .clock(dff_Q[i]),
    .reset(reset),
    .Q(dff_Q[i+1]),
    .NotQ(dffNot_Q[i])
    );
    
    end
    
endgenerate

assign div_clk = dff_Q[DIVIDE_BY];

endmodule
