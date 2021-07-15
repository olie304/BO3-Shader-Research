//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:23 2021
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
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float3 specColorTint;              // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float detailScaleHeight;           // Offset:  200 Size:     4
//   float3 backlightScatterColor;      // Offset:  208 Size:    12
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// aoSampler                         sampler      NA          NA             s4      1 
// colorMap                          texture  float4          2d             t0      1 
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailMap                         texture  float4          2d            t11      1 
// thicknessMap                      texture  float4          2d            t12      1 
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
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 7   xyzw        6     NONE   float   xy w
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
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyw
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 9
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, v1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s2
add r1.xyz, cb0[11].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add_sat r0.w, -r0.w, l(1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t10.yzwx, s4
sample_indexable(texture2d)(float,float,float,float) r1.w, v2.xyxx, t9.yzwx, s2
add r2.x, -cb0[12].x, cb0[12].y
mad r1.w, r1.w, r2.x, cb0[12].x
mul_sat r1.w, r1.w, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v2.xyxx, t7.xyzw, s3
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[11].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r2.w, r2.xyxx, r2.xyxx
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r3.z, r2.w
mul r2.z, r2.z, r2.z
mul r2.z, r2.z, l(0.33333334)
mul r4.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t11.xyzw, s3
mad r4.xy, r4.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r4.z, r4.z
mul r2.w, r2.w, l(0.33333334)
min r2.zw, r2.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
mad r3.xy, r4.xyxx, cb0[12].zzzz, r2.xyxx
dp3 r2.x, r3.xyzx, r3.xyzx
rsq r2.x, r2.x
mul r3.xyz, r2.xxxx, r3.xyzx
mad r2.x, r2.w, cb0[12].z, r2.z
movc r2.y, v7.x, l(1.000000), l(-1.000000)
dp3 r2.z, v3.xyzx, v3.xyzx
rsq r2.z, r2.z
mul r4.xyz, r2.zzzz, v3.xyzx
mul r5.xyz, r2.yyyy, r4.xyzx
dp3 r2.z, v4.xyzx, v4.xyzx
rsq r2.z, r2.z
mul r6.xyz, r2.zzzz, v4.xyzx
mul r6.xyz, r2.yyyy, r6.xyzx
dp3 r2.z, v5.xyzx, v5.xyzx
rsq r2.z, r2.z
mul r7.xyz, r2.zzzz, v5.xyzx
mul r7.xyz, r2.yyyy, r7.xyzx
mul r1.w, r1.w, l(-17.000000)
exp r1.w, r1.w
add r1.w, r1.w, r2.x
log r1.w, r1.w
mul_sat r1.w, r1.w, l(-0.05882353)
mul r2.xzw, r3.yyyy, r7.xxyz
mad r2.xzw, r6.xxyz, r3.xxxx, r2.xxzw
mad r2.xzw, r5.xxyz, r3.zzzz, r2.xxzw
dp3 r3.x, r2.xzwx, r2.xzwx
rsq r3.x, r3.x
mul r3.yzw, r2.xxzw, r3.xxxx
dp3 r2.x, l(0.212600, 0.715200, 0.072200, 0.000000), r1.xyzx
lt r2.x, l(0.091000), r2.x
if_nz r2.x
  div r2.xz, v6.xxyx, v6.wwww
  mul r6.xyzw, cb1[44].xyxy, l(0.500000, 0.500000, 0.500000, -0.500000)
  mad r2.xz, r2.xxzx, r6.zzwz, r6.xxyx
  add r2.xz, -r2.xxzx, v0.xxyx
  add r2.w, r5.y, r5.x
  mad r2.w, r4.z, r2.y, r2.w
  mul r2.w, r2.w, l(0.500000)
  mad r6.xyz, r4.xyzx, r2.yyyy, -r2.wwww
  max r4.w, r6.z, r6.y
  max r4.w, r4.w, r6.x
  max r2.w, r2.w, r4.w
  eq r4.w, r2.w, r6.x
  mul r7.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
  add r5.z, r2.w, l(2.000000)
  mov r7.x, l(1)
  mov r3.x, l(0)
  movc r7.xyzw, r4.wwww, r7.xyzw, r3.xyzw
  movc r2.w, r4.w, r5.z, r2.w
  eq r4.w, r2.w, r6.y
  mul r8.yzw, r7.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
  add r5.z, r2.w, l(2.000000)
  mov r8.x, l(2)
  movc r7.xyzw, r4.wwww, r8.xyzw, r7.xyzw
  movc r2.w, r4.w, r5.z, r2.w
  eq r2.w, r2.w, r6.z
  mul r6.yzw, r7.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
  mov r6.x, l(3)
  movc r6.xyzw, r2.wwww, r6.xyzw, r7.xyzw
  add r2.w, r6.z, r6.y
  add r7.z, r6.w, r2.w
  add r7.y, -r6.y, r6.w
  mad r7.x, -r6.z, l(3.000000), r7.z
  mul r6.yzw, r7.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
  add r2.w, |r6.w|, l(1.000000)
  rsq r2.w, r2.w
  mul r5.zw, r2.wwww, r6.yyyz
  mad o1.xy, r5.zwzz, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
  mad o1.z, r1.w, l(0.49755621), l(0.00146628)
  utof r2.w, r6.x
  mul o1.w, r2.w, l(0.33333334)
  ftou r5.zw, v0.xxxy
  add r6.y, -r1.z, r1.x
  mad r1.x, r6.y, l(0.500000), r1.z
  add r6.z, -r1.x, r1.y
  mad r6.x, r6.z, l(0.500000), r1.x
  and r1.xy, r5.zwzz, l(1, 1, 0, 0)
  ieq r1.x, r1.y, r1.x
  movc r1.xy, r1.xxxx, r6.xyxx, r6.xzxx
  mad o2.xy, r1.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
  add r1.xy, |r2.xzxx|, l(-10.000000, -10.000000, 0.000000, 0.000000)
  mul_sat r1.xy, r1.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
  mul r5.zw, |r2.xxxz|, l(0.000000, 0.000000, 0.100000, 0.100000)
  min r5.zw, r5.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
  add r5.zw, -r1.xxxy, r5.zzzw
  mad r1.xy, r5.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000), r1.xyxx
  ge r2.xz, r2.xxzx, l(0.000000, 0.000000, 0.000000, 0.000000)
  movc o3.xy, r2.xzxx, r1.xyxx, -r1.xyxx
  mov o0.xyz, r0.xyzx
  mov o0.w, l(1.000000)
  mov o2.z, r0.w
  mov o2.w, l(0.33333334)
  ret 
