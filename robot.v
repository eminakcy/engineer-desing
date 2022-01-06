`timescale 1ns / 1ps


module robot(

input fpgaclk,rst,en,
input [2:0] echo,
output [2:0] trigger,led,
output wire [3:0] sig_out_R,sig_out_L
);
reg motor_L_dir,motor_R_dir;
wire [2:0] ultrasonic;
wire     pwm_1,pwm_2;
reg forward,backward,turn_left,turn_right;
reg [15:0] duty_1,duty_2;
pwm pwm(.clock_50(fpgaclk),.duty(duty_1),.pwm(pwm_1));
three_ultrasonic three_ultrasonic(.fpgaclk(fpgaclk),.pulse(echo),.triggerout(trigger),.ultrasonic_out(ultrasonic));
step_motor motor_r (.clk(fpgaclk),.rst(rst),.direction(motor_R_dir),.en(en),.signal_out(sig_out_R));
step_motor motor_l (.clk(fpgaclk),.rst(rst),.direction(motor_L_dir),.en(en),.signal_out(sig_out_L));
always @(forward || backward || turn_left || turn_right) 
    begin 
    if (forward  ==1)begin
        motor_R_dir = 1; 
        motor_L_dir = 1; 
     
    end
    else if (backward == 1)begin
        motor_R_dir = 0; 
        motor_L_dir = 0; 
         
    end
    else if (turn_right == 1)begin
        motor_R_dir = 0; 
        motor_L_dir = 1; 
       
    end
    else if (turn_left == 1)begin
        motor_R_dir = 1; 
        motor_L_dir = 0; 
       
    end    
end
always @ (posedge fpgaclk)begin
    case (ultrasonic)
        3'b000: begin
            forward =1;
            backward = 0;
            turn_right = 0;
            turn_left =0;
            duty_1 = 'h00BE;
            duty_2 = 'h00C3;
        end
        3'b001: begin
           forward =0;
           backward = 0;
           turn_right = 0;
           turn_left =1;
           duty_1 = 'h00C3;
           duty_2 = 'h00C3; 
        end
        3'b010: begin
            forward =0;
            backward = 1;
            turn_right = 0;
            turn_left = 0;
            duty_1 = 'h0041;
            duty_2 = 'h00C3;          
        end
        3'b011: begin
            forward =0;
            backward = 1;
            turn_right = 0;
            turn_left = 0;
            duty_1 = 'h00C3;
            duty_2 = 'h0041;     
        end
        3'b100: begin
            forward =0;
            backward = 0;
            turn_right = 1;
            turn_left = 0;
            duty_1 = 'h00C3;
            duty_2 = 'h00C3;   
        end
        3'b101: begin 
            forward =1;
            backward = 0;
            turn_right = 0;
            turn_left = 0;
            duty_1 = 'h00BE;
            duty_2 = 'h00C3;
        end
        3'b110: begin
            forward =0;
            backward = 1;
            turn_right = 0;
            turn_left = 0;
            duty_1 = 'h0041;
            duty_2 = 'h00C3;
        end
        3'b111 :begin
            forward =0;
            backward = 1;
            turn_right = 0;
            turn_left = 0;
            duty_1 = 'h00C3;
            duty_2 = 'h0041;
        end
    endcase

end
assign led = ~ultrasonic;

endmodule
