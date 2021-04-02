`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/01/2021 09:21:43 PM
// Design Name: 
// Module Name: conseq_sequence_tb
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


module conseq_sequence_tb(

    );
    reg clk;
    reg reset_n;
    reg x;
    wire y;
    
    conseq_sequence uut (
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
        
            x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b0;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b1;
        #T  x = 1'b0;
        #T  $finish;
    end
endmodule
