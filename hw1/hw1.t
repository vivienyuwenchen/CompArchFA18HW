#! /usr/local/bin/vvp
:ivl_version "10.1 (stable)" "(v10_1-107-gab6ae79)";
:ivl_delay_selection "TYPICAL";
:vpi_time_precision + 0;
:vpi_module "system";
:vpi_module "vhdl_sys";
:vpi_module "v2005_math";
:vpi_module "va_math";
S_0xb59350 .scope module, "demorgan_test" "demorgan_test" 2 3;
 .timescale 0 0;
v0xb7c000_0 .var "A", 0 0;
v0xb7c0c0_0 .net "AandB", 0 0, L_0xb7cd10;  1 drivers
v0xb7c190_0 .net "AnandB", 0 0, L_0xb7cf50;  1 drivers
v0xb7c290_0 .net "AnorB", 0 0, L_0xb7cfc0;  1 drivers
v0xb7c360_0 .net "AorB", 0 0, L_0xb7cd80;  1 drivers
v0xb7c400_0 .var "B", 0 0;
v0xb7c4d0_0 .net "nA", 0 0, L_0xb7c8a0;  1 drivers
v0xb7c5a0_0 .net "nAandnB", 0 0, L_0xb7ca70;  1 drivers
v0xb7c670_0 .net "nAornB", 0 0, L_0xb7cb30;  1 drivers
v0xb7c7d0_0 .net "nB", 0 0, L_0xb7c960;  1 drivers
S_0xb594d0 .scope module, "dut" "demorgan" 2 9, 3 1 0, S_0xb59350;
 .timescale 0 0;
    .port_info 0 /INPUT 1 "A"
    .port_info 1 /INPUT 1 "B"
    .port_info 2 /OUTPUT 1 "nA"
    .port_info 3 /OUTPUT 1 "nB"
    .port_info 4 /OUTPUT 1 "nAandnB"
    .port_info 5 /OUTPUT 1 "nAornB"
    .port_info 6 /OUTPUT 1 "AandB"
    .port_info 7 /OUTPUT 1 "AorB"
    .port_info 8 /OUTPUT 1 "AnandB"
    .port_info 9 /OUTPUT 1 "AnorB"
L_0xb7c8a0 .functor NOT 1, v0xb7c000_0, C4<0>, C4<0>, C4<0>;
L_0xb7c960 .functor NOT 1, v0xb7c400_0, C4<0>, C4<0>, C4<0>;
L_0xb7ca70 .functor AND 1, L_0xb7c8a0, L_0xb7c960, C4<1>, C4<1>;
L_0xb7cb30 .functor OR 1, L_0xb7c8a0, L_0xb7c960, C4<0>, C4<0>;
L_0xb7cd10 .functor AND 1, v0xb7c000_0, v0xb7c400_0, C4<1>, C4<1>;
L_0xb7cd80 .functor OR 1, v0xb7c000_0, v0xb7c400_0, C4<0>, C4<0>;
L_0xb7cf50 .functor NAND 1, v0xb7c000_0, v0xb7c400_0, C4<1>, C4<1>;
L_0xb7cfc0 .functor NOR 1, v0xb7c000_0, v0xb7c400_0, C4<0>, C4<0>;
v0xb57b30_0 .net "A", 0 0, v0xb7c000_0;  1 drivers
v0xb7b6b0_0 .net "AandB", 0 0, L_0xb7cd10;  alias, 1 drivers
v0xb7b770_0 .net "AnandB", 0 0, L_0xb7cf50;  alias, 1 drivers
v0xb7b840_0 .net "AnorB", 0 0, L_0xb7cfc0;  alias, 1 drivers
v0xb7b900_0 .net "AorB", 0 0, L_0xb7cd80;  alias, 1 drivers
v0xb7ba10_0 .net "B", 0 0, v0xb7c400_0;  1 drivers
v0xb7bad0_0 .net "nA", 0 0, L_0xb7c8a0;  alias, 1 drivers
v0xb7bb90_0 .net "nAandnB", 0 0, L_0xb7ca70;  alias, 1 drivers
v0xb7bc50_0 .net "nAornB", 0 0, L_0xb7cb30;  alias, 1 drivers
v0xb7bda0_0 .net "nB", 0 0, L_0xb7c960;  alias, 1 drivers
    .scope S_0xb59350;
T_0 ;
    %vpi_call 2 14 "$display", "DeMorgan's Law: ~A~B = ~(A+B)" {0 0 0};
    %vpi_call 2 15 "$display", "A B | ~A ~B | ~A~B " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 17 "$display", "%b %b |  %b  %b |    %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c5a0_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 19 "$display", "%b %b |  %b  %b |    %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c5a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 21 "$display", "%b %b |  %b  %b |    %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c5a0_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 23 "$display", "%b %b |  %b  %b |    %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c5a0_0 {0 0 0};
    %vpi_call 2 25 "$display", "A B | A+B | ~(A+B) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 27 "$display", "%b %b |   %b |      %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c360_0, v0xb7c290_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 29 "$display", "%b %b |   %b |      %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c360_0, v0xb7c290_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 31 "$display", "%b %b |   %b |      %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c360_0, v0xb7c290_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 33 "$display", "%b %b |   %b |      %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c360_0, v0xb7c290_0 {0 0 0};
    %vpi_call 2 35 "$display", "DeMorgan's Law: ~A+~B = ~(AB)" {0 0 0};
    %vpi_call 2 36 "$display", "A B | ~A ~B | ~A+~B " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 38 "$display", "%b %b |  %b  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c670_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 40 "$display", "%b %b |  %b  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c670_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 42 "$display", "%b %b |  %b  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c670_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 44 "$display", "%b %b |  %b  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c4d0_0, v0xb7c7d0_0, v0xb7c670_0 {0 0 0};
    %vpi_call 2 46 "$display", "A B | AB | ~(AB) " {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 48 "$display", "%b %b |  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c0c0_0, v0xb7c190_0 {0 0 0};
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 50 "$display", "%b %b |  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c0c0_0, v0xb7c190_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 0, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 52 "$display", "%b %b |  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c0c0_0, v0xb7c190_0 {0 0 0};
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c000_0, 0, 1;
    %pushi/vec4 1, 0, 1;
    %store/vec4 v0xb7c400_0, 0, 1;
    %delay 1, 0;
    %vpi_call 2 54 "$display", "%b %b |  %b |     %b  ", v0xb7c000_0, v0xb7c400_0, v0xb7c0c0_0, v0xb7c190_0 {0 0 0};
    %end;
    .thread T_0;
# The file index is used to find the file name in the following table.
:file_names 4;
    "N/A";
    "<interactive>";
    "hw1.t.v";
    "./hw1.v";
