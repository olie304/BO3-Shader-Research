//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:41:57 2021
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
//   float rowCount;                    // Offset:  184 Size:     4 [unused]
//   float columnCount;                 // Offset:  188 Size:     4 [unused]
//   float imageTime;                   // Offset:  192 Size:     4 [unused]
//   float2 rotateUVs;                  // Offset:  196 Size:     8 [unused]
//   float2 scrollUVs;                  // Offset:  208 Size:     8 [unused]
//   float2 scaleUVs;                   // Offset:  216 Size:     8 [unused]
//   float2 offsetUVs;                  // Offset:  224 Size:     8 [unused]
//   float2 zoomUVs;                    // Offset:  232 Size:     8 [unused]
//   float zoomRate;                    // Offset:  240 Size:     4 [unused]
//   float layerDepth;                  // Offset:  244 Size:     4 [unused]
//   bool clampU;                       // Offset:  248 Size:     4 [unused]
//   bool clampV;                       // Offset:  252 Size:     4 [unused]
//   float2 flickerSeed;                // Offset:  256 Size:     8 [unused]
//   float flickerSpeed;                // Offset:  264 Size:     4 [unused]
//   float2 flickerRange;               // Offset:  272 Size:     8 [unused]
//   float flickerPower;                // Offset:  280 Size:     4 [unused]
//   bool relativeHDR;                  // Offset:  284 Size:     4 [unused]
//   bool invertFalloff;                // Offset:  288 Size:     4 [unused]
//   float hdrScale;                    // Offset:  292 Size:     4 [unused]
//   float emissiveFalloffPower;        // Offset:  296 Size:     4 [unused]
//   float zFeatherDistance;            // Offset:  300 Size:     4
//   float falloffBegin;                // Offset:  304 Size:     4
//   float falloffEnd;                  // Offset:  308 Size:     4
//   float alphaCooling;                // Offset:  312 Size:     4 [unused]
//   float coolingFactor;               // Offset:  316 Size:     4 [unused]
//   float uvMotionToggle1;             // Offset:  320 Size:     4 [unused]
//   float2 distortionRotateUVs;        // Offset:  324 Size:     8 [unused]
//   float2 distortionScrollUVs;        // Offset:  336 Size:     8 [unused]
//   float2 distortionScaleUVs;         // Offset:  344 Size:     8 [unused]
//   float2 distortionOffsetUVs;        // Offset:  352 Size:     8 [unused]
//   float2 distortionZoomUVs;          // Offset:  360 Size:     8 [unused]
//   float distortionZoomRate;          // Offset:  368 Size:     4 [unused]
//   float distortionAmount;            // Offset:  372 Size:     4 [unused]
//   float2 maskRotateUVs;              // Offset:  376 Size:     8 [unused]
//   float2 maskScrollUVs;              // Offset:  384 Size:     8 [unused]
//   float2 maskScaleUVs;               // Offset:  392 Size:     8 [unused]
//   float2 maskOffsetUVs;              // Offset:  400 Size:     8 [unused]
//   float2 maskZoomUVs;                // Offset:  408 Size:     8 [unused]
//   float maskZoomRate;                // Offset:  416 Size:     4 [unused]
//   bool noReceiveShadow;              // Offset:  420 Size:     4 [unused]
//   uint zFeatherComputeSprites;       // Offset:  424 Size:     4 [unused]
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
// COLOR                    0   xyzw        1     NONE   float   xyzw
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
// COLOR                    0   xyz         1     NONE   float   xyz 
// COLOR                    1      w        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 9     zw        2     NONE   float     zw
// UVOFFSETS                0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// OFFPOSITION              0   xyz         7     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[20], immediateIndexed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xy
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.xy
dcl_output o2.zw
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_output o6.xyz
dcl_output o7.xyz
dcl_temps 7
mov r0.xyz, v0.xyzx
mov r0.w, l(1.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v5.x, l(12), t4.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
mov r3.x, r2.w
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.x, l(16), t5.xyzw
mov r3.y, r4.w
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.x, l(32), t5.xyzw
mov r3.z, r5.w
add r1.yzw, r3.xxyz, -cb1[24].xxyz
mov r4.w, r1.z
dp4 r3.y, r0.xyzw, r4.xyzw
mul r6.xyzw, r3.yyyy, cb1[9].xyzw
mov r2.w, r1.y
mov r5.w, r1.w
dp4 r3.x, r0.xyzw, r2.xyzw
mad r6.xyzw, r3.xxxx, cb1[8].xyzw, r6.xyzw
dp4 r3.z, r0.xyzw, r5.xyzw
mad r0.xyzw, r3.zzzz, cb1[10].xyzw, r6.xyzw
mov o7.xyz, r3.xyzx
add r0.xyzw, r0.xyzw, cb1[11].xyzw
mov o0.xyzw, r0.xyzw
log r0.xyz, |v1.xyzx|
mul r0.xyz, r0.xyzx, l(2.200000, 2.200000, 2.200000, 0.000000)
exp o1.xyz, r0.xyzx
max r0.x, cb0[18].w, l(0.100000)
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
mul_sat r0.y, r0.x, r0.w
ge r0.x, l(1.000000), r0.x
mul r0.y, r0.y, v1.w
movc o1.w, r0.x, r0.y, v1.w
mul r0.xy, cb0[19].xyxx, l(0.01745329, 0.01745329, 0.000000, 0.000000)
sincos null, r0.xy, r0.xyxx
mul r0.yz, r0.xxyx, r0.xxyx
mad r0.x, r0.x, r0.x, -r0.z
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
mad r0.w, -r0.y, r0.z, l(1.000000)
eq r0.xy, cb0[19].xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r0.x, r0.y, r0.x
movc o2.zw, r0.xxxx, l(0,0,0,1.000000), r0.zzzw
mov o2.xy, v2.xyxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r1.x, l(12), t5.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.y, r1.x, l(28), t5.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.z, r1.x, l(44), t5.xxxx
mul r0.xyz, r0.xyzx, l(0.100000, 0.100000, 0.100000, 0.000000)
frc o3.xyz, r0.xyzx
mad r0.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
dp3 r1.x, r0.xyzx, r2.xyzx
dp3 r1.y, r0.xyzx, r4.xyzx
dp3 r1.z, r0.xyzx, r5.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul o4.xyz, r0.wwww, r1.xyzx
mad r1.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
dp3 r3.x, r1.xyzx, r2.xyzx
dp3 r3.y, r1.xyzx, r4.xyzx
dp3 r3.z, r1.xyzx, r5.xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul o5.xyz, r0.wwww, r3.xyzx
mul r3.xyz, r0.zxyz, r1.yzxy
mad r0.xyz, r0.yzxy, r1.zxyz, -r3.xyzx
mad r0.w, v4.w, l(2.000000), l(-1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r1.x, r0.xyzx, r2.xyzx
dp3 r1.y, r0.xyzx, r4.xyzx
dp3 r1.z, r0.xyzx, r5.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul o6.xyz, r0.xxxx, r1.xyzx
ret 
// Approximately 71 instruction slots used
