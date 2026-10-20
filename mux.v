module mux(
    input [3:0] A, B, C, D,
    input [1:0] sel,
    input enable,
    output [3:0] Y
);

assign Y = enable == 'b0 ? 'b0000:
            sel == 'b00 ? A :
            sel == 'b01 ? B :
            sel == 'b10 ? C : D;

endmodule
