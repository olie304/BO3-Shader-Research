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
// Occlusion                             UAV   float          2d             u0      1 
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
dcl_constantbuffer CB5[10], immediateIndexed
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.xy
dcl_temps 5
dcl_tgsm_structured g0, 4, 1024
dcl_thread_group 16, 16, 1
iadd r0.xy, vThreadIDInGroup.xyxx, vThreadID.xyxx
iadd r0.xy, r0.xyxx, l(-7, -7, 0, 0)
utof r0.xy, r0.xyxx
mul r0.xy, r0.xyxx, cb5[0].zwzz
gather4_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.xyzw, s2.x
ishl r1.x, vThreadIDInGroup.x, l(1)
imad r1.x, vThreadIDInGroup.y, l(64), r1.x
store_structured g0.x, r1.x, l(0), r0.w
iadd r0.w, r1.x, l(1)
store_structured g0.x, r0.w, l(0), r0.z
iadd r0.zw, r1.xxxx, l(0, 0, 32, 33)
store_structured g0.x, r0.z, l(0), r0.x
store_structured g0.x, r0.w, l(0), r0.y
sync_g_t
imad r0.x, vThreadIDInGroup.y, l(32), vThreadIDInGroup.x
iadd r1.xyzw, r0.xxxx, l(256, 264, 268, 260)
ld_structured r0.y, r1.w, l(0), g0.xxxx
mul r0.zw, cb5[1].yyyw, cb5[9].xxxx
ld_structured r1.y, r1.y, l(0), g0.xxxx
div r1.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.y
mul r0.zw, r0.zzzw, r1.yyyy
mul r1.w, cb5[9].x, l(0.500000)
mad r2.xy, cb5[1].ywyy, cb5[9].xxxx, -r1.wwww
mad r0.y, r0.y, r0.z, -r2.x
mul r2.z, r0.y, -cb5[9].z
ld_structured r1.z, r1.z, l(0), g0.xxxx
ld_structured r1.x, r1.x, l(0), g0.xxxx
mad r1.x, r1.x, r0.w, -r2.y
mad r1.z, r1.z, r0.z, -r2.x
max_sat r2.z, r2.z, r1.z
mul r1.z, r1.z, -cb5[9].z
max_sat r0.y, r0.y, r1.z
add r0.y, r0.y, r2.z
iadd r3.xyzw, r0.xxxx, l(392, 136, 272, 520)
ld_structured r1.z, r3.y, l(0), g0.xxxx
mad r1.z, r1.z, r0.z, -r2.x
mul r2.z, r1.z, -cb5[9].z
ld_structured r2.w, r3.x, l(0), g0.xxxx
mad r0.z, r2.w, r0.z, -r2.x
max_sat r2.x, r2.z, r0.z
mul r0.z, r0.z, -cb5[9].z
max_sat r0.z, r0.z, r1.z
add r0.z, r0.z, r2.x
add r0.y, r0.z, r0.y
iadd r4.xyzw, r0.xxxx, l(8, 326, 202, 330)
ld_structured r0.z, r4.x, l(0), g0.xxxx
mad r0.z, r0.z, r0.w, -r2.y
mul r1.z, r0.z, -cb5[9].z
ld_structured r2.x, r3.w, l(0), g0.xxxx
ld_structured r2.z, r3.z, l(0), g0.xxxx
mad r2.z, r2.z, r0.w, -r2.y
mad r0.w, r2.x, r0.w, -r2.y
max_sat r1.z, r1.z, r0.w
mul r0.w, r0.w, -cb5[9].z
max_sat r0.z, r0.w, r0.z
add r0.z, r0.z, r1.z
mul r0.w, r1.x, -cb5[9].z
max_sat r0.w, r0.w, r2.z
mul r1.z, r2.z, -cb5[9].z
max_sat r1.x, r1.z, r1.x
add r0.w, r0.w, r1.x
add r0.z, r0.z, r0.w
mul r0.yz, r0.yyzy, cb5[4].yywy
mul r0.z, r0.z, l(0.500000)
mad r0.y, r0.y, l(0.500000), r0.z
ld_structured r0.z, r4.z, l(0), g0.xxxx
mul r1.xz, cb5[2].xxzx, cb5[9].xxxx
mul r1.xz, r1.yyyy, r1.xxzx
mad r2.xy, cb5[2].xzxx, cb5[9].xxxx, -r1.wwww
mad r2.zw, cb5[3].xxxw, cb5[9].xxxx, -r1.wwww
mad r0.z, r0.z, r1.x, -r2.x
mul r0.w, r0.z, -cb5[9].z
ld_structured r1.w, r4.y, l(0), g0.xxxx
ld_structured r3.x, r4.w, l(0), g0.xxxx
mad r3.x, r3.x, r1.x, -r2.x
mad r1.w, r1.w, r1.x, -r2.x
max_sat r0.w, r0.w, r1.w
mul r1.w, r1.w, -cb5[9].z
max_sat r0.z, r0.z, r1.w
add r0.z, r0.z, r0.w
iadd r4.xyzw, r0.xxxx, l(198, 388, 140, 396)
ld_structured r0.w, r4.x, l(0), g0.xxxx
mad r0.w, r0.w, r1.x, -r2.x
mul r1.x, r0.w, -cb5[9].z
max_sat r1.x, r1.x, r3.x
mul r1.w, r3.x, -cb5[9].z
max_sat r0.w, r0.w, r1.w
add r0.w, r0.w, r1.x
add r0.z, r0.w, r0.z
mul r0.z, r0.z, cb5[5].x
mad r0.y, r0.z, l(0.500000), r0.y
ld_structured r0.z, r4.z, l(0), g0.xxxx
mul r1.xw, cb5[3].xxxw, cb5[9].xxxx
mul r1.xy, r1.yyyy, r1.xwxx
mad r0.z, r0.z, r1.x, -r2.z
mul r0.w, r0.z, -cb5[9].z
ld_structured r1.w, r4.y, l(0), g0.xxxx
ld_structured r2.x, r4.w, l(0), g0.xxxx
mad r2.x, r2.x, r1.x, -r2.z
mad r1.w, r1.w, r1.x, -r2.z
max_sat r0.w, r0.w, r1.w
mul r1.w, r1.w, -cb5[9].z
max_sat r0.z, r0.z, r1.w
add r0.z, r0.z, r0.w
iadd r3.xyzw, r0.xxxx, l(132, 450, 78, 462)
ld_structured r0.w, r3.x, l(0), g0.xxxx
mad r0.w, r0.w, r1.x, -r2.z
mul r1.x, r0.w, -cb5[9].z
max_sat r1.x, r1.x, r2.x
mul r1.w, r2.x, -cb5[9].z
max_sat r0.w, r0.w, r1.w
add r0.w, r0.w, r1.x
add r0.z, r0.w, r0.z
mul r0.z, r0.z, cb5[6].x
mad r0.y, r0.z, l(0.500000), r0.y
ld_structured r0.z, r3.z, l(0), g0.xxxx
mad r0.z, r0.z, r1.y, -r2.w
mul r0.w, r0.z, -cb5[9].z
ld_structured r1.x, r3.y, l(0), g0.xxxx
ld_structured r1.w, r3.w, l(0), g0.xxxx
mad r1.w, r1.w, r1.y, -r2.w
mad r1.x, r1.x, r1.y, -r2.w
max_sat r0.w, r0.w, r1.x
mul r1.x, r1.x, -cb5[9].z
max_sat r0.z, r0.z, r1.x
add r0.z, r0.z, r0.w
iadd r3.xyzw, r0.xxxx, l(66, 458, 70, 454)
ld_structured r0.w, r3.x, l(0), g0.xxxx
mad r0.w, r0.w, r1.y, -r2.w
mul r1.x, r0.w, -cb5[9].z
max_sat r1.x, r1.x, r1.w
mul r1.y, r1.w, -cb5[9].z
max_sat r0.w, r0.w, r1.y
add r0.w, r0.w, r1.x
add r0.z, r0.w, r0.z
mul r0.z, r0.z, cb5[6].w
mad r0.y, r0.z, l(0.500000), r0.y
ld_structured r0.z, r3.z, l(0), g0.xxxx
mad r0.z, r0.z, r1.z, -r2.y
mul r0.w, r0.z, -cb5[9].z
ld_structured r1.x, r3.y, l(0), g0.xxxx
ld_structured r1.y, r3.w, l(0), g0.xxxx
mad r1.y, r1.y, r1.z, -r2.y
mad r1.x, r1.x, r1.z, -r2.y
max_sat r0.w, r0.w, r1.x
mul r1.x, r1.x, -cb5[9].z
max_sat r0.z, r0.z, r1.x
add r0.z, r0.z, r0.w
iadd r3.xyzw, r0.xxxx, l(74, 334, 194, 322)
iadd r0.x, r0.x, l(206)
ld_structured r0.x, r0.x, l(0), g0.xxxx
mad r0.x, r0.x, r1.z, -r2.y
ld_structured r0.w, r3.x, l(0), g0.xxxx
mad r0.w, r0.w, r1.z, -r2.y
mul r1.x, r0.w, -cb5[9].z
max_sat r1.x, r1.x, r1.y
mul r1.y, r1.y, -cb5[9].z
max_sat r0.w, r0.w, r1.y
add r0.w, r0.w, r1.x
add r0.z, r0.w, r0.z
ld_structured r0.w, r3.z, l(0), g0.xxxx
mad r0.w, r0.w, r1.z, -r2.y
mul r1.x, r0.w, -cb5[9].z
ld_structured r1.y, r3.y, l(0), g0.xxxx
ld_structured r1.w, r3.w, l(0), g0.xxxx
mad r1.w, r1.w, r1.z, -r2.y
mad r1.y, r1.y, r1.z, -r2.y
max_sat r1.x, r1.x, r1.y
mul r1.y, r1.y, -cb5[9].z
max_sat r0.w, r0.w, r1.y
add r0.w, r0.w, r1.x
add r0.z, r0.w, r0.z
mul r0.w, r0.x, -cb5[9].z
max_sat r0.w, r0.w, r1.w
mul r1.x, r1.w, -cb5[9].z
max_sat r0.x, r0.x, r1.x
add r0.x, r0.x, r0.w
add r0.x, r0.x, r0.z
mul r0.x, r0.x, cb5[5].z
mad r0.x, r0.x, l(0.250000), r0.y
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xxxx
ret 
// Approximately 182 instruction slots used
