//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:41:06 2021
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
//   float2 rotateUVs;                  // Offset:  184 Size:     8
//   float2 scrollUVs;                  // Offset:  192 Size:     8
//   float2 scaleUVs;                   // Offset:  200 Size:     8
//   float2 offsetUVs;                  // Offset:  208 Size:     8
//   float2 zoomUVs;                    // Offset:  216 Size:     8
//   float zoomRate;                    // Offset:  224 Size:     4
//   float layerDepth;                  // Offset:  228 Size:     4
//   bool clampU;                       // Offset:  232 Size:     4
//   bool clampV;                       // Offset:  236 Size:     4
//   float2 flickerSeed;                // Offset:  240 Size:     8
//   float flickerSpeed;                // Offset:  248 Size:     4
//   float2 flickerRange;               // Offset:  256 Size:     8
//   float flickerPower;                // Offset:  264 Size:     4
//   float2 wind1Parms;                 // Offset:  272 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  280 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  288 Size:     8 [unused]
//   uint zFeatherComputeSprites;       // Offset:  296 Size:     4
//   float hdrScale;                    // Offset:  300 Size:     4
//   float emissiveFalloffPower;        // Offset:  304 Size:     4
//   float3 emissiveTint1;              // Offset:  308 Size:    12
//   bool relativeHDR;                  // Offset:  320 Size:     4
//   bool invertFalloff;                // Offset:  324 Size:     4
//   float3 scriptControl;              // Offset:  336 Size:    12 [unused]
//   float3 tint1;                      // Offset:  352 Size:    12
//   float3 tint2;                      // Offset:  368 Size:    12
//   float3 tint3;                      // Offset:  384 Size:    12
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
//   uint oitMaxEntries;                // Offset:  936 Size:     4
//   uint numAttenuationVolumes;        // Offset:  940 Size:     4 [unused]
//
// }
//
// Resource bind info for shaderConstantSetBuffer
// {
//
//   struct GpuShaderConstantSet
//   {
//       
//       float4 scriptVector0;          // Offset:    0
//       float4 scriptVector1;          // Offset:   16
//       float4 scriptVector2;          // Offset:   32
//       float4 scriptVector3;          // Offset:   48
//       float4 scriptVector4;          // Offset:   64
//       float4 scriptVector5;          // Offset:   80
//       float4 scriptVector6;          // Offset:   96
//       float4 scriptVector7;          // Offset:  112
//       float4 weaponParam0;           // Offset:  128
//       float4 weaponParam1;           // Offset:  144
//       float4 weaponParam2;           // Offset:  160
//       float4 weaponParam3;           // Offset:  176
//       float4 weaponParam4;           // Offset:  192
//       float4 weaponParam5;           // Offset:  208
//       float4 weaponParam6;           // Offset:  224
//       float4 weaponParam7;           // Offset:  240
//       float4 characterParam0;        // Offset:  256
//       float4 characterParam1;        // Offset:  272
//       float4 characterParam2;        // Offset:  288
//       float4 characterParam3;        // Offset:  304
//       float4 characterParam4;        // Offset:  320
//       float4 characterParam5;        // Offset:  336
//       float4 characterParam6;        // Offset:  352
//       float4 characterParam7;        // Offset:  368
//
//   } $Element;                        // Offset:    0 Size:   384
//
// }
//
// Resource bind info for modelInstanceBuffer
// {
//
//   struct ModelInstanceData
//   {
//       
//       uint boneArrayIndex;           // Offset:    0
//       uint shaderConstantSet;        // Offset:    4
//       uint flagsAndPrevFrameIndex;   // Offset:    8
//       uint worldMatrix;              // Offset:   12
//       uint siegeAnimStateOffset;     // Offset:   16
//       uint prevFrameSiegeAnimStateOffset;// Offset:   20
//
//   } $Element;                        // Offset:    0 Size:    24
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// lookupSampler                     sampler      NA          NA             s3      1 
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// flickerLookupMap                  texture  float4          2d            t21      1 
// emissiveMap                       texture  float4          2d            t22      1 
// alphaMap                          texture  float4          2d            t24      1 
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
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// UVOFFSETS                0   xyz         3     NONE   float   xyz 
// TEXCOORD                 4      w        3     NONE    uint      w
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// OFFPOSITION              0   xyz         7     NONE   float   xyz 
// SV_IsFrontFace           0   x           8    FFACE    uint       
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
dcl_constantbuffer CB0[25], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_constantbuffer CB2[59], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s3, mode_default
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.xyz
dcl_input_ps constant v3.w
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xyz
dcl_output o0.xyzw
dcl_temps 5
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t24.xyzw, s1
eq r0.y, r0.x, l(0.000000)
dp3 r0.z, -v7.xyzx, -v7.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, -v7.xyzx
dp3 r2.x, r1.xyzx, v5.xyzx
dp3 r2.y, r1.xyzx, v6.xyzx
dp3 r0.z, r1.xyzx, v4.xyzx
lt r0.w, l(0.000000), r0.z
div r2.xy, -r2.xyxx, r0.zzzz
and r0.zw, r0.wwww, r2.xxxy
add r2.xy, v2.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
add r1.w, cb0[14].y, l(0.000010)
mul r0.zw, r0.zzzw, r1.wwww
mul r0.zw, r0.zzzw, cb0[12].zzzw
mad r0.zw, r2.xxxy, cb0[12].zzzw, r0.zzzw
mad r0.zw, cb0[13].xxxy, cb0[12].zzzw, r0.zzzw
mad r1.w, cb0[11].w, cb1[69].w, l(1.000000)
mul r1.w, r1.w, cb0[11].z
mul r1.w, r1.w, l(0.01745329)
sincos r2.x, r3.x, r1.w
mov r3.y, r3.x
mov r3.z, r2.x
dp2 r4.x, r3.yzyy, r0.zwzz
mov r3.x, -r2.x
dp2 r4.y, r3.xyxx, r0.zwzz
mul r0.zw, cb0[12].xxxy, cb1[69].wwww
mad r0.zw, r0.zzzw, cb0[12].zzzw, r4.xxxy
mul r1.w, cb0[14].x, cb1[69].w
sincos null, r1.w, r1.w
mad r1.w, r1.w, l(0.500000), l(0.500000)
add r1.w, -r1.w, l(1.000000)
add r2.x, -cb0[13].z, cb0[13].w
mad r1.w, r1.w, r2.x, cb0[13].z
div r0.zw, r0.zzzw, r1.wwww
add r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
mov_sat r2.xy, r0.zwzz
movc r0.zw, cb0[14].zzzw, r2.xxxy, r0.zzzw
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.zwzz, t22.xyzw, s1
if_nz r0.y
  mov o0.xyzw, l(0,0,0,0)
  ret 
