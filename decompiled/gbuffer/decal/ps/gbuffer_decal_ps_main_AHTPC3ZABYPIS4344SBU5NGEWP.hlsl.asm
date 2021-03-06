//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:59 2021
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
//   float2 rotateUVs;                  // Offset:  176 Size:     8
//   float2 scrollUVs;                  // Offset:  184 Size:     8
//   float2 scaleUVs;                   // Offset:  192 Size:     8
//   float2 offsetUVs;                  // Offset:  200 Size:     8
//   float2 zoomUVs;                    // Offset:  208 Size:     8
//   float zoomRate;                    // Offset:  216 Size:     4
//   float layerDepth;                  // Offset:  220 Size:     4
//   bool clampU;                       // Offset:  224 Size:     4
//   bool clampV;                       // Offset:  228 Size:     4
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
//   float4 gameTime;                   // Offset: 1104 Size:    16
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
// TEXCOORD                13      w        5     NONE    uint      w
// TEXCOORD                 6   xyz         6     NONE   float   xyz 
// TEXCOORD                 0      w        6     NONE   float      w
// TEXCOORD                 7   xyz         7     NONE   float   xyz 
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyz         9     NONE   float   xyz 
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
dcl_constantbuffer CB0[15], immediateIndexed
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
dcl_input_ps constant v5.w
dcl_input_ps constant v6.xyz
dcl_input_ps constant v6.w
dcl_input_ps constant v7.xyz
dcl_input_ps constant v8.xyzw
dcl_input_ps constant v9.xyz
dcl_input_ps constant v10.xyzw
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 7
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.x, r0.xyzw, t0.xyzw
ge r0.y, r0.x, l(0.984375)
discard_nz r0.y
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
mul r1.xyz, r0.yyyy, cb1[17].xyzx
mad r0.xyw, r0.xxxx, cb1[16].xyxz, r1.xyxz
mad r0.xyz, r0.zzzz, cb1[18].xyzx, r0.xywx
add r1.xyz, r0.xyzx, cb1[24].xyzx
mul r2.xyz, r1.yyyy, v2.xyzx
mad r1.xyw, r1.xxxx, v1.xyxz, r2.xyxz
mad r1.xyz, r1.zzzz, v3.xyzx, r1.xywx
add r1.xyz, r1.xyzx, v4.xyzx
add r2.xyz, -|r1.xyzx|, l(1.000000, 1.000000, 1.000000, 0.000000)
lt r2.xyz, r2.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
or r0.w, r2.y, r2.x
or r0.w, r2.z, r0.w
discard_nz r0.w
if_nz v5.w
  deriv_rty_coarse r2.xyz, r0.zxyz
  deriv_rtx_coarse r3.xyz, r0.yzxy
  mul r4.xyz, r2.xyzx, r3.xyzx
  mad r2.xyz, r2.zxyz, r3.yzxy, -r4.xyzx
  dp3 r0.w, r2.xyzx, r2.xyzx
  rsq r0.w, r0.w
  mul r2.xyz, r0.wwww, r2.xyzx
  dp3 r0.w, r2.xyzx, v5.xyzx
  add r0.w, r0.w, l(-0.500000)
  lt r0.w, r0.w, l(0.000000)
  discard_nz r0.w
