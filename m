#! /usr/local/Cellar/icarus-verilog/12.0/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/system.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/va_math.vpi";
S_0x7f8551907030 .scope module, "tb_mux41" "tb_mux41" 2 10;
 .timescale 0 0;
L_0x7f8538040008 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x7f8540f15530_0 .net *"_ivl_3", 2 0, L_0x7f8538040008;  1 drivers
L_0x7f8538040050 .functor BUFT 1, C4<000>, C4<0>, C4<0>, C4<0>;
v0x7f8540f155f0_0 .net *"_ivl_8", 2 0, L_0x7f8538040050;  1 drivers
v0x7f8540f15690_0 .var "ii", 0 3;
v0x7f8540f15760_0 .var "s0", 0 0;
v0x7f8540f157f0_0 .var "s1", 0 0;
v0x7f8540f158c0_0 .net "yy", 0 0, L_0x7f8540f16130;  1 drivers
L_0x7f8540f16370 .concat [ 1 3 0 0], v0x7f8540f15760_0, L_0x7f8538040008;
L_0x7f8550f08330 .concat [ 1 3 0 0], v0x7f8540f157f0_0, L_0x7f8538040050;
S_0x7f85519071a0 .scope module, "newMUX" "mux41" 2 20, 2 4 0, S_0x7f8551907030;
 .timescale 0 0;
    .port_info 0 /INPUT 4 "a";
    .port_info 1 /INPUT 4 "s0";
    .port_info 2 /INPUT 4 "s1";
    .port_info 3 /OUTPUT 1 "o";
v0x7f8540f150a0_0 .net "a", 3 0, v0x7f8540f15690_0;  1 drivers
v0x7f8540f15160_0 .net "o", 0 0, L_0x7f8540f16130;  alias, 1 drivers
v0x7f8540f15200_0 .net "o0", 0 0, L_0x7f8540f15990;  1 drivers
v0x7f8540f152f0_0 .net "o1", 0 0, L_0x7f8540f15d50;  1 drivers
v0x7f8540f153c0_0 .net "s0", 3 0, L_0x7f8540f16370;  1 drivers
v0x7f8540f15490_0 .net "s1", 3 0, L_0x7f8550f08330;  1 drivers
L_0x7f8540f15a70 .part v0x7f8540f15690_0, 0, 1;
L_0x7f8540f15b90 .part v0x7f8540f15690_0, 1, 1;
L_0x7f8540f15c70 .part L_0x7f8540f16370, 0, 1;
L_0x7f8540f15e10 .part v0x7f8540f15690_0, 2, 1;
L_0x7f8540f15f70 .part v0x7f8540f15690_0, 3, 1;
L_0x7f8540f16010 .part L_0x7f8540f16370, 0, 1;
L_0x7f8540f162d0 .part L_0x7f8550f08330, 0, 1;
S_0x7f8540f04100 .scope module, "m1" "mux21" 2 6, 2 1 0, S_0x7f85519071a0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "s";
    .port_info 3 /OUTPUT 1 "o";
v0x7f8540f04350_0 .net "a", 0 0, L_0x7f8540f15a70;  1 drivers
v0x7f8540f14400_0 .net "b", 0 0, L_0x7f8540f15b90;  1 drivers
v0x7f8540f144a0_0 .net "o", 0 0, L_0x7f8540f15990;  alias, 1 drivers
v0x7f8540f14550_0 .net "s", 0 0, L_0x7f8540f15c70;  1 drivers
L_0x7f8540f15990 .functor MUXZ 1, L_0x7f8540f15a70, L_0x7f8540f15b90, L_0x7f8540f15c70, C4<>;
S_0x7f8540f14650 .scope module, "m2" "mux21" 2 7, 2 1 0, S_0x7f85519071a0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "s";
    .port_info 3 /OUTPUT 1 "o";
v0x7f8540f14880_0 .net "a", 0 0, L_0x7f8540f15e10;  1 drivers
v0x7f8540f14920_0 .net "b", 0 0, L_0x7f8540f15f70;  1 drivers
v0x7f8540f149c0_0 .net "o", 0 0, L_0x7f8540f15d50;  alias, 1 drivers
v0x7f8540f14a70_0 .net "s", 0 0, L_0x7f8540f16010;  1 drivers
L_0x7f8540f15d50 .functor MUXZ 1, L_0x7f8540f15e10, L_0x7f8540f15f70, L_0x7f8540f16010, C4<>;
S_0x7f8540f14b70 .scope module, "m3" "mux21" 2 8, 2 1 0, S_0x7f85519071a0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /INPUT 1 "s";
    .port_info 3 /OUTPUT 1 "o";
v0x7f8540f14db0_0 .net "a", 0 0, L_0x7f8540f15990;  alias, 1 drivers
v0x7f8540f14e60_0 .net "b", 0 0, L_0x7f8540f15d50;  alias, 1 drivers
v0x7f8540f14f10_0 .net "o", 0 0, L_0x7f8540f16130;  alias, 1 drivers
v0x7f8540f14fc0_0 .net "s", 0 0, L_0x7f8540f162d0;  1 drivers
L_0x7f8540f16130 .functor MUXZ 1, L_0x7f8540f15990, L_0x7f8540f15d50, L_0x7f8540f162d0, C4<>;
    .scope S_0x7f8551907030;
T_0 ;
    %vpi_call 2 17 "$dumpfile", "MUX41.vcd" {0 0 0};
    %vpi_call 2 18 "$dumpvars", 32'sb00000000000000000000000000000000, S_0x7f8551907030 {0 0 0};
    %end;
    .thread T_0;
    .scope S_0x7f8551907030;
T_1 ;
    %delay 5, 0;
    %pushi/vec4 8, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 4, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 2, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 1, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 8, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 4, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 2, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %delay 5, 0;
    %pushi/vec4 1, 0, 4;
    %store/vec4 v0x7f8540f15690_0, 0, 4;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f15760_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7f8540f157f0_0, 0, 1;
    %end;
    .thread T_1;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "mux.v";
