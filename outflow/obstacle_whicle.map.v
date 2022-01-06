
//
// Verific Verilog Description of module robot
//

module robot (fpgaclk, echo, trigger, led, motor_L_forward, motor_R_forward, 
            motor_L_backward, motor_R_backward);
    input fpgaclk /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    input [2:0]echo /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_INPUT=TRUE */ ;
    output [2:0]trigger /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output [2:0]led /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output motor_L_forward /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output motor_R_forward /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output motor_L_backward /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    output motor_R_backward /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    
    
    wire n8, n9, n10, n11, n12, n13, n14, n15, n33, n34, 
        n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, 
        n45, n46, n47, n115, n116, n117, n119, n121, n122, 
        n123, n124, n125, n126, n144, n145, n146, n147, n148, 
        n149, n150, n151, n152, n153, n154, n155, n156, n157, 
        n158, n228, n229, n230, n231, n232, n233, n234, n235, 
        n236, n237, n238, n239, n250, n251, n252, n253, n254, 
        n255;
    
    assign trigger[1] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign trigger[0] = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[2] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[1] = 1'b1 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign motor_L_forward = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign motor_L_backward = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign motor_R_backward = 1'b0 /* verific EFX_ATTRIBUTE_PORT__IS_PRIMARY_OUTPUT=TRUE */ ;
    assign led[0] = 1'b1 /* verific EFX_ATTRIBUTE_CELL_NAME=VCC */ ;
    assign trigger[2] = 1'b0 /* verific EFX_ATTRIBUTE_CELL_NAME=GND */ ;
    EFX_LUT4 \pwm/i49  (.I1(motor_R_forward), .I2(n115), .I3(n116), .O(motor_R_forward)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h00FC */ ;
    defparam \pwm/i49 .LUTMASK = 16'h00FC;
    EFX_LUT4 \pwm/dlatchrs_73/i1  (.I0(n117), .I1(n8), .I2(n15), .O(n8)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i1 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i1  (.I0(n119), .I1(n9), .I2(fpgaclk), 
            .O(n9)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i1 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i2  (.I0(n121), .I1(n10), .I2(fpgaclk), 
            .O(n10)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i2 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i3  (.I0(n122), .I1(n11), .I2(fpgaclk), 
            .O(n11)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i3 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i4  (.I0(n123), .I1(n12), .I2(fpgaclk), 
            .O(n12)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i4 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i5  (.I0(n124), .I1(n13), .I2(fpgaclk), 
            .O(n13)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i5 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i6  (.I0(n125), .I1(n14), .I2(fpgaclk), 
            .O(n14)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i6 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/clkdiv/dlatchrs_81/i7  (.I0(n126), .I1(n15), .I2(fpgaclk), 
            .O(n15)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/clkdiv/dlatchrs_81/i7 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i2  (.I0(n144), .I1(n33), .I2(n15), .O(n33)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i2 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i3  (.I0(n145), .I1(n34), .I2(n15), .O(n34)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i3 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i4  (.I0(n146), .I1(n35), .I2(n15), .O(n35)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i4 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i5  (.I0(n147), .I1(n36), .I2(n15), .O(n36)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i5 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i6  (.I0(n148), .I1(n37), .I2(n15), .O(n37)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i6 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i7  (.I0(n149), .I1(n38), .I2(n15), .O(n38)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i7 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i8  (.I0(n150), .I1(n39), .I2(n15), .O(n39)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i8 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i9  (.I0(n151), .I1(n40), .I2(n15), .O(n40)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i9 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i10  (.I0(n152), .I1(n41), .I2(n15), .O(n41)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i10 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i11  (.I0(n153), .I1(n42), .I2(n15), .O(n42)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i11 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i12  (.I0(n154), .I1(n43), .I2(n15), .O(n43)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i12 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i13  (.I0(n155), .I1(n44), .I2(n15), .O(n44)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i13 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i14  (.I0(n156), .I1(n45), .I2(n15), .O(n45)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i14 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i15  (.I0(n157), .I1(n46), .I2(n15), .O(n46)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i15 .LUTMASK = 16'hacac;
    EFX_LUT4 \pwm/dlatchrs_73/i16  (.I0(n158), .I1(n47), .I2(n15), .O(n47)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hacac */ ;
    defparam \pwm/dlatchrs_73/i16 .LUTMASK = 16'hacac;
    EFX_LUT4 LUT__348 (.I0(n34), .I1(n35), .I2(n36), .I3(n37), .O(n228)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__348.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__349 (.I0(n33), .I1(n228), .I2(n38), .I3(n39), .O(n229)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'hf800 */ ;
    defparam LUT__349.LUTMASK = 16'hf800;
    EFX_LUT4 LUT__350 (.I0(n44), .I1(n45), .I2(n46), .I3(n47), .O(n230)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__350.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__351 (.I0(n40), .I1(n41), .I2(n42), .I3(n43), .O(n231)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__351.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__352 (.I0(n230), .I1(n231), .O(n232)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__352.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__353 (.I0(n229), .I1(n232), .O(n115)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4444 */ ;
    defparam LUT__353.LUTMASK = 16'h4444;
    EFX_LUT4 LUT__354 (.I0(n8), .I1(n33), .O(n233)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__354.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__355 (.I0(n228), .I1(n233), .O(n234)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__355.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__356 (.I0(n38), .I1(n234), .I2(n39), .I3(n232), .O(n116)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'he0ff */ ;
    defparam LUT__356.LUTMASK = 16'he0ff;
    EFX_LUT4 LUT__357 (.I0(n34), .I1(n35), .I2(n36), .I3(n37), .O(n235)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0001 */ ;
    defparam LUT__357.LUTMASK = 16'h0001;
    EFX_LUT4 LUT__358 (.I0(n8), .I1(n33), .I2(n38), .I3(n39), .O(n236)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h4000 */ ;
    defparam LUT__358.LUTMASK = 16'h4000;
    EFX_LUT4 LUT__359 (.I0(n230), .I1(n231), .I2(n235), .I3(n236), .O(n237)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__359.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__360 (.I0(n8), .I1(n237), .O(n117)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1111 */ ;
    defparam LUT__360.LUTMASK = 16'h1111;
    EFX_LUT4 LUT__361 (.I0(n9), .I1(n10), .O(n121)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__361.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__362 (.I0(n9), .I1(n10), .I2(n11), .O(n122)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__362.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__363 (.I0(n9), .I1(n10), .I2(n11), .I3(n12), .O(n123)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__363.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__364 (.I0(n9), .I1(n10), .I2(n11), .I3(n12), .O(n238)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__364.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__365 (.I0(n13), .I1(n238), .O(n124)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__365.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__366 (.I0(n13), .I1(n238), .I2(n14), .O(n125)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__366.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__367 (.I0(n13), .I1(n14), .I2(n238), .O(n239)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__367.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__368 (.I0(n15), .I1(n239), .O(n126)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__368.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__396 (.I0(n237), .I1(n8), .I2(n33), .O(n144)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__396.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__397 (.I0(n34), .I1(n233), .O(n145)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__397.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__398 (.I0(n34), .I1(n233), .I2(n35), .O(n146)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__398.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__399 (.I0(n34), .I1(n35), .I2(n233), .O(n250)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8080 */ ;
    defparam LUT__399.LUTMASK = 16'h8080;
    EFX_LUT4 LUT__400 (.I0(n36), .I1(n250), .O(n147)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__400.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__401 (.I0(n36), .I1(n250), .I2(n37), .O(n148)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__401.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__402 (.I0(n237), .I1(n38), .I2(n234), .O(n149)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h1414 */ ;
    defparam LUT__402.LUTMASK = 16'h1414;
    EFX_LUT4 LUT__403 (.I0(n38), .I1(n234), .I2(n237), .I3(n39), .O(n150)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h0708 */ ;
    defparam LUT__403.LUTMASK = 16'h0708;
    EFX_LUT4 LUT__404 (.I0(n38), .I1(n39), .O(n251)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__404.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__405 (.I0(n234), .I1(n251), .I2(n40), .O(n151)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__405.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__406 (.I0(n40), .I1(n234), .I2(n251), .I3(n41), .O(n152)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__406.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__407 (.I0(n38), .I1(n39), .I2(n40), .I3(n41), .O(n252)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__407.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__408 (.I0(n234), .I1(n252), .I2(n42), .O(n153)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__408.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__409 (.I0(n42), .I1(n234), .I2(n252), .I3(n43), .O(n154)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__409.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__410 (.I0(n42), .I1(n43), .O(n253)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__410.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__411 (.I0(n228), .I1(n233), .I2(n252), .I3(n253), .O(n254)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8000 */ ;
    defparam LUT__411.LUTMASK = 16'h8000;
    EFX_LUT4 LUT__412 (.I0(n44), .I1(n254), .O(n155)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h6666 */ ;
    defparam LUT__412.LUTMASK = 16'h6666;
    EFX_LUT4 LUT__413 (.I0(n44), .I1(n254), .I2(n45), .O(n156)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__413.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__414 (.I0(n44), .I1(n45), .O(n255)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h8888 */ ;
    defparam LUT__414.LUTMASK = 16'h8888;
    EFX_LUT4 LUT__415 (.I0(n254), .I1(n255), .I2(n46), .O(n157)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7878 */ ;
    defparam LUT__415.LUTMASK = 16'h7878;
    EFX_LUT4 LUT__416 (.I0(n46), .I1(n254), .I2(n255), .I3(n47), .O(n158)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h7f80 */ ;
    defparam LUT__416.LUTMASK = 16'h7f80;
    EFX_LUT4 LUT__527 (.I0(n9), .O(n119)) /* verific EFX_ATTRIBUTE_CELL_NAME=EFX_LUT4, LUTMASK=16'h5555, EFX_ATTRIBUTE_INSTANCE__IS_LUT_SOP_INF_INV=TRUE */ ;
    defparam LUT__527.LUTMASK = 16'h5555;
    
endmodule

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

