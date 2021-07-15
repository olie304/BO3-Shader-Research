//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:39:34 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float2 revealScale;                // Offset:  168 Size:     8 [unused]
//   float3 colorTint;                  // Offset:  176 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  188 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  192 Size:     8 [unused]
//   float2 rotateUVs;                  // Offset:  200 Size:     8
//   float2 scrollUVs;                  // Offset:  208 Size:     8
//   float2 scaleUVs;                   // Offset:  216 Size:     8
//   float2 offsetUVs;                  // Offset:  224 Size:     8
//   float2 zoomUVs;                    // Offset:  232 Size:     8
//   float zoomRate;                    // Offset:  240 Size:     4
//   float layerDepth;                  // Offset:  244 Size:     4
//   bool clampU;                       // Offset:  248 Size:     4
//   bool clampV;                       // Offset:  252 Size:     4
//   float2 wind1Parms;                 // Offset:  256 Size:     8
//   float2 wind2Parms;                 // Offset:  264 Size:     8
//   float2 wind3Parms;                 // Offset:  272 Size:     8
//   float3 backlightScatterColor;      // Offset:  288 Size:    12 [unused]
//   bool useAlphaControls;             // Offset:  300 Size:     4
//   float zFeatherDistance;            // Offset:  304 Size:     4 [unused]
//   float falloffBegin;                // Offset:  308 Size:     4
//   float falloffEnd;                  // Offset:  312 Size:     4
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
// COLOR                    0   xyzw        1     NONE   float    y w
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
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
// TEXCOORD                 2   xyz         3     NONE   float   xyz 
// TEXCOORD                 3   xyz         4     NONE   float   xyz 
// OFFPOSITION              0   xyz         5     NONE   float   xyz 
// TEXCOORD                 9   xy          6     NONE   float   xy  
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[20], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_resource_structured t4, 24
dcl_resource_structured t5, 64
dcl_input v0.xyz
dcl_input v1.yw
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
dcl_output o6.xy
dcl_temps 10
add r0.xy, -v2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r1.xyzw, r0.xyxy, cb0[16].xyzw
mul r0.xy, r0.xyxx, cb0[17].xyxx
mul r1.xyzw, r1.xyzw, l(3.631899, 3.631899, 8.377581, 8.377581)
add r0.zw, r1.yyyw, r1.xxxz
add r1.x, cb0[0].y, cb1[69].w
mul r1.x, r1.x, cb0[0].x
mad r0.zw, r1.xxxx, l(0.000000, 0.000000, 5.65486670, 9.424778), r0.zzzw
mul r0.xy, r0.xyxx, l(20.268339, 20.268339, 0.000000, 0.000000)
add r0.x, r0.y, r0.x
mad r0.x, r1.x, l(7.539823), r0.x
sincos r1.xy, r2.xy, r0.zwzz
mul r0.yz, r1.xxyx, l(0.000000, 7.500000, 3.000000, 0.000000)
add r0.y, r0.z, r0.y
sincos r0.x, r1.x, r0.x
mad r0.x, r0.x, l(1.700000), r0.y
mul r0.x, r0.x, v1.y
mad r0.yzw, v3.xxyz, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
mad r3.xyz, r0.xxxx, r0.yzwy, v0.xyzx
mad r1.yzw, v4.xxyz, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
mad r0.x, v4.w, l(2.000000), l(-1.000000)
mul r4.xyz, r0.wyzw, r1.zwyz
mad r4.xyz, r0.zwyz, r1.wyzw, -r4.xyzx
mul r4.xyz, r0.xxxx, r4.xyzx
dp3 r2.z, r4.xyzx, r4.xyzx
rsq r2.z, r2.z
mul r4.xyz, r2.zzzz, r4.xyzx
mul r2.zw, cb0[16].xxxz, l(0.000000, 0.000000, 27.239243, 25.132742)
mul r5.xy, r2.xyxx, cb0[16].ywyy
mul r2.xy, r2.xyxx, r2.zwzz
mul r2.zw, r5.xxxy, l(0.000000, 0.000000, 27.239243, 25.132742)
mul r4.w, cb0[17].x, l(34.456177)
mul r5.x, r1.x, cb0[17].y
add r2.x, r2.y, r2.x
mad r1.x, r4.w, r1.x, r2.x
mul r1.x, r1.x, v1.y
mul r1.x, r1.x, l(0.025000)
add r2.x, r2.w, r2.z
mad r2.x, r5.x, l(34.456177), r2.x
mul r2.x, r2.x, v1.y
mul r2.x, r2.x, l(0.025000)
mul r2.xyz, r4.xyzx, r2.xxxx
mad r2.xyz, r1.xxxx, r1.yzwy, r2.xyzx
add r0.yzw, r0.yyzw, r2.xxyz
dp3 r1.x, r0.yzwy, r0.yzwy
rsq r1.x, r1.x
mul r0.yzw, r0.yyzw, r1.xxxx
mad r0.yzw, r0.yyzw, l(0.000000, 2.001957, 2.001957, 2.001957), l(0.000000, -1.00195694, -1.00195694, -1.00195694)
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r1.x, v7.x, l(0), t4.xxxx
if_nz r1.x
  ne r2.x, v5.x, l(0.000000)
  if_nz r2.x
    iadd r2.x, r1.x, v6.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r4.xyzw, r2.x, l(0), t5.xyzw
    dp3 r2.y, r4.xyzx, r3.xyzx
    add r2.y, r4.w, r2.y
    mul r5.x, r2.y, v5.x
    dp3 r2.y, r4.xyzx, r0.yzwy
    mul r6.x, r2.y, v5.x
    dp3 r2.y, r4.xyzx, r1.yzwy
    mul r4.x, r2.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
    dp3 r2.y, r7.xyzx, r3.xyzx
    add r2.y, r7.w, r2.y
    mul r5.y, r2.y, v5.x
    dp3 r2.y, r7.xyzx, r0.yzwy
    mul r6.y, r2.y, v5.x
    dp3 r2.y, r7.xyzx, r1.yzwy
    mul r4.y, r2.y, v5.x
    ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
    dp3 r4.w, r2.xyzx, r3.xyzx
    add r2.w, r2.w, r4.w
    mul r5.z, r2.w, v5.x
    dp3 r2.w, r2.xyzx, r0.yzwy
    mul r6.z, r2.w, v5.x
    dp3 r2.x, r2.xyzx, r1.yzwy
    mul r4.z, r2.x, v5.x
    ne r2.x, v5.y, l(0.000000)
    if_nz r2.x
      iadd r2.x, r1.x, v6.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(0), t5.xyzw
      dp3 r2.y, r7.xyzx, r3.xyzx
      add r2.y, r7.w, r2.y
      mad r8.x, r2.y, v5.y, r5.x
      dp3 r2.y, r7.xyzx, r0.yzwy
      mad r6.x, r2.y, v5.y, r6.x
      dp3 r2.y, r7.xyzx, r1.yzwy
      mad r4.x, r2.y, v5.y, r4.x
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
      dp3 r2.y, r7.xyzx, r3.xyzx
      add r2.y, r7.w, r2.y
      mad r8.y, r2.y, v5.y, r5.y
      dp3 r2.y, r7.xyzx, r0.yzwy
      mad r6.y, r2.y, v5.y, r6.y
      dp3 r2.y, r7.xyzx, r1.yzwy
      mad r4.y, r2.y, v5.y, r4.y
      ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
      dp3 r4.w, r2.xyzx, r3.xyzx
      add r2.w, r2.w, r4.w
      mad r8.z, r2.w, v5.y, r5.z
      dp3 r2.w, r2.xyzx, r0.yzwy
      mad r6.z, r2.w, v5.y, r6.z
      dp3 r2.x, r2.xyzx, r1.yzwy
      mad r4.z, r2.x, v5.y, r4.z
      ne r2.x, v5.z, l(0.000000)
      if_nz r2.x
        iadd r2.x, r1.x, v6.z
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(0), t5.xyzw
        dp3 r2.y, r7.xyzx, r3.xyzx
        add r2.y, r7.w, r2.y
        mad r9.x, r2.y, v5.z, r8.x
        dp3 r2.y, r7.xyzx, r0.yzwy
        mad r6.x, r2.y, v5.z, r6.x
        dp3 r2.y, r7.xyzx, r1.yzwy
        mad r4.x, r2.y, v5.z, r4.x
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r7.xyzw, r2.x, l(16), t5.xyzw
        dp3 r2.y, r7.xyzx, r3.xyzx
        add r2.y, r7.w, r2.y
        mad r9.y, r2.y, v5.z, r8.y
        dp3 r2.y, r7.xyzx, r0.yzwy
        mad r6.y, r2.y, v5.z, r6.y
        dp3 r2.y, r7.xyzx, r1.yzwy
        mad r4.y, r2.y, v5.z, r4.y
        ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r2.x, l(32), t5.xyzw
        dp3 r4.w, r2.xyzx, r3.xyzx
        add r2.w, r2.w, r4.w
        mad r9.z, r2.w, v5.z, r8.z
        dp3 r2.w, r2.xyzx, r0.yzwy
        mad r6.z, r2.w, v5.z, r6.z
        dp3 r2.x, r2.xyzx, r1.yzwy
        mad r4.z, r2.x, v5.z, r4.z
        ne r2.x, v5.w, l(0.000000)
        if_nz r2.x
          iadd r1.x, r1.x, v6.w
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(0), t5.xyzw
          dp3 r4.w, r2.xyzx, r3.xyzx
          add r2.w, r2.w, r4.w
          mad r7.x, r2.w, v5.w, r9.x
          dp3 r2.w, r2.xyzx, r0.yzwy
          mad r6.x, r2.w, v5.w, r6.x
          dp3 r2.x, r2.xyzx, r1.yzwy
          mad r4.x, r2.x, v5.w, r4.x
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(16), t5.xyzw
          dp3 r4.w, r2.xyzx, r3.xyzx
          add r2.w, r2.w, r4.w
          mad r7.y, r2.w, v5.w, r9.y
          dp3 r2.w, r2.xyzx, r0.yzwy
          mad r6.y, r2.w, v5.w, r6.y
          dp3 r2.x, r2.xyzx, r1.yzwy
          mad r4.y, r2.x, v5.w, r4.y
          ld_structured_indexable(structured_buffer, stride=64)(mixed,mixed,mixed,mixed) r2.xyzw, r1.x, l(32), t5.xyzw
          dp3 r1.x, r2.xyzx, r3.xyzx
          add r1.x, r2.w, r1.x
          mad r7.z, r1.x, v5.w, r9.z
          dp3 r1.x, r2.xyzx, r0.yzwy
          mad r6.z, r1.x, v5.w, r6.z
          dp3 r1.x, r2.xyzx, r1.yzwy
          mad r4.z, r1.x, v5.w, r4.z
          mov r3.xyz, r7.xyzx
        else 
          mov r3.xyz, r9.xyzx
        endif 
      else 
        mov r3.xyz, r8.xyzx
      endif 
    else 
      mov r3.xyz, r5.xyzx
    endif 
  else 
    mov r3.xyz, l(0,0,0,0)
    mov r6.xyz, l(0,0,0,0)
    mov r4.xyz, l(0,0,0,0)
  endif 
  dp3 r1.x, r6.xyzx, r6.xyzx
  rsq r1.x, r1.x
  mul r0.yzw, r1.xxxx, r6.xxyz
  dp3 r1.x, r4.xyzx, r4.xyzx
  rsq r1.x, r1.x
  mul r1.yzw, r1.xxxx, r4.xxyz
