module Avect_tb();

//*Asignacion de reg's*//
reg inSeñal;
reg i_clk = 1'd0;
//*Asignacion de wire's*//
wire [7:0] o_Val;

Avect(
.inSeñal(inSeñal),
.i_clk(i_clk),
.o_Val(o_Val)

);