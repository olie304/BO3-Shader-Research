//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:13 2021
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
//   float2 glossRange;                 // Offset:  176 Size:     8
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
//   float hdrScale;                    // Offset:  248 Size:     4
//   uint zFeatherComputeSprites;       // Offset:  252 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  256 Size:     4
//   float4 levelsControls;             // Offset:  272 Size:    16
//   bool useOldHDRScale;               // Offset:  288 Size:     4
//   float2 scaleUVsAlpha;              // Offset:  292 Size:     8
//   float zFeatherOverride;            // Offset:  300 Size:     4 [unused]
//   float2 scaleUVsColor;              // Offset:  304 Size:     8
//   float2 offsetUVsColor;             // Offset:  312 Size:     8
//   float2 rotateUVsColor;             // Offset:  320 Size:     8
//   float2 scrollUVsColor;             // Offset:  328 Size:     8
//   float2 scaleUVsEmissive;           // Offset:  336 Size:     8
//   float2 offsetUVsEmissive;          // Offset:  344 Size:     8
//   float2 rotateUVsEmissive;          // Offset:  352 Size:     8
//   float2 scrollUVsEmissive;          // Offset:  360 Size:     8
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
// samplerLinear                     sampler      NA          NA             s2      1 
// floatZSampler                     texture  float4          2d             t0      1 
// gEnvBRDFGlass                     texture  float2          2d             t5      1 
// gReflectionProbeArray             texture  float3   cubearray             t8      1 
// colorMap                          texture  float4          2d            t21      1 
// normalMap                         texture  float4          2d            t22      1 
// emissiveMap                       texture  float4          2d            t24      1 
// alphaMap                          texture  float4          2d            t25      1 
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
// TEXCOORD                 0   xyz         4     NONE   float   xyz 
// TEXCOORD                 1   xyzw        5     NONE   float   xyzw
// TEXCOORD                 2   xyzw        6     NONE   float    yz 
// TEXCOORD                 3   xyz         7     NONE   float       
// TEXCOORD                 4   xy          8     NONE   float   xy  
// TEXCOORD                 5     zw        8     NONE   float       
// TEXCOORD                 6   x           9     NONE    uint       
// TEXCOORD                 7   xyz        10     NONE   float   xyz 
// TEXCOORD                 8   xyz        11     NONE   float   xyz 
// NORMAL                   0   xyz        12     NONE   float   xyz 
// TANGENT                  0   xyz        13     NONE   float   xyz 
// TEXCOORD                 9   xyz        14     NONE   float   xyz 
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
dcl_constantbuffer CB2[20], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texturecubearray (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_resource_texture2d (float,float,float,float) t25
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyzw
dcl_input_ps constant v6.yz
dcl_input_ps linear v8.xy
dcl_input_ps linear v10.xyz
dcl_input_ps linear v11.xyz
dcl_input_ps linear v12.xyz
dcl_input_ps linear v13.xyz
dcl_input_ps linear v14.xyz
dcl_output o0.xyzw
dcl_temps 9
dp3 r0.x, v12.xyzx, v12.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v12.xyzx
dp3 r0.w, v13.xyzx, v13.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v13.xyzx
dp3 r0.w, v14.xyzx, v14.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, v14.xyzx
mul r3.xy, cb0[20].zwzz, cb1[69].wwww
mad r0.w, cb0[20].y, cb1[69].w, l(1.000000)
mul r0.w, r0.w, cb0[20].x
mul r0.w, r0.w, l(0.01745329)
sincos r4.x, r5.x, r0.w
mov r6.z, r4.x
mov r6.y, r5.x
mov r6.x, -r4.x
mul r3.zw, cb0[19].xxxy, cb0[19].zzzw
div r4.xy, v4.xyxx, v4.zzzz
add r4.zw, r4.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
mad r3.zw, r4.zzzw, cb0[19].xxxy, r3.zzzw
dp2 r5.x, r6.yzyy, r3.zwzz
dp2 r5.y, r6.xyxx, r3.zwzz
mad r3.xy, r3.xyxx, cb0[19].xyxx, r5.xyxx
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
deriv_rtx_coarse r3.zw, r4.xxxy
deriv_rty_coarse r5.xy, r4.xyxx
mul r4.xy, r4.xyxx, cb0[18].yzyy
sample_d_indexable(texture2d)(float,float,float,float) r0.w, r4.xyxx, t25.yzwx, s1, r3.zwzz, r5.xyxx
sample_d_indexable(texture2d)(float,float,float,float) r6.xyz, r3.xyxx, t22.xyzw, s1, r3.zwzz, r5.xyxx
sample_d_indexable(texture2d)(float,float,float,float) r7.xyzw, r3.xyxx, t21.xyzw, s1, r3.zwzz, r5.xyxx
mad r3.xy, r6.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.w, r6.z, r6.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
mul r2.xyz, r2.xyzx, r3.yyyy
mad r1.xyz, r1.xyzx, r3.xxxx, r2.xyzx
dp2 r2.x, r3.xyxx, r3.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r2.x, r2.x
mad r0.xyz, r0.xyzx, r2.xxxx, r1.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul r0.xyz, r0.xyzx, r1.xxxx
dp3 r1.x, -v5.xyzx, -v5.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, -v5.xyzx
dp3 r2.x, -r1.xyzx, r0.xyzx
add r2.x, r2.x, r2.x
mad r2.xyz, r0.xyzx, -r2.xxxx, -r1.xyzx
dp3_sat r0.x, r0.xyzx, r1.xyzx
dp3 r0.z, r1.xyzx, v12.xyzx
mul r0.z, r0.z, r0.z
mad_sat r0.z, r0.z, v8.x, v8.y
mul_sat r1.x, cb0[11].y, l(0.05882353)
mul r1.x, r1.x, l(-17.000000)
exp r1.x, r1.x
add r1.x, r1.x, r1.w
log r1.x, r1.x
mul r1.x, r1.x, l(-0.05882353)
max r0.y, r1.x, l(0.000000)
add r1.x, -r0.y, l(1.000000)
mad r0.xy, r0.xyxx, l(0.984375, 0.984375, 0.000000, 0.000000), l(0.00781250, 0.00781250, 0.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyxx, t5.xyzw, s2, l(0.000000)
mul r1.x, r1.x, l(6.000000)
ftou r1.x, r1.x
utof r1.x, r1.x
mov r2.w, l(0)
sample_l_indexable(texturecubearray)(float,float,float,float) r1.xyz, r2.xyzw, t8.xyzw, s2, r1.x
mul r1.xyz, r1.xyzx, cb2[19].xxxx
mul r2.xyz, r0.yyyy, r1.xyzx
mul r1.xyz, r0.xxxx, r1.xyzx
mul r6.xyz, v2.xyzx, l(0.014000, 0.014000, 0.014000, 0.000000)
mul r2.xyz, r2.xyzx, r6.xyzx
mad r6.xyz, -v2.xyzx, l(0.014000, 0.014000, 0.014000, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
mad r1.xyz, r1.xyzx, r6.xyzx, r2.xyzx
add r0.x, r1.y, r1.x
add r0.x, r1.z, r0.x
mul r0.x, r0.x, l(0.33333334)
dp3 r0.y, v1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r0.y, r0.y, l(0.000100)
min r1.x, r0.y, cb1[85].x
max r0.y, r0.y, cb1[85].x
mul r0.y, r0.y, cb0[15].z
mul r0.y, r0.y, v5.w
movc r0.y, cb0[18].x, cb0[15].z, r0.y
div r1.x, r1.x, cb2[19].x
mul r0.x, r0.x, r1.x
dp3 r1.x, r7.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.xyz, -r7.xyzx, r1.xxxx
mad r1.xyz, cb0[16].xxxx, r1.xyzx, r7.xyzx
max r1.w, r7.w, l(0.000100)
div_sat r2.xyz, r1.xyzx, r1.wwww
add_sat r2.xyz, r2.xyzx, -cb0[17].xxxx
add r3.xy, -cb0[17].xzxx, cb0[17].ywyy
max r2.w, r3.x, l(0.000100)
div r2.xyz, r2.xyzx, r2.wwww
min r2.xyz, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r2.xyz, r2.xyzx, r3.yyyy, cb0[17].zzzz
add r6.xyz, r2.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r6.xyz, |r6.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r6.xyz, r6.xyzx
mul r6.xyz, r6.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r6.xyz, r6.xyzx
ge r8.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r2.xyzx
mul r2.xyz, r2.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
movc r2.xyz, r8.xyzx, r2.xyzx, r6.xyzx
mul r2.xyz, r7.wwww, r2.xyzx
eq r6.xyzw, cb0[17].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r2.w, r6.y, r6.x
and r2.w, r6.z, r2.w
and r2.w, r6.w, r2.w
movc r7.xyz, r2.wwww, r1.xyzx, r2.xyzx
div r1.xyz, r7.xyzx, r1.wwww
add r1.w, r7.w, v1.w
mad_sat r2.y, r1.w, v6.y, -v6.y
mul r2.xzw, r1.xxyz, r2.yyyy
ne r1.x, v6.y, l(1.000000)
movc r6.xyzw, r1.xxxx, r2.xzwy, r7.xyzw
ftoi r7.xy, v0.xyxx
mov r7.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.y, r7.xyzw, t0.yxzw
ge r1.z, r1.y, l(0.984375)
mul r1.w, r1.y, l(1.01587307)
mad r1.y, r1.y, l(64.000000), l(-63.000000)
movc r1.y, r1.z, r1.y, r1.w
max r1.y, r1.y, l(0.00000001)
ge r1.z, v0.z, l(0.984375)
mul r1.w, v0.z, l(1.01587307)
mad r2.z, v0.z, l(64.000000), l(-63.000000)
movc r1.z, r1.z, r2.z, r1.w
max r1.z, r1.z, l(0.00000001)
rcp r1.yz, r1.yyzy
add r1.w, -r1.z, r1.y
lt r1.y, r1.z, r1.y
eq r1.z, v6.z, l(0.000000)
div r2.z, l(1.000000, 1.000000, 1.000000, 1.000000), v6.z
movc r1.z, r1.z, l(60000.000000), r2.z
mul_sat r1.z, r1.z, r1.w
movc r1.y, r1.y, r1.z, l(1.000000)
mul r6.xyzw, r1.yyyy, r6.xyzw
mov r2.x, l(1.000000)
movc r1.xz, r1.xxxx, r2.xxyx, v1.wwww
mul r2.xyzw, r1.xxxx, r6.xyzw
mul r1.x, r1.y, r1.z
mul r1.x, r0.z, r1.x
mul r2.xyzw, r0.zzzz, r2.xyzw
mul r2.xyzw, r0.wwww, r2.xyzw
mul r0.x, r0.x, r2.w
mul r0.zw, cb0[21].xxxy, cb0[21].zzzw
mad r0.zw, r4.zzzw, cb0[21].xxxy, r0.zzzw
mad r1.y, cb0[22].y, cb1[69].w, l(1.000000)
mul r1.y, r1.y, cb0[22].x
mul r1.y, r1.y, l(0.01745329)
sincos r3.x, r4.x, r1.y
mov r6.z, r3.x
mov r6.y, r4.x
mov r6.x, -r3.x
dp2 r3.y, r6.xyxx, r0.zwzz
dp2 r3.x, r6.yzyy, r0.zwzz
mul r0.zw, cb0[22].zzzw, cb1[69].wwww
mad r0.zw, r0.zzzw, cb0[21].xxxy, r3.xxxy
add r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
sample_d_indexable(texture2d)(float,float,float,float) r0.z, r0.zwzz, t24.yzxw, s1, r3.zwzz, r5.xyxx
mul r0.z, r1.x, r0.z
mul r0.y, r0.z, r0.y
mad r0.yzw, v2.xxyz, r0.yyyy, v1.xxyz
mad r0.xyz, r2.xyzx, r0.yzwy, r0.xxxx
mad r0.xyz, -v3.xyzx, r2.wwww, r0.xyzx
mul r1.xyz, r2.wwww, v3.xyzx
mad r0.xyz, v3.wwww, r0.xyzx, r1.xyzx
mul r1.xyz, r2.wwww, v11.xyzx
mov o0.w, r2.w
mad r0.xyz, r0.xyzx, v10.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, cb1[85].yyyy
ge r1.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r1.xyzx
min o0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
ret 
// Approximately 180 instruction slots used
