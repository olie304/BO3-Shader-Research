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
// tileMipBilinearSampler            sampler      NA          NA             s1      1 
// colorMapSampler1                  texture  float4          2d             t0      1 
// colorMapSampler2                  texture  float4          2d             t6      1 
// colorMapSampler3                  texture  float4          2d             t7      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float       
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
dcl_constantbuffer CB3[1], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 3
mul r0.xy, v2.yxyy, l(8.000000, 17.000000, 0.000000, 0.000000)
frc r0.xy, r0.xyxx
mad r1.yz, v2.yyxy, l(0.000000, 8.000000, 17.000000, 0.000000), -r0.xxyx
mul r0.z, r1.z, l(59.394840)
frc r1.x, r0.z
dp2 r0.z, r1.xzxx, l(81.239487, 59.394840, 0.000000, 0.000000)
frc r1.w, r0.z
dp3 r0.z, r1.xwzx, l(81.239487, 17.348024, 59.394840, 0.000000)
mov r2.xyw, r1.xwxz
frc r2.z, r0.z
dp4 r0.z, r2.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r2.w, r0.z
dp4 r0.z, r2.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r0.z, r0.z
frc r0.z, r0.z
mul r0.w, r0.z, l(17.000000)
frc r0.w, r0.w
mad r0.z, r0.z, l(17.000000), -r0.w
mad r0.z, r0.z, l(1.600000), r1.y
mul r0.w, r0.y, l(4.000000)
frc r0.w, r0.w
mad r0.y, r0.y, l(4.000000), -r0.w
lt r0.x, r0.w, r0.x
mad r0.y, r0.z, l(4.000000), r0.y
add r0.z, r0.y, r0.y
mad r0.y, r0.y, l(2.000000), l(1.000000)
movc r0.y, r0.x, r0.y, r0.z
mul r0.xz, cb3[0].xxxx, l(8.000000, 0.000000, 0.500000, 0.000000)
dp2 r0.z, r0.yzyy, l(81.239487, 59.394840, 0.000000, 0.000000)
frc r1.x, r0.z
mul r1.w, cb3[0].x, l(0.500000)
dp2 r0.z, r1.xwxx, l(81.239487, 59.394840, 0.000000, 0.000000)
frc r1.y, r0.z
dp3 r0.z, r1.xywx, l(81.239487, 17.348024, 59.394840, 0.000000)
frc r1.z, r0.z
dp4 r0.z, r1.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r1.w, r0.z
dp4 r0.z, r1.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r0.z, r0.z
frc r0.z, r0.z
add r0.z, r0.z, l(-0.500000)
mad r0.x, r0.z, l(80.000000), r0.x
lt r0.x, r0.y, r0.x
movc r0.x, r0.x, l(0), l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t7.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v2.xyxx, t6.xyzw, s1
add r1.xyzw, r1.xyzw, -r2.xyzw
mad r0.xyzw, r0.xxxx, r1.xyzw, r2.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
mad o0.xyzw, r1.xyzw, l(0.000010, 0.000010, 0.000010, 0.000010), r0.xyzw
ret 
// Approximately 51 instruction slots used
