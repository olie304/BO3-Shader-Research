//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:18 2021
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
// TEXCOORD                 0   xy          1     NONE   float   xy  
// NORMAL                   0   xyz         2     NONE   float   xyz 
// BLENDWEIGHT              0   xyzw        3     NONE   float   xyzw
// BLENDINDICES             0   xyzw        4     NONE    uint   xyzw
// TEXCOORD                15   x           5     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xy
dcl_input v2.xyz
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_output o2.xyz
dcl_temps 13
mad r0.xyz, v2.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, v5.x, l(12), t4.xyxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.y, l(48), t5.xyzw
movc r2.xyzw, r1.yyyy, r2.xyzw, l(0,0,0,0)
ne r0.w, l(0.000000, 0.000000, 0.000000, 0.000000), r2.w
if_nz r0.w
  ftou r0.w, r2.w
  if_nz r0.w
    iadd r1.y, r0.w, v4.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.y, l(0), t5.xyzw
    dp3 r1.z, r3.xyzx, v0.xyzx
    add r1.z, r3.w, r1.z
    mul r4.x, r1.z, v3.x
    dp3 r1.z, r3.xyzx, r0.xyzx
    mul r3.x, r1.z, v3.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
    dp3 r1.z, r5.xyzx, v0.xyzx
    add r1.z, r5.w, r1.z
    mul r4.y, r1.z, v3.x
    dp3 r1.z, r5.xyzx, r0.xyzx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
    dp3 r1.y, r5.xyzx, v0.xyzx
    add r1.y, r5.w, r1.y
    mul r4.z, r1.y, v3.x
    dp3 r1.y, r5.xyzx, r0.xyzx
    mul r3.yz, r1.zzyz, v3.xxxx
    ne r1.y, v3.y, l(0.000000)
    if_nz r1.y
      iadd r1.y, r0.w, v4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(0), t5.xyzw
      dp3 r1.z, r5.xyzx, v0.xyzx
      add r1.z, r5.w, r1.z
      mad r4.x, r1.z, v3.y, r4.x
      dp3 r1.z, r5.xyzx, r0.xyzx
      mad r3.x, r1.z, v3.y, r3.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
      dp3 r1.z, r5.xyzx, v0.xyzx
      add r1.z, r5.w, r1.z
      mad r4.y, r1.z, v3.y, r4.y
      dp3 r1.z, r5.xyzx, r0.xyzx
      mad r3.y, r1.z, v3.y, r3.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
      dp3 r1.y, r5.xyzx, v0.xyzx
      add r1.y, r5.w, r1.y
      mad r4.z, r1.y, v3.y, r4.z
      dp3 r1.y, r5.xyzx, r0.xyzx
      mad r3.z, r1.y, v3.y, r3.z
      ne r1.y, v3.z, l(0.000000)
      if_nz r1.y
        iadd r1.y, r0.w, v4.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(0), t5.xyzw
        dp3 r1.z, r5.xyzx, v0.xyzx
        add r1.z, r5.w, r1.z
        mad r4.x, r1.z, v3.z, r4.x
        dp3 r1.z, r5.xyzx, r0.xyzx
        mad r3.x, r1.z, v3.z, r3.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
        dp3 r1.z, r5.xyzx, v0.xyzx
        add r1.z, r5.w, r1.z
        mad r4.y, r1.z, v3.z, r4.y
        dp3 r1.z, r5.xyzx, r0.xyzx
        mad r3.y, r1.z, v3.z, r3.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
        dp3 r1.y, r5.xyzx, v0.xyzx
        add r1.y, r5.w, r1.y
        mad r4.z, r1.y, v3.z, r4.z
        dp3 r1.y, r5.xyzx, r0.xyzx
        mad r3.z, r1.y, v3.z, r3.z
        ne r1.y, v3.w, l(0.000000)
        if_nz r1.y
          iadd r0.w, r0.w, v4.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(0), t5.xyzw
          dp3 r1.y, r5.xyzx, v0.xyzx
          add r1.y, r5.w, r1.y
          mad r4.x, r1.y, v3.w, r4.x
          dp3 r1.y, r5.xyzx, r0.xyzx
          mad r3.x, r1.y, v3.w, r3.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
          dp3 r1.y, r5.xyzx, v0.xyzx
          add r1.y, r5.w, r1.y
          mad r4.y, r1.y, v3.w, r4.y
          dp3 r1.y, r5.xyzx, r0.xyzx
          mad r3.y, r1.y, v3.w, r3.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xyzw
          dp3 r0.w, r5.xyzx, v0.xyzx
          add r0.w, r5.w, r0.w
          mad r4.z, r0.w, v3.w, r4.z
          dp3 r0.w, r5.xyzx, r0.xyzx
          mad r3.z, r0.w, v3.w, r3.z
        endif 
      endif 
    endif 
    dp3 r0.w, r3.xyzx, r3.xyzx
    rsq r0.w, r0.w
    mul r0.xyz, r0.wwww, r3.xyzx
  else 
    mov r4.xyz, v0.xyzx
  endif 
