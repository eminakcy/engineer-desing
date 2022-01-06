`timescale 1ns/1ps

module pwm(clock_50,duty,pwm);

	input  		   clock_50  ;
	input   [15:0] duty      ;
	output  	   pwm		;

	reg [15:0] count;
	wire       clk;
	reg	       pwm_sig;
	reg [15:0] period = 'h00C3;
	reg		   clr = 0;
	
	clkdiv clkdiv (.clock_50(clock_50),.clr(clr),.clock_q(clk));
	
	always @(clk,clr)
	
		begin
		  if (clr== 1)
		    begin
		    count = 'h0000;
		    end
		  else if(clk == 1 )
		    begin
				if(count==period-1)
				  begin
				  count= 'h0000;
				  end
				else
				  begin
				  count=count+1;
				  end
		    end
		end
	
	
	always @(count,duty)
	
		begin
		  if (count < duty)
		    begin
		    pwm_sig = 1;
		    end
		  else if(count > duty)
		    begin
		    pwm_sig = 0;
		    end
		end		
	assign pwm = pwm_sig;
	
	
	
endmodule