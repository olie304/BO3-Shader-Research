//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:27 2021
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
//   float4 skyRotationTransition;      // Offset:  912 Size:    16
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
// gpuSkinBase                       texture  float4          2d             t1      1 
// gpuSkinQuat                       texture  float4          2d             t2      1 
// gpuSkinPos                        texture  float4          2d             t3      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// boneMatrixBuffer                  texture  struct         r/o             t5      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// BLENDWEIGHT              0   xyzw        1     NONE   float   xyzw
// BLENDINDICES             0   xyzw        2     NONE    uint   xyzw
// TEXCOORD                15   x           3     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xyz         1     NONE   float   xyz 
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[58], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xyz
dcl_output o2.xyz
dcl_temps 11
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(16), t4.xxxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(48), t5.xyzw
movc r0.xyzw, r0.xxxx, r1.xyzw, l(0,0,0,0)
ne r1.x, l(0.000000, 0.000000, 0.000000, 0.000000), r0.w
if_nz r1.x
  ftou r0.w, r0.w
  if_nz r0.w
    iadd r1.x, r0.w, v2.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
    dp3 r1.y, r2.xyzx, v0.xyzx
    add r1.y, r2.w, r1.y
    mul r2.x, r1.y, v1.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
    dp3 r1.y, r3.xyzx, v0.xyzx
    add r1.y, r3.w, r1.y
    mul r2.y, r1.y, v1.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
    dp3 r1.x, r1.xyzx, v0.xyzx
    add r1.x, r1.w, r1.x
    mul r2.z, r1.x, v1.x
    ne r1.x, v1.y, l(0.000000)
    if_nz r1.x
      iadd r1.x, r0.w, v2.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
      dp3 r1.y, r3.xyzx, v0.xyzx
      add r1.y, r3.w, r1.y
      mad r2.x, r1.y, v1.y, r2.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
      dp3 r1.y, r3.xyzx, v0.xyzx
      add r1.y, r3.w, r1.y
      mad r2.y, r1.y, v1.y, r2.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
      dp3 r1.x, r1.xyzx, v0.xyzx
      add r1.x, r1.w, r1.x
      mad r2.z, r1.x, v1.y, r2.z
      ne r1.x, v1.z, l(0.000000)
      if_nz r1.x
        iadd r1.x, r0.w, v2.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
        dp3 r1.y, r3.xyzx, v0.xyzx
        add r1.y, r3.w, r1.y
        mad r2.x, r1.y, v1.z, r2.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
        dp3 r1.y, r3.xyzx, v0.xyzx
        add r1.y, r3.w, r1.y
        mad r2.y, r1.y, v1.z, r2.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
        dp3 r1.x, r1.xyzx, v0.xyzx
        add r1.x, r1.w, r1.x
        mad r2.z, r1.x, v1.z, r2.z
        ne r1.x, v1.w, l(0.000000)
        if_nz r1.x
          iadd r0.w, r0.w, v2.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(0), t5.xyzw
          dp3 r1.x, r1.xyzx, v0.xyzx
          add r1.x, r1.w, r1.x
          mad r2.x, r1.x, v1.w, r2.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(16), t5.xyzw
          dp3 r1.x, r1.xyzx, v0.xyzx
          add r1.x, r1.w, r1.x
          mad r2.y, r1.x, v1.w, r2.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.w, l(32), t5.xyzw
          dp3 r0.w, r1.xyzx, v0.xyzx
          add r0.w, r1.w, r0.w
          mad r2.z, r0.w, v1.w, r2.z
        endif 
      endif 
    endif 
  else 
    mov r2.xyz, v0.xyzx
  endif 
