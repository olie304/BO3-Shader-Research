//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:45 2021
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
//   uint zFeatherComputeSprites;       // Offset:  184 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  188 Size:     4
//   float4 levelsControls;             // Offset:  192 Size:    16
//   bool useOldHDRScale;               // Offset:  208 Size:     4 [unused]
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
// TEXCOORD                 0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 1   xyzw        4     NONE   float       
// TEXCOORD                 2   xyzw        5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float       
// TEXCOORD                 4   xy          7     NONE   float    y  
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
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2darray (float,float,float,float) t22
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps constant v5.xyz
dcl_input_ps linear v7.y
dcl_input_ps linear v7.zw
dcl_input_ps constant v8.x
dcl_input_ps linear v9.xyz
dcl_input_ps linear v10.xyz
dcl_output o0.xyzw
dcl_temps 6
deriv_rtx_coarse r0.xy, v3.xyxx
deriv_rty_coarse r0.zw, v3.xxxy
utof r1.z, v8.x
mov r1.xy, v7.zwzz
sample_indexable(texture2darray)(float,float,float,float) r1.xyz, r1.xyzx, t22.xyzw, s1
mul r1.xyz, r1.xyzx, v1.xyzx
sample_d_indexable(texture2d)(float,float,float,float) r2.xyzw, v3.xyxx, t21.xyzw, s1, r0.xyxx, r0.zwzz
ne r3.xy, v5.xyxx, l(0.000000, 1.000000, 0.000000, 0.000000)
if_nz r3.x
  sample_d_indexable(texture2d)(float,float,float,float) r0.xyzw, v3.zwzz, t21.xyzw, s1, r0.xyxx, r0.zwzz
  add r0.xyzw, -r2.xyzw, r0.xyzw
  mad r2.xyzw, v5.xxxx, r0.xyzw, r2.xyzw
endif 
dp3 r0.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.xyz, -r2.xyzx, r0.xxxx
mad r0.xyz, cb0[11].wwww, r0.xyzx, r2.xyzx
eq r4.xyzw, cb0[12].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r0.w, r4.y, r4.x
and r0.w, r4.z, r0.w
and r0.w, r4.w, r0.w
max r1.w, r2.w, l(0.000100)
div_sat r3.xzw, r0.xxyz, r1.wwww
add_sat r3.xzw, r3.xxzw, -cb0[12].xxxx
add r4.xy, -cb0[12].xzxx, cb0[12].ywyy
max r4.x, r4.x, l(0.000100)
div r3.xzw, r3.xxzw, r4.xxxx
min r3.xzw, r3.xxzw, l(1.000000, 0.000000, 1.000000, 1.000000)
mad r3.xzw, r3.xxzw, r4.yyyy, cb0[12].zzzz
ge r4.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r3.xzwx
mul r5.xyz, r3.xzwx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
add r3.xzw, r3.xxzw, l(0.055000, 0.000000, 0.055000, 0.055000)
mul r3.xzw, |r3.xxzw|, l(0.94786733, 0.000000, 0.94786733, 0.94786733)
log r3.xzw, r3.xxzw
mul r3.xzw, r3.xxzw, l(2.400000, 0.000000, 2.400000, 2.400000)
exp r3.xzw, r3.xxzw
movc r3.xzw, r4.xxyz, r5.xxyz, r3.xxzw
mul r3.xzw, r2.wwww, r3.xxzw
movc r2.xyz, r0.wwww, r0.xyzx, r3.xzwx
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
eq r0.y, v5.z, l(0.000000)
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), v5.z
movc r0.y, r0.y, l(60000.000000), r0.z
ge r0.z, r0.x, l(0.984375)
mul r0.w, r0.x, l(1.01587307)
mad r0.x, r0.x, l(64.000000), l(-63.000000)
movc r0.x, r0.z, r0.x, r0.w
max r0.x, r0.x, l(0.00000001)
ge r0.z, v0.z, l(0.984375)
mul r0.w, v0.z, l(1.01587307)
mad r3.x, v0.z, l(64.000000), l(-63.000000)
movc r0.z, r0.z, r3.x, r0.w
max r0.z, r0.z, l(0.00000001)
rcp r0.xz, r0.xxzx
div r3.xzw, r2.xxyz, r1.wwww
add r0.w, r2.w, v1.w
mad_sat r4.w, r0.w, v5.y, -v5.y
mul r4.xyz, r3.xzwx, r4.wwww
movc r2.xyzw, r3.yyyy, r4.xyzw, r2.xyzw
movc r0.w, r3.y, l(1.000000), v1.w
lt r1.w, r0.z, r0.x
add r0.x, -r0.z, r0.x
mul_sat r0.x, r0.y, r0.x
movc r0.x, r1.w, r0.x, l(1.000000)
mov_sat r0.y, v7.y
mul r2.xyzw, r0.xxxx, r2.xyzw
mul r2.xyzw, r0.wwww, r2.xyzw
mul r0.xyzw, r0.yyyy, r2.xyzw
mul r2.xyz, r0.wwww, v2.xyzx
mul r3.xyz, r0.wwww, v10.xyzx
mad r1.xyz, r0.xyzx, r1.xyzx, -r2.xyzx
mad r1.xyz, v2.wwww, r1.xyzx, r2.xyzx
mad r1.xyz, r1.xyzx, v9.xyzx, r3.xyzx
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
// Approximately 87 instruction slots used
