module alureg (
    input wire clk,
    input wire reset,
    input wire [1:0] op,
    input wire [2:0] rd_addr_a,
    input wire [2:0] rd_addr_b,
    input wire [2:0] wr_addr,
    input wire wr,
    input wire sel,
    input wire [15:0] d_in,
    output wire [15:0] d_out_a,
    output wire [15:0] d_out_b,
    output wire [15:0] alu_out,
    output wire cout
);

    wire [15:0] alu_in_a, alu_in_b;
    wire [15:0] reg_in;

    reg_file reg_file_inst (
        .clk(clk),
        .reset(reset),
        .wr(wr),
        .rd_addr_a(rd_addr_a),
        .rd_addr_b(rd_addr_b),
        .wr_addr(wr_addr),
        .d_in(reg_in),
        .d_out_a(alu_in_a),
        .d_out_b(alu_in_b)
    );

    alu alu_inst (
        .op(op),
        .i0(alu_in_a),
        .i1(alu_in_b),
        .o(alu_out),
        .cout(cout)
    );

    assign reg_in = sel ? alu_out : d_in;

    assign d_out_a = alu_in_a;
    assign d_out_b = alu_in_b;

endmodule

