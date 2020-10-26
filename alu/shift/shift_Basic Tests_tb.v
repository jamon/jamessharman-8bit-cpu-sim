//  A testbench for shift_Basic Tests_tb
`timescale 1us/1ns

module shift_Basic Tests_tb;
    reg SelectA;
    reg SelectB;
    reg [7:0] LHSIn;
    reg CarryIn;
    wire CarryOut;
    wire [7:0] LHSOut;

  shift shift0 (
    .SelectA(SelectA),
    .SelectB(SelectB),
    .LHSIn(LHSIn),
    .CarryIn(CarryIn),
    .CarryOut(CarryOut),
    .LHSOut(LHSOut)
  );

    reg [19:0] patterns[0:10];
    integer i;

    initial begin
      patterns[0] = 20'b0_0_0_00000000_00000000_0;
      patterns[1] = 20'b0_0_0_11111111_11111111_0;
      patterns[2] = 20'b0_0_1_00000000_00000000_1;
      patterns[3] = 20'b0_1_0_00000000_00000000_0;
      patterns[4] = 20'b0_1_0_11111111_11111110_1;
      patterns[5] = 20'b0_1_1_11111111_11111111_1;
      patterns[6] = 20'b1_0_0_00000000_00000000_0;
      patterns[7] = 20'b1_0_0_11111111_01111111_1;
      patterns[8] = 20'b1_0_1_11111111_11111111_1;
      patterns[9] = 20'b1_1_0_11111111_00000000_0;
      patterns[10] = 20'b1_1_1_11111111_00000000_0;

      for (i = 0; i < 11; i = i + 1)
      begin
        SelectB = patterns[i][19];
        SelectA = patterns[i][18];
        CarryIn = patterns[i][17];
        LHSIn = patterns[i][16:9];
        #10;
        if (patterns[i][8:1] !== 8'hx)
        begin
          if (LHSOut !== patterns[i][8:1])
          begin
            $display("%d:LHSOut: (assertion error). Expected %h, found %h", i, patterns[i][8:1], LHSOut);
            $finish;
          end
        end
        if (patterns[i][0] !== 1'hx)
        begin
          if (CarryOut !== patterns[i][0])
          begin
            $display("%d:CarryOut: (assertion error). Expected %h, found %h", i, patterns[i][0], CarryOut);
            $finish;
          end
        end
      end

      $display("All tests passed.");
    end
    endmodule
