module new25bit(clk,reset,in,out,q,clk2,clk3,clk4,a,l,k,b);
input clk,reset,in;
output [6:0] out;
reg [6:0] out;
output q;
reg q;
output [9:0] a;
reg [9:0] a;
output [9:0] b;
reg [9:0] b;


output clk2,clk3,clk4;
reg clk2,clk3,clk4;

output [2:0] l;
reg [2:0] l;
output [7:0] k;
reg [7:0] k;

  //–25Data1Pulse 
always@(posedge clk)
begin
  if (reset)
  begin  
  out=0; q=0; b=0; a=0; clk2=0; a=0; l=0; clk3=0;clk4=0;
  end
  else if (out==24)
  begin
     out=0;
     q=1;
  end
     else
  begin      
     out=out+1;
     q=0;
  end


end
   //–25Data1Pulse 

   //计璸计竟
always@(posedge clk)
begin
   if (a==1000)
   a=0;
   else
   a=a+1;
end

always@(posedge clk)
begin
 if (a>26)
  begin
    if(l==3'b111)
    b=b+1;
    else if (b==3)
    b=0;
  end
end
   //计璸计竟




  //clk2
always@(negedge clk)
begin
  if (a<=25)
  clk2=0;
  else if (q==1)
  clk2=0;
  else if (clk2==0)
  clk2=1;
  else
  clk2=0;
end
  //clk2

  //clk3
always@(negedge  clk2)
begin
  if (a<=25)
  clk3=0;
  else if (q==1)
  clk3=0;
  else if (clk3==1)
  clk3=0;
  else 
  clk3=1;
end
  //clk3

  //clk4
always@(negedge clk3)
begin
  if(a<=25)
  clk4=0;
  else if (q==1)
  clk4=0;
  else if (clk4==1)
  clk4=0;
  else
  clk4=1;
end
  //clk4

  //北絬
always@(posedge clk or clk2 or clk3 or clk4)
begin
l[2] = clk4;
l[1] = clk3;
l[0] = clk2;
end
  //北絬

  //肚癳戈 10011001
always@(negedge clk)
if (reset)
k=0;
else if (l==3'b000 && a<=26)
k=8'b00000001;


else
begin
k[7] = k[6];
k[6] = k[5];
k[5] = k[4];
k[4] = k[3];
k[3] = k[2];
k[2] = k[1];
k[1] = k[0];
k[0] = in;
end
  //肚癳戈 10011001


always@(negedge clk)
begin
  if (l==3'b111 && b==3)
  k=8'b0011001x;
end

endmodule

