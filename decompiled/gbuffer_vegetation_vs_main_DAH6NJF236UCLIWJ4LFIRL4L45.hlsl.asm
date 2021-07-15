//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:43 2021
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
//   float3 colorTint;                  // Offset:  160 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  172 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  176 Size:     8 [unused]
//   float2 wind1Parms;                 // Offset:  184 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  192 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  200 Size:     8 [unused]
//   float2 vertexColorScale;           // Offset:  208 Size:     8
//   float3 treeCanopyScatterColor;     // Offset:  224 Size:    12 [unused]
//   float backsideGlossScale;          // Offset:  236 Size:     4 [unused]
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64
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
//   } weather;                         // Offset:  608 Size:    80
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
// Resource bind info for boneMatrixBuffer
// {
//
//   struct GpuBoneData
//   {
//       
//       float4 mat[3];                 // Offset:    0
//       float4 extra;                  // Offset:   48
//
//   } $Element;                        // Offset:    0 Size:    64
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// boneMatrixBuffer                  texture  struct         r/o             t5      1 
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
// POSITION                 0   xyz         0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy  
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// BLENDWEIGHT              0   xyzw        5     NONE   float   xyzw
// BLENDINDICES             0   xyzw        6     NONE    uint   xyzw
// TEXCOORD                15   x           7     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyz         1     NONE   float   xyz 
// COLOR                    1      w        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[14], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_constantbuffer CB2[39], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xy
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input v7.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.xy
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_temps 9
mad r0.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r1.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r0.w, v4.w, l(2.000000), l(-1.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v7.x, l(0), t4.xxxx
if_nz r1.w
  ne r2.x, v5.x, l(0.000000)
  if_nz r2.x
    iadd r2.x, r1.w, v6.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.x, l(0), t5.xyzw
    dp3 r2.y, r3.xyzx, v0.xyzx
    add r2.y, r3.w, r2.y
    mul r4.x, r2.y, v5.x
    dp3 r2.y, r3.xyzx, r0.xyzx
    mul r5.x, r2.y, v5.x
    dp3 r2.y, r3.xyzx, r1.xyzx
    mul r3.x, r2.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
    dp3 r2.y, r6.xyzx, v0.xyzx
    add r2.y, r6.w, r2.y
    mul r4.y, r2.y, v5.x
    dp3 r2.y, r6.xyzx, r0.xyzx
    mul r5.y, r2.y, v5.x
    dp3 r2.y, r6.xyzx, r1.xyzx
    mul r3.y, r2.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
    dp3 r3.w, r2.xyzx, v0.xyzx
    add r2.w, r2.w, r3.w
    mul r4.z, r2.w, v5.x
    dp3 r2.w, r2.xyzx, r0.xyzx
    mul r5.z, r2.w, v5.x
    dp3 r2.x, r2.xyzx, r1.xyzx
    mul r3.z, r2.x, v5.x
    ne r2.x, v5.y, l(0.000000)
    if_nz r2.x
      iadd r2.x, r1.w, v6.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(0), t5.xyzw
      dp3 r2.y, r6.xyzx, v0.xyzx
      add r2.y, r6.w, r2.y
      mad r4.x, r2.y, v5.y, r4.x
      dp3 r2.y, r6.xyzx, r0.xyzx
      mad r5.x, r2.y, v5.y, r5.x
      dp3 r2.y, r6.xyzx, r1.xyzx
      mad r3.x, r2.y, v5.y, r3.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
      dp3 r2.y, r6.xyzx, v0.xyzx
      add r2.y, r6.w, r2.y
      mad r4.y, r2.y, v5.y, r4.y
      dp3 r2.y, r6.xyzx, r0.xyzx
      mad r5.y, r2.y, v5.y, r5.y
      dp3 r2.y, r6.xyzx, r1.xyzx
      mad r3.y, r2.y, v5.y, r3.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
      dp3 r3.w, r2.xyzx, v0.xyzx
      add r2.w, r2.w, r3.w
      mad r4.z, r2.w, v5.y, r4.z
      dp3 r2.w, r2.xyzx, r0.xyzx
      mad r5.z, r2.w, v5.y, r5.z
      dp3 r2.x, r2.xyzx, r1.xyzx
      mad r3.z, r2.x, v5.y, r3.z
      ne r2.x, v5.z, l(0.000000)
      if_nz r2.x
        iadd r2.x, r1.w, v6.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(0), t5.xyzw
        dp3 r2.y, r6.xyzx, v0.xyzx
        add r2.y, r6.w, r2.y
        mad r4.x, r2.y, v5.z, r4.x
        dp3 r2.y, r6.xyzx, r0.xyzx
        mad r5.x, r2.y, v5.z, r5.x
        dp3 r2.y, r6.xyzx, r1.xyzx
        mad r3.x, r2.y, v5.z, r3.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
        dp3 r2.y, r6.xyzx, v0.xyzx
        add r2.y, r6.w, r2.y
        mad r4.y, r2.y, v5.z, r4.y
        dp3 r2.y, r6.xyzx, r0.xyzx
        mad r5.y, r2.y, v5.z, r5.y
        dp3 r2.y, r6.xyzx, r1.xyzx
        mad r3.y, r2.y, v5.z, r3.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
        dp3 r3.w, r2.xyzx, v0.xyzx
        add r2.w, r2.w, r3.w
        mad r4.z, r2.w, v5.z, r4.z
        dp3 r2.w, r2.xyzx, r0.xyzx
        mad r5.z, r2.w, v5.z, r5.z
        dp3 r2.x, r2.xyzx, r1.xyzx
        mad r3.z, r2.x, v5.z, r3.z
        ne r2.x, v5.w, l(0.000000)
        if_nz r2.x
          iadd r1.w, r1.w, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(0), t5.xyzw
          dp3 r3.w, r2.xyzx, v0.xyzx
          add r2.w, r2.w, r3.w
          mad r4.x, r2.w, v5.w, r4.x
          dp3 r2.w, r2.xyzx, r0.xyzx
          mad r5.x, r2.w, v5.w, r5.x
          dp3 r2.x, r2.xyzx, r1.xyzx
          mad r3.x, r2.x, v5.w, r3.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(16), t5.xyzw
          dp3 r3.w, r2.xyzx, v0.xyzx
          add r2.w, r2.w, r3.w
          mad r4.y, r2.w, v5.w, r4.y
          dp3 r2.w, r2.xyzx, r0.xyzx
          mad r5.y, r2.w, v5.w, r5.y
          dp3 r2.x, r2.xyzx, r1.xyzx
          mad r3.y, r2.x, v5.w, r3.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(32), t5.xyzw
          dp3 r1.w, r2.xyzx, v0.xyzx
          add r1.w, r2.w, r1.w
          mad r4.z, r1.w, v5.w, r4.z
          dp3 r1.w, r2.xyzx, r0.xyzx
          mad r5.z, r1.w, v5.w, r5.z
          dp3 r1.w, r2.xyzx, r1.xyzx
          mad r3.z, r1.w, v5.w, r3.z
        endif 
      endif 
    endif 
  else 
    mov r4.xyz, l(0,0,0,0)
    mov r5.xyz, l(0,0,0,0)
    mov r3.xyz, l(0,0,0,0)
  endif 
  dp3 r1.w, r5.xyzx, r5.xyzx
  rsq r1.w, r1.w
  mul r0.xyz, r1.wwww, r5.xyzx
  dp3 r1.w, r3.xyzx, r3.xyzx
  rsq r1.w, r1.w
  mul r1.xyz, r1.wwww, r3.xyzx
else 
  mov r4.xyz, v0.xyzx
endif 
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v7.x, l(12), t4.xxxx
if_nz r0.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xywz
  mov r7.xyz, r6.xywx
  mov r6.x, r3.w
  mov r6.y, r5.w
else 
  mov r3.xyz, l(1.000000,0,0,0)
  mov r5.xyz, l(0,1.000000,0,0)
  mov r7.xyz, l(0,0,1.000000,0)
  mov r6.xyz, l(0,0,0,0)
endif 
add r6.xyz, r6.xyzx, -cb1[24].xyzx
mov r4.w, l(1.000000)
mov r3.w, r6.x
dp4 r8.x, r4.xyzw, r3.xyzw
mov r5.w, r6.y
dp4 r8.y, r4.xyzw, r5.xyzw
mov r7.w, r6.z
dp4 r8.z, r4.xyzw, r7.xyzw
dp3 r4.x, r0.xyzx, r3.xyzx
dp3 r4.y, r0.xyzx, r5.xyzx
dp3 r4.z, r0.xyzx, r7.xyzx
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul o3.xyz, r0.xxxx, r4.xyzx
dp3 r0.x, r1.xyzx, r3.xyzx
dp3 r0.y, r1.xyzx, r5.xyzx
dp3 r0.z, r1.xyzx, r7.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul o4.xyz, r0.xyzx, r1.xxxx
dp3 r0.x, r2.xyzx, r3.xyzx
dp3 r0.y, r2.xyzx, r5.xyzx
dp3 r0.z, r2.xyzx, r7.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul o5.xyz, r0.xyzx, r1.xxxx
mul r0.xy, v1.xyxx, cb0[13].xyxx
if_nz r0.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r0.w, l(12), t5.xxxx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r0.w, l(28), t5.xxxx
else 
  mov r1.xy, l(0,0,0,0)
endif 
add r2.xyz, r8.xyzx, cb1[24].xyzx
mul r0.z, cb1[69].w, cb2[38].y
mad r0.w, cb1[69].w, cb2[38].y, l(0.500000)
mad r1.z, r0.z, l(0.900000), r2.x
mul r1.xyz, r1.xyzx, l(0.100000, 0.100000, 0.700000, 0.000000)
sincos r1.z, null, r1.z
mad r1.w, r0.w, l(0.700000), r2.x
mul r1.w, r1.w, l(0.700000)
sincos null, r1.w, r1.w
mul r2.w, v0.z, l(0.010000)
mul r3.xy, cb2[38].zwzz, cb2[38].yyyy
mul r3.x, r1.z, r3.x
mul r4.x, r0.y, r3.x
mul r3.x, r1.w, r3.y
mul r4.y, r0.y, r3.x
mul r1.z, r1.w, r1.z
mul r1.z, r2.w, r1.z
mul r4.z, r0.y, r1.z
mul r3.xyz, r4.xyzx, l(0.110000, 0.130000, 0.090000, 0.000000)
mad r0.z, r0.z, l(0.900000), r1.x
mul r0.z, r0.z, l(0.070000)
sincos r0.z, null, r0.z
mad r0.z, r0.z, l(0.500000), l(0.500000)
mad r0.w, r0.w, l(0.700000), r1.y
mul r0.w, r0.w, l(0.070000)
sincos null, r0.w, r0.w
mad r0.z, r0.w, l(0.500000), r0.z
add r0.z, r0.z, l(0.500000)
mul r0.z, r0.z, l(0.500000)
dp2 r0.w, v0.xzxx, v0.xzxx
sqrt r0.w, r0.w
mul r0.w, r0.w, cb2[38].y
mul r0.w, r0.w, cb2[38].z
mul r0.w, r0.z, r0.w
mul r0.w, r0.x, r0.w
mad r3.x, r0.w, l(0.010000), r3.x
dp2 r0.w, v0.yzyy, v0.yzyy
sqrt r0.w, r0.w
mul r0.w, r0.w, cb2[38].y
mul r0.w, r0.w, cb2[38].w
mul r0.z, r0.z, r0.w
mul r0.z, r0.x, r0.z
mad r3.y, r0.z, l(0.010000), r3.y
add r1.xyz, r2.xyzx, r3.xyzx
mul r2.xyzw, cb1[9].xyzw, -cb1[24].yyyy
mad r2.xyzw, -cb1[24].xxxx, cb1[8].xyzw, r2.xyzw
mad r2.xyzw, -cb1[24].zzzz, cb1[10].xyzw, r2.xyzw
add r2.xyzw, r2.xyzw, cb1[11].xyzw
mul r3.xyzw, r1.yyyy, cb1[9].xyzw
mad r3.xyzw, r1.xxxx, cb1[8].xyzw, r3.xyzw
mad r1.xyzw, r1.zzzz, cb1[10].xyzw, r3.xyzw
add o0.xyzw, r2.xyzw, r1.xyzw
mov o1.zw, v1.zzzw
mov o1.xy, r0.xyxx
mov o2.xy, v2.xyxx
ret 
// Approximately 236 instruction slots used
