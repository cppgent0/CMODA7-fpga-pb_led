`timescale 1ns / 1ps

module btn_led(
    input [1:0]btn,   // BTN0
    output [1:0]led   // LED1
    );
    
    // Assign btn to the led
    assign led = btn;
    
endmodule
