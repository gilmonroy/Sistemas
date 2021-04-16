module StateMachine(
	input iclk,
	input irst,
	input iStop,
	input iback,
	output [1:0]oVal
	);
	
	
	//*Declaracion de reg's*//
	
	
reg [1:0]rVal_D;
reg [1:0]rVal_Q;
reg [1:0]rState_D;
reg [1:0]rState_Q;
	
	
	//*Asignacion*//
	
	
assign oVal = rState_Q;
	
	
//*Cuerpo del codigo*//


always @(posedge iclk)
	begin 
		rVal_Q <= rVal_D;
		rVal_Q <= rState_D;
	end
	valor
	always @ *
	begin
		case (rState_Q)
		2'd0: //*Primer estado*//
		begin 
			if (!irest && !iStop)
			begin 
				rState_D = 2'd1;
			end
			else
			begin			
				rState_D = rState_Q;
			end
			rVal_D = 2'd0;
		end
		2'd1: //*Segundo estado*//
		begin 
			if (!irest && !iStop)
			begin 
				rState_D = 2'd2;
			end
			else if(iback)
			begin
				rState_D = 2'd0;
			end
			else if(irest)
			begin
				rState_D = 2'd0;
			end
			else
			begin
				rState_D = rState_Q;
			end
			rVal_D = 2'd1;
		end		
		2'd2: //*Tercer estado*//
		begin 
			if (!irest && !iStop)
			begin 
				rState_D = 2'd3;
			end
			else if(irest)
			begin
				rState_D = 2'd0;
			end
			else if(iback)
			begin
				rState_D = 2'd1;
			end
			else
			begin
				rState_D = rState_Q;
			end
		end
		
		2'd3:
		begin
					if (!irest && !iStop)
			begin 
				rState_D = 2'd0;
			end
			else if(irest)
			begin
				rState_D = 2'd0;
			end
			else if(iback)
			begin
				rState_D = 2'd2;
			end
			else
			begin
				rState_D = rState_Q;
			end
		end
		
		default:
		begin
		rState_D = 2'd0;
		rVal_D = 2'd0;
		end
		endcase
	end
	
endmodule
//*Juan Carlos Morales E. #reg..4645375*//