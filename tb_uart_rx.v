module tb_uart_rx;
  reg clk;
  reg rst;
  reg rx;
  wire [7:0] data_out;
  wire data_rdy;

  uart_rx dut(clk, rst, rx, data_out,data_rdy);
  
  initial begin
	clk <= 0;
  end
  
  always #20 clk <= ~clk;
    
	//현재 우리의 입력주파수는 125,000,000hz       1085
  initial begin
    #0 rst <= 0;
	#100 rst <= 1;
	#100 rst <= 0; rx <= 1;
	#300 rx <=1'b0;       // rx 0x33
	#43400 rx <=1'b1;
	#43400 rx <=1'b1;
	#43400 rx <=1'b0;
	#43400 rx <=1'b0;
	#43400 rx <=1'b1;
	#43400 rx <=1'b1;
	#43400 rx <=1'b0;
	#43400 rx <=1'b0;
	#43400 rx <=1'b1;
	#80000 $stop;
  end
  
endmodule
  