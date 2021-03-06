//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021
//
//
// Buffer Definitions: 
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
// Noise_Sampler                     sampler      NA          NA             s1      1 
// Wireframe_Sampler                 sampler      NA          NA             s2      1 
// Image_Sampler                     sampler      NA          NA             s3      1 
// Noise                             texture  float4          2d             t0      1 
// Wireframe                         texture  float4          2d             t6      1 
// Image                             texture  float4          2d             t7      1 
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
dcl_constantbuffer CB3[1], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.yxyy, t0.xyzw, s1
add r0.x, r0.x, l(-0.500000)
add r0.y, v2.x, l(-0.500000)
mul r0.y, |r0.y|, l(0.600000)
mad r0.x, r0.x, l(0.050000), r0.y
add r0.y, r0.x, v2.y
mad r0.zw, cb3[0].xxxy, l(0.000000, 0.000000, 1.600000, 1.600000), l(0.000000, 0.000000, -0.300000, -0.300000)
add r0.xy, -r0.xwxx, r0.wyww
mul r0.y, |r0.y|, l(20.000000)
min r0.y, r0.y, l(1.000000)
add r0.y, -r0.y, l(1.000000)
mul r1.x, r0.y, r0.y
mad r1.xyz, r1.xxxx, l(0.10000002, 0.19999999, 0.200000, 0.000000), l(0.900000, 0.690000, 0.200000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v2.xyxx, t7.xyzw, s3
add r3.x, r2.y, r2.x
add r3.x, r2.z, r3.x
mul r0.y, r0.y, r3.x
mul r1.w, r0.y, l(0.33333334)
mad r0.y, -r0.y, l(0.33333334), l(1.000000)
mul r1.xyzw, r1.wwww, r1.xyzw
lt r0.x, r0.x, v2.y
movc r0.x, r0.x, l(0), l(1.000000)
mul r2.xyzw, r0.xxxx, r2.xyzw
mad r1.xyzw, r2.xyzw, r0.yyyy, r1.xyzw
add r0.x, -r1.w, l(1.000000)
mul r1.xyzw, r1.wwww, r1.xyzw
mad r0.y, v2.x, l(-0.300000), v2.y
add r0.y, -r0.z, r0.y
mad r0.z, -v2.x, l(-0.300000), r0.z
lt r0.z, r0.z, v2.y
movc r0.z, r0.z, l(0), l(1.000000)
mul r0.y, |r0.y|, l(20.000000)
min r0.y, r0.y, l(1.000000)
add r0.y, -r0.y, l(1.000000)
mul r0.w, r3.x, r0.y
mul r0.y, r0.y, r0.y
mad r2.xyz, r0.yyyy, l(0.10000002, 0.19999999, 0.200000, 0.000000), l(0.900000, 0.690000, 0.200000, 0.000000)
mul r2.w, r0.w, l(0.33333334)
mad r0.y, -r0.w, l(0.33333334), l(1.000000)
mul r2.xyzw, r2.wwww, r2.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.w, v2.xyxx, t6.xyzw, s2
mov r3.xyz, l(0,0,0,0)
mul r3.xyzw, r0.zzzz, r3.xyzw
mad r2.xyzw, r3.xyzw, r0.yyyy, r2.xyzw
mad r0.xyzw, r2.xyzw, r0.xxxx, r1.xyzw
mul o0.xyzw, r0.xyzw, v1.xyzw
ret 
// Approximately 47 instruction slots used
