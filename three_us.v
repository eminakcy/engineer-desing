`timescale 1ns/1ps

module three_ultrasonic(fpgaclk,pulse,triggerout,ultrasonic_out);
 
	input  		  fpgaclk          ;
	input   [2:0] pulse            ; //echo
	output  [2:0] triggerout       ; //trigger out
	output  [2:0] ultrasonic_out   ;
	wire pulse_0 = pulse [0];
	wire triggerout_0 = triggerout[0];	
	wire ultrasonic_out_0 = ultrasonic_out [0];
	wire pulse_1 = pulse [1];
    wire triggerout_1 = triggerout[1];    
    wire ultrasonic_out_1 = ultrasonic_out [1];
    wire pulse_2 = pulse [2];
    wire triggerout_2 = triggerout[2];    
    wire ultrasonic_out_2 = ultrasonic_out [2];
    ultrasonic ultrasonic_left   (.fpgaclk(fpgaclk),.pulse(pulse_0),.triggerout(triggerout_0),.obstacle(ultrasonic_out_0));
	ultrasonic ultrasonic_middle (.fpgaclk(fpgaclk),.pulse(pulse_1),.triggerout(triggerout_1),.obstacle(ultrasonic_out_1));
	ultrasonic ultrasonic_right  (.fpgaclk(fpgaclk),.pulse(pulse_2),.triggerout(triggerout_2),.obstacle(ultrasonic_out_2));
		
endmodule