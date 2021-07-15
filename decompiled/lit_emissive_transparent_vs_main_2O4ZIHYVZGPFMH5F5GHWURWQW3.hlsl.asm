//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:35:06 2021
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
// TEXCOORD                 4   x           2     NONE    uint   x   
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// OFFPOSITION              0   xyz         6     NONE   float   xyz 
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
dcl_output o2.x
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_output o6.xyz
dcl_temps 15
mad r0.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r1.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r0.w, v4.w, l(2.000000), l(-1.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r2.xy, v7.x, l(12), t4.xyxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r2.y, l(48), t5.xyzw
movc r3.xyzw, r2.yyyy, r3.xyzw, l(0,0,0,0)
ne r1.w, l(0.000000, 0.000000, 0.000000, 0.000000), r3.w
if_nz r1.w
  ftou r1.w, r3.w
  if_nz r1.w
    iadd r2.y, r1.w, v6.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r2.y, l(0), t5.xyzw
    dp3 r2.z, r4.xyzx, v0.xyzx
    add r2.z, r4.w, r2.z
    mul r5.x, r2.z, v5.x
    dp3 r2.z, r4.xyzx, r0.xyzx
    mul r6.x, r2.z, v5.x
    dp3 r2.z, r4.xyzx, r1.xyzx
    mul r4.x, r2.z, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
    dp3 r2.z, r7.xyzx, v0.xyzx
    add r2.z, r7.w, r2.z
    mul r5.y, r2.z, v5.x
    dp3 r2.z, r7.xyzx, r0.xyzx
    mul r6.y, r2.z, v5.x
    dp3 r2.z, r7.xyzx, r1.xyzx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
    dp3 r2.y, r7.xyzx, v0.xyzx
    add r2.y, r7.w, r2.y
    mul r5.z, r2.y, v5.x
    dp3 r2.y, r7.xyzx, r0.xyzx
    mul r6.z, r2.y, v5.x
    dp3 r2.y, r7.xyzx, r1.xyzx
    mul r4.yz, r2.zzyz, v5.xxxx
    ne r2.y, v5.y, l(0.000000)
    if_nz r2.y
      iadd r2.y, r1.w, v6.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(0), t5.xyzw
      dp3 r2.z, r7.xyzx, v0.xyzx
      add r2.z, r7.w, r2.z
      mad r5.x, r2.z, v5.y, r5.x
      dp3 r2.z, r7.xyzx, r0.xyzx
      mad r6.x, r2.z, v5.y, r6.x
      dp3 r2.z, r7.xyzx, r1.xyzx
      mad r4.x, r2.z, v5.y, r4.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
      dp3 r2.z, r7.xyzx, v0.xyzx
      add r2.z, r7.w, r2.z
      mad r5.y, r2.z, v5.y, r5.y
      dp3 r2.z, r7.xyzx, r0.xyzx
      mad r6.y, r2.z, v5.y, r6.y
      dp3 r2.z, r7.xyzx, r1.xyzx
      mad r4.y, r2.z, v5.y, r4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
      dp3 r2.y, r7.xyzx, v0.xyzx
      add r2.y, r7.w, r2.y
      mad r5.z, r2.y, v5.y, r5.z
      dp3 r2.y, r7.xyzx, r0.xyzx
      mad r6.z, r2.y, v5.y, r6.z
      dp3 r2.y, r7.xyzx, r1.xyzx
      mad r4.z, r2.y, v5.y, r4.z
      ne r2.y, v5.z, l(0.000000)
      if_nz r2.y
        iadd r2.y, r1.w, v6.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(0), t5.xyzw
        dp3 r2.z, r7.xyzx, v0.xyzx
        add r2.z, r7.w, r2.z
        mad r5.x, r2.z, v5.z, r5.x
        dp3 r2.z, r7.xyzx, r0.xyzx
        mad r6.x, r2.z, v5.z, r6.x
        dp3 r2.z, r7.xyzx, r1.xyzx
        mad r4.x, r2.z, v5.z, r4.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(16), t5.xyzw
        dp3 r2.z, r7.xyzx, v0.xyzx
        add r2.z, r7.w, r2.z
        mad r5.y, r2.z, v5.z, r5.y
        dp3 r2.z, r7.xyzx, r0.xyzx
        mad r6.y, r2.z, v5.z, r6.y
        dp3 r2.z, r7.xyzx, r1.xyzx
        mad r4.y, r2.z, v5.z, r4.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.y, l(32), t5.xyzw
        dp3 r2.y, r7.xyzx, v0.xyzx
        add r2.y, r7.w, r2.y
        mad r5.z, r2.y, v5.z, r5.z
        dp3 r2.y, r7.xyzx, r0.xyzx
        mad r6.z, r2.y, v5.z, r6.z
        dp3 r2.y, r7.xyzx, r1.xyzx
        mad r4.z, r2.y, v5.z, r4.z
        ne r2.y, v5.w, l(0.000000)
        if_nz r2.y
          iadd r1.w, r1.w, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(0), t5.xyzw
          dp3 r2.y, r7.xyzx, v0.xyzx
          add r2.y, r7.w, r2.y
          mad r5.x, r2.y, v5.w, r5.x
          dp3 r2.y, r7.xyzx, r0.xyzx
          mad r6.x, r2.y, v5.w, r6.x
          dp3 r2.y, r7.xyzx, r1.xyzx
          mad r4.x, r2.y, v5.w, r4.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(16), t5.xyzw
          dp3 r2.y, r7.xyzx, v0.xyzx
          add r2.y, r7.w, r2.y
          mad r5.y, r2.y, v5.w, r5.y
          dp3 r2.y, r7.xyzx, r0.xyzx
          mad r6.y, r2.y, v5.w, r6.y
          dp3 r2.y, r7.xyzx, r1.xyzx
          mad r4.y, r2.y, v5.w, r4.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r1.w, l(32), t5.xyzw
          dp3 r1.w, r7.xyzx, v0.xyzx
          add r1.w, r7.w, r1.w
          mad r5.z, r1.w, v5.w, r5.z
          dp3 r1.w, r7.xyzx, r0.xyzx
          mad r6.z, r1.w, v5.w, r6.z
          dp3 r1.w, r7.xyzx, r1.xyzx
          mad r4.z, r1.w, v5.w, r4.z
        endif 
      endif 
    endif 
    dp3 r1.w, r6.xyzx, r6.xyzx
    rsq r1.w, r1.w
    mul r0.xyz, r1.wwww, r6.xyzx
    dp3 r1.w, r4.xyzx, r4.xyzx
    rsq r1.w, r1.w
    mul r1.xyz, r1.wwww, r4.xyzx
  else 
    mov r5.xyz, v0.xyzx
  endif 
else 
  ftou r4.yw, r3.xxxy
  mov r4.x, v6.x
  mov r4.z, l(0)
  ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r4.xyzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r4.xwzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r2.yzw, r4.xyzz, t3.wxyz
  ld_indexable(texture2d)(float,float,float,float) r3.xyw, r4.xwzz, t3.xywz
  ld_indexable(texture2d)(float,float,float,float) r8.xyz, r4.xzzz, t1.xyzw
  add r7.xyzw, -r6.xyzw, r7.xyzw
  mad r6.xyzw, r3.zzzz, r7.xyzw, r6.xyzw
  add r3.xyw, -r2.yzyw, r3.xyxw
  mad r2.yzw, r3.zzzz, r3.xxyw, r2.yyzw
  add r3.xyw, -r8.xyxz, v0.xyxz
  dp4 r1.w, r6.xyzw, r6.xyzw
  rsq r1.w, r1.w
  mul r6.xyzw, r1.wwww, r6.xyzw
  add r7.xyz, r6.xyzx, r6.xyzx
  mul r9.xyz, r6.xzwx, r7.xxxx
  mul r1.w, r6.w, r7.y
  mul r7.zw, r6.wwwz, r7.zzzz
  mad r8.w, r6.y, r7.y, r7.w
  add r10.x, -r8.w, l(1.000000)
  mad r11.x, r6.z, r7.x, -r1.w
  mad r10.y, r6.y, r7.x, -r7.z
  mad r12.xy, r6.yxyy, r7.xxxx, r7.zwzz
  mad r12.z, r6.z, r7.y, -r9.z
  mad r6.xyz, r6.zwyz, r7.yyyy, r9.zyxz
  mov r10.z, r6.y
  dp3 r7.x, r3.xywx, r10.xyzx
  add r12.w, -r12.y, l(1.000000)
  dp3 r7.y, r3.xwyx, r12.xzwx
  mad r11.yz, r6.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp3 r7.z, r3.xywx, r11.xyzx
  dp3 r6.x, r0.xyzx, r10.xyzx
  dp3 r6.y, r0.xzyx, r12.xzwx
  dp3 r6.z, r0.xyzx, r11.xyzx
  dp3 r9.x, r1.xyzx, r10.xyzx
  dp3 r9.y, r1.xzyx, r12.xzwx
  dp3 r9.z, r1.xyzx, r11.xyzx
  add r3.xyw, r8.xyxz, r7.xyxz
  add r2.yzw, r2.yyzw, r3.xxyw
  mul r5.xyz, r2.yzwy, v5.xxxx
  mul r2.yzw, r6.xxyz, v5.xxxx
  mul r3.xyw, r9.xyxz, v5.xxxx
  ne r1.w, v5.y, l(0.000000)
  if_nz r1.w
    mov r4.x, v6.y
    ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r4.xyzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r4.xwzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r8.xyz, r4.xyzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r9.xyz, r4.xwzz, t3.xyzw
    ld_indexable(texture2d)(float,float,float,float) r10.xyz, r4.xzzz, t1.xyzw
    add r7.xyzw, -r6.xyzw, r7.xyzw
    mad r6.xyzw, r3.zzzz, r7.xyzw, r6.xyzw
    add r7.xyz, -r8.xyzx, r9.xyzx
    mad r7.xyz, r3.zzzz, r7.xyzx, r8.xyzx
    add r8.xyz, -r10.xyzx, v0.xyzx
    dp4 r1.w, r6.xyzw, r6.xyzw
    rsq r1.w, r1.w
    mul r6.xyzw, r1.wwww, r6.xyzw
    add r9.xyz, r6.xyzx, r6.xyzx
    mul r11.xyz, r6.xzwx, r9.xxxx
    mul r1.w, r6.w, r9.y
    mul r9.zw, r6.wwwz, r9.zzzz
    mad r7.w, r6.y, r9.y, r9.w
    add r12.x, -r7.w, l(1.000000)
    mad r13.x, r6.z, r9.x, -r1.w
    mad r12.y, r6.y, r9.x, -r9.z
    mad r14.xy, r6.yxyy, r9.xxxx, r9.zwzz
    mad r14.z, r6.z, r9.y, -r11.z
    mad r6.xyz, r6.zwyz, r9.yyyy, r11.zyxz
    mov r12.z, r6.y
    dp3 r9.x, r8.xyzx, r12.xyzx
    add r14.w, -r14.y, l(1.000000)
    dp3 r9.y, r8.xzyx, r14.xzwx
    mad r13.yz, r6.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
    dp3 r9.z, r8.xyzx, r13.xyzx
    dp3 r6.x, r0.xyzx, r12.xyzx
    dp3 r6.y, r0.xzyx, r14.xzwx
    dp3 r6.z, r0.xyzx, r13.xyzx
    dp3 r8.x, r1.xyzx, r12.xyzx
    dp3 r8.y, r1.xzyx, r14.xzwx
    dp3 r8.z, r1.xyzx, r13.xyzx
    add r9.xyz, r10.xyzx, r9.xyzx
    add r7.xyz, r7.xyzx, r9.xyzx
    mad r5.xyz, r7.xyzx, v5.yyyy, r5.xyzx
    mad r2.yzw, r6.xxyz, v5.yyyy, r2.yyzw
    mad r3.xyw, r8.xyxz, v5.yyyy, r3.xyxw
    ne r1.w, v5.z, l(0.000000)
    if_nz r1.w
      mov r4.x, v6.z
      ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r4.xyzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r4.xwzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r8.xyz, r4.xyzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r9.xyz, r4.xwzz, t3.xyzw
      ld_indexable(texture2d)(float,float,float,float) r10.xyz, r4.xzzz, t1.xyzw
      add r7.xyzw, -r6.xyzw, r7.xyzw
      mad r6.xyzw, r3.zzzz, r7.xyzw, r6.xyzw
      add r7.xyz, -r8.xyzx, r9.xyzx
      mad r7.xyz, r3.zzzz, r7.xyzx, r8.xyzx
      add r8.xyz, -r10.xyzx, v0.xyzx
      dp4 r1.w, r6.xyzw, r6.xyzw
      rsq r1.w, r1.w
      mul r6.xyzw, r1.wwww, r6.xyzw
      add r9.xyz, r6.xyzx, r6.xyzx
      mul r11.xyz, r6.xzwx, r9.xxxx
      mul r1.w, r6.w, r9.y
      mul r9.zw, r6.wwwz, r9.zzzz
      mad r7.w, r6.y, r9.y, r9.w
      add r12.x, -r7.w, l(1.000000)
      mad r13.x, r6.z, r9.x, -r1.w
      mad r12.y, r6.y, r9.x, -r9.z
      mad r14.xy, r6.yxyy, r9.xxxx, r9.zwzz
      mad r14.z, r6.z, r9.y, -r11.z
      mad r6.xyz, r6.zwyz, r9.yyyy, r11.zyxz
      mov r12.z, r6.y
      dp3 r9.x, r8.xyzx, r12.xyzx
      add r14.w, -r14.y, l(1.000000)
      dp3 r9.y, r8.xzyx, r14.xzwx
      mad r13.yz, r6.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
      dp3 r9.z, r8.xyzx, r13.xyzx
      dp3 r6.x, r0.xyzx, r12.xyzx
      dp3 r6.y, r0.xzyx, r14.xzwx
      dp3 r6.z, r0.xyzx, r13.xyzx
      dp3 r8.x, r1.xyzx, r12.xyzx
      dp3 r8.y, r1.xzyx, r14.xzwx
      dp3 r8.z, r1.xyzx, r13.xyzx
      add r9.xyz, r10.xyzx, r9.xyzx
      add r7.xyz, r7.xyzx, r9.xyzx
      mad r5.xyz, r7.xyzx, v5.zzzz, r5.xyzx
      mad r2.yzw, r6.xxyz, v5.zzzz, r2.yyzw
      mad r3.xyw, r8.xyxz, v5.zzzz, r3.xyxw
      ne r1.w, v5.w, l(0.000000)
      if_nz r1.w
        mov r4.x, v6.w
        ld_indexable(texture2d)(float,float,float,float) r6.xyzw, r4.xyzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r7.xyzw, r4.xwzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r8.xyz, r4.xyzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r9.xyz, r4.xwzz, t3.xyzw
        ld_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xzzz, t1.xyzw
        add r7.xyzw, -r6.xyzw, r7.xyzw
        mad r6.xyzw, r3.zzzz, r7.xyzw, r6.xyzw
        add r7.xyz, -r8.xyzx, r9.xyzx
        mad r7.xyz, r3.zzzz, r7.xyzx, r8.xyzx
        add r8.xyz, -r4.xyzx, v0.xyzx
        dp4 r1.w, r6.xyzw, r6.xyzw
        rsq r1.w, r1.w
        mul r6.xyzw, r1.wwww, r6.xyzw
        add r9.xyz, r6.xyzx, r6.xyzx
        mul r10.xyz, r6.xzwx, r9.xxxx
        mul r1.w, r6.w, r9.y
        mul r9.zw, r6.wwwz, r9.zzzz
        mad r3.z, r6.y, r9.y, r9.w
        add r11.x, -r3.z, l(1.000000)
        mad r12.x, r6.z, r9.x, -r1.w
        mad r11.y, r6.y, r9.x, -r9.z
        mad r13.xy, r6.yxyy, r9.xxxx, r9.zwzz
        mad r13.z, r6.z, r9.y, -r10.z
        mad r6.xyz, r6.zwyz, r9.yyyy, r10.zyxz
        mov r11.z, r6.y
        dp3 r9.x, r8.xyzx, r11.xyzx
        add r13.w, -r13.y, l(1.000000)
        dp3 r9.y, r8.xzyx, r13.xzwx
        mad r12.yz, r6.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
        dp3 r9.z, r8.xyzx, r12.xyzx
        dp3 r6.x, r0.xyzx, r11.xyzx
        dp3 r6.y, r0.xzyx, r13.xzwx
        dp3 r6.z, r0.xyzx, r12.xyzx
        dp3 r8.x, r1.xyzx, r11.xyzx
        dp3 r8.y, r1.xzyx, r13.xzwx
        dp3 r8.z, r1.xyzx, r12.xyzx
        add r4.xyz, r4.xyzx, r9.xyzx
        add r4.xyz, r7.xyzx, r4.xyzx
        mad r5.xyz, r4.xyzx, v5.wwww, r5.xyzx
        mad r2.yzw, r6.xxyz, v5.wwww, r2.yyzw
        mad r3.xyw, r8.xyxz, v5.wwww, r3.xyxw
      endif 
    endif 
  endif 
  dp3 r1.w, r2.yzwy, r2.yzwy
  rsq r1.w, r1.w
  mul r0.xyz, r1.wwww, r2.yzwy
  dp3 r1.w, r3.xywx, r3.xywx
  rsq r1.w, r1.w
  mul r1.xyz, r1.wwww, r3.xywx
endif 
mul r2.yzw, r0.zzxy, r1.yyzx
mad r2.yzw, r0.yyzx, r1.zzxy, -r2.yyzw
mul r2.yzw, r0.wwww, r2.yyzw
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v7.x, l(0), t4.xxxx
iadd r0.w, r0.w, r2.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.w, l(0), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(16), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xyzw
mov r7.x, r3.w
mov r7.y, r4.w
mov r7.z, r6.w
add r7.xyw, r7.xyxz, -cb1[24].xyxz
mov r5.w, l(1.000000)
mov r3.w, r7.x
dp4 r8.x, r5.xyzw, r3.xyzw
mov r4.w, r7.y
dp4 r8.y, r5.xyzw, r4.xyzw
mov r7.xyz, r6.xyzx
dp4 r8.z, r5.xyzw, r7.xyzw
dp3 r5.x, r0.xyzx, r3.xyzx
dp3 r5.y, r0.xyzx, r4.xyzx
dp3 r5.z, r0.xyzx, r7.xyzx
dp3 r0.x, r5.xyzx, r5.xyzx
rsq r0.x, r0.x
mul o3.xyz, r0.xxxx, r5.xyzx
dp3 r0.x, r1.xyzx, r3.xyzx
dp3 r0.y, r1.xyzx, r4.xyzx
dp3 r0.z, r1.xyzx, r7.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul o4.xyz, r0.wwww, r0.xyzx
dp3 r0.x, r2.yzwy, r3.xyzx
dp3 r0.y, r2.yzwy, r4.xyzx
dp3 r0.z, r2.yzwy, r7.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul o5.xyz, r0.wwww, r0.xyzx
mul r0.xyzw, r8.yyyy, cb1[9].xyzw
mad r0.xyzw, r8.xxxx, cb1[8].xyzw, r0.xyzw
mad r0.xyzw, r8.zzzz, cb1[10].xyzw, r0.xyzw
add o0.xyzw, r0.xyzw, cb1[11].xyzw
mov o1.x, v1.w
mov o1.yz, v2.xxyx
mov o6.xyz, r8.xyzx
mov o2.x, v7.x
ret 
// Approximately 360 instruction slots used
