module counter_Hexa (
input [3:0]A,
output reg[6:0]oM

);
//*Cuerpo del codigo*//



always @ (*)

begin
case (A)

4'h0:
 oM = 7'b1000000;//*Hexadecimal 0*//
4'h1:
	oM = 7'b1111001;//*Hexadecimal 1*//
4'd2:
	oM = 7'b0100100;//*Hexadecimal 2*//
4'h3:
	oM = 7'b0110000;//*Hexadecimal 3*//
4'h4:
	oM = 7'b0011001;//*Hexadecimal 4*//
4'h5:
	oM = 7'b0010010;//*Hexadecimal 5*//
4'h6:
	oM = 7'b0000010;//*Hexadecimal 6*//
4'h7:
	oM = 7'b1111000;//*Hexadecimal 7*//
4'h8:
	oM = 7'b0000000;//*Hexadecimal 8*//
4'd9:
	oM = 7'b0011000;//*Hexadecimal 9*//
4'd10:
	oM = 7'b0001000;//*Hexadecimal A*//
4'd11:
	oM = 7'b0000011;//*Hexadecimal B*//
4'd12:
	oM = 7'b1000110;//*Hexadecimal C*//
4'd13:
	oM = 7'b0100001;//*Hexadecimal D*//
4'd14:
	oM = 7'b0000110;//*Hexadecimal E*//
4'd15:
	oM = 7'b0001110;//*Hexadecimal F*//

endcase

end


endmodule


