module not_1(input wire a, output wire y);
    assign y = ~a;
endmodule

module xor_2(input wire a, b, output wire o);
    assign o = a ^ b;
endmodule

module and_2(input wire a, b, output wire o);
    assign o = a & b;
endmodule

module and_3(input wire a, b, c, output wire o);
    wire t1;
    and_2 a1(.a(a), .b(b), .o(t1));
    and_2 a2(.a(c), .b(t1), .o(o));
endmodule

module or_2(input wire a, b, output wire o);
    assign o = a | b;
endmodule

module half_adder(input wire a, b, output wire s, c_out);
    assign s = a ^ b;
    assign c_out = a & b;
endmodule

module full_adder(input wire a, b, c, output wire c_out, s);
    wire t1, t2, t3, t4, t5;

    xor_2 x1(.a(a), .b(b), .o(t1));
    xor_2 x2(.a(c), .b(t1), .o(s));

    and_2 a1(.a(a), .b(b), .o(t2));
    and_2 a2(.a(a), .b(c), .o(t3));
    and_2 a3(.a(b), .b(c), .o(t4));

    or_2 o1(.a(t2), .b(t3), .o(t5));
    or_2 o2(.a(t5), .b(t4), .o(c_out));
endmodule

module circuit(input wire [2:0] i, input wire [1:0] y, output wire finals, finalc);
    wire s0, c0, a, b;

    full_adder fa(.a(i[0]), .b(i[1]), .c(i[2]), .c_out(c0), .s(s0));
    not_1 n1(.a(y[0]), .y(b));
    and_3 a3(.a(s0), .b(c0), .c(b), .o(a));
    half_adder ha(.a(a), .b(y[1]), .s(finals), .c_out(finalc));
endmodule

module circuit_tb;
    reg [2:0] i; 
    reg [1:0] y;

    wire finals, finalc;
 
    circuit c(.i(i), .y(y), .finals(finals), .finalc(finalc));
        
    initial begin
        $dumpfile("circuit.vcd");
        $dumpvars(0,circuit_tb);

        // Test case 1
        i = 3'b100;
        y = 2'b01;
        #10;

        $finish;
    end
endmodule
