//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:36:04 2021
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4 flagParams;                 // Offset:    0 Size:    16
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
//   float3 colorTint1;                 // Offset:  176 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  188 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  192 Size:     8 [unused]
//   float detailScaleHeight;           // Offset:  200 Size:     4 [unused]
//   float4 flagScrollParms;            // Offset:  208 Size:    16 [unused]
//   float flagRippleScale;             // Offset:  224 Size:     4 [unused]
//   float flagRippleHeight;            // Offset:  228 Size:     4 [unused]
//   float2 wind1Parms;                 // Offset:  232 Size:     8
//   float2 wind2Parms;                 // Offset:  240 Size:     8
//   float2 wind3Parms;                 // Offset:  248 Size:     8
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
// COLOR                    0   xyzw        1     NONE   float   xyz 
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
// OFFPOSITION              0   xyz         6     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[16], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xyz
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
dcl_output o6.xyz
dcl_temps 10
add r0.xyzw, -v2.xyxy, l(1.000000, 1.000000, 1.000000, 1.000000)
mul r1.xy, r0.zwzz, cb0[14].zwzz
mul r0.xyzw, r0.xyzw, cb0[15].xyzw
mul r1.xy, r1.xyxx, l(3.631899, 3.631899, 0.000000, 0.000000)
add r1.x, r1.y, r1.x
add r1.y, cb0[0].y, cb1[69].w
mul r1.y, r1.y, cb0[0].x
mad r1.x, r1.y, l(5.65486670), r1.x
mul r0.xyzw, r0.xyzw, l(8.377581, 8.377581, 20.268339, 20.268339)
add r0.xy, r0.ywyy, r0.xzxx
mad r0.xy, r1.yyyy, l(9.424778, 7.539823, 0.000000, 0.000000), r0.xyxx
sincos r1.x, r2.x, r1.x
sincos r0.xy, r3.xy, r0.xyxx
mul r0.x, r0.x, l(3.000000)
mad r0.x, r1.x, l(7.500000), r0.x
mad r0.x, r0.y, l(1.700000), r0.x
mul r0.x, r0.x, v1.y
mad r0.yzw, v3.xxyz, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
mad r1.xyz, r0.xxxx, r0.yzwy, v0.xyzx
mad r2.yzw, v4.xxyz, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
mad r0.x, v4.w, l(2.000000), l(-1.000000)
mul r4.xyz, r0.wyzw, r2.zwyz
mad r4.xyz, r0.zwyz, r2.wyzw, -r4.xyzx
mul r4.xyz, r0.xxxx, r4.xyzx
dp3 r3.z, r4.xyzx, r4.xyzx
rsq r3.z, r3.z
mul r4.xyz, r3.zzzz, r4.xyzx
mul r3.z, cb0[14].z, l(27.239243)
mul r3.w, r2.x, cb0[14].w
mul r5.xy, cb0[15].xzxx, l(25.132742, 34.456177, 0.000000, 0.000000)
mul r5.zw, r3.xxxy, cb0[15].yyyw
mul r3.x, r3.x, r5.x
mul r4.w, r5.z, l(25.132742)
mad r2.x, r3.z, r2.x, r3.x
mad r2.x, r5.y, r3.y, r2.x
mul r2.x, r2.x, v1.y
mul r2.x, r2.x, l(0.025000)
mad r3.x, r3.w, l(27.239243), r4.w
mad r3.x, r5.w, l(34.456177), r3.x
mul r3.x, r3.x, v1.y
mul r3.x, r3.x, l(0.025000)
mul r3.xyz, r4.xyzx, r3.xxxx
mad r3.xyz, r2.xxxx, r2.yzwy, r3.xyzx
add r0.yzw, r0.yyzw, r3.xxyz
dp3 r2.x, r0.yzwy, r0.yzwy
rsq r2.x, r2.x
mul r0.yzw, r0.yyzw, r2.xxxx
mad r0.yzw, r0.yyzw, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.x, v7.x, l(0), t4.xxxx
if_nz r2.x
  ne r3.x, v5.x, l(0.000000)
  if_nz r3.x
    iadd r3.x, r2.x, v6.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.x, l(0), t5.xyzw
    dp3 r3.y, r4.xyzx, r1.xyzx
    add r3.y, r4.w, r3.y
    mul r5.x, r3.y, v5.x
    dp3 r3.y, r4.xyzx, r0.yzwy
    mul r6.x, r3.y, v5.x
    dp3 r3.y, r4.xyzx, r2.yzwy
    mul r4.x, r3.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
    dp3 r3.y, r7.xyzx, r1.xyzx
    add r3.y, r7.w, r3.y
    mul r5.y, r3.y, v5.x
    dp3 r3.y, r7.xyzx, r0.yzwy
    mul r6.y, r3.y, v5.x
    dp3 r3.y, r7.xyzx, r2.yzwy
    mul r4.y, r3.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
    dp3 r4.w, r3.xyzx, r1.xyzx
    add r3.w, r3.w, r4.w
    mul r5.z, r3.w, v5.x
    dp3 r3.w, r3.xyzx, r0.yzwy
    mul r6.z, r3.w, v5.x
    dp3 r3.x, r3.xyzx, r2.yzwy
    mul r4.z, r3.x, v5.x
    ne r3.x, v5.y, l(0.000000)
    if_nz r3.x
      iadd r3.x, r2.x, v6.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
      dp3 r3.y, r7.xyzx, r1.xyzx
      add r3.y, r7.w, r3.y
      mad r8.x, r3.y, v5.y, r5.x
      dp3 r3.y, r7.xyzx, r0.yzwy
      mad r6.x, r3.y, v5.y, r6.x
      dp3 r3.y, r7.xyzx, r2.yzwy
      mad r4.x, r3.y, v5.y, r4.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
      dp3 r3.y, r7.xyzx, r1.xyzx
      add r3.y, r7.w, r3.y
      mad r8.y, r3.y, v5.y, r5.y
      dp3 r3.y, r7.xyzx, r0.yzwy
      mad r6.y, r3.y, v5.y, r6.y
      dp3 r3.y, r7.xyzx, r2.yzwy
      mad r4.y, r3.y, v5.y, r4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
      dp3 r4.w, r3.xyzx, r1.xyzx
      add r3.w, r3.w, r4.w
      mad r8.z, r3.w, v5.y, r5.z
      dp3 r3.w, r3.xyzx, r0.yzwy
      mad r6.z, r3.w, v5.y, r6.z
      dp3 r3.x, r3.xyzx, r2.yzwy
      mad r4.z, r3.x, v5.y, r4.z
      ne r3.x, v5.z, l(0.000000)
      if_nz r3.x
        iadd r3.x, r2.x, v6.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
        dp3 r3.y, r7.xyzx, r1.xyzx
        add r3.y, r7.w, r3.y
        mad r9.x, r3.y, v5.z, r8.x
        dp3 r3.y, r7.xyzx, r0.yzwy
        mad r6.x, r3.y, v5.z, r6.x
        dp3 r3.y, r7.xyzx, r2.yzwy
        mad r4.x, r3.y, v5.z, r4.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
        dp3 r3.y, r7.xyzx, r1.xyzx
        add r3.y, r7.w, r3.y
        mad r9.y, r3.y, v5.z, r8.y
        dp3 r3.y, r7.xyzx, r0.yzwy
        mad r6.y, r3.y, v5.z, r6.y
        dp3 r3.y, r7.xyzx, r2.yzwy
        mad r4.y, r3.y, v5.z, r4.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
        dp3 r4.w, r3.xyzx, r1.xyzx
        add r3.w, r3.w, r4.w
        mad r9.z, r3.w, v5.z, r8.z
        dp3 r3.w, r3.xyzx, r0.yzwy
        mad r6.z, r3.w, v5.z, r6.z
        dp3 r3.x, r3.xyzx, r2.yzwy
        mad r4.z, r3.x, v5.z, r4.z
        ne r3.x, v5.w, l(0.000000)
        if_nz r3.x
          iadd r2.x, r2.x, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.x, l(0), t5.xyzw
          dp3 r4.w, r3.xyzx, r1.xyzx
          add r3.w, r3.w, r4.w
          mad r7.x, r3.w, v5.w, r9.x
          dp3 r3.w, r3.xyzx, r0.yzwy
          mad r6.x, r3.w, v5.w, r6.x
          dp3 r3.x, r3.xyzx, r2.yzwy
          mad r4.x, r3.x, v5.w, r4.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.x, l(16), t5.xyzw
          dp3 r4.w, r3.xyzx, r1.xyzx
          add r3.w, r3.w, r4.w
          mad r7.y, r3.w, v5.w, r9.y
          dp3 r3.w, r3.xyzx, r0.yzwy
          mad r6.y, r3.w, v5.w, r6.y
          dp3 r3.x, r3.xyzx, r2.yzwy
          mad r4.y, r3.x, v5.w, r4.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.x, l(32), t5.xyzw
          dp3 r2.x, r3.xyzx, r1.xyzx
          add r2.x, r3.w, r2.x
          mad r7.z, r2.x, v5.w, r9.z
          dp3 r2.x, r3.xyzx, r0.yzwy
          mad r6.z, r2.x, v5.w, r6.z
          dp3 r2.x, r3.xyzx, r2.yzwy
          mad r4.z, r2.x, v5.w, r4.z
          mov r1.xyz, r7.xyzx
        else 
          mov r1.xyz, r9.xyzx
        endif 
      else 
        mov r1.xyz, r8.xyzx
      endif 
    else 
      mov r1.xyz, r5.xyzx
    endif 
  else 
    mov r1.xyz, l(0,0,0,0)
    mov r6.xyz, l(0,0,0,0)
    mov r4.xyz, l(0,0,0,0)
  endif 
  dp3 r2.x, r6.xyzx, r6.xyzx
  rsq r2.x, r2.x
  mul r0.yzw, r2.xxxx, r6.xxyz
  dp3 r2.x, r4.xyzx, r4.xyzx
  rsq r2.x, r2.x
  mul r2.yzw, r2.xxxx, r4.xxyz
