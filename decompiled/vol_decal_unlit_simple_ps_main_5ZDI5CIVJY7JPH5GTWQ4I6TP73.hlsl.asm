//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:58 2021
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
//   float2 rotateUVs;                  // Offset:  160 Size:     8
//   float2 scrollUVs;                  // Offset:  168 Size:     8
//   float2 scaleUVs;                   // Offset:  176 Size:     8
//   float2 offsetUVs;                  // Offset:  184 Size:     8
//   float2 zoomUVs;                    // Offset:  192 Size:     8
//   float zoomRate;                    // Offset:  200 Size:     4
//   float layerDepth;                  // Offset:  204 Size:     4
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64 [unused]
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64
//   row_major float4x4 inverseViewProjectionMatrix;// Offset:  320 Size:    64 [unused]
//   float4 eyeOffset;                  // Offset:  384 Size:    16
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
//   float4 subpixelOffset;             // Offset: 1136 Size:    16
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
// colorSampler                      sampler      NA          NA             s1      1 
// floatZSampler                     texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d             t6      1 
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
// TEXCOORD                 1   xyzw        1     NONE   float   xyz 
// TEXCOORD                 2   xyzw        2     NONE   float   xyz 
// TEXCOORD                 3   xyzw        3     NONE   float   xyz 
// TEXCOORD                 4   xyzw        4     NONE   float   xyz 
// TEXCOORD                 5   xyz         5     NONE   float   xyz 
// TEXCOORD                13      w        5     NONE    uint       
// TEXCOORD                 6   xyz         6     NONE   float   xyz 
// TEXCOORD                 0      w        6     NONE   float      w
// TEXCOORD                 7   xyz         7     NONE   float       
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyz         9     NONE   float   xyz 
// TEXCOORD                12   xyzw       10     NONE   float   xyzw
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
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB1[72], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps constant v1.xyz
dcl_input_ps constant v2.xyz
dcl_input_ps constant v3.xyz
dcl_input_ps constant v4.xyz
dcl_input_ps constant v5.xyz
dcl_input_ps constant v6.xyz
dcl_input_ps constant v6.w
dcl_input_ps constant v8.xyzw
dcl_input_ps constant v9.xyz
dcl_input_ps constant v10.xyzw
dcl_output o0.xyzw
dcl_temps 5
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
ge r0.y, r0.x, l(0.984375)
discard_nz r0.y
mul r0.z, r0.x, l(1.01587307)
mad r0.x, r0.x, l(64.000000), l(-63.000000)
movc r0.x, r0.y, r0.x, r0.z
discard_nz r0.y
max r0.x, r0.x, l(0.00000001)
rcp r0.x, r0.x
add r0.yz, v0.xxyx, -cb1[71].xxyx
mul r0.yz, r0.yyzy, cb1[44].zzwz
mad r0.yz, r0.yyzy, l(0.000000, 2.000000, -2.000000, 0.000000), l(0.000000, -1.000000, 1.000000, 0.000000)
mul r1.x, r0.y, cb1[12].x
mul r1.y, r0.z, cb1[13].y
mov r1.z, l(1.000000)
mul r0.xyz, r0.xxxx, r1.xyzx
mul r1.xyz, r0.yyyy, cb1[17].xyzx
mad r0.xyw, r0.xxxx, cb1[16].xyxz, r1.xyxz
mad r0.xyz, r0.zzzz, cb1[18].xyzx, r0.xywx
add r1.xyz, r0.xyzx, cb1[24].xyzx
mul r2.xyz, r1.yyyy, v2.xyzx
mad r1.xyw, r1.xxxx, v1.xyxz, r2.xyxz
mad r1.xyz, r1.zzzz, v3.xyzx, r1.xywx
add r1.xyz, r1.xyzx, v4.xyzx
add r2.xyz, -|r1.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
lt r2.xyz, r2.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
or r0.w, r2.y, r2.x
or r0.w, r2.z, r0.w
discard_nz r0.w
discard_nz r0.w
dp3 r0.w, -r0.xyzx, -r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, -r0.xyzx
dp3 r0.w, r0.xyzx, v6.xyzx
dp3 r0.x, r0.xyzx, v5.xyzx
div r0.y, -r0.w, r0.x
lt r0.x, l(0.000000), r0.x
and r0.x, r0.y, r0.x
add r0.y, cb0[12].w, l(0.000010)
mul r0.x, r0.y, r0.x
mul r0.xy, r0.xxxx, cb0[11].xyxx
mad r0.zw, r1.yyyz, l(0.000000, 0.000000, 0.500000, -0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
add r1.xyz, |r1.xyzx|, -v9.xyzx
mad r0.zw, r0.zzzw, v10.zzzw, v10.xxxy
add r0.zw, r0.zzzw, l(0.000000, 0.000000, -0.500000, -0.500000)
mad r0.xy, r0.zwzz, cb0[11].xyxx, r0.xyxx
mad r0.xy, cb0[11].zwzz, cb0[11].xyxx, r0.xyxx
mad r0.z, cb0[10].y, cb1[69].w, l(1.000000)
mul r0.z, r0.z, cb0[10].x
mul r0.z, r0.z, l(0.01745329)
sincos r2.x, r3.x, r0.z
mov r4.z, r2.x
mov r4.y, r3.x
mov r4.x, -r2.x
dp2 r2.y, r4.xyxx, r0.xyxx
dp2 r2.x, r4.yzyy, r0.xyxx
mul r0.xy, cb0[10].zwzz, cb1[69].wwww
mad r0.xy, r0.xyxx, cb0[11].xyxx, r2.xyxx
mul r0.z, cb0[12].z, cb1[69].w
sincos null, r0.z, r0.z
mad r0.z, r0.z, l(0.500000), l(0.500000)
add r0.z, -r0.z, l(1.000000)
add r0.w, -cb0[12].x, cb0[12].y
mad r0.z, r0.z, r0.w, cb0[12].x
div r0.xy, r0.xyxx, r0.zzzz
add r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t6.xyzw, s1
add r2.xyz, -v9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
div r2.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r2.xyzx
mul_sat r1.xyz, r1.xyzx, r2.xyzx
mad r2.xyz, r1.xyzx, l(-2.000000, -2.000000, -2.000000, 0.000000), l(3.000000, 3.000000, 3.000000, 0.000000)
mul r1.xyz, r1.xyzx, r1.xyzx
mad r1.xyz, -r2.xyzx, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
min r1.x, r1.y, r1.x
min r1.x, r1.z, r1.x
mad r1.y, v8.w, r1.x, r0.w
mul r1.x, r1.x, v8.w
mad_sat r1.y, r1.y, v6.w, -v6.w
ne r1.z, v6.w, l(1.000000)
movc r1.w, r1.z, r1.y, r1.x
log r2.xyz, |r0.xyzx|
mul r2.xyz, r2.xyzx, l(0.45454547, 0.45454547, 0.45454547, 0.000000)
exp r0.xyz, r2.xyzx
mov r1.xyz, v8.xyzx
mul o0.xyzw, r1.xyzw, r0.xyzw
ret 
// Approximately 88 instruction slots used