else 
  ftou r3.yw, r2.xxxy
  mov r3.x, v4.x
  mov r3.z, l(0)
  ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xyzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r3.xwzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r1.yzw, r3.xyzz, t3.wxyz
  ld_indexable(texture2d)(float,float,float,float) r2.xyw, r3.xwzz, t3.xywz
  ld_indexable(texture2d)(float,float,float,float) r7.xyz, r3.xzzz, t1.xyzw
  add r6.xyzw, -r5.xyzw, r6.xyzw
  mad r5.xyzw, r2.zzzz, r6.xyzw, r5.xyzw
  add r2.xyw, -r1.yzyw, r2.xyxw
  mad r1.yzw, r2.zzzz, r2.xxyw, r1.yyzw
  add r2.xyw, -r7.xyxz, v0.xyxz
  dp4 r0.w, r5.xyzw, r5.xyzw
  rsq r0.w, r0.w
  mul r5.xyzw, r0.wwww, r5.xyzw
  add r6.xyz, r5.xyzx, r5.xyzx
  mul r8.xyz, r5.xzwx, r6.xxxx
  mul r0.w, r5.w, r6.y
  mul r6.zw, r5.wwwz, r6.zzzz
  mad r7.w, r5.y, r6.y, r6.w
  add r9.x, -r7.w, l(1.000000)
  mad r10.x, r5.z, r6.x, -r0.w
  mad r9.y, r5.y, r6.x, -r6.z
  mad r11.xy, r5.yxyy, r6.xxxx, r6.zwzz
  mad r11.z, r5.z, r6.y, -r8.z
  mad r5.xyz, r5.zwyz, r6.yyyy, r8.zyxz
  mov r9.z, r5.y
  dp3 r6.x, r2.xywx, r9.xyzx
  add r11.w, -r11.y, l(1.000000)
  dp3 r6.y, r2.xwyx, r11.xzwx
  mad r10.yz, r5.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp3 r6.z, r2.xywx, r10.xyzx
  dp3 r5.x, r0.xyzx, r9.xyzx
  dp3 r5.y, r0.xzyx, r11.xzwx
  dp3 r5.z, r0.xyzx, r10.xyzx
  add r2.xyw, r7.xyxz, r6.xyxz
  add r1.yzw, r1.yyzw, r2.xxyw
  mul r4.xyz, r1.yzwy, v3.xxxx
  mul r1.yzw, r5.xxyz, v3.xxxx
  ne r0.w, v3.y, l(0.000000)
  if_nz r0.w
    mov r3.x, v4.y
    ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xyzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r3.xwzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r2.xyw, r3.xyzz, t3.xywz
    ld_indexable(texture2d)(float,float,float,float) r7.xyz, r3.xwzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r8.xyz, r3.xzzz, t1.xyzw
    add r6.xyzw, -r5.xyzw, r6.xyzw
    mad r5.xyzw, r2.zzzz, r6.xyzw, r5.xyzw
    add r6.xyz, -r2.xywx, r7.xyzx
    mad r2.xyw, r2.zzzz, r6.xyxz, r2.xyxw
    add r6.xyz, -r8.xyzx, v0.xyzx
    dp4 r0.w, r5.xyzw, r5.xyzw
    rsq r0.w, r0.w
    mul r5.xyzw, r0.wwww, r5.xyzw
    add r7.xyz, r5.xyzx, r5.xyzx
    mul r9.xyz, r5.xzwx, r7.xxxx
    mul r0.w, r5.w, r7.y
    mul r7.zw, r5.wwwz, r7.zzzz
    mad r6.w, r5.y, r7.y, r7.w
    add r10.x, -r6.w, l(1.000000)
    mad r11.x, r5.z, r7.x, -r0.w
    mad r10.y, r5.y, r7.x, -r7.z
    mad r12.xy, r5.yxyy, r7.xxxx, r7.zwzz
    mad r12.z, r5.z, r7.y, -r9.z
    mad r5.xyz, r5.zwyz, r7.yyyy, r9.zyxz
    mov r10.z, r5.y
    dp3 r7.x, r6.xyzx, r10.xyzx
    add r12.w, -r12.y, l(1.000000)
    dp3 r7.y, r6.xzyx, r12.xzwx
    mad r11.yz, r5.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
    dp3 r7.z, r6.xyzx, r11.xyzx
    dp3 r5.x, r0.xyzx, r10.xyzx
    dp3 r5.y, r0.xzyx, r12.xzwx
    dp3 r5.z, r0.xyzx, r11.xyzx
    add r6.xyz, r8.xyzx, r7.xyzx
    add r2.xyw, r2.xyxw, r6.xyxz
    mad r4.xyz, r2.xywx, v3.yyyy, r4.xyzx
    mad r1.yzw, r5.xxyz, v3.yyyy, r1.yyzw
    ne r0.w, v3.z, l(0.000000)
    if_nz r0.w
      mov r3.x, v4.z
      ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xyzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r3.xwzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r2.xyw, r3.xyzz, t3.xywz
      ld_indexable(texture2d)(float,float,float,float) r7.xyz, r3.xwzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r8.xyz, r3.xzzz, t1.xyzw
      add r6.xyzw, -r5.xyzw, r6.xyzw
      mad r5.xyzw, r2.zzzz, r6.xyzw, r5.xyzw
      add r6.xyz, -r2.xywx, r7.xyzx
      mad r2.xyw, r2.zzzz, r6.xyxz, r2.xyxw
      add r6.xyz, -r8.xyzx, v0.xyzx
      dp4 r0.w, r5.xyzw, r5.xyzw
      rsq r0.w, r0.w
      mul r5.xyzw, r0.wwww, r5.xyzw
      add r7.xyz, r5.xyzx, r5.xyzx
      mul r9.xyz, r5.xzwx, r7.xxxx
      mul r0.w, r5.w, r7.y
      mul r7.zw, r5.wwwz, r7.zzzz
      mad r6.w, r5.y, r7.y, r7.w
      add r10.x, -r6.w, l(1.000000)
      mad r11.x, r5.z, r7.x, -r0.w
      mad r10.y, r5.y, r7.x, -r7.z
      mad r12.xy, r5.yxyy, r7.xxxx, r7.zwzz
      mad r12.z, r5.z, r7.y, -r9.z
      mad r5.xyz, r5.zwyz, r7.yyyy, r9.zyxz
      mov r10.z, r5.y
      dp3 r7.x, r6.xyzx, r10.xyzx
      add r12.w, -r12.y, l(1.000000)
      dp3 r7.y, r6.xzyx, r12.xzwx
      mad r11.yz, r5.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
      dp3 r7.z, r6.xyzx, r11.xyzx
      dp3 r5.x, r0.xyzx, r10.xyzx
      dp3 r5.y, r0.xzyx, r12.xzwx
      dp3 r5.z, r0.xyzx, r11.xyzx
      add r6.xyz, r8.xyzx, r7.xyzx
      add r2.xyw, r2.xyxw, r6.xyxz
      mad r4.xyz, r2.xywx, v3.zzzz, r4.xyzx
      mad r1.yzw, r5.xxyz, v3.zzzz, r1.yyzw
      ne r0.w, v3.w, l(0.000000)
      if_nz r0.w
        mov r3.x, v4.w
        ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xyzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r3.xwzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r2.xyw, r3.xyzz, t3.xywz
        ld_indexable(texture2d)(float,float,float,float) r7.xyz, r3.xwzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xzzz, t1.xyzw
        add r6.xyzw, -r5.xyzw, r6.xyzw
        mad r5.xyzw, r2.zzzz, r6.xyzw, r5.xyzw
        add r6.xyz, -r2.xywx, r7.xyzx
        mad r2.xyz, r2.zzzz, r6.xyzx, r2.xywx
        add r6.xyz, -r3.xyzx, v0.xyzx
        dp4 r0.w, r5.xyzw, r5.xyzw
        rsq r0.w, r0.w
        mul r5.xyzw, r0.wwww, r5.xyzw
        add r7.xyz, r5.xyzx, r5.xyzx
        mul r8.xyz, r5.xzwx, r7.xxxx
        mul r0.w, r5.w, r7.y
        mul r7.zw, r5.wwwz, r7.zzzz
        mad r2.w, r5.y, r7.y, r7.w
        add r9.x, -r2.w, l(1.000000)
        mad r10.x, r5.z, r7.x, -r0.w
        mad r9.y, r5.y, r7.x, -r7.z
        mad r11.xy, r5.yxyy, r7.xxxx, r7.zwzz
        mad r11.z, r5.z, r7.y, -r8.z
        mad r5.xyz, r5.zwyz, r7.yyyy, r8.zyxz
        mov r9.z, r5.y
        dp3 r7.x, r6.xyzx, r9.xyzx
        add r11.w, -r11.y, l(1.000000)
        dp3 r7.y, r6.xzyx, r11.xzwx
        mad r10.yz, r5.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
        dp3 r7.z, r6.xyzx, r10.xyzx
        dp3 r5.x, r0.xyzx, r9.xyzx
        dp3 r5.y, r0.xzyx, r11.xzwx
        dp3 r5.z, r0.xyzx, r10.xyzx
        add r3.xyz, r3.xyzx, r7.xyzx
        add r2.xyz, r2.xyzx, r3.xyzx
        mad r4.xyz, r2.xyzx, v3.wwww, r4.xyzx
        mad r1.yzw, r5.xxyz, v3.wwww, r1.yyzw
      endif 
    endif 
  endif 
  dp3 r0.w, r1.yzwy, r1.yzwy
  rsq r0.w, r0.w
  mul r0.xyz, r0.wwww, r1.yzwy
