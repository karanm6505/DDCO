module invert (input wire i, output wire o);
   assign o = !i;
endmodule
module xor2 (input wire i0, i1, output wire o);
  assign o = i0 ^ i1;
endmodule
module xnor2 (input wire i0, i1, output wire o);
   assign o= i0&i1 | (!i0&!i1);
   
endmodule
module xnor3 (input wire i0, i1, i2, output wire o);
   wire t;
   xnor2 xn2(i0,i1,t);
   xnor2 xn21(t,i2,o);
endmodule
module testbench_xnor3;
    // Test signals
    reg i0, i1, i2;
    wire o;

    // Instantiate the xnor3 module
    xnor3 uut (
        .i0(i0),
        .i1(i1),
        .i2(i2),
        .o(o)
    );

    // Test procedure
    initial begin
        $display("Testing xnor3 gate");
        $display("i0 i1 i2 | o");
        $display("----------|--");

        // Loop through all possible input combinations
        i0 = 0; i1 = 0; i2 = 0; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 0; i1 = 0; i2 = 1; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 0; i1 = 1; i2 = 0; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 0; i1 = 1; i2 = 1; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 1; i1 = 0; i2 = 0; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 1; i1 = 0; i2 = 1; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 1; i1 = 1; i2 = 0; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);
        i0 = 1; i1 = 1; i2 = 1; #1; $display("%b  %b  %b  | %b", i0, i1, i2, o);

        $stop;
    end
endmodule
