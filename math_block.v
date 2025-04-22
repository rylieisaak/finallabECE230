module math_block(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AplusB,
    output [3:0] AminusB
);

wire [3:0] c_out; // for the adder
wire [3:0] C_out; // for the sub

// 4 bit adder
full_adder one(
.m(0),
.x(A[0]),
.y(B[0]),
.c_in(0),
.c_out(c_out[0]),
.sum(AplusB[0])
);

full_adder two(
.m(0),
.x(A[1]),
.y(B[1]),
.c_in(c_out[0]),
.c_out(c_out[1]),
.sum(AplusB[1])
);

full_adder three(
.m(0),
.x(A[2]),
.y(B[2]),
.c_in(c_out[1]),
.c_out(c_out[2]),
.sum(AplusB[2])
);

full_adder four(
.m(0),
.x(A[3]),
.y(B[3]),
.c_in(c_out[2]),
.c_out(c_out[3]),
.sum(AplusB[3])
);

// 4 bit sub
full_adder sub_one(
.m(1),
.x(A[0]),
.y(B[0]),
.c_in(1),
.c_out(C_out[0]),
.sum(AminusB[0])
);

full_adder sub_two(
.m(1),
.x(A[1]),
.y(B[1]),
.c_in(C_out[0]),
.c_out(C_out[1]),
.sum(AminusB[1])
);

full_adder sub_three(
.m(1),
.x(A[2]),
.y(B[2]),
.c_in(C_out[1]),
.c_out(C_out[2]),
.sum(AminusB[2])
);

full_adder sub_four(
.m(1),
.x(A[3]),
.y(B[3]),
.c_in(C_out[2]),
.c_out(C_out[3]),
.sum(AminusB[3])
);

endmodule



module full_adder(
input x, y, m,
input c_in,
output sum,
output c_out,
output A, B, C


);
assign M = m ^ y;

assign A = x ^ y;
assign B = c_in & A;
assign C = x & y;
assign c_out = B | C;
assign sum = A ^ c_in;

endmodule 
