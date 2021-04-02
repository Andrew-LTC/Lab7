`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/31/2021 09:47:44 PM
// Design Name: 
// Module Name: dual_sequence_detector_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dual_sequence_detector_tb(

    );
    
    reg clk;
    reg reset_n;
    reg x;
    wire y;
    
    dual_sequence_detector uut (
        .clk(clk),
        .reset_n(reset_n),
        .x(x),
        .y(y)
    );
    
    localparam T = 10;
    always
    begin
        #(T/2);
        clk = 1'b1;
        #(T/2);
        clk = 1'b0;
    end
    
    initial
    begin
        reset_n = 1'b0;
        x = 1'b0;
        #2  
        reset_n = 1'b1;
        
            x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  $finish;
    end
endmodule
