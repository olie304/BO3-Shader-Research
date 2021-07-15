//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:08 2021
//
//
// Buffer Definitions: 
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
//   float4 gameTime;                   // Offset: 1104 Size:    16 [unused]
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
//   } sunConstants;                    // Offset:  272 Size:   256
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
//   } globalProbeConstants;            // Offset:  560 Size:    48
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
//   uint viewID;                       // Offset:  832 Size:     4
//   uint enableCountDebug;             // Offset:  836 Size:     4
//   uint centerGroupIDx;               // Offset:  840 Size:     4
//   uint centerGroupIDy;               // Offset:  844 Size:     4
//   uint viewmodelSunShadowRaw;        // Offset:  848 Size:     4 [unused]
//   uint debugDrawOverlayType;         // Offset:  852 Size:     4
//   float drawNumLighstScale;          // Offset:  856 Size:     4
//   float drawNumLightsAlpha;          // Offset:  860 Size:     4
//   uint probeDebug;                   // Offset:  864 Size:     4 [unused]
//   float probeDebugRadius;            // Offset:  868 Size:     4 [unused]
//   uint showSunVis;                   // Offset:  872 Size:     4 [unused]
//   uint enableAO;                     // Offset:  876 Size:     4
//   uint showAO;                       // Offset:  880 Size:     4
//   uint numGpuCullTilesWidth;         // Offset:  884 Size:     4 [unused]
//   uint numGpuCullTilesHeight;        // Offset:  888 Size:     4 [unused]
//   int permuteHighlight;              // Offset:  892 Size:     4
//   uint overdrawOverlayMaxValue;      // Offset:  896 Size:     4 [unused]
//   float overdrawOverlayAlpha;        // Offset:  900 Size:     4 [unused]
//   uint overdrawDecals;               // Offset:  904 Size:     4 [unused]
//   uint overdrawDecalsLayers;         // Offset:  908 Size:     4 [unused]
//   uint permuteStride;                // Offset:  912 Size:     4
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
// Resource bind info for gPermutedTilingBuffer
// {
//
//   struct PermutedTilingBuffer
//   {
//       
//       uint2 data;                    // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:     8
//
// }
//
// Resource bind info for lightingDebug
// {
//
//   struct LightingDebug
//   {
//       
//       struct LightingDebugCounts
//       {
//           
//           uint visibleLights;        // Offset:    0
//           uint activeLights;         // Offset:    4
//           uint litLights;            // Offset:    8
//           uint visibleProbes;        // Offset:   12
//           uint activeProbes;         // Offset:   16
//
//       } maxCounts;                   // Offset:    0
//       
//       struct LightingDebugCounts
//       {
//           
//           uint visibleLights;        // Offset:   20
//           uint activeLights;         // Offset:   24
//           uint litLights;            // Offset:   28
//           uint visibleProbes;        // Offset:   32
//           uint activeProbes;         // Offset:   36
//
//       } centerCounts;                // Offset:   20
//       
//       struct LightingDebugCounts
//       {
//           
//           uint visibleLights;        // Offset:   40
//           uint activeLights;         // Offset:   44
//           uint litLights;            // Offset:   48
//           uint visibleProbes;        // Offset:   52
//           uint activeProbes;         // Offset:   56
//
//       } sumDeferredCounts;           // Offset:   40
//       
//       struct LightingDebugCounts
//       {
//           
//           uint visibleLights;        // Offset:   60
//           uint activeLights;         // Offset:   64
//           uint litLights;            // Offset:   68
//           uint visibleProbes;        // Offset:   72
//           uint activeProbes;         // Offset:   76
//
//       } sumForwardCounts;            // Offset:   60
//       float3 cameraWorldPos;         // Offset:   80
//       float3 pickedWldPos;           // Offset:   92
//       uint numPickedLights;          // Offset:  104
//       uint numPickedProbes;          // Offset:  108
//       
//       struct LightingDebugLight
//       {
//           
//           uint flags;                // Offset:  112
//           float3 wldOrigin;          // Offset:  116
//           float activeAttenuation;   // Offset:  128
//           float litAttenuation;      // Offset:  132
//
//       } pickedLights[32];            // Offset:  112
//       
//       struct LightingDebugProbe
//       {
//           
//           uint flags;                // Offset:  880
//           float3 wldOrigin;          // Offset:  884
//           float weight;              // Offset:  896
//
//       } pickedProbes[32];            // Offset:  880
//       uint overdrawHistogram[64];    // Offset: 1520
//       uint overdrawSum;              // Offset: 1776
//       uint overdrawMax;              // Offset: 1780
//       float padding0;                // Offset: 1784
//       float padding1;                // Offset: 1788
//
//   } $Element;                        // Offset:    0 Size:  1792
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// samplerLinear                     sampler      NA          NA             s2      1 
// samplerLinearClamp                sampler      NA          NA             s4      1 
// GBufferDiffuseColor               texture  float4          2d             t0      1 
// GBufferNormalAndGloss             texture  float4          2d             t1      1 
// GBufferSpecularColorAndOcclusion    texture  float4          2d             t2      1 
// GBufferDepth                      texture   float          2d             t4      1 
// gEnvBRDFGeneric                   texture  float2          2d             t5      1 
// gReflectionProbeArray             texture  float3   cubearray             t8      1 
// gProbeXArray                      texture  float3          3d            t17      1 
// gProbeYArray                      texture  float3          3d            t18      1 
// gProbeZArray                      texture  float3          3d            t19      1 
// gPermutedTilingBuffer             texture  struct         r/o            t25      1 
// gSSAOTexture                      texture   float          2d            t27      1 
// gSSAODepthTexture                 texture   float          2d            t28      1 
// litBuffer                             UAV  float3          2d             u0      1 
// lightingDebug                         UAV  struct         r/w             u2      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// LightingGlobals                   cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_constantbuffer CB2[58], immediateIndexed
dcl_sampler s2, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texturecubearray (float,float,float,float) t8
dcl_resource_texture3d (float,float,float,float) t17
dcl_resource_texture3d (float,float,float,float) t18
dcl_resource_texture3d (float,float,float,float) t19
dcl_resource_structured t25, 8
dcl_resource_texture2d (float,float,float,float) t27
dcl_resource_texture2d (float,float,float,float) t28
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_structured u2, 1792
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.x
dcl_input vThreadIDInGroup.xy
dcl_temps 17
dcl_tgsm_raw g0, 4
dcl_tgsm_raw g1, 20
dcl_tgsm_raw g2, 20
dcl_thread_group 8, 8, 1
if_z vThreadIDInGroupFlattened.x
  store_raw g0.x, l(0), l(0)
  store_raw g1.xyzw, l(0), l(0,0,0,0)
  store_raw g1.x, l(16), l(0)
  store_raw g2.xyzw, l(0), l(0,0,0,0)
  store_raw g2.x, l(16), l(0)
