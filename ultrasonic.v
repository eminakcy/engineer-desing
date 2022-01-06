`timescale 1ns/1ps

module ultrasonic(fpgaclk,pulse,triggerout,obstacle);

	input  	fpgaclk    ;
	input   pulse      ; //echo
	output  triggerout ; //trigger out
	output reg obstacle   ;

	wire [21:0] pulse_width;
	wire	trigg;
    wire trigg_not = ~trigg;
	counter counter (.clk(fpgaclk),.enable(pulse),.reset(trigg_not),.counter_output(pulse_width));
	
	trigger_generator triggen (.clk(fpgaclk),.trigg(trigg));
	
	always @(pulse_width)
		
		begin
		  if (pulse_width < 55000)
		    begin
		    obstacle = 1;
		    end
		  else
		    begin
		    obstacle = 0;
		    end
		end
assign	triggerout = trigg;
	
endmodule