module FFD(
data,
clk,
reset,
q
);
	//*Asignacion de entradas y salidas*//
input data, clk, reset;
output q;
reg q;	
                    //*Asignacion de wires*//
//*En este codigo no fue necesaria la asignacion de wires*//		


//*Descripcion del codigo*//				
always @ (posedge clk )
begin
if(reset)
q=0;
else
q<= data;
end 

endmodule 
//*Fin del modulo*//
