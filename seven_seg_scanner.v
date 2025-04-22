module seven_seg_scanner(
    input div_clock,
    input reset,
    output [3:0] anode
);


DFF dff0(
.D(anode[1]),
.clock(div_clock),
.reset(reset),
.Q(anode[0])
);

DFF dff1(
.D(anode[2]),
.clock(div_clock),
.reset(reset),
.Q(anode[1])
);

DFF dff2(
.D(anode[3]),
.clock(div_clock),
.reset(reset),
.Q(anode[2])
);

DFF dff3(
.D(anode[0]),
.clock(div_clock),
.reset(reset),
.Q(anode[3])
);

assign anode[0] = (anode[0] & ~anode[1] & ~anode[2] & ~anode[3] & anode[1]); 
assign anode[1] = (~anode[0] & anode[1] & ~anode[2] & ~anode[3] & anode[2]); 
assign anode[2] = (~anode[0] & ~anode[1] & anode[2] & ~anode[3] & anode[3]); 
assign anode[3] = (~anode[0] & ~anode[1] & ~anode[2] & anode[3] & anode[0]);    


endmodule

