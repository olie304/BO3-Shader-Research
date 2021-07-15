//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:08 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float3 pulseColor;                 // Offset:  176 Size:    12
//   float glowBoost;                   // Offset:  188 Size:     4
//   float viewOutlineWidth;            // Offset:  192 Size:     4
//   float viewOutlineBold;             // Offset:  196 Size:     4
//   float2 gridScale;                  // Offset:  200 Size:     8
//   float2 gridScroll;                 // Offset:  208 Size:     8
//
// }
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16 [unused]
//   float4 scriptVector2;              // Offset:   32 Size:    16 [unused]
//   float4 scriptVector3;              // Offset:   48 Size:    16 [unused]
//   float4 scriptVector4;              // Offset:   64 Size:    16 [unused]
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16 [unused]
//   float4 weaponParam0;               // Offset:  128 Size:    16 [unused]
//   float4 weaponParam1;               // Offset:  144 Size:    16 [unused]
//   float4 weaponParam2;               // Offset:  160 Size:    16 [unused]
//   float4 weaponParam3;               // Offset:  176 Size:    16 [unused]
//   float4 weaponParam4;               // Offset:  192 Size:    16 [unused]
//   float4 weaponParam5;               // Offset:  208 Size:    16 [unused]
//   float4 weaponParam6;               // Offset:  224 Size:    16 [unused]
//   float4 weaponParam7;               // Offset:  240 Size:    16 [unused]
//
// }
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// nearestSampler                    sampler      NA          NA             s1      1 
// trilinearSampler                  sampler      NA          NA             s2      1 
// frameBuffer                       texture  float4          2d             t0      1 
// floatzTexture                     texture  float4          2d             t6      1 
// sonarColorTexture                 texture  float4          2d             t7      1 
// sonarDepthTexture                 texture  float4          2d             t9      1 
// irisTexture                       texture  float4          2d            t10      1 
// gridTexture                       texture  float4          2d            t11      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[14], immediateIndexed
dcl_constantbuffer CB3[1], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xyxx, t0.xyzw, s2
mul r1.xy, cb0[12].xxxx, cb1[44].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.x, v1.xyxx, t7.zxyw, s1
lt r2.x, l(0.000000), r2.x
mov r3.x, -r1.y
mov r3.z, l(0)
add r2.yz, r3.zzxz, v1.xxyx
sample_indexable(texture2d)(float,float,float,float) r2.y, r2.yzyy, t9.yxzw, s2
mov r1.z, l(0)
add r3.xyzw, r1.zyxz, v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.xyxx, t9.yxzw, s2
mov r1.w, -r1.x
add r1.xz, r1.wwzw, v1.xxyx
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xzxx, t9.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t9.yzxw, s2
mul r2.zw, cb0[13].xxxy, cb1[69].wwww
mad r2.zw, v1.xxxy, cb0[12].zzzw, r2.zzzw
sample_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t11.yzwx, s2
if_nz r2.x
  sample_indexable(texture2d)(float,float,float,float) r2.x, v1.xyxx, t6.xyzw, s2
  sample_indexable(texture2d)(float,float,float,float) r2.z, v1.xyxx, t9.yzxw, s2
  lt r2.x, r2.x, l(0.984375)
  lt r2.w, l(0.000000), r2.z
  and r2.x, r2.w, r2.x
  lt r2.w, l(0.000000), cb3[0].y
  and r2.x, r2.w, r2.x
  if_nz r2.x
    ge r2.x, r2.z, l(0.984375)
    mul r2.w, r2.z, l(1.01587307)
    mad r2.z, r2.z, l(64.000000), l(-63.000000)
    movc r2.x, r2.x, r2.z, r2.w
    max r2.x, r2.x, l(0.00000001)
    rcp r2.x, r2.x
    ge r2.z, r2.y, l(0.984375)
    mul r2.w, r2.y, l(1.01587307)
    mad r2.y, r2.y, l(64.000000), l(-63.000000)
    movc r2.y, r2.z, r2.y, r2.w
    max r2.y, r2.y, l(0.00000001)
    rcp r3.x, r2.y
    ge r2.y, r1.y, l(0.984375)
    mul r2.z, r1.y, l(1.01587307)
    mad r1.y, r1.y, l(64.000000), l(-63.000000)
    movc r1.y, r2.y, r1.y, r2.z
    max r1.y, r1.y, l(0.00000001)
    rcp r3.y, r1.y
    ge r1.y, r1.x, l(0.984375)
    mul r2.y, r1.x, l(1.01587307)
    mad r1.x, r1.x, l(64.000000), l(-63.000000)
    movc r1.x, r1.y, r1.x, r2.y
    max r1.x, r1.x, l(0.00000001)
    rcp r3.z, r1.x
    ge r1.x, r1.z, l(0.984375)
    mul r1.y, r1.z, l(1.01587307)
    mad r1.z, r1.z, l(64.000000), l(-63.000000)
    movc r1.x, r1.x, r1.z, r1.y
    max r1.x, r1.x, l(0.00000001)
    rcp r3.w, r1.x
    add r2.xyzw, r2.xxxx, -r3.xyzw
    ge r2.xyzw, |r2.xyzw|, cb0[12].yyyy
    and r2.xyzw, r2.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
    dp4 r1.x, r2.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
    mad r1.x, r1.w, l(2.000000), r1.x
    mul r1.x, r1.x, cb0[11].w
    mul r1.x, r1.x, cb3[0].y
  else 
    mov r1.x, l(0)
  endif 
else 
  mov r1.x, l(0)
endif 
sample_indexable(texture2d)(float,float,float,float) r1.y, v1.xyxx, t10.yxzw, s2
mad r1.x, r1.y, cb3[0].x, r1.x
mul r1.xyz, r1.xxxx, cb0[11].xyzx
mad r0.xyz, r0.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000), r1.xyzx
mul o0.xyz, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
mov o0.w, r0.w
ret 
// Approximately 77 instruction slots used
