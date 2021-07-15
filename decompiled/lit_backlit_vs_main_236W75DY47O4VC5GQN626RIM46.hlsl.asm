//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:32:23 2021
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
// TANGENT                  0   xyzw        3     NONE   float   xyzw
// BLENDWEIGHT              0   xyzw        4     NONE   float   xyzw
// BLENDINDICES             0   xyzw        5     NONE    uint   xyzw
// TEXCOORD                15   x           6     NONE    uint   x   
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
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.xy
dcl_input v2.xyz
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v6.x
dcl_output_siv o0.xyzw, position
dcl_output o1.x
dcl_output o1.yz
dcl_output o2.x
dcl_output o3.xyz
dcl_output o4.xyz
dcl_output o5.xyz
dcl_output o6.xyz
dcl_temps 10
mad r0.xyz, v2.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.xy, v6.x, l(0), t4.xyxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.w, r1.y, l(96), t0.xxxx
mad r2.xyz, r0.xyzx, r0.wwww, v0.xyzx
mad r1.yzw, v3.xxyz, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
mad r0.w, v3.w, l(2.000000), l(-1.000000)
if_nz r1.x
  ne r3.x, v4.x, l(0.000000)
  if_nz r3.x
    iadd r3.x, r1.x, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r3.x, l(0), t5.xyzw
    dp3 r3.y, r4.xyzx, r2.xyzx
    add r3.y, r4.w, r3.y
    mul r5.x, r3.y, v4.x
    dp3 r3.y, r4.xyzx, r0.xyzx
    mul r6.x, r3.y, v4.x
    dp3 r3.y, r4.xyzx, r1.yzwy
    mul r4.x, r3.y, v4.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
    dp3 r3.y, r7.xyzx, r2.xyzx
    add r3.y, r7.w, r3.y
    mul r5.y, r3.y, v4.x
    dp3 r3.y, r7.xyzx, r0.xyzx
    mul r6.y, r3.y, v4.x
    dp3 r3.y, r7.xyzx, r1.yzwy
    mul r4.y, r3.y, v4.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
    dp3 r4.w, r3.xyzx, r2.xyzx
    add r3.w, r3.w, r4.w
    mul r5.z, r3.w, v4.x
    dp3 r3.w, r3.xyzx, r0.xyzx
    mul r6.z, r3.w, v4.x
    dp3 r3.x, r3.xyzx, r1.yzwy
    mul r4.z, r3.x, v4.x
    ne r3.x, v4.y, l(0.000000)
    if_nz r3.x
      iadd r3.x, r1.x, v5.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
      dp3 r3.y, r7.xyzx, r2.xyzx
      add r3.y, r7.w, r3.y
      mad r8.x, r3.y, v4.y, r5.x
      dp3 r3.y, r7.xyzx, r0.xyzx
      mad r6.x, r3.y, v4.y, r6.x
      dp3 r3.y, r7.xyzx, r1.yzwy
      mad r4.x, r3.y, v4.y, r4.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
      dp3 r3.y, r7.xyzx, r2.xyzx
      add r3.y, r7.w, r3.y
      mad r8.y, r3.y, v4.y, r5.y
      dp3 r3.y, r7.xyzx, r0.xyzx
      mad r6.y, r3.y, v4.y, r6.y
      dp3 r3.y, r7.xyzx, r1.yzwy
      mad r4.y, r3.y, v4.y, r4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
      dp3 r4.w, r3.xyzx, r2.xyzx
      add r3.w, r3.w, r4.w
      mad r8.z, r3.w, v4.y, r5.z
      dp3 r3.w, r3.xyzx, r0.xyzx
      mad r6.z, r3.w, v4.y, r6.z
      dp3 r3.x, r3.xyzx, r1.yzwy
      mad r4.z, r3.x, v4.y, r4.z
      ne r3.x, v4.z, l(0.000000)
      if_nz r3.x
        iadd r3.x, r1.x, v5.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(0), t5.xyzw
        dp3 r3.y, r7.xyzx, r2.xyzx
        add r3.y, r7.w, r3.y
        mad r9.x, r3.y, v4.z, r8.x
        dp3 r3.y, r7.xyzx, r0.xyzx
        mad r6.x, r3.y, v4.z, r6.x
        dp3 r3.y, r7.xyzx, r1.yzwy
        mad r4.x, r3.y, v4.z, r4.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r3.x, l(16), t5.xyzw
        dp3 r3.y, r7.xyzx, r2.xyzx
        add r3.y, r7.w, r3.y
        mad r9.y, r3.y, v4.z, r8.y
        dp3 r3.y, r7.xyzx, r0.xyzx
        mad r6.y, r3.y, v4.z, r6.y
        dp3 r3.y, r7.xyzx, r1.yzwy
        mad r4.y, r3.y, v4.z, r4.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r3.x, l(32), t5.xyzw
        dp3 r4.w, r3.xyzx, r2.xyzx
        add r3.w, r3.w, r4.w
        mad r9.z, r3.w, v4.z, r8.z
        dp3 r3.w, r3.xyzx, r0.xyzx
        mad r6.z, r3.w, v4.z, r6.z
        dp3 r3.x, r3.xyzx, r1.yzwy
        mad r4.z, r3.x, v4.z, r4.z
        ne r3.x, v4.w, l(0.000000)
        if_nz r3.x
          iadd r1.x, r1.x, v5.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(0), t5.xyzw
          dp3 r4.w, r3.xyzx, r2.xyzx
          add r3.w, r3.w, r4.w
          mad r7.x, r3.w, v4.w, r9.x
          dp3 r3.w, r3.xyzx, r0.xyzx
          mad r6.x, r3.w, v4.w, r6.x
          dp3 r3.x, r3.xyzx, r1.yzwy
          mad r4.x, r3.x, v4.w, r4.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
          dp3 r4.w, r3.xyzx, r2.xyzx
          add r3.w, r3.w, r4.w
          mad r7.y, r3.w, v4.w, r9.y
          dp3 r3.w, r3.xyzx, r0.xyzx
          mad r6.y, r3.w, v4.w, r6.y
          dp3 r3.x, r3.xyzx, r1.yzwy
          mad r4.y, r3.x, v4.w, r4.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(32), t5.xyzw
          dp3 r1.x, r3.xyzx, r2.xyzx
          add r1.x, r3.w, r1.x
          mad r7.z, r1.x, v4.w, r9.z
          dp3 r1.x, r3.xyzx, r0.xyzx
          mad r6.z, r1.x, v4.w, r6.z
          dp3 r1.x, r3.xyzx, r1.yzwy
          mad r4.z, r1.x, v4.w, r4.z
          mov r2.xyz, r7.xyzx
        else 
          mov r2.xyz, r9.xyzx
        endif 
      else 
        mov r2.xyz, r8.xyzx
      endif 
    else 
      mov r2.xyz, r5.xyzx
    endif 
  else 
    mov r2.xyz, l(0,0,0,0)
    mov r6.xyz, l(0,0,0,0)
    mov r4.xyz, l(0,0,0,0)
  endif 
  dp3 r1.x, r6.xyzx, r6.xyzx
  rsq r1.x, r1.x
  mul r0.xyz, r1.xxxx, r6.xyzx
  dp3 r1.x, r4.xyzx, r4.xyzx
  rsq r1.x, r1.x
  mul r1.yzw, r1.xxxx, r4.xxyz