endif 
sync_g_t
imad r0.x, cb2[57].x, l(53), vThreadGroupID.x
ld_structured_indexable(structured_buffer, stride=8)(mixed,mixed,mixed,mixed) r0.xy, r0.x, l(0), t25.xyxx
and r0.xy, r0.xyxx, l(4095, 4095, 0, 0)
imad r1.xy, r0.xyxx, l(8, 8, 0, 0), vThreadIDInGroup.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyww, t1.xyzw
ftou r0.zw, cb1[44].xxxy
ult r0.zw, r1.xxxy, r0.zzzw
and r0.z, r0.w, r0.z
lt r0.w, l(0.000000), r2.z
and r0.z, r0.w, r0.z
if_z r0.z
  ret 
endif 
ld_indexable(texture2d)(float,float,float,float) r0.w, r1.xyww, t4.yzwx
ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyww, t2.xyzw
utof r4.xy, r1.xyxx
add r4.xy, r4.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ge r4.z, r0.w, l(0.984375)
mul r4.w, r0.w, l(1.01587307)
mad r0.w, r0.w, l(64.000000), l(-63.000000)
movc r0.w, r4.z, r0.w, r4.w
max r0.w, r0.w, l(0.00000001)
rcp r0.w, r0.w
and r0.z, r0.w, r0.z
mul r4.zw, r4.xxxy, cb1[44].zzzw
gather4_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.zwzz, t27.xyzw, s4.x
gather4_indexable(texture2d)(float,float,float,float) r6.xyzw, r4.zwzz, t28.xyzw, s4.x
mul r4.zw, r4.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
frc r4.zw, r4.zzzw
add r7.xy, -r4.wzww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r8.y, r7.x, r7.y
mul r8.xz, r4.zzwz, r7.xxyx
mul r8.w, r4.w, r4.z
dp4 r0.w, r5.xyzw, r8.xyzw
add r6.xyzw, -r0.zzzz, r6.xyzw
min r4.z, |r6.w|, |r6.z|
min r4.z, r4.z, |r6.y|
min r4.z, r4.z, |r6.x|
max r4.w, |r6.w|, |r6.z|
max r4.w, r4.w, |r6.y|
max r4.w, r4.w, |r6.x|
eq r6.xyz, r4.zzzz, |r6.yzwy|
movc r4.z, r6.x, r5.y, r5.x
movc r4.z, r6.y, r5.z, r4.z
movc r4.z, r6.z, r5.w, r4.z
mul r5.x, r0.z, l(0.010000)
lt r4.w, r5.x, r4.w
movc r0.w, r4.w, r4.z, r0.w
mul r0.w, r0.w, r3.z
if_nz cb2[55].x
  mul r3.z, r0.w, l(0.750000)
  store_uav_typed u0.xyzw, r1.xyyy, r3.zzzz
  ret 
