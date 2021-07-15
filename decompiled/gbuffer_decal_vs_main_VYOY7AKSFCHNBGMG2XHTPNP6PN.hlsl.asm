//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:42 2021
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
//   float4 voldecalRevealTextureInfo;  // Offset: 1408 Size:    16
//   float4 extraClipPlane0;            // Offset: 1424 Size:    16 [unused]
//   float4 extraClipPlane1;            // Offset: 1440 Size:    16 [unused]
//   float4 shaderDebug;                // Offset: 1456 Size:    16 [unused]
//   uint isDepthHack;                  // Offset: 1472 Size:     4 [unused]
//
// }
//
// Resource bind info for volDecalInstanceBuffer
// {
//
//   struct VolDecalInstanceData
//   {
//       
//       float4 objToWld[4];            // Offset:    0
//       float4 wldToObj[4];            // Offset:   64
//       float3 edgeFeather;            // Offset:  128
//       uint isBulletMarkDecal;        // Offset:  140
//       float4 color;                  // Offset:  144
//       float4 revealUV;               // Offset:  160
//       float4 uvBaseAndScale;         // Offset:  176
//       float alphaDissolve;           // Offset:  192
//       uint texInfo;                  // Offset:  196
//
//   } $Element;                        // Offset:    0 Size:   200
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// volDecalInstanceBuffer            texture  struct         r/o            t21      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyz         0     NONE   float   xyz 
// TEXCOORD                15   x           1     NONE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyz         5     NONE   float   xyz 
// TEXCOORD                13      w        5     NONE    uint      w
// TEXCOORD                 6   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyz         7     NONE   float   xyz 
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyz         9     NONE   float   xyz 
// TEXCOORD                10   xyzw       10     NONE   float   xyzw
// TEXCOORD                11   xyzw       11     NONE   float   xyzw
// TEXCOORD                12   xyzw       12     NONE   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[89], immediateIndexed
dcl_resource_structured t21, 200
dcl_input v0.xyz
dcl_input v1.x
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyz
dcl_output o5.w
dcl_output o6.xyz
dcl_output o7.xyz
dcl_output o8.xyzw
dcl_output o9.xyz
dcl_output o10.xyzw
dcl_output o11.xyzw
dcl_output o12.xyzw
dcl_temps 8
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(48), t21.xyzw
add r1.xyw, r0.xyxz, -cb1[24].xyxz
mov r2.w, r1.y
mov r3.xyz, v0.xyzx
mov r3.w, l(1.000000)
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r4.xyzw, v1.x, l(0), t21.xyzw
mov r2.x, r4.y
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r5.xyzw, v1.x, l(16), t21.xyzw
mov r2.y, r5.y
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r6.xyzw, v1.x, l(32), t21.xyzw
mov r2.z, r6.y
dp4 r2.x, r3.xyzw, r2.xyzw
mul r2.xyzw, r2.xxxx, cb1[9].xyzw
mov r7.w, r1.x
mov r7.x, r4.x
mov r7.y, r5.x
mov r7.z, r6.x
dp4 r7.x, r3.xyzw, r7.xyzw
mad r2.xyzw, r7.xxxx, cb1[8].xyzw, r2.xyzw
mov r1.x, r4.z
mov r1.y, r5.z
mov r1.z, r6.z
dp4 r1.x, r3.xyzw, r1.xyzw
mad r1.xyzw, r1.xxxx, cb1[10].xyzw, r2.xyzw
mov r0.x, r4.w
mov r0.y, r5.w
mov r0.z, r6.w
dp4 r0.x, r3.xyzw, r0.xyzw
mad o0.xyzw, r0.xxxx, cb1[11].xyzw, r1.xyzw
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o1.xyzw, v1.x, l(64), t21.xyzw
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o2.xyzw, v1.x, l(80), t21.xyzw
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o3.xyzw, v1.x, l(96), t21.xyzw
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o4.xyzw, v1.x, l(112), t21.xyzw
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul o5.xyz, r0.xxxx, r4.xyzx
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(128), t21.xyzw
mov o5.w, r0.w
mov o9.xyz, r0.xyzx
dp3 r0.x, r5.xyzx, r5.xyzx
rsq r0.x, r0.x
mul o6.xyz, r0.xxxx, r5.xyzx
dp3 r0.x, -r6.xyzx, -r6.xyzx
rsq r0.x, r0.x
mul o7.xyz, r0.xxxx, -r6.xyzx
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o8.xyzw, v1.x, l(144), t21.xyzw
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) r0.xyzw, v1.x, l(160), t21.xyzw
mov o10.xyzw, r0.xyzw
add r0.zw, r0.zzzw, r0.xxxy
add r0.xy, r0.xyxx, cb1[88].zwzz
add r0.zw, r0.zzzw, -cb1[88].zzzw
max r0.xyzw, r0.xyzw, cb1[88].zwzw
add r1.xy, -cb1[88].zwzz, l(1.000000, 1.000000, 0.000000, 0.000000)
min r0.xyzw, r0.xyzw, r1.xyxy
min o11.xy, r0.zwzz, r0.xyxx
max o11.zw, r0.zzzw, r0.xxxy
ld_structured_indexable(structured_buffer, stride=200)(mixed,mixed,mixed,mixed) o12.xyzw, v1.x, l(176), t21.xyzw
ret 
// Approximately 58 instruction slots used
