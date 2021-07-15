//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:06 2021
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4 flagParams;                 // Offset:    0 Size:    16 [unused]
//   float4 colorObjMin;                // Offset:   16 Size:    16 [unused]
//   float4 colorObjMax;                // Offset:   32 Size:    16 [unused]
//   float colorObjMinBaseBlend;        // Offset:   48 Size:     4 [unused]
//   float colorObjMaxBaseBlend;        // Offset:   52 Size:     4 [unused]
//   float2 uvScroll;                   // Offset:   56 Size:     8 [unused]
//   float4 detailScale;                // Offset:   64 Size:    16 [unused]
//   float4 detailScale1;               // Offset:   80 Size:    16 [unused]
//   float4 detailScale2;               // Offset:   96 Size:    16 [unused]
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float2 colorFlipRowsCols;          // Offset:  168 Size:     8
//   float colorFlipTime;               // Offset:  176 Size:     4
//   float colorScale;                  // Offset:  180 Size:     4
//
// }
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16
//   float4 scriptVector2;              // Offset:   32 Size:    16 [unused]
//   float4 scriptVector3;              // Offset:   48 Size:    16 [unused]
//   float4 scriptVector4;              // Offset:   64 Size:    16 [unused]
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16
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
// bilinearSampler                   sampler      NA          NA             s1      1 
// frameBuffer                       texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d             t6      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_constantbuffer CB0[12], immediateIndexed
dcl_constantbuffer CB3[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
mul r0.x, cb3[7].y, l(0.001000)
mul r0.y, cb0[10].w, cb0[10].z
mul r0.z, r0.y, cb0[11].x
mul r0.w, r0.z, r0.x
ge r0.w, r0.w, -r0.w
movc r0.w, r0.w, r0.z, -r0.z
div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mul r0.x, r0.x, r1.x
frc r0.x, r0.x
mul r0.x, r0.x, r0.w
div r0.x, r0.x, r0.z
mul r0.x, r0.y, r0.x
round_ne r0.x, r0.x
mul r0.y, r0.x, cb0[10].w
ge r0.y, r0.y, -r0.y
movc r0.y, r0.y, cb0[10].w, -cb0[10].w
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
mul r0.z, r0.z, r0.x
div r0.x, r0.x, cb0[10].w
round_z r0.x, r0.x
add r0.x, r0.x, v1.y
div r1.y, r0.x, cb0[10].z
frc r0.x, r0.z
mul r0.x, r0.x, r0.y
round_z r0.x, r0.x
add r0.x, r0.x, v1.x
div r1.x, r0.x, cb0[10].w
lt r0.x, l(0.000000), cb0[11].x
movc r0.xy, r0.xxxx, r1.xyxx, v1.xyxx
mul r0.xy, r0.xyxx, cb0[11].yyyy
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t6.xyzw, s1
mov_sat r1.xy, cb3[0].zxzz
mul r0.w, r0.w, r1.y
log r1.yzw, |cb3[1].xxyz|
mul r1.yzw, r1.yyzw, l(0.000000, 2.200000, 2.200000, 2.200000)
exp r1.yzw, r1.yyzw
add r1.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r1.xyz, r1.xxxx, r1.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v1.xyxx, t0.xyzw, s1
mul r2.xyz, r2.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000)
mov o0.w, r2.w
mad r0.xyz, r0.xyzx, r1.xyzx, -r2.xyzx
mad r0.xyz, r0.wwww, r0.xyzx, r2.xyzx
mul o0.xyz, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
ret 
// Approximately 45 instruction slots used