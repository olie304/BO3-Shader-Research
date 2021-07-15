//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:12 2021
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
//   float2 rotateUVs;                  // Offset:  184 Size:     8 [unused]
//   float2 scrollUVs;                  // Offset:  192 Size:     8 [unused]
//   float2 scaleUVs;                   // Offset:  200 Size:     8 [unused]
//   float2 offsetUVs;                  // Offset:  208 Size:     8 [unused]
//   float2 zoomUVs;                    // Offset:  216 Size:     8 [unused]
//   float zoomRate;                    // Offset:  224 Size:     4 [unused]
//   float layerDepth;                  // Offset:  228 Size:     4 [unused]
//   bool clampU;                       // Offset:  232 Size:     4 [unused]
//   bool clampV;                       // Offset:  236 Size:     4 [unused]
//   float2 falloffParms;               // Offset:  240 Size:     8 [unused]
//   uint zFeatherComputeSprites;       // Offset:  248 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  252 Size:     4
//   float4 levelsControls;             // Offset:  256 Size:    16
//   bool useOldHDRScale;               // Offset:  272 Size:     4 [unused]
//   float2 scaleUVsAlpha;              // Offset:  276 Size:     8
//   float zFeatherOverride;            // Offset:  284 Size:     4 [unused]
//   float2 scaleUVsColor;              // Offset:  288 Size:     8
//   float2 offsetUVsColor;             // Offset:  296 Size:     8
//   float2 rotateUVsColor;             // Offset:  304 Size:     8
//   float2 scrollUVsColor;             // Offset:  312 Size:     8
//   float2 scaleUVsEmissive;           // Offset:  320 Size:     8 [unused]
//   float2 offsetUVsEmissive;          // Offset:  328 Size:     8 [unused]
//   float2 rotateUVsEmissive;          // Offset:  336 Size:     8 [unused]
//   float2 scrollUVsEmissive;          // Offset:  344 Size:     8 [unused]
//   float translucentShadowOpacity;    // Offset:  352 Size:     4
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
//   float4 relHDRExposure;             // Offset: 1360 Size:    16
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
// colorSampler                      sampler      NA          NA             s1      1 
// colorMap                          texture  float4          2d             t0      1 
// alphaMap                          texture  float4          2d            t21      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyz         2     NONE   float   xyz 
// TEXCOORD                 1   xyzw        3     NONE   float       
// TEXCOORD                 2   xyzw        4     NONE   float    y  
// TEXCOORD                 3   xyz         5     NONE   float       
// TEXCOORD                 4   xy          6     NONE   float       
// TEXCOORD                 5     zw        6     NONE   float       
// TEXCOORD                 6   x           7     NONE    uint       
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
dcl_constantbuffer CB0[23], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyz
dcl_input_ps constant v4.y
dcl_output o0.xyzw
dcl_temps 7
div r0.xy, v2.xyxx, v2.zzzz
deriv_rtx_coarse r0.zw, r0.xxxy
deriv_rty_coarse r1.xy, r0.xyxx
add r1.zw, r0.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
mul r2.xy, cb0[18].xyxx, cb0[18].zwzz
mad r1.zw, r1.zzzw, cb0[18].xxxy, r2.xxxy
mul r2.xy, cb0[19].zwzz, cb1[69].wwww
mad r2.z, cb0[19].y, cb1[69].w, l(1.000000)
mul r2.z, r2.z, cb0[19].x
mul r2.z, r2.z, l(0.01745329)
sincos r3.x, r4.x, r2.z
mov r4.y, r4.x
mov r4.z, r3.x
dp2 r5.x, r4.yzyy, r1.zwzz
mov r4.x, -r3.x
dp2 r5.y, r4.xyxx, r1.zwzz
mad r1.zw, r2.xxxy, cb0[18].xxxy, r5.xxxy
add r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
sample_d_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.zwzz, t0.wxyz, s1, r0.zwzz, r1.xyxx
dp3 r1.z, r2.yzwy, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.xyz, -r2.yzwy, r1.zzzz
mad r3.xyz, cb0[15].wwww, r3.xyzx, r2.yzwy
eq r4.xyzw, cb0[16].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r1.z, r4.y, r4.x
and r1.z, r4.z, r1.z
and r1.z, r4.w, r1.z
max r1.w, r2.x, l(0.000100)
div_sat r4.xyz, r3.xyzx, r1.wwww
add_sat r4.xyz, r4.xyzx, -cb0[16].xxxx
add r2.zw, -cb0[16].xxxz, cb0[16].yyyw
max r1.w, r2.z, l(0.000100)
div r4.xyz, r4.xyzx, r1.wwww
min r4.xyz, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r4.xyz, r4.xyzx, r2.wwww, cb0[16].zzzz
ge r5.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r4.xyzx
mul r6.xyz, r4.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
add r4.xyz, r4.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r4.xyz, |r4.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r4.xyz, r4.xyzx
mul r4.xyz, r4.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r4.xyz, r4.xyzx
movc r4.xyz, r5.xyzx, r6.xyzx, r4.xyzx
mul r4.xyz, r2.xxxx, r4.xyzx
movc r3.xyz, r1.zzzz, r3.xyzx, r4.xyzx
ne r1.z, v4.y, l(1.000000)
add r1.w, r2.x, v1.w
mad_sat r4.x, r1.w, v4.y, -v4.y
mov r4.y, l(1.000000)
mov r2.y, v1.w
movc r1.zw, r1.zzzz, r4.xxxy, r2.xxxy
mul r3.w, r1.w, r1.z
mul r0.xy, r0.xyxx, cb0[17].yzyy
sample_d_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t21.xyzw, s1, r0.zwzz, r1.xyxx
mul r0.xyzw, r0.xxxx, r3.xyzw
mul r0.w, r0.w, cb0[22].x
lt r1.x, r0.w, l(0.250000)
discard_nz r1.x
mul r0.xyz, r0.xyzx, v1.xyzx
mul r0.xyz, r0.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min o0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
mov o0.w, r0.w
ret 
// Approximately 64 instruction slots used
