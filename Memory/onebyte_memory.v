module onebyte_memory(
data,
clk,wr,
d_out,
out
);
input [0:7]data;
input clk,wr;
input d_out;
output [0:7]out;
wire [0:7]w_out;
wire [0:7]w;
flipflop(clk,data[7],w_out[7]);
// If WR 0 or d_out(address information) is zero , w is zero and out High Z
// it is tri-state buffer.
assign w[0] = wr & d_out; 
assign out[7] = w[0] ? w_out[7]:1'bz;

flipflop(clk,data[6],w_out[6]);
assign w[1] = wr & d_out;
assign out[6] = w[1] ? w_out[6]:1'bz;


flipflop(clk,data[5],w_out[5]);
assign w[2] = wr & d_out;
assign out[5] = w[2] ? w_out[5]:1'bz;

flipflop(clk,data[4],w_out[4]);
assign w[3] = wr & d_out;
assign out[4] = w[3] ? w_out[4]:1'bz;

flipflop(clk,data[3],w_out[3]);
assign w[4] = wr & d_out;
assign out[3] = w[4] ? w_out[3]:1'bz;


flipflop(clk,data[2],w_out[2]);
assign w[5] = wr & d_out;
assign out[2] = w[5] ? w_out[2]:1'bz;

flipflop(clk,data[1],w_out[1]);
assign w[6] = wr & d_out;
assign out[1] = w[6] ? w_out[1]:1'bz;

flipflop(clk,data[0],w_out[0]);
assign w[7] = wr & d_out;
assign out[0] = w[7] ? w_out[0]:1'bz;

endmodule 