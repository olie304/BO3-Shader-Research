//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:39 2021
//
//
// Buffer Definitions: 
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64 [unused]
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64
//   row_major float4x4 inverseViewProjectionMatrix;// Offset:  320 Size:    64 [unused]
//   float4 eyeOffset;                  // Offset:  384 Size:    16
//   float4 adsZScale;                  // Offset:  400 Size:    16 [unused]
//   float4 hdrControl0;                // Offset:  416 Size:    16 [unused]
//   float4 hdrControl1;                // Offset:  432 Size:    16 [unused]
//   float4 fogColor;                   // Offset:  448 Size:    16
//   float4 fogConsts;                  // Offset:  464 Size:    16
//   float4 fogConsts2;                 // Offset:  480 Size:    16
//   float4 fogConsts3;                 // Offset:  496 Size:    16
//   float4 fogConsts4;                 // Offset:  512 Size:    16
//   float4 fogConsts5;                 // Offset:  528 Size:    16
//   float4 fogConsts6;                 // Offset:  544 Size:    16
//   float4 fogConsts7;                 // Offset:  560 Size:    16
//   float4 fogConsts8;                 // Offset:  576 Size:    16 [unused]
//   float4 fogConsts9;                 // Offset:  592 Size:    16
//   float3 sunFogDir;                  // Offset:  608 Size:    12
//   float4 sunFogColor;                // Offset:  624 Size:    16
//   float2 sunFog;                     // Offset:  640 Size:     8
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
//   } outdoorSSTConstants;             // Offset:  688 Size:    96
//   float4 pinToWorldZ;                // Offset:  784 Size:    16
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
// Resource bind info for outdoorOcclusionTree
// {
//
//   uint $Element;                     // Offset:    0 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// outdoorOcclusionTree              texture  struct         r/o             t0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// LightingGlobals                   cbuffer      NA          NA            cb2      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyz         2     NONE    uint   xyz 
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyzw        5     NONE   float   xyzw
// TEXCOORD                 3   xyzw        6     NONE    uint   xyzw
// SV_VertexID              0   x           7   VERTID    uint   x   
// TEXCOORD                15   x           8     NONE    uint       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// COLOR                    2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xyzw        3     NONE   float   xyzw
// TEXCOORD                 1   xyzw        4     NONE   float   xyzw
// TEXCOORD                 2   xyzw        5     NONE   float   xyzw
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// TEXCOORD                 4   xy          7     NONE   float   xy  
// TEXCOORD                 5     zw        7     NONE   float     zw
// TEXCOORD                 6   x           8     NONE    uint   x   
// TEXCOORD                 7   xyz         9     NONE   float   xyz 
// TEXCOORD                 8   xyz        10     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[41], immediateIndexed
dcl_constantbuffer CB2[50], immediateIndexed
dcl_resource_structured t0, 4
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyz
dcl_input v3.xyz
dcl_input v4.xyz
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input_sgv v7.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyz
dcl_output o7.xy
dcl_output o7.zw
dcl_output o8.x
dcl_output o9.xyz
dcl_output o10.xyz
dcl_temps 10
and r0.xy, v7.xxxx, l(3, 2, 0, 0)
utof r0.z, r0.y
bfi r1.x, l(2), l(1), v7.x, l(0)
xor r0.x, r0.x, r1.x
and r0.x, r0.x, l(2)
utof r0.x, r0.x
add r0.xy, r0.xzxx, l(-1.000000, -1.000000, 0.000000, 0.000000)
mov r0.w, -r0.x
add r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
mad r1.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r2.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
and r3.xyz, v6.zzzz, l(4, 1, 2, 0)
add r4.xyz, -v0.yzxy, cb1[24].yzxy
dp3 r1.w, r4.xyzx, r4.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, r4.xyzx
mul r5.xyz, r4.xyzx, cb1[17].zxyz
mad r5.xyz, cb1[17].yzxy, r4.yzxy, -r5.xyzx
dp3 r1.w, r5.xyzx, r5.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, r5.xyzx
movc r5.xyz, r3.yyyy, r5.xyzx, cb1[16].xyzx
movc r4.xy, r3.yyyy, r4.zxzz, -cb1[18].xyxx
mov r4.zw, -r4.yyyy
dp2 r1.w, r4.xzxx, r4.xwxx
rsq r1.w, r1.w
mul r6.x, r1.w, -r4.y
mul r6.y, r1.w, r4.x
mov r6.z, l(0)
movc r4.xyz, r3.zzzz, l(0,0,1.000000,0), cb1[17].xyzx
movc r3.yzw, r3.zzzz, r6.xxyz, r5.xxyz
movc r1.xyz, r3.xxxx, r1.xyzx, r4.xyzx
movc r2.xyz, r3.xxxx, r2.xyzx, r3.yzwy
utof r3.xyz, v6.wxyw
mul r3.xyz, r3.xyzx, l(0.00009587, 0.00390625, 0.062500, 0.000000)
sincos r3.x, r4.x, r3.x
mul r4.yzw, r1.xxyz, r3.xxxx
mad r4.yzw, r2.xxyz, r4.xxxx, r4.yyzw
mul r1.xyz, r1.xyzx, r4.xxxx
mad r1.xyz, r2.xyzx, r3.xxxx, -r1.xyzx
mul r2.xyz, r4.zwyz, r1.zxyz
mad r2.xyz, r1.yzxy, r4.wyzw, -r2.xyzx
dp3 r1.w, r2.xyzx, r2.xyzx
rsq r1.w, r1.w
mul o6.xyz, r1.wwww, r2.xyzx
mul r2.xyz, r4.yzwy, v5.zzzz
mul r1.xyz, r1.xyzx, v5.wwww
mad r4.xyz, r2.xyzx, v5.xxxx, v0.xyzx
mad r4.xyz, r1.xyzx, v5.yyyy, r4.xyzx
mul r1.xyz, r0.xxxx, r1.xyzx
mad r1.xyz, r2.xyzx, r0.yyyy, -r1.xyzx
add r1.xyz, r1.xyzx, r4.xyzx
and r0.xy, v2.xyxx, l(255, 0x0000ffff, 0, 0)
ushr r2.xy, v2.xyxx, l(28, 16, 0, 0)
ubfe r4.xyz, l(8, 4, 8, 0), l(8, 24, 16, 0), v2.xxxx
utof r1.w, r4.z
mul r1.w, r1.w, l(0.00390625)
mov r4.w, r2.x
ishl r2.zw, r4.yyyw, l(0, 0, 23, 23)
iadd r2.zw, -r2.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
ubfe r3.x, r4.y, l(0), r0.x
ubfe r0.x, r2.x, r4.y, r0.x
ubfe r3.w, r4.y, l(0), r4.x
ubfe r2.x, r2.x, r4.y, r4.x
utof r4.y, r0.x
utof r4.xz, r3.xxwx
utof r4.w, r2.x
mul r3.xw, r0.zzzw, r2.zzzw
mad r5.xy, r4.xyxx, r2.zwzz, r3.xwxx
mad r5.zw, r4.zzzw, r2.zzzw, r3.xxxw
movc o3.xyzw, v2.xxxx, r5.xyzw, r0.zwzw
movc o5.x, v2.x, r1.w, l(0)
utof r0.x, r0.y
utof r0.y, r2.y
eq r1.w, r0.x, l(0.000000)
eq r2.x, r0.y, l(0.000000)
and r1.w, r1.w, r2.x
mul r0.xy, r0.xyxx, l(0.01745329, 0.01745329, 0.000000, 0.000000)
sincos null, r0.xy, r0.xyxx
mul r0.x, r0.x, r0.x
mad r0.y, -r0.y, r0.y, r0.x
div r2.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
mad r2.y, -r0.x, r2.x, l(1.000000)
movc o7.xy, r1.wwww, l(0,1.000000,0,0), r2.xyxx
f16tof32 o4.w, v2.z
ushr o8.x, v2.z, l(16)
mul r2.xyzw, cb1[9].xyzw, -cb1[24].yyyy
mad r2.xyzw, -cb1[24].xxxx, cb1[8].xyzw, r2.xyzw
mad r2.xyzw, -cb1[24].zzzz, cb1[10].xyzw, r2.xyzw
add r2.xyzw, r2.xyzw, cb1[11].xyzw
mul r4.xyzw, r1.yyyy, cb1[9].xyzw
mad r4.xyzw, r1.xxxx, cb1[8].xyzw, r4.xyzw
mad r4.xyzw, r1.zzzz, cb1[10].xyzw, r4.xyzw
add r2.xyzw, r2.xyzw, r4.xyzw
add r4.xyz, r1.xyzx, -cb1[24].xyzx
lt r0.x, l(0.000000), cb1[32].w
if_nz r0.x
  dp3 r0.x, r4.xyzx, r4.xyzx
  rsq r0.y, r0.x
  mul r5.xyz, r0.yyyy, r4.xyzx
  sqrt r0.x, r0.x
  dp3 r0.y, cb1[38].xyzx, -r5.xyzx
  mad r1.w, -cb1[31].w, cb1[31].w, l(1.000000)
  mad r3.x, cb1[31].w, -r0.y, l(1.000000)
  mul r3.x, r3.x, r3.x
  mul r3.x, r3.x, l(12.566371)
  div r1.w, r1.w, r3.x
  add r3.x, r0.x, -cb1[37].z
  mul_sat r3.x, r3.x, cb1[37].w
  mul r1.w, r1.w, r3.x
  mad r0.x, r0.x, cb1[35].x, cb1[34].w
  mul r0.x, r0.x, cb1[35].z
  lt r3.x, l(0.010000), |r4.z|
  mul r3.w, r4.z, cb1[35].y
  mul r4.w, r3.w, l(-1.442695)
  exp r4.w, r4.w
  add r4.w, -r4.w, l(1.000000)
  div r3.w, r4.w, r3.w
  mul r3.w, r0.x, r3.w
  movc r0.x, r3.x, r3.w, r0.x
  mul r5.xyz, r0.xxxx, cb1[33].xyzx
  exp r5.xyz, r5.xyzx
  mad r5.xyz, r5.xyzx, cb1[32].wwww, l(1.000000, 1.000000, 1.000000, 0.000000)
  add_sat r5.xyz, r5.xyzx, -cb1[32].wwww
  mov_sat r0.y, r0.y
  mad r0.x, r0.y, r0.y, l(1.000000)
  mad r0.x, r0.x, l(0.05968310), l(-1.000000)
  mad r0.x, cb1[35].w, r0.x, l(1.000000)
  mul r6.xyz, r1.wwww, cb1[32].xyzx
  mad r6.xyz, r0.xxxx, cb1[31].xyzx, r6.xyzx
  mul r6.xyz, r6.xyzx, cb1[33].wwww
  add r7.xyz, -r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
  mul o10.xyz, r6.xyzx, r7.xyzx
  mov o9.xyz, r5.xyzx
  mov o2.xyzw, l(0,0,0,1.000000)
