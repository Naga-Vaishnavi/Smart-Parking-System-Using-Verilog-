// Code your testbench here
module tb;
  reg clk,rst,entry,exit;
  wire gate_open,full;
  
  sps dut(.*);
  
  initial begin
$monitor("$time=%0t,clk=%b,rst=%b,entry=%b,exit=%b,gate_open=%b,full=%b",$time,clk,rst,entry,exit,gate_open,full);
  end
  
  initial begin
    clk=0;
     forever #5 clk=~clk;
  end
  
  initial begin
    repeat(5)begin
      @(posedge clk);
     #5; {entry,exit}=$random % 4;
    end
  end
   initial begin
     rst=0;
     entry=0;
     exit=0;#10;
     rst=1;
   end
  
  initial begin
    #200;
    $finish;
  end
  
endmodule
