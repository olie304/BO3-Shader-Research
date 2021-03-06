//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021
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
//   uint4 computeSpriteControl;        // Offset: 1312 Size:    16
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
// Resource bind info for spritePos
// {
//
//   struct FxComputeSprite_PosPack
//   {
//       
//       uint4 data[2];                 // Offset:    0
//
//   } $Element;                        // Offset:    0 Size:    32
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// zBufferRough                      texture   float          2d             t0      1 
// spritePos                         texture  struct         r/o            t10      1 
// spriteCullRough                       UAV    uint     2darray             u0      1 
// spriteCullRoughRough                  UAV    uint     2darray             u2      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
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
dcl_constantbuffer CB1[83], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_structured t10, 32
dcl_uav_typed_texture2darray (uint,uint,uint,uint) u0
dcl_uav_typed_texture2darray (uint,uint,uint,uint) u2
dcl_input vThreadGroupID.xyz
dcl_input vThreadIDInGroup.xy
dcl_temps 8
dcl_thread_group 8, 8, 1
imad r0.xy, vThreadGroupID.xyxx, l(8, 8, 0, 0), vThreadIDInGroup.xyxx
resinfo_indexable(texture2darray)(uint,uint,uint,uint)_uint r1.xy, l(0), u0.xyzw
uge r1.xy, r0.xyxx, r1.xyxx
or r1.x, r1.y, r1.x
if_nz r1.x
  ret 
endif 
ishl r1.xy, vThreadIDInGroup.xyxx, l(5, 5, 0, 0)
imad r1.xy, vThreadGroupID.xyxx, l(256, 256, 0, 0), r1.xyxx
iadd r1.zw, r1.xxxy, l(0, 0, 31, 31)
utof r2.xyzw, r1.xyxw
utof r3.xyzw, r1.zyzw
ishl r1.x, vThreadGroupID.z, l(5)
mov r0.z, l(0)
ld_indexable(texture2d)(float,float,float,float) r1.y, r0.xyzz, t0.yxzw
and r1.z, cb1[82].y, l(2)
movc r1.y, r1.z, l(0), r1.y
mov r4.y, r1.x
mov r4.xz, l(0,0,0,0)
loop 
  ult r1.z, r4.z, l(32)
  ult r1.w, r4.y, cb1[82].x
  and r1.z, r1.w, r1.z
  breakc_z r1.z
  ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r5.xyz, r4.y, l(16), t10.xyzx
  lt r1.z, r1.y, r5.z
  if_nz r1.z
    ld_structured_indexable(structured_buffer, stride=32)(mixed,mixed,mixed,mixed) r6.xyzw, r4.y, l(0), t10.xyzw
    dp2 r1.z, r6.xyxx, r2.xyxx
    dp2 r1.w, r6.zwzz, r2.xyxx
    add r1.zw, r5.xxxy, r1.zzzw
    dp2 r4.w, r6.xyxx, r2.zwzz
    add r4.w, r5.x, r4.w
    dp2 r5.z, r6.zwzz, r2.zwzz
    dp2 r5.w, r6.xyxx, r3.xyxx
    add r5.zw, r5.yyyx, r5.zzzw
    dp2 r7.x, r6.zwzz, r3.xyxx
    add r7.x, r5.y, r7.x
    dp2 r6.x, r6.xyxx, r3.zwzz
    add r5.x, r5.x, r6.x
    dp2 r6.x, r6.zwzz, r3.zwzz
    add r5.y, r5.y, r6.x
    min r6.x, r1.z, r4.w
    min r6.y, r5.x, r5.w
    min r6.x, r6.y, r6.x
    min r6.y, r1.w, r5.z
    min r6.z, r5.y, r7.x
    min r6.y, r6.z, r6.y
    max r1.z, r1.z, r4.w
    max r4.w, r5.x, r5.w
    max r1.z, r1.z, r4.w
    max r1.w, r1.w, r5.z
    max r4.w, r5.y, r7.x
    max r1.w, r1.w, r4.w
    lt r4.w, r6.x, l(1.000000)
    lt r1.zw, l(0.000000, 0.000000, 0.000000, 0.000000), r1.zzzw
    and r1.z, r1.z, r4.w
    lt r4.w, r6.y, l(1.000000)
    and r1.w, r1.w, r4.w
    and r1.z, r1.w, r1.z
    bfi r1.w, l(1), r4.z, l(1), r4.x
    movc r4.x, r1.z, r1.w, r4.x
  endif 
  iadd r4.yz, r4.yyzy, l(0, 1, 1, 0)
endloop 
mov r0.w, vThreadGroupID.z
store_uav_typed u0.xyzw, r0.xyww, r4.xxxx
if_nz r4.x
  ushr r0.z, vThreadGroupID.z, l(5)
  ishl r0.w, l(1), vThreadGroupID.z
  atomic_or u2, r0.xyzx, r0.w
endif 
ret 
// Approximately 73 instruction slots used
