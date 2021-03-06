//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021
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
//   float2 P1;                         // Offset:  160 Size:     8 [unused]
//   float LineWidth;                   // Offset:  168 Size:     4 [unused]
//   float2 P2;                         // Offset:  176 Size:     8 [unused]
//   float3 LineColor;                  // Offset:  192 Size:    12
//   float CapWidth;                    // Offset:  204 Size:     4 [unused]
//   float2 Dimensions;                 // Offset:  208 Size:     8 [unused]
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
// TEXCOORD                 0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 1   xy          2     NONE   float   xy  
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
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB3[2], immediateIndexed
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
mad r0.xy, v2.xyxx, cb3[0].xyxx, -cb3[1].xyxx
add r0.zw, -cb3[1].xxxy, cb3[1].zzzw
mul r0.xy, r0.zwzz, r0.xyxx
add r0.x, r0.y, r0.x
mul r1.xy, r0.zwzz, r0.zwzz
add r0.y, r1.y, r1.x
div r0.x, r0.x, r0.y
add r1.x, r0.x, l(-1.000000)
min r1.x, |r0.x|, |r1.x|
mul r1.x, r1.x, r1.x
mul r0.y, r0.y, r1.x
mul r1.xy, cb3[0].zwzz, cb3[0].zwzz
min r0.y, r0.y, r1.y
mad r0.y, cb3[0].w, cb3[0].w, -r0.y
div r0.y, r0.y, r1.y
lt r1.y, r0.x, l(0.000000)
lt r1.z, l(1.000000), r0.x
mad r0.xz, r0.xxxx, r0.zzwz, cb3[1].xxyx
mad r0.xz, -v2.xxyx, cb3[0].xxyx, r0.xxzx
mul r0.xz, r0.xxzx, r0.xxzx
add r0.x, r0.z, r0.x
min r0.x, r1.x, r0.x
mad r0.x, cb3[0].z, cb3[0].z, -r0.x
div r0.x, r0.x, r1.x
or r0.z, r1.z, r1.y
movc r0.y, r0.z, r0.y, l(1.000000)
mul r0.x, r0.y, r0.x
lt r0.y, l(0.000000), r0.x
and r1.w, r0.x, r0.y
and r1.xyz, r0.yyyy, cb0[12].xyzx
mul o0.xyzw, r1.xyzw, v1.xyzw
ret 
// Approximately 32 instruction slots used
