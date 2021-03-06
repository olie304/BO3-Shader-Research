//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:39 2021
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
//   float WarpHeight;                  // Offset:  160 Size:     4
//   float3 SmokeColor;                 // Offset:  164 Size:    12
//   float BlurAmountMax;               // Offset:  176 Size:     4 [unused]
//
// }
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16 [unused]
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
// Smoke_Sampler                     sampler      NA          NA             s1      1 
// BlurMask_Sampler                  sampler      NA          NA             s2      1 
// Normal_Map_Sampler                sampler      NA          NA             s3      1 
// resolvedScene_C2_P0_sampler       sampler      NA          NA             s4      1 
// Smoke                             texture  float4          2d             t0      1 
// BlurMask                          texture  float4          2d             t6      1 
// Normal_Map                        texture  float4          2d             t7      1 
// resolvedScene_C2_P0               texture  float4          2d             t9      1 
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
// TEXCOORD                 1   xyzw        2     NONE   float       
// TEXCOORD                 2   xyzw        3     NONE   float   xyzw
// TEXCOORD                 3   xyzw        4     NONE   float   xyzw
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
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB3[1], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps linear v1.xy
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_output o0.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.xy, v1.xyxx, t7.xyzw, s3
mad r0.xyzw, r0.xyxy, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
mad r1.xyzw, -r0.zwzw, cb0[10].xxxx, v3.xyzw
mad r0.xyzw, -r0.xyzw, cb0[10].xxxx, v4.xyzw
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t9.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t9.xyzw, s4
add r1.xyz, r1.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r0.xyxx, t9.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.zwzz, t9.xyzw, s4
add r1.xyz, r1.xyzx, r2.xyzx
add r0.xyz, r0.xyzx, r1.xyzx
mad r1.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t9.xyzw, s4
mad r0.xyz, r0.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), -r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t6.yzwx, s2
mad r0.xyz, r0.wwww, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t0.xyzw, s1
mad r1.xyz, cb0[10].yzwy, r1.xyzx, -r0.xyzx
add r0.w, r1.w, cb3[0].y
add_sat r0.w, r0.w, l(-1.000000)
mad r0.xyz, r0.wwww, r1.xyzx, r0.xyzx
mov r0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xyxx, t9.xyzw, s4
add r0.xyzw, r0.xyzw, -r1.xyzw
mov_sat r2.x, cb3[0].x
mad o0.xyzw, r2.xxxx, r0.xyzw, r1.xyzw
ret 
// Approximately 28 instruction slots used
