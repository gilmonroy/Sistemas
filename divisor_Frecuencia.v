module divisor_Frecuencia(
input clk_50Mhz,
output reg clk_1hz =1

);

reg [24:0] contador =0;

always@ (posedge clk_50Mhz)

begin

contador = contador+1;

if(contador == 25000000)

begin

contador = 0;

clk_1hz = ~clk_1hz;
end

end

endmodule 
