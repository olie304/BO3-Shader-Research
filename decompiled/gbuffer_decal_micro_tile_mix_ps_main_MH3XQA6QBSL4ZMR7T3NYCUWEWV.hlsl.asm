//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:39 2021
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
//   float4 detailScale1;               // Offset:   80 Size:    16
//   float4 detailScale2;               // Offset:   96 Size:    16
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float2 mixScale;                   // Offset:  184 Size:     8
//   float detailScaleHeight1;          // Offset:  192 Size:     4
//   float detailScaleHeight2;          // Offset:  196 Size:     4
//   float4 colorTint1;                 // Offset:  208 Size:    16
//   float2 glossRange2;                // Offset:  224 Size:     8
//   float rotateUVs1;                  // Offset:  232 Size:     4
//   float rotateUVs2;                  // Offset:  236 Size:     4
//   bool useUVOffsets1;                // Offset:  240 Size:     4
//   bool useUVOffsets2;                // Offset:  244 Size:     4
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64 [unused]
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64
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
//   float4 debugColorOverride;         // Offset:  928 Size:    16
//   float4 debugAlphaOverride;         // Offset:  944 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// normalSampler                     sampler      NA          NA             s2      1 
// mixSampler                        sampler      NA          NA             s3      1 
// floatZSampler                     texture  float4          2d             t0      1 
// resolvedNormal                    texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// tintMask                          texture  float4          2d             t9      1 
// normalMap                         texture  float4          2d            t10      1 
// detailMap1                        texture  float4          2d            t11      1 
// tintMask2                         texture  float4          2d            t12      1 
// detailMap2                        texture  float4          2d            t14      1 
// colorMapDetail2                   texture  float4          2d            t15      1 
// mixMap                            texture  float4          2d            t16      1 
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
// TEXCOORD                 1   xyzw        1     NONE   float   xyz 
// TEXCOORD                 2   xyzw        2     NONE   float   xyz 
// TEXCOORD                 3   xyzw        3     NONE   float   xyz 
// TEXCOORD                 4   xyzw        4     NONE   float   xyz 
// TEXCOORD                 5   xyz         5     NONE   float   xyz 
// TEXCOORD                13      w        5     NONE    uint      w
// TEXCOORD                 6   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyz         7     NONE   float   xyz 
// TEXCOORD                 8   xyzw        8     NONE   float   xyz 
// TEXCOORD                 9   xyz         9     NONE   float       
// TEXCOORD                12   xyzw       10     NONE   float   xyzw
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[16], immediateIndexed
dcl_constantbuffer CB1[72], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t16
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps constant v1.xyz
dcl_input_ps constant v2.xyz
dcl_input_ps constant v3.xyz
dcl_input_ps constant v4.xyz
dcl_input_ps constant v5.xyz
dcl_input_ps constant v5.w
dcl_input_ps constant v6.xyz
dcl_input_ps constant v7.xyz
dcl_input_ps constant v8.xyz
dcl_input_ps constant v10.xyzw
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 9
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
ge r0.y, r0.x, l(0.984375)
mul r0.z, r0.x, l(1.01587307)
mad r0.x, r0.x, l(64.000000), l(-63.000000)
movc r0.x, r0.y, r0.x, r0.z
max r0.x, r0.x, l(0.00000001)
rcp r0.x, r0.x
add r0.yz, v0.xxyx, -cb1[71].xxyx
mul r0.yz, r0.yyzy, cb1[44].zzwz
mad r0.yz, r0.yyzy, l(0.000000, 2.000000, -2.000000, 0.000000), l(0.000000, -1.000000, 1.000000, 0.000000)
mul r1.x, r0.y, cb1[12].x
mul r1.y, r0.z, cb1[13].y
mov r1.z, l(1.000000)
mul r0.xyz, r0.xxxx, r1.xyzx
mul r1.xyz, r0.yyyy, cb1[17].yzxy
mad r0.xyw, r0.xxxx, cb1[16].yzyx, r1.xyxz
mad r0.xyz, r0.zzzz, cb1[18].yzxy, r0.xywx
add r1.xyz, r0.zxyz, cb1[24].xyzx
mul r2.xyz, r1.yyyy, v2.xyzx
mad r2.xyz, r1.xxxx, v1.xyzx, r2.xyzx
mad r2.xyz, r1.zzzz, v3.xyzx, r2.xyzx
add r2.xyz, r2.xyzx, v4.xyzx
add r3.xyz, -|r2.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
lt r3.xyz, r3.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
or r0.w, r3.y, r3.x
or r0.w, r3.z, r0.w
discard_nz r0.w
if_nz v5.w
  deriv_rty_coarse r3.xyz, r0.yzxy
  deriv_rtx_coarse r0.xyz, r0.xyzx
  mul r4.xyz, r0.xyzx, r3.xyzx
  mad r0.xyz, r3.zxyz, r0.yzxy, -r4.xyzx
  dp3 r0.w, r0.xyzx, r0.xyzx
  rsq r0.w, r0.w
  mul r0.xyz, r0.wwww, r0.xyzx
  dp3 r0.x, r0.xyzx, v5.xyzx
  add r0.x, r0.x, l(-0.500000)
  lt r0.x, r0.x, l(0.000000)
  discard_nz r0.x
