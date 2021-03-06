//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:56 2021
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
//   float hdrScale;                    // Offset:  188 Size:     4
//   bool flowAlpha;                    // Offset:  192 Size:     4
//   float4 flowParams;                 // Offset:  208 Size:    16
//   float4 noiseParams;                // Offset:  224 Size:    16
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
//   } fogConstants;                    // Offset:   48 Size:   224
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
//   uint oitMaxEntries;                // Offset:  936 Size:     4 [unused]
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
// noiseSampler                      sampler      NA          NA             s3      1 
// flowSampler                       sampler      NA          NA             s5      1 
// emissiveMap                       texture  float4          2d             t0      1 
// emissiveFlowMap                   texture  float4          2d            t21      1 
// flowMap                           texture  float4          2d            t22      1 
// noiseMap                          texture  float4          2d            t24      1 
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
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 1   xyz         3     NONE   float       
// TEXCOORD                 2   xyz         4     NONE   float       
// TEXCOORD                 3   xyz         5     NONE   float       
// OFFPOSITION              0   xyz         6     NONE   float   xyz 
// SV_IsFrontFace           0   x           7    FFACE    uint       
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
dcl_constantbuffer CB2[17], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s3, mode_default
dcl_sampler s5, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_input_ps linear v2.xy
dcl_input_ps linear v6.xyz
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
mul r1.xy, cb0[14].xyxx, cb1[69].wwww
mad r1.xy, v2.xyxx, cb0[14].zzzz, r1.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t24.xyzw, s3
mul r1.xy, r1.xyxx, cb0[14].wwww
mad r1.xy, v2.xyxx, cb0[13].xxxx, r1.xyxx
frc r1.zw, r1.xxxy
mad r2.xy, r1.zwzz, l(-2.000000, -2.000000, 0.000000, 0.000000), l(3.000000, 3.000000, 0.000000, 0.000000)
mul r1.zw, r1.zzzw, r1.zzzw
mul r1.zw, r1.zzzw, r2.xxxy
round_ni r2.xy, r1.xyxx
div r2.xy, r2.xyxx, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r2.xy, r2.xyxx, t22.xyzw, s5
add r2.xy, r2.xyxx, r2.xyxx
add r3.xyzw, r1.xyxy, l(1.000000, 0.000000, 0.000000, 1.000000)
round_ni r3.xyzw, r3.xyzw
div r3.xyzw, r3.xyzw, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r2.zw, r3.xyxx, t22.zwxy, s5
add r2.zw, r2.zzzw, r2.zzzw
sample_indexable(texture2d)(float,float,float,float) r3.xy, r3.zwzz, t22.xyzw, s5
add r3.xy, r3.xyxx, r3.xyxx
add r1.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
round_ni r1.xy, r1.xyxx
div r1.xy, r1.xyxx, cb0[13].xxxx
sample_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t22.xyzw, s5
add r1.xy, r1.xyxx, r1.xyxx
resinfo_indexable(texture2d)(float,float,float,float) r3.zw, l(0), t21.zwxy
mul r3.zw, r3.zzzw, v2.xxxy
deriv_rtx_coarse r4.xy, r3.zwzz
deriv_rty_coarse r3.zw, r3.zzzw
dp2 r4.x, r4.xyxx, r4.xyxx
dp2 r3.z, r3.zwzz, r3.zwzz
max r3.z, r3.z, r4.x
log r3.z, r3.z
mul r3.z, r3.z, l(0.500000)
if_nz cb0[12].x
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, v2.xyxx, t21.xyzw, s1
  mul r3.w, cb0[13].y, cb1[69].w
  mad r5.xy, r2.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r5.xy, r5.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r4.w, r5.xyxx, t21.xyzw, s1, r3.z
  mad r5.xy, r2.zwzz, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r5.xy, r5.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.x, r5.xyxx, t21.wxyz, s1, r3.z
  add r5.x, -r4.w, r5.x
  mad r4.w, r1.z, r5.x, r4.w
  mad r5.xy, r3.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r5.xy, r5.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.x, r5.xyxx, t21.wxyz, s1, r3.z
  mad r5.yz, r1.xxyx, l(0.000000, -1.000000, 1.000000, 0.000000), l(0.000000, 1.000000, -1.000000, 0.000000)
  mad r5.yz, r5.yyzy, r3.wwww, v2.xxyx
  sample_l_indexable(texture2d)(float,float,float,float) r3.w, r5.yzyy, t21.xyzw, s1, r3.z
  add r3.w, -r5.x, r3.w
  mad r3.w, r1.z, r3.w, r5.x
  add r3.w, -r4.w, r3.w
  mad r5.x, r1.w, r3.w, r4.w
else 
  mul r3.w, cb0[13].y, cb1[69].w
  mad r2.xy, r2.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r2.xy, r2.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.xyxx, t21.wxyz, s1, r3.z
  mad r2.xy, r2.zwzz, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r2.xy, r2.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t21.xyzw, s1, r3.z
  add r2.xyz, -r5.yzwy, r2.xyzx
  mad r2.xyz, r1.zzzz, r2.xyzx, r5.yzwy
  mad r3.xy, r3.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r3.xy, r3.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r5.yzw, r3.xyxx, t21.wxyz, s1, r3.z
  mad r1.xy, r1.xyxx, l(-1.000000, 1.000000, 0.000000, 0.000000), l(1.000000, -1.000000, 0.000000, 0.000000)
  mad r1.xy, r1.xyxx, r3.wwww, v2.xyxx
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t21.xyzw, s1, r3.z
  add r3.xyz, -r5.yzwy, r3.xyzx
  mad r1.xyz, r1.zzzz, r3.xyzx, r5.yzwy
  add r1.xyz, -r2.xyzx, r1.xyzx
  mad r4.xyz, r1.wwww, r1.xyzx, r2.xyzx