else 
  movc r3.z, cb2[54].w, r0.w, l(1.000000)
endif 
ge r0.w, r2.z, l(0.500000)
ld_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xyww, t0.xyzw
ld_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r6.xyz, r1.xyww, t2.xywz
ld_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r7.xyz, r1.xyww, t2.xywz
ld_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r8.xyz, r1.xyww, t2.xywz
ld_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r9.xyz, r1.xyzw, t2.xywz
add r1.zw, r4.xxxy, -cb1[71].xxxy
mul r1.zw, r1.zzzw, cb1[44].zzzw
mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 2.000000, -2.000000), l(0.000000, 0.000000, -1.000000, 1.000000)
mul r4.x, r1.z, cb1[12].x
mul r4.y, r1.w, cb1[13].y
mov r4.z, l(1.000000)
mul r4.xyz, r0.zzzz, r4.xyzx
mul r10.xyz, r4.yyyy, cb1[17].xyzx
mad r4.xyw, r4.xxxx, cb1[16].xyxz, r10.xyxz
mad r4.xyz, r4.zzzz, cb1[18].xyzx, r4.xywx
mad r0.z, r2.w, l(3.000000), l(0.500000)
ftou r0.z, r0.z
mad r1.zw, r2.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)
mul r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.850000, 0.850000)
dp2 r2.x, r1.zwzz, r1.zwzz
add r10.zw, -r2.xxxx, l(0.000000, 0.000000, 2.000000, 1.000000)
sqrt r2.x, r10.z
mul r10.xy, r1.zwzz, r2.xxxx
and r11.xyzw, r0.zzzz, l(2, 1, 2, 1)
movc r11.xyzw, r11.zwxy, l(-1.000000,-1.000000,1,1), l(1.000000,1.000000,0,0)
xor r0.z, r11.w, r11.z
movc r11.z, r0.z, l(-1.000000), l(1.000000)
mul r2.xyw, r11.xyxz, l(-1.000000, 0.000000, 0.000000, 1.000000)
mul r12.xyz, r11.xyzx, l(1.000000, -2.000000, 1.000000, 0.000000)
mul r10.xyz, r10.xywx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
mul r2.xyw, r2.xyxw, r10.yyyy
mad r2.xyw, r12.xyxz, r10.xxxx, r2.xyxw
mad r10.xyz, r11.xyzx, r10.zzzz, r2.xywx
movc r0.z, r0.w, l(-0.500000), l(-0.00146628)
add r0.z, r0.z, r2.z
mul_sat r2.y, r0.z, l(2.00982332)
dp3 r0.z, -r4.xyzx, -r4.xyzx
rsq r0.z, r0.z
mul r11.xyz, r0.zzzz, -r4.xyzx
dp3_sat r2.x, r10.xyzx, r11.xyzx
dp3 r0.z, -r11.xyzx, r10.xyzx
add r0.z, r0.z, r0.z
mad r11.xyz, r10.xyzx, -r0.zzzz, -r11.xyzx
mul r0.z, r2.y, l(17.000000)
exp r0.z, r0.z
add r0.z, r0.z, l(2.000000)
div r0.z, l(2.000000), r0.z
sqrt r0.z, r0.z
mul r1.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
ftou r1.zw, r1.zzzw
ieq r1.zw, r1.zzzw, r1.xxxy
and r0.w, r1.w, r1.z
add r1.z, -r2.y, l(1.000000)
mul r1.z, r1.z, l(5.000000)
add r12.xyz, r4.xyzx, -cb2[35].xyzx
mul r13.x, r12.x, cb2[35].w
mul r13.yz, r12.yyzy, cb2[36].xxyx
add_sat r12.xyz, r13.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mul r13.xy, r12.xyxx, cb2[36].zwzz
mul r13.z, r12.z, cb2[37].x
add r12.xyz, r13.xyzx, cb2[37].yzwy
lt r13.xyz, l(0.000000, 0.000000, 0.000000, 0.000000), r10.xyzx
movc r13.xyz, r13.xyzx, l(0,0,0,0), l(0.500000,0.500000,0.500000,0)
mov r13.w, l(0)
add r14.xyz, r12.xyzx, r13.wwxw
sample_l_indexable(texture3d)(float,float,float,float) r14.xyz, r14.xyzx, t17.xyzw, s4, l(0.000000)
mul r15.xyz, r10.xyzx, r10.xyzx
mul r15.xyz, r15.xyzx, cb2[19].xxxx
add r16.xyz, r12.xyzx, r13.wwyw
sample_l_indexable(texture3d)(float,float,float,float) r16.xyz, r16.xyzx, t18.xyzw, s4, l(0.000000)
mul r16.xyz, r15.yyyy, r16.xyzx
mad r14.xyz, r14.xyzx, r15.xxxx, r16.xyzx
add r12.xyz, r12.xyzx, r13.wwzw
sample_l_indexable(texture3d)(float,float,float,float) r12.xyz, r12.xyzx, t19.xyzw, s4, l(0.000000)
mad r12.xyz, r12.xyzx, r15.zzzz, r14.xyzx
mov r10.w, l(0)
sample_l_indexable(texturecubearray)(float,float,float,float) r10.xyz, r10.xyzw, t8.xyzw, s2, l(6.000000)
mul r10.xyz, r10.xyzx, r12.xyzx
dp3 r1.w, r10.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
mov r11.w, l(0)
sample_l_indexable(texturecubearray)(float,float,float,float) r11.xyz, r11.xyzw, t8.xyzw, s2, r1.z
add r1.z, -r1.w, cb2[19].x
mad r1.z, r2.y, r1.z, r1.w
mul r11.xyz, r1.zzzz, r11.xyzx
add r1.z, r3.z, r2.x
log r1.z, |r1.z|
mul r0.z, r0.z, r1.z
exp r0.z, r0.z
add r0.z, r3.z, r0.z
add_sat r0.z, r0.z, l(-1.000000)
mul r10.xyz, r3.zzzz, r10.xyzx
mad r1.zw, r2.xxxy, l(0.000000, 0.000000, 0.984375, 0.984375), l(0.000000, 0.000000, 0.00781250, 0.00781250)
sample_l_indexable(texture2d)(float,float,float,float) r1.zw, r1.zwzz, t5.zwxy, s2, l(0.000000)
mul r2.xyz, r0.zzzz, r11.xyzx
mul r11.xyz, r1.zzzz, r2.xyzx
mul r2.xyz, r1.wwww, r2.xyzx
mad r3.xyz, r3.xwyx, l(1.000000, 3.000000, 2.000000, 0.000000), l(0.000000, 0.500000, -1.000000, 0.000000)
ftou r0.z, r3.y
mad r6.xyz, r6.zxyz, l(3.000000, 1.000000, 2.000000, 0.000000), l(0.500000, 0.000000, -1.000000, 0.000000)
ftou r1.z, r6.x
ieq r1.z, r0.z, r1.z
movc r1.zw, r1.zzzz, r6.yyyz, l(0,0,-1.000000,0)
mad r6.xyz, r7.zxyz, l(3.000000, 1.000000, 2.000000, 0.000000), l(0.500000, 0.000000, -1.000000, 0.000000)
ftou r2.w, r6.x
ieq r2.w, r0.z, r2.w
movc r6.xy, r2.wwww, r6.yzyy, l(-1.000000,0,0,0)
mad r7.xyz, r8.zxyz, l(3.000000, 1.000000, 2.000000, 0.000000), l(0.500000, 0.000000, -1.000000, 0.000000)
ftou r2.w, r7.x
ieq r2.w, r0.z, r2.w
movc r6.zw, r2.wwww, r7.yyyz, l(0,0,-1.000000,0)
mad r7.xyz, r9.zxyz, l(3.000000, 1.000000, 2.000000, 0.000000), l(0.500000, 0.000000, -1.000000, 0.000000)
ftou r2.w, r7.x
ieq r0.z, r0.z, r2.w
movc r7.xy, r0.zzzz, r7.yzyy, l(-1.000000,0,0,0)
mov r8.x, r1.z
mov r8.yz, r6.xxzx
mov r8.w, r7.x
add r8.xyzw, -r3.xxxx, r8.xyzw
ge r8.xyzw, |r8.xyzw|, l(0.00902149, 0.00902149, 0.00902149, 0.00902149)
movc r8.xyzw, r8.xyzw, l(0,0,0,0), l(1.000000,1.000000,1.000000,1.000000)
add r0.z, r8.y, r8.x
add r0.z, r8.z, r0.z
add r0.z, r8.w, r0.z
mul r1.z, r6.y, r8.y
mad r1.z, r8.x, r1.w, r1.z
mad r1.z, r8.z, r6.w, r1.z
mad r1.z, r8.w, r7.y, r1.z
div r3.w, r1.z, r0.z
ge r0.z, l(0.000000), r0.z
movc r3.yz, r0.zzzz, l(0,0,0,0), r3.zzwz
and r1.zw, r1.xxxy, l(0, 0, 1, 1)
ieq r0.z, r1.w, r1.z
movc r3.xyz, r0.zzzz, r3.xyzx, r3.xzyx
mad r0.z, -r3.z, l(0.500000), r3.x
add r6.y, r0.z, r3.z
mad r6.z, -r3.y, l(0.500000), r0.z
add r6.x, r3.y, r6.z
add r3.xyz, -r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, r11.xyzx
mad r2.xyz, r2.xyzx, r6.xyzx, r3.xyzx
mad r2.xyz, r10.xyzx, r5.xyzx, r2.xyzx
lt r0.z, l(0.000000), cb2[9].z
if_nz r0.z
  dp3 r0.z, r4.xyzx, r4.xyzx
  rsq r1.z, r0.z
  mul r3.xyz, r1.zzzz, r4.xyzx
  sqrt r0.z, r0.z
  lt r1.z, l(0.000000), cb2[13].w
  if_nz r1.z
    mad r1.zw, r0.zzzz, cb2[15].xxxy, cb2[14].zzzw
    mul r1.zw, r1.zzzw, cb2[16].xxxy
    lt r2.w, l(0.010000), |r4.z|
    mul r5.xy, r4.zzzz, cb2[15].zwzz
    mul r5.zw, r5.xxxy, l(0.000000, 0.000000, -1.442695, -1.442695)
    exp r5.zw, r5.zzzw
    add r5.zw, -r5.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
    div r5.xy, r5.zwzz, r5.xyxx
    mul r5.xy, r1.zwzz, r5.xyxx
    movc r1.zw, r2.wwww, r5.xxxy, r1.zzzw
    mul r5.xyz, r1.zzzz, cb2[12].xyzx
    exp r5.xyz, r5.xyzx
    mul r6.xyz, r1.wwww, cb2[12].xyzx
    exp r6.xyz, r6.xyzx
    add r6.xyz, -r5.xyzx, r6.xyzx
    mad r5.xyz, cb2[13].wwww, r6.xyzx, r5.xyzx
  else 
    mad r1.z, r0.z, cb2[15].x, cb2[14].z
    mul r1.z, r1.z, cb2[16].x
    lt r1.w, l(0.010000), |r4.z|
    mul r2.w, r4.z, cb2[15].z
    mul r3.w, r2.w, l(-1.442695)
    exp r3.w, r3.w
    add r3.w, -r3.w, l(1.000000)
    div r2.w, r3.w, r2.w
    mul r2.w, r1.z, r2.w
    movc r1.z, r1.w, r2.w, r1.z
    mul r6.xyz, r1.zzzz, cb2[12].xyzx
    exp r5.xyz, r6.xyzx
  endif 
  mad r5.xyz, r5.xyzx, cb2[9].zzzz, l(1.000000, 1.000000, 1.000000, 0.000000)
  add_sat r5.xyz, r5.xyzx, -cb2[9].zzzz
  dp3 r1.z, cb2[7].yzwy, -r3.xyzx
  mad r1.w, -cb2[8].w, cb2[8].w, l(1.000000)
  mad r2.w, cb2[8].w, -r1.z, l(1.000000)
  mul r2.w, r2.w, r2.w
  mul r2.w, r2.w, l(12.566371)
  div r1.w, r1.w, r2.w
  add r0.z, r0.z, -cb2[10].w
  mul_sat r0.z, r0.z, cb2[11].w
  mul r0.z, r0.z, r1.w
  mov_sat r1.z, r1.z
  mad r1.z, r1.z, r1.z, l(1.000000)
  mad r1.z, r1.z, l(0.05968310), l(-1.000000)
  mad r1.z, cb2[8].z, r1.z, l(1.000000)
  mul r3.xyz, r0.zzzz, cb2[11].xyzx
  mad r3.xyz, r1.zzzz, cb2[10].xyzx, r3.xyzx
  mul r3.xyz, r3.xyzx, cb2[9].wwww
  add r6.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r3.xyz, r3.xyzx, r6.xyzx
  mad r3.xyz, r2.xyzx, r5.xyzx, r3.xyzx
