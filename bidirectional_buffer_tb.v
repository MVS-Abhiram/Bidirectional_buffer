`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.12.2023 20:42:46
// Design Name: 
// Module Name: bidirectional_buffer_tb
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


module bidirectional_buffer_tb();
reg en;
reg tempd_in,tempd_out;
wire d_in,d_out;
integer i;
bidirectional_buffer uut(.en(en),.d_in(d_in),.d_out(d_out));
assign d_in=(en==1'b1) ? tempd_in:1'bz;
assign d_out=(en== 1'b0) ? tempd_out:1'bz;
initial
begin
for(i=0 ;i<8 ;i=i+1)
    begin
        {tempd_in,tempd_out,en} = i;
        #10;
        end
    end
initial
begin
    $monitor($time ," input tempd_in = %b,tempd_out = %b,output d_in= %b,d_out= %b",tempd_in,tempd_out,d_in,d_out);
    #100 $finish;
    end
endmodule