endif 
add r1.x, -r5.x, l(1.000000)
mul r1.yzw, r4.xxyz, r5.xxxx
mad r0.xyz, r0.xyzx, r1.xxxx, r1.yzwy
mul r1.xyz, r0.xyzx, cb0[11].wwww
lt r1.w, l(0.000000), cb2[9].z
if_nz r1.w
  dp3 r1.w, v6.xyzx, v6.xyzx
  rsq r2.x, r1.w
  mul r2.xyz, r2.xxxx, v6.xyzx
  sqrt r1.w, r1.w
  lt r2.w, l(0.000000), cb2[13].w
  if_nz r2.w
    mad r3.xy, r1.wwww, cb2[15].xyxx, cb2[14].zwzz
    mul r3.xy, r3.xyxx, cb2[16].xyxx
    lt r2.w, l(0.010000), |v6.z|
    mul r3.zw, v6.zzzz, cb2[15].zzzw
    mul r4.xy, r3.zwzz, l(-1.442695, -1.442695, 0.000000, 0.000000)
    exp r4.xy, r4.xyxx
    add r4.xy, -r4.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
    div r3.zw, r4.xxxy, r3.zzzw
    mul r3.zw, r3.zzzw, r3.xxxy
    movc r3.xy, r2.wwww, r3.zwzz, r3.xyxx
    mul r3.xzw, r3.xxxx, cb2[12].xxyz
    exp r3.xzw, r3.xxzw
    mul r4.xyz, r3.yyyy, cb2[12].xyzx
    exp r4.xyz, r4.xyzx
    add r4.xyz, -r3.xzwx, r4.xyzx
    mad r3.xyz, cb2[13].wwww, r4.xyzx, r3.xzwx
  else 
    mad r2.w, r1.w, cb2[15].x, cb2[14].z
    mul r2.w, r2.w, cb2[16].x
    lt r3.w, l(0.010000), |v6.z|
    mul r4.x, v6.z, cb2[15].z
    mul r4.y, r4.x, l(-1.442695)
    exp r4.y, r4.y
    add r4.y, -r4.y, l(1.000000)
    div r4.x, r4.y, r4.x
    mul r4.x, r2.w, r4.x
    movc r2.w, r3.w, r4.x, r2.w
    mul r4.xyz, r2.wwww, cb2[12].xyzx
    exp r3.xyz, r4.xyzx
  endif 
  mad r3.xyz, r3.xyzx, cb2[9].zzzz, l(1.000000, 1.000000, 1.000000, 0.000000)
  add_sat r3.xyz, r3.xyzx, -cb2[9].zzzz
  dp3 r2.x, cb2[7].yzwy, -r2.xyzx
  mad r2.y, -cb2[8].w, cb2[8].w, l(1.000000)
  mad r2.z, cb2[8].w, -r2.x, l(1.000000)
  mul r2.z, r2.z, r2.z
  mul r2.z, r2.z, l(12.566371)
  div r2.y, r2.y, r2.z
  add r1.w, r1.w, -cb2[10].w
  mul_sat r1.w, r1.w, cb2[11].w
  mul r1.w, r1.w, r2.y
  mov_sat r2.x, r2.x
  mad r2.x, r2.x, r2.x, l(1.000000)
  mad r2.x, r2.x, l(0.05968310), l(-1.000000)
  mad r2.x, cb2[8].z, r2.x, l(1.000000)
  mul r2.yzw, r1.wwww, cb2[11].xxyz
  mad r2.xyz, r2.xxxx, cb2[10].xyzx, r2.yzwy
  mul r2.xyz, r2.xyzx, cb2[9].wwww
  add r4.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r2.xyz, r2.xyzx, r4.xyzx
  mad r2.xyz, r1.xyzx, r3.xyzx, r2.xyzx
else 
  mul r1.w, v6.z, cb2[6].x
  mad r2.w, cb2[6].x, v6.z, cb2[5].x
  lt r3.x, |r1.w|, l(0.000100)
  min r3.y, r2.w, l(64.000000)
  mul r3.y, r3.y, l(1.442695)
  exp r3.y, r3.y
  mov_sat r3.z, cb2[6].z
  lt r3.w, r2.w, l(0.000000)
  add r2.w, r2.w, l(1.000000)
  movc r2.w, r3.w, r3.y, r2.w
  add r2.w, r2.w, -cb2[6].z
  movc r1.w, r3.x, l(1.000000), r1.w
  div r1.w, r2.w, r1.w
  movc r1.w, r3.x, r3.z, r1.w
  mul r1.w, r1.w, cb2[5].z
  dp3 r2.w, v6.xyzx, v6.xyzx
  sqrt r3.x, r2.w
  mad r1.w, r1.w, r3.x, cb2[5].w
  exp r1.w, r1.w
  min r1.w, r1.w, l(1.000000)
  add r1.w, -r1.w, l(1.000000)
  rsq r2.w, r2.w
  mul r3.xyz, r2.wwww, v6.xyzx
  dp3 r2.w, cb2[7].yzwy, r3.xyzx
  mad_sat r2.w, cb2[8].y, r2.w, cb2[8].x
  add r3.xyzw, cb2[3].xyzw, -cb2[4].xyzw
  mad r3.xyzw, r2.wwww, r3.xyzw, cb2[4].xyzw
  mul r1.w, r1.w, r3.w
  mad r0.xyz, -r0.xyzx, cb0[11].wwww, r3.xyzx
  mad r2.xyz, r1.wwww, r0.xyzx, r1.xyzx
endif 
mul r0.xyz, r2.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min o0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
mov o0.w, r0.w
ret 
// Approximately 178 instruction slots used
