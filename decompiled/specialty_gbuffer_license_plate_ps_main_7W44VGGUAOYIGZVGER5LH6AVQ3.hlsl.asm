//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:41:12 2021
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
//   float baseNormalHeight;            // Offset:  160 Size:     4
//   float2 glossRange;                 // Offset:  164 Size:     8
//   float charOffset1;                 // Offset:  172 Size:     4 [unused]
//   float charOffset2;                 // Offset:  176 Size:     4 [unused]
//   float charOffset3;                 // Offset:  180 Size:     4 [unused]
//   float charOffset4;                 // Offset:  184 Size:     4 [unused]
//   float charOffset5;                 // Offset:  188 Size:     4 [unused]
//   float charOffset6;                 // Offset:  192 Size:     4 [unused]
//   float charOffset7;                 // Offset:  196 Size:     4 [unused]
//   float charOffset8;                 // Offset:  200 Size:     4 [unused]
//   float charPosCount;                // Offset:  204 Size:     4
//   float charListCount;               // Offset:  208 Size:     4
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
//   float4 debugColorOverride;         // Offset:  928 Size:    16
//   float4 debugAlphaOverride;         // Offset:  944 Size:    16 [unused]
//   float4 debugNormalOverride;        // Offset:  960 Size:    16
//   float4 debugSpecularOverride;      // Offset:  976 Size:    16
//   float4 debugGlossOverride;         // Offset:  992 Size:    16
//   float4 debugOcclusionOverride;     // Offset: 1008 Size:    16
//   float4 debugStreamerControl;       // Offset: 1024 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// normalSampler                     sampler      NA          NA             s2      1 
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// colorMap                          texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// characterColorMap                 texture  float4          2d             t9      1 
// characterNormalMap                texture  float4          2d            t10      1 
// characterRevealMap                texture  float4          2d            t11      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 4   x           2     NONE    uint   x   
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 7   xyzw        6     NONE   float       
// SV_IsFrontFace           0   x           7    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
// SV_TARGET                3   xy          3   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[14], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.x
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 7
max r0.x, cb0[12].w, l(1.000000)
min r0.x, r0.x, l(8.000000)
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
max r0.y, cb0[13].x, l(1.000000)
div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t7.xyzw, s2
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].xxxx, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r2.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.w, r0.zwzz, r0.zwzz
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r3.z, r1.w
mul r1.w, r2.z, r2.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t11.xyzw, s1
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r3.w, v2.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r4.xyzw, r3.w, l(0), t0.xyzw
lt r5.x, r2.z, r0.x
if_nz r5.x
  mov_sat r4.x, r4.x
  mul r4.x, r0.y, r4.x
  mad r2.x, r2.x, r0.y, r4.x
else 
  add r4.x, r0.x, r0.x
  lt r4.x, r2.z, r4.x
  if_nz r4.x
    mov_sat r4.y, r4.y
    mul r4.x, r0.y, r4.y
    mad r2.x, r2.x, r0.y, r4.x
  else 
    mul r4.x, r0.x, l(3.000000)
    lt r4.x, r2.z, r4.x
    if_nz r4.x
      mov_sat r4.z, r4.z
      mul r4.x, r0.y, r4.z
      mad r2.x, r2.x, r0.y, r4.x
    else 
      ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r5.xyzw, r3.w, l(16), t0.xyzw
      mov_sat r4.w, r4.w
      mov_sat r5.xyzw, r5.xyzw
      mul r6.xyzw, r0.xxxx, l(4.000000, 5.000000, 6.000000, 7.000000)
      mul r3.w, r0.y, r2.x
      mad r4.x, r0.y, r4.w, r3.w
      lt r6.xyzw, r2.zzzz, r6.xyzw
      mul r0.x, r0.x, l(8.000000)
      lt r0.x, r2.z, r0.x
      mad r5.xyzw, r0.yyyy, r5.xyzw, r3.wwww
      mov r2.xzw, r5.wwzy
      movc r0.xy, r0.xxxx, r2.xyxx, v1.yzyy
      movc r0.xy, r6.wwww, r2.zyzz, r0.xyxx
      movc r0.xy, r6.zzzz, r2.wyww, r0.xyxx
      mov r4.y, r5.x
      mov r4.z, r2.y
      movc r0.xy, r6.yyyy, r4.yzyy, r0.xyxx
      movc r2.xy, r6.xxxx, r4.xzxx, r0.xyxx
    endif 
  endif 
