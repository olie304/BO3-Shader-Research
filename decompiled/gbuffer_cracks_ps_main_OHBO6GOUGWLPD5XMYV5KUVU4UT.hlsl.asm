//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:16 2021
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
//   float4 detailScale;                // Offset:   64 Size:    16
//   float4 detailScale1;               // Offset:   80 Size:    16 [unused]
//   float4 detailScale2;               // Offset:   96 Size:    16 [unused]
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16
//   float4 colorDetailScale;           // Offset:  144 Size:    16
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float3 specColorTint;              // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float detailScaleHeight;           // Offset:  200 Size:     4
//   float3 crackReveal;                // Offset:  208 Size:    12 [unused]
//   float4 colorTint1;                 // Offset:  224 Size:    16
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
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// aoSampler                         sampler      NA          NA             s4      1 
// crackSampler                      sampler      NA          NA             s5      1 
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// colorMap                          texture  float4          2d             t6      1 
// specColorMap                      texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
// detailMap                         texture  float4          2d            t12      1 
// crackMap                          texture  float4          2d            t14      1 
// crackNormalMap                    texture  float4          2d            t15      1 
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
// COLOR                    0   xyz         1     NONE   float   xyz 
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 4   x           3     NONE    uint   x   
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyzw        7     NONE   float   xy w
// SV_IsFrontFace           0   x           8    FFACE    uint   x   
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
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.x
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xyw
dcl_input_ps_sgv constant v8.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 7
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.y, r0.x, l(32), t0.xxxx
mov_sat r0.y, r0.y
mad r0.y, r0.y, -v1.y, l(1.000000)
add_sat r0.z, r0.y, cb0[8].x
mov_sat r0.y, r0.y
add r0.z, -r0.y, r0.z
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
add r0.w, cb0[8].y, cb0[8].y
mul r1.xy, v2.xyxx, cb0[9].xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t14.xyzw, s5
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t15.xyzw, s5
mad_sat r1.w, r2.w, l(0.998000), l(0.001000)
log r1.w, r1.w
mul r0.w, r0.w, r1.w
exp r0.w, r0.w
add r0.y, -r0.y, r0.w
mul_sat r0.y, r0.z, r0.y
mad r0.z, r0.y, l(-2.000000), l(3.000000)
mul r0.y, r0.y, r0.y
mul r0.y, r0.y, r0.z
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.z, r0.x, l(16), t0.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(48), t0.xxxx
mov_sat r0.xz, r0.xxzx
mad r0.x, r0.x, -v1.z, l(1.000000)
mad r0.z, r0.z, -v1.x, l(1.000000)
add_sat r1.w, r0.z, cb0[8].x
mov_sat r0.z, r0.z
add r1.w, -r0.z, r1.w
add r0.z, -r0.z, r0.w
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mul_sat r0.z, r0.z, r1.w
mad r1.w, r0.z, l(-2.000000), l(3.000000)
mul r0.z, r0.z, r0.z
mad r0.y, r1.w, r0.z, r0.y
add_sat r0.z, r0.x, cb0[8].x
mov_sat r0.x, r0.x
add r0.z, -r0.x, r0.z
add r0.x, -r0.x, r0.w
div r0.z, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
mul_sat r0.x, r0.z, r0.x
mad r0.z, r0.x, l(-2.000000), l(3.000000)
mul r0.x, r0.x, r0.x
mad r0.x, r0.z, r0.x, r0.y
min r0.x, r0.x, l(1.000000)
add r0.yzw, cb0[10].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v2.xyxx, t6.xyzw, s1
mad r0.yzw, r3.wwww, r0.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
mul r0.yzw, r0.yyzw, r3.xxyz
sample_indexable(texture2d)(float,float,float,float) r1.w, v2.xyxx, t7.yzwx, s2
add_sat r2.w, -r1.w, l(1.000000)
mul r0.yzw, r0.yyzw, r2.wwww
mad r2.xyz, r2.xyzx, cb0[14].xyzx, -r0.yzwy
mad o0.xyz, r0.xxxx, r2.xyzx, r0.yzwy
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v2.xyxx, t9.wxyz, s3
add r0.yzw, r0.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r0.yzw, cb0[11].wwww, r0.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r0.yz, r0.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r0.w, r0.w, r0.w
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
dp2 r2.x, r0.yzyy, r0.yzyy
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r2.z, r2.x
mul r3.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t12.xyzw, s3
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r0.w, r2.w, cb0[12].z, r0.w
mad r2.xy, r3.xyxx, cb0[12].zzzz, r0.yzyy
dp3 r0.y, r2.xyzx, r2.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, r2.xyzx
dp3 r0.y, v6.xyzx, v6.xyzx
rsq r0.y, r0.y
mul r3.xyz, r0.yyyy, v6.xyzx
movc r0.y, v8.x, l(1.000000), l(-1.000000)
mul r3.xyz, r0.yyyy, r3.xyzx
mul r4.xyz, r2.yyyy, r3.xyzx
dp3 r0.z, v5.xyzx, v5.xyzx
rsq r0.z, r0.z
mul r5.xyz, r0.zzzz, v5.xyzx
mul r5.xyz, r0.yyyy, r5.xyzx
mad r2.xyw, r5.xyxz, r2.xxxx, r4.xyxz
dp3 r0.z, v4.xyzx, v4.xyzx
rsq r0.z, r0.z
mul r4.xyz, r0.zzzz, v4.xyzx
mul r6.xyz, r0.yyyy, r4.xyzx
mad r2.xyz, r6.xyzx, r2.zzzz, r2.xywx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r1.z, r1.z
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
mul r3.xyz, r1.yyyy, r3.xyzx
mad r3.xyz, r5.xyzx, r1.xxxx, r3.xyzx
dp2 r1.x, r1.xyxx, r1.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.x, r1.x
mad r1.xyz, r6.xyzx, r1.xxxx, r3.xyzx
add r2.w, r6.y, r6.x
mad r2.w, r4.z, r0.y, r2.w
mul r2.w, r2.w, l(0.500000)
dp3 r3.x, r1.xyzx, r1.xyzx
rsq r3.x, r3.x
mad r1.xyz, r1.xyzx, r3.xxxx, -r2.xyzx
mad r3.yzw, r0.xxxx, r1.xxyz, r2.xxyz
mul r5.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r5.x, l(1)
mov r3.x, l(0)
mad r1.xyz, r4.xyzx, r0.yyyy, -r2.wwww
max r0.y, r1.z, r1.y
max r0.y, r0.y, r1.x
max r0.y, r0.y, r2.w
eq r1.x, r0.y, r1.x
movc r2.xyzw, r1.xxxx, r5.xyzw, r3.xyzw
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r3.x, l(2)
add r4.x, r0.y, l(2.000000)
movc r0.y, r1.x, r4.x, r0.y
eq r1.x, r0.y, r1.y
movc r2.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r1.y, r0.y, l(2.000000)
movc r0.y, r1.x, r1.y, r0.y
eq r0.y, r0.y, r1.z
mov r3.x, l(3)
movc r2.xyzw, r0.yyyy, r3.xyzw, r2.xyzw
add r0.y, r2.z, r2.y
add r1.z, r2.w, r0.y
mad r1.x, -r2.z, l(3.000000), r1.z
add r1.y, -r2.y, r2.w
utof r0.y, r2.x
mul o1.w, r0.y, l(0.33333334)
mul r1.xyz, r1.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.y, |r1.z|, l(1.000000)
rsq r0.y, r0.y
mul r1.xy, r0.yyyy, r1.xyxx
mad o1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.y, v2.xyxx, t10.yxzw, s2
add r1.x, -cb0[12].x, cb0[12].y
mad r0.y, r0.y, r1.x, cb0[12].x
mul_sat r0.y, r0.y, l(0.05882353)
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.w
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r0.w, r0.y, l(-17.000000)
exp r0.w, r0.w
add r0.z, r0.w, r0.z
log r0.z, r0.z
mul r0.z, r0.z, l(-0.05882353)
max r0.z, r0.z, l(0.000000)
add r0.z, -r0.y, r0.z
mad r0.x, r0.x, r0.z, r0.y
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
add r0.xyz, cb0[11].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r0.xyz, r1.wwww, r0.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.y, -r0.z, r0.x
mad r0.x, r1.y, l(0.500000), r0.z
add r1.z, -r0.x, r0.y
mad r1.x, r1.z, l(0.500000), r0.x
ftou r0.xy, v0.xyxx
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t11.xyzw, s4
mov o2.z, r0.x
mov o2.w, l(0.33333334)
div r0.xy, v7.xyxx, v7.wwww
mul r0.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r1.x, r0.z, r0.x
mul r1.y, -r0.w, r0.y
mad r0.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), r1.xyxx
add r0.xy, -r0.xyxx, v0.xyxx
mul r0.zw, |r0.xxxy|, l(0.000000, 0.000000, 0.100000, 0.100000)
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
add r1.xy, |r0.xyxx|, l(-10.000000, -10.000000, 0.000000, 0.000000)
ge r0.xy, r0.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul_sat r1.xy, r1.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
add r0.zw, r0.zzzw, -r1.xxxy
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000), r1.xxxy
movc o3.xy, r0.xyxx, r0.zwzz, -r0.zwzz
ret 
// Approximately 193 instruction slots used