else 
  ftou r0.xy, v0.xyxx
  mov r0.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t6.xywz
  mad r0.z, r0.z, l(3.000000), l(0.500000)
  ftou r0.z, r0.z
  mad r0.xy, r0.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  mul r0.xy, r0.xyxx, l(0.850000, 0.850000, 0.000000, 0.000000)
  dp2 r0.w, r0.xyxx, r0.xyxx
  add r3.zw, -r0.wwww, l(0.000000, 0.000000, 2.000000, 1.000000)
  sqrt r0.w, r3.z
  mul r3.xy, r0.wwww, r0.xyxx
  and r0.xyzw, r0.zzzz, l(2, 1, 2, 1)
  movc r0.xyzw, r0.zwxy, l(-1.000000,-1.000000,1,1), l(1.000000,1.000000,0,0)
  xor r0.w, r0.w, r0.z
  movc r0.z, r0.w, l(-1.000000), l(1.000000)
  mul r4.xyz, r0.xyzx, l(-1.000000, 0.000000, 1.000000, 0.000000)
  mul r5.xyz, r0.xyzx, l(1.000000, -2.000000, 1.000000, 0.000000)
  mul r3.xyz, r3.xywx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
  mul r4.xyz, r3.yyyy, r4.xyzx
  mad r3.xyw, r5.xyxz, r3.xxxx, r4.xyxz
  mad r0.xyz, r0.xyzx, r3.zzzz, r3.xywx
  dp3 r0.x, r0.xyzx, v5.xyzx
  add r0.x, r0.x, l(-0.500000)
  lt r0.x, r0.x, l(0.000000)
  discard_nz r0.x
