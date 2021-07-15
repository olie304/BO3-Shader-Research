//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:52 2021
//
//
// Note: shader requires additional functionality:
//       Early depth-stencil
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
//   float hdrScale;                    // Offset:  184 Size:     4
//   uint zFeatherComputeSprites;       // Offset:  188 Size:     4
//   float desaturationAmount;          // Offset:  192 Size:     4
//   float4 levelsControls;             // Offset:  208 Size:    16
//   bool useOldHDRScale;               // Offset:  224 Size:     4
//   float zClipPlane;                  // Offset:  228 Size:     4
//   float zClipPlaneDir;               // Offset:  232 Size:     4
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
// cbuffer LightingGlobals
// {
//
//   uint numLights;                    // Offset:    0 Size:     4 [unused]
//   uint numRefProbes;                 // Offset:    4 Size:     4 [unused]
//   uint numRefProbeBlends;            // Offset:    8 Size:     4 [unused]
//   uint numDedicatedLights;           // Offset:   12 Size:     4 [unused]
//   float4 clearColor;                 // Offset:   16 Size:    16 [unused]
//   float4 sssParams;                  // Offset:   32 Size:    16 [unused]
//   
//   struct CoreFogConstants
//   {
//       
//       float4 fogColor;               // Offset:   48
//       float4 sunFogColor;            // Offset:   64
//       float K0;                      // Offset:   80
//       float skyK0;                   // Offset:   84
//       float expMul;                  // Offset:   88
//       float expAdd;                  // Offset:   92
//       float heightFalloff;           // Offset:   96
//       float skyHeightFalloff;        // Offset:  100
//       float K0b;                     // Offset:  104
//       float padding0;                // Offset:  108
//       float skyK0b;                  // Offset:  112
//       float3 wldSunFogDir;           // Offset:  116
//       float2 sunFogAngles;           // Offset:  128
//       float atmospheresunstrength;   // Offset:  136
//       float atmosphereMieSchlickK;   // Offset:  140
//       float2 atmosphereskyfogdensityatcamera;// Offset:  144
//       float atmosphereExtinctionIntensity;// Offset:  152
//       float atmosphereInScatterIntensity;// Offset:  156
//       float3 atmosphereRayleighDensity;// Offset:  160
//       float atmospherehazebasedist;  // Offset:  172
//       float3 atmosphereMieDensity;   // Offset:  176
//       float atmospherehazefadedist;  // Offset:  188
//       float3 atmosphereTotalDensity; // Offset:  192
//       float worldfogskysize;         // Offset:  204
//       float3 atmosphereInScatterIntensityOverTotalDensity;// Offset:  208
//       float blendAmount;             // Offset:  220
//       float2 atmosphereskyfogheightdensityscale;// Offset:  224
//       float2 atmospherefogdistanceoffset;// Offset:  232
//       float2 atmospherefogdistancedensityscale;// Offset:  240
//       float2 atmospherefogheightdensityscale;// Offset:  248
//       float2 atmospherefogdensityatcamera;// Offset:  256
//       float2 padding1;               // Offset:  264
//
//   } fogConstants;                    // Offset:   48 Size:   224 [unused]
//   
//   struct CoreSunConstants
//   {
//       
//       float3 wldDir;                 // Offset:  272
//       float splitDepthOffset;        // Offset:  284
//       float3 color;                  // Offset:  288
//       float specScale;               // Offset:  300
//       float globalProbeExposure;     // Offset:  304
//       float3 avgGlobalProbeColor;    // Offset:  308
//       float4 splitPinTransform[3];   // Offset:  320
//       uint sunCookieIndex;           // Offset:  368
//       float sunCookieIntensity;      // Offset:  372
//       float sunVolumetricCookieIntensity;// Offset:  376
//       uint toolsGfxDisableSunShadow; // Offset:  380
//       float4 sunCookieTransform[2];  // Offset:  384
//       float intensity;               // Offset:  416
//       int splitArrayOffset;          // Offset:  420
//       float2 pad0;                   // Offset:  424
//       
//       struct SSTLightingConstants
//       {
//           
//           struct SSTConstants
//           {
//               
//               float2 dimensionInTiles;// Offset:  432
//               float inchesPerTexel;  // Offset:  440
//               float spanInInches;    // Offset:  444
//
//           } constants;               // Offset:  432
//           row_major float4x4 offToPinTransform;// Offset:  448
//           float coordScale;          // Offset:  512
//           uint rootOffset;           // Offset:  516
//           uint2 pad0;                // Offset:  520
//
//       } sstLightingConstants;        // Offset:  432
//
//   } sunConstants;                    // Offset:  272 Size:   256 [unused]
//   
//   struct SSTMinMaxConstants
//   {
//       
//       float2 sstToMinMaxScale;       // Offset:  528
//       float2 pad0;                   // Offset:  536
//       float2 halfMinTexelSize;       // Offset:  544
//       float rcpInchesDimLevel0;      // Offset:  552
//       float shadowBiasInches;        // Offset:  556
//
//   } minMaxConstants;                 // Offset:  528 Size:    32 [unused]
//   
//   struct CoreGlobalProbePack
//   {
//       
//       uint4 data[3];                 // Offset:  560
//
//   } globalProbeConstants;            // Offset:  560 Size:    48 [unused]
//   
//   struct CoreWeatherConsts
//   {
//       
//       float rain;                    // Offset:  608
//       float windSpeed;               // Offset:  612
//       float windDirSin;              // Offset:  616
//       float windDirCos;              // Offset:  620
//       float weatherTile;             // Offset:  624
//       float3 weatherVector;          // Offset:  628
//       float3 weatherVector2;         // Offset:  640
//       float padding0;                // Offset:  652
//       float3 weatherTint;            // Offset:  656
//       float padding1;                // Offset:  668
//       float3 weatherTint2;           // Offset:  672
//       float padding2;                // Offset:  684
//
//   } weather;                         // Offset:  608 Size:    80 [unused]
//   
//   struct SSTLightingConstants
//   {
//       
//       struct SSTConstants
//       {
//           
//           float2 dimensionInTiles;   // Offset:  688
//           float inchesPerTexel;      // Offset:  696
//           float spanInInches;        // Offset:  700
//
//       } constants;                   // Offset:  688
//       row_major float4x4 offToPinTransform;// Offset:  704
//       float coordScale;              // Offset:  768
//       uint rootOffset;               // Offset:  772
//       uint2 pad0;                    // Offset:  776
//
//   } outdoorSSTConstants;             // Offset:  688 Size:    96 [unused]
//   float4 pinToWorldZ;                // Offset:  784 Size:    16 [unused]
//   
//   struct CoreVolumetricConstants
//   {
//       
//       uint firstSpotLight;           // Offset:  800
//       uint lastSpotLight;            // Offset:  804
//       uint firstOmniLight;           // Offset:  808
//       uint lastOmniLight;            // Offset:  812
//       uint firstProbe;               // Offset:  816
//       uint lastProbe;                // Offset:  820
//       uint padding0;                 // Offset:  824
//       uint padding1;                 // Offset:  828
//
//   } volumetric;                      // Offset:  800 Size:    32 [unused]
//   uint viewID;                       // Offset:  832 Size:     4 [unused]
//   uint enableCountDebug;             // Offset:  836 Size:     4 [unused]
//   uint centerGroupIDx;               // Offset:  840 Size:     4 [unused]
//   uint centerGroupIDy;               // Offset:  844 Size:     4 [unused]
//   uint viewmodelSunShadowRaw;        // Offset:  848 Size:     4 [unused]
//   uint debugDrawOverlayType;         // Offset:  852 Size:     4 [unused]
//   float drawNumLighstScale;          // Offset:  856 Size:     4 [unused]
//   float drawNumLightsAlpha;          // Offset:  860 Size:     4 [unused]
//   uint probeDebug;                   // Offset:  864 Size:     4 [unused]
//   float probeDebugRadius;            // Offset:  868 Size:     4 [unused]
//   uint showSunVis;                   // Offset:  872 Size:     4 [unused]
//   uint enableAO;                     // Offset:  876 Size:     4 [unused]
//   uint showAO;                       // Offset:  880 Size:     4 [unused]
//   uint numGpuCullTilesWidth;         // Offset:  884 Size:     4 [unused]
//   uint numGpuCullTilesHeight;        // Offset:  888 Size:     4 [unused]
//   int permuteHighlight;              // Offset:  892 Size:     4 [unused]
//   uint overdrawOverlayMaxValue;      // Offset:  896 Size:     4 [unused]
//   float overdrawOverlayAlpha;        // Offset:  900 Size:     4 [unused]
//   uint overdrawDecals;               // Offset:  904 Size:     4 [unused]
//   uint overdrawDecalsLayers;         // Offset:  908 Size:     4 [unused]
//   uint permuteStride;                // Offset:  912 Size:     4 [unused]
//   uint numDecals;                    // Offset:  916 Size:     4 [unused]
//   uint numStaticDecals;              // Offset:  920 Size:     4 [unused]
//   uint numDynamicDecals;             // Offset:  924 Size:     4 [unused]
//   uint numOverrideProbes;            // Offset:  928 Size:     4 [unused]
//   uint enableDitheredShadow;         // Offset:  932 Size:     4 [unused]
//   uint oitMaxEntries;                // Offset:  936 Size:     4
//   uint numAttenuationVolumes;        // Offset:  940 Size:     4 [unused]
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
// gOit_Pixels                           UAV    uint          2d             u6      1 
// gOit_Nodes                            UAV   uint2     2darray             u7      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// LightingGlobals                   cbuffer      NA          NA            cb2      1 
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
dcl_globalFlags refactoringAllowed | forceEarlyDepthStencil
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_constantbuffer CB2[59], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2darray (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
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
dcl_temps 8
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
sample_d_indexable(texture2d)(float,float,float,float) r2.xyzw, v4.xyxx, t21.xyzw, s1, r0.xyxx, r0.zwzz
ne r3.xy, v6.xyxx, l(0.000000, 1.000000, 0.000000, 0.000000)
if_nz r3.x
  sample_d_indexable(texture2d)(float,float,float,float) r4.xyzw, v4.zwzz, t21.xyzw, s1, r0.xyxx, r0.zwzz
  add r4.xyzw, -r2.xyzw, r4.xyzw
  mad r2.xyzw, v6.xxxx, r4.xyzw, r2.xyzw
endif 
dp3 r3.z, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r4.xyz, -r2.xyzx, r3.zzzz
mad r4.xyz, cb0[12].xxxx, r4.xyzx, r2.xyzx
eq r5.xyzw, cb0[13].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r3.z, r5.y, r5.x
and r3.z, r5.z, r3.z
and r3.z, r5.w, r3.z
max r3.w, r2.w, l(0.000100)
div_sat r5.xyz, r4.xyzx, r3.wwww
add_sat r5.xyz, r5.xyzx, -cb0[13].xxxx
add r6.xy, -cb0[13].xzxx, cb0[13].ywyy
max r4.w, r6.x, l(0.000100)
div r5.xyz, r5.xyzx, r4.wwww
min r5.xyz, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r5.xyz, r5.xyzx, r6.yyyy, cb0[13].zzzz
ge r6.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r5.xyzx
mul r7.xyz, r5.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
add r5.xyz, r5.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r5.xyz, |r5.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r5.xyz, r5.xyzx
mul r5.xyz, r5.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r5.xyz, r5.xyzx
movc r5.xyz, r6.xyzx, r7.xyzx, r5.xyzx
mul r5.xyz, r2.wwww, r5.xyzx
movc r2.xyz, r3.zzzz, r4.xyzx, r5.xyzx
ftoi r4.xy, v0.xyxx
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r3.z, r4.xyzw, t0.yzxw
eq r4.x, v6.z, l(0.000000)
div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), v6.z
movc r4.x, r4.x, l(60000.000000), r4.y
ge r4.y, r3.z, l(0.984375)
mul r4.z, r3.z, l(1.01587307)
mad r3.z, r3.z, l(64.000000), l(-63.000000)
movc r3.z, r4.y, r3.z, r4.z
max r3.z, r3.z, l(0.00000001)
rcp r3.z, r3.z
ge r4.y, v0.z, l(0.984375)
mul r4.z, v0.z, l(1.01587307)
mad r4.w, v0.z, l(64.000000), l(-63.000000)
movc r4.y, r4.y, r4.w, r4.z
max r4.y, r4.y, l(0.00000001)
rcp r4.y, r4.y
add r4.z, cb0[14].y, -cb1[24].z
mul r4.z, r4.z, cb0[14].z
mul r4.w, v5.z, cb0[14].z
lt r5.x, r4.z, r4.w
mul r4.z, r4.z, r4.y
div r4.z, r4.z, r4.w
div r5.yzw, r2.xxyz, r3.wwww
add r3.w, r2.w, v1.w
mad_sat r6.y, r3.w, v6.y, -v6.y
mul r6.xzw, r5.yyzw, r6.yyyy
movc r2.xyzw, r3.yyyy, r6.xzwy, r2.xyzw
mov r6.x, l(1.000000)
movc r3.yw, r3.yyyy, r6.xxxy, v1.wwww
lt r4.w, r4.y, r3.z
add r3.z, r3.z, -r4.y
mul_sat r3.z, r4.x, r3.z
movc r3.z, r4.w, r3.z, l(1.000000)
add r4.y, -r4.y, r4.z
mul r4.x, r4.x, r4.y
min r4.x, |r4.x|, l(1.000000)
mul r3.z, r3.z, r4.x
mul r1.w, r1.w, r1.w
mad_sat r1.w, r1.w, v8.x, v8.y
mul r3.w, r3.z, r3.w
mul r4.y, r1.w, r3.w
mul r2.xyzw, r2.xyzw, r3.zzzz
mul r2.xyzw, r3.yyyy, r2.xyzw
mul r2.xyzw, r1.wwww, r2.xyzw
and r2.xyz, r2.xyzx, r5.xxxx
mov r4.x, r2.w
and r3.yz, r4.xxyx, r5.xxxx
sample_d_indexable(texture2d)(float,float,float,float) r1.w, v4.xyxx, t24.yzwx, s1, r0.xyxx, r0.zwzz
if_nz r3.x
  sample_d_indexable(texture2d)(float,float,float,float) r0.x, v4.zwzz, t24.xyzw, s1, r0.xyxx, r0.zwzz
  add r0.x, -r1.w, r0.x
  mad r1.w, v6.x, r0.x, r1.w
