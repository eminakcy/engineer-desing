`timescale 1ns / 1ps

module step_motor(
    input clk,
    input rst,
    input direction,
    input en,
    output [3:0] signal_out
    );
    
    // Wire to connect the clock signal 
    // that controls the speed that the motor
    // steps from the clock divider to the 
    // state machine. 
    wire new_clk_net;
    
    // Clock Divider to take the on-board clock
    // to the desired frequency.
   motor_speed speed(
        .clk(clk),
        .rst(rst),
        .new_clk(new_clk_net)
        );
    
    // The state machine that controls which 
    // signal on the stepper motor is high.      
    pmod_step_driver control(
        .rst(rst),
        .dir(direction),
        .clk(new_clk_net),
        .en(en),
        .signal(signal_out)
        );    
    
endmodule
