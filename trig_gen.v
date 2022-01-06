`timescale 1ns / 1ps
///////////trigger generator for ultrasonic sensor//////////////
module trigger_generator(clk,enable,trigg);
parameter n=10;
input clk,enable;
output reg  trigg;
reg resetCounter;
wire [23:0] outputCounter ;  

counter cnt (.clk(clk),.counter_output(outputCounter),.reset(resetCounter));

parameter [23:0] ms100 = 'b010011000100101101000000;
parameter [23:0] ms100And20us = 'b010011000100111100100110;
    always @ (posedge clk)begin 
        
        if (outputCounter> ms100 && outputCounter<ms100And20us)
        begin 
            trigg = 1;
        end
        else
        begin 
            trigg = 0;
        end
        if (outputCounter == ms100And20us)
        begin
            resetCounter = 0;
        end
        else 
        begin 
            resetCounter = 1;
        end
    end
endmodule
