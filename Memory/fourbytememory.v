module fourbytememory
(
data,
clk,en,wr,
adr,
out
);
input clk,en,wr;
input [0:7]data;
input  [0:1]adr;
output [0:7]out;
wire [0:7]w_out;
wire [0:3]d_out;
demux(en,adr[1],adr[0],d_out[0],d_out[1],d_out[2],d_out[3]);
onebyte_memory(
data,
clk,wr,
d_out[0],
out
);

onebyte_memory(
data,
clk,wr,
d_out[1],
out
); 

onebyte_memory(
data,
clk,wr,
d_out[2],
out
); 



onebyte_memory(
data,
clk,wr,
d_out[3],
out
);

assign out = ~en ? 0 :1'bz;

endmodule 