else 
  ftou r2.xy, v0.xyxx
  mov r2.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyzw, t6.xywz
  mad r0.w, r2.z, l(3.000000), l(0.500000)
  ftou r0.w, r0.w
  mad r2.xy, r2.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  mul r2.xy, r2.xyxx, l(0.850000, 0.850000, 0.000000, 0.000000)
  dp2 r1.w, r2.xyxx, r2.xyxx
  add r3.zw, -r1.wwww, l(0.000000, 0.000000, 2.000000, 1.000000)
  sqrt r1.w, r3.z
  mul r3.xy, r1.wwww, r2.xyxx
  and r2.xyzw, r0.wwww, l(2, 1, 2, 1)
  movc r2.xyzw, r2.zwxy, l(-1.000000,-1.000000,1,1), l(1.000000,1.000000,0,0)
  xor r0.w, r2.w, r2.z
  movc r2.z, r0.w, l(-1.000000), l(1.000000)
  mul r4.xyz, r2.xyzx, l(-1.000000, 0.000000, 1.000000, 0.000000)
  mul r5.xyz, r2.xyzx, l(1.000000, -2.000000, 1.000000, 0.000000)
  mul r3.xyz, r3.xywx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
  mul r4.xyz, r3.yyyy, r4.xyzx
  mad r3.xyw, r5.xyxz, r3.xxxx, r4.xyxz
  mad r2.xyz, r2.xyzx, r3.zzzz, r3.xywx
  dp3 r0.w, r2.xyzx, v5.xyzx
  add r0.w, r0.w, l(-0.500000)
  lt r0.w, r0.w, l(0.000000)
  discard_nz r0.w
