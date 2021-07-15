//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:36 2021
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
//   float4 HeatmapColor;               // Offset:  160 Size:    16
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
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64 [unused]
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64 [unused]
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64 [unused]
//   row_major float4x4 inverseViewProjectionMatrix;// Offset:  320 Size:    64 [unused]
//   float4 eyeOffset;                  // Offset:  384 Size:    16 [unused]
//   float4 adsZScale;                  // Offset:  400 Size:    16 [unused]
//   float4 hdrControl0;                // Offset:  416 Size:    16 [unused]
//   float4 hdrControl1;                // Offset:  432 Size:    16 [unused]
//   float4 fogColor;                   // Offset:  448 Size:    16 [unused]
//   float4 fogConsts;                  // Offset:  464 Size:    16 [unused]
//   float4 fogConsts2;                 // Offset:  480 Size:    16 [unused]
//   float4 fogConsts3;                 // Offset:  496 Size:    16 [unused]
//   float4 fogConsts4;                 // Offset:  512 Size:    16 [unused]
//   float4 fogConsts5;                 // Offset:  528 Size:    16 [unused]
//   float4 fogConsts6;                 // Offset:  544 Size:    16 [unused]
//   float4 fogConsts7;                 // Offset:  560 Size:    16 [unused]
//   float4 fogConsts8;                 // Offset:  576 Size:    16 [unused]
//   float4 fogConsts9;                 // Offset:  592 Size:    16 [unused]
//   float3 sunFogDir;                  // Offset:  608 Size:    12 [unused]
//   float4 sunFogColor;                // Offset:  624 Size:    16 [unused]
//   float2 sunFog;                     // Offset:  640 Size:     8 [unused]
//   float4 zNear;                      // Offset:  656 Size:    16 [unused]
//   float3 clothPrimaryTint;           // Offset:  672 Size:    12 [unused]
//   float3 clothSecondaryTint;         // Offset:  688 Size:    12 [unused]
//   float4 renderTargetSize;           // Offset:  704 Size:    16 [unused]
//   float4 upscaledTargetSize;         // Offset:  720 Size:    16 [unused]
//   float4 materialColor;              // Offset:  736 Size:    16 [unused]
//   float4 cameraUp;                   // Offset:  752 Size:    16 [unused]
//   float4 cameraLook;                 // Offset:  768 Size:    16 [unused]
//   float4 cameraSide;                 // Offset:  784 Size:    16 [unused]
//   float4 cameraVelocity;             // Offset:  800 Size:    16 [unused]
//   float4 skyMxR;                     // Offset:  816 Size:    16 [unused]
//   float4 skyMxG;                     // Offset:  832 Size:    16 [unused]
//   float4 skyMxB;                     // Offset:  848 Size:    16 [unused]
//   float4 sunMxR;                     // Offset:  864 Size:    16 [unused]
//   float4 sunMxG;                     // Offset:  880 Size:    16 [unused]
//   float4 sunMxB;                     // Offset:  896 Size:    16 [unused]
//   float4 skyRotationTransition;      // Offset:  912 Size:    16 [unused]
//   float4 debugColorOverride;         // Offset:  928 Size:    16 [unused]
//   float4 debugAlphaOverride;         // Offset:  944 Size:    16 [unused]
//   float4 debugNormalOverride;        // Offset:  960 Size:    16 [unused]
//   float4 debugSpecularOverride;      // Offset:  976 Size:    16 [unused]
//   float4 debugGlossOverride;         // Offset:  992 Size:    16 [unused]
//   float4 debugOcclusionOverride;     // Offset: 1008 Size:    16 [unused]
//   float4 debugStreamerControl;       // Offset: 1024 Size:    16 [unused]
//   float4 emblemLUTSelector;          // Offset: 1040 Size:    16 [unused]
//   float4 colorMatrixR;               // Offset: 1056 Size:    16 [unused]
//   float4 colorMatrixG;               // Offset: 1072 Size:    16 [unused]
//   float4 colorMatrixB;               // Offset: 1088 Size:    16 [unused]
//   float4 gameTime;                   // Offset: 1104 Size:    16
//   float4 gameTick;                   // Offset: 1120 Size:    16 [unused]
//   float4 subpixelOffset;             // Offset: 1136 Size:    16 [unused]
//   float4 viewportDimensions;         // Offset: 1152 Size:    16 [unused]
//   float4 viewSpaceScaleBias;         // Offset: 1168 Size:    16 [unused]
//   float4 ui3dUVSetup0;               // Offset: 1184 Size:    16 [unused]
//   float4 ui3dUVSetup1;               // Offset: 1200 Size:    16 [unused]
//   float4 ui3dUVSetup2;               // Offset: 1216 Size:    16 [unused]
//   float4 ui3dUVSetup3;               // Offset: 1232 Size:    16 [unused]
//   float4 ui3dUVSetup4;               // Offset: 1248 Size:    16 [unused]
//   float4 ui3dUVSetup5;               // Offset: 1264 Size:    16 [unused]
//   float4 clipSpaceLookupScale;       // Offset: 1280 Size:    16 [unused]
//   float4 clipSpaceLookupOffset;      // Offset: 1296 Size:    16 [unused]
//   uint4 computeSpriteControl;        // Offset: 1312 Size:    16 [unused]
//   float4 invBcTexSizes;              // Offset: 1328 Size:    16 [unused]
//   float4 invMaskTexSizes;            // Offset: 1344 Size:    16 [unused]
//   float4 relHDRExposure;             // Offset: 1360 Size:    16 [unused]
//   uint4 triDensityFlags;             // Offset: 1376 Size:    16 [unused]
//   float4 triDensityParams;           // Offset: 1392 Size:    16 [unused]
//   float4 voldecalRevealTextureInfo;  // Offset: 1408 Size:    16 [unused]
//   float4 extraClipPlane0;            // Offset: 1424 Size:    16 [unused]
//   float4 extraClipPlane1;            // Offset: 1440 Size:    16 [unused]
//   float4 shaderDebug;                // Offset: 1456 Size:    16 [unused]
//   uint isDepthHack;                  // Offset: 1472 Size:     4 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// DayMap_Sampler                    sampler      NA          NA             s1      1 
// Mesh_Sampler                      sampler      NA          NA             s2      1 
// heatmapSampler_C9_P0_sampler      sampler      NA          NA             s3      1 
// DayMap                            texture  float4          2d             t0      1 
// Mesh                              texture  float4          2d             t6      1 
// heatmapSampler_C9_P0              texture  float4          2d             t7      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
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
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB3[1], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 12
add r0.xy, v2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
dp2 r0.z, r0.xyxx, r0.xyxx
sqrt r0.z, r0.z
mul r0.w, r0.z, l(1.41421354)
min r0.w, r0.w, l(1.000000)
mul r0.w, r0.w, l(1.510352)
min r0.w, r0.w, l(1.000000)
mad r0.w, r0.w, l(101.000000), l(-100.000000)
max r0.w, r0.w, l(0.000000)
mad r0.xy, r0.xyxx, l(1.050600, 1.050600, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.x, cb1[69].w, l(0.01989437)
ge r1.y, r1.x, -r1.x
frc r1.x, |r1.x|
movc r1.x, r1.y, r1.x, -r1.x
mul r1.x, r1.x, l(6.28318548)
mad r0.xy, r0.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r1.y, -r0.x, r0.x, l(1.000000)
mad r1.y, -r0.y, r0.y, r1.y
sqrt r1.z, r1.y
ge r1.y, r1.y, l(0.000000)
mul r1.w, r0.y, l(0.39874873)
mad r1.w, r0.x, l(0.91706026), -r1.w
dp2 r0.x, r0.xyxx, l(0.39874873, 0.91706026, 0.000000, 0.000000)
mul r2.xyzw, r1.zzzz, l(0.50000024, 0.86602527, -0.50000024, -0.86602527)
mad r2.yw, r0.xxxx, l(0.000000, 0.50000024, 0.000000, 0.50000024), r2.wwwy
sincos r1.x, r3.x, r1.x
mul r3.yz, r1.xxxx, r2.yywy
mul r2.yw, r2.yyyw, r3.xxxx
mad r0.xy, r0.xxxx, l(0.86602527, 0.86602527, 0.000000, 0.000000), -r2.zxzz
mad r2.xz, r1.wwww, r3.xxxx, -r3.yyzy
mad r1.xw, r1.wwww, r1.xxxx, r2.yyyw
min r2.yw, |r1.xxxw|, |r2.xxxz|
max r3.xy, |r1.xwxx|, |r2.xzxx|
div r3.xy, l(1.000000, 1.000000, 1.000000, 1.000000), r3.xyxx
mul r2.yw, r2.yyyw, r3.xxxy
mul r3.xy, r2.ywyy, r2.ywyy
mad r3.zw, r3.xxxy, l(0.000000, 0.000000, 0.02083510, 0.02083510), l(0.000000, 0.000000, -0.085133, -0.085133)
mad r3.zw, r3.xxxy, r3.zzzw, l(0.000000, 0.000000, 0.180141, 0.180141)
mad r3.zw, r3.xxxy, r3.zzzw, l(0.000000, 0.000000, -0.33029950, -0.33029950)
mad r3.xy, r3.xyxx, r3.zwzz, l(0.999866, 0.999866, 0.000000, 0.000000)
mul r3.zw, r2.yyyw, r3.xxxy
lt r4.xy, |r1.xwxx|, |r2.xzxx|
mad r3.zw, r3.zzzw, l(0.000000, 0.000000, -2.000000, -2.000000), l(0.000000, 0.000000, 1.57079637, 1.57079637)
and r3.zw, r4.xxxy, r3.zzzw
mad r2.yw, r2.yyyw, r3.xxxy, r3.zzzw
lt r3.xy, r1.xwxx, -r1.xwxx
and r3.xy, r3.xyxx, l(0xc0490fdb, 0xc0490fdb, 0, 0)
add r2.yw, r2.yyyw, r3.xxxy
min r3.xy, r1.xwxx, r2.xzxx
max r1.xw, r1.xxxw, r2.xxxz
lt r2.xz, r3.xxyx, -r3.xxyx
ge r1.xw, r1.xxxw, -r1.xxxw
and r1.xw, r1.xxxw, r2.xxxz
movc r1.xw, r1.xxxw, -r2.yyyw, r2.yyyw
mad r2.xy, r1.xwxx, l(0.15915494, 0.15915494, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
add r1.xw, -|r0.xxxy|, l(1.000000, 0.000000, 0.000000, 1.000000)
sqrt r1.xw, r1.xxxw
mad r3.xy, |r0.xyxx|, l(-0.01872930, -0.01872930, 0.000000, 0.000000), l(0.074261, 0.074261, 0.000000, 0.000000)
mad r3.xy, r3.xyxx, |r0.xyxx|, l(-0.21211439, -0.21211439, 0.000000, 0.000000)
mad r3.xy, r3.xyxx, |r0.xyxx|, l(1.57072878, 1.57072878, 0.000000, 0.000000)
mul r3.zw, r1.xxxw, r3.xxxy
mad r3.zw, r3.zzzw, l(0.000000, 0.000000, -2.000000, -2.000000), l(0.000000, 0.000000, 3.14159274, 3.14159274)
lt r4.xy, -r0.xyxx, r0.xyxx
and r3.zw, r3.zzzw, r4.xxxy
mad r1.xw, r3.xxxy, r1.xxxw, r3.zzzw
mul r2.zw, r1.xxxw, l(0.000000, 0.000000, 0.31830987, 0.31830987)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xzxx, t6.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xzxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.ywyy, t6.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r6.xyzw, r2.ywyy, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.x, r2.ywyy, t7.wxyz, s3
if_nz r1.y
  mul r1.y, r1.z, r1.z
  mul r1.z, r1.y, l(20.000000)
  min r1.z, r1.z, l(1.000000)
  add r0.xy, -r0.yxyy, l(1.000000, 1.000000, 0.000000, 0.000000)
  mad r2.xz, r0.xxyx, l(0.500000, 0.000000, 0.500000, 0.000000), -cb3[0].xxxx
  mul_sat r2.xz, r2.xxzx, l(20.000000, 0.000000, 20.000000, 0.000000)
  add r2.xz, -r2.xxzx, l(1.000000, 0.000000, 1.000000, 0.000000)
  add r2.w, -cb3[0].y, l(1.000000)
  mad r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), -r2.wwww
  mul_sat r0.xy, r0.xyxx, l(20.000000, 20.000000, 0.000000, 0.000000)
  mul r2.xz, r1.zzzz, r2.xxzx
  mul r0.xy, r0.xyxx, r1.zzzz
  mul r3.w, r2.z, r3.w
  mul r7.w, r0.y, r4.w
  mov r7.xyz, r4.xyzx
  mul r3.xyzw, r3.wwww, r3.xyzw
  mad r0.y, -r4.w, r0.y, l(1.000000)
  mul r3.xyzw, r0.yyyy, r3.xyzw
  mad r3.xyzw, r7.wwww, r7.xyzw, r3.xyzw
  div_sat r3.xyz, r3.xyzx, r3.wwww
  mov_sat r3.w, r3.w
  mul r4.w, r2.z, l(0.700000)
  mov r4.xyz, l(0,0,0,0)
  mad r7.xyzw, r3.xyzw, l(0.250000, 0.250000, 0.250000, 1.000000), -r4.zzzw
  mad r3.xyzw, r3.wwww, r7.xyzw, r4.xyzw
  mul r0.y, cb1[69].w, l(0.175000)
  ge r1.z, r0.y, -r0.y
  frc r0.y, |r0.y|
  movc r0.y, r1.z, r0.y, -r0.y
  mad r0.y, r0.y, l(2.000000), l(-1.000000)
  mad r0.y, |r0.y|, l(0.300000), l(0.200000)
  mul r0.y, r2.z, r0.y
  mul r1.y, r1.y, r1.y
  mul r0.y, r0.y, r1.y
  min r0.y, r0.y, l(1.000000)
  mad r4.xyzw, r0.yyyy, l(0.000000, -0.220000, 0.000000, 0.000000), l(1.000000, 0.500000, 0.000000, 1.000000)
  add r4.xyzw, -r3.xyzw, r4.xyzw
  mad r3.xyzw, r0.yyyy, r4.xyzw, r3.xyzw
  mul r4.x, r2.y, l(67.863266)
  mul r4.y, r1.w, l(21.601547)
  mad r0.y, r2.y, l(67.863266), r4.y
  mad r0.y, cb1[69].w, l(0.250000), r0.y
  mul r4.z, cb1[69].w, l(0.250000)
  mad r1.yzw, r0.yyyy, l(0.000000, 0.33333334, 0.33333334, 0.33333334), r4.zzxy
  round_ni r1.yzw, r1.yyzw
  add r0.y, r1.w, r1.z
  add r0.y, r1.y, r0.y
  mad r2.yzw, -r0.yyyy, l(0.000000, 0.16666667, 0.16666667, 0.16666667), r1.zzwy
  add r2.yzw, -r2.yyzw, r4.xxyz
  ge r4.xyz, r2.zwyz, r2.wyzw
  and r7.xyz, r4.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  movc r4.xyz, r4.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
  add r4.xyz, r4.xyzx, r7.xyzx
  min r7.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  add r7.xyz, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  max r4.xyz, r4.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  dp3 r8.x, r2.yzwy, r2.yzwy
  mul r9.xyz, r1.yzwy, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
  frc r9.xyz, r9.xyzx
  mul r9.xyz, r9.xyzx, r9.xyzx
  mul r10.xyz, r9.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
  mad r10.xyz, r9.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r10.xyzx
  mad r9.xyz, r9.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r10.xyzx
  frc r9.xyz, r9.xyzx
  add r9.xyz, r9.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
  dp3 r0.y, r9.xyzx, r9.xyzx
  rsq r0.y, r0.y
  mul r9.xyz, r0.yyyy, r9.xyzx
  dp3 r9.x, r2.yzwy, r9.xyzx
  add r10.xyz, r2.yzwy, -r4.yzxy
  add r10.xyz, r10.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
  dp3 r8.y, r10.xyzx, r10.xyzx
  add r4.xyz, r1.yzwy, r4.xyzx
  mul r4.xyz, r4.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
  frc r4.xyz, r4.xyzx
  mul r4.xyz, r4.xyzx, r4.xyzx
  mul r11.xyz, r4.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
  mad r11.xyz, r4.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r11.xyzx
  mad r4.xyz, r4.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r11.xyzx
  frc r4.xyz, r4.xyzx
  add r4.xyz, r4.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
  dp3 r0.y, r4.xyzx, r4.xyzx
  rsq r0.y, r0.y
  mul r4.xyz, r0.yyyy, r4.xyzx
  dp3 r9.y, r10.xyzx, r4.xyzx
  add r4.xyz, r2.yzwy, -r7.yzxy
  add r4.xyz, r4.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
  dp3 r8.z, r4.xyzx, r4.xyzx
  add r7.xyz, r1.yzwy, r7.xyzx
  mul r7.xyz, r7.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
  frc r7.xyz, r7.xyzx
  mul r7.xyz, r7.xyzx, r7.xyzx
  mul r10.xyz, r7.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
  mad r10.xyz, r7.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r10.xyzx
  mad r7.xyz, r7.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r10.xyzx
  frc r7.xyz, r7.xyzx
  add r7.xyz, r7.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
  dp3 r0.y, r7.xyzx, r7.xyzx
  rsq r0.y, r0.y
  mul r7.xyz, r0.yyyy, r7.xyzx
  dp3 r9.z, r4.xyzx, r7.xyzx
  add r2.yzw, r2.yyzw, l(0.000000, -0.500000, -0.500000, -0.500000)
  dp3 r8.w, r2.yzwy, r2.yzwy
  add r1.yzw, r1.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
  mul r1.yzw, r1.yyzw, l(0.000000, 0.23493849, 0.23493849, 0.23493849)
  frc r1.yzw, r1.yyzw
  mul r1.yzw, r1.yyzw, r1.yyzw
  mul r4.xyz, r1.wyzw, l(41.813038, 25.957844, 35.528923, 0.000000)
  mad r4.xyz, r1.zwyz, l(23.940153, 46.255398, 37.459515, 0.000000), r4.xyzx
  mad r1.yzw, r1.yyzw, l(0.000000, 31.365934, 33.597462, 29.645882), r4.xxyz
  frc r1.yzw, r1.yyzw
  add r1.yzw, r1.yyzw, l(0.000000, -0.500000, -0.500000, -0.500000)
  dp3 r0.y, r1.yzwy, r1.yzwy
  rsq r0.y, r0.y
  mul r1.yzw, r0.yyyy, r1.yyzw
  dp3 r9.w, r2.yzwy, r1.yzwy
  add r4.xyzw, -r8.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
  max r4.xyzw, r4.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  mul r4.xyzw, r4.xyzw, r4.xyzw
  mul r4.xyzw, r4.xyzw, r4.xyzw
  dp4 r0.y, r4.xyzw, r9.xyzw
  mad r0.y, -r0.y, l(32.000000), l(1.000000)
  mul r5.w, r2.x, r5.w
  mul r1.y, r0.x, r6.w
  mul_sat r1.z, r1.x, l(1000.000000)
  mul r0.x, r0.x, r1.z
  max r6.w, r1.y, r0.x
  mul r2.xyzw, r5.wwww, r5.xyzw
  add r0.x, -r6.w, l(1.000000)
  mul r2.xyzw, r0.xxxx, r2.xyzw
  mad r2.xyzw, r6.wwww, r6.xyzw, r2.xyzw
  div r1.yzw, r2.xxyz, r2.wwww
  mul r4.xyz, cb0[10].wwww, cb0[10].xyzx
  mul r4.xyz, r1.xxxx, r4.xyzx
  mad r0.x, r0.y, l(1.278400), l(0.72160006)
  mul r4.xyz, r0.xxxx, r4.xyzx
  mad_sat r2.xyz, r4.xyzx, r6.wwww, r1.yzwy
  mul r1.xyzw, r3.wwww, r3.xyzw
  add r0.x, -r2.w, l(1.000000)
  mul r1.xyzw, r0.xxxx, r1.xyzw
  mad r1.xyzw, r2.wwww, r2.xyzw, r1.xyzw
  div r1.xyz, r1.xyzx, r1.wwww
else 
  mov r1.xyzw, l(0,0,0,0)
endif 
mad_sat r0.x, r0.z, l(1.41421354), l(-0.670000)
mul r0.x, r0.x, l(27.530468)
min r0.x, r0.x, l(1.000000)
add r0.x, -r0.x, l(1.000000)
mul r0.x, r0.x, r0.w
mov_sat r0.y, cb3[0].y
mul r0.x, r0.y, r0.x
mul r2.w, r0.x, l(0.130000)
mov r2.xyz, l(1.000000,1.000000,1.000000,0)
add r2.xyzw, -r1.xyzw, r2.xyzw
mad r0.xyzw, r0.wwww, r2.xyzw, r1.xyzw
mul o0.xyzw, r0.xyzw, v1.xyzw
ret 
// Approximately 230 instruction slots used