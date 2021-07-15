//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:44:14 2021
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
//   float2 normalMapScale;             // Offset:  184 Size:     8 [unused]
//   float4 specularLobeRoughnessControl;// Offset:  192 Size:    16 [unused]
//   float2 lobeWeighting;              // Offset:  208 Size:     8 [unused]
//   float4 controlVar0;                // Offset:  224 Size:    16 [unused]
//   float4 controlVar1;                // Offset:  240 Size:    16 [unused]
//   float4 shoreUVControl;             // Offset:  256 Size:    16 [unused]
//   float reflectionGloss;             // Offset:  272 Size:     4 [unused]
//   float probeReflectionLevel;        // Offset:  276 Size:     4 [unused]
//   float2 horizonControl;             // Offset:  280 Size:     8 [unused]
//   float SSRLevel;                    // Offset:  288 Size:     4 [unused]
//   float4 normalScaleLoHi;            // Offset:  304 Size:    16 [unused]
//   float3 normalUVScrollSpeed;        // Offset:  320 Size:    12 [unused]
//   float4 normalUVLo;                 // Offset:  336 Size:    16 [unused]
//   float4 normalUVHi0;                // Offset:  352 Size:    16 [unused]
//   float4 normalUVHi1;                // Offset:  368 Size:    16 [unused]
//   float3 foamColor;                  // Offset:  384 Size:    12 [unused]
//   float3 waterColorShallow;          // Offset:  400 Size:    12 [unused]
//   float3 waterColorDeep;             // Offset:  416 Size:    12 [unused]
//   float3 waterColorShallowScatter;   // Offset:  432 Size:    12 [unused]
//   float3 waterColorDeepScatter;      // Offset:  448 Size:    12 [unused]
//   float3 horizonColor;               // Offset:  464 Size:    12 [unused]
//   float4 foamMaskScroll01;           // Offset:  480 Size:    16 [unused]
//   float4 foamMaskScroll23;           // Offset:  496 Size:    16 [unused]
//   float4 foamMaskScale01;            // Offset:  512 Size:    16 [unused]
//   float4 foamMaskScale23;            // Offset:  528 Size:    16 [unused]
//   float foamScale;                   // Offset:  544 Size:     4 [unused]
//   float3 foamSpacing;                // Offset:  548 Size:    12 [unused]
//   float foamColorScale;              // Offset:  560 Size:     4 [unused]
//   float foamWaveIncrease;            // Offset:  564 Size:     4 [unused]
//   float4 wave0K;                     // Offset:  576 Size:    16
//   float4 wave1K;                     // Offset:  592 Size:    16
//   float4 wave2K;                     // Offset:  608 Size:    16
//   float4 waveAmplitude;              // Offset:  624 Size:    16
//   float4 waveSteepness;              // Offset:  640 Size:    16
//   float4 waveFrequency;              // Offset:  656 Size:    16
//   bool useFoam;                      // Offset:  672 Size:     4 [unused]
//   bool useVertexWaves;               // Offset:  676 Size:     4
//   bool scaleNormalsWithFlow;         // Offset:  680 Size:     4 [unused]
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
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   x   
// TEXCOORD                 0   xy          2     NONE   float   xy  
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// TEXCOORD                15   x           5     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[43], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.x
dcl_input v2.xy
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.x
dcl_output_siv o0.xyzw, position
dcl_temps 7
if_nz cb0[42].y
  mad r0.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
  mad r1.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
  mad r0.w, v4.w, l(2.000000), l(-1.000000)
  mul r2.xyz, r0.zxyz, r1.yzxy
  mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
  mul r2.xyz, r0.wwww, r2.xyzx
  ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v5.x, l(12), t4.xxxx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, r0.w, l(0), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, r0.w, l(16), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r0.w, l(32), t5.xyzx
  dp3 r6.x, r0.xyzx, r3.xyzx
  dp3 r6.y, r0.xyzx, r4.xyzx
  dp3 r6.z, r0.xyzx, r5.xyzx
  dp3 r0.x, r6.xyzx, r6.xyzx
  rsq r0.x, r0.x
  mul r0.xyz, r0.xxxx, r6.xyzx
  dp3 r6.x, r1.xyzx, r3.xyzx
  dp3 r6.y, r1.xyzx, r4.xyzx
  dp3 r6.z, r1.xyzx, r5.xyzx
  dp3 r1.x, r6.xyzx, r6.xyzx
  rsq r1.x, r1.x
  mul r1.xyz, r1.xxxx, r6.xyzx
  dp3 r3.x, r2.xyzx, r3.xyzx
  dp3 r3.y, r2.xyzx, r4.xyzx
  dp3 r3.z, r2.xyzx, r5.xyzx
  dp3 r1.w, r3.xyzx, r3.xyzx
  rsq r1.w, r1.w
  mul r2.xyz, r1.wwww, r3.xyzx
  mul r3.xyz, v1.xxxx, cb0[39].xyzx
  dp2 r4.x, v2.xyxx, cb0[36].xyxx
  dp2 r4.y, v2.xyxx, cb0[37].xyxx
  dp2 r4.z, v2.xyxx, cb0[38].xyxx
  mad r4.xyz, -cb0[41].xyzx, cb1[69].wwww, r4.xyzx
  sincos null, r4.yzw, r4.xxyz
  sincos r1.w, null, r4.x
  dp3 r2.w, r3.xyzx, r4.yzwy
  mad r0.xyz, r0.xyzx, r2.wwww, v0.xyzx
  mul r3.xw, r3.xxxx, -cb0[36].zzzw
  mul r3.xw, r1.wwww, r3.xxxw
  mul r4.xy, r3.yyyy, -cb0[37].zwzz
  mul r4.xy, r1.wwww, r4.xyxx
  mul r4.xy, r4.xyxx, cb0[40].yyyy
  mad r3.xy, cb0[40].xxxx, r3.xwxx, r4.xyxx
  mul r3.zw, r3.zzzz, -cb0[38].zzzw
  mul r3.zw, r1.wwww, r3.zzzw
  mad r3.xy, cb0[40].zzzz, r3.zwzz, r3.xyxx
  mul r2.xyz, r2.xyzx, r3.yyyy
  mad r1.xyz, r3.xxxx, r1.xyzx, r2.xyzx
  add r1.xyz, r0.xyzx, r1.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.w, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.w, l(32), t5.xyzw
  mov r4.x, r2.w
  mov r4.y, r3.w
  mov r4.z, r0.w
  add r4.xyw, r4.xyxz, -cb1[24].xyxz
  mov r1.w, l(1.000000)
  mov r2.w, r4.x
  dp4 r0.w, r1.xyzw, r2.xyzw
  mov r3.w, r4.y
  dp4 r2.x, r1.xyzw, r3.xyzw
  mov r4.xyz, r0.xyzx
  dp4 r0.x, r1.xyzw, r4.xyzw
  mul r1.xyzw, r2.xxxx, cb1[9].xyzw
  mad r1.xyzw, r0.wwww, cb1[8].xyzw, r1.xyzw
  mad r0.xyzw, r0.xxxx, cb1[10].xyzw, r1.xyzw
  add o0.xyzw, r0.xyzw, cb1[11].xyzw
else 
  ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v5.x, l(12), t4.xxxx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.x, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t5.xyzw
  mov r3.x, r1.w
  mov r3.y, r2.w
  mov r3.z, r0.w
  add r3.xyw, r3.xyxz, -cb1[24].xyxz
  mov r4.xyz, v0.xyzx
  mov r4.w, l(1.000000)
  mov r1.w, r3.x
  dp4 r0.w, r4.xyzw, r1.xyzw
  mov r2.w, r3.y
  dp4 r1.x, r4.xyzw, r2.xyzw
  mov r3.xyz, r0.xyzx
  dp4 r0.x, r4.xyzw, r3.xyzw
  mul r1.xyzw, r1.xxxx, cb1[9].xyzw
  mad r1.xyzw, r0.wwww, cb1[8].xyzw, r1.xyzw
  mad r0.xyzw, r0.xxxx, cb1[10].xyzw, r1.xyzw
  add o0.xyzw, r0.xyzw, cb1[11].xyzw
endif 
ret 
// Approximately 91 instruction slots used
