//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:56 2021
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
//   float4 detailScale1;               // Offset:   80 Size:    16
//   float4 detailScale2;               // Offset:   96 Size:    16
//   float4 detailScale3;               // Offset:  112 Size:    16
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 specColorTint;              // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float detailScaleHeight;           // Offset:  184 Size:     4
//   float detailScaleHeight1;          // Offset:  188 Size:     4
//   float detailScaleHeight2;          // Offset:  192 Size:     4
//   float detailScaleHeight3;          // Offset:  196 Size:     4
//   float waterRefractionAmount;       // Offset:  200 Size:     4
//   float2 tintScale;                  // Offset:  208 Size:     8
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
//   float3 clothPrimaryTint;           // Offset:  672 Size:    12
//   float3 clothSecondaryTint;         // Offset:  688 Size:    12
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
// detailMaskSampler                 sampler      NA          NA             s5      1 
// velveteenSampler                  sampler      NA          NA             s6      1 
// tintBlendSampler                  sampler      NA          NA             s7      1 
// colorMap                          texture  float4          2d             t0      1 
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailNormal1                     texture  float4          2d            t11      1 
// detailNormal2                     texture  float4          2d            t12      1 
// detailNormal3                     texture  float4          2d            t14      1 
// detailNormal4                     texture  float4          2d            t15      1 
// detailNormalMask                  texture  float4          2d            t16      1 
// velveteenMask                     texture  float4          2d            t17      1 
// tintBlendMask                     texture  float4          2d            t18      1 
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
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 7   xyzw        6     NONE   float   xy w
// OFFPOSITION              0   xyz         7     NONE   float   xyz 
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
dcl_constantbuffer CB0[14], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
dcl_sampler s7, mode_default
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyw
dcl_input_ps linear v7.xyz
dcl_input_ps_sgv constant v8.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 10
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
mul r1.xyzw, r0.xyzw, v1.xyzw
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t6.xyzw, s2
add r2.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r2.xyz, r0.xxxx, r2.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add_sat r0.x, -r0.x, l(1.000000)
mul r0.xyz, r0.xxxx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.x, v2.xyxx, t10.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r1.y, v2.xyxx, t9.yxzw, s2
add r1.z, -cb0[11].x, cb0[11].y
mad r1.y, r1.y, r1.z, cb0[11].x
mul_sat r1.y, r1.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v2.xyxx, t7.xyzw, s3
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r3.xyz, cb0[10].wwww, r3.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r2.w, r3.xyxx, r3.xyxx
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r4.z, r2.w
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, v2.xyxx, t16.xyzw, s5
lt r3.z, l(0.000000), r5.x
mul r6.xy, v2.xyxx, cb0[7].xyxx
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t11.xyzw, s3
mul r7.xy, v2.xyxx, cb0[6].xyxx
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r7.xyxx, t12.xyzw, s3
mul r8.xy, v2.xyxx, cb0[5].xyxx
sample_indexable(texture2d)(float,float,float,float) r8.xyz, r8.xyxx, t14.xyzw, s3
mul r9.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r9.xyz, r9.xyxx, t15.xyzw, s3
if_nz r3.z
  mul r3.z, r5.x, cb0[12].y
  mov r9.xyz, r6.xyzx
else 
  lt r3.w, l(0.000000), r5.y
  if_nz r3.w
    mul r3.z, r5.y, cb0[12].x
    mov r9.xyz, r7.xyzx
  else 
    lt r3.w, l(0.000000), r5.z
    if_nz r3.w
      mul r3.z, r5.z, cb0[11].w
      mov r9.xyz, r8.xyzx
    else 
      lt r3.w, l(0.000000), r5.w
      if_nz r3.w
        mul r3.z, r5.w, cb0[11].z
      else 
        mov r9.xyz, l(0,0,0,0)
        mov r3.z, l(0)
      endif 
    endif 
  endif 