endif 
dp3 r0.y, v4.xyzx, v4.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, v4.xxyz
dp3_sat r0.y, r1.xyzx, r0.yzwy
log r0.z, r0.y
mul r0.z, r0.z, cb0[19].x
exp r0.z, r0.z
add r0.y, -r0.y, l(1.000000)
log r0.y, r0.y
mul r0.y, r0.y, cb0[19].x
exp r0.y, r0.y
movc r0.y, cb0[20].y, r0.y, r0.z
eq r0.z, cb0[19].x, l(0.000000)
movc r0.y, r0.z, l(1.000000), r0.y
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.z, v3.w, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyz, r0.z, l(32), t0.yxzx
mov_sat r1.x, r1.x
mul r0.z, r1.x, cb0[18].w
eq r1.xzw, r1.zzzz, l(3.000000, 0.000000, 2.000000, 1.000000)
movc r3.xyz, r1.wwww, cb0[22].xyzx, cb0[19].yzwy
movc r3.xyz, r1.zzzz, cb0[23].xyzx, r3.xyzx
movc r1.xzw, r1.xxxx, cb0[24].xxyz, r3.xxyz
mul r1.xzw, r1.xxzw, r2.xxyz
mul r0.z, r2.w, r0.z
mul r0.y, r0.y, r0.z
mul r0.yzw, r0.yyyy, r1.xxzw
add r1.x, v3.y, v3.x
add r1.x, r1.x, v3.z
add r1.x, r1.x, cb0[15].y
frc r1.x, r1.x
mad r2.y, cb1[69].w, cb0[15].z, r1.x
mov r2.x, cb0[15].x
sample_l_indexable(texture2d)(float,float,float,float) r1.x, r2.xyxx, t21.xyzw, s3, l(0.000000)
log r1.x, |r1.x|
mul r1.x, r1.x, cb0[16].z
exp r1.x, r1.x
add r1.z, -cb0[16].x, cb0[16].y
mad r1.x, r1.x, r1.z, cb0[16].x
mul r0.yzw, r0.yyzw, r1.xxxx
mul r1.xzw, r0.yyzw, cb1[85].xxxx
movc r0.yzw, cb0[20].xxxx, r1.xxzw, r0.yyzw
mul r1.w, r0.x, r1.y
lt r0.x, l(0.000000), cb2[9].z
if_nz r0.x
  dp3 r0.x, v7.xyzx, v7.xyzx
  rsq r2.x, r0.x
  mul r2.xyz, r2.xxxx, v7.xyzx
  sqrt r0.x, r0.x
  lt r2.w, l(0.000000), cb2[13].w
  if_nz r2.w
    mad r3.xy, r0.xxxx, cb2[15].xyxx, cb2[14].zwzz
    mul r3.xy, r3.xyxx, cb2[16].xyxx
    lt r2.w, l(0.010000), |v7.z|
    mul r3.zw, v7.zzzz, cb2[15].zzzw
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
    mad r2.w, r0.x, cb2[15].x, cb2[14].z
    mul r2.w, r2.w, cb2[16].x
    lt r3.w, l(0.010000), |v7.z|
    mul r4.x, v7.z, cb2[15].z
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
  add r0.x, r0.x, -cb2[10].w
  mul_sat r0.x, r0.x, cb2[11].w
  mul r0.x, r0.x, r2.y
  mov_sat r2.x, r2.x
  mad r2.x, r2.x, r2.x, l(1.000000)
  mad r2.x, r2.x, l(0.05968310), l(-1.000000)
  mad r2.x, cb2[8].z, r2.x, l(1.000000)
  mul r2.yzw, r0.xxxx, cb2[11].xxyz
  mad r2.xyz, r2.xxxx, cb2[10].xyzx, r2.yzwy
  mul r2.xyz, r2.xyzx, cb2[9].wwww
  add r4.xyz, -r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul r2.xyz, r2.xyzx, r4.xyzx
  mad r2.xyz, r0.yzwy, r3.xyzx, r2.xyzx
