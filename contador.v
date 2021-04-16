module contador(
input clk,
output [6:0]sevenseg

);
//*Declaracion de wires*//
 wire [3:0] conector;
 wire  conector2;
 //*Instanciamientos con los demas codigos*//
 

 counter( 
.iclk(conector2),
.oCount(conector)
);
 
  counter_Hexa(
.A(conector),
.oM(sevenseg)
);


divisor_Frecuencia(
.clk_50Mhz(clk),
.clk_1hz (conector2)

);

endmodule 