endif 
mad r5.xy, r9.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r3.w, r9.z, r9.z
mul r3.w, r3.w, l(0.33333334)
min r3.w, r3.w, l(1.000000)
mad r4.xy, r5.xyxx, r3.zzzz, r3.xyxx
dp3 r3.x, r4.xyzx, r4.xyzx
rsq r3.x, r3.x
mul r4.xyz, r3.xxxx, r4.xyzx
mad r2.w, r3.w, r3.z, r2.w
movc r3.x, v8.x, l(1.000000), l(-1.000000)
dp3 r3.y, v3.xyzx, v3.xyzx
rsq r3.y, r3.y
mul r3.yzw, r3.yyyy, v3.xxyz
mul r5.xyz, r3.xxxx, r3.yzwy
dp3 r4.w, v4.xyzx, v4.xyzx
rsq r4.w, r4.w
mul r6.xyz, r4.wwww, v4.xyzx
mul r6.xyz, r3.xxxx, r6.xyzx
dp3 r4.w, v5.xyzx, v5.xyzx
rsq r4.w, r4.w
mul r7.xyz, r4.wwww, v5.xyzx
mul r7.xyz, r3.xxxx, r7.xyzx
mul r1.y, r1.y, l(-17.000000)
exp r1.y, r1.y
add r1.y, r1.y, r2.w
log r1.y, r1.y
mul r7.xyz, r4.yyyy, r7.xyzx
mad r4.xyw, r6.xyxz, r4.xxxx, r7.xyxz
mad r4.xyz, r5.xyzx, r4.zzzz, r4.xywx
dp3 r4.w, r4.xyzx, r4.xyzx
rsq r4.w, r4.w
mul r4.xyz, r4.wwww, r4.xyzx
mad r1.z, cb1[62].x, r1.z, cb0[11].x
mul_sat r1.yz, r1.yyzy, l(0.000000, -0.05882353, 0.05882353, 0.000000)
mul r1.z, r1.z, l(-17.000000)
exp r1.z, r1.z
add r1.z, r1.z, r2.w
log r1.z, r1.z
mul_sat r1.z, r1.z, l(-0.05882353)
lt r2.w, l(0.000000), cb1[64].w
if_nz r2.w
  ftoi r2.w, cb1[64].w
  lod r4.w, v2.xyxx, t0.y, s1
  lod r5.z, v2.xyxx, t0.x, s1
  lt r4.w, r4.w, r5.z
  lt r5.z, l(0.000000), r5.z
  and r6.xyz, r2.wwww, l(1, 2, 4, 0)
  movc r7.xyz, r6.xxxx, l(1.000000,0,1.000000,0), r0.xyzx
  movc r6.xyw, r6.yyyy, l(0,1.000000,0,1.000000), r0.xyxz
  movc r6.xyw, r5.zzzz, r7.xyxz, r6.xyxw
  movc r7.xyz, r6.zzzz, l(0,1.000000,0,0), r0.xyzx
  movc r0.xyz, r4.wwww, r6.xywx, r7.xyzx
