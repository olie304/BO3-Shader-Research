//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:41 2021
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
//   float4 hdrControl0;                // Offset:  416 Size:    16
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
//   float4 gameTime;                   // Offset: 1104 Size:    16 [unused]
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
// samp0                             sampler      NA          NA             s0      1 
// tileMipBilinearSampler            sampler      NA          NA             s1      1 
// colorMapSampler                   texture  float4          2d             t0      1 
// colorMapSampler1                  texture  float4          2d             t6      1 
// colorMapSampler2                  texture  float4          2d             t7      1 
// colorMapSampler3                  texture  float4          2d             t9      1 
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
dcl_constantbuffer CB3[1], immediateIndexed
dcl_constantbuffer CB1[27], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t0.wxyz, s1
mad r0.x, r0.x, l(2.000000), l(-1.000000)
deriv_rtx_coarse r1.x, r0.x
deriv_rty_coarse r1.y, r0.x
dp2 r0.y, r1.xyxx, r1.xyxx
sqrt r0.y, r0.y
add r0.z, r0.y, l(-0.100000)
add r0.w, -r0.y, l(-0.100000)
add r0.z, -r0.w, r0.z
add r0.w, -r0.w, r0.x
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
mul_sat r0.z, r0.z, r0.w
mad r0.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
add r0.w, -r0.y, r0.x
add r0.x, r0.y, r0.x
mul r1.x, r0.y, l(-2.000000)
add r0.y, r0.y, r0.y
div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
mul_sat r0.x, r0.y, r0.x
div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
mul_sat r0.y, r0.y, r0.w
mad r0.w, r0.y, l(-2.000000), l(3.000000)
mul r0.y, r0.y, r0.y
mul r0.y, r0.y, r0.w
mul r0.y, r0.y, r0.z
mul r0.y, r0.y, l(0.500000)
mad r0.z, r0.x, l(-2.000000), l(3.000000)
mul r0.x, r0.x, r0.x
mul r0.x, r0.x, r0.z
mad r1.xyzw, v2.xyxy, l(32.000000, 32.000000, 16.000000, 16.000000), l(-0.500000, -0.500000, 0.015625, 0.015625)
sample_indexable(texture2d)(float,float,float,float) r0.zw, r1.zwzz, t6.zwxy, s1
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t7.xyzw, s1
mul r1.x, r0.x, r1.x
mul r0.w, r0.w, l(0.500000)
round_ni r0.z, r0.z
add r0.z, r0.z, l(1.000000)
mul r1.y, r0.w, r0.x
max r0.w, r0.w, r0.y
max r0.y, r0.y, r1.y
mad r0.x, -r0.w, l(0.800000), r0.x
mul r0.w, r1.x, l(0.500000)
max r0.y, r0.w, r0.y
mad r0.y, -r1.x, l(0.500000), r0.y
mul r1.xy, v2.xyxx, l(16.000000, 16.000000, 0.000000, 0.000000)
round_ni r1.xy, r1.xyxx
mad r2.yz, r1.xxyx, l(0.000000, 0.00781250, 0.00781250, 0.000000), l(0.000000, 0.00195313, 0.00195313, 0.000000)
mul r2.w, r1.y, l(0.00781250)
mul r2.x, r0.z, r2.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r2.xzxx, t9.yzxw, s0
add r1.xy, r2.xwxx, l(0.500000, 0.50195313, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t9.xyzw, s1
sqrt r1.x, r1.x
mul_sat r1.y, cb3[0].x, l(1.33333337)
mad r1.y, r1.y, l(1.00784326), -r0.z
mul_sat r1.y, r1.y, l(127.499992)
mad r1.z, r1.y, l(-2.000000), l(3.000000)
mul r1.y, r1.y, r1.y
mul r1.y, r1.y, r1.z
mad r0.y, r1.y, r0.y, r0.w
add r0.w, -r0.z, l(1.000000)
mad r0.z, r0.w, r1.x, r0.z
add r0.w, cb3[0].x, l(-0.250000)
mul_sat r0.w, r0.w, l(1.33333337)
mad r0.w, r0.w, l(1.15392160), l(-0.00392157)
add r0.xz, -r0.yyzy, r0.xxwx
add r0.z, r0.z, l(0.00392157)
mul_sat r0.z, r0.z, l(6.496815)
mad r0.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, r0.w
mad_sat r0.w, r0.z, r0.x, r0.y
mov r0.xyz, l(1.000000,1.000000,1.000000,0)
mul r0.xyzw, r0.xyzw, v1.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.x, v2.xyxx, t9.yxzw, s1
sqrt r1.x, r1.x
mul o0.w, r0.w, r1.x
mul o0.xyz, r0.xyzx, cb1[26].wwww
ret 
// Approximately 80 instruction slots used
