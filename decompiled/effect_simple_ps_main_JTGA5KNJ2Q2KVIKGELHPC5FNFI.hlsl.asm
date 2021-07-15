//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:00 2021
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
//   float2 falloffParms;               // Offset:  184 Size:     8 [unused]
//   uint zFeatherComputeSprites;       // Offset:  192 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  196 Size:     4
//   float4 levelsControls;             // Offset:  208 Size:    16
//   bool useOldHDRScale;               // Offset:  224 Size:     4 [unused]
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
// floatZSampler                     texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d            t21      1 
// lmapTex                           texture  float4     2darray            t22      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   xyzw
// COLOR                    2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyzw        4     NONE   float   xyz 
// TEXCOORD                 2   xyzw        5     NONE   float    yzw
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// TEXCOORD                 4   xy          7     NONE   float   xy  
// TEXCOORD                 5     zw        7     NONE   float     zw
// TEXCOORD                 6   x           8     NONE    uint   x   
// TEXCOORD                 7   xyz         9     NONE   float   xyz 
// TEXCOORD                 8   xyz        10     NONE   float   xyz 
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
dcl_constantbuffer CB0[14], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2darray (float,float,float,float) t22
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps constant v5.yzw
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xy
dcl_input_ps linear v7.zw
dcl_input_ps constant v8.x
dcl_input_ps linear v9.xyz
dcl_input_ps linear v10.xyz
dcl_output o0.xyzw
dcl_temps 6
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
ge r0.y, r0.x, l(0.984375)
mul r0.z, r0.x, l(1.01587307)
mad r0.x, r0.x, l(64.000000), l(-63.000000)
movc r0.x, r0.y, r0.x, r0.z
max r0.x, r0.x, l(0.00000001)
ge r0.y, v0.z, l(0.984375)
mul r0.z, v0.z, l(1.01587307)
mad r0.w, v0.z, l(64.000000), l(-63.000000)
movc r0.y, r0.y, r0.w, r0.z
max r0.y, r0.y, l(0.00000001)
rcp r0.xy, r0.xyxx
add r0.z, -r0.y, r0.x
lt r0.x, r0.y, r0.x
eq r0.y, v5.z, l(0.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), v5.z
movc r0.y, r0.y, l(60000.000000), r0.w
mul_sat r0.y, r0.y, r0.z
movc r0.x, r0.x, r0.y, l(1.000000)
eq r1.xyzw, cb0[13].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r0.y, r1.y, r1.x
and r0.y, r1.z, r0.y
and r0.y, r1.w, r0.y
div r0.zw, v3.xxxy, v3.zzzz
deriv_rtx_coarse r1.xy, r0.zwzz
deriv_rty_coarse r1.zw, r0.zzzw
sample_d_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.zwzz, t21.xyzw, s1, r1.xyxx, r1.zwzz
dp3 r0.z, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.xyz, -r1.xyzx, r0.zzzz
mad r2.xyz, cb0[12].yyyy, r2.xyzx, r1.xyzx
max r0.z, r1.w, l(0.000100)
div_sat r3.xyz, r2.xyzx, r0.zzzz
add_sat r3.xyz, r3.xyzx, -cb0[13].xxxx
add r4.xy, -cb0[13].xzxx, cb0[13].ywyy
max r0.w, r4.x, l(0.000100)
div r3.xyz, r3.xyzx, r0.wwww
min r3.xyz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xyz, r3.xyzx, r4.yyyy, cb0[13].zzzz
add r4.xyz, r3.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r4.xyz, |r4.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r4.xyz, r4.xyzx
mul r4.xyz, r4.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r4.xyz, r4.xyzx
ge r5.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r3.xyzx
mul r3.xyz, r3.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
movc r3.xyz, r5.xyzx, r3.xyzx, r4.xyzx
mul r3.xyz, r1.wwww, r3.xyzx
movc r1.xyz, r0.yyyy, r2.xyzx, r3.xyzx
div r0.yzw, r1.xxyz, r0.zzzz
add r2.x, r1.w, v1.w
mad_sat r2.w, r2.x, v5.y, -v5.y
mul r2.xyz, r0.yzwy, r2.wwww
ne r0.y, v5.y, l(1.000000)
movc r1.xyzw, r0.yyyy, r2.xyzw, r1.xyzw
movc r0.y, r0.y, l(1.000000), v1.w
mul r1.xyzw, r0.xxxx, r1.xyzw
mul r0.xyzw, r0.yyyy, r1.xyzw
dp3 r1.x, v4.xyzx, v4.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v4.xyzx
dp3 r1.w, v6.xyzx, v4.xyzx
mad r2.xyz, -v6.xyzx, r1.wwww, v4.xyzx
dp3 r1.w, r2.xyzx, r2.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, r2.xyzx
ieq r3.xy, v5.wwww, l(1, 2, 0, 0)
movc r2.xyz, r3.yyyy, r2.xyzx, v6.xyzx
movc r1.xyz, r3.xxxx, r1.xyzx, r2.xyzx
dp3 r1.w, -v4.xyzx, -v4.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, -v4.xyzx
dp3 r1.x, r2.xyzx, r1.xyzx
mul r1.x, r1.x, r1.x
mad_sat r1.x, r1.x, v7.x, v7.y
mul r0.xyzw, r0.xyzw, r1.xxxx
mul r1.xyz, r0.wwww, v2.xyzx
utof r2.z, v8.x
mov r2.xy, v7.zwzz
sample_indexable(texture2darray)(float,float,float,float) r2.xyz, r2.xyzx, t22.xyzw, s1
mul r2.xyz, r2.xyzx, v1.xyzx
mad r2.xyz, r0.xyzx, r2.xyzx, -r1.xyzx
mad r1.xyz, v2.wwww, r2.xyzx, r1.xyzx
mul r2.xyz, r0.wwww, v10.xyzx
mad r1.xyz, r1.xyzx, v9.xyzx, r2.xyzx
mul r1.xyz, r1.xyzx, cb1[85].yyyy
ge r2.xyz, r1.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r1.xyz, r1.xyzx, r2.xyzx
min r0.xyz, r1.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
lt r1.xy, l(0.995000, 0.995000, 0.000000, 0.000000), v7.zwzz
or r1.x, r1.y, r1.x
lt r1.yz, v7.zzwz, l(0.000000, 0.005000, 0.005000, 0.000000)
or r1.y, r1.z, r1.y
or r1.x, r1.y, r1.x
mul r2.xz, cb1[85].xxxx, l(0.000000, 0.000000, 0.500000, 0.000000)
mov r2.w, l(1.000000)
movc o0.xyzw, r1.xxxx, r2.xxzw, r0.xyzw
ret 
// Approximately 99 instruction slots used
