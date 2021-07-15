//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:05 2021
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// aoSampler                         sampler      NA          NA             s4      1 
// floatZSampler                     texture  float4          2d             t0      1 
// resolvedNormal                    texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
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
// TEXCOORD                 6   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyz         7     NONE   float   xyz 
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyz         9     NONE   float   xyz 
// TEXCOORD                12   xyzw       10     NONE   float   xyzw
// TEXCOORD                13   xy         11     NONE    uint   xy  
// TEXCOORD                 0     z        11     NONE   float     z 
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
dcl_constantbuffer CB0[11], immediateIndexed
dcl_constantbuffer CB1[72], immediateIndexed
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps constant v1.xyz
dcl_input_ps constant v2.xyz
dcl_input_ps constant v3.xyz
dcl_input_ps constant v4.xyz
dcl_input_ps constant v5.xyz
dcl_input_ps constant v6.xyz
dcl_input_ps constant v7.xyz
dcl_input_ps constant v8.xyzw
dcl_input_ps constant v9.xyz
dcl_input_ps constant v10.xyzw
dcl_input_ps constant v11.xy
dcl_input_ps constant v11.z
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 11
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
mad r1.xyw, r1.xxxx, v1.xyxz, r2.xyxz
mad r1.xyz, r1.zzzz, v3.xyzx, r1.xywx
add r1.xyz, r1.xyzx, v4.xyzx
add r2.xyz, -|r1.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
lt r2.xyz, r2.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
or r0.w, r2.y, r2.x
or r0.w, r2.z, r0.w
discard_nz r0.w
if_nz v11.x
  deriv_rty_coarse r2.xyz, r0.yzxy
  deriv_rtx_coarse r0.xyz, r0.xyzx
  mul r3.xyz, r0.xyzx, r2.xyzx
  mad r0.xyz, r2.zxyz, r0.yzxy, -r3.xyzx
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
  add r2.zw, -r0.wwww, l(0.000000, 0.000000, 2.000000, 1.000000)
  sqrt r0.w, r2.z
  mul r2.xy, r0.wwww, r0.xyxx
  and r0.xyzw, r0.zzzz, l(2, 1, 2, 1)
  movc r0.xyzw, r0.zwxy, l(-1.000000,-1.000000,1,1), l(1.000000,1.000000,0,0)
  xor r0.w, r0.w, r0.z
  movc r0.z, r0.w, l(-1.000000), l(1.000000)
  mul r3.xyz, r0.xyzx, l(-1.000000, 0.000000, 1.000000, 0.000000)
  mul r4.xyz, r0.xyzx, l(1.000000, -2.000000, 1.000000, 0.000000)
  mul r2.xyz, r2.xywx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
  mul r3.xyz, r2.yyyy, r3.xyzx
  mad r2.xyw, r4.xyxz, r2.xxxx, r3.xyxz
  mad r0.xyz, r0.xyzx, r2.zzzz, r2.xywx
  dp3 r0.x, r0.xyzx, v5.xyzx
  add r0.x, r0.x, l(-0.500000)
  lt r0.x, r0.x, l(0.000000)
  discard_nz r0.x
