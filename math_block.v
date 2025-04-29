module math_block(
    input [3:0] A,
    input [3:0] B,
    output [3:0] AplusB,
    output [3:0] AminusB
);


wire [3:0] carry_add;  
wire [3:0] carry_sub; 

// A + B
fulladder add0 (
.A(A[0]),
.B(B[0]),
.C(1'b0),
.Y(AplusB[0]),
.O(carry_add[0])
);


fulladder add1 (
.A(A[1]),
.B(B[1]),
.C(carry_add[0]),
.Y(AplusB[1]),
.O(carry_add[1])
);


fulladder add2 (
.A(A[2]),
.B(B[2]),
.C(carry_add[1]),
.Y(AplusB[2]),
.O(carry_add[2])
);


fulladder add3 (
.A(A[3]),
.B(B[3]),
.C(carry_add[2]),
.Y(AplusB[3]),
 .O(carry_add[3])
);

// two's compliment 

fulladder sub0 (
.A(A[0]),
.B(~B[0]),        
.C(1'b1),        
.Y(AminusB[0]),
.O(carry_sub[0])
);


fulladder sub1 (
.A(A[1]),
.B(~B[1]),
.C(carry_sub[0]),
.Y(AminusB[1]),
.O(carry_sub[1])
);


fulladder sub2 (
.A(A[2]),
.B(~B[2]),
.C(carry_sub[1]),
.Y(AminusB[2]),
.O(carry_sub[2])
);


fulladder sub3 (
.A(A[3]),
.B(~B[3]),
.C(carry_sub[2]),
.Y(AminusB[3]),
.O(carry_sub[3])
);

endmodule



// Lab 06

module fulladder(
    input A, B, C,
    output Y, O
);

assign Y = A ^ B ^ C;
assign O = (A & B) | (B & C) | (A & C);

endmodule
