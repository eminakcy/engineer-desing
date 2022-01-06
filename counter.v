`timescale 1ns / 1ps
module counter (clk,enable,reset,counter_output);
input clk,enable,reset;
output  wire [21:0] counter_output;
reg [21:0] count;


always @ (posedge clk & reset) begin 

    if (reset == 0)begin
        count=0;
    end
    else if (enable==1)begin
        count = count+1;
    end
end
assign counter_output = count;
endmodule