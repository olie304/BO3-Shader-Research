//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021
//
//
// Buffer Definitions: 
//
// cbuffer SSAOGlobals
// {
//
//   struct HemiAOGlobals
//   {
//       
//       float2 invSourceDimension;     // Offset:    0
//       float2 invSliceDimension;      // Offset:    8
//       float4 invThicknessTable[3];   // Offset:   16
//       float4 sampleWeightTable[3];   // Offset:   64
//       float2 invLowResolution;       // Offset:  112
//       float2 invHighResolution;      // Offset:  120
//       float noiseFilterStrength;     // Offset:  128
//       float stepSize;                // Offset:  132
//       float blurTolerance;           // Offset:  136
//       float upsampleTolerance;       // Offset:  140
//       float insensitivity;           // Offset:  144
//       float zClear;                  // Offset:  148
//       float rejectFadeoff;           // Offset:  152
//       float _padding_29;             // Offset:  156
//
//   } hemiAOGlobals;                   // Offset:    0 Size:   160
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler                     sampler      NA          NA             s2      1 
// codeTexture0                      texture   float          2d             t0      1 
// codeTexture1                      texture   float          2d             t1      1 
// codeTexture2                      texture   float          2d             t2      1 
// codeTexture3                      texture   float          2d             t3      1 
// AoResult                              UAV   float          2d             u0      1 
// SSAOGlobals                       cbuffer      NA          NA            cb5      1 
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
dcl_constantbuffer CB5[9], immediateIndexed
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.xy
dcl_temps 7
dcl_tgsm_structured g0, 4, 256
dcl_tgsm_structured g1, 4, 256
dcl_tgsm_structured g2, 4, 256
dcl_tgsm_structured g3, 4, 256
dcl_thread_group 8, 8, 1
ishl r0.x, vThreadIDInGroup.x, l(1)
imad r0.x, vThreadIDInGroup.y, l(32), r0.x
iadd r0.yz, vThreadIDInGroup.xxyx, vThreadID.xxyx
iadd r0.yz, r0.yyzy, l(0, -2, -2, 0)
itof r0.yz, r0.yyzy
mul r0.yz, r0.yyzy, cb5[7].xxyx
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.yzyy, t2.xyzw, s2.x
gather4_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.yzyy, t3.xyzw, s2.x
store_structured g3.x, r0.x, l(0), r2.w
iadd r0.w, r0.x, l(1)
store_structured g3.x, r0.w, l(0), r2.z
iadd r2.zw, r0.xxxx, l(0, 0, 16, 17)
store_structured g3.x, r2.z, l(0), r2.x
store_structured g3.x, r2.w, l(0), r2.y
store_structured g1.x, r0.x, l(0), r1.w
store_structured g1.x, r0.w, l(0), r1.z
store_structured g1.x, r2.z, l(0), r1.x
store_structured g1.x, r2.w, l(0), r1.y
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.yzyy, t0.xyzw, s2.x
div r1.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000), r1.xyzw
store_structured g0.x, r0.x, l(0), r1.w
store_structured g0.x, r0.w, l(0), r1.z
store_structured g0.x, r2.z, l(0), r1.x
store_structured g0.x, r2.w, l(0), r1.y
sync_g_t
ult r0.xy, vThreadIDInGroupFlattened.xxxx, l(39, 45, 0, 0)
if_nz r0.x
  udiv r0.x, r1.x, vThreadIDInGroupFlattened.x, l(3)
  imul null, r0.z, r1.x, l(3)
  imad r0.x, r0.x, l(16), r0.z
  ld_structured r0.z, r0.x, l(0), g1.xxxx
  iadd r1.xyzw, r0.xxxx, l(1, 2, 3, 4)
  ld_structured r0.w, r1.x, l(0), g1.xxxx
  ld_structured r2.x, r1.y, l(0), g1.xxxx
  ld_structured r2.y, r1.z, l(0), g1.xxxx
  ld_structured r2.z, r1.w, l(0), g1.xxxx
  iadd r3.xy, r0.xxxx, l(5, 6, 0, 0)
  ld_structured r2.w, r3.x, l(0), g1.xxxx
  ld_structured r3.z, r3.y, l(0), g1.xxxx
  ld_structured r3.w, r0.x, l(0), g0.xxxx
  ld_structured r4.x, r1.x, l(0), g0.xxxx
  ld_structured r4.y, r1.y, l(0), g0.xxxx
  ld_structured r1.z, r1.z, l(0), g0.xxxx
  ld_structured r1.w, r1.w, l(0), g0.xxxx
  ld_structured r3.x, r3.x, l(0), g0.xxxx
  ld_structured r3.y, r3.y, l(0), g0.xxxx
  add r3.w, -r3.w, r4.x
  add r4.x, -r4.x, r4.y
  add r4.y, -r4.y, r1.z
  add r1.z, -r1.z, r1.w
  add r1.w, -r1.w, r3.x
  add r3.x, -r3.x, r3.y
  mad r3.y, r3.w, r3.w, cb5[8].y
  mad r4.z, r4.x, r4.x, cb5[8].y
  mad r4.w, r4.y, r4.y, cb5[8].y
  mad r5.x, r1.z, r1.z, cb5[8].y
  mad r5.y, r1.w, r1.w, cb5[8].y
  mad r5.z, r3.x, r3.x, cb5[8].y
  mad r3.w, r3.w, r4.x, cb5[8].y
  mul r3.w, r3.w, r3.w
  mul r3.y, r3.y, r4.z
  mul r3.y, r3.y, cb5[8].z
  lt r3.y, r3.y, r3.w
  mad r3.w, r4.x, r4.y, cb5[8].y
  mul r3.w, r3.w, r3.w
  mul r4.x, r4.w, r4.z
  mul r4.x, r4.x, cb5[8].z
  lt r3.w, r4.x, r3.w
  mad r4.x, r4.y, r1.z, cb5[8].y
  mul r4.x, r4.x, r4.x
  mul r4.y, r4.w, r5.x
  mul r4.y, r4.y, cb5[8].z
  lt r4.x, r4.y, r4.x
  mad r1.z, r1.z, r1.w, cb5[8].y
  mul r1.z, r1.z, r1.z
  mul r4.y, r5.y, r5.x
  mul r4.y, r4.y, cb5[8].z
  lt r1.z, r4.y, r1.z
  mad r1.w, r1.w, r3.x, cb5[8].y
  mul r1.w, r1.w, r1.w
  mul r3.x, r5.z, r5.y
  mul r3.x, r3.x, cb5[8].z
  lt r1.w, r3.x, r1.w
  or r3.x, r3.w, r3.y
  and r3.x, r3.x, l(1)
  movc r3.x, r3.x, r0.w, r2.x
  movc r0.z, r3.y, r0.z, r3.x
  or r3.y, r3.w, r4.x
  and r3.y, r3.y, l(1)
  swapc r5.x, r6.x, r3.y, r2.y, r2.x
  movc r3.y, r4.x, r2.z, r6.x
  add r0.z, r0.z, r3.y
  mad r0.z, r0.z, l(0.500000), r3.x
  add r0.z, r2.x, r0.z
  add r0.z, r6.x, r0.z
  mul r0.z, r0.z, l(0.250000)
  store_structured g2.x, r0.x, l(0), r0.z
  movc r0.z, r3.w, r0.w, r5.x
  or r0.w, r4.x, r1.z
  and r0.w, r0.w, l(1)
  swapc r3.x, r6.x, r0.w, r2.z, r2.y
  movc r0.w, r1.z, r2.w, r6.x
  add r0.z, r0.w, r0.z
  mad r0.z, r0.z, l(0.500000), r5.x
  add r0.z, r2.y, r0.z
  add r0.z, r6.x, r0.z
  mul r0.z, r0.z, l(0.250000)
  store_structured g2.x, r1.x, l(0), r0.z
  movc r0.z, r4.x, r2.x, r3.x
  or r0.w, r1.z, r1.w
  and r0.w, r0.w, l(1)
  movc r0.w, r0.w, r2.w, r2.z
  movc r1.x, r1.w, r3.z, r0.w
  add r0.z, r0.z, r1.x
  mad r0.z, r0.z, l(0.500000), r3.x
  add r0.z, r2.z, r0.z
  add r0.z, r0.w, r0.z
  mul r0.z, r0.z, l(0.250000)
  store_structured g2.x, r1.y, l(0), r0.z
