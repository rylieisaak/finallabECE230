module dff(
    input Default,
    input D,
    input clock,
    input reset,
    output reg Q,
    output NotQ
);

assign NotQ = ~Q;

    initial begin
        Q <= Default;
    end

    always @(posedge clock, posedge reset) begin
        if (reset)
            Q <= Default;
        else
            Q <= D;
    end

endmodule