else 
  mul r0.x, r4.z, cb1[29].w
  mad r0.y, cb1[29].w, r4.z, cb1[29].x
  lt r1.w, |r0.x|, l(0.000100)
  min r3.x, r0.y, l(64.000000)
  mul r3.x, r3.x, l(1.442695)
  exp r3.x, r3.x
  mov_sat r3.w, cb1[30].x
  lt r4.w, r0.y, l(0.000000)
  add r0.y, r0.y, l(1.000000)
  movc r0.y, r4.w, r3.x, r0.y
  add r0.y, r0.y, -cb1[30].x
  movc r0.x, r1.w, l(1.000000), r0.x
  div r0.x, r0.y, r0.x
  movc r0.x, r1.w, r3.w, r0.x
  mul r0.x, r0.x, cb1[29].y
  dp3 r0.y, r4.xyzx, r4.xyzx
  sqrt r1.w, r0.y
  mad r0.x, r0.x, r1.w, cb1[29].z
  exp r0.x, r0.x
  min r0.x, r0.x, l(1.000000)
  rsq r0.y, r0.y
  mul r5.xyz, r0.yyyy, r4.xyzx
  dp3 r0.y, cb1[38].xyzx, r5.xyzx
  mad_sat r0.y, cb1[40].y, r0.y, cb1[40].x
  add r5.xyzw, cb1[28].xyzw, -cb1[39].xyzw
  mad r5.xyzw, r0.yyyy, r5.xyzw, cb1[39].xyzw
  add r0.x, -r0.x, l(1.000000)
  mad o2.w, -r0.x, r5.w, l(1.000000)
  mov o9.xyz, l(1.000000,1.000000,1.000000,0)
  mov o10.xyz, l(0,0,0,0)
  mov o2.xyz, r5.xyzx
