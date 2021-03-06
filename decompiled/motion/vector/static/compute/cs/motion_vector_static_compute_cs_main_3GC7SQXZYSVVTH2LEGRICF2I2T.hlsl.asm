//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:39:58 2021
//
//
// Buffer Definitions: 
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64 [unused]
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64 [unused]
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64 [unused]
//   row_major float4x4 inverseViewProjectionMatrix;// Offset:  320 Size:    64 [unused]
//   float4 eyeOffset;                  // Offset:  384 Size:    16 [unused]
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
//   float4 renderTargetSize;           // Offset:  704 Size:    16
//   float4 upscaledTargetSize;         // Offset:  720 Size:    16
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
//   float4 subpixelOffset;             // Offset: 1136 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// stencilTex                        texture    uint          2d             t0      1 
// dynamicVelocityTex                texture  float2          2d             t1      1 
// floatZSampler                     texture  float4          2d             t6      1 
// aaVelocityTex                         UAV  float2          2d             u0      1 
// mbVelocityTex                         UAV  float3          2d             u1      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// MotionVectorParams                cbuffer      NA          NA            cb7      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB1[72], immediateIndexed
dcl_constantbuffer CB7[15], immediateIndexed
dcl_resource_texture2d (uint,uint,uint,uint) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t6
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_typed_texture2d (float,float,float,float) u1
dcl_input vThreadID.xy
dcl_temps 4
dcl_thread_group 8, 8, 1
utof r0.xy, vThreadID.xyxx
add r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
ftoi r1.xy, r0.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.z, r1.xyzw, t6.yzxw
ge r0.w, r0.z, l(0.984375)
mul r1.x, r0.z, l(1.01587307)
mad r0.z, r0.z, l(64.000000), l(-63.000000)
movc r0.z, r0.w, r0.z, r1.x
max r0.z, r0.z, l(0.00000001)
rcp r0.z, r0.z
mov r1.xy, vThreadID.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r0.w, r1.xyww, t0.yzwx
if_nz r0.w
  ld_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyzw, t1.xyzw
  add r1.zw, |r1.xxxy|, l(0.000000, 0.000000, -0.500000, -0.500000)
  add_sat r1.zw, r1.zzzw, r1.zzzw
  add r2.xy, |r1.xyxx|, |r1.xyxx|
  min r2.xy, r2.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
  mul r2.xy, r2.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)
  mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 30.000000, 30.000000), r2.xxxy
  ge r1.xy, r1.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
  movc r1.xy, r1.xyxx, r1.zwzz, -r1.zwzz
else 
  add r1.zw, r0.xxxy, -cb1[71].xxxy
  mul r1.zw, r1.zzzw, cb1[44].zzzw
  mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 2.000000, -2.000000), l(0.000000, 0.000000, -1.000000, 1.000000)
  mul r2.xy, r1.zwzz, cb7[14].xyxx
  mov r2.z, l(1.000000)
  mul r2.xyz, r0.zzzz, r2.xyzx
  mul r3.xyz, r2.yyyy, cb7[9].xyzx
  mad r2.xyw, r2.xxxx, cb7[8].xyxz, r3.xyxz
  mad r2.xyz, r2.zzzz, cb7[10].xyzx, r2.xywx
  add r2.xyz, r2.xyzx, cb7[11].xyzx
  add r2.xyz, r2.xyzx, cb7[13].xyzx
  mul r3.xyz, r2.yyyy, cb7[1].xywx
  mad r2.xyw, r2.xxxx, cb7[0].xyxw, r3.xyxz
  mad r2.xyz, r2.zzzz, cb7[2].xywx, r2.xywx
  add r2.xyz, r2.xyzx, cb7[3].xywx
  div r1.zw, r2.xxxy, r2.zzzz
  mad r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.500000, -0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
  mad r0.xy, r0.xyxx, cb1[44].zwzz, -r1.zwzz
  mul r1.xy, r0.xyxx, cb1[44].xyxx
endif 
add r2.xyzw, |r1.xyxx|, l(-10.000000, -10.000000, -10.000000, -10.000000)
mul_sat r2.xyzw, r2.xyzw, l(0.03333334, 0.03333334, 0.03333334, 0.03333334)
mul r3.xyzw, |r1.xyxx|, l(0.100000, 0.100000, 0.100000, 0.100000)
min r3.xyzw, r3.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r3.xyzw, -r2.wyww, r3.xyzw
mad r2.xyzw, r3.xyzw, l(0.500000, 0.500000, 0.500000, 0.500000), r2.xyzw
ge r3.xyzw, r1.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
movc r2.xyzw, r3.xyzw, r2.xyzw, -r2.wyww
store_uav_typed u0.xyzw, vThreadID.xyyy, r2.xyzw
mul r0.xyw, r1.xyxx, cb7[12].wwww
div r1.xyz, cb1[44].xyxx, cb1[45].xyxx
mul r0.xyw, r0.xyxw, r1.xyxz
mul r0.xyw, r0.xyxw, l(0.500000, 0.500000, 0.000000, 0.500000)
dp2 r1.x, r0.ywyy, r0.ywyy
sqrt r1.x, r1.x
min r1.y, r1.x, l(20.000000)
add r1.y, r1.y, r1.y
mul r0.xyw, r0.xyxw, r1.yyyy
add r1.x, r1.x, l(0.000100)
div r0.xyw, r0.xyxw, r1.xxxx
mad r1.xyw, r0.xyxw, l(0.00392157, 0.00392157, 0.000000, 0.00392157), l(0.50196081, 0.50196081, 0.000000, 0.50196081)
mul r0.x, r0.z, l(0.00012207)
min r0.x, r0.x, l(1.000000)
sqrt r1.z, r0.x
store_uav_typed u1.xyzw, vThreadID.xyyy, r1.xyzw
ret 
// Approximately 71 instruction slots used