else 
  ftou r1.yw, r0.xxxy
  mov r1.x, v2.x
  mov r1.z, l(0)
  ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.xwzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r0.xyw, r1.xyzz, t3.xywz
  ld_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xwzz, t3.xyzw
  ld_indexable(texture2d)(float,float,float,float) r6.xyz, r1.xzzz, t1.xyzw
  add r4.xyzw, -r3.xyzw, r4.xyzw
  mad r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
  add r4.xyz, -r0.xywx, r5.xyzx
  mad r0.xyw, r0.zzzz, r4.xyxz, r0.xyxw
  add r4.xyz, -r6.xyzx, v0.xyzx
  dp4 r2.w, r3.xyzw, r3.xyzw
  rsq r2.w, r2.w
  mul r3.xyzw, r2.wwww, r3.xyzw
  add r5.xyz, r3.xyzx, r3.xyzx
  mul r7.xyz, r3.xzwx, r5.xxxx
  mul r2.w, r3.w, r5.y
  mul r5.zw, r3.wwwz, r5.zzzz
  mad r4.w, r3.y, r5.y, r5.w
  add r8.x, -r4.w, l(1.000000)
  mad r9.x, r3.z, r5.x, -r2.w
  mad r8.y, r3.y, r5.x, -r5.z
  mad r10.xy, r3.yxyy, r5.xxxx, r5.zwzz
  mad r10.z, r3.z, r5.y, -r7.z
  mad r3.xyz, r3.zwyz, r5.yyyy, r7.zyxz
  mov r8.z, r3.y
  dp3 r5.x, r4.xyzx, r8.xyzx
  add r10.w, -r10.y, l(1.000000)
  dp3 r5.y, r4.xzyx, r10.xzwx
  mad r9.yz, r3.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp3 r5.z, r4.xyzx, r9.xyzx
  add r3.xyz, r6.xyzx, r5.xyzx
  add r0.xyw, r0.xyxw, r3.xyxz
  mul r2.xyz, r0.xywx, v1.xxxx
  ne r0.x, v1.y, l(0.000000)
  if_nz r0.x
    mov r1.x, v2.y
    ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.xwzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r0.xyw, r1.xyzz, t3.xywz
    ld_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xwzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r6.xyz, r1.xzzz, t1.xyzw
    add r4.xyzw, -r3.xyzw, r4.xyzw
    mad r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
    add r4.xyz, -r0.xywx, r5.xyzx
    mad r0.xyw, r0.zzzz, r4.xyxz, r0.xyxw
    add r4.xyz, -r6.xyzx, v0.xyzx
    dp4 r2.w, r3.xyzw, r3.xyzw
    rsq r2.w, r2.w
    mul r3.xyzw, r2.wwww, r3.xyzw
    add r5.xyz, r3.xyzx, r3.xyzx
    mul r7.xyz, r3.xzwx, r5.xxxx
    mul r2.w, r3.w, r5.y
    mul r5.zw, r3.wwwz, r5.zzzz
    mad r4.w, r3.y, r5.y, r5.w
    add r8.x, -r4.w, l(1.000000)
    mad r9.x, r3.z, r5.x, -r2.w
    mad r8.y, r3.y, r5.x, -r5.z
    mad r10.xy, r3.yxyy, r5.xxxx, r5.zwzz
    mad r10.z, r3.z, r5.y, -r7.z
    mad r3.xyz, r3.zwyz, r5.yyyy, r7.zyxz
    mov r8.z, r3.y
    dp3 r5.x, r4.xyzx, r8.xyzx
    add r10.w, -r10.y, l(1.000000)
    dp3 r5.y, r4.xzyx, r10.xzwx
    mad r9.yz, r3.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
    dp3 r5.z, r4.xyzx, r9.xyzx
    add r3.xyz, r6.xyzx, r5.xyzx
    add r0.xyw, r0.xyxw, r3.xyxz
    mad r2.xyz, r0.xywx, v1.yyyy, r2.xyzx
    ne r0.x, v1.z, l(0.000000)
    if_nz r0.x
      mov r1.x, v2.z
      ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.xwzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r0.xyw, r1.xyzz, t3.xywz
      ld_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xwzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r6.xyz, r1.xzzz, t1.xyzw
      add r4.xyzw, -r3.xyzw, r4.xyzw
      mad r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
      add r4.xyz, -r0.xywx, r5.xyzx
      mad r0.xyw, r0.zzzz, r4.xyxz, r0.xyxw
      add r4.xyz, -r6.xyzx, v0.xyzx
      dp4 r2.w, r3.xyzw, r3.xyzw
      rsq r2.w, r2.w
      mul r3.xyzw, r2.wwww, r3.xyzw
      add r5.xyz, r3.xyzx, r3.xyzx
      mul r7.xyz, r3.xzwx, r5.xxxx
      mul r2.w, r3.w, r5.y
      mul r5.zw, r3.wwwz, r5.zzzz
      mad r4.w, r3.y, r5.y, r5.w
      add r8.x, -r4.w, l(1.000000)
      mad r9.x, r3.z, r5.x, -r2.w
      mad r8.y, r3.y, r5.x, -r5.z
      mad r10.xy, r3.yxyy, r5.xxxx, r5.zwzz
      mad r10.z, r3.z, r5.y, -r7.z
      mad r3.xyz, r3.zwyz, r5.yyyy, r7.zyxz
      mov r8.z, r3.y
      dp3 r5.x, r4.xyzx, r8.xyzx
      add r10.w, -r10.y, l(1.000000)
      dp3 r5.y, r4.xzyx, r10.xzwx
      mad r9.yz, r3.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
      dp3 r5.z, r4.xyzx, r9.xyzx
      add r3.xyz, r6.xyzx, r5.xyzx
      add r0.xyw, r0.xyxw, r3.xyxz
      mad r2.xyz, r0.xywx, v1.zzzz, r2.xyzx
      ne r0.x, v1.w, l(0.000000)
      if_nz r0.x
        mov r1.x, v2.w
        ld_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r1.xwzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r0.xyw, r1.xyzz, t3.xywz
        ld_indexable(texture2d)(float,float,float,float) r5.xyz, r1.xwzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xzzz, t1.xyzw
        add r4.xyzw, -r3.xyzw, r4.xyzw
        mad r3.xyzw, r0.zzzz, r4.xyzw, r3.xyzw
        add r4.xyz, -r0.xywx, r5.xyzx
        mad r0.xyz, r0.zzzz, r4.xyzx, r0.xywx
        add r4.xyz, -r1.xyzx, v0.xyzx
        dp4 r0.w, r3.xyzw, r3.xyzw
        rsq r0.w, r0.w
        mul r3.xyzw, r0.wwww, r3.xyzw
        add r5.xyz, r3.xyzx, r3.xyzx
        mul r6.xyz, r3.xzwx, r5.xxxx
        mul r0.w, r3.w, r5.y
        mul r5.zw, r3.wwwz, r5.zzzz
        mad r1.w, r3.y, r5.y, r5.w
        add r7.x, -r1.w, l(1.000000)
        mad r8.x, r3.z, r5.x, -r0.w
        mad r7.y, r3.y, r5.x, -r5.z
        mad r9.xy, r3.yxyy, r5.xxxx, r5.zwzz
        mad r9.z, r3.z, r5.y, -r6.z
        mad r3.xyz, r3.zwyz, r5.yyyy, r6.zyxz
        mov r7.z, r3.y
        dp3 r5.x, r4.xyzx, r7.xyzx
        add r9.w, -r9.y, l(1.000000)
        dp3 r5.y, r4.xzyx, r9.xzwx
        mad r8.yz, r3.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
        dp3 r5.z, r4.xyzx, r8.xyzx
        add r1.xyz, r1.xyzx, r5.xyzx
        add r0.xyz, r0.xyzx, r1.xyzx
        mad r2.xyz, r0.xyzx, v1.wwww, r2.xyzx
      endif 
    endif 
  endif 
endif 
add r0.xyz, r2.xyzx, -cb1[24].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
mul r1.xyz, r0.xyzx, |cb1[57].zzzz|
mul r2.xyz, r1.yyyy, cb1[9].xywx
mad r2.xyz, r1.xxxx, cb1[8].xywx, r2.xyzx
mad r2.xyz, r1.zzzz, cb1[10].xywx, r2.xyzx
add o0.xyw, r2.xyxz, cb1[11].xyxw
mul r2.xy, cb1[57].yxyy, l(1.000000, -1.000000, 0.000000, 0.000000)
dp2 o1.x, r0.xyxx, r2.xyxx
dp2 o1.y, r0.xyxx, cb1[57].xyxx
lt r0.x, cb1[57].z, l(0.000000)
movc o1.z, r0.x, -r0.z, r0.z
mov o0.z, l(0)
mov o2.xyz, r1.xyzx
ret 
// Approximately 237 instruction slots used
