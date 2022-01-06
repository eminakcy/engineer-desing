`timescale 1ns/1ps

module clkdiv (clock_50,clr,clock_q);

	input clock_50;
	input clr;
	output wire clock_q;
	
	reg [23:0] q;
	
	always @(clock_50,clr)
	
		begin
			if(clr == 1)
				begin
				q = 'h000000; //hex number
				end
			else if(clock_50 == 1)
				begin
				q = q+1;
				end
		end
assign clock_q = q[6];

endmodule