else 
  mul r0.z, r4.z, cb2[6].x
  mad r1.z, cb2[6].x, r4.z, cb2[5].x
  lt r1.w, |r0.z|, l(0.000100)
  min r2.w, r1.z, l(64.000000)
  mul r2.w, r2.w, l(1.442695)
  exp r2.w, r2.w
  mov_sat r3.w, cb2[6].z
  lt r4.w, r1.z, l(0.000000)
  add r1.z, r1.z, l(1.000000)
  movc r1.z, r4.w, r2.w, r1.z
  add r1.z, r1.z, -cb2[6].z
  movc r0.z, r1.w, l(1.000000), r0.z
  div r0.z, r1.z, r0.z
  movc r0.z, r1.w, r3.w, r0.z
  mul r0.z, r0.z, cb2[5].z
  dp3 r1.z, r4.xyzx, r4.xyzx
  sqrt r1.w, r1.z
  mad r0.z, r0.z, r1.w, cb2[5].w
  exp r0.z, r0.z
  min r0.z, r0.z, l(1.000000)
  add r0.z, -r0.z, l(1.000000)
  rsq r1.z, r1.z
  mul r5.xyz, r1.zzzz, r4.xyzx
  dp3 r1.z, cb2[7].yzwy, r5.xyzx
  mad_sat r1.z, cb2[8].y, r1.z, cb2[8].x
  add r5.xyzw, cb2[3].xyzw, -cb2[4].xyzw
  mad r5.xyzw, r1.zzzz, r5.xyzw, cb2[4].xyzw
  mul r0.z, r0.z, r5.w
  add r5.xyz, -r2.xyzx, r5.xyzx
  mad r3.xyz, r0.zzzz, r5.xyzx, r2.xyzx
