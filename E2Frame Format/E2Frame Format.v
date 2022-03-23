module T1(clk,reset,data,count,sel,in,a,frame,inframe,Rdata,DEdata);
input clk,reset;
//TX
output [3:0] data,sel;
output [9:0] count;
output [1:0]in;
reg [3:0] data,sel;
reg [9:0] count;
reg [1:0]in;
//TX

//RX
output [9:0] a;
output frame,inframe;
reg [9:0] a;
reg frame,inframe;
output [3:0]Rdata,DEdata;
reg [3:0]Rdata,DEdata;
//RX

//TX
always@(posedge clk)
begin
  if  (reset)
    begin
    count=0;  sel=0; 
    end
  else if (count==847)
    count = 0;
  else
    begin
      count=count+1;
      data[3] = data[2];
      data[2] = data[1];
      data[1] = data[0];
      data[0] = in;
    end
end

always@(posedge clk)
begin
  if (sel==3)
  sel=0;
  else
  sel=sel+1;
end

always@(sel)
begin
  if (sel==0)
  in=1;
  else if (sel==1)
  in=1;
  else if (sel==2)
  in=0;
  else if (sel==3)
  in=0;
end

always@(count)
begin
  if (count <=3)
  data = 4'b1111;
  else if (count >=4 && count <=7)
  data = 4'b0100;
  else if (count >=8 && count <=11)
  data = 4'b0000;
  else if (count >=212 && count <=215)
  data = 4'b1010;
  else if (count >=414 && count <=417)
  data = 4'b1010;
  else if (count >=636 && count <=639)
  data = 4'b1010;
  else if (count >=640 && count <=643)
  data = 4'b0000;
end

//TX

//RX
always@(clk or data)
begin
  if (reset)
  begin
    a=0; frame=0;
  end
  else if (count<13 && data==4'b1111 || count<13 && data==4'b0100 || count<13 && data==4'b0000)
  frame=1;
  else
  frame=0;
end

always@(frame or clk)
begin
  if(a==50)
  a=a;
  else if (frame==1)
  a=a+1;
  else
  a=a;
end

always@(a)
begin
  if (reset)
  inframe=0;
  else if (a==50)
  inframe=1;
  else
  inframe=0;
end

always@(data or clk or inframe)
begin
  if (reset)
  Rdata=0;
  else if (inframe==1)
  Rdata=data;
end

always@(Rdata)
begin
  if (reset)
  DEdata=0;
  else if (count<13 && data==4'b1111 || count<13 && data==4'b0100 || count<13 && data==4'b0000)
  DEdata=4'bxxxx;
  else
  DEdata=Rdata;
end
//RX

endmodule