endif 
sample_indexable(texture2d)(float,float,float,float) r1.x, v2.xyxx, t12.xyzw, s1
mul r2.xzw, r0.xxyz, cb0[13].xxyz
add r1.x, -r1.x, l(1.000000)
mul r1.y, r1.x, r2.w
div r5.zw, v6.xxxy, v6.wwww
mul r6.xyzw, cb1[44].xyxy, l(0.500000, 0.500000, 0.500000, -0.500000)
mad r5.zw, r5.zzzw, r6.zzzw, r6.xxxy
add r5.zw, -r5.zzzw, v0.xxxy
add r1.z, r5.y, r5.x
mad r1.z, r4.z, r2.y, r1.z
mul r1.z, r1.z, l(0.500000)
mad r4.xyz, r4.xyzx, r2.yyyy, -r1.zzzz
max r2.y, r4.z, r4.y
max r2.y, r2.y, r4.x
max r1.z, r1.z, r2.y
eq r2.y, r1.z, r4.x
mul r6.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r2.w, r1.z, l(2.000000)
mov r6.x, l(1)
mov r3.x, l(0)
movc r3.xyzw, r2.yyyy, r6.xyzw, r3.xyzw
movc r1.z, r2.y, r2.w, r1.z
eq r2.y, r1.z, r4.y
mul r6.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.w, r1.z, l(2.000000)
mov r6.x, l(2)
movc r3.xyzw, r2.yyyy, r6.xyzw, r3.xyzw
movc r1.z, r2.y, r2.w, r1.z
eq r1.z, r1.z, r4.z
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r4.x, l(3)
movc r3.xyzw, r1.zzzz, r4.xyzw, r3.xyzw
add r1.z, r3.z, r3.y
add r4.z, r3.w, r1.z
add r4.y, -r3.y, r3.w
mad r4.x, -r3.z, l(3.000000), r4.z
mul r3.yzw, r4.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r1.z, |r3.w|, l(1.000000)
rsq r1.z, r1.z
mul r2.yw, r1.zzzz, r3.yyyz
mad o1.xy, r2.ywyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r1.w, l(0.49755621), l(0.500000)
utof r1.z, r3.x
mul o1.w, r1.z, l(0.33333334)
ftou r1.zw, v0.xxxy
mad r3.y, r2.x, r1.x, -r1.y
mad r1.y, r3.y, l(0.500000), r1.y
mad r3.z, r2.z, r1.x, -r1.y
mad r3.x, r3.z, l(0.500000), r1.y
and r1.xy, r1.zwzz, l(1, 1, 0, 0)
ieq r1.x, r1.y, r1.x
movc r1.xy, r1.xxxx, r3.xyxx, r3.xzxx
mad o2.xy, r1.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r1.xy, |r5.zwzz|, l(-10.000000, -10.000000, 0.000000, 0.000000)
mul_sat r1.xy, r1.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
mul r1.zw, |r5.zzzw|, l(0.000000, 0.000000, 0.100000, 0.100000)
min r1.zw, r1.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
add r1.zw, -r1.xxxy, r1.zzzw
mad r1.xy, r1.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000), r1.xyxx
ge r1.zw, r5.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r1.zwzz, r1.xyxx, -r1.xyxx
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
mov o2.z, r0.w
mov o2.w, l(0.66666669)
ret 
// Approximately 192 instruction slots used
