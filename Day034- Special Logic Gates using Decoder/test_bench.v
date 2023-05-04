`timescale 1ns / 1ps

module test_bench;
    reg a, b;
    wire xor_g, xnor_g;
         
    decoder_xor_xnor dut(a, b, xor_g, xnor_g);
    initial begin
            a= 1'b0; b= 1'b0;
        #10 a= 1'b0; b= 1'b1;
        #10 a= 1'b1; b= 1'b0;
        #10 a= 1'b1; b= 1'b1;
    end
    initial 
     begin $monitor("a: %b  b: %b  xor: %b  xnor: %b",a, b, xor_g, xnor_g);
     #40 $finish;
     end
endmodule
