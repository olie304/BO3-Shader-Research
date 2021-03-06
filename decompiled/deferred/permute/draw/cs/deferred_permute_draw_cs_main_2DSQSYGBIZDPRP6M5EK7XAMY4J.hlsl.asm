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
// gPermuteAccumulateBuffer          texture  struct         r/o            t25      1 
// gPermutedIndirectBuffer               UAV    uint         buf             u5      1 
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
dcl_resource_structured t25, 4
dcl_uav_typed_buffer (uint,uint,uint,uint) u5
dcl_input vThreadIDInGroup.x
dcl_temps 1
dcl_thread_group 64, 1, 1
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r0.x, vThreadIDInGroup.x, l(0), t25.xxxx
imul null, r0.y, vThreadIDInGroup.x, l(3)
store_uav_typed u5.xyzw, r0.yyyy, r0.xxxx
imad r0.xz, vThreadIDInGroup.xxxx, l(3, 0, 3, 0), l(1, 0, 2, 0)
store_uav_typed u5.xyzw, r0.xxxx, l(1,1,1,1)
store_uav_typed u5.xyzw, r0.zzzz, l(1,1,1,1)
ret 
// Approximately 7 instruction slots used
