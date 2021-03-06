//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// floatZSampler                     texture  float4          2d             t0      1 
// zBufferRoughWuint                     UAV    uint          2d             u1      1 
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
dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.xy
dcl_input vThreadIDInGroup.xy
dcl_temps 3
dcl_tgsm_raw g0, 4
dcl_thread_group 8, 8, 1
ishl r0.xy, vThreadIDInGroup.xyxx, l(1, 1, 0, 0)
imad r0.xy, vThreadGroupID.xyxx, l(16, 16, 0, 0), r0.xyxx
resinfo_indexable(texture2d)(float,float,float,float)_uint r1.xy, l(0), t0.xyzw
ult r1.xy, r1.xyxx, r0.xyxx
or r1.x, r1.y, r1.x
if_nz r1.x
  mov r1.xyzw, l(2.000000,2.000000,2.000000,2.000000)
else 
  mov r0.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r1.x, r0.xyww, t0.xyzw
  iadd r2.xyzw, r0.xyww, l(0, 1, 0, 0)
  ld_indexable(texture2d)(float,float,float,float) r1.y, r2.xyzw, t0.yxzw
  iadd r2.xyzw, r0.xyww, l(1, 0, 0, 0)
  ld_indexable(texture2d)(float,float,float,float) r1.z, r2.xyzw, t0.yzxw
  iadd r0.xyzw, r0.xyzw, l(1, 1, 0, 0)
  ld_indexable(texture2d)(float,float,float,float) r1.w, r0.xyzw, t0.yzwx
endif 
min r0.xy, r1.ywyy, r1.xzxx
min r0.x, r0.y, r0.x
if_z vThreadIDInGroupFlattened.x
  store_raw g0.x, l(0), l(2.000000)
endif 
sync_g_t
atomic_umin g0, l(0), r0.x
sync_g_t
if_z vThreadIDInGroupFlattened.x
  imad r0.xy, vThreadGroupID.xyxx, l(8, 8, 0, 0), vThreadIDInGroup.xyxx
  ubfe r0.xy, l(27, 27, 0, 0), l(4, 4, 0, 0), r0.xyxx
  ld_raw r0.z, l(0), g0.xxxx
  atomic_umin u1, r0.xyxx, r0.z
endif 
ret 
// Approximately 32 instruction slots used