endif 
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v5.x, l(0), t4.xxxx
iadd r1.x, r0.w, r1.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
mov r5.x, r2.w
mov r5.y, r3.w
mov r5.z, r1.w
add r5.xyw, r5.xyxz, -cb1[24].xyxz
mov r4.w, l(1.000000)
mov r2.w, r5.x
dp4 r1.w, r4.xyzw, r2.xyzw
mov r3.w, r5.y
dp4 r2.x, r4.xyzw, r3.xyzw
mov r5.xyz, r1.xyzx
dp4 r1.x, r4.xyzw, r5.xyzw
mul r2.xyzw, r2.xxxx, cb1[9].xyzw
mad r2.xyzw, r1.wwww, cb1[8].xyzw, r2.xyzw
mad r1.xyzw, r1.xxxx, cb1[10].xyzw, r2.xyzw
add o0.xyzw, r1.xyzw, cb1[11].xyzw
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v5.x, l(12), t4.xxxx
iadd r0.w, r0.w, r1.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyz, r0.w, l(0), t5.xyzx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyz, r0.w, l(16), t5.xyzx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyz, r0.w, l(32), t5.xyzx
dp3 o2.x, r0.xyzx, r1.xyzx
dp3 o2.y, r0.xyzx, r2.xyzx
dp3 o2.z, r0.xyzx, r3.xyzx
mov o1.xy, v1.xyxx
ret 
// Approximately 296 instruction slots used
