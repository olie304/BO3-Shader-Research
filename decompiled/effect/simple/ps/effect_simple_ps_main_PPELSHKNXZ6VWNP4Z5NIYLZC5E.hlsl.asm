//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:06 2021
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
//   float hdrScale;                    // Offset:  240 Size:     4
//   uint zFeatherComputeSprites;       // Offset:  244 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  248 Size:     4
//   float4 levelsControls;             // Offset:  256 Size:    16
//   bool useOldHDRScale;               // Offset:  272 Size:     4
//   float2 scaleUVsAlpha;              // Offset:  276 Size:     8
//   float zFeatherOverride;            // Offset:  284 Size:     4 [unused]
//   float2 scaleUVsColor;              // Offset:  288 Size:     8
//   float2 offsetUVsColor;             // Offset:  296 Size:     8
//   float2 rotateUVsColor;             // Offset:  304 Size:     8
//   float2 scrollUVsColor;             // Offset:  312 Size:     8
//   float2 scaleUVsEmissive;           // Offset:  320 Size:     8
//   float2 offsetUVsEmissive;          // Offset:  328 Size:     8
//   float2 rotateUVsEmissive;          // Offset:  336 Size:     8
//   float2 scrollUVsEmissive;          // Offset:  344 Size:     8
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
// floatZSampler                     texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d            t21      1 
// lmapTex                           texture  float4     2darray            t22      1 
// emissiveMap                       texture  float4          2d            t24      1 
// alphaMap                          texture  float4          2d            t25      1 
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
// TEXCOORD                 0   xyzw        4     NONE   float   xyzw
// TEXCOORD                 1   xyzw        5     NONE   float   xyzw
// TEXCOORD                 2   xyzw        6     NONE   float   xyzw
// TEXCOORD                 3   xyz         7     NONE   float   xyz 
// TEXCOORD                 4   xy          8     NONE   float   xy  
// TEXCOORD                 5     zw        8     NONE   float     zw
// TEXCOORD                 6   x           9     NONE    uint   x   
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
dcl_constantbuffer CB0[22], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2darray (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_resource_texture2d (float,float,float,float) t25
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_input_ps linear v5.xyzw
dcl_input_ps constant v6.xyzw
dcl_input_ps linear v7.xyz
dcl_input_ps linear v8.xy
dcl_input_ps linear v8.zw
dcl_input_ps constant v9.x
dcl_input_ps linear v10.xyz
dcl_input_ps linear v11.xyz
dcl_output o0.xyzw
dcl_temps 9
deriv_rtx_coarse r0.xy, v4.xyxx
deriv_rty_coarse r0.zw, v4.xxxy
utof r1.z, v9.x
mov r1.xy, v8.zwzz
sample_indexable(texture2darray)(float,float,float,float) r1.xyz, r1.xyzx, t22.xyzw, s1
mul r1.xyz, r1.xyzx, v1.xyzx
dp3 r1.w, v5.xyzx, v5.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v5.xyzx
ieq r3.xy, v6.wwww, l(1, 2, 0, 0)
dp3 r1.w, v7.xyzx, v5.xyzx
mad r4.xyz, -v7.xyzx, r1.wwww, v5.xyzx
dp3 r1.w, r4.xyzx, r4.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, r4.xyzx
movc r3.yzw, r3.yyyy, r4.xxyz, v7.xxyz
movc r2.xyz, r3.xxxx, r2.xyzx, r3.yzwy
dp3 r1.w, -v5.xyzx, -v5.xyzx
rsq r1.w, r1.w
mul r3.xyz, r1.wwww, -v5.xyzx
dp3 r1.w, r3.xyzx, r2.xyzx
add r2.xyzw, v4.xyzw, l(-0.500000, -0.500000, -0.500000, -0.500000)
mul r3.xy, cb0[18].xyxx, cb0[18].zwzz
mad r3.zw, r2.xxxy, cb0[18].xxxy, r3.xxxy
mul r4.xy, cb0[19].zwzz, cb1[69].wwww
mad r4.z, cb0[19].y, cb1[69].w, l(1.000000)
mul r4.z, r4.z, cb0[19].x
mul r4.z, r4.z, l(0.01745329)
sincos r5.x, r6.x, r4.z
mov r6.y, r6.x
mov r6.z, r5.x
dp2 r7.x, r6.yzyy, r3.zwzz
mov r6.x, -r5.x
dp2 r7.y, r6.xyxx, r3.zwzz
mad r3.zw, r4.xxxy, cb0[18].xxxy, r7.xxxy
add r3.zw, r3.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
sample_d_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.zwzz, t21.xyzw, s1, r0.xyxx, r0.zwzz
ne r3.zw, v6.xxxy, l(0.000000, 0.000000, 0.000000, 1.000000)
if_nz r3.z
  mad r3.xy, r2.zwzz, cb0[18].xyxx, r3.xyxx
  dp2 r7.x, r6.yzyy, r3.xyxx
  dp2 r7.y, r6.xyxx, r3.xyxx
  mad r3.xy, r4.xyxx, cb0[18].xyxx, r7.xyxx
  add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_d_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t21.xyzw, s1, r0.xyxx, r0.zwzz
  add r4.xyzw, -r5.xyzw, r4.xyzw
  mad r5.xyzw, v6.xxxx, r4.xyzw, r5.xyzw
endif 
dp3 r3.x, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r4.xyz, -r5.xyzx, r3.xxxx
mad r4.xyz, cb0[15].zzzz, r4.xyzx, r5.xyzx
eq r6.xyzw, cb0[16].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r3.x, r6.y, r6.x
and r3.x, r6.z, r3.x
and r3.x, r6.w, r3.x
max r3.y, r5.w, l(0.000100)
div_sat r6.xyz, r4.xyzx, r3.yyyy
add_sat r6.xyz, r6.xyzx, -cb0[16].xxxx
add r7.xy, -cb0[16].xzxx, cb0[16].ywyy
max r4.w, r7.x, l(0.000100)
div r6.xyz, r6.xyzx, r4.wwww
min r6.xyz, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r6.xyz, r6.xyzx, r7.yyyy, cb0[16].zzzz
ge r7.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r6.xyzx
mul r8.xyz, r6.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
add r6.xyz, r6.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r6.xyz, |r6.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r6.xyz, r6.xyzx
mul r6.xyz, r6.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r6.xyz, r6.xyzx
movc r6.xyz, r7.xyzx, r8.xyzx, r6.xyzx
mul r6.xyz, r5.wwww, r6.xyzx
movc r5.xyz, r3.xxxx, r4.xyzx, r6.xyzx
ftoi r4.xy, v0.xyxx
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r3.x, r4.xyzw, t0.xyzw
eq r4.x, v6.z, l(0.000000)
div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), v6.z
movc r4.x, r4.x, l(60000.000000), r4.y
ge r4.y, r3.x, l(0.984375)
mul r4.z, r3.x, l(1.01587307)
mad r3.x, r3.x, l(64.000000), l(-63.000000)
movc r3.x, r4.y, r3.x, r4.z
max r3.x, r3.x, l(0.00000001)
rcp r3.x, r3.x
ge r4.y, v0.z, l(0.984375)
mul r4.z, v0.z, l(1.01587307)
mad r4.w, v0.z, l(64.000000), l(-63.000000)
movc r4.y, r4.y, r4.w, r4.z
max r4.y, r4.y, l(0.00000001)
rcp r4.y, r4.y
div r6.xyz, r5.xyzx, r3.yyyy
add r3.y, r5.w, v1.w
mad_sat r7.y, r3.y, v6.y, -v6.y
mul r7.xzw, r6.xxyz, r7.yyyy
movc r5.xyzw, r3.wwww, r7.xzwy, r5.xyzw
mov r7.x, l(1.000000)
movc r3.yw, r3.wwww, r7.xxxy, v1.wwww
lt r4.z, r4.y, r3.x
add r3.x, r3.x, -r4.y
mul_sat r3.x, r4.x, r3.x
movc r3.x, r4.z, r3.x, l(1.000000)
mul r1.w, r1.w, r1.w
mad_sat r1.w, r1.w, v8.x, v8.y
mul r3.w, r3.x, r3.w
mul r3.w, r1.w, r3.w
mul r4.xyzw, r3.xxxx, r5.xyzw
mul r4.xyzw, r3.yyyy, r4.xyzw
mul r4.xyzw, r1.wwww, r4.xyzw
mul r3.xy, cb0[20].xyxx, cb0[20].zwzz
mad r2.xy, r2.xyxx, cb0[20].xyxx, r3.xyxx
mul r5.xy, cb0[21].zwzz, cb1[69].wwww
mad r1.w, cb0[21].y, cb1[69].w, l(1.000000)
mul r1.w, r1.w, cb0[21].x
mul r1.w, r1.w, l(0.01745329)
sincos r6.x, r7.x, r1.w
mov r7.y, r7.x
mov r7.z, r6.x
dp2 r8.x, r7.yzyy, r2.xyxx
mov r7.x, -r6.x
dp2 r8.y, r7.xyxx, r2.xyxx
mad r2.xy, r5.xyxx, cb0[20].xyxx, r8.xyxx
add r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_d_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t24.yzwx, s1, r0.xyxx, r0.zwzz
if_nz r3.z
  mad r2.xy, r2.zwzz, cb0[20].xyxx, r3.xyxx
  dp2 r3.x, r7.yzyy, r2.xyxx
  dp2 r3.y, r7.xyxx, r2.xyxx
  mad r2.xy, r5.xyxx, cb0[20].xyxx, r3.xyxx
  add r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_d_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t24.xyzw, s1, r0.xyxx, r0.zwzz
  add r2.x, -r1.w, r2.x
  mad r1.w, v6.x, r2.x, r1.w
