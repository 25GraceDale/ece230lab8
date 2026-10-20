module demux(
    input [3:0] Y,
    input [1:0] sel,
    output [3:0] A, B, C, D
);

assign A = (sel == 'b00 ? Y : 'b0000);
assign B = (sel == 'b01 ? Y : 'b0000);
assign C = (sel == 'b10 ? Y : 'b0000);
assign D = (sel == 'b11 ? Y : 'b0000);

endmodule
