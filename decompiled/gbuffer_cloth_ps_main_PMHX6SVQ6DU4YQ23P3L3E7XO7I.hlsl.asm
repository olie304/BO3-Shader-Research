//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:59 2021
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
// COLOR                    1   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
// TEXCOORD                 2   xyz         3     NONE   float   xyz 
// TEXCOORD                 3   xyz         4     NONE   float   xyz 
// TEXCOORD                 7   xyzw        5     NONE   float   xy w
// OFFPOSITION              0   xyz         6     NONE   float   xyz 
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
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyw
dcl_input_ps linear v6.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 9
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.yzyy, t0.xyzw, s1
mul r0.w, r0.w, v1.x
lt r1.x, r0.w, l(0.500000)
discard_nz r1.x
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.yzyy, t6.xyzw, s2
add r1.yzw, cb0[10].xxyz, l(0.000000, -0.040000, -0.040000, -0.040000)
mad r1.yzw, r1.xxxx, r1.yyzw, l(0.000000, 0.040000, 0.040000, 0.040000)
add_sat r1.x, -r1.x, l(1.000000)
mul r0.xyz, r0.xyzx, r1.xxxx
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.yzyy, t10.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r2.x, v1.yzyy, t9.xyzw, s2
add r2.y, -cb0[11].x, cb0[11].y
mad r2.x, r2.x, r2.y, cb0[11].x
mul_sat r2.x, r2.x, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.yzw, v1.yzyy, t7.wxyz, s3
add r2.yzw, r2.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r2.yzw, cb0[10].wwww, r2.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r2.yz, r2.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
dp2 r3.x, r2.yzyy, r2.yzyy
add r3.x, -r3.x, l(1.000000)
max r3.x, r3.x, l(0.000000)
sqrt r3.z, r3.x
mul r2.w, r2.w, r2.w
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, v1.yzyy, t16.xyzw, s5
lt r3.w, l(0.000000), r4.x
mul r5.xy, v1.yzyy, cb0[7].xyxx
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t11.xyzw, s3
mul r6.xy, v1.yzyy, cb0[6].xyxx
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t12.xyzw, s3
mul r7.xy, v1.yzyy, cb0[5].xyxx
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r7.xyxx, t14.xyzw, s3
mul r8.xy, v1.yzyy, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r8.xyz, r8.xyxx, t15.xyzw, s3
if_nz r3.w
  mul r3.w, r4.x, cb0[12].y
  mov r8.xyz, r5.xyzx
else 
  lt r4.x, l(0.000000), r4.y
  if_nz r4.x
    mul r3.w, r4.y, cb0[12].x
    mov r8.xyz, r6.xyzx
  else 
    lt r4.x, l(0.000000), r4.z
    if_nz r4.x
      mul r3.w, r4.z, cb0[11].w
      mov r8.xyz, r7.xyzx
    else 
      lt r4.x, l(0.000000), r4.w
      if_nz r4.x
        mul r3.w, r4.w, cb0[11].z
      else 
        mov r8.xyz, l(0,0,0,0)
        mov r3.w, l(0)
      endif 
    endif 
  endif 
