//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:50 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4
//   float alphaRevealRamp;             // Offset:  164 Size:     4
//   float2 revealScale;                // Offset:  168 Size:     8
//   float baseNormalHeight;            // Offset:  176 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  180 Size:     8
//   float2 normalMapScale;             // Offset:  192 Size:     8
//   float4 flowParams;                 // Offset:  208 Size:    16
//   float4 noiseParams;                // Offset:  224 Size:    16
//   bool useOrientedNormalMap;         // Offset:  240 Size:     4
//   float3 colorTint;                  // Offset:  244 Size:    12
//   bool scaleReveal;                  // Offset:  256 Size:     4
//   float2 normalsFlowScaleMin;        // Offset:  260 Size:     8
//   float3 normalAdjustAndGloss;       // Offset:  272 Size:    12
//   bool scaleNormalsWithFlow;         // Offset:  284 Size:     4
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
// revealSampler                     sampler      NA          NA             s1      1 
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// flowSampler                       sampler      NA          NA             s4      1 
// noiseSampler                      sampler      NA          NA             s5      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// flowMap                           texture  float4          2d            t10      1 
// noiseMap                          texture  float4          2d            t11      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
// TEXCOORD                 2   xyz         3     NONE   float   xyz 
// TEXCOORD                 3   xyz         4     NONE   float   xyz 
// SV_IsFrontFace           0   x           5    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[18], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 10
mul r0.xy, v1.yzyy, cb0[12].xyxx
movc r0.zw, cb0[16].xxxx, r0.xxxy, v1.yyyz
mul r0.zw, r0.zzzw, cb0[10].zzzw
sample_indexable(texture2d)(float,float,float,float) r0.z, r0.zwzz, t6.yzxw, s1
mad_sat r0.w, v1.x, l(0.998000), l(0.001000)
add r1.x, -r0.w, l(1.000000)
mov_sat r1.y, cb0[10].y
log r0.w, r0.w
mul r0.w, r0.w, r1.y
exp r0.w, r0.w
mov r2.x, -r0.w
log r0.w, r1.x
mul r0.w, r0.w, r1.y
exp r2.y, r0.w
mad_sat r1.xy, cb0[10].xxxx, r2.xyxx, r1.xxxx
add r0.z, r0.z, -r1.x
add r0.w, -r1.x, r1.y
div_sat r0.z, r0.z, r0.w
add r1.xyz, cb0[15].yzwy, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad o0.xyz, r0.zzzz, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t9.yzwx, s2
add r1.x, -cb0[11].y, cb0[11].z
mad r0.w, r0.w, r1.x, cb0[11].y
mul_sat r0.w, r0.w, l(0.05882353)
movc r1.x, v5.x, l(1.000000), l(-1.000000)
dp3 r1.y, v2.xyzx, v2.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, v2.xxyz
dp3 r2.x, v3.xyzx, v3.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, v3.xyzx
mul r2.xyz, r1.xxxx, r2.xyzx
dp3 r2.w, v4.xyzx, v4.xyzx
rsq r2.w, r2.w
mul r3.xyz, r2.wwww, v4.xyzx
mul r3.xyz, r1.xxxx, r3.xyzx
mul r4.xy, cb0[14].xyxx, cb1[69].wwww
mad r4.xy, v1.yzyy, cb0[14].zzzz, r4.xyxx
sample_indexable(texture2d)(float,float,float,float) r4.xy, r4.xyxx, t11.xyzw, s5
mul r4.xy, r4.xyxx, cb0[14].wwww
mad r4.xy, v1.yzyy, cb0[13].xxxx, r4.xyxx
frc r4.zw, r4.xxxy
mad r5.xy, r4.zwzz, l(-2.000000, -2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
mul r4.zw, r4.zzzw, r4.zzzw
mul r5.zw, r4.zzzw, r5.xxxy
resinfo_indexable(texture2d)(float,float,float,float) r6.xy, l(0), t7.xyzw
mul r6.xy, r0.xyxx, r6.xyxx
deriv_rtx_coarse r6.zw, r6.xxxy
deriv_rty_coarse r6.xy, r6.xyxx
dp2 r2.w, r6.zwzz, r6.zwzz
dp2 r3.w, r6.xyxx, r6.xyxx
max r2.w, r2.w, r3.w
log r2.w, r2.w
mul r2.w, r2.w, l(0.500000)
round_ni r6.xy, r4.xyxx
div r6.xy, r6.xyxx, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r6.xy, r6.xyxx, t10.xyzw, s4
add r6.xy, r6.xyxx, r6.xyxx
add r7.xyzw, r4.xyxy, l(1.000000, 0.000000, 0.000000, 1.000000)
round_ni r7.xyzw, r7.xyzw
div r7.xyzw, r7.xyzw, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r6.zw, r7.xyxx, t10.zwxy, s4
add r6.zw, r6.zzzw, r6.zzzw
sample_indexable(texture2d)(float,float,float,float) r7.xy, r7.zwzz, t10.xyzw, s4
add r7.xy, r7.xyxx, r7.xyxx
add r4.xy, r4.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
round_ni r4.xy, r4.xyxx
div r4.xy, r4.xyxx, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r4.xy, r4.xyxx, t10.xyzw, s4
add r4.xy, r4.xyxx, r4.xyxx
if_nz cb0[17].w
  sample_indexable(texture2d)(float,float,float,float) r7.zw, v1.yzyy, t10.zwxy, s4
  add r8.xy, r7.zwzz, r7.zwzz
  mad r8.zw, r8.xxxy, l(0.000000, 0.000000, -1.000000, 1.000000), l(0.000000, 0.000000, 1.000000, -1.000000)
  mad r7.zw, r8.xxxw, l(0.000000, 0.000000, -1.000000, 1.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp2 r3.w, r8.zwzz, r7.zwzz
  sqrt r3.w, r3.w
  mad r3.w, r3.w, cb0[16].z, cb0[16].y
  mul r7.zw, r3.wwww, cb0[17].xxxy
else 
  mov r7.zw, cb0[17].xxxy
endif 
mad r4.zw, -r5.xxxy, r4.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
mul r4.zw, r4.zzzw, r4.zzzw
mad r4.zw, r5.zzzw, r5.zzzw, r4.zzzw
rsq r4.zw, r4.zzzw
if_z cb0[15].x
  mul r3.w, cb0[13].y, cb1[69].w
  mad r5.xy, r6.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r5.xy, r5.xyxx, r3.wwww, r0.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.xy, r5.xyxx, t7.xyzw, s3, r2.w
  mad r8.xy, r6.zwzz, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r8.xy, r8.xyxx, r3.wwww, r0.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r8.xy, r8.xyxx, t7.xyzw, s3, r2.w
  add r8.xy, -r5.xyxx, r8.xyxx
  mad r5.xy, r5.zzzz, r8.xyxx, r5.xyxx
  mad r8.xy, r7.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r8.xy, r8.xyxx, r3.wwww, r0.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r8.xy, r8.xyxx, t7.xyzw, s3, r2.w
  mad r8.zw, r4.xxxy, l(0.000000, 0.000000, -1.000000, 1.000000), l(0.000000, 0.000000, 1.000000, -1.000000)
  mad r0.xy, r8.zwzz, r3.wwww, r0.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyxx, t7.xyzw, s3, r2.w
  add r0.xy, -r8.xyxx, r0.xyxx
  mad r0.xy, r5.zzzz, r0.xyxx, r8.xyxx
  add r0.xy, -r5.xyxx, r0.xyxx
  mad r0.xy, r5.wwww, r0.xyxx, r5.xyxx
  mad r0.xy, r0.xyxx, r7.zzzz, r7.wwww
else 
  mad r5.xy, r6.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r3.w, r5.xyxx, r5.xyxx
  sqrt r3.w, r3.w
  max r3.w, r3.w, l(0.000010)
  div r8.xy, r5.xyxx, r3.wwww
  mov r8.z, -r8.x
  dp2 r5.x, v1.yzyy, r8.yzyy
  dp2 r5.y, v1.yzyy, -r8.xyxx
  mul r9.xy, r5.xyxx, cb0[12].xyxx
  mul r3.w, r3.w, cb1[69].w
  mad r9.z, -r3.w, cb0[13].y, r9.y
  sample_l_indexable(texture2d)(float,float,float,float) r5.xy, r9.xzxx, t7.xyzw, s3, r2.w
  mad r5.xy, r5.xyxx, r7.zzzz, r7.wwww
  dp2 r6.x, r5.xyxx, r8.yzyy
  dp2 r6.y, r5.xyxx, -r8.xyxx
  mad r5.xy, r6.zwzz, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r3.w, r5.xyxx, r5.xyxx
  sqrt r3.w, r3.w
  max r3.w, r3.w, l(0.000010)
  div r8.xy, r5.xyxx, r3.wwww
  mov r8.z, -r8.x
  dp2 r5.x, v1.yzyy, r8.yzyy
  dp2 r5.y, v1.yzyy, -r8.xyxx
  mul r9.xy, r5.xyxx, cb0[12].xyxx
  mul r3.w, r3.w, cb1[69].w
  mad r9.z, -r3.w, cb0[13].y, r9.y
  sample_l_indexable(texture2d)(float,float,float,float) r5.xy, r9.xzxx, t7.xyzw, s3, r2.w
  mad r5.xy, r5.xyxx, r7.zzzz, r7.wwww
  dp2 r9.x, r5.xyxx, r8.yzyy
  dp2 r9.y, r5.xyxx, -r8.xyxx
  add r5.xy, -r6.xyxx, r9.xyxx
  mad r5.xy, r5.zzzz, r5.xyxx, r6.xyxx
  mad r6.xy, r7.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r3.w, r6.xyxx, r6.xyxx
  sqrt r3.w, r3.w
  max r3.w, r3.w, l(0.000010)
  div r6.xy, r6.xyxx, r3.wwww
  mov r6.z, -r6.x
  dp2 r7.x, v1.yzyy, r6.yzyy
  dp2 r7.y, v1.yzyy, -r6.xyxx
  mul r8.xy, r7.xyxx, cb0[12].xyxx
  mul r3.w, r3.w, cb1[69].w
  mad r8.z, -r3.w, cb0[13].y, r8.y
  sample_l_indexable(texture2d)(float,float,float,float) r7.xy, r8.xzxx, t7.xyzw, s3, r2.w
  mad r7.xy, r7.xyxx, r7.zzzz, r7.wwww
  dp2 r8.x, r7.xyxx, r6.yzyy
  dp2 r8.y, r7.xyxx, -r6.xyxx
  mad r4.xy, r4.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r3.w, r4.xyxx, r4.xyxx
  sqrt r3.w, r3.w
  max r3.w, r3.w, l(0.000010)
  div r6.xy, r4.xyxx, r3.wwww
  mov r6.z, -r6.x
  dp2 r4.x, v1.yzyy, r6.yzyy
  dp2 r4.y, v1.yzyy, -r6.xyxx
  mul r9.xy, r4.xyxx, cb0[12].xyxx
  mul r3.w, r3.w, cb1[69].w
  mad r9.z, -r3.w, cb0[13].y, r9.y
  sample_l_indexable(texture2d)(float,float,float,float) r4.xy, r9.xzxx, t7.xyzw, s3, r2.w
  mad r4.xy, r4.xyxx, r7.zzzz, r7.wwww
  dp2 r7.x, r4.xyxx, r6.yzyy
  dp2 r7.y, r4.xyxx, -r6.xyxx
  add r4.xy, -r8.xyxx, r7.xyxx
  mad r4.xy, r5.zzzz, r4.xyxx, r8.xyxx
  add r4.xy, -r5.xyxx, r4.xyxx
  mad r0.xy, r5.wwww, r4.xyxx, r5.xyxx
endif 
mul r2.w, r4.w, r4.z
mul r0.xy, r0.xyxx, r2.wwww
mul r3.xyz, r0.yyyy, r3.xyzx
mad r2.xyz, r2.xyzx, r0.xxxx, r3.xyzx
mad r1.xyz, r1.yzwy, r1.xxxx, r2.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r1.xyz, r0.xxxx, r1.xyzx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xy, r2.xyzw, t0.zwxy
lt r1.w, l(0.000000), r0.x
mad r0.y, r0.y, l(3.000000), l(0.500000)
ftou r0.y, r0.y
and r2.xyzw, r0.yyyy, l(2, 1, 2, 1)
movc r2.xyzw, r2.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.y, r2.w, r2.z
movc r2.z, r0.y, l(-0.57735026), l(0.57735026)
mul r3.xy, r2.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
mul r4.xyz, r2.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r4.x, r1.xyzx, r4.xyzx
dp2 r4.y, r1.xzxx, r3.xyxx
dp3 r0.y, r1.xyzx, r2.xyzx
add r0.y, |r0.y|, l(1.000000)
rsq r0.y, r0.y
mul r1.xy, r0.yyyy, r4.xyxx
mad r1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.x, r0.x, l(0.500000)
movc r0.x, r0.x, l(0.500000), l(0.00146628)
mad r1.z, r0.w, l(0.49755621), r0.x
and r0.xyw, r1.xyxz, r1.wwww
mul o1.xyz, r0.zzzz, r0.xywx
mov o0.w, r0.z
mov o1.w, r0.z
ret 
// Approximately 210 instruction slots used