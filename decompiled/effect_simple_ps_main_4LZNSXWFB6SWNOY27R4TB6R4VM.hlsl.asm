//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:47 2021
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
//   float hdrScale;                    // Offset:  192 Size:     4
//   uint zFeatherComputeSprites;       // Offset:  196 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  200 Size:     4
//   float4 levelsControls;             // Offset:  208 Size:    16
//   bool useOldHDRScale;               // Offset:  224 Size:     4
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
// emissiveMap                       texture  float4          2d            t22      1 
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
// COLOR                    1   xyz         2     NONE   float   xyz 
// COLOR                    2   xyzw        3     NONE   float   xyzw
// TEXCOORD                 0   xyz         4     NONE   float   xyz 
// TEXCOORD                 1   xyzw        5     NONE   float   xyzw
// TEXCOORD                 2   xyzw        6     NONE   float    yzw
// TEXCOORD                 3   xyz         7     NONE   float   xyz 
// TEXCOORD                 4   xy          8     NONE   float   xy  
// TEXCOORD                 5     zw        8     NONE   float     zw
// TEXCOORD                 6   x           9     NONE    uint       
// TEXCOORD                 7   xyz        10     NONE   float   xyz 
// TEXCOORD                 8   xyz        11     NONE   float   xyz 
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
dcl_constantbuffer CB1[86], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyzw
dcl_input_ps constant v6.yzw
dcl_input_ps linear v7.xyz
dcl_input_ps linear v8.xy
dcl_input_ps linear v8.zw
dcl_input_ps linear v10.xyz
dcl_input_ps linear v11.xyz
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
eq r0.y, v6.z, l(0.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), v6.z
movc r0.y, r0.y, l(60000.000000), r0.w
mul_sat r0.y, r0.y, r0.z
movc r0.x, r0.x, r0.y, l(1.000000)
eq r1.xyzw, cb0[13].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r0.y, r1.y, r1.x
and r0.y, r1.z, r0.y
and r0.y, r1.w, r0.y
add r0.zw, -cb0[13].xxxz, cb0[13].yyyw
max r0.z, r0.z, l(0.000100)
div r1.xy, v4.xyxx, v4.zzzz
deriv_rtx_coarse r1.zw, r1.xxxy
deriv_rty_coarse r2.xy, r1.xyxx
sample_d_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t21.xyzw, s1, r1.zwzz, r2.xyxx
sample_d_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t22.xyzw, s1, r1.zwzz, r2.xyxx
dp3 r1.y, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.yzw, -r3.xxyz, r1.yyyy
mad r1.yzw, cb0[12].zzzz, r1.yyzw, r3.xxyz
max r2.x, r3.w, l(0.000100)
div_sat r2.yzw, r1.yyzw, r2.xxxx
add_sat r2.yzw, r2.yyzw, -cb0[13].xxxx
div r2.yzw, r2.yyzw, r0.zzzz
min r2.yzw, r2.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
mad r2.yzw, r2.yyzw, r0.wwww, cb0[13].zzzz
add r4.xyz, r2.yzwy, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r4.xyz, |r4.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r4.xyz, r4.xyzx
mul r4.xyz, r4.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r4.xyz, r4.xyzx
ge r5.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r2.yzwy
mul r2.yzw, r2.yyzw, l(0.000000, 0.07739938, 0.07739938, 0.07739938)
movc r2.yzw, r5.xxyz, r2.yyzw, r4.xxyz
mul r2.yzw, r3.wwww, r2.yyzw
movc r3.xyz, r0.yyyy, r1.yzwy, r2.yzwy
div r0.yzw, r3.xxyz, r2.xxxx
add r1.y, r3.w, v1.w
mad_sat r2.y, r1.y, v6.y, -v6.y
mul r2.xzw, r0.yyzw, r2.yyyy
ne r0.y, v6.y, l(1.000000)
movc r3.xyzw, r0.yyyy, r2.xzwy, r3.xyzw
mul r3.xyzw, r0.xxxx, r3.xyzw
mov r2.x, l(1.000000)
movc r0.yz, r0.yyyy, r2.xxyx, v1.wwww
mul r2.xyzw, r0.yyyy, r3.xyzw
mul r0.x, r0.x, r0.z
dp3 r0.y, v5.xyzx, v5.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, v5.xxyz
dp3 r1.y, v7.xyzx, v5.xyzx
mad r1.yzw, -v7.xxyz, r1.yyyy, v5.xxyz
dp3 r3.x, r1.yzwy, r1.yzwy
rsq r3.x, r3.x
mul r1.yzw, r1.yyzw, r3.xxxx
ieq r3.xy, v6.wwww, l(1, 2, 0, 0)
movc r1.yzw, r3.yyyy, r1.yyzw, v7.xxyz
movc r0.yzw, r3.xxxx, r0.yyzw, r1.yyzw
dp3 r1.y, -v5.xyzx, -v5.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, -v5.xxyz
dp3 r0.y, r1.yzwy, r0.yzwy
mul r0.y, r0.y, r0.y
mad_sat r0.y, r0.y, v8.x, v8.y
mul r2.xyzw, r0.yyyy, r2.xyzw
mul r0.x, r0.y, r0.x
mul r0.x, r0.x, r1.x
mul r0.yzw, r2.wwww, v3.xxyz
dp3 r1.x, v1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r1.x, r1.x, l(0.000100)
max r1.x, r1.x, cb1[85].x
mul r1.x, r1.x, cb0[12].x
mul r1.x, r1.x, v5.w
movc r1.x, cb0[14].x, cb0[12].x, r1.x
mul r0.x, r0.x, r1.x
mad r1.xyz, v2.xyzx, r0.xxxx, v1.xyzx
mad r1.xyz, r2.xyzx, r1.xyzx, -r0.yzwy
mad r0.xyz, v3.wwww, r1.xyzx, r0.yzwy
mul r1.xyz, r2.wwww, v11.xyzx
mad r0.xyz, r0.xyzx, v10.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min r2.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
lt r0.xy, l(0.995000, 0.995000, 0.000000, 0.000000), v8.zwzz
or r0.x, r0.y, r0.x
lt r0.yz, v8.zzwz, l(0.000000, 0.005000, 0.005000, 0.000000)
or r0.y, r0.z, r0.y
or r0.x, r0.y, r0.x
mul r1.xz, cb1[85].xxxx, l(0.000000, 0.000000, 0.500000, 0.000000)
mov r1.w, l(1.000000)
movc o0.xyzw, r0.xxxx, r1.xxzw, r2.xyzw
ret 
// Approximately 108 instruction slots used
