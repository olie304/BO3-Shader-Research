//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:48 2021
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
//   float3 specColorTint;              // Offset:  160 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  172 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  176 Size:     8 [unused]
//   float scriptFaker;                 // Offset:  184 Size:     4 [unused]
//   float EdgeAmount;                  // Offset:  188 Size:     4
//   float EdgeHarshness;               // Offset:  192 Size:     4
//   float PulseWidth;                  // Offset:  196 Size:     4
//   float3 SceneTint;                  // Offset:  208 Size:    12
//   float DistortionOdd;               // Offset:  220 Size:     4
//   float DistortionEven;              // Offset:  224 Size:     4
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64
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
// Resource bind info for shaderConstantSetBuffer
// {
//
//   struct GpuShaderConstantSet
//   {
//       
//       float4 scriptVector0;          // Offset:    0
//       float4 scriptVector1;          // Offset:   16
//       float4 scriptVector2;          // Offset:   32
//       float4 scriptVector3;          // Offset:   48
//       float4 scriptVector4;          // Offset:   64
//       float4 scriptVector5;          // Offset:   80
//       float4 scriptVector6;          // Offset:   96
//       float4 scriptVector7;          // Offset:  112
//       float4 weaponParam0;           // Offset:  128
//       float4 weaponParam1;           // Offset:  144
//       float4 weaponParam2;           // Offset:  160
//       float4 weaponParam3;           // Offset:  176
//       float4 weaponParam4;           // Offset:  192
//       float4 weaponParam5;           // Offset:  208
//       float4 weaponParam6;           // Offset:  224
//       float4 weaponParam7;           // Offset:  240
//       float4 characterParam0;        // Offset:  256
//       float4 characterParam1;        // Offset:  272
//       float4 characterParam2;        // Offset:  288
//       float4 characterParam3;        // Offset:  304
//       float4 characterParam4;        // Offset:  320
//       float4 characterParam5;        // Offset:  336
//       float4 characterParam6;        // Offset:  352
//       float4 characterParam7;        // Offset:  368
//
//   } $Element;                        // Offset:    0 Size:   384
//
// }
//
// Resource bind info for modelInstanceBuffer
// {
//
//   struct ModelInstanceData
//   {
//       
//       uint boneArrayIndex;           // Offset:    0
//       uint shaderConstantSet;        // Offset:    4
//       uint flagsAndPrevFrameIndex;   // Offset:    8
//       uint worldMatrix;              // Offset:   12
//       uint siegeAnimStateOffset;     // Offset:   16
//       uint prevFrameSiegeAnimStateOffset;// Offset:   20
//
//   } $Element;                        // Offset:    0 Size:    24
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// trilinearSampler                  sampler      NA          NA             s1      1 
// mirrorSampler                     sampler      NA          NA             s3      1 
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// colorMap                          texture  float4          2d            t21      1 
// resolvedPostSun                   texture  float4          2d            t22      1 
// revealTexture                     texture  float4          2d            t24      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                 1   xyz         1     NONE   float   xyz 
// TEXCOORD                 2   xyz         2     NONE   float   xyz 
// TEXCOORD                 3   x           3     NONE    uint   x   
// SV_POSITION              0   xyzw        4      POS   float   xy w
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
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s3, mode_default
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps constant v3.x
dcl_input_ps_siv linear noperspective v4.xyw, position
dcl_output o0.xyzw
dcl_temps 7
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
add_sat r0.y, r0.x, r0.x
add r0.x, r0.x, l(-0.500000)
add_sat r0.x, r0.x, r0.x
deriv_rtx_coarse r1.xyz, v0.zxyz
deriv_rty_coarse r2.xyz, v0.yzxy
mul r3.xyz, r1.xyzx, r2.xyzx
mad r1.xyz, r1.zxyz, r2.yzxy, -r3.xyzx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
max r0.z, |r1.y|, |r1.x|
max r0.z, |r1.z|, r0.z
eq r0.zw, |r1.yyyz|, r0.zzzz
movc r1.xy, r0.zzzz, v0.xzxx, v0.yzyy
movc r0.zw, r0.wwww, v0.xxxy, r1.xxxy
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.zwzz, t21.xyzw, s1
add r1.w, r0.x, r0.y
add r1.w, r1.w, l(1.000000)
add r2.x, -r1.w, l(1.000000)
mul r3.xyz, r2.xxxx, l(0.212600, 0.715200, 0.072200, 0.000000)
mad r2.xyz, r2.xxxx, l(0.212600, 0.715200, 0.072200, 0.000000), r1.wwww
mov r3.w, r2.x
dp3_sat r4.x, r1.yzxy, r3.yzwy
mov r5.xz, r3.xxzx
mov r5.y, r2.y
dp3_sat r4.y, r1.xyzx, r5.xyzx
mov r2.xy, r3.xyxx
dp3_sat r4.z, r1.xyzx, r2.xyzx
eq r1.x, r0.x, l(0.000000)
if_nz r1.x
  sample_indexable(texture2d)(float,float,float,float) r0.z, r0.zwzz, t24.yzxw, s1
  add r0.z, -r0.y, r0.z
  mul_sat r0.z, r0.z, l(17.000000)
  ftoi r1.xy, v4.xyxx
  mov r1.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t22.xyzw
  dp3 r0.w, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  add r2.xyz, -r1.xyzx, r0.wwww
  mad r1.xyz, r0.yyyy, r2.xyzx, r1.xyzx
  add r1.xyz, -r4.xyzx, r1.xyzx
  mad r0.yzw, r0.zzzz, r1.xxyz, r4.xxyz