endif 
mad r4.xy, r8.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r4.z, r8.z, r8.z
mul r4.z, r4.z, l(0.33333334)
min r4.z, r4.z, l(1.000000)
mad r3.xy, r4.xyxx, r3.wwww, r2.yzyy
dp3 r2.y, r3.xyzx, r3.xyzx
rsq r2.y, r2.y
mul r3.xyz, r2.yyyy, r3.xyzx
mad r2.y, r4.z, r3.w, r2.w
movc r2.z, v7.x, l(1.000000), l(-1.000000)
dp3 r2.w, v2.xyzx, v2.xyzx
rsq r2.w, r2.w
mul r4.xyz, r2.wwww, v2.xyzx
mul r5.xyz, r2.zzzz, r4.xyzx
dp3 r2.w, v3.xyzx, v3.xyzx
rsq r2.w, r2.w
mul r6.xyz, r2.wwww, v3.xyzx
mul r6.xyz, r2.zzzz, r6.xyzx
dp3 r2.w, v4.xyzx, v4.xyzx
rsq r2.w, r2.w
mul r7.xyz, r2.wwww, v4.xyzx
mul r7.xyz, r2.zzzz, r7.xyzx
mul r2.x, r2.x, l(-17.000000)
exp r2.x, r2.x
add r2.x, r2.x, r2.y
log r2.x, r2.x
mul_sat r2.x, r2.x, l(-0.05882353)
mul r7.xyz, r3.yyyy, r7.xyzx
mad r3.xyw, r6.xyxz, r3.xxxx, r7.xyxz
mad r3.xyz, r5.xyzx, r3.zzzz, r3.xywx
dp3 r2.y, r3.xyzx, r3.xyzx
rsq r2.y, r2.y
mul r3.yzw, r2.yyyy, r3.xxyz
mul r2.yw, v1.yyyz, cb0[13].xxxy
sample_indexable(texture2d)(float,float,float,float) r2.yw, r2.ywyy, t18.zxwy, s7
add r6.xyz, cb1[42].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r2.yyyy, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r7.xyz, -r6.xyzx, cb1[43].xyzx
mad r6.xyz, r2.wwww, r7.xyzx, r6.xyzx
mov_sat r0.w, r0.w
add r6.xyz, r6.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r0.wwww, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r7.xyz, r0.xyzx, r6.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t17.yzwx, s6
mul r2.y, r0.w, cb0[12].z
lt r2.y, l(0.000000), r2.y
mul r2.w, r2.x, l(17.000000)
exp r2.w, r2.w
add r2.w, r2.w, l(2.000000)
div r2.w, l(2.000000), r2.w
sqrt r2.w, r2.w
dp3 r4.w, -v6.xyzx, -v6.xyzx
rsq r4.w, r4.w
mul r8.xyz, r4.wwww, -v6.xyzx
dp3_sat r4.w, r3.yzwy, r8.xyzx
add r4.w, -r4.w, l(1.000000)
div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w
log r4.w, r4.w
mul r2.w, r2.w, r4.w
exp r2.w, r2.w
mad_sat r0.w, -r0.w, cb0[12].z, l(1.000000)
add r0.w, r2.w, r0.w
min r0.w, r0.w, l(1.000000)
mad r0.xyz, r0.xyzx, r6.xyzx, -r1.yzwy
mad r0.xyz, r2.wwww, r0.xyzx, r1.yzwy
mul r6.xyz, r0.wwww, r7.xyzx
movc o0.xyz, r2.yyyy, r6.xyzx, r7.xyzx
movc r0.xyz, r2.yyyy, r0.xyzx, r1.yzwy
div r1.yz, v5.xxyx, v5.wwww
mul r2.yw, cb1[44].xxxy, l(0.000000, 0.500000, 0.000000, 0.500000)
mul r6.x, r1.y, r2.y
mul r6.y, r1.z, -r2.w
mad r1.yz, cb1[44].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000), r6.xxyx
add r1.yz, -r1.yyzy, v0.xxyx
add r0.w, r5.y, r5.x
mad r0.w, r4.z, r2.z, r0.w
mul r0.w, r0.w, l(0.500000)
mad r2.yzw, r4.xxyz, r2.zzzz, -r0.wwww
max r1.w, r2.w, r2.z
max r1.w, r1.w, r2.y
max r0.w, r0.w, r1.w
eq r1.w, r0.w, r2.y
mul r4.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r2.y, r0.w, l(2.000000)
mov r4.x, l(1)
mov r3.x, l(0)
movc r3.xyzw, r1.wwww, r4.xyzw, r3.xyzw
movc r0.w, r1.w, r2.y, r0.w
eq r1.w, r0.w, r2.z
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.y, r0.w, l(2.000000)
mov r4.x, l(2)
movc r3.xyzw, r1.wwww, r4.xyzw, r3.xyzw
movc r0.w, r1.w, r2.y, r0.w
eq r0.w, r0.w, r2.w
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r4.x, l(3)
movc r3.xyzw, r0.wwww, r4.xyzw, r3.xyzw
add r0.w, r3.z, r3.y
add r4.z, r3.w, r0.w
add r4.y, -r3.y, r3.w
mad r4.x, -r3.z, l(3.000000), r4.z
mul r2.yzw, r4.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.w, |r2.w|, l(1.000000)
rsq r0.w, r0.w
mul r2.yz, r0.wwww, r2.yyzy
mad o1.xy, r2.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r2.x, l(0.49755621), l(0.00146628)
utof r0.w, r3.x
mul o1.w, r0.w, l(0.33333334)
ftou r2.xy, v0.xyxx
add r3.y, -r0.z, r0.x
mad r0.x, r3.y, l(0.500000), r0.z
add r3.z, -r0.x, r0.y
mad r3.x, r3.z, l(0.500000), r0.x
and r0.xy, r2.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r3.xyxx, r3.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r0.xy, |r1.yzyy|, l(-10.000000, -10.000000, 0.000000, 0.000000)
mul_sat r0.xy, r0.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
mul r0.zw, |r1.yyyz|, l(0.000000, 0.000000, 0.100000, 0.100000)
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
add r0.zw, -r0.xxxy, r0.zzzw
mad r0.xy, r0.zwzz, l(0.500000, 0.500000, 0.000000, 0.000000), r0.xyxx
ge r0.zw, r1.yyyz, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r0.zwzz, r0.xyxx, -r0.xyxx
mov o0.w, l(1.000000)
mov o2.z, r1.x
mov o2.w, l(0.33333334)
ret 
// Approximately 190 instruction slots used
