module Avect(
input inSeñal,
input i_clk,
output [7:0] o_Val
);
//*Declaracion de reg's*//

reg [7:0] Val_Q =8'd0;
reg[7:0] Val_D=8'd0;
reg[1:0] VaCounter_D = 2'd0;
reg[1:0] VaCounter_Q;

//*Assign's*///

assign o_Val = Val_Q;

//*Cuerpo del codigo*//

always @(posedge i_clk)
begin
Val_Q <= Val_D;
VaCounter_D <= VaCounter_Q;
end

always @*
begin
if(VaCounter_Q < 4'd8)
begin
 Val_D[VaCounter_Q]= inSeñal;
 VaCounter_D = VaCounter_Q + 4'd1;
 end
 else
 begin
 VaCounter_D = 4'd0;
 end
 end
 endmodule 
 
