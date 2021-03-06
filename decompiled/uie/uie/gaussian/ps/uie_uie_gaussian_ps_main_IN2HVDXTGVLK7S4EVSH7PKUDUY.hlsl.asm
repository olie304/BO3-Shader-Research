//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:42 2021
//
//
// Buffer Definitions: 
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16 [unused]
//   float4 scriptVector1;              // Offset:   16 Size:    16
//   float4 scriptVector2;              // Offset:   32 Size:    16 [unused]
//   float4 scriptVector3;              // Offset:   48 Size:    16 [unused]
//   float4 scriptVector4;              // Offset:   64 Size:    16 [unused]
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16 [unused]
//   float4 weaponParam0;               // Offset:  128 Size:    16 [unused]
//   float4 weaponParam1;               // Offset:  144 Size:    16 [unused]
//   float4 weaponParam2;               // Offset:  160 Size:    16 [unused]
//   float4 weaponParam3;               // Offset:  176 Size:    16 [unused]
//   float4 weaponParam4;               // Offset:  192 Size:    16 [unused]
//   float4 weaponParam5;               // Offset:  208 Size:    16 [unused]
//   float4 weaponParam6;               // Offset:  224 Size:    16 [unused]
//   float4 weaponParam7;               // Offset:  240 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// tileMipBilinearSampler            sampler      NA          NA             s1      1 
// colorMapSampler                   texture  float4          2d             t0      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB3[2], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
gather4_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1.x
dp4 r0.x, r0.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1.y
dp4 r0.y, r1.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1.z
dp4 r0.z, r1.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
mul r0.xyz, r0.xyzx, cb3[1].xxxx
dp3 r0.w, r0.xyzx, l(0.350000, 0.500000, 0.150000, 0.000000)
mul o0.xyz, r0.xyzx, l(0.700000, 0.700000, 1.000000, 0.000000)
log r0.x, |r0.w|
mul r0.x, r0.x, l(0.250000)
exp r0.x, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v2.xyxx, t0.wxyz, s1
dp3 r0.y, r0.yzwy, l(0.350000, 0.500000, 0.150000, 0.000000)
add r0.y, r0.y, r0.y
max_sat r0.x, r0.x, r0.y
mul o0.w, r0.x, v1.w
ret 
// Approximately 18 instruction slots used
