//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:16 2021
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
// cbuffer MotionVectorParams
// {
//
//   struct MotionVectorConstants
//   {
//       
//       row_major float4x4 prevFrameOffToClpMatrixFull;// Offset:    0
//       row_major float4x4 prevFrameOffToClpMatrixPartial;// Offset:   64
//       row_major float4x4 curFrameCamToOffMatrix;// Offset:  128
//       float3 prevFrameEyeOffset;     // Offset:  192
//       float motionStrength;          // Offset:  204
//       float3 eyeOffsetFrameDelta;    // Offset:  208
//       float _padding_23;             // Offset:  220
//       float2 curFrameHalfNearPlaneSize;// Offset:  224
//       float2 _padding_26;            // Offset:  232
//
//   } motionVectorConstants;           // Offset:    0 Size:   240
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
// Resource bind info for boneMatrixBufferPrevFrame
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
// boneMatrixBufferPrevFrame         texture  struct         r/o             t8      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// MotionVectorParams                cbuffer      NA          NA            cb7      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float      w
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
// COLOR                    1   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// UVOFFSETS                0   xyz         2     NONE   float   xyz 
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 7   xyzw        6     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_constantbuffer CB7[13], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_resource_structured t8, 64
dcl_input v0.xyz
dcl_input v1.w
dcl_input v2.xy
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input v7.x
dcl_output_siv o0.xyzw, position
dcl_output o1.x
dcl_output o1.yz
dcl_output o2.xyz
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_output o6.xyzw
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
          iadd r2.x, r1.w, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(0), t5.xyzw
          dp3 r2.y, r6.xyzx, v0.xyzx
          add r2.y, r6.w, r2.y
          mad r4.x, r2.y, v5.w, r4.x
          dp3 r2.y, r6.xyzx, r0.xyzx
          mad r5.x, r2.y, v5.w, r5.x
          dp3 r2.y, r6.xyzx, r1.xyzx
          mad r3.x, r2.y, v5.w, r3.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r2.x, l(16), t5.xyzw
          dp3 r2.y, r6.xyzx, v0.xyzx
          add r2.y, r6.w, r2.y
          mad r4.y, r2.y, v5.w, r4.y
          dp3 r2.y, r6.xyzx, r0.xyzx
          mad r5.y, r2.y, v5.w, r5.y
          dp3 r2.y, r6.xyzx, r1.xyzx
          mad r3.y, r2.y, v5.w, r3.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
          dp3 r3.w, r2.xyzx, v0.xyzx
          add r2.w, r2.w, r3.w
          mad r4.z, r2.w, v5.w, r4.z
          dp3 r2.w, r2.xyzx, r0.xyzx
          mad r5.z, r2.w, v5.w, r5.z
          dp3 r2.x, r2.xyzx, r1.xyzx
          mad r3.z, r2.x, v5.w, r3.z
        endif 
      endif 
    endif 
  else 
    mov r4.xyz, l(0,0,0,0)
    mov r5.xyz, l(0,0,0,0)
    mov r3.xyz, l(0,0,0,0)
  endif 
  dp3 r2.x, r5.xyzx, r5.xyzx
  rsq r2.x, r2.x
  mul r0.xyz, r2.xxxx, r5.xyzx
  dp3 r2.x, r3.xyzx, r3.xyzx
  rsq r2.x, r2.x
  mul r1.xyz, r2.xxxx, r3.xyzx
else 
  mov r4.xyz, v0.xyzx
endif 
mul r2.xyz, r0.zxyz, r1.yzxy
mad r2.xyz, r0.yzxy, r1.zxyz, -r2.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.xy, v7.x, l(8), t4.xyxx
if_nz r3.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r3.y, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r3.y, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.y, l(32), t5.xywz
  mov r8.xyz, r7.xywx
  mov r7.x, r5.w
  mov r7.y, r6.w
else 
  mov r5.xyz, l(1.000000,0,0,0)
  mov r6.xyz, l(0,1.000000,0,0)
  mov r8.xyz, l(0,0,1.000000,0)
  mov r7.xyz, l(0,0,0,0)