endif 
mul r0.x, r3.z, r1.w
dp3 r0.y, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r0.y, r0.y, l(0.000100)
max r0.y, r0.y, cb1[85].x
mul r0.y, r0.y, cb0[11].z
mul r0.y, r0.y, v5.w
movc r0.y, cb0[14].x, cb0[11].z, r0.y
mul r0.x, r0.x, r0.y
mad r0.xyz, v2.xyzx, r0.xxxx, r1.xyzx
mul r1.xyz, r3.yyyy, v3.xyzx
mul r3.xzw, r3.yyyy, v11.xxyz
mad r0.xyz, r2.xyzx, r0.xyzx, -r1.xyzx
mad r0.xyz, v3.wwww, r0.xyzx, r1.xyzx
mad r0.xyz, r0.xyzx, v10.xyzx, r3.xzwx
mul r0.xyz, r0.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min r0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
max r1.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.x, r3.y, l(0x7f800000)
ieq r2.x, r2.x, l(0x7f800000)
mov r1.w, r3.y
eq r4.xyzw, r1.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.yz, r4.zzwz, r4.xxyx
and r2.y, r2.z, r2.y
or r2.x, r2.y, r2.x
if_z r2.x
  ftou r2.xy, v0.xyxx
  imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
  ult r2.w, r2.z, cb2[58].z
  if_nz r2.w
    max r2.w, r1.z, r1.y
    max r2.w, r1.x, r2.w
    and r2.w, r2.w, l(0x7f800000)
    iadd r2.w, r2.w, l(0x00800000)
    add r1.xyz, r1.xyzx, r2.wwww
    ubfe r1.x, l(8), l(15), r1.x
    ushr r1.yz, r1.yyzy, l(0, 15, 15, 0)
    bfi r1.yz, l(0, 8, 8, 0), l(0, 8, 16, 0), r1.yyzy, l(0, 0, 0, 0)
    iadd r1.x, r1.y, r1.x
    iadd r1.x, r1.z, r1.x
    ishl r1.y, r2.w, l(1)
    iadd r4.xzw, r1.yyyy, r1.xxxx
    mov_sat r3.y, r3.y
    mul r1.x, r3.y, l(2046.000000)
    ftou r1.x, r1.x
    ishl r1.y, v0.z, l(2)
    and r1.x, r1.x, l(2046)
    bfi r1.x, l(11), l(0), r1.x, r1.y
    bfi r4.y, l(1), l(0), cb0[11].w, r1.x
    store_uav_typed u7.xyzw, r2.xyzz, r4.xyzw
    mov r1.x, l(-1)
  else 
    mov r1.x, l(0)
  endif 
else 
  mov r1.x, l(-1)
endif 
mov r0.w, r1.w
movc o0.xyzw, r1.xxxx, l(0,0,0,0), r0.xyzw
ret 
// Approximately 169 instruction slots used
