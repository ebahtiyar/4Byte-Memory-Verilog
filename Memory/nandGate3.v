module nandGate3(x,y,z,out);
//Three input NAND gate
input x,y,z;
output out;
assign out = ~(x&y&z);

endmodule 