endif 
add r7.xyz, r7.xyzx, -cb1[24].xyzx
mov r4.w, l(1.000000)
mov r5.w, r7.x
dp4 r0.w, r4.xyzw, r5.xyzw
mov r6.w, r7.y
dp4 r2.w, r4.xyzw, r6.xyzw
mov r8.w, r7.z
dp4 r3.z, r4.xyzw, r8.xyzw
dp3 r4.x, r0.xyzx, r5.xyzx
dp3 r4.y, r0.xyzx, r6.xyzx
dp3 r4.z, r0.xyzx, r8.xyzx
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul o3.xyz, r0.xxxx, r4.xyzx
dp3 r0.x, r1.xyzx, r5.xyzx
dp3 r0.y, r1.xyzx, r6.xyzx
dp3 r0.z, r1.xyzx, r8.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul o4.xyz, r0.xyzx, r1.xxxx
dp3 r0.x, r2.xyzx, r5.xyzx
dp3 r0.y, r2.xyzx, r6.xyzx
dp3 r0.z, r2.xyzx, r8.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul o5.xyz, r0.xyzx, r1.xxxx
mul r2.xyzw, r2.wwww, cb1[9].xyzw
mad r0.xyzw, r0.wwww, cb1[8].xyzw, r2.xyzw
mad r0.xyzw, r3.zzzz, cb1[10].xyzw, r0.xyzw
add o0.xyzw, r0.xyzw, cb1[11].xyzw
if_nz r3.y
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.x, r3.y, l(12), t5.xxxx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.y, r3.y, l(28), t5.xxxx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.z, r3.y, l(44), t5.xxxx
else 
  mov r0.xyz, l(0,0,0,0)
endif 
mul r0.xyz, r0.xyzx, l(0.100000, 0.100000, 0.100000, 0.000000)
frc o2.xyz, r0.xyzx
and r0.x, r3.x, l(0x0fffffff)
if_nz r0.x
  if_nz r0.x
    ne r0.y, v5.x, l(0.000000)
    if_nz r0.y
      iadd r0.y, r0.x, v6.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.y, l(0), t8.xyzw
      dp3 r0.z, r2.xyzx, v0.xyzx
      add r0.z, r2.w, r0.z
      mul r2.x, r0.z, v5.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t8.xyzw
      dp3 r0.z, r3.xyzx, v0.xyzx
      add r0.z, r3.w, r0.z
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t8.xyzw
      dp3 r0.y, r3.xyzx, v0.xyzx
      add r0.y, r3.w, r0.y
      mul r2.yz, r0.zzyz, v5.xxxx
      ne r0.y, v5.y, l(0.000000)
      if_nz r0.y
        iadd r0.y, r0.x, v6.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t8.xyzw
        dp3 r0.z, r3.xyzx, v0.xyzx
        add r0.z, r3.w, r0.z
        mad r2.x, r0.z, v5.y, r2.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t8.xyzw
        dp3 r0.z, r3.xyzx, v0.xyzx
        add r0.z, r3.w, r0.z
        mad r2.y, r0.z, v5.y, r2.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t8.xyzw
        dp3 r0.y, r3.xyzx, v0.xyzx
        add r0.y, r3.w, r0.y
        mad r2.z, r0.y, v5.y, r2.z
        ne r0.y, v5.z, l(0.000000)
        if_nz r0.y
          iadd r0.y, r0.x, v6.z
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t8.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.x, r0.z, v5.z, r2.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t8.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.y, r0.z, v5.z, r2.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t8.xyzw
          dp3 r0.y, r3.xyzx, v0.xyzx
          add r0.y, r3.w, r0.y
          mad r2.z, r0.y, v5.z, r2.z
          ne r0.y, v5.w, l(0.000000)
          if_nz r0.y
            iadd r0.y, r0.x, v6.w
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t8.xyzw
            dp3 r0.z, r3.xyzx, v0.xyzx
            add r0.z, r3.w, r0.z
            mad r2.x, r0.z, v5.w, r2.x
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t8.xyzw
            dp3 r0.z, r3.xyzx, v0.xyzx
            add r0.z, r3.w, r0.z
            mad r2.y, r0.z, v5.w, r2.y
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t8.xyzw
            dp3 r0.y, r3.xyzx, v0.xyzx
            add r0.y, r3.w, r0.y
            mad r2.z, r0.y, v5.w, r2.z
          endif 
        endif 
      endif 
    else 
      mov r2.xyz, l(0,0,0,0)
    endif 
  else 
    mov r2.xyz, v0.xyzx
  endif 
