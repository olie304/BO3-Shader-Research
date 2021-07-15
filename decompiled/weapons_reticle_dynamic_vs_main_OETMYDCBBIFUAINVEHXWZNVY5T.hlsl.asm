//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:44:27 2021
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
//   float3 Glow_Color;                 // Offset:  160 Size:    12 [unused]
//   float Noise_Scale;                 // Offset:  172 Size:     4 [unused]
//   float Color_Map_Scale;             // Offset:  176 Size:     4
//   float Glow_Falloff;                // Offset:  180 Size:     4 [unused]
//   float Color_Map_Noise;             // Offset:  184 Size:     4 [unused]
//   float Background;                  // Offset:  188 Size:     4 [unused]
//   float3 Reticle_Color;              // Offset:  192 Size:    12 [unused]
//   float Reticle_Color_Multiplier;    // Offset:  204 Size:     4 [unused]
//   float Glow_Color_Multiplier;       // Offset:  208 Size:     4 [unused]
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64
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
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1     zw        1     NONE   float     zw
// TEXCOORD                 2   x           2     NONE   float   x   
// TEXCOORD                 3   x           3     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[12], immediateIndexed
dcl_constantbuffer CB1[25], immediateIndexed
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
dcl_output o1.xy
dcl_output o1.zw
dcl_output o2.x
dcl_output o3.x
dcl_temps 8
mad r0.xyz, v2.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
mad r1.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.w, v6.x, l(0), t4.xxxx
if_nz r0.w
  ne r1.w, v4.x, l(0.000000)
  if_nz r1.w
    iadd r1.w, r0.w, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(0), t5.xyzw
    dp3 r3.x, r2.xyzx, v0.xyzx
    add r2.w, r2.w, r3.x
    mul r3.x, r2.w, v4.x
    dp3 r2.w, r2.xyzx, r0.xyzx
    mul r4.x, r2.w, v4.x
    dp3 r2.x, r2.xyzx, r1.xyzx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(16), t5.xyzw
    dp3 r2.w, r5.xyzx, v0.xyzx
    add r2.w, r5.w, r2.w
    mul r3.y, r2.w, v4.x
    dp3 r2.w, r5.xyzx, r0.xyzx
    mul r4.y, r2.w, v4.x
    dp3 r2.w, r5.xyzx, r1.xyzx
    mul r2.xy, r2.xwxx, v4.xxxx
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(32), t5.xyzw
    dp3 r1.w, r5.xyzx, v0.xyzx
    add r1.w, r5.w, r1.w
    mul r3.z, r1.w, v4.x
    dp3 r1.w, r5.xyzx, r0.xyzx
    mul r4.z, r1.w, v4.x
    dp3 r1.w, r5.xyzx, r1.xyzx
    mul r2.z, r1.w, v4.x
    ne r1.w, v4.y, l(0.000000)
    if_nz r1.w
      iadd r1.w, r0.w, v5.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(0), t5.xyzw
      dp3 r2.w, r5.xyzx, v0.xyzx
      add r2.w, r5.w, r2.w
      mad r3.x, r2.w, v4.y, r3.x
      dp3 r2.w, r5.xyzx, r0.xyzx
      mad r4.x, r2.w, v4.y, r4.x
      dp3 r2.w, r5.xyzx, r1.xyzx
      mad r2.x, r2.w, v4.y, r2.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(16), t5.xyzw
      dp3 r2.w, r5.xyzx, v0.xyzx
      add r2.w, r5.w, r2.w
      mad r3.y, r2.w, v4.y, r3.y
      dp3 r2.w, r5.xyzx, r0.xyzx
      mad r4.y, r2.w, v4.y, r4.y
      dp3 r2.w, r5.xyzx, r1.xyzx
      mad r2.y, r2.w, v4.y, r2.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(32), t5.xyzw
      dp3 r1.w, r5.xyzx, v0.xyzx
      add r1.w, r5.w, r1.w
      mad r3.z, r1.w, v4.y, r3.z
      dp3 r1.w, r5.xyzx, r0.xyzx
      mad r4.z, r1.w, v4.y, r4.z
      dp3 r1.w, r5.xyzx, r1.xyzx
      mad r2.z, r1.w, v4.y, r2.z
      ne r1.w, v4.z, l(0.000000)
      if_nz r1.w
        iadd r1.w, r0.w, v5.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(0), t5.xyzw
        dp3 r2.w, r5.xyzx, v0.xyzx
        add r2.w, r5.w, r2.w
        mad r3.x, r2.w, v4.z, r3.x
        dp3 r2.w, r5.xyzx, r0.xyzx
        mad r4.x, r2.w, v4.z, r4.x
        dp3 r2.w, r5.xyzx, r1.xyzx
        mad r2.x, r2.w, v4.z, r2.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(16), t5.xyzw
        dp3 r2.w, r5.xyzx, v0.xyzx
        add r2.w, r5.w, r2.w
        mad r3.y, r2.w, v4.z, r3.y
        dp3 r2.w, r5.xyzx, r0.xyzx
        mad r4.y, r2.w, v4.z, r4.y
        dp3 r2.w, r5.xyzx, r1.xyzx
        mad r2.y, r2.w, v4.z, r2.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(32), t5.xyzw
        dp3 r1.w, r5.xyzx, v0.xyzx
        add r1.w, r5.w, r1.w
        mad r3.z, r1.w, v4.z, r3.z
        dp3 r1.w, r5.xyzx, r0.xyzx
        mad r4.z, r1.w, v4.z, r4.z
        dp3 r1.w, r5.xyzx, r1.xyzx
        mad r2.z, r1.w, v4.z, r2.z
        ne r1.w, v4.w, l(0.000000)
        if_nz r1.w
          iadd r0.w, r0.w, v5.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(0), t5.xyzw
          dp3 r1.w, r5.xyzx, v0.xyzx
          add r1.w, r5.w, r1.w
          mad r3.x, r1.w, v4.w, r3.x
          dp3 r1.w, r5.xyzx, r0.xyzx
          mad r4.x, r1.w, v4.w, r4.x
          dp3 r1.w, r5.xyzx, r1.xyzx
          mad r2.x, r1.w, v4.w, r2.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(16), t5.xyzw
          dp3 r1.w, r5.xyzx, v0.xyzx
          add r1.w, r5.w, r1.w
          mad r3.y, r1.w, v4.w, r3.y
          dp3 r1.w, r5.xyzx, r0.xyzx
          mad r4.y, r1.w, v4.w, r4.y
          dp3 r1.w, r5.xyzx, r1.xyzx
          mad r2.y, r1.w, v4.w, r2.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r0.w, l(32), t5.xyzw
          dp3 r0.w, r5.xyzx, v0.xyzx
          add r0.w, r5.w, r0.w
          mad r3.z, r0.w, v4.w, r3.z
          dp3 r0.w, r5.xyzx, r0.xyzx
          mad r4.z, r0.w, v4.w, r4.z
          dp3 r0.w, r5.xyzx, r1.xyzx
          mad r2.z, r0.w, v4.w, r2.z
        endif 
      endif 
    endif 
  else 
    mov r3.xyz, l(0,0,0,0)
    mov r4.xyz, l(0,0,0,0)
    mov r2.xyz, l(0,0,0,0)
  endif 
  dp3 r0.w, r4.xyzx, r4.xyzx
  rsq r0.w, r0.w
  mul r0.xyz, r0.wwww, r4.xyzx
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r1.xyz, r0.wwww, r2.xyzx
else 
  mov r3.xyz, v0.xyzx
