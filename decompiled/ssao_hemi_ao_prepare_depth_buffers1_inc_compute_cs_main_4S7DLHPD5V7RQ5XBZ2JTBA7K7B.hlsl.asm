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
// GBufferDepth                      texture   float          2d             t4      1 
// DS2x                                  UAV   float          2d             u0      1 
// DS2xAtlas                             UAV   float     2darray             u1      1 
// DS4x                                  UAV   float          2d             u2      1 
// DS4xAtlas                             UAV   float     2darray             u3      1 
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
dcl_resource_texture2d (float,float,float,float) t4
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_typed_texture2darray (float,float,float,float) u1
dcl_uav_typed_texture2d (float,float,float,float) u2
dcl_uav_typed_texture2darray (float,float,float,float) u3
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.xy
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.xy
dcl_temps 4
dcl_tgsm_structured g0, 4, 256
dcl_thread_group 8, 8, 1
imad r0.xy, vThreadGroupID.xyxx, l(16, 16, 0, 0), vThreadIDInGroup.xyxx
imad r1.x, vThreadIDInGroup.y, l(16), vThreadIDInGroup.x
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.z, r0.xyzw, t4.yzxw
ge r0.w, r0.z, l(0.984375)
mul r1.y, r0.z, l(1.01587307)
mad r0.z, r0.z, l(64.000000), l(-63.000000)
movc r0.z, r0.w, r0.z, r1.y
max r0.z, r0.z, l(0.00000001)
rcp r0.z, r0.z
min r0.z, r0.z, l(65504.000000)
store_structured g0.x, r1.x, l(0), r0.z
iadd r0.zw, r1.xxxx, l(0, 0, 8, 136)
iadd r2.xyzw, r0.xyxy, l(0, 8, 8, 0)
mov r3.xy, r2.zwzz
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.y, r3.xyzw, t4.yxzw
ge r1.z, r1.y, l(0.984375)
mul r1.w, r1.y, l(1.01587307)
mad r1.y, r1.y, l(64.000000), l(-63.000000)
movc r1.y, r1.z, r1.y, r1.w
max r1.y, r1.y, l(0.00000001)
rcp r1.y, r1.y
min r1.y, r1.y, l(65504.000000)
store_structured g0.x, r0.z, l(0), r1.y
iadd r0.z, r1.x, l(128)
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.x, r2.xyzw, t4.xyzw
ge r1.y, r1.x, l(0.984375)
mul r1.z, r1.x, l(1.01587307)
mad r1.x, r1.x, l(64.000000), l(-63.000000)
movc r1.x, r1.y, r1.x, r1.z
max r1.x, r1.x, l(0.00000001)
rcp r1.x, r1.x
min r1.x, r1.x, l(65504.000000)
store_structured g0.x, r0.z, l(0), r1.x
iadd r1.xy, r0.xyxx, l(8, 8, 0, 0)
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r1.xyzw, t4.xyzw
ge r0.y, r0.x, l(0.984375)
mul r0.z, r0.x, l(1.01587307)
mad r0.x, r0.x, l(64.000000), l(-63.000000)
movc r0.x, r0.y, r0.x, r0.z
max r0.x, r0.x, l(0.00000001)
rcp r0.x, r0.x
min r0.x, r0.x, l(65504.000000)
store_structured g0.x, r0.w, l(0), r0.x
sync_g_t
ishl r0.x, vThreadIDInGroup.x, l(1)
imad r0.x, vThreadIDInGroup.y, l(32), r0.x
ld_structured r0.y, r0.x, l(0), g0.xxxx
iadd r0.z, r0.x, l(1)
ld_structured r0.z, r0.z, l(0), g0.xxxx
iadd r1.xy, r0.xxxx, l(16, 17, 0, 0)
ld_structured r0.w, r1.x, l(0), g0.xxxx
ld_structured r1.x, r1.y, l(0), g0.xxxx
max r0.y, r0.z, r0.y
max r0.z, r0.w, r1.x
max r0.y, r0.z, r0.y
store_structured g0.x, r0.x, l(0), r0.y
sync_g_t
bfi r0.z, l(2), l(2), vThreadID.y, l(0)
bfi r1.zw, l(0, 0, 2, 2), l(0, 0, 0, 0), vThreadID.xxxx, r0.zzzz
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.yyyy
ushr r1.xy, vThreadID.xyxx, l(2, 2, 0, 0)
store_uav_typed u1.xyzw, r1.xyzw, r0.yyyy
and r0.z, vThreadIDInGroupFlattened.x, l(9)
if_z r0.z
  iadd r0.xzw, r0.xxxx, l(2, 0, 32, 34)
  ld_structured r0.x, r0.x, l(0), g0.xxxx
  ld_structured r0.z, r0.z, l(0), g0.xxxx
  ld_structured r0.w, r0.w, l(0), g0.xxxx
  max r0.x, r0.x, r0.y
  max r0.y, r0.w, r0.z
  max r0.x, r0.y, r0.x
  ushr r0.yz, vThreadID.xxyx, l(0, 1, 1, 0)
  bfi r0.w, l(2), l(2), r0.z, l(0)
  bfi r1.zw, l(0, 0, 2, 2), l(0, 0, 0, 0), r0.yyyy, r0.wwww
  store_uav_typed u2.xyzw, r0.yzzz, r0.xxxx
  ushr r1.xy, r0.yzyy, l(2, 2, 0, 0)
  store_uav_typed u3.xyzw, r1.xyzw, r0.xxxx
endif 
ret 
// Approximately 83 instruction slots used
