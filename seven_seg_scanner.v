
module seven_seg_scanner(
    input div_clock,
    input reset,
    output [3:0] anode

);
//becuase the anodes on the 7 seg displays are active when low 

wire[3:0] next;
wire[3:0] state;

assign anode = ~state;

dff Adff(
    .D(next[0]),
    .Q(state[0]),
    .clock(div_clock),
    .reset(reset),
    .Default(1'b1)
);
dff Bdff(
    .D(next[1]),
    .Q(state[1]),
    .clock(div_clock),
    .reset(reset),
    .Default(1'b0)
);
dff Cdff(
    .D(next[2]),
    .Q(state[2]),
    .clock(div_clock),
    .reset(reset),
    .Default(1'b0)
);
dff Ddff(
    .D(next[3]),
    .Q(state[3]),
    .clock(div_clock),
    .reset(reset),
    .Default(1'b0)
);

assign next[0] = state[3];
assign next[1] = state[0];
assign next[2] = state[1];
assign next[3] = state[2];



endmodule