endif 
mul r1.w, r3.w, r1.w
dp3 r2.x, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r2.x, r2.x, l(0.000100)
max r2.x, r2.x, cb1[85].x
mul r2.x, r2.x, cb0[15].x
mul r2.x, r2.x, v5.w
movc r2.x, cb0[17].x, cb0[15].x, r2.x
mul r1.w, r1.w, r2.x
mad r1.xyz, v2.xyzx, r1.wwww, r1.xyzx
mul r2.xy, v4.xyxx, cb0[17].yzyy
sample_d_indexable(texture2d)(float,float,float,float) r1.w, r2.xyxx, t25.yzwx, s1, r0.xyxx, r0.zwzz
if_nz r3.z
  mul r2.xy, v4.zwzz, cb0[17].yzyy
  sample_d_indexable(texture2d)(float,float,float,float) r0.x, r2.xyxx, t25.xyzw, s1, r0.xyxx, r0.zwzz
  add r0.x, -r1.w, r0.x
  mad r1.w, v6.x, r0.x, r1.w
endif 
mul r0.xyzw, r1.wwww, r4.xyzw
mul r2.xyz, r0.wwww, v3.xyzx
mul r3.xyz, r0.wwww, v11.xyzx
mad r0.xyz, r0.xyzx, r1.xyzx, -r2.xyzx
mad r0.xyz, v3.wwww, r0.xyzx, r2.xyzx
mad r0.xyz, r0.xyzx, v10.xyzx, r3.xyzx
mul r0.xyz, r0.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min o0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
mov o0.w, r0.w
ret 
// Approximately 163 instruction slots used
