//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:30:45 2021
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
//   float baseNormalHeight;            // Offset:  160 Size:     4
//   float2 glossRange;                 // Offset:  164 Size:     8
//   float2 mixScale;                   // Offset:  176 Size:     8
//   float detailScaleHeight1;          // Offset:  184 Size:     4
//   float detailScaleHeight2;          // Offset:  188 Size:     4
//   float4 colorTint;                  // Offset:  192 Size:    16
//   float4 colorTint1;                 // Offset:  208 Size:    16
//   float2 glossRange2;                // Offset:  224 Size:     8
//   float rotateUVs1;                  // Offset:  232 Size:     4
//   float rotateUVs2;                  // Offset:  236 Size:     4
//   bool useUVOffsets1;                // Offset:  240 Size:     4
//   bool useUVOffsets2;                // Offset:  244 Size:     4
//   float2 colorMapTile1;              // Offset:  248 Size:     8
//   float2 colorMapTile2;              // Offset:  256 Size:     8
//   float4 levelsControls;             // Offset:  272 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// normalSampler                     sampler      NA          NA             s2      1 
// mixSampler                        sampler      NA          NA             s3      1 
// colorMap                          texture  float4          2d             t0      1 
// normalMap                         texture  float4          2d             t6      1 
// detailMap1                        texture  float4          2d             t7      1 
// detailMap2                        texture  float4          2d             t9      1 
// colorMapDetail2                   texture  float4          2d            t10      1 
// mixMap                            texture  float4          2d            t11      1 
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
// UVOFFSETS                0   xyz         2     NONE   float   xyz 
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
dcl_constantbuffer CB0[18], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 8
mul r0.xy, v1.yzyy, cb0[11].xyxx
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t11.xyzw, s3
eq r1.xyzw, cb0[17].xyzw, l(0.000000, 1.000000, 0.000000, 1.000000)
and r0.y, r1.y, r1.x
and r0.y, r1.z, r0.y
and r0.y, r1.w, r0.y
add_sat r0.z, r0.x, -cb0[17].x
add r1.xy, -cb0[17].xzxx, cb0[17].ywyy
max r0.w, r1.x, l(0.000100)
div r0.z, r0.z, r0.w
min r0.z, r0.z, l(1.000000)
mad r0.z, r0.z, r1.y, cb0[17].z
movc r0.x, r0.y, r0.x, r0.z
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v1.yzyy, t6.wxyz, s2
add r0.yzw, r0.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r0.yzw, cb0[10].xxxx, r0.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mad r0.yz, r0.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
dp2 r1.x, r0.yzyy, r0.yzyy
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.z, r1.x
mul r0.w, r0.w, r0.w
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
sincos r2.x, r3.x, cb0[14].z
mov r4.x, -r2.x
add r2.yz, v1.yyzy, l(0.000000, -0.500000, -0.500000, 0.000000)
mov r4.y, r3.x
mov r4.z, r2.x
dp2 r3.x, r2.yzyy, r4.yzyy
dp2 r3.y, r2.yzyy, r4.xyxx
add r2.xw, r3.xxxy, v2.yyyx
add r1.w, v2.z, l(0.500000)
add r2.xw, r1.wwww, r2.xxxw
mul r3.zw, r2.xxxw, cb0[5].xxxy
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r4.xy, r3.xyxx, cb0[5].xyxx
movc r3.zw, cb0[15].xxxx, r3.zzzw, r4.xxxy
mul r2.xw, r2.xxxw, cb0[15].zzzw
mul r3.xy, r3.xyxx, cb0[15].zwzz
movc r2.xw, cb0[15].xxxx, r2.xxxw, r3.xxxy
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xwxx, t0.xyzw, s1
add r5.xyz, cb0[12].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r5.xyz, r4.wwww, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r4.xyz, r4.xyzx, r5.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t7.xyzw, s2
mad r2.xw, r3.xxxy, l(1.99218750, 0.000000, 0.000000, 1.99218750), l(-1.000000, 0.000000, 0.000000, -1.000000)
mul r3.x, r3.z, r3.z
mul r3.x, r3.x, l(0.33333334)
min r3.x, r3.x, l(1.000000)
sincos r5.x, r6.x, cb0[14].w
mov r7.x, -r5.x
mov r7.y, r6.x
mov r7.z, r5.x
dp2 r5.x, r2.yzyy, r7.yzyy
dp2 r5.y, r2.yzyy, r7.xyxx
add r2.yz, r5.xxyx, v2.yyxy
add r2.yz, r1.wwww, r2.yyzy
mul r3.yz, r2.yyzy, cb0[6].xxyx
add r5.xy, r5.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r5.zw, r5.xxxy, cb0[6].xxxy
movc r3.yz, cb0[15].yyyy, r3.yyzy, r5.zzwz
mul r2.yz, r2.yyzy, cb0[16].xxyx
mul r5.xy, r5.xyxx, cb0[16].xyxx
movc r2.yz, cb0[15].yyyy, r2.yyzy, r5.xxyx
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r2.yzyy, t10.xyzw, s1
add r6.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r6.xyz, r5.wwww, r6.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.yzw, r3.yzyy, t9.wxyz, s2
mad r5.xyz, r5.xyzx, r6.xyzx, -r4.xyzx
mad r4.xyz, r0.xxxx, r5.xyzx, r4.xyzx
add r1.w, -cb0[10].y, cb0[10].z
mul_sat r2.y, cb0[10].z, l(0.05882353)
mul_sat r2.z, cb0[14].y, l(0.05882353)
add r2.z, -r2.y, r2.z
mad r2.y, r0.x, r2.z, r2.y
mad r3.yz, r3.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r2.z, r3.w, r3.w
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mad r1.xy, r2.xwxx, cb0[11].zzzz, r0.yzyy
dp3 r2.x, r1.xyzx, r1.xyzx
rsq r2.x, r2.x
mul r5.xyz, r1.xyzx, r2.xxxx
mad r5.w, r3.x, cb0[11].z, r0.w
mad r1.xy, r3.yzyy, cb0[11].wwww, r0.yzyy
dp3 r0.y, r1.xyzx, r1.xyzx
rsq r0.y, r0.y
mul r3.xyz, r0.yyyy, r1.xyzx
mad r3.w, r2.z, cb0[11].w, r0.w
add r3.xyzw, -r5.xyzw, r3.xyzw
mad r0.xyzw, r0.xxxx, r3.xyzw, r5.xyzw
movc r1.x, v6.x, l(1.000000), l(-1.000000)
dp3 r1.y, v3.xyzx, v3.xyzx
rsq r1.y, r1.y
mul r2.xzw, r1.yyyy, v3.xxyz
mul r3.xyz, r1.xxxx, r2.xzwx
dp3 r1.z, v4.xyzx, v4.xyzx
rsq r1.z, r1.z
mul r5.xyz, r1.zzzz, v4.xyzx
mul r5.xyz, r1.xxxx, r5.xyzx
dp3 r1.z, v5.xyzx, v5.xyzx
rsq r1.z, r1.z
mul r6.xyz, r1.zzzz, v5.xyzx
mul r6.xyz, r1.xxxx, r6.xyzx
mul r1.z, r2.y, l(-17.000000)
exp r1.z, r1.z
add r0.w, r0.w, r1.z
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r6.xyz, r0.yyyy, r6.xyzx
mad r5.xyz, r5.xyzx, r0.xxxx, r6.xyzx
mad r0.xyz, r3.xyzx, r0.zzzz, r5.xyzx
dp3 r1.z, r0.xyzx, r0.xyzx
rsq r1.z, r1.z
mul r0.xyz, r0.xyzx, r1.zzzz
mad r1.z, cb1[62].x, r1.w, cb0[10].y
mul_sat r1.z, r1.z, l(0.05882353)
lt r1.w, l(0.000000), cb1[64].w
if_nz r1.w
  ftoi r1.w, cb1[64].w
  lod r2.y, v1.yzyy, t0.y, s1
  lod r3.z, v1.yzyy, t0.x, s1
  lt r2.y, r2.y, r3.z
  lt r3.z, l(0.000000), r3.z
  and r5.xyz, r1.wwww, l(1, 2, 4, 0)
  movc r6.xyz, r5.xxxx, l(1.000000,0,1.000000,0), r4.xyzx
  movc r5.xyw, r5.yyyy, l(0,1.000000,0,1.000000), r4.xyxz
  movc r5.xyw, r3.zzzz, r6.xyxz, r5.xyxw
  movc r6.xyz, r5.zzzz, l(0,1.000000,0,0), r4.xyzx
  movc r4.xyz, r2.yyyy, r5.xywx, r6.xyzx
