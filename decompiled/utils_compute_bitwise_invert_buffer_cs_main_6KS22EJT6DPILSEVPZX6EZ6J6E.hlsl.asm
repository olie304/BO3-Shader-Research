//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:46 2021
//
//
// Buffer Definitions: 
//
// Resource bind info for dest
// {
//
//   uint $Element;                     // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// dest                                  UAV  struct         r/w             u0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_uav_structured u0, 4
dcl_input vThreadID.x
dcl_temps 1
dcl_thread_group 64, 1, 1
bufinfo_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, u0.xyzw
ult r0.x, vThreadID.x, r0.x
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadID.x, l(0), u0.xxxx
  not r0.x, r0.x
  store_structured u0.x, vThreadID.x, l(0), r0.x
endif 
ret 
// Approximately 8 instruction slots used