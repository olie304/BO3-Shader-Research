//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:26 2021
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
//   float warpPixels;                  // Offset:  168 Size:     4
//   float blurPixels;                  // Offset:  172 Size:     4
//   float aberrationPixels;            // Offset:  176 Size:     4
//   float abberationMaskRotation;      // Offset:  180 Size:     4
//   float3 aberrationFactors;          // Offset:  192 Size:    12
//   float2 twinkleScroll1;             // Offset:  208 Size:     8
//   float2 twinkleScroll2;             // Offset:  216 Size:     8
//   float2 twinkleScale;               // Offset:  224 Size:     8
//   float2 wormyScroll;                // Offset:  232 Size:     8
//   float highlightFalloff;            // Offset:  240 Size:     4
//   float highlightBrightness;         // Offset:  244 Size:     4
//   bool useAlphaBlend;                // Offset:  248 Size:     4 [unused]
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
//   float4 renderTargetSize;           // Offset:  704 Size:    16
//   float4 upscaledTargetSize;         // Offset:  720 Size:    16 [unused]
//   float4 materialColor;              // Offset:  736 Size:    16 [unused]
//   float4 cameraUp;                   // Offset:  752 Size:    16 [unused]
//   float4 cameraLook;                 // Offset:  768 Size:    16
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
// bilinearClampler                  sampler      NA          NA             s1      1 
// bilinearSampler                   sampler      NA          NA             s2      1 
// frameBuffer                       texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// aberrationMask                    texture  float4          2d             t9      1 
// twinkleMap                        texture  float4          2d            t10      1 
// wormMap                           texture  float4          2d            t11      1 
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
dcl_constantbuffer CB0[16], immediateIndexed
dcl_constantbuffer CB3[2], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t7.xyzw, s1
mov_sat r1.xy, cb3[0].zyzz
mul r0.w, r0.w, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.xyxx, t6.xyzw, s1
add r1.x, -r1.x, l(1.000000)
min r1.z, |cb3[0].x|, l(1.000000)
mul r1.zw, r1.zzzz, cb0[10].zzzw
mul r1.z, r1.z, cb1[44].z
mad r2.xy, v1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
lt r2.z, l(0.000000), cb3[0].x
mad r2.w, r1.x, r1.z, l(1.000000)
mul r3.xy, r2.wwww, r2.xyxx
mad r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.x, -r1.x, r1.z, l(1.000000)
mul r1.xz, r1.xxxx, r2.xxyx
mad r1.xz, r1.xxzx, l(0.500000, 0.000000, 0.500000, 0.000000), l(0.500000, 0.000000, 0.500000, 0.000000)
movc r1.xz, r2.zzzz, r3.xxyx, r1.xxzx
mad r2.z, cb0[11].y, cb1[69].w, l(1.000000)
mul r2.z, r2.z, l(0.01745329)
sincos r3.x, r4.x, r2.z
mov r4.y, r4.x
mov r4.z, r3.x
dp2 r5.x, r4.yzyy, r2.xyxx
mov r4.x, -r3.x
dp2 r5.y, r4.xyxx, r2.xyxx
mad r2.zw, r5.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
sample_indexable(texture2d)(float,float,float,float) r2.z, r2.zwzz, t9.yzxw, s1
mul r1.w, r1.w, r2.z
mul r1.w, r1.w, cb1[44].z
dp2 r2.w, r2.xyxx, r2.xyxx
rsq r2.w, r2.w
mul r2.xy, r2.wwww, r2.xyxx
mul r1.y, r1.y, r2.z
mul r1.y, r1.y, cb0[11].x
mul r2.w, cb1[69].w, l(0.170000)
sincos r2.w, null, r2.w
mad r2.w, r2.w, l(2.000000), l(-1.000000)
mul r1.y, r1.y, r2.w
mul r3.xy, r1.yyyy, cb1[44].zwzz
mad r4.xyzw, r3.xyxy, cb0[12].xxyy, r1.xzxz
mul r1.yw, r1.wwww, r2.xxxy
mul r1.yw, r1.yyyw, l(0.000000, 0.125000, 0.000000, 0.125000)
mov r5.x, l(0)
mov r2.x, l(0)
loop 
  ige r2.y, r2.x, l(8)
  breakc_nz r2.y
  itof r2.y, r2.x
  mad_sat r2.yw, r1.yyyw, r2.yyyy, r4.xxxy
  sample_indexable(texture2d)(float,float,float,float) r2.y, r2.ywyy, t0.yxzw, s1
  add r5.x, r2.y, r5.x
  iadd r2.x, r2.x, l(1)
endloop 
mov r5.y, l(0)
mov r2.x, l(0)
loop 
  ige r2.y, r2.x, l(8)
  breakc_nz r2.y
  itof r2.y, r2.x
  mad_sat r2.yw, r1.yyyw, r2.yyyy, r4.zzzw
  sample_indexable(texture2d)(float,float,float,float) r2.y, r2.ywyy, t0.xyzw, s1
  add r5.y, r2.y, r5.y
  iadd r2.x, r2.x, l(1)
endloop 
mad r1.xz, r3.xxyx, cb0[12].zzzz, r1.xxzx
mov r5.z, l(0)
mov r2.x, l(0)
loop 
  ige r2.y, r2.x, l(8)
  breakc_nz r2.y
  itof r2.y, r2.x
  mad_sat r2.yw, r1.yyyw, r2.yyyy, r1.xxxz
  sample_indexable(texture2d)(float,float,float,float) r2.y, r2.ywyy, t0.xzyw, s1
  add r5.z, r2.y, r5.z
  iadd r2.x, r2.x, l(1)
endloop 
mul r1.xy, cb3[1].yxyy, l(0.01745329, 0.01745329, 0.000000, 0.000000)
sincos r1.xy, r2.xy, r1.xyxx
mul r3.x, r2.y, r2.x
mul r3.y, r1.x, r2.y
mov r3.z, r1.y
dp3_sat r1.x, cb1[48].xyzx, r3.xyzx
log r1.x, r1.x
mul r1.x, r1.x, cb0[15].x
exp r1.x, r1.x
mul r1.x, r1.x, cb0[15].y
mul r3.xyzw, cb0[13].xyzw, cb1[69].wwww
mad r3.xyzw, v1.xyxy, cb0[14].xyxy, r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t10.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.zwzz, t10.xyzw, s2
add r6.xyzw, -r4.xyzw, r3.xyzw
mad r3.xyzw, r3.wwww, r6.xyzw, r4.xyzw
mad r1.yz, cb1[69].wwww, cb0[14].zzwz, v1.xxyx
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.yzyy, t11.xyzw, s2
mul r1.y, r2.z, r3.w
mul r1.z, r2.z, r4.w
mul r2.xyz, r1.yyyy, r3.xyzx
mul r1.yzw, r1.zzzz, r4.xxyz
mul r3.xyz, r5.xyzx, l(0.00000381, 0.00000381, 0.00000381, 0.000000)
mad r0.xyz, -r5.xyzx, l(0.00000381, 0.00000381, 0.00000381, 0.000000), r0.xyzx
mad r0.xyz, r0.wwww, r0.xyzx, r3.xyzx
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
mad r0.xyz, r1.yzwy, r1.xxxx, r0.xyzx
mul o0.xyz, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
mov o0.w, l(1.000000)
ret 
// Approximately 106 instruction slots used