endif 
add r0.xyz, -v9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r2.xyz, |r1.xyzx|, -v9.xyzx
div r0.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r0.xyzx
mul_sat r0.xyz, r0.xyzx, r2.xyzx
mad r2.xyz, r0.xyzx, l(-2.000000, -2.000000, -2.000000, 0.000000), l(3.000000, 3.000000, 3.000000, 0.000000)
mul r0.xyz, r0.xyzx, r0.xyzx
mad r0.xyz, -r2.xyzx, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
min r0.x, r0.y, r0.x
min r0.x, r0.z, r0.x
mul r0.y, r0.x, v8.w
mad r0.zw, r1.yyyz, l(0.000000, 0.000000, 0.500000, -0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
mad r1.xy, r0.zwzz, v10.zwzz, v10.xyxx
and r0.z, v11.y, l(255)
ushr r2.w, v11.y, l(28)
ubfe r2.xyz, l(8, 4, 8, 0), l(8, 24, 16, 0), v11.yyyy
utof r0.w, r2.z
mul r3.z, r0.w, l(0.00390625)
ishl r4.xy, r2.ywyy, l(23, 23, 0, 0)
iadd r4.xy, -r4.xyxx, l(0x3f800000, 0x3f800000, 0, 0)
ubfe r0.w, r2.y, l(0), r0.z
ubfe r0.z, r2.w, r2.y, r0.z
ubfe r1.w, r2.y, l(0), r2.x
ubfe r2.x, r2.w, r2.y, r2.x
utof r5.xy, r0.wzww
utof r6.x, r1.w
utof r6.y, r2.x
mul r0.zw, r1.xxxy, r4.xxxy
mad r2.xy, r5.xyxx, r4.xyxx, r0.zwzz
mad r3.xy, r6.xyxx, r4.xyxx, r0.zwzz
movc r0.zw, v11.yyyy, r2.xxxy, r1.xxxy
mov r1.z, l(0)
movc r1.xyz, v11.yyyy, r3.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.zwzz, t7.xyzw, s1
mul r2.xyz, r2.xyzx, v8.xyzx
mul r1.w, r0.y, r2.w
sample_indexable(texture2d)(float,float,float,float) r3.x, r0.zwzz, t11.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r2.w, r0.zwzz, t10.yzwx, s2
add r4.x, -cb0[10].y, cb0[10].z
mad r2.w, r2.w, r4.x, cb0[10].y
mul_sat r2.w, r2.w, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r4.yzw, r0.zwzz, t9.wxyz, s3
add r4.yzw, r4.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r4.yzw, cb0[10].xxxx, r4.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r0.zw, r4.yyyz, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r4.y, r0.zwzz, r0.zwzz
add r4.y, -r4.y, l(1.000000)
max r4.y, r4.y, l(0.000000)
sqrt r4.y, r4.y
mul r4.z, r4.w, r4.w
mul r4.z, r4.z, l(0.33333334)
min r4.z, r4.z, l(1.000000)
dp3 r4.w, v5.xyzx, v5.xyzx
rsq r4.w, r4.w
mul r5.xyz, r4.wwww, v5.xyzx
dp3 r4.w, v6.xyzx, v6.xyzx
rsq r4.w, r4.w
mul r6.xyz, r4.wwww, v6.xyzx
dp3 r4.w, v7.xyzx, v7.xyzx
rsq r4.w, r4.w
mul r7.xyz, r4.wwww, v7.xyzx
mul r2.w, r2.w, l(-17.000000)
exp r2.w, r2.w
add r2.w, r2.w, r4.z
log r2.w, r2.w
mul r2.w, r2.w, l(-0.05882353)
max r2.w, r2.w, l(0.000000)
mul r8.xyz, r0.wwww, r7.xyzx
mad r8.xyz, r6.xyzx, r0.zzzz, r8.xyzx
mad r4.yzw, r5.xxyz, r4.yyyy, r8.xxyz
dp3 r0.z, r4.yzwy, r4.yzwy
rsq r0.z, r0.z
mul r4.yzw, r0.zzzz, r4.yyzw
ne r0.z, v11.z, l(1.000000)
max r0.w, r0.y, l(0.001000)
div r5.w, r1.w, r0.w
mad r5.w, v8.w, r0.x, r5.w
mad_sat r5.w, r5.w, v11.z, -v11.z
movc r8.w, r0.z, r5.w, r1.w
ne r1.w, r1.z, l(0.000000)
if_nz r1.w
  sample_indexable(texture2d)(float,float,float,float) r9.xyzw, r1.xyxx, t7.xyzw, s1
  mul r0.y, r0.y, r9.w
  sample_indexable(texture2d)(float,float,float,float) r1.w, r1.xyxx, t11.yzwx, s4
  sample_indexable(texture2d)(float,float,float,float) r5.w, r1.xyxx, t10.yzwx, s2
  mad r4.x, r5.w, r4.x, cb0[10].y
  mul_sat r4.x, r4.x, l(0.05882353)
  sample_indexable(texture2d)(float,float,float,float) r10.xyz, r1.xyxx, t9.xyzw, s3
  add r10.xyz, r10.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
  mad r10.xyz, cb0[10].xxxx, r10.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
  mad r1.xy, r10.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r5.w, r1.xyxx, r1.xyxx
  add r5.w, -r5.w, l(1.000000)
  max r5.w, r5.w, l(0.000000)
  sqrt r5.w, r5.w
  mul r6.w, r10.z, r10.z
  mul r6.w, r6.w, l(0.33333334)
  min r6.w, r6.w, l(1.000000)
  mul r4.x, r4.x, l(-17.000000)
  exp r4.x, r4.x
  add r4.x, r4.x, r6.w
  log r4.x, r4.x
  mul r4.x, r4.x, l(-0.05882353)
  max r4.x, r4.x, l(0.000000)
  mul r7.xyz, r1.yyyy, r7.xyzx
  mad r6.xyz, r6.xyzx, r1.xxxx, r7.xyzx
  mad r5.xyz, r5.xyzx, r5.wwww, r6.xyzx
  dp3 r1.x, r5.xyzx, r5.xyzx
  rsq r1.x, r1.x
  div r0.w, r0.y, r0.w
  mad r0.x, v8.w, r0.x, r0.w
  mad_sat r0.x, r0.x, v11.z, -v11.z
  movc r0.x, r0.z, r0.x, r0.y
  mad r0.yzw, r9.xxyz, v8.xxyz, -r2.xxyz
  mad r2.xyz, r1.zzzz, r0.yzwy, r2.xyzx
  add r0.x, -r8.w, r0.x
  mad r8.w, r1.z, r0.x, r8.w
  mad r0.xyz, r5.xyzx, r1.xxxx, -r4.yzwy
  mad r4.yzw, r1.zzzz, r0.xxyz, r4.yyzw
  add r0.x, -r2.w, r4.x
  mad r2.w, r1.z, r0.x, r2.w
  add r0.x, -r3.x, r1.w
  mad r3.x, r1.z, r0.x, r3.x
endif 
mul r8.xyz, r2.xyzx, r8.wwww
ftou r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyzw, t6.zwxy
lt r0.z, l(0.000000), r0.x
mad r0.y, r0.y, l(3.000000), l(0.500000)
ftou r0.y, r0.y
and r1.xyzw, r0.yyyy, l(2, 1, 2, 1)
movc r1.xyzw, r1.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.y, r1.w, r1.z
movc r1.z, r0.y, l(-0.57735026), l(0.57735026)
mul r0.yw, r1.xxxz, l(0.000000, -1.22474492, 0.000000, 1.22474492)
mul r2.xyz, r1.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r2.x, r4.yzwy, r2.xyzx
dp2 r2.y, r4.ywyy, r0.ywyy
dp3 r0.y, r4.yzwy, r1.xyzx
add r0.y, |r0.y|, l(1.000000)
rsq r0.y, r0.y
mul r0.yw, r0.yyyy, r2.xxxy
mad r1.xy, r0.ywyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.x, r0.x, l(0.500000)
movc r0.x, r0.x, l(0.500000), l(0.00146628)
mad r1.z, r2.w, l(0.49755621), r0.x
and r0.xyz, r0.zzzz, r1.xyzx
mul o1.xyz, r8.wwww, r0.xyzx
mov r3.yzw, l(0,0.040000,0.500000,1.000000)
mul o2.xyzw, r3.yzxw, r8.wwww
mov o0.xyzw, r8.xyzw
mov o1.w, r8.w
ret 
// Approximately 221 instruction slots used
