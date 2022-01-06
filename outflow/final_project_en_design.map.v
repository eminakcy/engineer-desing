
//
// Verific Verilog Description of module robot
//

module robot (fpgaclk, rst, en, echo, trigger, led, sig_out_R, 
            sig_out_L);
    input fpgaclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input rst /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input en /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [2:0]echo /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [2:0]trigger /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [2:0]led /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]sig_out_R /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [3:0]sig_out_L /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire \motor_r/speed/count[0] , \motor_r/new_clk_net , \motor_r/speed/count[1] , 
        \motor_r/speed/count[2] , \motor_r/speed/count[3] , \motor_r/speed/count[4] , 
        \motor_r/speed/count[5] , \motor_r/speed/count[6] , \motor_r/speed/count[7] , 
        \motor_r/speed/count[8] , \motor_r/speed/count[9] , \motor_r/speed/count[10] , 
        \motor_r/speed/count[11] , \motor_r/speed/count[12] , \motor_r/speed/count[13] , 
        \motor_r/speed/count[14] , \motor_r/speed/count[15] , \motor_r/speed/count[16] , 
        \motor_r/speed/count[17] , \motor_r/speed/count[18] , \motor_r/speed/count[19] , 
        \motor_r/speed/count[20] , \motor_r/speed/count[21] , \motor_r/speed/count[22] , 
        \motor_r/speed/count[23] , \motor_r/speed/count[24] , \motor_r/speed/count[25] , 
        \motor_r/control/present_state[0] , \motor_r/control/present_state[1] , 
        \motor_r/control/present_state[2] , \motor_l/new_clk_net , \motor_l/control/present_state[0] , 
        \motor_l/control/present_state[1] , \motor_l/control/present_state[2] , 
        n277, \motor_l/new_clk_net~O , \motor_r/new_clk_net~O , n280, 
        n281, n282, n283, n284, n285, n286, n287, n288, n289, 
        n290, n291, n292, n293, n294, n295, n296, n297, n298, 
        n299, n300, n301, n302, n303, n304, n305, n306, n307, 
        n308, n309, n310, n311, n312, n313, n314, \fpgaclk~O , 
        n317, n318, n319, n320, n321, n322, n323, n324, n325, 
        n383, n384, n385, n386, n387, n388, n389, n390, n391, 
        n392, n393, n394, n395, n396, n397, n398, n399, n400, 
        n401, n402, n403, n404, n405;
    
    assign trigger[2] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign trigger[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[2] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[1] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[0] = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign trigger[1] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_FF \motor_r/speed/count[0]~FF  (.D(n277), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[0]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[0]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[0]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[0]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[0]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[0]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/motor_r/new_clk_net~FF  (.D(\motor_r/new_clk_net ), 
           .CE(n280), .CLK(\fpgaclk~O ), .SR(rst), .Q(\motor_r/new_clk_net )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/motor_r/new_clk_net~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .CE_POLARITY = 1'b0;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .D_POLARITY = 1'b0;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/motor_r/new_clk_net~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[1]~FF  (.D(n281), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[1]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[1]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[1]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[1]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[1]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[1]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[2]~FF  (.D(n282), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[2]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[2]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[2]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[2]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[2]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[2]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[3]~FF  (.D(n283), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[3] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[3]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[3]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[3]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[3]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[3]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[3]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[4]~FF  (.D(n284), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[4] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[4]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[4]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[4]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[4]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[4]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[4]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[4]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[5]~FF  (.D(n285), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[5] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[5]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[5]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[5]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[5]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[5]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[5]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[5]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[6]~FF  (.D(n286), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[6] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[6]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[6]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[6]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[6]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[6]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[6]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[6]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[7]~FF  (.D(n287), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[7] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[7]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[7]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[7]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[7]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[7]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[7]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[7]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[8]~FF  (.D(n288), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[8] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[8]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[8]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[8]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[8]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[8]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[8]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[8]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[9]~FF  (.D(n289), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[9] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[9]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[9]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[9]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[9]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[9]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[9]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[9]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[10]~FF  (.D(n290), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[10] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[10]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[10]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[10]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[10]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[10]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[10]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[10]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[11]~FF  (.D(n291), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[11] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[11]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[11]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[11]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[11]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[11]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[11]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[11]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[12]~FF  (.D(n292), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[12] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[12]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[12]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[12]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[12]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[12]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[12]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[12]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[13]~FF  (.D(n293), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[13] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[13]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[13]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[13]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[13]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[13]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[13]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[13]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[14]~FF  (.D(n294), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[14] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[14]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[14]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[14]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[14]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[14]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[14]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[14]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[15]~FF  (.D(n295), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[15] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[15]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[15]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[15]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[15]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[15]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[15]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[15]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[16]~FF  (.D(n296), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[16] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[16]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[16]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[16]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[16]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[16]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[16]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[16]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[17]~FF  (.D(n297), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[17] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[17]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[17]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[17]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[17]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[17]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[17]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[17]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[18]~FF  (.D(n298), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[18] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[18]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[18]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[18]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[18]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[18]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[18]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[18]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[19]~FF  (.D(n299), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[19] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[19]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[19]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[19]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[19]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[19]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[19]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[19]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[20]~FF  (.D(n300), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[20] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[20]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[20]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[20]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[20]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[20]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[20]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[20]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[21]~FF  (.D(n301), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[21] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[21]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[21]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[21]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[21]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[21]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[21]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[21]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[22]~FF  (.D(n302), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[22] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[22]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[22]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[22]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[22]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[22]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[22]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[22]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[23]~FF  (.D(n303), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[23] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[23]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[23]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[23]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[23]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[23]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[23]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[23]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[24]~FF  (.D(n304), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[24] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[24]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[24]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[24]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[24]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[24]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[24]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[24]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/speed/count[25]~FF  (.D(n305), .CE(1'b1), .CLK(\fpgaclk~O ), 
           .SR(rst), .Q(\motor_r/speed/count[25] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_r/speed/count[25]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/speed/count[25]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/speed/count[25]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/speed/count[25]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/speed/count[25]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/speed/count[25]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/speed/count[25]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/sig_out_R[3]~FF  (.D(n306), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(1'b0), .Q(sig_out_R[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_r/control/sig_out_R[3]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[3]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[3]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[3]~FF .D_POLARITY = 1'b0;
    defparam \motor_r/control/sig_out_R[3]~FF .SR_SYNC = 1'b1;
    defparam \motor_r/control/sig_out_R[3]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/sig_out_R[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/sig_out_R[2]~FF  (.D(n307), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(n306), .Q(sig_out_R[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_r/control/sig_out_R[2]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[2]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[2]~FF .SR_POLARITY = 1'b0;
    defparam \motor_r/control/sig_out_R[2]~FF .D_POLARITY = 1'b0;
    defparam \motor_r/control/sig_out_R[2]~FF .SR_SYNC = 1'b1;
    defparam \motor_r/control/sig_out_R[2]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/sig_out_R[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/sig_out_R[0]~FF  (.D(n308), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(n309), .Q(sig_out_R[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_r/control/sig_out_R[0]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[0]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[0]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[0]~FF .D_POLARITY = 1'b0;
    defparam \motor_r/control/sig_out_R[0]~FF .SR_SYNC = 1'b1;
    defparam \motor_r/control/sig_out_R[0]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/sig_out_R[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/sig_out_R[1]~FF  (.D(n310), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(n311), .Q(sig_out_R[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_r/control/sig_out_R[1]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[1]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[1]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/sig_out_R[1]~FF .D_POLARITY = 1'b0;
    defparam \motor_r/control/sig_out_R[1]~FF .SR_SYNC = 1'b1;
    defparam \motor_r/control/sig_out_R[1]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/sig_out_R[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/present_state[0]~FF  (.D(n312), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(rst), .Q(\motor_r/control/present_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_r/control/present_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[0]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[0]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/control/present_state[0]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/present_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/present_state[1]~FF  (.D(n313), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(rst), .Q(\motor_r/control/present_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_r/control/present_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[1]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[1]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/control/present_state[1]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/present_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_r/control/present_state[2]~FF  (.D(n314), .CE(1'b1), .CLK(\motor_r/new_clk_net~O ), 
           .SR(rst), .Q(\motor_r/control/present_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_r/control/present_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[2]~FF .CE_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[2]~FF .SR_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[2]~FF .D_POLARITY = 1'b1;
    defparam \motor_r/control/present_state[2]~FF .SR_SYNC = 1'b0;
    defparam \motor_r/control/present_state[2]~FF .SR_VALUE = 1'b0;
    defparam \motor_r/control/present_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/speed/motor_l/new_clk_net~FF  (.D(\motor_l/new_clk_net ), 
           .CE(n280), .CLK(\fpgaclk~O ), .SR(rst), .Q(\motor_l/new_clk_net )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b0, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\clock_div.v(39)
    defparam \motor_l/speed/motor_l/new_clk_net~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .CE_POLARITY = 1'b0;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .D_POLARITY = 1'b0;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .SR_SYNC = 1'b0;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .SR_VALUE = 1'b0;
    defparam \motor_l/speed/motor_l/new_clk_net~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/sig_out_L[3]~FF  (.D(n317), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(1'b0), .Q(sig_out_L[3])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_l/control/sig_out_L[3]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[3]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[3]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[3]~FF .D_POLARITY = 1'b0;
    defparam \motor_l/control/sig_out_L[3]~FF .SR_SYNC = 1'b1;
    defparam \motor_l/control/sig_out_L[3]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/sig_out_L[3]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/sig_out_L[2]~FF  (.D(n318), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(n317), .Q(sig_out_L[2])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b0 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_l/control/sig_out_L[2]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[2]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[2]~FF .SR_POLARITY = 1'b0;
    defparam \motor_l/control/sig_out_L[2]~FF .D_POLARITY = 1'b0;
    defparam \motor_l/control/sig_out_L[2]~FF .SR_SYNC = 1'b1;
    defparam \motor_l/control/sig_out_L[2]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/sig_out_L[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/sig_out_L[0]~FF  (.D(n319), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(n320), .Q(sig_out_L[0])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_l/control/sig_out_L[0]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[0]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[0]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[0]~FF .D_POLARITY = 1'b0;
    defparam \motor_l/control/sig_out_L[0]~FF .SR_SYNC = 1'b1;
    defparam \motor_l/control/sig_out_L[0]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/sig_out_L[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/sig_out_L[1]~FF  (.D(n321), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(n322), .Q(sig_out_L[1])) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b0, CE_POLARITY=1'b1, SR_SYNC=1'b1, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(133)
    defparam \motor_l/control/sig_out_L[1]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[1]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[1]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/sig_out_L[1]~FF .D_POLARITY = 1'b0;
    defparam \motor_l/control/sig_out_L[1]~FF .SR_SYNC = 1'b1;
    defparam \motor_l/control/sig_out_L[1]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/sig_out_L[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/present_state[0]~FF  (.D(n323), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(rst), .Q(\motor_l/control/present_state[0] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_l/control/present_state[0]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[0]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[0]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[0]~FF .D_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[0]~FF .SR_SYNC = 1'b0;
    defparam \motor_l/control/present_state[0]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/present_state[0]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/present_state[1]~FF  (.D(n324), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(rst), .Q(\motor_l/control/present_state[1] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_l/control/present_state[1]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[1]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[1]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[1]~FF .D_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[1]~FF .SR_SYNC = 1'b0;
    defparam \motor_l/control/present_state[1]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/present_state[1]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_FF \motor_l/control/present_state[2]~FF  (.D(n325), .CE(1'b1), .CLK(\motor_l/new_clk_net~O ), 
           .SR(rst), .Q(\motor_l/control/present_state[2] )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_FF, CLK_POLARITY=1'b1, D_POLARITY=1'b1, CE_POLARITY=1'b1, SR_SYNC=1'b0, SR_SYNC_PRIORITY=1'b1, SR_VALUE=1'b0, SR_POLARITY=1'b1 */ ;   // C:/Users\user\Desktop\mert proje\Yeni klasör\final_project_en_des\final_project_en_des.srcs\sources_1\imports\Desktop\Stepper_Motor_Full_Step\pmod_step_driver.v(114)
    defparam \motor_l/control/present_state[2]~FF .CLK_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[2]~FF .CE_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[2]~FF .SR_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[2]~FF .D_POLARITY = 1'b1;
    defparam \motor_l/control/present_state[2]~FF .SR_SYNC = 1'b0;
    defparam \motor_l/control/present_state[2]~FF .SR_VALUE = 1'b0;
    defparam \motor_l/control/present_state[2]~FF .SR_SYNC_PRIORITY = 1'b1;
    EFX_LUT4 LUT__646 (.I0(\motor_r/speed/count[1] ), .I1(\motor_r/speed/count[2] ), 
            .I2(\motor_r/speed/count[15] ), .I3(\motor_r/speed/count[16] ), 
            .O(n383)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__646.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__647 (.I0(\motor_r/speed/count[17] ), .I1(\motor_r/speed/count[20] ), 
            .I2(\motor_r/speed/count[21] ), .I3(\motor_r/speed/count[22] ), 
            .O(n384)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__647.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__648 (.I0(\motor_r/speed/count[0] ), .I1(\motor_r/speed/count[23] ), 
            .I2(\motor_r/speed/count[24] ), .I3(\motor_r/speed/count[25] ), 
            .O(n385)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__648.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__649 (.I0(\motor_r/speed/count[10] ), .I1(\motor_r/speed/count[12] ), 
            .I2(\motor_r/speed/count[11] ), .I3(\motor_r/speed/count[14] ), 
            .O(n386)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__649.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__650 (.I0(\motor_r/speed/count[3] ), .I1(\motor_r/speed/count[4] ), 
            .I2(\motor_r/speed/count[5] ), .I3(\motor_r/speed/count[6] ), 
            .O(n387)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0100 */ ;
    defparam LUT__650.LUTMASK = 16'h0100;
    EFX_LUT4 LUT__651 (.I0(\motor_r/speed/count[18] ), .I1(\motor_r/speed/count[19] ), 
            .O(n388)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__651.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__652 (.I0(\motor_r/speed/count[7] ), .I1(\motor_r/speed/count[13] ), 
            .I2(\motor_r/speed/count[9] ), .I3(\motor_r/speed/count[8] ), 
            .O(n389)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1000 */ ;
    defparam LUT__652.LUTMASK = 16'h1000;
    EFX_LUT4 LUT__653 (.I0(n386), .I1(n387), .I2(n388), .I3(n389), .O(n390)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__653.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__654 (.I0(n383), .I1(n384), .I2(n385), .I3(n390), .O(n280)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7fff */ ;
    defparam LUT__654.LUTMASK = 16'h7fff;
    EFX_LUT4 LUT__655 (.I0(\motor_r/speed/count[0] ), .I1(n280), .O(n277)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__655.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__656 (.I0(\motor_r/speed/count[0] ), .I1(\motor_r/speed/count[1] ), 
            .O(n281)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__656.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__657 (.I0(\motor_r/speed/count[0] ), .I1(\motor_r/speed/count[1] ), 
            .I2(\motor_r/speed/count[2] ), .O(n282)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__657.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__658 (.I0(\motor_r/speed/count[0] ), .I1(\motor_r/speed/count[1] ), 
            .I2(\motor_r/speed/count[2] ), .I3(\motor_r/speed/count[3] ), 
            .O(n283)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__658.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__659 (.I0(\motor_r/speed/count[0] ), .I1(\motor_r/speed/count[1] ), 
            .I2(\motor_r/speed/count[2] ), .I3(\motor_r/speed/count[3] ), 
            .O(n391)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__659.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__660 (.I0(\motor_r/speed/count[4] ), .I1(n391), .O(n284)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__660.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__661 (.I0(\motor_r/speed/count[4] ), .I1(n391), .I2(\motor_r/speed/count[5] ), 
            .O(n285)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__661.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__662 (.I0(\motor_r/speed/count[4] ), .I1(\motor_r/speed/count[5] ), 
            .I2(n391), .O(n392)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__662.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__663 (.I0(\motor_r/speed/count[6] ), .I1(n392), .I2(n280), 
            .O(n286)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__663.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__664 (.I0(\motor_r/speed/count[6] ), .I1(n392), .I2(\motor_r/speed/count[7] ), 
            .O(n287)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__664.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__665 (.I0(\motor_r/speed/count[4] ), .I1(\motor_r/speed/count[5] ), 
            .I2(\motor_r/speed/count[6] ), .I3(\motor_r/speed/count[7] ), 
            .O(n393)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__665.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__666 (.I0(n391), .I1(n393), .O(n394)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__666.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__667 (.I0(\motor_r/speed/count[8] ), .I1(n394), .I2(n280), 
            .O(n288)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__667.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__668 (.I0(\motor_r/speed/count[8] ), .I1(n394), .I2(\motor_r/speed/count[9] ), 
            .I3(n280), .O(n289)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__668.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__669 (.I0(\motor_r/speed/count[8] ), .I1(\motor_r/speed/count[9] ), 
            .I2(n392), .I3(n393), .O(n395)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__669.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__670 (.I0(\motor_r/speed/count[10] ), .I1(n395), .O(n290)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__670.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__671 (.I0(\motor_r/speed/count[10] ), .I1(n395), .I2(\motor_r/speed/count[11] ), 
            .I3(n280), .O(n291)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__671.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__672 (.I0(\motor_r/speed/count[10] ), .I1(\motor_r/speed/count[11] ), 
            .I2(n395), .I3(\motor_r/speed/count[12] ), .O(n292)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__672.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__673 (.I0(\motor_r/speed/count[8] ), .I1(\motor_r/speed/count[9] ), 
            .I2(\motor_r/speed/count[10] ), .I3(\motor_r/speed/count[12] ), 
            .O(n396)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__673.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__674 (.I0(n391), .I1(n393), .I2(n396), .O(n397)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__674.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__675 (.I0(\motor_r/speed/count[11] ), .I1(n397), .I2(\motor_r/speed/count[13] ), 
            .O(n293)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__675.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__676 (.I0(\motor_r/speed/count[11] ), .I1(\motor_r/speed/count[13] ), 
            .I2(n397), .O(n398)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__676.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__677 (.I0(\motor_r/speed/count[14] ), .I1(n398), .I2(n280), 
            .O(n294)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__677.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__678 (.I0(\motor_r/speed/count[14] ), .I1(n398), .I2(\motor_r/speed/count[15] ), 
            .O(n295)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__678.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__679 (.I0(\motor_r/speed/count[14] ), .I1(\motor_r/speed/count[15] ), 
            .O(n399)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__679.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__680 (.I0(n398), .I1(n399), .I2(\motor_r/speed/count[16] ), 
            .O(n296)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__680.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__681 (.I0(\motor_r/speed/count[14] ), .I1(\motor_r/speed/count[15] ), 
            .I2(\motor_r/speed/count[16] ), .O(n400)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__681.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__682 (.I0(n398), .I1(n400), .I2(\motor_r/speed/count[17] ), 
            .O(n297)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__682.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__683 (.I0(\motor_r/speed/count[11] ), .I1(\motor_r/speed/count[13] ), 
            .I2(\motor_r/speed/count[17] ), .I3(n400), .O(n401)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__683.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__684 (.I0(n397), .I1(n401), .O(n402)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__684.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__685 (.I0(\motor_r/speed/count[18] ), .I1(n402), .I2(n280), 
            .O(n298)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__685.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__686 (.I0(\motor_r/speed/count[18] ), .I1(n402), .I2(\motor_r/speed/count[19] ), 
            .I3(n280), .O(n299)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7800 */ ;
    defparam LUT__686.LUTMASK = 16'h7800;
    EFX_LUT4 LUT__687 (.I0(n388), .I1(n402), .I2(\motor_r/speed/count[20] ), 
            .O(n300)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__687.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__688 (.I0(\motor_r/speed/count[20] ), .I1(n388), .I2(n402), 
            .I3(\motor_r/speed/count[21] ), .O(n301)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__688.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__689 (.I0(\motor_r/speed/count[20] ), .I1(\motor_r/speed/count[21] ), 
            .I2(n388), .O(n403)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__689.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__690 (.I0(n397), .I1(n401), .I2(n403), .O(n404)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__690.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__691 (.I0(\motor_r/speed/count[22] ), .I1(n404), .I2(n280), 
            .O(n302)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6060 */ ;
    defparam LUT__691.LUTMASK = 16'h6060;
    EFX_LUT4 LUT__692 (.I0(\motor_r/speed/count[22] ), .I1(n404), .I2(\motor_r/speed/count[23] ), 
            .O(n303)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__692.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__693 (.I0(\motor_r/speed/count[22] ), .I1(\motor_r/speed/count[23] ), 
            .I2(n404), .I3(\motor_r/speed/count[24] ), .O(n304)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__693.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__694 (.I0(\motor_r/speed/count[22] ), .I1(\motor_r/speed/count[23] ), 
            .I2(\motor_r/speed/count[24] ), .O(n405)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__694.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__695 (.I0(n404), .I1(n405), .I2(\motor_r/speed/count[25] ), 
            .O(n305)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__695.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__696 (.I0(\motor_r/control/present_state[2] ), .I1(\motor_r/control/present_state[0] ), 
            .O(n311)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__696.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__697 (.I0(\motor_r/control/present_state[1] ), .I1(n311), 
            .O(n306)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__697.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__698 (.I0(\motor_r/control/present_state[1] ), .I1(n311), 
            .O(n307)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__698.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__699 (.I0(\motor_r/control/present_state[0] ), .I1(\motor_r/control/present_state[1] ), 
            .I2(\motor_r/control/present_state[2] ), .O(n308)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__699.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__700 (.I0(\motor_r/control/present_state[1] ), .I1(\motor_r/control/present_state[0] ), 
            .I2(\motor_r/control/present_state[2] ), .O(n309)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__700.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__701 (.I0(\motor_r/control/present_state[0] ), .I1(\motor_r/control/present_state[2] ), 
            .I2(\motor_r/control/present_state[1] ), .O(n310)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__701.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__702 (.I0(\motor_r/control/present_state[2] ), .I1(\motor_r/control/present_state[1] ), 
            .I2(en), .O(n312)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__702.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__703 (.I0(\motor_r/control/present_state[2] ), .I1(\motor_r/control/present_state[0] ), 
            .I2(\motor_r/control/present_state[1] ), .I3(en), .O(n313)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__703.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__704 (.I0(\motor_r/control/present_state[1] ), .I1(\motor_r/control/present_state[2] ), 
            .I2(en), .O(n314)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__704.LUTMASK = 16'h1010;
    EFX_LUT4 LUT__706 (.I0(\motor_l/control/present_state[2] ), .I1(\motor_l/control/present_state[0] ), 
            .O(n322)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__706.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__707 (.I0(\motor_l/control/present_state[1] ), .I1(n322), 
            .O(n317)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbbbb */ ;
    defparam LUT__707.LUTMASK = 16'hbbbb;
    EFX_LUT4 LUT__708 (.I0(\motor_l/control/present_state[1] ), .I1(n322), 
            .O(n318)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7777 */ ;
    defparam LUT__708.LUTMASK = 16'h7777;
    EFX_LUT4 LUT__709 (.I0(\motor_l/control/present_state[0] ), .I1(\motor_l/control/present_state[1] ), 
            .I2(\motor_l/control/present_state[2] ), .O(n319)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hbfbf */ ;
    defparam LUT__709.LUTMASK = 16'hbfbf;
    EFX_LUT4 LUT__710 (.I0(\motor_l/control/present_state[1] ), .I1(\motor_l/control/present_state[0] ), 
            .I2(\motor_l/control/present_state[2] ), .O(n320)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0e0e */ ;
    defparam LUT__710.LUTMASK = 16'h0e0e;
    EFX_LUT4 LUT__711 (.I0(\motor_l/control/present_state[0] ), .I1(\motor_l/control/present_state[2] ), 
            .I2(\motor_l/control/present_state[1] ), .O(n321)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hefef */ ;
    defparam LUT__711.LUTMASK = 16'hefef;
    EFX_LUT4 LUT__712 (.I0(\motor_l/control/present_state[2] ), .I1(\motor_l/control/present_state[1] ), 
            .I2(en), .O(n323)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4040 */ ;
    defparam LUT__712.LUTMASK = 16'h4040;
    EFX_LUT4 LUT__713 (.I0(\motor_l/control/present_state[2] ), .I1(\motor_l/control/present_state[0] ), 
            .I2(\motor_l/control/present_state[1] ), .I3(en), .O(n324)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h3500 */ ;
    defparam LUT__713.LUTMASK = 16'h3500;
    EFX_LUT4 LUT__714 (.I0(\motor_l/control/present_state[1] ), .I1(\motor_l/control/present_state[2] ), 
            .I2(en), .O(n325)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1010 */ ;
    defparam LUT__714.LUTMASK = 16'h1010;
    EFX_GBUFCE CLKBUF__2 (.CE(1'b1), .I(\motor_l/new_clk_net ), .O(\motor_l/new_clk_net~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__2.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__1 (.CE(1'b1), .I(\motor_r/new_clk_net ), .O(\motor_r/new_clk_net~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__1.CE_POLARITY = 1'b1;
    EFX_GBUFCE CLKBUF__0 (.CE(1'b1), .I(fpgaclk), .O(\fpgaclk~O )) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_GBUFCE, CE_POLARITY=1'b1 */ ;
    defparam CLKBUF__0.CE_POLARITY = 1'b1;
    
endmodule

//
// Verific Verilog Description of module EFX_FF0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF2
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF3
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF4
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF5
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF6
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF7
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF8
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF9
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF10
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF11
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF12
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF13
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF14
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF15
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF16
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF17
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF18
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF19
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF20
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF21
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF22
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF23
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF24
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF25
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF26
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF27
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF28
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF29
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF30
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF31
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF32
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF33
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF34
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF35
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF36
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF37
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF38
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF39
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_FF41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT40
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT41
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT42
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT43
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT44
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT45
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT46
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT47
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT48
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT49
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT410
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT411
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT412
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT413
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT414
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT415
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT416
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT417
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT418
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT419
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT420
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT421
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT422
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT423
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT424
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT425
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT426
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT427
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT428
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT429
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT430
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT431
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT432
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT433
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT434
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT435
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT436
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT437
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT438
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT439
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT440
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT441
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT442
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT443
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT444
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT445
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT446
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT447
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT448
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT449
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT450
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT451
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT452
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT453
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT454
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT455
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT456
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT457
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT458
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT459
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT460
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT461
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT462
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT463
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT464
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT465
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT466
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_LUT467
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE0
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE1
// module not written out since it is a black box. 
//


//
// Verific Verilog Description of module EFX_GBUFCE2
// module not written out since it is a black box. 
//

