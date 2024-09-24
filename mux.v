module mux21(input a,b,s,output o);
  assign o = s?b:a;
endmodule
module mux41(input [3:0]a,s0,s1,output o);
  wire o0,o1;
  mux21 m1(a[0],a[1],s0,o0);
  mux21 m2(a[2],a[3],s0,o1);
  mux21 m3(o0,o1,s1,o);
endmodule
module tb_mux41;
reg [0:3]ii;
reg s0;
reg s1;
wire yy;
initial 
begin
  $dumpfile("MUX41.vcd");
  $dumpvars(0,tb_mux41);
end
mux41 newMUX(.a(ii),.s0(s0),.s1(s1),.o(yy));
initial
begin
   

    #5
    ii=4'b1000;
    s0=1'b0;
    s1=1'b0;

    #5
    ii=4'b0100;
    s0=1'b0;
    s1=1'b1;

    #5
    ii=4'b0010;
    s0=1'b1;
    s1=1'b0;

    #5
    ii=4'b0001;
    s0=1'b1;
    s1=1'b1;

    #5
    ii=4'b1000;
    s0=1'b0;
    s1=1'b0;

    #5
    ii=4'b0100;
    s0=1'b0;
    s1=1'b1;

    #5
    ii=4'b0010;
    s0=1'b1;
    s1=1'b0;

    #5
    ii=4'b0001;
    s0=1'b1;
    s1=1'b1;


end
endmodule