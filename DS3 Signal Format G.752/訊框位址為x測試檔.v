module SIPO_test;
  reg clk;
  reg reset;
  reg in;
  wire [6:0] out;
  wire q;
  wire [9:0] a;
  wire [9:0] b;
  wire clk2;
  wire clk3;
  wire clk4;
  wire [2:0] l;
  wire [7:0] k;

  
 new25bit d1(clk, reset, in, out, q,clk2,clk3,clk4,a,l,k,b);
  initial
    begin
      in=1'd0;
      clk = 1'b1;
      reset = 1'b1;
      #10 reset= 1'b0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0; //start
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0; //start 2
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0; //start 3
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;

      #20 in=1'd1; //start 4
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;

      #20 in=1'd1; //start 5
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;

      #20 in=1'd0; //start 6
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;

      #20 in=1'd0; //start 7
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;

      #20 in=1'd1; //start 8
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;

      #20 in=1'd1; //start 9
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd0;

      #20 in=1'd1; //start 10
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;
      #20 in=1'd1;
      #20 in=1'd0;
      #20 in=1'd0;
      #20 in=1'd1;




 




   end
   always #10 clk = ~clk;
 initial
   #100000 $finish;
 endmodule

