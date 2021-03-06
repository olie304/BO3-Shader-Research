//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// codeTexture0                      texture   float          2d             t0      1 
// DS8x                                  UAV   float          2d             u0      1 
// DS8xAtlas                             UAV   float     2darray             u1      1 
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_typed_texture2darray (float,float,float,float) u1
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.xy
dcl_temps 2
dcl_thread_group 8, 8, 1
bfi r0.xy, l(31, 31, 0, 0), l(1, 1, 0, 0), vThreadID.xyxx, vThreadIDInGroup.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
bfi r0.y, l(2), l(2), vThreadID.y, l(0)
bfi r1.zw, l(0, 0, 2, 2), l(0, 0, 0, 0), vThreadID.xxxx, r0.yyyy
ushr r1.xy, vThreadID.xyxx, l(2, 2, 0, 0)
store_uav_typed u1.xyzw, r1.xyzw, r0.xxxx
ret 
// Approximately 9 instruction slots used
