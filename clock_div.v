module clock_div
#(
    parameter DIVIDE_BY = 17
)
(
    input clock,
    input reset,
    output [16:0] clk_out
    
);



DFF #(DIVIDE_BY) dff0(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[0])
);

DFF #(DIVIDE_BY) dff1(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[1])
);

DFF #(DIVIDE_BY) dff2(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[2])
);

DFF #(DIVIDE_BY) dff3(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[3])
);

DFF #(DIVIDE_BY) dff4(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[4])
);

DFF #(DIVIDE_BY) dff5(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[5])
);

DFF #(DIVIDE_BY) dff6(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[6])
);

DFF #(DIVIDE_BY) dff7(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[7])
);

DFF #(DIVIDE_BY) dff8(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[8])
);

DFF #(DIVIDE_BY) dff9(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[9])
);

DFF  #(DIVIDE_BY)dff10(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[10])
);

DFF  #(DIVIDE_BY)dff11(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[11])
);

DFF #(DIVIDE_BY) dff12(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[12])
);

DFF #(DIVIDE_BY) dff13(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[13])
);

DFF #(DIVIDE_BY) dff14(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[14])
);

DFF #(DIVIDE_BY) dff15(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[15])
);

DFF #(DIVIDE_BY) dff16(
.reset(reset),
.clock(clock),
.D(notQ),
.Q(clk_out[16])
);

endmodule