endif 
add r5.xyz, -r4.xyzx, cb1[58].xyzx
mad o0.xyz, cb1[58].wwww, r5.xyzx, r4.xyzx
add r4.xyz, cb1[61].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r4.xyz, cb1[61].wwww, r4.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.z, -r0.w, r1.z
mad r0.w, cb1[62].w, r1.z, r0.w
add r1.z, cb1[63].x, l(-1.000000)
mad o2.z, cb1[63].w, r1.z, l(1.000000)
mad r1.yzw, v3.xxyz, r1.yyyy, -r0.xxyz
mad r5.yzw, cb1[60].wwww, r1.yyzw, r0.xxyz
add r0.x, r3.y, r3.x
mad r0.x, r2.w, r1.x, r0.x
mul r0.x, r0.x, l(0.500000)
mad r1.xyz, r2.xzwx, r1.xxxx, -r0.xxxx
max r0.y, r1.z, r1.y
max r0.y, r0.y, r1.x
max r0.x, r0.y, r0.x
eq r0.y, r0.x, r1.x
mul r2.yzw, r5.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r0.z, r0.x, l(2.000000)
mov r2.x, l(1)
mov r5.x, l(0)
movc r2.xyzw, r0.yyyy, r2.xyzw, r5.xyzw
movc r0.x, r0.y, r0.z, r0.x
eq r0.y, r0.x, r1.y
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r0.z, r0.x, l(2.000000)
mov r3.x, l(2)
movc r2.xyzw, r0.yyyy, r3.xyzw, r2.xyzw
movc r0.x, r0.y, r0.z, r0.x
eq r0.x, r0.x, r1.z
mul r1.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r1.x, l(3)
movc r1.xyzw, r0.xxxx, r1.xyzw, r2.xyzw
add r0.x, r1.z, r1.y
add r0.z, r1.w, r0.x
add r0.y, -r1.y, r1.w
mad r0.x, -r1.z, l(3.000000), r0.z
mul r0.xyz, r0.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r0.xy, r0.zzzz, r0.xyxx
mad o1.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.00146628)
utof r0.x, r1.x
mul o1.w, r0.x, l(0.33333334)
ftou r0.xy, v0.xyxx
add r1.y, -r4.z, r4.x
mad r0.z, r1.y, l(0.500000), r4.z
add r1.z, -r0.z, r4.y
mad r1.x, r1.z, l(0.500000), r0.z
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.w, l(1.000000)
mov o2.w, l(0.33333334)
ret 
// Approximately 190 instruction slots used
