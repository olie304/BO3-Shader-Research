//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:07 2021
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
// COLOR                    0     z         1     NONE   float     z 
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_resource_structured t0, 384
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.w
dcl_input v2.xy
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_output o1.z
dcl_temps 11
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.xy, v5.x, l(12), t4.xyxx
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.y, l(48), t5.xyzw
movc r1.xyzw, r0.yyyy, r1.xyzw, l(0,0,0,0)
ne r0.y, l(0.000000, 0.000000, 0.000000, 0.000000), r1.w
if_nz r0.y
  ftou r0.y, r1.w
  if_nz r0.y
    iadd r0.z, r0.y, v4.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r0.z, l(0), t5.xyzw
    dp3 r0.w, r2.xyzx, v0.xyzx
    add r0.w, r2.w, r0.w
    mul r2.x, r0.w, v3.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(16), t5.xyzw
    dp3 r0.w, r3.xyzx, v0.xyzx
    add r0.w, r3.w, r0.w
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(32), t5.xyzw
    dp3 r0.z, r3.xyzx, v0.xyzx
    add r0.z, r3.w, r0.z
    mul r2.yz, r0.wwzw, v3.xxxx
    ne r0.z, v3.y, l(0.000000)
    if_nz r0.z
      iadd r0.z, r0.y, v4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(0), t5.xyzw
      dp3 r0.w, r3.xyzx, v0.xyzx
      add r0.w, r3.w, r0.w
      mad r2.x, r0.w, v3.y, r2.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(16), t5.xyzw
      dp3 r0.w, r3.xyzx, v0.xyzx
      add r0.w, r3.w, r0.w
      mad r2.y, r0.w, v3.y, r2.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(32), t5.xyzw
      dp3 r0.z, r3.xyzx, v0.xyzx
      add r0.z, r3.w, r0.z
      mad r2.z, r0.z, v3.y, r2.z
      ne r0.z, v3.z, l(0.000000)
      if_nz r0.z
        iadd r0.z, r0.y, v4.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(0), t5.xyzw
        dp3 r0.w, r3.xyzx, v0.xyzx
        add r0.w, r3.w, r0.w
        mad r2.x, r0.w, v3.z, r2.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(16), t5.xyzw
        dp3 r0.w, r3.xyzx, v0.xyzx
        add r0.w, r3.w, r0.w
        mad r2.y, r0.w, v3.z, r2.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.z, l(32), t5.xyzw
        dp3 r0.z, r3.xyzx, v0.xyzx
        add r0.z, r3.w, r0.z
        mad r2.z, r0.z, v3.z, r2.z
        ne r0.z, v3.w, l(0.000000)
        if_nz r0.z
          iadd r0.y, r0.y, v4.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(0), t5.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.x, r0.z, v3.w, r2.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(16), t5.xyzw
          dp3 r0.z, r3.xyzx, v0.xyzx
          add r0.z, r3.w, r0.z
          mad r2.y, r0.z, v3.w, r2.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.y, l(32), t5.xyzw
          dp3 r0.y, r3.xyzx, v0.xyzx
          add r0.y, r3.w, r0.y
          mad r2.z, r0.y, v3.w, r2.z
        endif 
      endif 
    endif 
  else 
    mov r2.xyz, v0.xyzx
  endif 
