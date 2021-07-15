//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:51 2021
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
//   float2 wind1Parms;                 // Offset:  160 Size:     8
//   float2 wind2Parms;                 // Offset:  168 Size:     8
//   float2 wind3Parms;                 // Offset:  176 Size:     8
//   float2 vertexColorScale;           // Offset:  184 Size:     8 [unused]
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
// COLOR                    0   xyzw        1     NONE   float    y  
// TEXCOORD                 0   xy          2     NONE   float   xy  
// BLENDWEIGHT              0   xyzw        3     NONE   float   xyzw
// BLENDINDICES             0   xyzw        4     NONE    uint   xyzw
// NORMAL                   0   xyz         5     NONE   float   xyz 
// TEXCOORD                15   x           6     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[12], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.y
dcl_input v2.xy
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.xyz
dcl_input v6.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xy
dcl_temps 7
add r0.xy, -v2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r1.xyzw, r0.xyxy, cb0[10].xyzw
mul r0.xy, r0.xyxx, cb0[11].xyxx
mul r1.xyzw, r1.xyzw, l(3.631899, 3.631899, 8.377581, 8.377581)
add r0.zw, r1.yyyw, r1.xxxz
add r1.x, cb0[0].y, cb1[69].w
mul r1.x, r1.x, cb0[0].x
mad r0.zw, r1.xxxx, l(0.000000, 0.000000, 5.65486670, 9.424778), r0.zzzw
mul r0.xy, r0.xyxx, l(20.268339, 20.268339, 0.000000, 0.000000)
add r0.x, r0.y, r0.x
mad r0.x, r1.x, l(7.539823), r0.x
sincos r0.xyz, null, r0.xzwx
mul r0.yz, r0.yyzy, l(0.000000, 7.500000, 3.000000, 0.000000)
add r0.y, r0.z, r0.y
mad r0.x, r0.x, l(1.700000), r0.y
mul r0.x, r0.x, v1.y
mad r0.xyz, r0.xxxx, v5.xyzx, v0.xyzx
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v6.x, l(0), t4.xxxx
if_nz r1.x
  ne r1.y, v3.x, l(0.000000)
  if_nz r1.y
    iadd r1.y, r1.x, v4.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.y, l(0), t5.xyzw
    dp3 r1.z, r2.xyzx, r0.xyzx
    add r1.z, r2.w, r1.z
    mul r2.x, r1.z, v3.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.y, l(16), t5.xyzw
    dp3 r1.z, r3.xyzx, r0.xyzx
    add r1.z, r3.w, r1.z
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.y, l(32), t5.xyzw
    dp3 r1.y, r3.xyzx, r0.xyzx
    add r1.y, r3.w, r1.y
    mul r2.yz, r1.zzyz, v3.xxxx
    ne r1.y, v3.y, l(0.000000)
    if_nz r1.y
      iadd r1.y, r1.x, v4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.y, l(0), t5.xyzw
      dp3 r1.z, r3.xyzx, r0.xyzx
      add r1.z, r3.w, r1.z
      mad r3.x, r1.z, v3.y, r2.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.y, l(16), t5.xyzw
      dp3 r1.z, r4.xyzx, r0.xyzx
      add r1.z, r4.w, r1.z
      mad r3.y, r1.z, v3.y, r2.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.y, l(32), t5.xyzw
      dp3 r1.y, r4.xyzx, r0.xyzx
      add r1.y, r4.w, r1.y
      mad r3.z, r1.y, v3.y, r2.z
      ne r1.y, v3.z, l(0.000000)
      if_nz r1.y
        iadd r1.y, r1.x, v4.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r1.y, l(0), t5.xyzw
        dp3 r1.z, r4.xyzx, r0.xyzx
        add r1.z, r4.w, r1.z
        mad r4.x, r1.z, v3.z, r3.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(16), t5.xyzw
        dp3 r1.z, r5.xyzx, r0.xyzx
        add r1.z, r5.w, r1.z
        mad r4.y, r1.z, v3.z, r3.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.y, l(32), t5.xyzw
        dp3 r1.y, r5.xyzx, r0.xyzx
        add r1.y, r5.w, r1.y
        mad r4.z, r1.y, v3.z, r3.z
        ne r1.y, v3.w, l(0.000000)
        if_nz r1.y
          iadd r1.x, r1.x, v4.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r5.xyzw, r1.x, l(0), t5.xyzw
          dp3 r1.y, r5.xyzx, r0.xyzx
          add r1.y, r5.w, r1.y
          mad r5.x, r1.y, v3.w, r4.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r6.xyzw, r1.x, l(16), t5.xyzw
          dp3 r1.y, r6.xyzx, r0.xyzx
          add r1.y, r6.w, r1.y
          mad r5.y, r1.y, v3.w, r4.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xyzw
          dp3 r1.x, r1.xyzx, r0.xyzx
          add r1.x, r1.w, r1.x
          mad r5.z, r1.x, v3.w, r4.z
          mov r0.xyz, r5.xyzx
        else 
          mov r0.xyz, r4.xyzx
        endif 
      else 
        mov r0.xyz, r3.xyzx
      endif 
    else 
      mov r0.xyz, r2.xyzx
    endif 
  else 
    mov r0.xyz, l(0,0,0,0)
  endif 
endif 
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v6.x, l(12), t4.xxxx
if_nz r1.x
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r3.xyzw, r1.x, l(16), t5.xyzw
  ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r1.xyzw, r1.x, l(32), t5.xywz
  mov r4.xyz, r1.xywx
  mov r1.x, r2.w
  mov r1.y, r3.w
else 
  mov r2.xyz, l(1.000000,0,0,0)
  mov r3.xyz, l(0,1.000000,0,0)
  mov r4.xyz, l(0,0,1.000000,0)
  mov r1.xyz, l(0,0,0,0)
endif 
add r1.xyz, r1.xyzx, -cb1[24].xyzx
mov r0.w, l(1.000000)
mov r2.w, r1.x
dp4 r1.x, r0.xyzw, r2.xyzw
mov r3.w, r1.y
dp4 r1.y, r0.xyzw, r3.xyzw
mov r4.w, r1.z
dp4 r0.x, r0.xyzw, r4.xyzw
mul r2.xyzw, r1.yyyy, cb1[9].xyzw
mad r1.xyzw, r1.xxxx, cb1[8].xyzw, r2.xyzw
mad r0.xyzw, r0.xxxx, cb1[10].xyzw, r1.xyzw
add o0.xyzw, r0.xyzw, cb1[11].xyzw
mov o1.xy, v2.xyxx
ret 
// Approximately 120 instruction slots used