endif 
sync_g_t
if_nz r0.y
  udiv r0.x, r1.x, vThreadIDInGroupFlattened.x, l(9)
  imad r0.x, r0.x, l(32), r1.x
  ld_structured r0.y, r0.x, l(0), g2.xxxx
  iadd r0.z, r0.x, l(16)
  ld_structured r0.w, r0.z, l(0), g2.xxxx
  iadd r1.xyzw, r0.xxxx, l(32, 48, 64, 80)
  ld_structured r1.x, r1.x, l(0), g2.xxxx
  ld_structured r1.y, r1.y, l(0), g2.xxxx
  ld_structured r1.z, r1.z, l(0), g2.xxxx
  ld_structured r1.w, r1.w, l(0), g2.xxxx
  iadd r2.xyzw, r0.xxxx, l(2, 18, 34, 50)
  ld_structured r2.x, r2.x, l(0), g0.xxxx
  ld_structured r2.y, r2.y, l(0), g0.xxxx
  ld_structured r3.x, r2.z, l(0), g0.xxxx
  ld_structured r3.y, r2.w, l(0), g0.xxxx
  iadd r3.zw, r0.xxxx, l(0, 0, 66, 82)
  ld_structured r3.z, r3.z, l(0), g0.xxxx
  ld_structured r3.w, r3.w, l(0), g0.xxxx
  add r2.x, -r2.x, r2.y
  add r2.y, -r2.y, r3.x
  add r3.x, -r3.x, r3.y
  add r3.y, -r3.y, r3.z
  add r3.z, -r3.z, r3.w
  mad r3.w, r2.x, r2.x, cb5[8].y
  mad r4.x, r2.y, r2.y, cb5[8].y
  mad r4.y, r3.x, r3.x, cb5[8].y
  mad r4.z, r3.y, r3.y, cb5[8].y
  mad r4.w, r3.z, r3.z, cb5[8].y
  mad r2.x, r2.x, r2.y, cb5[8].y
  mul r2.x, r2.x, r2.x
  mul r3.w, r3.w, r4.x
  mul r3.w, r3.w, cb5[8].z
  lt r2.x, r3.w, r2.x
  mad r2.y, r2.y, r3.x, cb5[8].y
  mul r2.y, r2.y, r2.y
  mul r3.w, r4.y, r4.x
  mul r3.w, r3.w, cb5[8].z
  lt r2.y, r3.w, r2.y
  mad r3.x, r3.x, r3.y, cb5[8].y
  mul r3.x, r3.x, r3.x
  mul r3.w, r4.z, r4.y
  mul r3.w, r3.w, cb5[8].z
  mad r3.y, r3.y, r3.z, cb5[8].y
  mul r3.y, r3.y, r3.y
  mul r3.z, r4.w, r4.z
  mul r3.z, r3.z, cb5[8].z
  lt r3.xy, r3.wzww, r3.xyxx
  or r3.z, r2.y, r2.x
  and r3.z, r3.z, l(1)
  movc r3.z, r3.z, r0.w, r1.x
  movc r0.y, r2.x, r0.y, r3.z
  or r2.x, r2.y, r3.x
  and r2.x, r2.x, l(1)
  swapc r2.x, r4.x, r2.x, r1.y, r1.x
  movc r3.w, r3.x, r1.z, r4.x
  add r0.y, r0.y, r3.w
  mad r0.y, r0.y, l(0.500000), r3.z
  add r0.y, r1.x, r0.y
  add r0.y, r4.x, r0.y
  movc r0.w, r2.y, r0.w, r2.x
  or r1.x, r3.x, r3.y
  and r1.x, r1.x, l(1)
  movc r1.x, r1.x, r1.z, r1.y
  movc r1.z, r3.y, r1.w, r1.x
  add r0.w, r0.w, r1.z
  mad r0.w, r0.w, l(0.500000), r2.x
  add r0.w, r1.y, r0.w
  add r0.w, r1.x, r0.w
  mul r0.yw, r0.yyyw, l(0.000000, 0.250000, 0.000000, 0.250000)
  ld_structured r1.x, r2.z, l(0), g3.xxxx
  min r0.y, r0.y, r1.x
  ld_structured r1.x, r2.w, l(0), g3.xxxx
  min r0.w, r0.w, r1.x
  store_structured g1.x, r0.x, l(0), r0.y
  store_structured g1.x, r0.z, l(0), r0.w
