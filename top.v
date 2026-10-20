module top(
    input [15:0] sw,
    input btnL, btnU, btnD, btnR, btnC,
    output [15:0] led
);

wire [1:0] sel_mux, sel_demux;
wire [3:0] internet;
wire enable_all;
assign sel_mux = {btnU, btnL};
assign sel_demux = {btnR, btnD};
assign enable_all = btnC;

mux townsfolk(
    .A(sw[3:0]),
    .B(sw[7:4]),
    .C(sw[11:8]),
    .D(sw[15:12]),
    .Y(internet),
    .sel(sel_mux),
    .enable(enable_all)
);

demux business(
    .Y(internet),
    .A(led[3:0]),
    .B(led[7:4]),
    .C(led[11:8]),
    .D(led[15:12]),
    .sel(sel_demux)
);

endmodule