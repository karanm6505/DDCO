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
    wire t1, t2;
    and_2 a1(a, b, t1);
    and_2 a2(t1, c, o);  
endmodule
module or_3(input wire a,b,c,output wire o);
    assign o = a | b | c;
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

    xor_2 x1(a, b, t1);
    xor_2 x2(c, t1, s);

    and_2 a1(a, b, t2);
    and_2 a2(a, c, t3);
    and_2 a3(b, c, t4);

    or_2 o1(t2, t3, t5);
    or_2 o2(t5, t4, c_out);
endmodule

module circuit(input wire [2:0] i, x, y, output wire finals, finalc);
    wire s0, c0, a, b;
    full_adder fa1(i[0], i[1], i[2], c0, s0);  
    not_1 n1(x, b);  
    and_3 o3(s0, c0, b, a);
    half_adder h3(a, y, finals, finalc);
endmodule

module circuit_tb;
    reg [2:0] i; 
    reg x;
    reg y;

    wire finals, finalc;
    circuit c(.i(i), .x(x), .y(y), .finals(finals), .finalc(finalc));
        
    initial begin
        $dumpfile("circuit.vcd");
        $dumpvars(0, circuit_tb);

        i = 3'b100;
        y = 1'b1;
        x = 1'b0;
        #10;
        i=3'b110;
        y=1'b1;
        x=1'b0;
        #10;
        i=3'b111;
        y=1'b1;
        x=1'b0;
        #10
        i=3'b000;
        x=1'b1;
        y=1'b1;
        #10;
        $finish;
    end
endmodule