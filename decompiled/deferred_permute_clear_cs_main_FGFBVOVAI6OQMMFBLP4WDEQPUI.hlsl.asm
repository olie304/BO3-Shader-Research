//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:18 2021
//
//
// Buffer Definitions: 
//
// Resource bind info for gPermuteAccumulateBuffer
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
// gPermuteAccumulateBuffer              UAV  struct         r/w             u6      1 
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
dcl_uav_structured u6, 4
dcl_input vThreadIDInGroupFlattened
dcl_thread_group 64, 1, 1
store_structured u6.x, vThreadIDInGroupFlattened.x, l(0), l(0)
ret 
// Approximately 2 instruction slots used