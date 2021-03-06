//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:44 2021
//
//
// Buffer Definitions: 
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16
//   float4 scriptVector2;              // Offset:   32 Size:    16
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
// clampMipBilinearSampler           sampler      NA          NA             s1      1 
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
// COLOR                    0   xyzw        1     NONE   float   xyzw
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
dcl_constantbuffer CB3[3], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
div r0.x, v2.y, cb3[2].x
ge r0.y, r0.x, -r0.x
frc r0.x, |r0.x|
movc r0.x, r0.y, r0.x, -r0.x
mul r0.y, cb3[2].x, l(0.500000)
mad r0.x, r0.x, cb3[2].x, -r0.y
div r0.x, |r0.x|, r0.y
log r0.x, r0.x
mul r0.x, r0.x, cb3[0].x
exp r0.x, r0.x
mul r0.x, r0.x, cb3[1].x
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
mad r1.xyz, r0.xxxx, -r1.xyzx, r1.xyzx
mul o0.xyzw, r1.xyzw, v1.xyzw
ret 
// Approximately 15 instruction slots used
