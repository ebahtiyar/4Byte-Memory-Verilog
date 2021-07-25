module demux(en,adr0,adr1,out1,out2,out3,out4);
input en; // enable
input adr1,adr0; // selection pin
output out1,out2,out3,out4;

andgate3(en,~adr1,~adr0,out1);
andgate3(en,~adr1,adr0,out2);
andgate3(en,adr1,~adr0,out3);
andgate3(en,adr1,adr0,out4);
endmodule 