endif 
add r2.xyz, -v9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r3.xyz, |r1.xyzx|, -v9.xyzx
div r2.xyz, l(1.000000, 1.000000, 1.000000, 1.000000), r2.xyzx
mul_sat r2.xyz, r2.xyzx, r3.xyzx
mad r3.xyz, r2.xyzx, l(-2.000000, -2.000000, -2.000000, 0.000000), l(3.000000, 3.000000, 3.000000, 0.000000)
mul r2.xyz, r2.xyzx, r2.xyzx
mad r2.xyz, -r3.xyzx, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
min r0.w, r2.y, r2.x
min r0.w, r2.z, r0.w
mul r1.x, r0.w, v8.w
mad r1.yz, r1.yyzy, l(0.000000, 0.500000, -0.500000, 0.000000), l(0.000000, 0.500000, 0.500000, 0.000000)
mad r1.yz, r1.yyzy, v10.zzwz, v10.xxyx
dp3 r1.w, -r0.xyzx, -r0.xyzx
rsq r1.w, r1.w
mul r0.xyz, -r0.xyzx, r1.wwww
dp3 r2.x, r0.xyzx, v6.xyzx
dp3 r2.y, r0.xyzx, v7.xyzx
dp3 r0.x, r0.xyzx, v5.xyzx
lt r0.y, l(0.000000), r0.x
div r0.xz, -r2.xxyx, r0.xxxx
and r0.xy, r0.xzxx, r0.yyyy
add r1.yz, r1.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
add r0.z, cb0[13].w, l(0.000010)
mul r0.xy, r0.zzzz, r0.xyxx
mul r0.xy, r0.xyxx, cb0[12].xyxx
mad r0.xy, r1.yzyy, cb0[12].xyxx, r0.xyxx
mad r0.xy, cb0[12].zwzz, cb0[12].xyxx, r0.xyxx
mul r1.yz, cb0[11].zzwz, cb1[69].wwww
mad r0.z, cb0[11].y, cb1[69].w, l(1.000000)
mul r0.z, r0.z, cb0[11].x
mul r0.z, r0.z, l(0.01745329)
sincos r2.x, r3.x, r0.z
mov r3.y, r3.x
mov r3.z, r2.x
dp2 r4.x, r3.yzyy, r0.xyxx
mov r3.x, -r2.x
dp2 r4.y, r3.xyxx, r0.xyxx
mad r0.xy, r1.yzyy, cb0[12].xyxx, r4.xyxx
mul r0.z, cb0[13].z, cb1[69].w
sincos null, r0.z, r0.z
mad r0.z, r0.z, l(0.500000), l(0.500000)
add r0.z, -r0.z, l(1.000000)
add r1.y, -cb0[13].x, cb0[13].y
mad r0.z, r0.z, r1.y, cb0[13].x
div r0.xy, r0.xyxx, r0.zzzz
add r0.xy, r0.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mov_sat r1.yz, r0.xxyx
movc r0.xy, cb0[14].xyxx, r1.yzyy, r0.xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t7.xyzw, s1
mul r1.yzw, r2.xxyz, v8.xxyz
mul r0.z, r1.x, r2.w
sample_indexable(texture2d)(float,float,float,float) r2.z, r0.xyxx, t11.yzxw, s4
sample_indexable(texture2d)(float,float,float,float) r3.x, r0.xyxx, t10.xyzw, s2
add r3.y, -cb0[10].y, cb0[10].z
mad r3.x, r3.x, r3.y, cb0[10].y
mul_sat r3.x, r3.x, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r3.yzw, r0.xyxx, t9.wxyz, s3
add r3.yzw, r3.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r3.yzw, cb0[10].xxxx, r3.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r0.xy, r3.yzyy, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r3.y, r0.xyxx, r0.xyxx
add r3.y, -r3.y, l(1.000000)
max r3.y, r3.y, l(0.000000)
sqrt r3.y, r3.y
mul r3.z, r3.w, r3.w
mul r3.z, r3.z, l(0.33333334)
min r3.z, r3.z, l(1.000000)
dp3 r3.w, v5.xyzx, v5.xyzx
rsq r3.w, r3.w
mul r4.xyz, r3.wwww, v5.xyzx
dp3 r3.w, v6.xyzx, v6.xyzx
rsq r3.w, r3.w
mul r5.xyz, r3.wwww, v6.xyzx
dp3 r3.w, v7.xyzx, v7.xyzx
rsq r3.w, r3.w
mul r6.xyz, r3.wwww, v7.xyzx
mul r3.x, r3.x, l(-17.000000)
exp r3.x, r3.x
add r3.x, r3.x, r3.z
log r3.x, r3.x
mul r3.x, r3.x, l(-0.05882353)
max r3.x, r3.x, l(0.000000)
mul r6.xyz, r0.yyyy, r6.xyzx
mad r5.xyz, r5.xyzx, r0.xxxx, r6.xyzx
mad r3.yzw, r4.xxyz, r3.yyyy, r5.xxyz
dp3 r0.x, r3.yzwy, r3.yzwy
rsq r0.x, r0.x
mul r3.yzw, r0.xxxx, r3.yyzw
ne r0.x, v6.w, l(1.000000)
max r0.y, r1.x, l(0.001000)
div r0.y, r0.z, r0.y
mad r0.y, v8.w, r0.w, r0.y
mad_sat r0.y, r0.y, v6.w, -v6.w
movc r0.x, r0.x, r0.y, r0.z
mul o0.xyz, r0.xxxx, r1.yzwy
ftou r1.xy, v0.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.yz, r1.xyzw, t6.xzwy
lt r0.w, l(0.000000), r0.y
mad r0.z, r0.z, l(3.000000), l(0.500000)
ftou r0.z, r0.z
and r1.xyzw, r0.zzzz, l(2, 1, 2, 1)
movc r1.xyzw, r1.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.z, r1.w, r1.z
movc r1.z, r0.z, l(-0.57735026), l(0.57735026)
mul r4.xy, r1.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
mul r5.xyz, r1.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r5.x, r3.yzwy, r5.xyzx
dp2 r5.y, r3.ywyy, r4.xyxx
dp3 r0.z, r3.yzwy, r1.xyzx
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r1.xy, r0.zzzz, r5.xyxx
mad r1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.y, r0.y, l(0.500000)
movc r0.y, r0.y, l(0.500000), l(0.00146628)
mad r1.z, r3.x, l(0.49755621), r0.y
and r0.yzw, r0.wwww, r1.xxyz
mul o1.xyz, r0.xxxx, r0.yzwy
mov r2.xyw, l(0.040000,0.500000,0,1.000000)
mul o2.xyzw, r0.xxxx, r2.xyzw
mov o0.w, r0.x
mov o1.w, r0.x
ret 
// Approximately 193 instruction slots used
