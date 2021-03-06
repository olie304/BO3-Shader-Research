//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:04 2021
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
//   float hdrScale;                    // Offset:  240 Size:     4
//   uint zFeatherComputeSprites;       // Offset:  244 Size:     4
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
// samplerLinear                     sampler      NA          NA             s2      1 
// floatZSampler                     texture  float4          2d             t0      1 
// gEnvBRDFGlass                     texture  float2          2d             t5      1 
// gReflectionProbeArray             texture  float3   cubearray             t8      1 
// colorMap                          texture  float4          2d            t21      1 
// normalMap                         texture  float4          2d            t22      1 
// lmapTex                           texture  float4     2darray            t24      1 
// emissiveMap                       texture  float4          2d            t25      1 
// alphaMap                          texture  float4          2d            t26      1 
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
// TEXCOORD                 2   xyzw        6     NONE   float   xyz 
// TEXCOORD                 3   xyz         7     NONE   float       
// TEXCOORD                 4   xy          8     NONE   float   xy  
// TEXCOORD                 5     zw        8     NONE   float     zw
// TEXCOORD                 6   x           9     NONE    uint   x   
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
dcl_globalFlags refactoringAllowed | forceEarlyDepthStencil
dcl_constantbuffer CB0[22], immediateIndexed
dcl_constantbuffer CB1[86], immediateIndexed
dcl_constantbuffer CB2[59], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texturecubearray (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2darray (float,float,float,float) t24
dcl_resource_texture2d (float,float,float,float) t25
dcl_resource_texture2d (float,float,float,float) t26
dcl_uav_typed_texture2d (uint,uint,uint,uint) u6
dcl_uav_typed_texture2darray (uint,uint,uint,uint) u7
dcl_input_ps_siv linear noperspective v0.xyz, position
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_input_ps linear v5.xyzw
dcl_input_ps constant v6.xyz
dcl_input_ps linear v8.xy
dcl_input_ps linear v8.zw
dcl_input_ps constant v9.x
dcl_input_ps linear v10.xyz
dcl_input_ps linear v11.xyz
dcl_input_ps linear v12.xyz
dcl_input_ps linear v13.xyz
dcl_input_ps linear v14.xyz
dcl_output o0.xyzw
dcl_temps 11
deriv_rtx_coarse r0.xy, v4.xyxx
deriv_rty_coarse r0.zw, v4.xxxy
utof r1.z, v9.x
mov r1.xy, v8.zwzz
sample_indexable(texture2darray)(float,float,float,float) r1.xyz, r1.xyzx, t24.xyzw, s1
mul r1.xyz, r1.xyzx, v1.xyzx
dp3 r1.w, -v5.xyzx, -v5.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, -v5.xyzx
add r3.xyzw, v4.xyzw, l(-0.500000, -0.500000, -0.500000, -0.500000)
mul r4.xyzw, cb0[18].xyxy, cb0[18].zwzw
mad r4.xyzw, r3.xyzw, cb0[18].xyxy, r4.xyzw
mul r5.xy, cb0[19].zwzz, cb1[69].wwww
mad r1.w, cb0[19].y, cb1[69].w, l(1.000000)
mul r1.w, r1.w, cb0[19].x
mul r1.w, r1.w, l(0.01745329)
sincos r6.x, r7.x, r1.w
mov r7.y, r7.x
mov r7.z, r6.x
dp2 r8.x, r7.yzyy, r4.xyxx
mov r7.x, -r6.x
dp2 r8.y, r7.xyxx, r4.xyxx
mad r4.xy, r5.xyxx, cb0[18].xyxx, r8.xyxx
dp2 r6.x, r7.yzyy, r4.zwzz
dp2 r6.y, r7.xyxx, r4.zwzz
mad r4.zw, r5.xxxy, cb0[18].xxxy, r6.xxxy
add r4.xyzw, r4.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000)
dp3 r1.w, r2.xyzx, v12.xyzx
sample_d_indexable(texture2d)(float,float,float,float) r5.xyz, r4.xyxx, t22.xyzw, s1, r0.xyxx, r0.zwzz
ne r6.xy, v6.xyxx, l(0.000000, 1.000000, 0.000000, 0.000000)
if_nz r6.x
  sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r4.zwzz, t22.xyzw, s1, r0.xyxx, r0.zwzz
  add r7.xyz, -r5.xyzx, r7.xyzx
  mad r5.xyz, v6.xxxx, r7.xyzx, r5.xyzx
