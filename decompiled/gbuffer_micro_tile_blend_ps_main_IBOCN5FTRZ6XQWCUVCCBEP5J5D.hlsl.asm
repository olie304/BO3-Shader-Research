//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:30:50 2021
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
//   float4 detailScale1;               // Offset:   80 Size:    16
//   float4 detailScale2;               // Offset:   96 Size:    16 [unused]
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 specColorTint;              // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float2 mixScale;                   // Offset:  184 Size:     8 [unused]
//   float detailScaleHeight1;          // Offset:  192 Size:     4
//   float detailScaleHeight2;          // Offset:  196 Size:     4
//   float4 colorTint;                  // Offset:  208 Size:    16
//   float4 colorTint1;                 // Offset:  224 Size:    16 [unused]
//   float2 glossRange2;                // Offset:  240 Size:     8
//   float rotateUVs1;                  // Offset:  248 Size:     4
//   float rotateUVs2;                  // Offset:  252 Size:     4 [unused]
//   bool useUVOffsets1;                // Offset:  256 Size:     4
//   bool useUVOffsets2;                // Offset:  260 Size:     4
//   float2 breakUpMapTile;             // Offset:  264 Size:     8
//   float weatherThreshold;            // Offset:  272 Size:     4
//   float weatherHarshness;            // Offset:  276 Size:     4
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
//   float4 debugColorOverride;         // Offset:  928 Size:    16
//   float4 debugAlphaOverride;         // Offset:  944 Size:    16 [unused]
//   float4 debugNormalOverride;        // Offset:  960 Size:    16
//   float4 debugSpecularOverride;      // Offset:  976 Size:    16
//   float4 debugGlossOverride;         // Offset:  992 Size:    16
//   float4 debugOcclusionOverride;     // Offset: 1008 Size:    16
//   float4 debugStreamerControl;       // Offset: 1024 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// aoSampler                         sampler      NA          NA             s4      1 
// colorMap                          texture  float4          2d             t0      1 
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailMap1                        texture  float4          2d            t11      1 
// breakUpMap                        texture  float4          2d            t12      1 
// gWeatherGlossMap                  texture  float4          2d            t32      1 
// gWeatherColorMap                  texture  float4          2d            t33      1 
// gWeatherNormalMap                 texture  float4          2d            t34      1 
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
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float    yz 
// UVOFFSETS                0   xyz         2     NONE   float   xyz 
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// SV_IsFrontFace           0   x           6    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[18], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
dcl_constantbuffer CB2[42], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t32
dcl_resource_texture2d (float,float,float,float) t33
dcl_resource_texture2d (float,float,float,float) t34
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 13
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.yzyy, t7.xyzw, s3
add r0.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r0.xyz, cb0[10].wwww, r0.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.xy, r0.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r0.w, r0.xyxx, r0.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r1.z, r0.w
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
sincos r2.x, r3.x, cb0[15].z
mov r4.x, -r2.x
add r2.yz, v1.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
mov r4.y, r3.x
mov r4.z, r2.x
dp2 r3.x, r2.yzyy, r4.yzyy
dp2 r3.y, r2.yzyy, r4.xyxx
add r2.xw, r3.xxxy, v2.yyyx
add r0.w, v2.z, l(0.500000)
add r2.xw, r0.wwww, r2.xxxw
mul r2.xw, r2.xxxw, cb0[5].xxxy
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, cb0[5].xyxx
movc r2.xw, cb0[16].xxxx, r2.xxxw, r3.xxxy
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xwxx, t0.xyzw, s1
add r4.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, r4.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.w, r2.xwxx, t6.yzwx, s2
add r4.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r4.xyz, r1.wwww, r4.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.w, r2.xwxx, t9.yzwx, s2
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r2.xwxx, t11.xyzw, s3
mad r2.xw, r5.xxxy, l(1.99218750, 0.000000, 0.000000, 1.99218750), l(-1.000000, 0.000000, 0.000000, -1.000000)
mul r4.w, r5.z, r5.z
mul r4.w, r4.w, l(0.33333334)
min r4.w, r4.w, l(1.000000)
add r2.yz, r2.yyzy, v2.yyxy
add r2.yz, r0.wwww, r2.yyzy
mul r5.xy, r2.yzyy, cb0[5].xyxx
mul r5.zw, v1.yyyz, cb0[5].xxxy
movc r5.xy, cb0[16].yyyy, r5.xyxx, r5.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r5.xyxx, t32.yzwx, s1
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r5.xyxx, t33.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t34.xyzw, s3
mad r1.xy, r2.xwxx, cb0[12].xxxx, r0.xyxx
dp3 r2.x, r1.xyzx, r1.xyzx
rsq r2.x, r2.x
mul r7.xyz, r1.xyzx, r2.xxxx
movc r2.x, v6.x, l(1.000000), l(-1.000000)
dp3 r2.w, v3.xyzx, v3.xyzx
rsq r2.w, r2.w
mul r8.xyz, r2.wwww, v3.xyzx
mul r9.xyz, r2.xxxx, r8.xyzx
dp3 r5.w, v4.xyzx, v4.xyzx
rsq r5.w, r5.w
mul r10.xyz, r5.wwww, v4.xyzx
mul r10.xyz, r2.xxxx, r10.xyzx
dp3 r5.w, v5.xyzx, v5.xyzx
rsq r5.w, r5.w
mul r11.xyz, r5.wwww, v5.xyzx
mul r11.xyz, r2.xxxx, r11.xyzx
mul r12.xyz, r7.yyyy, r11.xyzx
mad r12.xyz, r10.xyzx, r7.xxxx, r12.xyzx
mad r12.xyz, r9.xyzx, r7.zzzz, r12.xyzx
dp3 r5.w, r12.xyzx, r12.xyzx
rsq r5.w, r5.w
mul r12.xyz, r5.wwww, r12.xyzx
dp3_sat r5.w, r12.xyzx, cb2[39].yzwy
log r5.w, r5.w
mul r5.w, r5.w, cb0[17].y
exp r5.w, r5.w
add r5.w, r5.w, -cb0[17].x
add r6.w, -cb0[17].x, l(1.000000)
max r6.w, r6.w, l(0.000100)
div_sat r5.w, r5.w, r6.w
mul r2.yz, r2.yyzy, cb0[16].zzwz
mul r12.xy, v1.yzyy, cb0[16].zwzz
movc r2.yz, cb0[16].xxxx, r2.yyzy, r12.xxyx
sample_indexable(texture2d)(float,float,float,float) r2.y, r2.yzyy, t12.yxzw, s1
mul r2.y, r2.y, r5.w
mad r6.xyz, r6.xyzx, cb2[41].xyzx, -r3.xyzx
mad r3.xyz, r2.yyyy, r6.xyzx, r3.xyzx
mad r1.w, r2.y, -r1.w, r1.w
add r6.xyz, -r4.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
mad r4.xyz, r2.yyyy, r6.xyzx, r4.xyzx
add r1.w, -r1.w, l(1.000000)
mul r3.xyz, r1.wwww, r3.xyzx
add r1.w, -cb0[11].x, cb0[11].y
mad r2.z, r3.w, r1.w, cb0[11].x
mul_sat r2.z, r2.z, l(0.05882353)
add r3.w, -cb0[15].x, cb0[15].y
mad r0.w, r0.w, r3.w, cb0[15].x
mul_sat r0.w, r0.w, l(0.05882353)
add r0.w, -r2.z, r0.w
mad r0.w, r2.y, r0.w, r2.z
sample_indexable(texture2d)(float,float,float,float) r2.z, v1.yzyy, t10.yzxw, s4
mad r5.xy, r5.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r3.w, r5.z, r5.z
mul r3.w, r3.w, l(0.33333334)
min r3.w, r3.w, l(1.000000)
mad r7.w, r4.w, cb0[12].x, r0.z
mad r1.xy, r5.xyxx, cb0[12].yyyy, r0.xyxx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r5.xyz, r0.xxxx, r1.xyzx
mad r5.w, r3.w, cb0[12].y, r0.z
add r5.xyzw, -r7.xyzw, r5.xyzw
mad r5.xyzw, r2.yyyy, r5.xyzw, r7.xyzw
mul r0.x, r0.w, l(-17.000000)
exp r0.x, r0.x
add r0.x, r0.x, r5.w
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mul r0.yzw, r5.yyyy, r11.xxyz
mad r0.yzw, r10.xxyz, r5.xxxx, r0.yyzw
mad r0.yzw, r9.xxyz, r5.zzzz, r0.yyzw
dp3 r1.x, r0.yzwy, r0.yzwy
rsq r1.x, r1.x
mul r0.yzw, r0.yyzw, r1.xxxx
mad r1.x, cb1[62].x, r1.w, cb0[11].x
mul_sat r1.x, r1.x, l(0.05882353)
lt r1.y, l(0.000000), cb1[64].w
if_nz r1.y
  ftoi r1.y, cb1[64].w
  lod r1.z, v1.yzyy, t0.y, s1
  lod r1.w, v1.yzyy, t0.x, s1
  lt r1.z, r1.z, r1.w
  lt r1.w, l(0.000000), r1.w
  and r5.xyz, r1.yyyy, l(1, 2, 4, 0)
  movc r6.xyz, r5.xxxx, l(1.000000,0,1.000000,0), r3.xyzx
  movc r5.xyw, r5.yyyy, l(0,1.000000,0,1.000000), r3.xyxz
  movc r5.xyw, r1.wwww, r6.xyxz, r5.xyxw
  movc r6.xyz, r5.zzzz, l(0,1.000000,0,0), r3.xyzx
  movc r3.xyz, r1.zzzz, r5.xywx, r6.xyzx