endif 
add r6.xyz, -r0.xyzx, cb1[58].xyzx
mad r0.xyz, cb1[58].wwww, r6.xyzx, r0.xyzx
mad r0.w, -r0.w, v1.w, cb1[59].x
mad_sat r0.w, cb1[59].w, r0.w, r1.w
add r6.xyz, -r2.xyzx, cb1[61].xyzx
mad r2.xyz, cb1[61].wwww, r6.xyzx, r2.xyzx
add r1.z, -r1.y, r1.z
mad r1.y, cb1[62].w, r1.z, r1.y
add r1.z, -r1.x, cb1[63].x
mad o2.z, cb1[63].w, r1.z, r1.x
movc r1.xzw, v8.xxxx, v3.xxyz, -v3.xxyz
dp3 r2.w, r1.xzwx, r1.xzwx
rsq r2.w, r2.w
mad r1.xzw, r1.xxzw, r2.wwww, -r4.xxyz
mad r4.yzw, cb1[60].wwww, r1.xxzw, r4.xxyz
mul r1.xz, v2.xxyx, cb0[13].xxyx
sample_indexable(texture2d)(float,float,float,float) r1.xz, r1.xzxx, t18.xzyw, s7
add r6.xyz, cb1[42].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r1.xxxx, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r7.xyz, -r6.xyzx, cb1[43].xyzx
mad r1.xzw, r1.zzzz, r7.xxyz, r6.xxyz
add r1.xzw, r1.xxzw, l(-1.000000, 0.000000, -1.000000, -1.000000)
mad r1.xzw, r0.wwww, r1.xxzw, l(1.000000, 0.000000, 1.000000, 1.000000)
mul r6.xyz, r0.xyzx, r1.xzwx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t17.yzwx, s6
mul r2.w, r0.w, cb0[12].z
lt r2.w, l(0.000000), r2.w
mul r5.z, r1.y, l(17.000000)
exp r5.z, r5.z
add r5.z, r5.z, l(2.000000)
div r5.z, l(2.000000), r5.z
sqrt r5.z, r5.z
dp3 r5.w, -v7.xyzx, -v7.xyzx
rsq r5.w, r5.w
mul r7.xyz, r5.wwww, -v7.xyzx
dp3_sat r5.w, r4.yzwy, r7.xyzx
add r5.w, -r5.w, l(1.000000)
max r5.z, r5.z, l(0.000100)
div r5.z, l(1.000000, 1.000000, 1.000000, 1.000000), r5.z
log r5.w, r5.w
mul r5.z, r5.w, r5.z
exp r5.z, r5.z
mad_sat r0.w, -r0.w, cb0[12].z, l(1.000000)
add r0.w, r5.z, r0.w
min r0.w, r0.w, l(1.000000)
mad r0.xyz, r0.xyzx, r1.xzwx, -r2.xyzx
mad r0.xyz, r5.zzzz, r0.xyzx, r2.xyzx
mul r1.xzw, r0.wwww, r6.xxyz
movc o0.xyz, r2.wwww, r1.xzwx, r6.xyzx
movc r0.xyz, r2.wwww, r0.xyzx, r2.xyzx
div r1.xz, v6.xxyx, v6.wwww
mul r2.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r6.x, r1.x, r2.x
mul r6.y, r1.z, -r2.y
mad r1.xz, cb1[44].xxyx, l(0.500000, 0.000000, 0.500000, 0.000000), r6.xxyx
add r1.xz, -r1.xxzx, v0.xxyx
add r0.w, r5.y, r5.x
mad r0.w, r3.w, r3.x, r0.w
mul r0.w, r0.w, l(0.500000)
mad r2.xyz, r3.yzwy, r3.xxxx, -r0.wwww
max r1.w, r2.z, r2.y
max r1.w, r1.w, r2.x
max r0.w, r0.w, r1.w
eq r1.w, r0.w, r2.x
mul r3.yzw, r4.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r2.x, r0.w, l(2.000000)
mov r3.x, l(1)
mov r4.x, l(0)
movc r3.xyzw, r1.wwww, r3.xyzw, r4.xyzw
movc r0.w, r1.w, r2.x, r0.w
eq r1.w, r0.w, r2.y
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.x, r0.w, l(2.000000)
mov r4.x, l(2)
movc r3.xyzw, r1.wwww, r4.xyzw, r3.xyzw
movc r0.w, r1.w, r2.x, r0.w
eq r0.w, r0.w, r2.z
mul r2.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r2.xyzw, r0.wwww, r2.xyzw, r3.xyzw
add r0.w, r2.z, r2.y
add r3.z, r2.w, r0.w
add r3.y, -r2.y, r2.w
mad r3.x, -r2.z, l(3.000000), r3.z
mul r2.yzw, r3.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.w, |r2.w|, l(1.000000)
rsq r0.w, r0.w
mul r2.yz, r0.wwww, r2.yyzy
mad o1.xy, r2.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r1.y, l(0.49755621), l(0.00146628)
utof r0.w, r2.x
mul o1.w, r0.w, l(0.33333334)
ftou r1.yw, v0.xxxy
add r2.y, -r0.z, r0.x
mad r0.x, r2.y, l(0.500000), r0.z
add r2.z, -r0.x, r0.y
mad r2.x, r2.z, l(0.500000), r0.x
and r0.xy, r1.ywyy, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r2.xyxx, r2.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r0.xy, |r1.xzxx|, l(-10.000000, -10.000000, 0.000000, 0.000000)
mul_sat r0.xy, r0.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
mul r0.zw, |r1.xxxz|, l(0.000000, 0.000000, 0.100000, 0.100000)
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
add r0.zw, -r0.xxxy, r0.zzzw
mad r0.xy, r0.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000), r0.xyxx
ge r0.zw, r1.xxxz, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r0.zwzz, r0.xyxx, -r0.xyxx
mov o0.w, l(1.000000)
mov o2.w, l(0.33333334)
ret 
// Approximately 222 instruction slots used