endif 
mad r5.xy, r5.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r2.w, r5.xyxx, r5.xyxx
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r2.w, r2.w
mul r5.z, r5.z, r5.z
mul r5.z, r5.z, l(0.33333334)
min r5.z, r5.z, l(1.000000)
mul_sat r5.w, cb0[11].y, l(0.05882353)
dp3 r6.z, v12.xyzx, v12.xyzx
rsq r6.z, r6.z
mul r7.xyz, r6.zzzz, v12.xyzx
dp3 r6.z, v13.xyzx, v13.xyzx
rsq r6.z, r6.z
mul r8.xyz, r6.zzzz, v13.xyzx
dp3 r6.z, v14.xyzx, v14.xyzx
rsq r6.z, r6.z
mul r9.xyz, r6.zzzz, v14.xyzx
mul r5.w, r5.w, l(-17.000000)
exp r5.w, r5.w
add r5.z, r5.w, r5.z
log r5.z, r5.z
mul r5.z, r5.z, l(-0.05882353)
max r10.y, r5.z, l(0.000000)
mul r5.yzw, r5.yyyy, r9.xxyz
mad r5.xyz, r8.xyzx, r5.xxxx, r5.yzwy
mad r5.xyz, r7.xyzx, r2.wwww, r5.xyzx
dp3 r2.w, r5.xyzx, r5.xyzx
rsq r2.w, r2.w
mul r5.xyz, r2.wwww, r5.xyzx
dp3_sat r10.x, r5.xyzx, r2.xyzx
dp3 r2.w, -r2.xyzx, r5.xyzx
add r2.w, r2.w, r2.w
mad r2.xyz, r5.xyzx, -r2.wwww, -r2.xyzx
add r5.x, -r10.y, l(1.000000)
mul r5.x, r5.x, l(6.000000)
ftou r5.x, r5.x
utof r5.x, r5.x
mov r2.w, l(0)
sample_l_indexable(texturecubearray)(float,float,float,float) r2.xyz, r2.xyzw, t8.xyzw, s2, r5.x
mul r2.xyz, r2.xyzx, cb2[19].xxxx
mad r5.xy, r10.xyxx, l(0.984375, 0.984375, 0.000000, 0.000000), l(0.00781250, 0.00781250, 0.000000, 0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r5.xy, r5.xyxx, t5.xyzw, s2, l(0.000000)
mul r7.xyz, v2.xyzx, l(0.014000, 0.014000, 0.014000, 0.000000)
mul r5.xzw, r2.xxyz, r5.xxxx
mad r8.xyz, -v2.xyzx, l(0.014000, 0.014000, 0.014000, 0.000000), l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.xyz, r2.xyzx, r5.yyyy
mul r2.xyz, r7.xyzx, r2.xyzx
mad r2.xyz, r5.xzwx, r8.xyzx, r2.xyzx
add r2.x, r2.y, r2.x
add r2.x, r2.z, r2.x
mul r2.x, r2.x, l(0.33333334)
dp3 r2.y, r1.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
max r2.y, r2.y, l(0.000100)
min r2.z, r2.y, cb1[85].x
div r2.z, r2.z, cb2[19].x
mul r2.x, r2.z, r2.x
sample_d_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t21.xyzw, s1, r0.xyxx, r0.zwzz
if_nz r6.x
  sample_d_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.zwzz, t21.xyzw, s1, r0.xyxx, r0.zwzz
  add r4.xyzw, -r5.xyzw, r4.xyzw
  mad r5.xyzw, v6.xxxx, r4.xyzw, r5.xyzw
endif 
dp3 r2.z, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r4.xyz, -r5.xyzx, r2.zzzz
mad r4.xyz, cb0[15].zzzz, r4.xyzx, r5.xyzx
eq r7.xyzw, cb0[16].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r2.z, r7.y, r7.x
and r2.z, r7.z, r2.z
and r2.z, r7.w, r2.z
max r2.w, r5.w, l(0.000100)
div_sat r7.xyz, r4.xyzx, r2.wwww
add_sat r7.xyz, r7.xyzx, -cb0[16].xxxx
add r6.zw, -cb0[16].xxxz, cb0[16].yyyw
max r4.w, r6.z, l(0.000100)
div r7.xyz, r7.xyzx, r4.wwww
min r7.xyz, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r7.xyz, r7.xyzx, r6.wwww, cb0[16].zzzz
ge r8.xyz, l(0.040450, 0.040450, 0.040450, 0.000000), r7.xyzx
mul r9.xyz, r7.xyzx, l(0.07739938, 0.07739938, 0.07739938, 0.000000)
add r7.xyz, r7.xyzx, l(0.055000, 0.055000, 0.055000, 0.000000)
mul r7.xyz, |r7.xyzx|, l(0.94786733, 0.94786733, 0.94786733, 0.000000)
log r7.xyz, r7.xyzx
mul r7.xyz, r7.xyzx, l(2.400000, 2.400000, 2.400000, 0.000000)
exp r7.xyz, r7.xyzx
movc r7.xyz, r8.xyzx, r9.xyzx, r7.xyzx
mul r7.xyz, r5.wwww, r7.xyzx
movc r5.xyz, r2.zzzz, r4.xyzx, r7.xyzx
ftoi r4.xy, v0.xyxx
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.z, r4.xyzw, t0.yzxw
eq r4.x, v6.z, l(0.000000)
div r4.y, l(1.000000, 1.000000, 1.000000, 1.000000), v6.z
movc r4.x, r4.x, l(60000.000000), r4.y
ge r4.y, r2.z, l(0.984375)
mul r4.z, r2.z, l(1.01587307)
mad r2.z, r2.z, l(64.000000), l(-63.000000)
movc r2.z, r4.y, r2.z, r4.z
max r2.z, r2.z, l(0.00000001)
rcp r2.z, r2.z
ge r4.y, v0.z, l(0.984375)
mul r4.z, v0.z, l(1.01587307)
mad r4.w, v0.z, l(64.000000), l(-63.000000)
movc r4.y, r4.y, r4.w, r4.z
max r4.y, r4.y, l(0.00000001)
rcp r4.y, r4.y
div r7.xyz, r5.xyzx, r2.wwww
add r2.w, r5.w, v1.w
mad_sat r8.y, r2.w, v6.y, -v6.y
mul r8.xzw, r7.xxyz, r8.yyyy
movc r5.xyzw, r6.yyyy, r8.xzwy, r5.xyzw
mov r8.x, l(1.000000)
movc r4.zw, r6.yyyy, r8.xxxy, v1.wwww
lt r2.w, r4.y, r2.z
add r2.z, r2.z, -r4.y
mul_sat r2.z, r4.x, r2.z
movc r2.z, r2.w, r2.z, l(1.000000)
mul r1.w, r1.w, r1.w
mad_sat r1.w, r1.w, v8.x, v8.y
mul r2.w, r2.z, r4.w
mul r2.w, r1.w, r2.w
mul r5.xyzw, r2.zzzz, r5.xyzw
mul r4.xyzw, r4.zzzz, r5.xyzw
mul r4.xyzw, r1.wwww, r4.xyzw
mul r5.xy, cb0[20].xyxx, cb0[20].zwzz
mad r3.xy, r3.xyxx, cb0[20].xyxx, r5.xyxx
mul r5.zw, cb0[21].zzzw, cb1[69].wwww
mad r1.w, cb0[21].y, cb1[69].w, l(1.000000)
mul r1.w, r1.w, cb0[21].x
mul r1.w, r1.w, l(0.01745329)
sincos r7.x, r8.x, r1.w
mov r8.y, r8.x
mov r8.z, r7.x
dp2 r9.x, r8.yzyy, r3.xyxx
mov r8.x, -r7.x
dp2 r9.y, r8.xyxx, r3.xyxx
mad r3.xy, r5.zwzz, cb0[20].xyxx, r9.xyxx
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
sample_d_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t25.yzwx, s1, r0.xyxx, r0.zwzz
if_nz r6.x
  mad r3.xy, r3.zwzz, cb0[20].xyxx, r5.xyxx
  dp2 r5.x, r8.yzyy, r3.xyxx
  dp2 r5.y, r8.xyxx, r3.xyxx
  mad r3.xy, r5.zwzz, cb0[20].xyxx, r5.xyxx
  add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_d_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t25.yzxw, s1, r0.xyxx, r0.zwzz
  add r2.z, -r1.w, r2.z
  mad r1.w, v6.x, r2.z, r1.w
endif 
mul r1.w, r2.w, r1.w
max r2.y, r2.y, cb1[85].x
mul r2.y, r2.y, cb0[15].x
mul r2.y, r2.y, v5.w
movc r2.y, cb0[17].x, cb0[15].x, r2.y
mul r1.w, r1.w, r2.y
mad r1.xyz, v2.xyzx, r1.wwww, r1.xyzx
mul r2.yz, v4.xxyx, cb0[17].yyzy
sample_d_indexable(texture2d)(float,float,float,float) r1.w, r2.yzyy, t26.yzwx, s1, r0.xyxx, r0.zwzz
if_nz r6.x
  mul r2.yz, v4.zzwz, cb0[17].yyzy
  sample_d_indexable(texture2d)(float,float,float,float) r0.x, r2.yzyy, t26.xyzw, s1, r0.xyxx, r0.zwzz
  add r0.x, -r1.w, r0.x
  mad r1.w, v6.x, r0.x, r1.w
endif 
mul r0.xyzw, r1.wwww, r4.xyzw
mul r1.w, r0.w, r2.x
mad r1.xyz, r0.xyzx, r1.xyzx, r1.wwww
mul r2.xyz, r0.wwww, v3.xyzx
mul r3.xyz, r0.wwww, v11.xyzx
mad r1.xyz, -v3.xyzx, r0.wwww, r1.xyzx
mad r1.xyz, v3.wwww, r1.xyzx, r2.xyzx
mad r1.xyz, r1.xyzx, v10.xyzx, r3.xyzx
mul r1.xyz, r1.xyzx, cb1[85].yyyy
ge r2.xyz, r1.xyzx, l(0.00006104, 0.00006104, 0.00006104, 0.000000)
and r1.xyz, r1.xyzx, r2.xyzx
min r0.xyz, r1.xyzx, l(65024.000000, 65024.000000, 64512.000000, 0.000000)
lt r1.xy, l(0.995000, 0.995000, 0.000000, 0.000000), v8.zwzz
or r1.x, r1.y, r1.x
lt r1.yz, v8.zzwz, l(0.000000, 0.005000, 0.005000, 0.000000)
or r1.y, r1.z, r1.y
or r1.x, r1.y, r1.x
mul r2.xz, cb1[85].xxxx, l(0.000000, 0.000000, 0.500000, 0.000000)
mov r2.w, l(1.000000)
movc r0.xyzw, r1.xxxx, r2.xxzw, r0.xyzw
max r1.yzw, r0.xxyz, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.x, r0.w, l(0x7f800000)
ieq r2.x, r2.x, l(0x7f800000)
mov r1.x, r0.w
eq r3.xyzw, r1.yzwx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.yz, r3.zzwz, r3.xxyx
and r2.y, r2.z, r2.y
or r2.x, r2.y, r2.x
if_z r2.x
  ftou r2.xy, v0.xyxx
  imm_atomic_iadd r2.z, u6, r2.xyxx, l(1)
  ult r2.w, r2.z, cb2[58].z
  if_nz r2.w
    max r2.w, r1.w, r1.z
    max r2.w, r1.y, r2.w
    and r2.w, r2.w, l(0x7f800000)
    iadd r2.w, r2.w, l(0x00800000)
    add r1.yzw, r1.yyzw, r2.wwww
    ubfe r1.y, l(8), l(15), r1.y
    ushr r1.zw, r1.zzzw, l(0, 0, 15, 15)
    bfi r1.zw, l(0, 0, 8, 8), l(0, 0, 8, 16), r1.zzzw, l(0, 0, 0, 0)
    iadd r1.y, r1.z, r1.y
    iadd r1.y, r1.w, r1.y
    ishl r1.z, r2.w, l(1)
    iadd r3.xzw, r1.zzzz, r1.yyyy
    mov_sat r1.x, r1.x
    mul r1.x, r1.x, l(2046.000000)
    ftou r1.x, r1.x
    ishl r1.y, v0.z, l(2)
    and r1.x, r1.x, l(2046)
    bfi r1.x, l(11), l(0), r1.x, r1.y
    bfi r3.y, l(1), l(0), cb0[15].y, r1.x
    store_uav_typed u7.xyzw, r2.xyzz, r3.xyzw
    mov r1.x, l(-1)
  else 
    mov r1.x, l(0)
  endif 
else 
  mov r1.x, l(-1)
endif 
movc o0.xyzw, r1.xxxx, l(0,0,0,0), r0.xyzw
ret 
// Approximately 261 instruction slots used
