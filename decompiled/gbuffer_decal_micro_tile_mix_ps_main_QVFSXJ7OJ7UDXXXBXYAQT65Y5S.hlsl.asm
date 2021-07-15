//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:40 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4
//   float alphaRevealRamp;             // Offset:  164 Size:     4
//   float2 revealScale;                // Offset:  168 Size:     8
//   float3 colorTint;                  // Offset:  176 Size:    12
//   float3 specColorTint;              // Offset:  192 Size:    12
//   float baseNormalHeight;            // Offset:  204 Size:     4
//   float2 glossRange;                 // Offset:  208 Size:     8
//   float2 mixScale;                   // Offset:  216 Size:     8
//   float detailScaleHeight1;          // Offset:  224 Size:     4
//   float detailScaleHeight2;          // Offset:  228 Size:     4
//   float4 colorTint1;                 // Offset:  240 Size:    16
//   float2 glossRange2;                // Offset:  256 Size:     8
//   float rotateUVs1;                  // Offset:  264 Size:     4
//   float rotateUVs2;                  // Offset:  268 Size:     4
//   bool useUVOffsets1;                // Offset:  272 Size:     4
//   bool useUVOffsets2;                // Offset:  276 Size:     4
//   float2 revealTiling;               // Offset:  280 Size:     8
//   float4 specColorTint1;             // Offset:  288 Size:    16
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
// revealSampler                     sampler      NA          NA             s1      1 
// colorSampler                      sampler      NA          NA             s2      1 
// specColorSampler                  sampler      NA          NA             s3      1 
// normalSampler                     sampler      NA          NA             s4      1 
// aoSampler                         sampler      NA          NA             s5      1 
// mixSampler                        sampler      NA          NA             s6      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// tintMask                          texture  float4          2d             t9      1 
// specColorMap                      texture  float4          2d            t10      1 
// normalMap                         texture  float4          2d            t11      1 
// glossMap                          texture  float4          2d            t12      1 
// aoMap                             texture  float4          2d            t14      1 
// detailMap1                        texture  float4          2d            t15      1 
// tintMask2                         texture  float4          2d            t16      1 
// detailMap2                        texture  float4          2d            t17      1 
// glossMapDetail2                   texture  float4          2d            t18      1 
// colorMapDetail2                   texture  float4          2d            t19      1 
// mixMap                            texture  float4          2d            t20      1 
// specularMapDetail2                texture  float4          2d            t21      1 
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
// COLOR                    1      w        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
// UVOFFSETS                0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[19], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
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
dcl_resource_texture2d (float,float,float,float) t17
dcl_resource_texture2d (float,float,float,float) t18
dcl_resource_texture2d (float,float,float,float) t19
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture2d (float,float,float,float) t21
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 9
mul r0.xy, v2.xyxx, cb0[13].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t20.xyzw, s6
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v2.xyxx, t11.wxyz, s4
add r0.yzw, r0.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r0.yzw, cb0[12].wwww, r0.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r0.yz, r0.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
dp2 r1.x, r0.yzyy, r0.yzyy
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.z, r1.x
mul r0.w, r0.w, r0.w
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
sincos r2.x, r3.x, cb0[16].z
mov r4.x, -r2.x
add r2.yz, v2.xxyx, l(0.000000, -0.500000, -0.500000, 0.000000)
mov r4.y, r3.x
mov r4.z, r2.x
dp2 r3.x, r2.yzyy, r4.yzyy
dp2 r3.y, r2.yzyy, r4.xyxx
add r2.xw, r3.xxxy, v3.yyyx
add r1.w, v3.z, l(0.500000)
add r2.xw, r1.wwww, r2.xxxw
mul r2.xw, r2.xxxw, cb0[5].xxxy
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, cb0[5].xyxx
movc r2.xw, cb0[17].xxxx, r2.xxxw, r3.xxxy
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xwxx, t7.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r3.w, r2.xwxx, t9.yzwx, s2
add r4.xyz, cb0[11].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, r4.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.w, r2.xwxx, t10.yzwx, s3
add r4.xyz, cb0[12].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r4.w, r2.xwxx, t12.yzwx, s3
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r2.xwxx, t15.xyzw, s4
mad r2.xw, r5.xxxy, l(1.99218750, 0.000000, 0.000000, 1.99218750), l(-1.000000, 0.000000, 0.000000, -1.000000)
mul r5.x, r5.z, r5.z
mul r5.x, r5.x, l(0.33333334)
min r5.x, r5.x, l(1.000000)
sincos r6.x, r7.x, cb0[16].w
mov r8.x, -r6.x
mov r8.y, r7.x
mov r8.z, r6.x
dp2 r6.x, r2.yzyy, r8.yzyy
dp2 r6.y, r2.yzyy, r8.xyxx
add r2.yz, r6.xxyx, v3.yyxy
add r2.yz, r1.wwww, r2.yyzy
mul r2.yz, r2.yyzy, cb0[6].xxyx
add r5.yz, r6.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
mul r5.yz, r5.yyzy, cb0[6].xxyx
movc r2.yz, cb0[17].yyyy, r2.yyzy, r5.yyzy
sample_indexable(texture2d)(float,float,float,float) r5.yzw, r2.yzyy, t19.wxyz, s2
sample_indexable(texture2d)(float,float,float,float) r1.w, r2.yzyy, t16.yzwx, s2
add r6.xyz, cb0[15].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r1.wwww, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.w, r2.yzyy, t21.yzwx, s3
add r7.xyz, cb0[18].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r7.xyz, r1.wwww, r7.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r6.w, r2.yzyy, t18.yzwx, s3
sample_indexable(texture2d)(float,float,float,float) r8.xyz, r2.yzyy, t17.xyzw, s4
mad r5.yzw, r5.yyzw, r6.xxyz, -r3.xxyz
mad r3.xyz, r0.xxxx, r5.yzwy, r3.xyzx
mul r3.xyz, r3.xyzx, v1.xyzx
mul r2.yz, v2.xxyx, cb0[17].zzwz
mul r2.yz, r2.yyzy, cb0[10].zzwz
sample_indexable(texture2d)(float,float,float,float) r2.y, r2.yzyy, t6.yxzw, s1
mad_sat r2.z, v1.w, l(0.998000), l(0.001000)
add r5.y, -r2.z, l(1.000000)
mov_sat r5.z, cb0[10].y
log r2.z, r2.z
mul r2.z, r2.z, r5.z
exp r2.z, r2.z
mov r6.x, -r2.z
log r2.z, r5.y
mul r2.z, r2.z, r5.z
exp r6.y, r2.z
mad_sat r5.yz, cb0[10].xxxx, r6.xxyx, r5.yyyy
add r2.y, r2.y, -r5.y
add r2.z, -r5.y, r5.z
div_sat r2.y, r2.y, r2.z
add r1.w, -r3.w, r1.w
mad r1.w, r0.x, r1.w, r3.w
add r5.yzw, -r4.xxyz, r7.xxyz
mad r4.xyz, r0.xxxx, r5.yzwy, r4.xyzx
add r1.w, -r1.w, l(1.000000)
mul r3.xyz, r1.wwww, r3.xyzx
add r1.w, -cb0[13].x, cb0[13].y
mad r2.z, r4.w, r1.w, cb0[13].x
mul_sat r2.z, r2.z, l(0.05882353)
add r3.w, -cb0[16].x, cb0[16].y
mad r3.w, r6.w, r3.w, cb0[16].x
mul_sat r3.w, r3.w, l(0.05882353)
add r3.w, -r2.z, r3.w
mad r2.z, r0.x, r3.w, r2.z
sample_indexable(texture2d)(float,float,float,float) r3.w, v2.xyxx, t14.yzwx, s5
mad r5.yz, r8.xxyx, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r4.w, r8.z, r8.z
mul r4.w, r4.w, l(0.33333334)
min r4.w, r4.w, l(1.000000)
mad r1.xy, r2.xwxx, cb0[14].xxxx, r0.yzyy
dp3 r2.x, r1.xyzx, r1.xyzx
rsq r2.x, r2.x
mul r6.xyz, r1.xyzx, r2.xxxx
mad r6.w, r5.x, cb0[14].x, r0.w
mad r1.xy, r5.yzyy, cb0[14].yyyy, r0.yzyy
dp3 r0.y, r1.xyzx, r1.xyzx
rsq r0.y, r0.y
mul r5.xyz, r0.yyyy, r1.xyzx
mad r5.w, r4.w, cb0[14].y, r0.w
add r5.xyzw, -r6.xyzw, r5.xyzw
mad r0.xyzw, r0.xxxx, r5.xyzw, r6.xyzw
movc r1.x, v7.x, l(1.000000), l(-1.000000)
dp3 r1.y, v4.xyzx, v4.xyzx
rsq r1.y, r1.y
mul r5.xyz, r1.yyyy, v4.xyzx
mul r5.xyz, r1.xxxx, r5.xyzx
dp3 r1.z, v5.xyzx, v5.xyzx
rsq r1.z, r1.z
mul r6.xyz, r1.zzzz, v5.xyzx
mul r6.xyz, r1.xxxx, r6.xyzx
dp3 r1.z, v6.xyzx, v6.xyzx
rsq r1.z, r1.z
mul r7.xyz, r1.zzzz, v6.xyzx
mul r7.xyz, r1.xxxx, r7.xyzx
mul r1.x, r2.z, l(-17.000000)
exp r1.x, r1.x
add r0.w, r0.w, r1.x
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r2.xzw, r0.yyyy, r7.xxyz
mad r2.xzw, r6.xxyz, r0.xxxx, r2.xxzw
mad r0.xyz, r5.xyzx, r0.zzzz, r2.xzwx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul r0.xyz, r0.xyzx, r1.xxxx
mad r1.x, cb1[62].x, r1.w, cb0[13].x
mul_sat r1.x, r1.x, l(0.05882353)
lt r1.z, l(0.000000), cb1[64].w
if_nz r1.z
  ftoi r1.z, cb1[64].w
  lod r1.w, v2.xyxx, t7.y, s2
  lod r2.x, v2.xyxx, t7.x, s2
  lt r1.w, r1.w, r2.x
  lt r2.x, l(0.000000), r2.x
  and r5.xyz, r1.zzzz, l(1, 2, 4, 0)
  movc r6.xyz, r5.xxxx, l(1.000000,0,1.000000,0), r3.xyzx
  movc r5.xyw, r5.yyyy, l(0,1.000000,0,1.000000), r3.xyxz
  movc r2.xzw, r2.xxxx, r6.xxyz, r5.xxyw
  movc r5.xyz, r5.zzzz, l(0,1.000000,0,0), r3.xyzx
  movc r3.xyz, r1.wwww, r2.xzwx, r5.xyzx
