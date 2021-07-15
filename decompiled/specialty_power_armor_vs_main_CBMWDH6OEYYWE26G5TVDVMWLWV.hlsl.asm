//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:42:44 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float2 revealScale;                // Offset:  168 Size:     8 [unused]
//   float3 colorTint;                  // Offset:  176 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  188 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  192 Size:     8 [unused]
//   float2 rotateUVs;                  // Offset:  200 Size:     8 [unused]
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
//   float hdrScale;                    // Offset:  284 Size:     4 [unused]
//   float emissiveFalloffPower;        // Offset:  288 Size:     4 [unused]
//   bool invertFalloff;                // Offset:  292 Size:     4 [unused]
//   float shieldCushion;               // Offset:  296 Size:     4
//   float shieldOpacity;               // Offset:  300 Size:     4 [unused]
//   float warpPixels;                  // Offset:  304 Size:     4 [unused]
//   float2 normalScale;                // Offset:  308 Size:     8 [unused]
//   float2 normalScroll;               // Offset:  320 Size:     8 [unused]
//   float4 scanlineConsts;             // Offset:  336 Size:    16 [unused]
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
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// gpuSkinBase                       texture  float4          2d             t1      1 
// gpuSkinQuat                       texture  float4          2d             t2      1 
// gpuSkinPos                        texture  float4          2d             t3      1 
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
// TEXCOORD                 9     zw        2     NONE   float     zw
// UVOFFSETS                0   xyz         3     NONE   float   xyz 
// TEXCOORD                 4      w        3     NONE    uint      w
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                11      w        4     NONE   float      w
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// OFFPOSITION              0   xyz         7     NONE   float   xyz 
// TEXCOORD                10   xyz         8     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[19], immediateIndexed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_resource_structured t0, 384
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
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
dcl_output o2.zw
dcl_output o3.xyz
dcl_output o3.w
dcl_output o4.xyz
dcl_output o4.w
dcl_output o5.xyz
dcl_output o6.xyz
dcl_output o7.xyz
dcl_output o8.xyz
dcl_temps 16
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xy, v7.x, l(0), t4.xyxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.z, r0.y, l(48), t0.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) o1.w, r0.y, l(64), t0.xxxx
mad r1.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mul r2.xyz, r1.xyzx, cb0[18].zzzz
mul r0.yzw, r0.zzzz, r2.xxyz
mad r0.yzw, r0.yyzw, v1.wwww, v0.xxyz
mul r2.xyzw, r1.xxyy, r0.wzyw
mul r3.xy, r1.zzzz, r0.yzyy
mul r2.xyzw, r2.xyzw, l(0.01388889, 0.01388889, 0.01388889, 0.01388889)
add r2.xy, r2.zwzz, r2.xyxx
mad o2.zw, r3.xxxy, l(0.000000, 0.000000, 0.01388889, 0.01388889), r2.xxxy
mad r2.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r1.w, v4.w, l(2.000000), l(-1.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.xy, v7.x, l(12), t4.xyxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.y, l(48), t5.xyzw
movc r4.xyzw, r3.yyyy, r4.xyzw, l(0,0,0,0)
ne r2.w, l(0.000000, 0.000000, 0.000000, 0.000000), r4.w
if_nz r2.w
  ftou r2.w, r4.w
  if_nz r2.w
    iadd r3.y, r2.w, v6.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r3.y, l(0), t5.xyzw
    dp3 r3.z, r5.xyzx, r0.yzwy
    add r3.z, r5.w, r3.z
    mul r6.x, r3.z, v5.x
    dp3 r3.z, r5.xyzx, r1.xyzx
    mul r7.x, r3.z, v5.x
    dp3 r3.z, r5.xyzx, r2.xyzx
    mul r5.x, r3.z, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
    dp3 r3.z, r8.xyzx, r0.yzwy
    add r3.z, r8.w, r3.z
    mul r6.y, r3.z, v5.x
    dp3 r3.z, r8.xyzx, r1.xyzx
    mul r7.y, r3.z, v5.x
    dp3 r3.z, r8.xyzx, r2.xyzx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
    dp3 r3.y, r8.xyzx, r0.yzwy
    add r3.y, r8.w, r3.y
    mul r6.z, r3.y, v5.x
    dp3 r3.y, r8.xyzx, r1.xyzx
    mul r7.z, r3.y, v5.x
    dp3 r3.y, r8.xyzx, r2.xyzx
    mul r5.yz, r3.zzyz, v5.xxxx
    ne r3.y, v5.y, l(0.000000)
    if_nz r3.y
      iadd r3.y, r2.w, v6.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(0), t5.xyzw
      dp3 r3.z, r8.xyzx, r0.yzwy
      add r3.z, r8.w, r3.z
      mad r6.x, r3.z, v5.y, r6.x
      dp3 r3.z, r8.xyzx, r1.xyzx
      mad r7.x, r3.z, v5.y, r7.x
      dp3 r3.z, r8.xyzx, r2.xyzx
      mad r5.x, r3.z, v5.y, r5.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
      dp3 r3.z, r8.xyzx, r0.yzwy
      add r3.z, r8.w, r3.z
      mad r6.y, r3.z, v5.y, r6.y
      dp3 r3.z, r8.xyzx, r1.xyzx
      mad r7.y, r3.z, v5.y, r7.y
      dp3 r3.z, r8.xyzx, r2.xyzx
      mad r5.y, r3.z, v5.y, r5.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
      dp3 r3.y, r8.xyzx, r0.yzwy
      add r3.y, r8.w, r3.y
      mad r6.z, r3.y, v5.y, r6.z
      dp3 r3.y, r8.xyzx, r1.xyzx
      mad r7.z, r3.y, v5.y, r7.z
      dp3 r3.y, r8.xyzx, r2.xyzx
      mad r5.z, r3.y, v5.y, r5.z
      ne r3.y, v5.z, l(0.000000)
      if_nz r3.y
        iadd r3.y, r2.w, v6.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(0), t5.xyzw
        dp3 r3.z, r8.xyzx, r0.yzwy
        add r3.z, r8.w, r3.z
        mad r6.x, r3.z, v5.z, r6.x
        dp3 r3.z, r8.xyzx, r1.xyzx
        mad r7.x, r3.z, v5.z, r7.x
        dp3 r3.z, r8.xyzx, r2.xyzx
        mad r5.x, r3.z, v5.z, r5.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(16), t5.xyzw
        dp3 r3.z, r8.xyzx, r0.yzwy
        add r3.z, r8.w, r3.z
        mad r6.y, r3.z, v5.z, r6.y
        dp3 r3.z, r8.xyzx, r1.xyzx
        mad r7.y, r3.z, v5.z, r7.y
        dp3 r3.z, r8.xyzx, r2.xyzx
        mad r5.y, r3.z, v5.z, r5.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r3.y, l(32), t5.xyzw
        dp3 r3.y, r8.xyzx, r0.yzwy
        add r3.y, r8.w, r3.y
        mad r6.z, r3.y, v5.z, r6.z
        dp3 r3.y, r8.xyzx, r1.xyzx
        mad r7.z, r3.y, v5.z, r7.z
        dp3 r3.y, r8.xyzx, r2.xyzx
        mad r5.z, r3.y, v5.z, r5.z
        ne r3.y, v5.w, l(0.000000)
        if_nz r3.y
          iadd r2.w, r2.w, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(0), t5.xyzw
          dp3 r3.y, r8.xyzx, r0.yzwy
          add r3.y, r8.w, r3.y
          mad r6.x, r3.y, v5.w, r6.x
          dp3 r3.y, r8.xyzx, r1.xyzx
          mad r7.x, r3.y, v5.w, r7.x
          dp3 r3.y, r8.xyzx, r2.xyzx
          mad r5.x, r3.y, v5.w, r5.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(16), t5.xyzw
          dp3 r3.y, r8.xyzx, r0.yzwy
          add r3.y, r8.w, r3.y
          mad r6.y, r3.y, v5.w, r6.y
          dp3 r3.y, r8.xyzx, r1.xyzx
          mad r7.y, r3.y, v5.w, r7.y
          dp3 r3.y, r8.xyzx, r2.xyzx
          mad r5.y, r3.y, v5.w, r5.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r8.xyzw, r2.w, l(32), t5.xyzw
          dp3 r2.w, r8.xyzx, r0.yzwy
          add r2.w, r8.w, r2.w
          mad r6.z, r2.w, v5.w, r6.z
          dp3 r2.w, r8.xyzx, r1.xyzx
          mad r7.z, r2.w, v5.w, r7.z
          dp3 r2.w, r8.xyzx, r2.xyzx
          mad r5.z, r2.w, v5.w, r5.z
        endif 
      endif 
    endif 
    dp3 r2.w, r7.xyzx, r7.xyzx
    rsq r2.w, r2.w
    mul r1.xyz, r2.wwww, r7.xyzx
    dp3 r2.w, r5.xyzx, r5.xyzx
    rsq r2.w, r2.w
    mul r2.xyz, r2.wwww, r5.xyzx
  else 
    mov r6.xyz, r0.yzwy
  endif 
else 
  ftou r5.yw, r4.xxxy
  mov r5.x, v6.x
  mov r5.z, l(0)
  ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r5.xyzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xwzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r3.yzw, r5.xyzz, t3.wxyz
  ld_indexable(texture2d)(float,float,float,float) r4.xyw, r5.xwzz, t3.xywz
  ld_indexable(texture2d)(float,float,float,float) r9.xyz, r5.xzzz, t1.xyzw
  add r8.xyzw, -r7.xyzw, r8.xyzw
  mad r7.xyzw, r4.zzzz, r8.xyzw, r7.xyzw
  add r4.xyw, -r3.yzyw, r4.xyxw
  mad r3.yzw, r4.zzzz, r4.xxyw, r3.yyzw
  add r4.xyw, r0.yzyw, -r9.xyxz
  dp4 r2.w, r7.xyzw, r7.xyzw
  rsq r2.w, r2.w
  mul r7.xyzw, r2.wwww, r7.xyzw
  add r8.xyz, r7.xyzx, r7.xyzx
  mul r10.xyz, r7.xzwx, r8.xxxx
  mul r2.w, r7.w, r8.y
  mul r8.zw, r7.wwwz, r8.zzzz
  mad r9.w, r7.y, r8.y, r8.w
  add r11.x, -r9.w, l(1.000000)
  mad r12.x, r7.z, r8.x, -r2.w
  mad r11.y, r7.y, r8.x, -r8.z
  mad r13.xy, r7.yxyy, r8.xxxx, r8.zwzz
  mad r13.z, r7.z, r8.y, -r10.z
  mad r7.xyz, r7.zwyz, r8.yyyy, r10.zyxz
  mov r11.z, r7.y
  dp3 r8.x, r4.xywx, r11.xyzx
  add r13.w, -r13.y, l(1.000000)
  dp3 r8.y, r4.xwyx, r13.xzwx
  mad r12.yz, r7.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp3 r8.z, r4.xywx, r12.xyzx
  dp3 r7.x, r1.xyzx, r11.xyzx
  dp3 r7.y, r1.xzyx, r13.xzwx
  dp3 r7.z, r1.xyzx, r12.xyzx
  dp3 r10.x, r2.xyzx, r11.xyzx
  dp3 r10.y, r2.xzyx, r13.xzwx
  dp3 r10.z, r2.xyzx, r12.xyzx
  add r4.xyw, r9.xyxz, r8.xyxz
  add r3.yzw, r3.yyzw, r4.xxyw
  mul r6.xyz, r3.yzwy, v5.xxxx
  mul r3.yzw, r7.xxyz, v5.xxxx
  mul r4.xyw, r10.xyxz, v5.xxxx
  ne r2.w, v5.y, l(0.000000)
  if_nz r2.w
    mov r5.x, v6.y
    ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r5.xyzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xwzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r9.xyz, r5.xyzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r10.xyz, r5.xwzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r11.xyz, r5.xzzz, t1.xyzw
    add r8.xyzw, -r7.xyzw, r8.xyzw
    mad r7.xyzw, r4.zzzz, r8.xyzw, r7.xyzw
    add r8.xyz, -r9.xyzx, r10.xyzx
    mad r8.xyz, r4.zzzz, r8.xyzx, r9.xyzx
    add r9.xyz, r0.yzwy, -r11.xyzx
    dp4 r2.w, r7.xyzw, r7.xyzw
    rsq r2.w, r2.w
    mul r7.xyzw, r2.wwww, r7.xyzw
    add r10.xyz, r7.xyzx, r7.xyzx
    mul r12.xyz, r7.xzwx, r10.xxxx
    mul r2.w, r7.w, r10.y
    mul r10.zw, r7.wwwz, r10.zzzz
    mad r8.w, r7.y, r10.y, r10.w
    add r13.x, -r8.w, l(1.000000)
    mad r14.x, r7.z, r10.x, -r2.w
    mad r13.y, r7.y, r10.x, -r10.z
    mad r15.xy, r7.yxyy, r10.xxxx, r10.zwzz
    mad r15.z, r7.z, r10.y, -r12.z
    mad r7.xyz, r7.zwyz, r10.yyyy, r12.zyxz
    mov r13.z, r7.y
    dp3 r10.x, r9.xyzx, r13.xyzx
    add r15.w, -r15.y, l(1.000000)
    dp3 r10.y, r9.xzyx, r15.xzwx
    mad r14.yz, r7.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
    dp3 r10.z, r9.xyzx, r14.xyzx
    dp3 r7.x, r1.xyzx, r13.xyzx
    dp3 r7.y, r1.xzyx, r15.xzwx
    dp3 r7.z, r1.xyzx, r14.xyzx
    dp3 r9.x, r2.xyzx, r13.xyzx
    dp3 r9.y, r2.xzyx, r15.xzwx
    dp3 r9.z, r2.xyzx, r14.xyzx
    add r10.xyz, r11.xyzx, r10.xyzx
    add r8.xyz, r8.xyzx, r10.xyzx
    mad r6.xyz, r8.xyzx, v5.yyyy, r6.xyzx
    mad r3.yzw, r7.xxyz, v5.yyyy, r3.yyzw
    mad r4.xyw, r9.xyxz, v5.yyyy, r4.xyxw
    ne r2.w, v5.z, l(0.000000)
    if_nz r2.w
      mov r5.x, v6.z
      ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r5.xyzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xwzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r9.xyz, r5.xyzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r10.xyz, r5.xwzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r11.xyz, r5.xzzz, t1.xyzw
      add r8.xyzw, -r7.xyzw, r8.xyzw
      mad r7.xyzw, r4.zzzz, r8.xyzw, r7.xyzw
      add r8.xyz, -r9.xyzx, r10.xyzx
      mad r8.xyz, r4.zzzz, r8.xyzx, r9.xyzx
      add r9.xyz, r0.yzwy, -r11.xyzx
      dp4 r2.w, r7.xyzw, r7.xyzw
      rsq r2.w, r2.w
      mul r7.xyzw, r2.wwww, r7.xyzw
      add r10.xyz, r7.xyzx, r7.xyzx
      mul r12.xyz, r7.xzwx, r10.xxxx
      mul r2.w, r7.w, r10.y
      mul r10.zw, r7.wwwz, r10.zzzz
      mad r8.w, r7.y, r10.y, r10.w
      add r13.x, -r8.w, l(1.000000)
      mad r14.x, r7.z, r10.x, -r2.w
      mad r13.y, r7.y, r10.x, -r10.z
      mad r15.xy, r7.yxyy, r10.xxxx, r10.zwzz
      mad r15.z, r7.z, r10.y, -r12.z
      mad r7.xyz, r7.zwyz, r10.yyyy, r12.zyxz
      mov r13.z, r7.y
      dp3 r10.x, r9.xyzx, r13.xyzx
      add r15.w, -r15.y, l(1.000000)
      dp3 r10.y, r9.xzyx, r15.xzwx
      mad r14.yz, r7.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
      dp3 r10.z, r9.xyzx, r14.xyzx
      dp3 r7.x, r1.xyzx, r13.xyzx
      dp3 r7.y, r1.xzyx, r15.xzwx
      dp3 r7.z, r1.xyzx, r14.xyzx
      dp3 r9.x, r2.xyzx, r13.xyzx
      dp3 r9.y, r2.xzyx, r15.xzwx
      dp3 r9.z, r2.xyzx, r14.xyzx
      add r10.xyz, r11.xyzx, r10.xyzx
      add r8.xyz, r8.xyzx, r10.xyzx
      mad r6.xyz, r8.xyzx, v5.zzzz, r6.xyzx
      mad r3.yzw, r7.xxyz, v5.zzzz, r3.yyzw
      mad r4.xyw, r9.xyxz, v5.zzzz, r4.xyxw
      ne r2.w, v5.w, l(0.000000)
      if_nz r2.w
        mov r5.x, v6.w
        ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r5.xyzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r8.xyzw, r5.xwzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r9.xyz, r5.xyzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r10.xyz, r5.xwzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xzzz, t1.xyzw
        add r8.xyzw, -r7.xyzw, r8.xyzw
        mad r7.xyzw, r4.zzzz, r8.xyzw, r7.xyzw
        add r8.xyz, -r9.xyzx, r10.xyzx
        mad r8.xyz, r4.zzzz, r8.xyzx, r9.xyzx
        add r9.xyz, r0.yzwy, -r5.xyzx
        dp4 r2.w, r7.xyzw, r7.xyzw
        rsq r2.w, r2.w
        mul r7.xyzw, r2.wwww, r7.xyzw
        add r10.xyz, r7.xyzx, r7.xyzx
        mul r11.xyz, r7.xzwx, r10.xxxx
        mul r2.w, r7.w, r10.y
        mul r10.zw, r7.wwwz, r10.zzzz
        mad r4.z, r7.y, r10.y, r10.w
        add r12.x, -r4.z, l(1.000000)
        mad r13.x, r7.z, r10.x, -r2.w
        mad r12.y, r7.y, r10.x, -r10.z
        mad r14.xy, r7.yxyy, r10.xxxx, r10.zwzz
        mad r14.z, r7.z, r10.y, -r11.z
        mad r7.xyz, r7.zwyz, r10.yyyy, r11.zyxz
        mov r12.z, r7.y
        dp3 r10.x, r9.xyzx, r12.xyzx
        add r14.w, -r14.y, l(1.000000)
        dp3 r10.y, r9.xzyx, r14.xzwx
        mad r13.yz, r7.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
        dp3 r10.z, r9.xyzx, r13.xyzx
        dp3 r7.x, r1.xyzx, r12.xyzx
        dp3 r7.y, r1.xzyx, r14.xzwx
        dp3 r7.z, r1.xyzx, r13.xyzx
        dp3 r9.x, r2.xyzx, r12.xyzx
        dp3 r9.y, r2.xzyx, r14.xzwx
        dp3 r9.z, r2.xyzx, r13.xyzx
        add r5.xyz, r5.xyzx, r10.xyzx
        add r5.xyz, r8.xyzx, r5.xyzx
        mad r6.xyz, r5.xyzx, v5.wwww, r6.xyzx
        mad r3.yzw, r7.xxyz, v5.wwww, r3.yyzw
        mad r4.xyw, r9.xyxz, v5.wwww, r4.xyxw
      endif 
    endif 
  endif 
  dp3 r2.w, r3.yzwy, r3.yzwy
  rsq r2.w, r2.w
  mul r1.xyz, r2.wwww, r3.yzwy
  dp3 r2.w, r4.xywx, r4.xywx
  rsq r2.w, r2.w
  mul r2.xyz, r2.wwww, r4.xywx
endif 
mul r3.yzw, r1.zzxy, r2.yyzx
mad r3.yzw, r1.yyzx, r2.zzxy, -r3.yyzw
mul r3.yzw, r1.wwww, r3.yyzw
iadd r0.x, r0.x, r3.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(0), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(16), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r0.x, l(32), t5.xyzw
mov r8.x, r4.w
mov r8.y, r5.w
mov r8.z, r7.w
add r8.xyw, r8.xyxz, -cb1[24].xyxz
mov r6.w, l(1.000000)
mov r4.w, r8.x
dp4 r9.x, r6.xyzw, r4.xyzw
mov r5.w, r8.y
dp4 r9.y, r6.xyzw, r5.xyzw
mov r8.xyz, r7.xyzx
dp4 r9.z, r6.xyzw, r8.xyzw
dp3 r6.x, r1.xyzx, r4.xyzx
dp3 r6.y, r1.xyzx, r5.xyzx
dp3 r6.z, r1.xyzx, r8.xyzx
dp3 r0.x, r6.xyzx, r6.xyzx
rsq r0.x, r0.x
mul o4.xyz, r0.xxxx, r6.xyzx
dp3 r1.x, r2.xyzx, r4.xyzx
dp3 r1.y, r2.xyzx, r5.xyzx
dp3 r1.z, r2.xyzx, r8.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul o5.xyz, r0.xxxx, r1.xyzx
dp3 r1.x, r3.yzwy, r4.xyzx
dp3 r1.y, r3.yzwy, r5.xyzx
dp3 r1.z, r3.yzwy, r8.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul o6.xyz, r0.xxxx, r1.xyzx
mul r1.xyzw, r9.yyyy, cb1[9].xyzw
mad r1.xyzw, r9.xxxx, cb1[8].xyzw, r1.xyzw
mad r1.xyzw, r9.zzzz, cb1[10].xyzw, r1.xyzw
add o0.xyzw, r1.xyzw, cb1[11].xyzw
log r1.xyz, |v1.xyzx|
mul r1.xyz, r1.xyzx, l(2.200000, 2.200000, 2.200000, 0.000000)
exp o1.xyz, r1.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(0), t4.xxxx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v7.x, l(12), t4.xxxx
iadd r0.x, r0.x, r1.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.x, r0.x, l(12), t5.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.y, r0.x, l(28), t5.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.z, r0.x, l(44), t5.xxxx
mul r1.xyz, r1.xyzx, l(0.100000, 0.100000, 0.100000, 0.000000)
frc o3.xyz, r1.xyzx
mov o2.xy, v2.xyxx
mov o3.w, v7.x
mov o4.w, v1.w
mov o7.xyz, r9.xyzx
mov o8.xyz, r0.yzwy
ret 
// Approximately 382 instruction slots used