endif 
sync_g_t
imad r0.x, vThreadIDInGroup.y, l(16), vThreadIDInGroup.x
iadd r0.yzw, r0.xxxx, l(0, 16, 17, 1)
ld_structured r1.y, r0.y, l(0), g1.xxxx
ld_structured r1.z, r0.z, l(0), g1.xxxx
ld_structured r1.w, r0.w, l(0), g1.xxxx
ld_structured r1.x, r0.x, l(0), g1.xxxx
utof r0.xy, vThreadID.xyxx
ishl r2.xyzw, vThreadID.xyyy, l(1, 1, 1, 1)
utof r0.zw, r2.xxxw
mul r0.xyzw, r0.xyzw, cb5[7].xyzw
gather4_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.zwzz, t1.xyzw, s2.x
gather4_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s2.x
add r4.xyzw, -r0.xyzw, r3.xxxx
add r4.xyzw, |r4.xyzw|, cb5[8].wwww
div r4.xyzw, l(9.000000, 3.000000, 1.000000, 3.000000), r4.xyzw
dp4 r3.x, r4.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r3.x, r3.x, cb5[8].x
dp4 r4.x, r1.yzwx, r4.xyzw
add r4.x, r4.x, cb5[8].x
div r3.x, r4.x, r3.x
add r4.xyzw, -r0.yzwx, r3.yyyy
add r4.xyzw, |r4.xyzw|, cb5[8].wwww
div r4.xyzw, l(9.000000, 3.000000, 1.000000, 3.000000), r4.xyzw
dp4 r3.y, r4.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r3.y, r3.y, cb5[8].x
dp4 r4.x, r1.zwxy, r4.xyzw
add r4.x, r4.x, cb5[8].x
div r3.y, r4.x, r3.y
add r4.xyzw, -r0.zwxy, r3.zzzz
add r4.xyzw, |r4.xyzw|, cb5[8].wwww
div r4.xyzw, l(9.000000, 3.000000, 1.000000, 3.000000), r4.xyzw
dp4 r3.z, r4.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r3.z, r3.z, cb5[8].x
dp4 r4.x, r1.wxyz, r4.xyzw
add r4.x, r4.x, cb5[8].x
div r3.z, r4.x, r3.z
add r0.xyzw, -r0.wxyz, r3.wwww
add r0.xyzw, |r0.xyzw|, cb5[8].wwww
div r0.xyzw, l(9.000000, 3.000000, 1.000000, 3.000000), r0.xyzw
dp4 r3.w, r0.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r3.w, r3.w, cb5[8].x
dp4 r0.x, r1.xyzw, r0.xyzw
add r0.x, r0.x, cb5[8].x
div r0.x, r0.x, r3.w
iadd r1.xyzw, r2.xwxw, l(-1, 0, 0, -1)
store_uav_typed u0.xyzw, r1.xyyy, r3.xxxx
store_uav_typed u0.xyzw, r2.xwww, r3.yyyy
store_uav_typed u0.xyzw, r1.zwww, r3.zzzz
iadd r1.xyzw, r2.xyzw, l(-1, -1, -1, -1)
store_uav_typed u0.xyzw, r1.xyzw, r0.xxxx
ret 
// Approximately 250 instruction slots used