endif 
add r2.xzw, -r3.xxyz, cb1[58].xxyz
mad r2.xzw, cb1[58].wwww, r2.xxzw, r3.xxyz
add r1.z, -r2.y, cb1[59].x
mad r1.z, cb1[59].w, r1.z, r2.y
add r3.xyz, -r4.xyzx, cb1[61].xyzx
mad r3.xyz, cb1[61].wwww, r3.xyzx, r4.xyzx
add r1.x, -r0.w, r1.x
mad r0.w, cb1[62].w, r1.x, r0.w
add r1.x, -r3.w, cb1[63].x
mad r4.z, cb1[63].w, r1.x, r3.w
mad r1.xyw, v4.xyxz, r1.yyyy, -r0.xyxz
mad r0.xyz, cb1[60].wwww, r1.xywx, r0.xyzx
mul o0.xyz, r1.zzzz, r2.xzwx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r2.xyzw, t0.zwxy
lt r1.w, l(0.000000), r1.x
mad r1.y, r1.y, l(3.000000), l(0.500000)
ftou r1.y, r1.y
and r5.xyzw, r1.yyyy, l(2, 1, 2, 1)
movc r5.xyzw, r5.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r1.y, r5.w, r5.z
movc r5.z, r1.y, l(-0.57735026), l(0.57735026)
mul r2.zw, r5.xxxz, l(0.000000, 0.000000, -1.22474492, 1.22474492)
mul r6.xyz, r5.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r6.x, r0.xyzx, r6.xyzx
dp2 r6.y, r0.xzxx, r2.zwzz
dp3 r0.x, r0.xyzx, r5.xyzx
add r0.x, |r0.x|, l(1.000000)
rsq r0.x, r0.x
mul r0.xy, r0.xxxx, r6.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r1.x, r1.x, l(0.500000)
movc r1.x, r1.x, l(0.500000), l(0.00146628)
mad r0.z, r0.w, l(0.49755621), r1.x
and r0.xyz, r0.xyzx, r1.wwww
mul o1.xyz, r1.zzzz, r0.xyzx
add r0.y, -r3.z, r3.x
mad r0.w, r0.y, l(0.500000), r3.z
add r0.z, -r0.w, r3.y
mad r0.x, r0.z, l(0.500000), r0.w
and r1.xy, r2.xyxx, l(1, 1, 0, 0)
ieq r0.w, r1.y, r1.x
movc r0.xy, r0.wwww, r0.xyxx, r0.xzxx
mad r4.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov r4.w, l(1.000000)
mul o2.xyzw, r1.zzzz, r4.xyzw
mov o0.w, r1.z
mov o1.w, r1.z
ret 
// Approximately 203 instruction slots used