endif 
mad r0.xy, r2.yzyy, l(0.500000, -0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.xy, r0.xyxx, v10.zwzz, v10.xyxx
mul r1.xyz, r1.xyzx, l(0.100000, 0.100000, 0.100000, 0.000000)
frc r1.xyz, r1.xyzx
mul r0.zw, r0.xxxy, cb0[11].zzzw
sample_indexable(texture2d)(float,float,float,float) r0.z, r0.zwzz, t16.yzxw, s3
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r0.xyxx, t10.xyzw, s2
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r0.w, r2.xyxx, r2.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r3.z, r0.w
mul r0.w, r2.z, r2.z
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
sincos r4.x, r5.x, cb0[14].z
mov r6.x, -r4.x
add r2.zw, r0.xxxy, l(0.000000, 0.000000, -0.500000, -0.500000)
mov r6.y, r5.x
mov r6.z, r4.x
dp2 r4.x, r2.zwzz, r6.yzyy
dp2 r4.y, r2.zwzz, r6.xyxx
add r4.zw, r1.yyyx, r4.xxxy
add r1.z, r1.z, l(0.500000)
add r4.zw, r1.zzzz, r4.zzzw
add r4.xy, r4.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r4.xyzw, r4.xyzw, cb0[5].xyxy
movc r4.xy, cb0[15].xxxx, r4.zwzz, r4.xyxx
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t7.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.w, r4.xyxx, t9.yzwx, s1
add r6.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r1.wwww, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r5.xyz, r5.xyzx, r6.xyzx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t11.xyzw, s2
mad r4.xy, r4.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.w, r4.z, r4.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
sincos r6.x, r7.x, cb0[14].w
mov r8.x, -r6.x
mov r8.y, r7.x
mov r8.z, r6.x
dp2 r6.x, r2.zwzz, r8.yzyy
dp2 r6.y, r2.zwzz, r8.xyxx
add r1.xy, r1.yxyy, r6.xyxx
add r1.xy, r1.zzzz, r1.xyxx
mul r1.xy, r1.xyxx, cb0[6].xyxx
add r2.zw, r6.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r2.zw, r2.zzzw, cb0[6].xxxy
movc r1.xy, cb0[15].yyyy, r1.xyxx, r2.zwzz
sample_indexable(texture2d)(float,float,float,float) r6.xyzw, r1.xyxx, t15.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.z, r1.xyxx, t12.yzxw, s1
add r7.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r7.xyz, r1.zzzz, r7.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r6.xyz, r6.xyzx, r7.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t14.xyzw, s2
add r6.xyzw, -r5.xyzw, r6.xyzw
mad r5.xyzw, r0.zzzz, r6.xyzw, r5.xyzw
mul r5.xyz, r5.xyzx, v8.xyzx
add r2.z, -cb0[11].x, cb0[11].y
mul_sat r2.w, cb0[11].y, l(0.05882353)
mul_sat r3.w, cb0[14].y, l(0.05882353)
add r3.w, -r2.w, r3.w
mad r2.w, r0.z, r3.w, r2.w
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.z, r1.z, r1.z
mul r1.z, r1.z, l(0.33333334)
min r1.z, r1.z, l(1.000000)
mad r3.xy, r4.xyxx, cb0[12].xxxx, r2.xyxx
dp3 r3.w, r3.xyzx, r3.xyzx
rsq r3.w, r3.w
mul r4.xyz, r3.wwww, r3.xyzx
mad r4.w, r1.w, cb0[12].x, r0.w
mad r3.xy, r1.xyxx, cb0[12].yyyy, r2.xyxx
dp3 r1.x, r3.xyzx, r3.xyzx
rsq r1.x, r1.x
mul r3.xyz, r1.xxxx, r3.xyzx
mad r3.w, r1.z, cb0[12].y, r0.w
add r1.xyzw, -r4.xyzw, r3.xyzw
mad r1.xyzw, r0.zzzz, r1.xyzw, r4.xyzw
dp3 r0.z, v5.xyzx, v5.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, v5.xyzx
dp3 r0.w, v6.xyzx, v6.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, v6.xyzx
dp3 r0.w, v7.xyzx, v7.xyzx
rsq r0.w, r0.w
mul r6.xyz, r0.wwww, v7.xyzx
mul r0.w, r2.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r1.w
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r2.xyw, r1.yyyy, r6.xyxz
mad r1.xyw, r4.xyxz, r1.xxxx, r2.xyxw
mad r1.xyz, r3.xyzx, r1.zzzz, r1.xywx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.xyz, r1.wwww, r1.xyzx
mad r1.w, cb1[62].x, r2.z, cb0[11].x
mul_sat r1.w, r1.w, l(0.05882353)
lt r2.x, l(0.000000), cb1[64].w
if_nz r2.x
  ftoi r2.x, cb1[64].w
  lod r2.y, r0.xyxx, t7.y, s1
  lod r0.x, r0.xyxx, t7.x, s1
  lt r0.y, r2.y, r0.x
  lt r0.x, l(0.000000), r0.x
  and r2.xyz, r2.xxxx, l(1, 2, 4, 0)
  movc r3.xyz, r2.xxxx, l(1.000000,0,1.000000,0), r5.xyzx
  movc r2.xyw, r2.yyyy, l(0,1.000000,0,1.000000), r5.xyxz
  movc r2.xyw, r0.xxxx, r3.xyxz, r2.xyxw
  movc r3.xyz, r2.zzzz, l(0,1.000000,0,0), r5.xyzx
  movc r5.xyz, r0.yyyy, r2.xywx, r3.xyzx
endif 
add r2.xyz, -r5.xyzx, cb1[58].xyzx
mad r2.xyz, cb1[58].wwww, r2.xyzx, r5.xyzx
add r0.x, -r5.w, cb1[59].x
mad r0.x, cb1[59].w, r0.x, r5.w
add r3.xyz, cb1[61].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r3.xyz, cb1[61].wwww, r3.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r0.y, -r0.w, r1.w
mad r0.y, cb1[62].w, r0.y, r0.w
add r0.w, cb1[63].x, l(-1.000000)
mad r4.z, cb1[63].w, r0.w, l(1.000000)
mad r5.xyz, v5.xyzx, r0.zzzz, -r1.xyzx
mad r1.xyz, cb1[60].wwww, r5.xyzx, r1.xyzx
mul o0.xyz, r0.xxxx, r2.xyzx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.zw, r2.xyzw, t6.xyzw
lt r1.w, l(0.000000), r0.z
mad r0.w, r0.w, l(3.000000), l(0.500000)
ftou r0.w, r0.w
and r5.xyzw, r0.wwww, l(2, 1, 2, 1)
movc r5.xyzw, r5.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.w, r5.w, r5.z
movc r5.z, r0.w, l(-0.57735026), l(0.57735026)
mul r2.zw, r5.xxxz, l(0.000000, 0.000000, -1.22474492, 1.22474492)
mul r6.xyz, r5.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r6.x, r1.xyzx, r6.xyzx
dp2 r6.y, r1.xzxx, r2.zwzz
dp3 r0.w, r1.xyzx, r5.xyzx
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r1.xy, r0.wwww, r6.xyxx
mad r1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.z, r0.z, l(0.500000)
movc r0.z, r0.z, l(0.500000), l(0.00146628)
mad r1.z, r0.y, l(0.49755621), r0.z
and r0.yzw, r1.xxyz, r1.wwww
mul o1.xyz, r0.xxxx, r0.yzwy
add r1.y, -r3.z, r3.x
mad r0.y, r1.y, l(0.500000), r3.z
add r1.z, -r0.y, r3.y
mad r1.x, r1.z, l(0.500000), r0.y
and r0.yz, r2.xxyx, l(0, 1, 1, 0)
ieq r0.y, r0.z, r0.y
movc r0.yz, r0.yyyy, r1.xxyx, r1.xxzx
mad r4.xy, r0.yzyy, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov r4.w, l(1.000000)
mul o2.xyzw, r0.xxxx, r4.xyzw
mov o0.w, r0.x
mov o1.w, r0.x
ret 
// Approximately 236 instruction slots used
