#! /usr/local/Cellar/icarus-verilog/12.0/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision - 12;
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/system.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/va_math.vpi";
S_0x7ff237707090 .scope module, "tb_top" "tb_top" 2 8;
 .timescale -9 -12;
v0x7ff2377177e0_0 .var "a", 0 0;
v0x7ff237717880_0 .var "b", 0 0;
v0x7ff237717930_0 .net "c_out", 0 0, L_0x7ff237717be0;  1 drivers
o0x7ff2380180c8 .functor BUFZ 1, C4<z>; HiZ drive
v0x7ff237717a00_0 .net "s", 0 0, o0x7ff2380180c8;  0 drivers
S_0x7ff237707200 .scope module, "ha" "half_adder" 2 12, 2 3 0, S_0x7ff237707090;
 .timescale -9 -12;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /INPUT 1 "b";
    .port_info 2 /OUTPUT 1 "s";
    .port_info 3 /OUTPUT 1 "Cout";
L_0x7ff237717ab0 .functor XOR 1, v0x7ff2377177e0_0, v0x7ff237717880_0, C4<0>, C4<0>;
L_0x7ff237717be0 .functor AND 1, v0x7ff2377177e0_0, v0x7ff237717880_0, C4<1>, C4<1>;
v0x7ff237707420_0 .net "Cout", 0 0, L_0x7ff237717be0;  alias, 1 drivers
v0x7ff2377174d0_0 .net "S", 0 0, L_0x7ff237717ab0;  1 drivers
v0x7ff237717570_0 .net "a", 0 0, v0x7ff2377177e0_0;  1 drivers
v0x7ff237717620_0 .net "b", 0 0, v0x7ff237717880_0;  1 drivers
v0x7ff2377176c0_0 .net "s", 0 0, o0x7ff2380180c8;  alias, 0 drivers
    .scope S_0x7ff237707090;
T_0 ;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7ff2377177e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7ff237717880_0, 0, 1;
    %delay 1000, 0;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7ff2377177e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7ff237717880_0, 0, 1;
    %delay 1000, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7ff2377177e0_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0x7ff237717880_0, 0, 1;
    %delay 1000, 0;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7ff2377177e0_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0x7ff237717880_0, 0, 1;
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "halfadder.v";