endif 
mad r0.w, v3.w, l(2.000000), l(-1.000000)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.w, v6.x, l(12), t4.xxxx
if_nz r1.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.w, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.w, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(32), t5.xywz
  mov r6.xyz, r5.xywx
  mov r5.x, r2.w
  mov r5.y, r4.w
else 
  mov r2.xyz, l(1.000000,0,0,0)
  mov r4.xyz, l(0,1.000000,0,0)
  mov r6.xyz, l(0,0,1.000000,0)
  mov r5.xyz, l(0,0,0,0)
endif 
add r5.xyz, r5.xyzx, -cb1[24].xyzx
mov r3.w, l(1.000000)
mov r2.w, r5.x
dp4 r2.x, r3.xyzw, r2.xyzw
mov r4.w, r5.y
dp4 r2.y, r3.xyzw, r4.xyzw
mov r6.w, r5.z
dp4 r2.z, r3.xyzw, r6.xyzw
mul r4.xyzw, r2.yyyy, cb1[9].xyzw
mad r4.xyzw, r2.xxxx, cb1[8].xyzw, r4.xyzw
mad r2.xyzw, r2.zzzz, cb1[10].xyzw, r4.xyzw
add r2.xyzw, r2.xyzw, cb1[11].xyzw
div o2.x, r2.z, r2.w
if_nz r1.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.w, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.w, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r1.w, l(32), t5.xywz
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
mov r4.w, r6.x
dp4 r4.x, r3.xyzw, r4.xyzw
mov r5.w, r6.y
dp4 r4.y, r3.xyzw, r5.xyzw
mov r7.w, r6.z
dp4 r3.x, r3.xyzw, r7.xyzw
mul r3.yzw, r4.yyyy, cb1[5].xxyz
mad r3.yzw, r4.xxxx, cb1[4].xxyz, r3.yyzw
mad r3.xyz, r3.xxxx, cb1[6].xyzx, r3.yzwy
add r3.xyz, r3.xyzx, cb1[7].xyzx
dp3 r3.w, r3.xyzx, r3.xyzx
rsq r3.w, r3.w
mul r3.xyz, r3.wwww, r3.xyzx
if_nz r1.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, r1.w, l(0), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r1.w, l(16), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyz, r1.w, l(32), t5.xyzx
else 
  mov r4.xyz, l(1.000000,0,0,0)
  mov r5.xyz, l(0,1.000000,0,0)
  mov r6.xyz, l(0,0,1.000000,0)
