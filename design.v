// Code your design here
//Smart Parking System
module sps(input clk,rst,entry,exit,output reg gate_open,full);
  reg [1:0] state;
  reg [1:0] car_count;
  parameter idle=2'b00;
  parameter enter=2'b01;
  parameter Exit=2'b10;
  parameter Full=2'b11;
  always@(posedge clk or negedge rst)
    begin
      if(!rst)
        begin
         state<=idle;
         gate_open<=0;
         full<=0;
         car_count<=0;
        end
      else begin
            gate_open <= 0;
            full<= 0;
        case(state)
           idle:begin
                  gate_open<=0;
                  full<=0;
              if(entry)begin
               state<=enter;
              end
             else if(exit && car_count>0)begin
               state<=Exit;
             end
             end
            enter:begin
              if(car_count<3)begin
                 car_count<= car_count+1;
                 gate_open<=1;
                 state<=idle;
              end
              else begin
                state<=Full;
               end
            end
            Exit:begin
              if(car_count>0) begin
                  car_count<=car_count-1;
                  gate_open<=1;
                  state<=idle;
               end
              else begin
                   state <= idle; 
                end
              
            end
            Full:begin
                full<=1; 
                gate_open<=0;
              if(exit && car_count > 0)begin
                car_count <= car_count - 1;                                             gate_open <= 1;
                
                  state<=Exit;
                 
                end
            end
          
      
        endcase
      end
      end
     
endmodule