else 
  if_nz r1.w
    ne r0.y, v5.x, l(0.000000)
    if_nz r0.y
      iadd r0.y, r1.w, v6.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
      dp3 r0.z, r3.xyzx, v0.xyzx
      add r0.z, r3.w, r0.z
      mul r2.x, r0.z, v5.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
      dp3 r0.z, r3.xyzx, v0.xyzx
      add r0.z, r3.w, r0.z
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
      dp3 r0.y, r3.xyzx, v0.xyzx
      add r0.y, r3.w, r0.y
      mul r2.yz, r0.zzyz, v5.xxxx
      ne r0.y, v5.y, l(0.000000)
      if_nz r0.y
        iadd r0.y, r1.w, v6.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
        dp3 r0.z, r3.xyzx, v0.xyzx
        add r0.z, r3.w, r0.z
        mad r2.x, r0.z, v5.y, r2.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
        dp3 r0.z, r3.xyzx, v0.xyzx
        add r0.z, r3.w, r0.z
        mad r2.y, r0.z, v5.y, r2.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
        dp3 r0.y, r3.xyzx, v0.xyzx
        add r0.y, r3.w, r0.y
        mad r2.z, r0.y, v5.y, r2.z
        ne r0.y, v5.z, l(0.000000)
        if_nz r0.y
          iadd r0.y, r1.w, v6.z
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.x, r0.z, v5.z, r2.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.y, r0.z, v5.z, r2.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
          dp3 r0.y, r3.xyzx, v0.xyzx
          add r0.y, r3.w, r0.y
          mad r2.z, r0.y, v5.z, r2.z
          ne r0.y, v5.w, l(0.000000)
          if_nz r0.y
            iadd r0.y, r1.w, v6.w
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
            dp3 r0.z, r3.xyzx, v0.xyzx
            add r0.z, r3.w, r0.z
            mad r2.x, r0.z, v5.w, r2.x
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
            dp3 r0.z, r3.xyzx, v0.xyzx
            add r0.z, r3.w, r0.z
            mad r2.y, r0.z, v5.w, r2.y
            ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
            dp3 r0.y, r3.xyzx, v0.xyzx
            add r0.y, r3.w, r0.y
            mad r2.z, r0.y, v5.w, r2.z
          endif 
        endif 
      endif 
    else 
      mov r2.xyz, l(0,0,0,0)
    endif 
  else 
    mov r2.xyz, v0.xyzx
  endif 
endif 
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.y, v7.x, l(12), t4.xxxx
ine r0.z, r0.y, l(0)
ieq r0.w, r1.w, l(0)
and r0.z, r0.w, r0.z
ine r0.w, r0.x, l(0)
and r0.z, r0.w, r0.z
movc r0.x, r0.z, r0.x, r0.y
if_nz r0.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t8.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t8.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r0.xyzw, r0.x, l(32), t8.xywz
  mov r4.xyz, r0.xywx
  mov r0.x, r1.w
  mov r0.y, r3.w
else 
  mov r1.xyz, l(1.000000,0,0,0)
  mov r3.xyz, l(0,1.000000,0,0)
  mov r4.xyz, l(0,0,1.000000,0)
  mov r0.xyz, l(0,0,0,0)
endif 
add r0.xyz, r0.xyzx, -cb7[12].xyzx
mov r2.w, l(1.000000)
mov r1.w, r0.x
dp4 r0.x, r2.xyzw, r1.xyzw
mov r3.w, r0.y
dp4 r0.y, r2.xyzw, r3.xyzw
mov r4.w, r0.z
dp4 r0.z, r2.xyzw, r4.xyzw
mul r1.xyzw, r0.yyyy, cb7[1].xyzw
mad r1.xyzw, r0.xxxx, cb7[0].xyzw, r1.xyzw
mad r0.xyzw, r0.zzzz, cb7[2].xyzw, r1.xyzw
add o6.xyzw, r0.xyzw, cb7[3].xyzw
mov o1.x, v1.w
mov o1.yz, v2.xxyx
ret 
// Approximately 363 instruction slots used
