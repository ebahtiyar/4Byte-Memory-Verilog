module flipflop(clk,data,out);

input clk,data;
output out;
wire [0:7]w;

nand(w[0],w[1],w[3]);
nand(w[1],w[0],clk);
nandGate3(w[3],w[1],clk,w[2]);
nand(w[3],w[2],data);

nand(w[4],w[2],w[5]);
nand(w[5],w[1],w[4]);
assign out = w[5];

endmodule 