else 
  ftou r3.yw, r1.xxxy
  mov r3.x, v4.x
  mov r3.z, l(0)
  ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xwzz, t2.xyzw
  ld_indexable(texture2d)(float,float,float,float) r0.yzw, r3.xyzz, t3.wxyz
  ld_indexable(texture2d)(float,float,float,float) r1.xyw, r3.xwzz, t3.xywz
  ld_indexable(texture2d)(float,float,float,float) r6.xyz, r3.xzzz, t1.xyzw
  add r5.xyzw, -r4.xyzw, r5.xyzw
  mad r4.xyzw, r1.zzzz, r5.xyzw, r4.xyzw
  add r1.xyw, -r0.yzyw, r1.xyxw
  mad r0.yzw, r1.zzzz, r1.xxyw, r0.yyzw
  add r1.xyw, -r6.xyxz, v0.xyxz
  dp4 r5.x, r4.xyzw, r4.xyzw
  rsq r5.x, r5.x
  mul r4.xyzw, r4.xyzw, r5.xxxx
  add r5.xyz, r4.xyzx, r4.xyzx
  mul r7.xyz, r4.xzwx, r5.xxxx
  mul r5.w, r4.w, r5.y
  mul r8.xy, r4.wzww, r5.zzzz
  mad r5.z, r4.y, r5.y, r8.y
  add r9.x, -r5.z, l(1.000000)
  mad r10.x, r4.z, r5.x, -r5.w
  mad r9.y, r4.y, r5.x, -r8.x
  mad r8.xy, r4.yxyy, r5.xxxx, r8.xyxx
  mad r8.z, r4.z, r5.y, -r7.z
  mad r4.xyz, r4.zwyz, r5.yyyy, r7.zyxz
  mov r9.z, r4.y
  dp3 r5.x, r1.xywx, r9.xyzx
  add r8.w, -r8.y, l(1.000000)
  dp3 r5.y, r1.xwyx, r8.xzwx
  mad r10.yz, r4.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
  dp3 r5.z, r1.xywx, r10.xyzx
  add r1.xyw, r6.xyxz, r5.xyxz
  add r0.yzw, r0.yyzw, r1.xxyw
  mul r2.xyz, r0.yzwy, v3.xxxx
  ne r0.y, v3.y, l(0.000000)
  if_nz r0.y
    mov r3.x, v4.y
    ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xwzz, t2.xyzw
    ld_indexable(texture2d)(float,float,float,float) r0.yzw, r3.xyzz, t3.wxyz
    ld_indexable(texture2d)(float,float,float,float) r1.xyw, r3.xwzz, t3.xywz
    ld_indexable(texture2d)(float,float,float,float) r6.xyz, r3.xzzz, t1.xyzw
    add r5.xyzw, -r4.xyzw, r5.xyzw
    mad r4.xyzw, r1.zzzz, r5.xyzw, r4.xyzw
    add r1.xyw, -r0.yzyw, r1.xyxw
    mad r0.yzw, r1.zzzz, r1.xxyw, r0.yyzw
    add r1.xyw, -r6.xyxz, v0.xyxz
    dp4 r5.x, r4.xyzw, r4.xyzw
    rsq r5.x, r5.x
    mul r4.xyzw, r4.xyzw, r5.xxxx
    add r5.xyz, r4.xyzx, r4.xyzx
    mul r7.xyz, r4.xzwx, r5.xxxx
    mul r5.w, r4.w, r5.y
    mul r8.xy, r4.wzww, r5.zzzz
    mad r5.z, r4.y, r5.y, r8.y
    add r9.x, -r5.z, l(1.000000)
    mad r10.x, r4.z, r5.x, -r5.w
    mad r9.y, r4.y, r5.x, -r8.x
    mad r8.xy, r4.yxyy, r5.xxxx, r8.xyxx
    mad r8.z, r4.z, r5.y, -r7.z
    mad r4.xyz, r4.zwyz, r5.yyyy, r7.zyxz
    mov r9.z, r4.y
    dp3 r5.x, r1.xywx, r9.xyzx
    add r8.w, -r8.y, l(1.000000)
    dp3 r5.y, r1.xwyx, r8.xzwx
    mad r10.yz, r4.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
    dp3 r5.z, r1.xywx, r10.xyzx
    add r1.xyw, r6.xyxz, r5.xyxz
    add r0.yzw, r0.yyzw, r1.xxyw
    mad r2.xyz, r0.yzwy, v3.yyyy, r2.xyzx
    ne r0.y, v3.z, l(0.000000)
    if_nz r0.y
      mov r3.x, v4.z
      ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xwzz, t2.xyzw
      ld_indexable(texture2d)(float,float,float,float) r0.yzw, r3.xyzz, t3.wxyz
      ld_indexable(texture2d)(float,float,float,float) r1.xyw, r3.xwzz, t3.xywz
      ld_indexable(texture2d)(float,float,float,float) r6.xyz, r3.xzzz, t1.xyzw
      add r5.xyzw, -r4.xyzw, r5.xyzw
      mad r4.xyzw, r1.zzzz, r5.xyzw, r4.xyzw
      add r1.xyw, -r0.yzyw, r1.xyxw
      mad r0.yzw, r1.zzzz, r1.xxyw, r0.yyzw
      add r1.xyw, -r6.xyxz, v0.xyxz
      dp4 r5.x, r4.xyzw, r4.xyzw
      rsq r5.x, r5.x
      mul r4.xyzw, r4.xyzw, r5.xxxx
      add r5.xyz, r4.xyzx, r4.xyzx
      mul r7.xyz, r4.xzwx, r5.xxxx
      mul r5.w, r4.w, r5.y
      mul r8.xy, r4.wzww, r5.zzzz
      mad r5.z, r4.y, r5.y, r8.y
      add r9.x, -r5.z, l(1.000000)
      mad r10.x, r4.z, r5.x, -r5.w
      mad r9.y, r4.y, r5.x, -r8.x
      mad r8.xy, r4.yxyy, r5.xxxx, r8.xyxx
      mad r8.z, r4.z, r5.y, -r7.z
      mad r4.xyz, r4.zwyz, r5.yyyy, r7.zyxz
      mov r9.z, r4.y
      dp3 r5.x, r1.xywx, r9.xyzx
      add r8.w, -r8.y, l(1.000000)
      dp3 r5.y, r1.xwyx, r8.xzwx
      mad r10.yz, r4.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
      dp3 r5.z, r1.xywx, r10.xyzx
      add r1.xyw, r6.xyxz, r5.xyxz
      add r0.yzw, r0.yyzw, r1.xxyw
      mad r2.xyz, r0.yzwy, v3.zzzz, r2.xyzx
      ne r0.y, v3.w, l(0.000000)
      if_nz r0.y
        mov r3.x, v4.w
        ld_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r5.xyzw, r3.xwzz, t2.xyzw
        ld_indexable(texture2d)(float,float,float,float) r0.yzw, r3.xyzz, t3.wxyz
        ld_indexable(texture2d)(float,float,float,float) r1.xyw, r3.xwzz, t3.xywz
        ld_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xzzz, t1.xyzw
        add r5.xyzw, -r4.xyzw, r5.xyzw
        mad r4.xyzw, r1.zzzz, r5.xyzw, r4.xyzw
        add r1.xyw, -r0.yzyw, r1.xyxw
        mad r0.yzw, r1.zzzz, r1.xxyw, r0.yyzw
        add r1.xyz, -r3.xyzx, v0.xyzx
        dp4 r1.w, r4.xyzw, r4.xyzw
        rsq r1.w, r1.w
        mul r4.xyzw, r1.wwww, r4.xyzw
        add r5.xyz, r4.xyzx, r4.xyzx
        mul r6.xyz, r4.xzwx, r5.xxxx
        mul r1.w, r4.w, r5.y
        mul r5.zw, r4.wwwz, r5.zzzz
        mad r3.w, r4.y, r5.y, r5.w
        add r7.x, -r3.w, l(1.000000)
        mad r8.x, r4.z, r5.x, -r1.w
        mad r7.y, r4.y, r5.x, -r5.z
        mad r9.xy, r4.yxyy, r5.xxxx, r5.zwzz
        mad r9.z, r4.z, r5.y, -r6.z
        mad r4.xyz, r4.zwyz, r5.yyyy, r6.zyxz
        mov r7.z, r4.y
        dp3 r5.x, r1.xyzx, r7.xyzx
        add r9.w, -r9.y, l(1.000000)
        dp3 r5.y, r1.xzyx, r9.xzwx
        mad r8.yz, r4.xxzx, l(0.000000, 1.000000, -1.000000, 0.000000), l(0.000000, 0.000000, 1.000000, 0.000000)
        dp3 r5.z, r1.xyzx, r8.xyzx
        add r1.xyz, r3.xyzx, r5.xyzx
        add r0.yzw, r0.yyzw, r1.xxyz
        mad r2.xyz, r0.yzwy, v3.wwww, r2.xyzx
      endif 
    endif 
  endif 
endif 
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.yz, v5.x, l(0), t4.xxyx
iadd r0.x, r0.y, r0.x
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(0), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r0.x, l(16), t5.xyzw
ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.x, l(32), t5.xyzw
mov r5.x, r1.w
mov r5.y, r3.w
mov r5.z, r4.w
add r5.xyw, r5.xyxz, -cb1[24].xyxz
mov r2.w, l(1.000000)
mov r1.w, r5.x
dp4 r0.x, r2.xyzw, r1.xyzw
mov r3.w, r5.y
dp4 r0.y, r2.xyzw, r3.xyzw
mov r5.xyz, r4.xyzx
dp4 r0.w, r2.xyzw, r5.xyzw
mul r1.xyzw, r0.yyyy, cb1[9].xyzw
mad r1.xyzw, r0.xxxx, cb1[8].xyzw, r1.xyzw
mad r1.xyzw, r0.wwww, cb1[10].xyzw, r1.xyzw
add o0.xyzw, r1.xyzw, cb1[11].xyzw
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.z, l(0), t0.xxxx
mad o1.z, v1.w, l(0.000100), r0.x
mov o1.xy, v2.xyxx
ret 
// Approximately 243 instruction slots used