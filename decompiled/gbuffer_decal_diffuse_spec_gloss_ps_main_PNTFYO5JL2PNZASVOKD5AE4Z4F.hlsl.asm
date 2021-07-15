//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:28 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4
//   float alphaRevealRamp;             // Offset:  164 Size:     4
//   float2 revealScale;                // Offset:  168 Size:     8
//   float3 colorTint;                  // Offset:  176 Size:    12
//   float3 specColorTint;              // Offset:  192 Size:    12
//   float baseNormalHeight;            // Offset:  204 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  208 Size:     8
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
// revealSampler                     sampler      NA          NA             s1      1 
// colorSampler                      sampler      NA          NA             s2      1 
// specColorSampler                  sampler      NA          NA             s3      1 
// floatZSampler                     texture  float4          2d             t0      1 
// resolvedNormal                    texture  float4          2d             t6      1 
// revealMap                         texture  float4          2d             t7      1 
// colorMap                          texture  float4          2d             t9      1 
// tintMask                          texture  float4          2d            t10      1 
// specColorMap                      texture  float4          2d            t11      1 
// glossMap                          texture  float4          2d            t12      1 
// volDecalRevealTexture             texture   float          2d            t14      1 
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
// TEXCOORD                 6   xyz         6     NONE   float       
// TEXCOORD                 7   xyz         7     NONE   float       
// TEXCOORD                 8   xyzw        8     NONE   float   xyz 
// TEXCOORD                 9   xyz         9     NONE   float   xyz 
// TEXCOORD                10   xyzw       10     NONE   float   xyzw
// TEXCOORD                11   xyzw       11     NONE   float   xyzw
// TEXCOORD                12   xyzw       12     NONE   float   xyzw
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
dcl_constantbuffer CB0[14], immediateIndexed
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps constant v1.xyz
dcl_input_ps constant v2.xyz
dcl_input_ps constant v3.xyz
dcl_input_ps constant v4.xyz
dcl_input_ps constant v5.xyz
dcl_input_ps constant v5.w
dcl_input_ps constant v8.xyz
dcl_input_ps constant v9.xyz
dcl_input_ps constant v10.xyzw
dcl_input_ps constant v11.xyzw
dcl_input_ps constant v12.xyzw
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 5
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
if_nz v5.w
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
mad r0.yz, r1.yyzy, l(0.000000, 0.500000, -0.500000, 0.000000), l(0.000000, 0.500000, 0.500000, 0.000000)
mad r1.xy, r0.yzyy, v10.zwzz, v10.xyxx
max r1.xy, r1.xyxx, v11.xyxx
min r1.xy, r1.xyxx, v11.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t14.yzwx, s2
mul r0.x, r0.x, r0.w
mad r0.yz, r0.yyzy, v12.zzwz, v12.xxyx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.yzyy, t9.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r0.w, r0.yzyy, t10.yzwx, s2
add r2.xyz, cb0[11].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r2.xyz, r0.wwww, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.xyz, r1.xyzx, r2.xyzx
mul r1.xyz, r1.xyzx, v8.xyzx
mul r2.xy, r0.yzyy, cb0[10].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r2.xyxx, t7.yzwx, s1
mad_sat r0.x, r0.x, l(0.998000), l(0.001000)
add r1.w, -r0.x, l(1.000000)
mov_sat r2.x, cb0[10].y
log r0.x, r0.x
mul r0.x, r0.x, r2.x
exp r0.x, r0.x
mov r3.x, -r0.x
log r0.x, r1.w
mul r0.x, r0.x, r2.x
exp r3.y, r0.x
mad_sat r2.xy, cb0[10].xxxx, r3.xyxx, r1.wwww
add r0.x, r0.w, -r2.x
add r0.w, -r2.x, r2.y
div_sat r0.x, r0.x, r0.w
sample_indexable(texture2d)(float,float,float,float) r0.w, r0.yzyy, t11.yzwx, s3
add r2.xyz, cb0[12].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r2.xyz, r0.wwww, r2.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add_sat r0.w, -r0.w, l(1.000000)
mul r1.xyz, r0.wwww, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t12.yxzw, s3
add r0.z, -cb0[13].x, cb0[13].y
mad r0.y, r0.y, r0.z, cb0[13].x
mul_sat r0.y, r0.y, l(0.05882353)
mul o0.xyz, r0.xxxx, r1.xyzx
ftou r1.xy, v0.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.z, r1.xyzw, t6.xyzw
lt r0.w, l(0.000000), r0.z
ge r0.z, r0.z, l(0.500000)
movc r0.z, r0.z, l(0.500000), l(0.00146628)
mad r3.z, r0.y, l(0.49755621), r0.z
mov r3.xy, l(0.500000,0.500000,0,0)
and r0.yzw, r0.wwww, r3.xxyz
mul o1.xyz, r0.xxxx, r0.yzwy
add r3.y, -r2.z, r2.x
mad r0.y, r3.y, l(0.500000), r2.z
add r3.z, -r0.y, r2.y
mad r3.x, r3.z, l(0.500000), r0.y
and r0.yz, r1.xxyx, l(0, 1, 1, 0)
ieq r0.y, r0.z, r0.y
movc r0.yz, r0.yyyy, r3.xxyx, r3.xxzx
mad r1.xy, r0.yzyy, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov r1.zw, l(0,0,0,1.000000)
mul o2.xyzw, r0.xxxx, r1.xyzw
mov o0.w, r0.x
mov o1.w, r0.x
ret 
// Approximately 139 instruction slots used
