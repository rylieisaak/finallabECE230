module top
 #(
     parameter DIVIDE_BY = 17 // Use this when passing in to your clock div!
     // The test bench will set it appropriately for testing
 )
 (
     input [7:0] sw, // A and B
     input clk, // 100 MHz board clock
     input btnC, // Reset
     output [3:0] an, // 7seg anodes
     output [6:0] seg // 7seg segments
 );
 
 wire clock_div;
 wire [3:0] a;
 wire [3:0] b;
 wire [3:0]  wireAplusB;
 wire [3:0] wireAminusB;
 
     clock_div #(.DIVIDE_BY(DIVIDE_BY)) clockdivider(
     .clock(clk),
     .reset(btnC),
     .div_clk(clock_div)
     );
     
     seven_seg_scanner sevensegscanner(
     .div_clock(clock_div),
     .reset(btnC),
     .anode(an)
     );
     
     assign a = sw[3:0];
     assign b = sw[7:4];
     
     math_block mathblock(
     .A(a),
     .B(b),
     .AminusB(wireAminusB),
     .AplusB(wireAplusB)
     );
     
     seven_seg_decoder sevensegdecoder(
     .A(a),
     .B(b),
     .anode(an),
     .AplusB(wireAplusB),
     .AminusB(wireAminusB),
     .segs(seg)
     );
       
     
     // ... wire it up to the scanner
     // ... wire the scanner to the decoder
 
     // Wire up the math block into the decoder
 
     // Do not forget to wire up resets!!
 
 endmodule
