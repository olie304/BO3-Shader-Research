//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:39 2021
//
//
// Buffer Definitions: 
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
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
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
dcl_constantbuffer CB1[70], immediateIndexed
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 11
mul r0.xy, v2.xyxx, l(6.000000, 1.125000, 0.000000, 0.000000)
add r0.z, r0.y, r0.x
mul r1.xyz, cb1[69].wwww, l(0.000400, 0.00004000, 0.00004000, 0.000000)
ge r2.xyz, r1.xyzx, -r1.xzzx
frc r1.xyz, |r1.xzzx|
movc r1.xyz, r2.xyzx, r1.xyzx, -r1.xzzx
mad r0.w, -r1.x, l(100.000000), l(0.500000)
mov r2.z, |r0.w|
add r0.z, r0.z, r2.z
mul r2.xy, v2.xyxx, l(6.000000, 1.125000, 0.000000, 0.000000)
mad r3.xyz, r0.zzzz, l(0.33333334, 0.33333334, 0.33333334, 0.000000), r2.zxyz
round_ni r3.xyz, r3.xyzx
add r0.z, r3.z, r3.y
add r0.z, r3.x, r0.z
mad r4.xyz, -r0.zzzz, l(0.16666667, 0.16666667, 0.16666667, 0.000000), r3.yzxy
add r2.xyw, r2.xyxz, -r4.xyxz
add r4.xyzw, r2.zzzz, l(1.300000, 3.450000, 4.930000, 5.500000)
ge r5.xyz, r2.ywxy, r2.wxyw
and r6.xyz, r5.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
movc r5.xyz, r5.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
add r5.xyz, r5.xyzx, r6.xyzx
min r6.xyz, r5.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
max r5.xyz, r5.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r6.xyz, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r7.xyz, r3.xyzx, r6.xyzx
add r6.xyz, r2.xywx, -r6.yzxy
add r6.xyz, r6.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
mul r7.xyz, r7.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r7.xyz, r7.xyzx
mul r7.xyz, r7.xyzx, r7.xyzx
mul r8.xyz, r7.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r8.xyz, r7.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r8.xyzx
mad r7.xyz, r7.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r8.xyzx
frc r7.xyz, r7.xyzx
add r7.xyz, r7.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r7.xyzx, r7.xyzx
rsq r0.z, r0.z
mul r7.xyz, r0.zzzz, r7.xyzx
dp3 r7.z, r6.xyzx, r7.xyzx
dp3 r6.z, r6.xyzx, r6.xyzx
add r8.xyz, r3.xyzx, r5.xyzx
add r5.xyz, r2.xywx, -r5.yzxy
add r5.xyz, r5.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
mul r8.xyz, r8.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r8.xyz, r8.xyzx
mul r8.xyz, r8.xyzx, r8.xyzx
mul r9.xyz, r8.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r9.xyz, r8.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r9.xyzx
mad r8.xyz, r8.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r9.xyzx
frc r8.xyz, r8.xyzx
add r8.xyz, r8.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r8.xyzx, r8.xyzx
rsq r0.z, r0.z
mul r8.xyz, r0.zzzz, r8.xyzx
dp3 r7.y, r5.xyzx, r8.xyzx
dp3 r6.y, r5.xyzx, r5.xyzx
dp3 r6.x, r2.xywx, r2.xywx
add r5.xyz, r2.xywx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r6.w, r5.xyzx, r5.xyzx
add r6.xyzw, -r6.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
max r6.xyzw, r6.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r6.xyzw, r6.xyzw, r6.xyzw
mul r6.xyzw, r6.xyzw, r6.xyzw
mul r8.xyz, r3.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
add r3.xyz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r3.xyz, r3.xyzx
mul r3.xyz, r3.xyzx, r3.xyzx
frc r8.xyz, r8.xyzx
mul r8.xyz, r8.xyzx, r8.xyzx
mul r9.xyz, r8.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r9.xyz, r8.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r9.xyzx
mad r8.xyz, r8.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r9.xyzx
frc r8.xyz, r8.xyzx
add r8.xyz, r8.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r8.xyzx, r8.xyzx
rsq r0.z, r0.z
mul r8.xyz, r0.zzzz, r8.xyzx
dp3 r7.x, r2.xywx, r8.xyzx
mul r2.xyz, r3.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r2.xyz, r3.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r2.xyzx
mad r2.xyz, r3.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r2.xyzx
frc r2.xyz, r2.xyzx
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
dp3 r7.w, r5.xyzx, r2.xyzx
dp4 r2.y, r6.xyzw, r7.xyzw
mad r0.zw, v2.xxxy, l(0.000000, 0.000000, 6.000000, 1.125000), l(0.000000, 0.000000, 5.200000, 1.300000)
add r0.z, r0.w, r0.z
add r0.z, r4.x, r0.z
mad r3.xy, v2.xyxx, l(6.000000, 1.125000, 0.000000, 0.000000), l(5.200000, 1.300000, 0.000000, 0.000000)
mov r3.z, r4.x
mad r5.xyz, r0.zzzz, l(0.33333334, 0.33333334, 0.33333334, 0.000000), r3.zxyz
round_ni r5.xyz, r5.xyzx
add r0.z, r5.z, r5.y
add r0.z, r5.x, r0.z
mad r6.xyz, -r0.zzzz, l(0.16666667, 0.16666667, 0.16666667, 0.000000), r5.yzxy
add r3.xyz, r3.xyzx, -r6.xyzx
ge r6.xyz, r3.yzxy, r3.zxyz
and r7.xyz, r6.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
movc r6.xyz, r6.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
add r6.xyz, r6.xyzx, r7.xyzx
min r7.xyz, r6.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
max r6.xyz, r6.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r7.xyz, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r8.xyz, r5.xyzx, r7.xyzx
add r7.xyz, r3.xyzx, -r7.yzxy
add r7.xyz, r7.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
mul r8.xyz, r8.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r8.xyz, r8.xyzx
mul r8.xyz, r8.xyzx, r8.xyzx
mul r9.xyz, r8.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r9.xyz, r8.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r9.xyzx
mad r8.xyz, r8.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r9.xyzx
frc r8.xyz, r8.xyzx
add r8.xyz, r8.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r8.xyzx, r8.xyzx
rsq r0.z, r0.z
mul r8.xyz, r0.zzzz, r8.xyzx
dp3 r8.z, r7.xyzx, r8.xyzx
dp3 r7.z, r7.xyzx, r7.xyzx
add r9.xyz, r5.xyzx, r6.xyzx
add r6.xyz, r3.xyzx, -r6.yzxy
add r6.xyz, r6.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
mul r9.xyz, r9.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r9.xyz, r9.xyzx
mul r9.xyz, r9.xyzx, r9.xyzx
mul r10.xyz, r9.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r10.xyz, r9.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r10.xyzx
mad r9.xyz, r9.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r10.xyzx
frc r9.xyz, r9.xyzx
add r9.xyz, r9.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r9.xyzx, r9.xyzx
rsq r0.z, r0.z
mul r9.xyz, r0.zzzz, r9.xyzx
dp3 r8.y, r6.xyzx, r9.xyzx
dp3 r7.y, r6.xyzx, r6.xyzx
dp3 r7.x, r3.xyzx, r3.xyzx
add r6.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r7.w, r6.xyzx, r6.xyzx
add r7.xyzw, -r7.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
max r7.xyzw, r7.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r7.xyzw, r7.xyzw, r7.xyzw
mul r7.xyzw, r7.xyzw, r7.xyzw
mul r9.xyz, r5.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
add r5.xyz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r5.xyz, r5.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r5.xyz, r5.xyzx
mul r5.xyz, r5.xyzx, r5.xyzx
frc r9.xyz, r9.xyzx
mul r9.xyz, r9.xyzx, r9.xyzx
mul r10.xyz, r9.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r10.xyz, r9.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r10.xyzx
mad r9.xyz, r9.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r10.xyzx
frc r9.xyz, r9.xyzx
add r9.xyz, r9.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r9.xyzx, r9.xyzx
rsq r0.z, r0.z
mul r9.xyz, r0.zzzz, r9.xyzx
dp3 r8.x, r3.xyzx, r9.xyzx
mul r3.xyz, r5.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r3.xyz, r5.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r3.xyzx
mad r3.xyz, r5.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r3.xyzx
frc r3.xyz, r3.xyzx
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r3.xyzx
dp3 r8.w, r6.xyzx, r3.xyzx
dp4 r2.z, r7.xyzw, r8.xyzw
mad r0.yz, r2.yyzy, l(0.000000, 16.000000, 16.000000, 0.000000), r0.xxyx
mad r0.x, -r1.y, l(3000.000000), r0.y
add r0.y, r0.z, r0.x
add r0.y, r4.y, r0.y
mov r0.w, r4.y
mad r1.xyw, r0.yyyy, l(0.33333334, 0.33333334, 0.000000, 0.33333334), r0.wxwz
round_ni r1.xyw, r1.xyxw
mul r2.xyz, r1.xywx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r2.xyz, r2.xyzx
mul r2.xyz, r2.xyzx, r2.xyzx
mul r3.xyz, r2.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r3.xyz, r2.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r3.xyzx
mad r2.xyz, r2.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r3.xyzx
frc r2.xyz, r2.xyzx
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r2.xyzx, r2.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, r2.xyzx
add r0.y, r1.w, r1.y
add r0.y, r1.x, r0.y
mad r3.xyz, -r0.yyyy, l(0.16666667, 0.16666667, 0.16666667, 0.000000), r1.ywxy
add r3.xyz, r0.xzwx, -r3.xyzx
dp3 r2.x, r3.xyzx, r2.xyzx
ge r5.xyz, r3.yzxy, r3.zxyz
and r6.xyz, r5.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
movc r5.xyz, r5.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
add r5.xyz, r5.xyzx, r6.xyzx
min r6.xyz, r5.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
max r5.xyz, r5.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r6.xyz, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r7.xyz, r1.xywx, r6.xyzx
add r6.xyz, r3.xyzx, -r6.yzxy
add r6.xyz, r6.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
mul r7.xyz, r7.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r7.xyz, r7.xyzx
mul r7.xyz, r7.xyzx, r7.xyzx
mul r8.xyz, r7.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r8.xyz, r7.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r8.xyzx
mad r7.xyz, r7.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r8.xyzx
frc r7.xyz, r7.xyzx
add r7.xyz, r7.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r7.xyzx, r7.xyzx
rsq r0.y, r0.y
mul r7.xyz, r0.yyyy, r7.xyzx
dp3 r2.z, r6.xyzx, r7.xyzx
dp3 r6.z, r6.xyzx, r6.xyzx
add r7.xyz, r1.xywx, r5.xyzx
add r1.xyw, r1.xyxw, l(1.000000, 1.000000, 0.000000, 1.000000)
mul r1.xyw, r1.xyxw, l(0.23493849, 0.23493849, 0.000000, 0.23493849)
frc r1.xyw, r1.xyxw
mul r1.xyw, r1.xyxw, r1.xyxw
add r5.xyz, r3.xyzx, -r5.yzxy
add r5.xyz, r5.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
mul r7.xyz, r7.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r7.xyz, r7.xyzx
mul r7.xyz, r7.xyzx, r7.xyzx
mul r8.xyz, r7.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r8.xyz, r7.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r8.xyzx
mad r7.xyz, r7.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r8.xyzx
frc r7.xyz, r7.xyzx
add r7.xyz, r7.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r7.xyzx, r7.xyzx
rsq r0.y, r0.y
mul r7.xyz, r0.yyyy, r7.xyzx
dp3 r2.y, r5.xyzx, r7.xyzx
dp3 r6.y, r5.xyzx, r5.xyzx
mul r5.xyz, r1.wxyw, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r5.xyz, r1.ywxy, l(23.940153, 46.255398, 37.459515, 0.000000), r5.xyzx
mad r1.xyw, r1.xyxw, l(31.365934, 33.597462, 0.000000, 29.645882), r5.xyxz
frc r1.xyw, r1.xyxw
add r1.xyw, r1.xyxw, l(-0.500000, -0.500000, 0.000000, -0.500000)
dp3 r0.y, r1.xywx, r1.xywx
rsq r0.y, r0.y
mul r1.xyw, r0.yyyy, r1.xyxw
add r5.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r6.x, r3.xyzx, r3.xyzx
dp3 r2.w, r5.xyzx, r1.xywx
dp3 r6.w, r5.xyzx, r5.xyzx
add r3.xyzw, -r6.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
max r3.xyzw, r3.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r3.xyzw, r3.xyzw, r3.xyzw
mul r3.xyzw, r3.xyzw, r3.xyzw
dp4 r0.y, r3.xyzw, r2.xyzw
mul r2.y, r0.y, l(32.000000)
add r4.xy, r0.xzxx, l(1.700000, 3.100000, 0.000000, 0.000000)
add r0.y, r4.y, r4.x
add r0.y, r4.z, r0.y
mad r1.xyw, r0.yyyy, l(0.33333334, 0.33333334, 0.000000, 0.33333334), r4.zxzy
round_ni r1.xyw, r1.xyxw
mul r3.xyz, r1.xywx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r3.xyz, r3.xyzx
mul r3.xyz, r3.xyzx, r3.xyzx
mul r5.xyz, r3.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r5.xyz, r3.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r5.xyzx
mad r3.xyz, r3.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r5.xyzx
frc r3.xyz, r3.xyzx
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r3.xyzx, r3.xyzx
rsq r0.y, r0.y
mul r3.xyz, r0.yyyy, r3.xyzx
add r0.y, r1.w, r1.y
add r0.y, r1.x, r0.y
mad r5.xyz, -r0.yyyy, l(0.16666667, 0.16666667, 0.16666667, 0.000000), r1.ywxy
add r5.xyz, r4.xyzx, -r5.xyzx
dp3 r3.x, r5.xyzx, r3.xyzx
ge r6.xyz, r5.yzxy, r5.zxyz
and r7.xyz, r6.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
movc r6.xyz, r6.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
add r6.xyz, r6.xyzx, r7.xyzx
min r7.xyz, r6.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
max r6.xyz, r6.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r7.xyz, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r8.xyz, r1.xywx, r7.xyzx
add r7.xyz, r5.xyzx, -r7.yzxy
add r7.xyz, r7.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
mul r8.xyz, r8.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r8.xyz, r8.xyzx
mul r8.xyz, r8.xyzx, r8.xyzx
mul r9.xyz, r8.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r9.xyz, r8.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r9.xyzx
mad r8.xyz, r8.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r9.xyzx
frc r8.xyz, r8.xyzx
add r8.xyz, r8.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r8.xyzx, r8.xyzx
rsq r0.y, r0.y
mul r8.xyz, r0.yyyy, r8.xyzx
dp3 r3.z, r7.xyzx, r8.xyzx
dp3 r7.z, r7.xyzx, r7.xyzx
add r8.xyz, r1.xywx, r6.xyzx
add r1.xyw, r1.xyxw, l(1.000000, 1.000000, 0.000000, 1.000000)
mul r1.xyw, r1.xyxw, l(0.23493849, 0.23493849, 0.000000, 0.23493849)
frc r1.xyw, r1.xyxw
mul r1.xyw, r1.xyxw, r1.xyxw
add r6.xyz, r5.xyzx, -r6.yzxy
add r6.xyz, r6.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
mul r8.xyz, r8.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r8.xyz, r8.xyzx
mul r8.xyz, r8.xyzx, r8.xyzx
mul r9.xyz, r8.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r9.xyz, r8.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r9.xyzx
mad r8.xyz, r8.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r9.xyzx
frc r8.xyz, r8.xyzx
add r8.xyz, r8.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.y, r8.xyzx, r8.xyzx
rsq r0.y, r0.y
mul r8.xyz, r0.yyyy, r8.xyzx
dp3 r3.y, r6.xyzx, r8.xyzx
dp3 r7.y, r6.xyzx, r6.xyzx
mul r6.xyz, r1.wxyw, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r6.xyz, r1.ywxy, l(23.940153, 46.255398, 37.459515, 0.000000), r6.xyzx
mad r1.xyw, r1.xyxw, l(31.365934, 33.597462, 0.000000, 29.645882), r6.xyxz
frc r1.xyw, r1.xyxw
add r1.xyw, r1.xyxw, l(-0.500000, -0.500000, 0.000000, -0.500000)
dp3 r0.y, r1.xywx, r1.xywx
rsq r0.y, r0.y
mul r1.xyw, r0.yyyy, r1.xyxw
add r6.xyz, r5.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r7.x, r5.xyzx, r5.xyzx
dp3 r3.w, r6.xyzx, r1.xywx
dp3 r7.w, r6.xyzx, r6.xyzx
add r5.xyzw, -r7.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
max r5.xyzw, r5.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r5.xyzw, r5.xyzw, r5.xyzw
mul r5.xyzw, r5.xyzw, r5.xyzw
dp4 r0.y, r5.xyzw, r3.xyzw
mul r2.z, r0.y, l(32.000000)
add r4.yz, r0.xxzx, r2.yyzy
mad r4.x, -r1.z, l(1000.000000), r4.y
add r0.x, r4.z, r4.x
add r0.x, r4.w, r0.x
mad r0.xyz, r0.xxxx, l(0.33333334, 0.33333334, 0.33333334, 0.000000), r4.wxzw
round_ni r0.xyz, r0.xyzx
mul r1.xyz, r0.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r1.xyz, r1.xyzx
mul r1.xyz, r1.xyzx, r1.xyzx
mul r2.xyz, r1.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r2.xyz, r1.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r2.xyzx
mad r1.xyz, r1.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r2.xyzx
frc r1.xyz, r1.xyzx
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
add r0.w, r0.z, r0.y
add r0.w, r0.x, r0.w
mad r2.xyz, -r0.wwww, l(0.16666667, 0.16666667, 0.16666667, 0.000000), r0.yzxy
add r2.xyz, -r2.xyzx, r4.xzwx
dp3 r1.x, r2.xyzx, r1.xyzx
ge r3.xyz, r2.yzxy, r2.zxyz
and r4.xyz, r3.yzxy, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
movc r3.xyz, r3.xyzx, l(-1.000000,-1.000000,-1.000000,0), l(-0.000000,-0.000000,-0.000000,0)
add r3.xyz, r3.xyzx, r4.xyzx
min r4.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
max r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
add r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r5.xyz, r0.xyzx, r4.xyzx
add r4.xyz, r2.xyzx, -r4.yzxy
add r4.xyz, r4.xyzx, l(0.33333334, 0.33333334, 0.33333334, 0.000000)
mul r5.xyz, r5.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r5.xyz, r5.xyzx
mul r5.xyz, r5.xyzx, r5.xyzx
mul r6.xyz, r5.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r6.xyz, r5.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r6.xyzx
mad r5.xyz, r5.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r6.xyzx
frc r5.xyz, r5.xyzx
add r5.xyz, r5.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.w, r5.xyzx, r5.xyzx
rsq r0.w, r0.w
mul r5.xyz, r0.wwww, r5.xyzx
dp3 r1.z, r4.xyzx, r5.xyzx
dp3 r4.z, r4.xyzx, r4.xyzx
add r5.xyz, r0.xyzx, r3.xyzx
add r0.xyz, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r0.xyz, r0.xyzx
mul r0.xyz, r0.xyzx, r0.xyzx
add r3.xyz, r2.xyzx, -r3.yzxy
add r3.xyz, r3.xyzx, l(0.16666667, 0.16666667, 0.16666667, 0.000000)
mul r5.xyz, r5.xyzx, l(0.23493849, 0.23493849, 0.23493849, 0.000000)
frc r5.xyz, r5.xyzx
mul r5.xyz, r5.xyzx, r5.xyzx
mul r6.xyz, r5.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r6.xyz, r5.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r6.xyzx
mad r5.xyz, r5.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r6.xyzx
frc r5.xyz, r5.xyzx
add r5.xyz, r5.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.w, r5.xyzx, r5.xyzx
rsq r0.w, r0.w
mul r5.xyz, r0.wwww, r5.xyzx
dp3 r1.y, r3.xyzx, r5.xyzx
dp3 r4.y, r3.xyzx, r3.xyzx
mul r3.xyz, r0.zxyz, l(41.813038, 25.957844, 35.528923, 0.000000)
mad r3.xyz, r0.yzxy, l(23.940153, 46.255398, 37.459515, 0.000000), r3.xyzx
mad r0.xyz, r0.xyzx, l(31.365934, 33.597462, 29.645882, 0.000000), r3.xyzx
frc r0.xyz, r0.xyzx
add r0.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
add r3.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.500000, 0.000000)
dp3 r4.x, r2.xyzx, r2.xyzx
dp3 r1.w, r3.xyzx, r0.xyzx
dp3 r4.w, r3.xyzx, r3.xyzx
add r0.xyzw, -r4.xyzw, l(0.600000, 0.600000, 0.600000, 0.600000)
max r0.xyzw, r0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r0.xyzw, r0.xyzw, r0.xyzw
mul r0.xyzw, r0.xyzw, r0.xyzw
dp4 r0.x, r0.xyzw, r1.xyzw
mul r0.x, r0.x, l(32.000000)
ge r0.y, v2.y, -v2.y
frc r0.z, |v2.y|
movc r0.y, r0.y, r0.z, -r0.z
mul r0.x, r0.x, |r0.y|
mul o0.w, r0.x, v1.w
mov o0.xyz, v1.xyzx
ret 
// Approximately 428 instruction slots used