endif 
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t9.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r2.xyxx, t10.xyzw, s2
mad r0.xy, r5.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.z, r5.z, r5.z
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mad r3.xy, r0.xyxx, r4.wwww, r0.zwzz
dp3 r0.x, r3.xyzx, r3.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, r3.xyzx
mad r0.w, r2.z, r4.w, r1.w
add r3.xyz, -r1.xyzx, r4.xyzx
mad r1.xyz, r4.wwww, r3.xyzx, r1.xyzx
add r1.w, -cb0[10].y, cb0[10].z
mul_sat r2.z, cb0[10].z, l(0.05882353)
movc r2.w, v7.x, l(1.000000), l(-1.000000)
dp3 r3.x, v3.xyzx, v3.xyzx
rsq r3.x, r3.x
mul r3.yzw, r3.xxxx, v3.xxyz
mul r4.xyz, r2.wwww, r3.yzwy
dp3 r4.w, v4.xyzx, v4.xyzx
rsq r4.w, r4.w
mul r5.xyz, r4.wwww, v4.xyzx
mul r5.xyz, r2.wwww, r5.xyzx
dp3 r4.w, v5.xyzx, v5.xyzx
rsq r4.w, r4.w
mul r6.xyz, r4.wwww, v5.xyzx
mul r6.xyz, r2.wwww, r6.xyzx
mul r2.z, r2.z, l(-17.000000)
exp r2.z, r2.z
add r0.w, r0.w, r2.z
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r6.xyz, r0.yyyy, r6.xyzx
mad r5.xyz, r5.xyzx, r0.xxxx, r6.xyzx
mad r0.xyz, r4.xyzx, r0.zzzz, r5.xyzx
dp3 r2.z, r0.xyzx, r0.xyzx
rsq r2.z, r2.z
mul r0.xyz, r0.xyzx, r2.zzzz
mad r1.w, cb1[62].x, r1.w, cb0[10].y
mul_sat r1.w, r1.w, l(0.05882353)
lt r2.z, l(0.000000), cb1[64].w
if_nz r2.z
  ftoi r2.z, cb1[64].w
  lod r4.z, r2.xyxx, t6.y, s1
  lod r2.x, r2.xyxx, t6.x, s1
  lt r2.y, r4.z, r2.x
  lt r2.x, l(0.000000), r2.x
  and r5.xyz, r2.zzzz, l(1, 2, 4, 0)
  movc r6.xyz, r5.xxxx, l(1.000000,0,1.000000,0), r1.xyzx
  movc r5.xyw, r5.yyyy, l(0,1.000000,0,1.000000), r1.xyxz
  movc r5.xyw, r2.xxxx, r6.xyxz, r5.xyxw
  movc r6.xyz, r5.zzzz, l(0,1.000000,0,0), r1.xyzx
  movc r1.xyz, r2.yyyy, r5.xywx, r6.xyzx
endif 
add r2.xyz, -r1.xyzx, cb1[58].xyzx
mad o0.xyz, cb1[58].wwww, r2.xyzx, r1.xyzx
add r1.xyz, cb1[61].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xyz, cb1[61].wwww, r1.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.w, -r0.w, r1.w
mad r0.w, cb1[62].w, r1.w, r0.w
add r1.w, cb1[63].x, l(-1.000000)
mad o2.z, cb1[63].w, r1.w, l(1.000000)
mad r2.xyz, v3.xyzx, r3.xxxx, -r0.xyzx
mad r5.yzw, cb1[60].wwww, r2.xxyz, r0.xxyz
add r0.x, r4.y, r4.x
mad r0.x, r3.w, r2.w, r0.x
mul r0.x, r0.x, l(0.500000)
mad r2.xyz, r3.yzwy, r2.wwww, -r0.xxxx
max r0.y, r2.z, r2.y
max r0.y, r0.y, r2.x
max r0.x, r0.y, r0.x
eq r0.y, r0.x, r2.x
mul r3.yzw, r5.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r0.z, r0.x, l(2.000000)
mov r3.x, l(1)
mov r5.x, l(0)
movc r3.xyzw, r0.yyyy, r3.xyzw, r5.xyzw
movc r0.x, r0.y, r0.z, r0.x
eq r0.y, r0.x, r2.y
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r0.z, r0.x, l(2.000000)
mov r4.x, l(2)
movc r3.xyzw, r0.yyyy, r4.xyzw, r3.xyzw
movc r0.x, r0.y, r0.z, r0.x
eq r0.x, r0.x, r2.z
mul r2.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r2.xyzw, r0.xxxx, r2.xyzw, r3.xyzw
add r0.x, r2.z, r2.y
add r0.z, r2.w, r0.x
add r0.y, -r2.y, r2.w
mad r0.x, -r2.z, l(3.000000), r0.z
mul r0.xyz, r0.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r0.xy, r0.zzzz, r0.xyxx
mad o1.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.00146628)
utof r0.x, r2.x
mul o1.w, r0.x, l(0.33333334)
ftou r0.xy, v0.xyxx
add r2.y, -r1.z, r1.x
mad r0.z, r2.y, l(0.500000), r1.z
add r2.z, -r0.z, r1.y
mad r2.x, r2.z, l(0.500000), r0.z
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r2.xyxx, r2.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.w, l(1.000000)
mov o2.w, l(0.33333334)
mov o3.xy, l(0,0,0,0)
ret 
// Approximately 175 instruction slots used