endif 
max r0.x, r3.z, l(0.100000)
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
ge r0.y, l(1.000000), r0.x
mul_sat r0.x, r0.x, r2.w
mul r0.x, r0.x, v1.w
movc r0.x, r0.y, r0.x, v1.w
mul r1.yw, r1.yyyy, cb2[45].xxxy
mad r1.xy, r1.xxxx, cb2[44].xyxx, r1.ywyy
mad r1.xy, r1.zzzz, cb2[46].xyxx, r1.xyxx
add r5.xy, r1.xyxx, cb2[47].xyxx
mul r1.xyw, cb2[43].zxzy, l(128.000000, 0.500000, 0.000000, 0.500000)
rcp r6.xz, r1.xxxx
mov r6.y, -r6.z
mad r1.xyw, r5.xyxx, r6.xyxz, r1.ywyy
add r6.xyz, cb2[43].xyxx, l(-0.00781250, -0.00781250, -0.00781250, 0.000000)
max r1.xyw, r1.xyxw, l(0.000000, 0.000000, 0.000000, 0.000000)
min r1.xyw, r6.xyxz, r1.xyxw
round_ni r3.xw, r1.wwwy
mad r0.y, r3.w, cb2[43].x, r3.x
ftou r0.y, r0.y
ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r3.x, r0.y, l(0), t0.xxxx
and r3.w, r3.x, l(0x40000000)
ishl r5.z, r3.x, l(2)
if_z r3.w
  and r3.w, r3.x, l(0x01ffffff)
  iadd r6.x, r0.y, r3.w
  ushr r0.y, r3.x, l(25)
  utof r0.y, r0.y
  mul r1.xyw, r0.yyyy, r1.xyxw
  frc r1.xyw, r1.xyxw
  mul r1.xyw, r1.xyxw, l(128.000000, 128.000000, 0.000000, 128.000000)
  ftou r1.xyw, r1.xyxw
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r6.z, r6.x, l(0), t0.xxxx
  ushr r3.xw, r1.wwwy, l(6, 0, 0, 6)
  and r0.y, r6.z, l(0xc0000000)
  iadd r4.w, r6.x, l(1)
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t0.xxxx
  movc r3.w, r3.w, r6.z, r4.w
  ushr r4.w, r3.w, l(13)
  movc r3.x, r3.x, r4.w, r3.w
  and r3.x, r3.x, l(8191)
  iadd r7.x, r3.x, r6.x
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.z, r7.x, l(0), t0.xxxx
  mov r6.y, l(0)
  mov r7.y, l(1)
  movc r7.xyz, r0.yyyy, r6.xyzx, r7.xyzx
  movc r8.yz, r0.yyyy, l(0,6,1,0), l(0,5,2,0)
  ushr r3.xw, r1.wwwy, r8.yyyy
  and r3.xw, r3.xxxw, l(1, 0, 0, 1)
  and r4.w, r7.z, l(0xc0000000)
  iadd r5.w, r7.x, l(1)
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r5.w, r5.w, l(0), t0.xxxx
  movc r3.w, r3.w, r7.z, r5.w
  ushr r5.w, r3.w, l(13)
  movc r3.x, r3.x, r5.w, r3.w
  and r3.x, r3.x, l(8191)
  iadd r8.x, r3.x, r7.x
  ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.w, r8.x, l(0), t0.xxxx
  movc r7.xyz, r4.wwww, r7.xyzx, r8.xzwx
  movc r6.xyz, r0.yyyy, r6.xyzx, r7.xyzx
  and r0.y, r6.z, l(0xc0000000)
  if_z r0.y
    iadd r0.y, -r6.y, l(6)
    ushr r3.xw, r1.wwwy, r0.yyyy
    or r0.y, r6.z, l(0x40000000)
    bfi r3.w, l(1), l(1), r3.w, l(0)
    bfi r3.x, l(1), l(0), r3.x, r3.w
    imul null, r3.x, r3.x, l(10)
    ushr r0.y, r0.y, r3.x
    and r0.y, r0.y, l(1023)
    iadd r7.x, r0.y, r6.x
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r7.w, r7.x, l(0), t0.xxxx
    iadd r7.yz, r6.yyyy, l(0, 1, 2, 0)
    iadd r0.y, -r7.y, l(6)
    ushr r3.xw, r1.wwwy, r0.yyyy
    and r0.y, r7.w, l(0xc0000000)
    or r4.w, r7.w, l(0x40000000)
    bfi r3.w, l(1), l(1), r3.w, l(0)
    bfi r3.x, l(1), l(0), r3.x, r3.w
    imul null, r3.x, r3.x, l(10)
    ushr r3.x, r4.w, r3.x
    and r3.x, r3.x, l(1023)
    iadd r8.x, r3.x, r7.x
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r8.z, r8.x, l(0), t0.xxxx
    mov r8.y, r7.z
    movc r8.xyz, r0.yyyy, r7.xywx, r8.xyzx
    iadd r3.x, -r8.y, l(6)
    ushr r3.xw, r1.wwwy, r3.xxxx
    and r4.w, r8.z, l(0xc0000000)
    or r5.w, r8.z, l(0x40000000)
    bfi r3.w, l(1), l(1), r3.w, l(0)
    bfi r3.x, l(1), l(0), r3.x, r3.w
    imul null, r3.x, r3.x, l(10)
    ushr r3.x, r5.w, r3.x
    and r3.x, r3.x, l(1023)
    iadd r9.x, r3.x, r8.x
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r9.y, r9.x, l(0), t0.xxxx
    movc r3.xw, r4.wwww, r8.xxxz, r9.xxxy
    movc r6.xz, r0.yyyy, r7.xxwx, r3.xxwx
  endif 
  and r0.y, r6.z, l(0xc0000000)
  if_z r0.y
    ubfe r3.x, l(14), l(15), r6.z
    utof r3.x, r3.x
    mul r3.x, r3.x, cb2[43].w
    and r6.yw, r6.zzzz, l(0, 0x00007fff, 0, 0x20000000)
    utof r3.w, r6.y
    mul r3.w, r3.w, cb2[43].w
    mul r3.xw, r3.xxxw, l(0.00006104, 0.000000, 0.000000, 0.00003052)
    and r4.w, r1.y, l(3)
    iadd r4.w, r4.w, r6.x
    iadd r4.w, r4.w, l(1)
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r4.w, r4.w, l(0), t0.xxxx
    bfi r7.xyz, l(2, 2, 1, 0), l(3, 1, 4, 0), r1.xywx, l(0, 0, 0, 0)
    ushr r1.x, r4.w, r7.x
    and r1.x, r1.x, l(255)
    utof r1.x, r1.x
    mul r1.x, r3.w, r1.x
    mad r1.x, r1.x, l(0.00392157), r3.x
    iadd r1.y, r7.y, l(1)
    ubfe r1.w, l(1), l(1), r1.w
    iadd r1.y, r1.w, r1.y
    iadd r1.y, r1.y, r6.x
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.y, r1.y, l(0), t0.xxxx
    ushr r1.y, r1.y, r7.z
    and r1.y, r1.y, l(0x0000ffff)
    utof r1.y, r1.y
    mul r1.y, r3.w, r1.y
    mad r1.y, r1.y, l(0.00001526), r3.x
    movc r5.z, r6.w, r1.x, r1.y
  else 
    and r1.x, r6.z, l(0x80000000)
    iadd r1.y, r6.x, l(1)
    ld_structured_indexable(structured_buffer, stride=4)(mixed,mixed,mixed,mixed) r1.y, r1.y, l(0), t0.xxxx
    movc r1.x, r1.x, r1.y, l(0)
    ishl r1.y, r6.z, l(2)
    ushr r1.w, r1.x, l(16)
    and r1.x, r1.x, l(0x0000ffff)
    f16tof32 r1.xw, r1.xxxw
    mad r1.y, r5.x, r1.w, r1.y
    mad r1.x, r5.y, r1.x, r1.y
    movc r5.z, r0.y, r1.x, r5.z
  endif 
endif 
dp3 r0.y, r5.xyzx, cb2[49].xyzx
add r0.y, r0.y, cb2[49].w
add_sat r0.y, -r0.y, r1.z
mul o1.w, r0.y, r0.x
mov o0.xyzw, r2.xyzw
mov o1.xyz, v1.xyzx
mov o4.xyz, r4.xyzx
mov o5.yz, r3.yyzy
mov o5.w, l(0)
mov o7.zw, r0.zzzw
ret 
// Approximately 324 instruction slots used