endif 
add r1.yzw, -r3.xxyz, cb1[58].xxyz
mad o0.xyz, cb1[58].wwww, r1.yzwy, r3.xyzx
add r1.yzw, -r4.xxyz, cb1[61].xxyz
mad r1.yzw, cb1[61].wwww, r1.yyzw, r4.xxyz
add r1.x, -r0.x, r1.x
mad r0.x, cb1[62].w, r1.x, r0.x
add r1.x, -r2.z, cb1[63].x
mad o2.z, cb1[63].w, r1.x, r2.z
mad r2.yzw, v3.xxyz, r2.wwww, -r0.yyzw
mad r3.yzw, cb1[60].wwww, r2.yyzw, r0.yyzw
add r0.y, r9.y, r9.x
mad r0.y, r8.z, r2.x, r0.y
mul r0.y, r0.y, l(0.500000)
mad r2.xyz, r8.xyzx, r2.xxxx, -r0.yyyy
max r0.z, r2.z, r2.y
max r0.z, r0.z, r2.x
max r0.y, r0.z, r0.y
eq r0.z, r0.y, r2.x
mul r4.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r0.w, r0.y, l(2.000000)
mov r4.x, l(1)
mov r3.x, l(0)
movc r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
movc r0.y, r0.z, r0.w, r0.y
eq r0.z, r0.y, r2.y
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r0.w, r0.y, l(2.000000)
mov r4.x, l(2)
movc r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
movc r0.y, r0.z, r0.w, r0.y
eq r0.y, r0.y, r2.z
mul r2.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r2.xyzw, r0.yyyy, r2.xyzw, r3.xyzw
add r0.y, r2.z, r2.y
add r3.z, r2.w, r0.y
add r3.y, -r2.y, r2.w
mad r3.x, -r2.z, l(3.000000), r3.z
mul r0.yzw, r3.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r0.yz, r0.wwww, r0.yyzy
mad o1.xy, r0.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
utof r0.x, r2.x
mul o1.w, r0.x, l(0.33333334)
ftou r0.xy, v0.xyxx
add r2.y, -r1.w, r1.y
mad r0.z, r2.y, l(0.500000), r1.w
add r2.z, -r0.z, r1.z
mad r2.x, r2.z, l(0.500000), r0.z
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r2.xyxx, r2.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.w, l(1.000000)
mov o2.w, l(0.33333334)
ret 
// Approximately 195 instruction slots used