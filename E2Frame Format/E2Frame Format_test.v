module T1_test;
reg clk,reset;
wire [9:0] count;
wire [1:0]in;
wire [3:0] sel,data,Rdata,DEdata;
wire [9:0] a;
wire frame,inframe;

T1 d1(clk,reset,data,count,sel,in,a,frame,inframe,Rdata,DEdata);
 initial
    begin
      clk = 1'b1;
      reset = 1'b1;
      #10 reset= 1'b0;
   end
   always #10 clk = ~clk;
 initial
   #100000 $finish;
 endmodule