else 
  mul r0.x, v7.z, cb2[6].x
  mad r2.w, cb2[6].x, v7.z, cb2[5].x
  lt r3.x, |r0.x|, l(0.000100)
  min r3.y, r2.w, l(64.000000)
  mul r3.y, r3.y, l(1.442695)
  exp r3.y, r3.y
  mov_sat r3.z, cb2[6].z
  lt r3.w, r2.w, l(0.000000)
  add r2.w, r2.w, l(1.000000)
  movc r2.w, r3.w, r3.y, r2.w
  add r2.w, r2.w, -cb2[6].z
  movc r0.x, r3.x, l(1.000000), r0.x
  div r0.x, r2.w, r0.x
  movc r0.x, r3.x, r3.z, r0.x
  mul r0.x, r0.x, cb2[5].z
  dp3 r2.w, v7.xyzx, v7.xyzx
  sqrt r3.x, r2.w
  mad r0.x, r0.x, r3.x, cb2[5].w
  exp r0.x, r0.x
  min r0.x, r0.x, l(1.000000)
  add r0.x, -r0.x, l(1.000000)
  rsq r2.w, r2.w
  mul r3.xyz, r2.wwww, v7.xyzx
  dp3 r2.w, cb2[7].yzwy, r3.xyzx
  mad_sat r2.w, cb2[8].y, r2.w, cb2[8].x
  add r3.xyzw, cb2[3].xyzw, -cb2[4].xyzw
  mad r3.xyzw, r2.wwww, r3.xyzw, cb2[4].xyzw
  mul r0.x, r0.x, r3.w
  add r3.xyz, -r0.yzwy, r3.xyzx
  mad r2.xyz, r0.xxxx, r3.xyzx, r0.yzwy
endif 
mul r0.xyz, r2.xyzx, cb1[85].yyyy
ge r2.xyz, r0.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r0.xyz, r0.xyzx, r2.xyzx
min r0.xyz, r0.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
max r2.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r1.xyz, r1.wwww, r2.xyzx
and r0.w, r1.w, l(0x7f800000)
ieq r0.w, r0.w, l(0x7f800000)
eq r3.xyzw, r1.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
and r3.xy, r3.zwzz, r3.xyxx
and r2.w, r3.y, r3.x
or r0.w, r0.w, r2.w
if_z r0.w
  ftou r3.xy, v0.xyxx
  bfi r0.w, l(1), l(16), cb0[18].z, l(0)
  iadd r0.w, r0.w, l(1)
  imm_atomic_iadd r4.x, u6, r3.xyxx, r0.w
  and r3.zw, r4.xxxx, l(0, 0, 0x0000ffff, 0x0000ffff)
  ult r0.w, r3.w, cb2[58].z
  if_nz r0.w
    max r0.w, r1.z, r1.y
    max r0.w, r0.w, r1.x
    mov r0.w, |r0.w|
    and r0.w, r0.w, l(0x7f800000)
    iadd r0.w, r0.w, l(0x00800000)
    mad r2.xyz, r2.xyzx, r1.wwww, r0.wwww
    ubfe r2.x, l(8), l(15), r2.x
    ushr r2.yz, r2.yyzy, l(0, 15, 15, 0)
    bfi r2.yz, l(0, 8, 8, 0), l(0, 8, 16, 0), r2.yyzy, l(0, 0, 0, 0)
    iadd r2.x, r2.y, r2.x
    iadd r2.x, r2.z, r2.x
    ishl r0.w, r0.w, l(1)
    iadd r2.xzw, r0.wwww, r2.xxxx
    mov_sat r0.w, r1.w
    mul r0.w, r0.w, l(2046.000000)
    ftou r0.w, r0.w
    ishl r4.x, v0.z, l(2)
    and r0.w, r0.w, l(2046)
    bfi r0.w, l(11), l(0), r0.w, r4.x
    bfi r2.y, l(1), l(0), cb0[18].z, r0.w
    store_uav_typed u7.xyzw, r3.xyzw, r2.xyzw
    mov r0.w, l(-1)
  else 
    mov r0.w, l(0)
  endif 
else 
  mov r0.w, l(-1)
endif 
mul r1.xyz, r1.wwww, r0.xyzx
movc o0.xyzw, r0.wwww, l(0,0,0,0), r1.xyzw
ret 
// Approximately 227 instruction slots used