endif 
mul r3.xyz, r0.zxyz, r1.zwyz
mad r3.xyz, r0.yzxy, r1.wyzw, -r3.xyzx
mul r3.xyz, r0.wwww, r3.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v6.x, l(12), t4.xxxx
if_nz r0.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r0.w, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r0.w, l(32), t5.xywz
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
mov r2.w, l(1.000000)
mov r4.w, r6.x
dp4 r8.x, r2.xyzw, r4.xyzw
mov r5.w, r6.y
dp4 r8.y, r2.xyzw, r5.xyzw
mov r7.w, r6.z
dp4 r8.z, r2.xyzw, r7.xyzw
dp3 r2.x, r0.xyzx, r4.xyzx
dp3 r2.y, r0.xyzx, r5.xyzx
dp3 r2.z, r0.xyzx, r7.xyzx
dp3 r0.x, r2.xyzx, r2.xyzx
rsq r0.x, r0.x
mul o3.xyz, r0.xxxx, r2.xyzx
dp3 r0.x, r1.yzwy, r4.xyzx
dp3 r0.y, r1.yzwy, r5.xyzx
dp3 r0.z, r1.yzwy, r7.xyzx
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
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v6.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) o1.x, r0.x, l(0), t0.xxxx
mov o1.yz, v1.xxyx
mov o6.xyz, r8.xyzx
mov o2.x, v6.x
ret 
// Approximately 190 instruction slots used
