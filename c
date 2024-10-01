#! /usr/local/Cellar/icarus-verilog/12.0/bin/vvp
:ivl_version "12.0 (stable)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/system.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_sys.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/vhdl_textio.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/v2005_math.vpi";
:vpi_module "/usr/local/Cellar/icarus-verilog/12.0/lib/ivl/va_math.vpi";
S_0x7fad7a710fd0 .scope module, "clight_tb" "clight_tb" 2 21;
 .timescale 0 0;
v0x7fad7a721050_0 .var "A", 0 0;
v0x7fad7a7210e0_0 .var "B", 0 0;
v0x7fad7a721170_0 .var "C", 0 0;
v0x7fad7a721200_0 .var/i "i", 31 0;
v0x7fad7a721290_0 .net "o", 0 0, L_0x7fad7a721700;  1 drivers
S_0x7fad7a7087d0 .scope module, "uut" "circuitclight" 2 24, 2 15 0, S_0x7fad7a710fd0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A";
    .port_info 1 /INPUT 1 "B";
    .port_info 2 /INPUT 1 "C";
    .port_info 3 /OUTPUT 1 "o";
v0x7fad7a720c80_0 .net "A", 0 0, v0x7fad7a721050_0;  1 drivers
v0x7fad7a720d50_0 .net "B", 0 0, v0x7fad7a7210e0_0;  1 drivers
v0x7fad7a720e20_0 .net "C", 0 0, v0x7fad7a721170_0;  1 drivers
v0x7fad7a720ef0_0 .net "o", 0 0, L_0x7fad7a721700;  alias, 1 drivers
v0x7fad7a720f80_0 .net "t1", 0 0, L_0x7fad7a721510;  1 drivers
S_0x7fad7a708940 .scope module, "no" "invert" 2 18, 2 1 0, S_0x7fad7a7087d0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "a";
    .port_info 1 /OUTPUT 1 "o";
v0x7fad7a710680_0 .net "a", 0 0, L_0x7fad7a721510;  alias, 1 drivers
v0x7fad7a71fc90_0 .net "o", 0 0, L_0x7fad7a721700;  alias, 1 drivers
L_0x7fad7a721700 .reduce/nor L_0x7fad7a721510;
S_0x7fad7a71fd60 .scope module, "x3" "xor3" 2 17, 2 9 0, S_0x7fad7a7087d0;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "i0";
    .port_info 1 /INPUT 1 "i1";
    .port_info 2 /INPUT 1 "i2";
    .port_info 3 /OUTPUT 1 "o";
v0x7fad7a720880_0 .net "i0", 0 0, v0x7fad7a721050_0;  alias, 1 drivers
v0x7fad7a720920_0 .net "i1", 0 0, v0x7fad7a7210e0_0;  alias, 1 drivers
v0x7fad7a7209d0_0 .net "i2", 0 0, v0x7fad7a721170_0;  alias, 1 drivers
v0x7fad7a720aa0_0 .net "o", 0 0, L_0x7fad7a721510;  alias, 1 drivers
v0x7fad7a720b70_0 .net "t", 0 0, L_0x7fad7a7213a0;  1 drivers
S_0x7fad7a71ffa0 .scope module, "x1" "xor2" 2 11, 2 5 0, S_0x7fad7a71fd60;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "i0";
    .port_info 1 /INPUT 1 "i1";
    .port_info 2 /OUTPUT 1 "o";
L_0x7fad7a7213a0 .functor XOR 1, v0x7fad7a721050_0, v0x7fad7a7210e0_0, C4<0>, C4<0>;
v0x7fad7a7201d0_0 .net "i0", 0 0, v0x7fad7a721050_0;  alias, 1 drivers
v0x7fad7a720280_0 .net "i1", 0 0, v0x7fad7a7210e0_0;  alias, 1 drivers
v0x7fad7a720320_0 .net "o", 0 0, L_0x7fad7a7213a0;  alias, 1 drivers
S_0x7fad7a720420 .scope module, "x2" "xor2" 2 12, 2 5 0, S_0x7fad7a71fd60;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "i0";
    .port_info 1 /INPUT 1 "i1";
    .port_info 2 /OUTPUT 1 "o";
L_0x7fad7a721510 .functor XOR 1, L_0x7fad7a7213a0, v0x7fad7a721170_0, C4<0>, C4<0>;
v0x7fad7a720640_0 .net "i0", 0 0, L_0x7fad7a7213a0;  alias, 1 drivers
v0x7fad7a7206f0_0 .net "i1", 0 0, v0x7fad7a721170_0;  alias, 1 drivers
v0x7fad7a720780_0 .net "o", 0 0, L_0x7fad7a721510;  alias, 1 drivers
    .scope S_0x7fad7a710fd0;
T_0 ;
    %vpi_call 2 28 "$dumpfile", "clights.vcd" {0 0 0};
    %vpi_call 2 29 "$dumpvars", 32'sb00000000000000000000000000000000, S_0x7fad7a710fd0 {0 0 0};
    %pushi/vec4 0, 0, 32;
    %store/vec4 v0x7fad7a721200_0, 0, 32;
T_0.0 ;
    %load/vec4 v0x7fad7a721200_0;
    %cmpi/s 8, 0, 32;
    %jmp/0xz T_0.1, 5;
    %load/vec4 v0x7fad7a721200_0;
    %pad/s 3;
    %split/vec4 1;
    %store/vec4 v0x7fad7a721170_0, 0, 1;
    %split/vec4 1;
    %store/vec4 v0x7fad7a7210e0_0, 0, 1;
    %store/vec4 v0x7fad7a721050_0, 0, 1;
    %delay 10, 0;
    %vpi_call 2 34 "$display", "A=%b, B=%b, C=%b, o=%b", v0x7fad7a721050_0, v0x7fad7a7210e0_0, v0x7fad7a721170_0, v0x7fad7a721290_0 {0 0 0};
    %load/vec4 v0x7fad7a721200_0;
    %addi 1, 0, 32;
    %store/vec4 v0x7fad7a721200_0, 0, 32;
    %jmp T_0.0;
T_0.1 ;
    %vpi_call 2 36 "$finish" {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 3;
    "N/A";
    "<interactive>";
    "clights.v";