endif 
mul r2.xyz, r3.xyzx, cb1[85].yyyy
ge r3.xyz, r2.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r2.xyz, r2.xyzx, r3.xyzx
min r2.xyz, r2.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
ilt r0.z, l(0), cb2[55].w
and r3.xyzw, cb2[55].wwww, l(32, 3, 64, 12)
ine r1.zw, r3.xxxz, l(0, 0, 0, 0)
ieq r3.xy, r3.ywyy, l(1, 4, 0, 0)
and r1.zw, r1.zzzw, r3.xxxy
and r3.xy, r1.zwzz, l(0x3e4ccccd, 0x3e4ccccd, 0, 0)
and r1.z, cb2[55].w, l(16)
ine r1.w, r1.z, l(0)
ieq r1.z, r1.z, l(16)
and r1.z, r1.z, r1.w
and r3.z, r1.z, l(0x3e4ccccd)
mad r3.xyz, r3.xyzx, cb1[85].xxxx, -r2.xyzx
mad r3.xyz, r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r2.xyzx
movc r2.xyz, r0.zzzz, r3.xyzx, r2.xyzx
if_nz cb2[52].y
  if_nz cb2[53].y
    switch cb2[53].y
      case l(1)
      mov r0.z, l(0)
      break 
      case l(2)
      mov r0.z, l(0)
      break 
      case l(3)
      mov r0.z, l(0)
      break 
      case l(4)
      mov r0.z, l(0)
      break 
      case l(5)
      mov r0.z, l(1)
      break 
      default 
      mov r0.z, l(0)
      break 
    endswitch 
    utof r0.z, r0.z
    mul r0.z, r0.z, cb2[53].z
    mad r3.xyz, r0.zzzz, l(0.500000, 0.500000, 0.500000, 0.000000), -r2.xyzx
    mad r2.xyz, cb2[53].wwww, r3.xyzx, r2.xyzx
  endif 