endif 
mul r3.xyz, r0.wyzw, r2.zwyz
mad r3.xyz, r0.zwyz, r2.wyzw, -r3.xyzx
mul r3.xyz, r0.xxxx, r3.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v7.x, l(12), t4.xxxx
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.x, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.x, l(32), t5.xywz
  mov r7.xyz, r6.xywx
  mov r6.x, r4.w
  mov r6.y, r5.w
else 
  mov r4.xyz, l(1.000000,0,0,0)
  mov r5.xyz, l(0,1.000000,0,0)
  mov r7.xyz, l(0,0,1.000000,0)
  mov r6.xyz, l(0,0,0,0)
endif 
add r6.xyz, r6.xyzx, -cb1[24].xyzx
mov r1.w, l(1.000000)
mov r4.w, r6.x
dp4 r8.x, r1.xyzw, r4.xyzw
mov r5.w, r6.y
dp4 r8.y, r1.xyzw, r5.xyzw
mov r7.w, r6.z
dp4 r8.z, r1.xyzw, r7.xyzw
dp3 r1.x, r0.yzwy, r4.xyzx
dp3 r1.y, r0.yzwy, r5.xyzx
dp3 r1.z, r0.yzwy, r7.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul o3.xyz, r0.xxxx, r1.xyzx
dp3 r0.x, r2.yzwy, r4.xyzx
dp3 r0.y, r2.yzwy, r5.xyzx
dp3 r0.z, r2.yzwy, r7.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul o4.xyz, r0.wwww, r0.xyzx
dp3 r0.x, r3.xyzx, r4.xyzx
dp3 r0.y, r3.xyzx, r5.xyzx
dp3 r0.z, r3.xyzx, r7.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul o5.xyz, r0.wwww, r0.xyzx
mul r0.xyzw, r8.yyyy, cb1[9].xyzw
mad r0.xyzw, r8.xxxx, cb1[8].xyzw, r0.xyzw
mad r0.xyzw, r8.zzzz, cb1[10].xyzw, r0.xyzw
add o0.xyzw, r0.xyzw, cb1[11].xyzw
log r0.xyz, |v1.xyzx|
mul r0.xyz, r0.xyzx, l(2.200000, 2.200000, 2.200000, 0.000000)
exp o1.xyz, r0.xyzx
mov o1.w, l(1.000000)
mov o6.xyz, r8.xyzx
mov o2.xy, v2.xyxx
ret 
// Approximately 234 instruction slots used