endif 
mul r2.xyz, r0.wyzw, r1.zwyz
mad r2.xyz, r0.zwyz, r1.wyzw, -r2.xyzx
mul r2.xyz, r0.xxxx, r2.xyzx
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
mov r3.w, l(1.000000)
mov r4.w, r6.x
dp4 r8.x, r3.xyzw, r4.xyzw
mov r5.w, r6.y
dp4 r8.y, r3.xyzw, r5.xyzw
mov r7.w, r6.z
dp4 r8.z, r3.xyzw, r7.xyzw
dp3 r3.x, r0.yzwy, r4.xyzx
dp3 r3.y, r0.yzwy, r5.xyzx
dp3 r3.z, r0.yzwy, r7.xyzx
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r3.xyzx
dp3 r3.x, r1.yzwy, r4.xyzx
dp3 r3.y, r1.yzwy, r5.xyzx
dp3 r3.z, r1.yzwy, r7.xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r3.xyzx
dp3 r3.x, r2.xyzx, r4.xyzx
dp3 r3.y, r2.xyzx, r5.xyzx
dp3 r3.z, r2.xyzx, r7.xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r3.xyzx
mul r3.xyzw, r8.yyyy, cb1[9].xyzw
mad r3.xyzw, r8.xxxx, cb1[8].xyzw, r3.xyzw
mad r3.xyzw, r8.zzzz, cb1[10].xyzw, r3.xyzw
add o0.xyzw, r3.xyzw, cb1[11].xyzw
dp3 r0.w, -r8.xyzx, -r8.xyzx
rsq r0.w, r0.w
mul r3.xyz, r0.wwww, -r8.xyzx
dp3 r4.x, r3.xyzx, r1.xyzx
dp3 r4.y, r3.xyzx, r2.xyzx
dp3 r0.w, r3.xyzx, r0.xyzx
lt r1.w, l(0.000000), r0.w
div r3.xy, -r4.xyxx, r0.wwww
and r3.xy, r1.wwww, r3.xyxx
add r3.zw, v2.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
add r0.w, cb0[15].y, l(0.000010)
mul r3.xy, r0.wwww, r3.xyxx
mul r3.xy, r3.xyxx, cb0[13].zwzz
mad r3.xy, r3.zwzz, cb0[13].zwzz, r3.xyxx
mad r3.xy, cb0[14].xyxx, cb0[13].zwzz, r3.xyxx
mad r0.w, cb0[12].w, cb1[69].w, l(1.000000)
mul r0.w, r0.w, cb0[12].z
mul r0.w, r0.w, l(0.01745329)
sincos r4.x, r5.x, r0.w
mov r5.y, r5.x
mov r5.z, r4.x
dp2 r4.y, r5.yzyy, r3.xyxx
mov r5.x, -r4.x
dp2 r4.z, r5.xyxx, r3.xyxx
mul r3.xy, cb0[13].xyxx, cb1[69].wwww
mad r3.xy, r3.xyxx, cb0[13].zwzz, r4.yzyy
mul r0.w, cb0[15].x, cb1[69].w
sincos null, r0.w, r0.w
mad r0.w, r0.w, l(0.500000), l(0.500000)
add r0.w, -r0.w, l(1.000000)
add r1.w, -cb0[14].z, cb0[14].w
mad r0.w, r0.w, r1.w, cb0[14].z
div r3.xy, r3.xyxx, r0.wwww
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mov_sat r3.zw, r3.xxxy
movc o1.yz, cb0[15].zzwz, r3.zzwz, r3.xxyx
eq r3.xy, cb0[19].yzyy, l(0.000000, 0.000000, 0.000000, 0.000000)
and r0.w, r3.y, r3.x
mul r3.xy, cb0[19].yzyy, l(0.01745329, 0.01745329, 0.000000, 0.000000)
sincos null, r3.xy, r3.xyxx
mul r3.yz, r3.xxyx, r3.xxyx
mad r1.w, r3.x, r3.x, -r3.z
div r4.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mad r4.y, -r3.y, r4.x, l(1.000000)
movc r3.xy, r0.wwww, l(0,1.000000,0,0), r4.xyxx
movc o6.xy, cb0[18].wwww, r3.xyxx, l(0,1.000000,0,0)
mov o1.x, v1.w
mov o2.xyz, r0.xyzx
mov o3.xyz, r1.xyzx
mov o4.xyz, r2.xyzx
mov o5.xyz, r8.xyzx
ret 
// Approximately 279 instruction slots used
