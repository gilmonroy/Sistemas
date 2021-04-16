module counter( 
input iclk,
output [3:0]oCount
);

reg[3:0] count_D = 4'd0;
reg[3:0] count_Q = 4'd0;

assign oCount = count_Q;

always @ (posedge iclk)

begin

count_Q <= count_D;

end

always @(*)
begin

if (count_Q ==  4'd15)
	begin
	count_D = 4'd0;
	end 
else 
begin
count_D = count_Q + 1'd1;
end

end
endmodule 