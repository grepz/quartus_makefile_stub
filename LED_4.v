module LED_4(input 	     nrst,
	     input 	     clk,
	     inout reg [3:0] led);
   reg [31:0] counter;
   reg 	      clk2;
   reg [7:0]  i;
   reg [3:0]  led_reg;

   always@(posedge clk, negedge nrst) begin
      if(!nrst) begin
	 counter <= 0;
	 clk2 <= 0;
      end
      else if (counter == 10000000) begin
	 counter <= 0;
	 clk2 = ~clk2;
      end
      else
	counter <= counter + 32'd1;
   end

   always@(posedge clk2, negedge nrst) begin
      if(!nrst)
	led <= 4'd0;
      else
	case (i)
	  0:	begin led <= 4'b1110; i<=i+1; end
	  1:	begin led <= 4'b1101; i<=i+1; end
	  2:	begin led <= 4'b1011; i<=i+1; end
	  3:	begin led <= 4'b0111; i<=0;   end
	endcase

   end

endmodule