endif 
store_uav_typed u0.xyzw, r1.xyyy, r2.xyzx
if_nz r0.w
  add r1.xyz, r4.xyzx, cb1[24].xyzx
  mov r1.w, l(0)
  store_structured u2.xyzw, cb2[52].x, l(92), r1.xyzw
  store_structured u2.x, cb2[52].x, l(108), l(0)
endif 
if_nz cb2[52].y
  atomic_iadd g1, l(0), l(0)
  atomic_iadd g1, l(4), l(0)
  atomic_iadd g1, l(8), l(0)
  atomic_iadd g1, l(12), l(0)
  atomic_iadd g1, l(16), l(1)
  atomic_umax g2, l(0), l(0)
  atomic_umax g2, l(4), l(0)
  atomic_umax g2, l(8), l(0)
  atomic_umax g2, l(12), l(0)
  atomic_umax g2, l(16), l(1)
  imm_atomic_iadd r1.x, g0, l(0), l(1)
  ieq r0.z, r1.x, l(63)
  if_nz r0.z
    ld_raw r1.xyzw, l(0), g1.xyzw
    mov r2.xz, cb2[52].xxxx
    mov r2.yw, l(0,40,0,44)
    atomic_iadd u2, r2.xyxx, r1.x
    atomic_iadd u2, r2.zwzz, r1.y
    mov r2.xz, cb2[52].xxxx
    mov r2.yw, l(0,48,0,52)
    atomic_iadd u2, r2.xyxx, r1.z
    atomic_iadd u2, r2.zwzz, r1.w
    ld_raw r0.z, l(16), g1.xxxx
    mov r1.xz, cb2[52].xxxx
    mov r1.yw, l(0,56,0,0)
    atomic_iadd u2, r1.xyxx, r0.z
    ld_raw r2.xyzw, l(0), g2.xyzw
    atomic_umax u2, r1.zwzz, r2.x
    mov r1.xz, cb2[52].xxxx
    mov r1.yw, l(0,4,0,8)
    atomic_umax u2, r1.xyxx, r2.y
    atomic_umax u2, r1.zwzz, r2.z
    mov r1.xz, cb2[52].xxxx
    mov r1.yw, l(0,12,0,16)
    atomic_umax u2, r1.xyxx, r2.w
    ld_raw r0.z, l(16), g2.xxxx
    atomic_umax u2, r1.zwzz, r0.z
    ieq r0.xy, r0.xyxx, cb2[52].zwzz
    and r0.x, r0.y, r0.x
    if_nz r0.x
      store_structured u2.xyzw, cb2[52].x, l(20), r2.xyzw
      store_structured u2.x, cb2[52].x, l(36), r0.z
    endif 
  endif 
endif 
ret 
// Approximately 398 instruction slots used