else 
  dp3 r1.x, v1.xyzx, v1.xyzx
  rsq r1.x, r1.x
  mul r1.xyz, r1.xxxx, v1.xyzx
  dp3 r1.w, v2.xyzx, v2.xyzx
  rsq r1.w, r1.w
  mul r2.xyz, r1.wwww, v2.xyzx
  ftoi r3.xy, v4.xyxx
  dp3 r1.w, r2.xyzx, r1.xyzx
  add r1.w, r1.w, r1.w
  mad r5.xyz, r1.xyzx, -r1.wwww, r2.xyzx
  and r3.xy, r3.xyxx, l(1, 1, 0, 0)
  ieq r1.w, r3.y, r3.x
  movc r2.w, r1.w, cb0[13].w, cb0[14].x
  movc r3.xy, r1.wwww, l(1.750000,-13.500000,0,0), l(-2.500000,8.250000,0,0)
  mad r5.xyz, r5.xyzx, r2.wwww, v2.xyzx
  mul r6.xyz, r5.yyyy, cb1[9].xywx
  mad r5.xyw, r5.xxxx, cb1[8].xyxw, r6.xyxz
  mad r5.xyz, r5.zzzz, cb1[10].xywx, r5.xywx
  add r5.xyz, r5.xyzx, cb1[11].xywx
  rcp r1.w, r5.z
  mul r3.zw, r1.wwww, r5.xxxy
  mul r5.x, r3.z, l(0.500000)
  mad r5.yw, r3.zzzw, l(0.000000, 0.500000, 0.000000, -0.500000), l(0.000000, 0.500000, 0.000000, 0.500000)
  mul r3.xy, r3.xyxx, cb1[44].wwww
  mad r5.z, r3.w, l(-0.500000), l(0.500000)
  mov r3.z, l(0.500000)
  add r3.xyzw, r3.zxzy, r5.xzxz
  sample_l_indexable(texture2d)(float,float,float,float) r6.x, r3.xyxx, t22.xyzw, s3, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.y, r5.ywyy, t22.xyzw, s3, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.z, r3.zwzz, t22.xyzw, s3, l(0.000000)
  dp3_sat r1.x, r1.xyzx, -r2.xyzx
  add r1.x, -r1.x, l(1.000000)
  log r1.x, r1.x
  mul r1.x, r1.x, cb0[12].x
  exp r1.x, r1.x
  add r1.y, v4.w, v4.w
  mad r1.y, cb1[69].w, l(-1.200000), r1.y
  sincos r1.y, null, r1.y
  max r1.y, r1.y, l(0.000000)
  eq r1.z, cb0[12].y, l(0.000000)
  mul r1.w, cb0[12].y, l(0.500000)
  div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
  mul_sat r2.x, r1.w, r1.y
  mad r2.y, r2.x, l(-2.000000), l(3.000000)
  mul r2.x, r2.x, r2.x
  mul r2.x, r2.x, r2.y
  mad r1.y, -cb0[12].y, l(0.500000), r1.y
  mul_sat r1.y, r1.w, r1.y
  mad r1.w, r1.y, l(-2.000000), l(3.000000)
  mul r1.y, r1.y, r1.y
  mad r1.y, -r1.w, r1.y, l(1.000000)
  mul r1.y, r1.y, r2.x
  movc r1.y, r1.z, l(0), r1.y
  add_sat r1.x, r1.y, r1.x
  mad r1.yzw, cb0[13].xxyz, cb0[11].wwww, l(0.000000, -1.000000, -1.000000, -1.000000)
  mad r1.xyz, r1.xxxx, r1.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  mad r1.xyz, r6.xyzx, r1.xyzx, -r4.xyzx
  mad r0.yzw, r0.xxxx, r1.xxyz, r4.xxyz
endif 
mov o0.xyz, r0.yzwy
mov o0.w, l(1.000000)
ret 
// Approximately 106 instruction slots used
