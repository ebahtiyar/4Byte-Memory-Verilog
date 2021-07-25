module mainFPGA
(
data,
clk,en_led,wr_led,wr_bttn,
adr_led,
out,
digit
);
output digit;
assign digit = 0;
input clk;
output clk,en_led,wr_led;
input wr_bttn; // reset button
input [0:7]data;
output   [0:1]adr_led;
output [0:7]out; // seven segment
// There are 5 input in our fpga so that we assinged with handled some inputs
//Our led give ligh in "0"
assign wr_led = wr_bttn; //LED 1
assign en_led = 1; // LED 2 
assign adr_led[0] = 0; // LED 3 
assign adr_led[1] = 0; // LED 4

// Our seven segment is high low so "0" give light and "1" does not give light
fourbytememory
(
data,
clk,en_led,wr_led,
adr_led,
out
);




endmodule 