endif 
dp3 r3.w, r1.xyzx, r4.xyzx
dp3 r4.x, r1.xyzx, r5.xyzx
dp3 r1.x, r1.xyzx, r6.xyzx
mul r4.xyz, r4.xxxx, cb1[5].xyzx
mad r4.xyz, r3.wwww, cb1[4].xyzx, r4.xyzx
mad r1.xyz, r1.xxxx, cb1[6].xyzx, r4.xyzx
dp3 r3.w, r1.xyzx, r1.xyzx
rsq r3.w, r3.w
mul r1.xyz, r1.xyzx, r3.wwww
if_nz r1.w
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyz, r1.w, l(0), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyz, r1.w, l(16), t5.xyzx
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyz, r1.w, l(32), t5.xyzx
else 
  mov r4.xyz, l(1.000000,0,0,0)
  mov r5.xyz, l(0,1.000000,0,0)
  mov r6.xyz, l(0,0,1.000000,0)
endif 
dp3 r1.w, r0.xyzx, r4.xyzx
dp3 r3.w, r0.xyzx, r5.xyzx
dp3 r0.x, r0.xyzx, r6.xyzx
mul r4.xyz, r3.wwww, cb1[5].zxyz
mad r4.xyz, r1.wwww, cb1[4].zxyz, r4.xyzx
mad r0.xyz, r0.xxxx, cb1[6].zxyz, r4.xyzx
dp3 r1.w, r0.xyzx, r0.xyzx
rsq r1.w, r1.w
mul r0.xyz, r0.xyzx, r1.wwww
mul r4.xyz, r1.yzxy, r0.xyzx
mad r0.xyz, r0.zxyz, r1.zxyz, -r4.xyzx
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r0.x, r0.xyzx, r3.xyzx
mad o1.w, -r0.x, cb0[11].x, l(0.500000)
dp3 r0.x, r1.xyzx, r3.xyzx
mad o1.z, r0.x, cb0[11].x, l(0.500000)
mov o0.xyzw, r2.xyzw
mov o1.xy, v1.xyxx
mov o3.x, v6.x
ret 
// Approximately 230 instruction slots used
