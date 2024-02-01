`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 20:31:30
// Design Name: 
// Module Name: bidirectional_buffer
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


module bidirectional_buffer(en,d_in,d_out);
input en;
inout wire d_in;
inout wire d_out;
bufif1 (d_out,d_in,en);
bufif0 (d_in,d_out,en);
wire w2;
assign w2=d_out;
endmodule
