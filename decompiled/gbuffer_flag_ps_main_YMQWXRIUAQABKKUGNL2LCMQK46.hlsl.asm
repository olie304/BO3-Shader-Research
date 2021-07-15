//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:48 2021
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4 flagParams;                 // Offset:    0 Size:    16
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
//   float4 colorDetailScale;           // Offset:  144 Size:    16
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float3 colorTint1;                 // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float detailScaleHeight;           // Offset:  200 Size:     4
//   float4 flagScrollParms;            // Offset:  208 Size:    16
//   float flagRippleScale;             // Offset:  224 Size:     4
//   float flagRippleHeight;            // Offset:  228 Size:     4
//   float2 wind1Parms;                 // Offset:  232 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  240 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  248 Size:     8 [unused]
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
// colorSampler00                    sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// colorMap                          texture  float4          2d             t0      1 
// tintMask                          texture  float4          2d             t6      1 
// colorMap00                        texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// detailMap                         texture  float4          2d            t10      1 
// flagRippleDetailMap               texture  float4          2d            t11      1 
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
// COLOR                    0   xyz         1     NONE   float   x   
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
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
dcl_input_ps linear v1.x
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
mul r1.xy, v2.xyxx, cb0[9].xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t7.xyzw, s2
mul r2.x, v1.x, v1.x
add r1.w, r1.w, l(-1.000000)
mad r1.w, r2.x, r1.w, l(1.000000)
mul r0.w, r0.w, r1.w
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s1
add r2.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r2.xyz, r0.wwww, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r2.xyzx
mad r1.xyz, r1.xyzx, cb0[11].xyzx, -r0.xyzx
mad r0.xyz, v1.xxxx, r1.xyzx, r0.xyzx
mul_sat r0.w, cb0[12].y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t9.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[11].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r1.w, r1.xyxx, r1.xyxx
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r2.z, r1.w
mul r1.z, r1.z, r1.z
mul r1.z, r1.z, l(0.33333334)
mul r3.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t10.xyzw, s3
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.w, r3.z, r3.z
mul r1.w, r1.w, l(0.33333334)
min r1.zw, r1.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
mad r2.xy, r3.xyxx, cb0[12].zzzz, r1.xyxx
dp3 r1.x, r2.xyzx, r2.xyzx
rsq r1.x, r1.x
mul r2.xyz, r1.xxxx, r2.xyzx
mad r1.x, r1.w, cb0[12].z, r1.z
mul r3.xyzw, cb0[13].xyzw, cb1[69].wwww
mad r3.xyzw, v2.xyxy, cb0[14].xxxx, r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.yzw, r3.xyxx, t11.wxyz, s3
mad r1.yz, r1.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r1.w, r1.w, r1.w
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t11.xyzw, s3
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r2.xy, r1.yzyy, cb0[14].yyyy, r2.xyxx
dp3 r1.y, r2.xyzx, r2.xyzx
rsq r1.y, r1.y
mul r2.xyz, r1.yyyy, r2.xyzx
mad r1.x, r1.w, cb0[14].y, r1.x
mad r2.xy, r3.xyxx, cb0[14].yyyy, r2.xyxx
dp3 r1.y, r2.xyzx, r2.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, r2.xxyz
mad r1.x, r2.w, cb0[14].y, r1.x
movc r2.x, v6.x, l(1.000000), l(-1.000000)
dp3 r2.y, v3.xyzx, v3.xyzx
rsq r2.y, r2.y
mul r2.yzw, r2.yyyy, v3.xxyz
mul r3.xyz, r2.xxxx, r2.yzwy
dp3 r3.w, v4.xyzx, v4.xyzx
rsq r3.w, r3.w
mul r4.xyz, r3.wwww, v4.xyzx
mul r4.xyz, r2.xxxx, r4.xyzx
dp3 r3.w, v5.xyzx, v5.xyzx
rsq r3.w, r3.w
mul r5.xyz, r3.wwww, v5.xyzx
mul r5.xyz, r2.xxxx, r5.xyzx
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r1.x
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r5.xyz, r1.zzzz, r5.xyzx
mad r1.xyz, r4.xyzx, r1.yyyy, r5.xyzx
mad r1.xyz, r3.xyzx, r1.wwww, r1.xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.yzw, r1.wwww, r1.xxyz
mul r3.z, r0.z, cb0[0].z
add r3.x, r3.y, r3.x
mad r3.x, r2.w, r2.x, r3.x
mul r3.x, r3.x, l(0.500000)
mad r2.xyz, r2.yzwy, r2.xxxx, -r3.xxxx
max r2.w, r2.z, r2.y
max r2.w, r2.w, r2.x
max r2.w, r2.w, r3.x
eq r2.x, r2.w, r2.x
mul r4.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r3.x, r2.w, l(2.000000)
mov r4.x, l(1)
mov r1.x, l(0)
movc r1.xyzw, r2.xxxx, r4.xyzw, r1.xyzw
movc r2.x, r2.x, r3.x, r2.w
eq r2.y, r2.x, r2.y
mul r4.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.w, r2.x, l(2.000000)
mov r4.x, l(2)
movc r1.xyzw, r2.yyyy, r4.xyzw, r1.xyzw
movc r2.x, r2.y, r2.w, r2.x
eq r2.x, r2.x, r2.z
mul r4.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r4.x, l(3)
movc r1.xyzw, r2.xxxx, r4.xyzw, r1.xyzw
add r2.x, r1.z, r1.y
add r2.z, r1.w, r2.x
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r1.w, |r1.w|, l(1.000000)
rsq r1.w, r1.w
mul r1.yz, r1.wwww, r1.yyzy
mad o1.xy, r1.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.500000)
utof r0.w, r1.x
mul o1.w, r0.w, l(0.33333334)
ftou r1.xy, v0.xyxx
mad r2.y, r0.x, cb0[0].z, -r3.z
mad r0.w, r2.y, l(0.500000), r3.z
mad r2.z, r0.y, cb0[0].z, -r0.w
mad r2.x, r2.z, l(0.500000), r0.w
and r1.xy, r1.xyxx, l(1, 1, 0, 0)
ieq r0.w, r1.y, r1.x
movc r1.xy, r0.wwww, r2.xyxx, r2.xzxx
mad o2.xy, r1.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
mov o2.zw, l(0,0,1.000000,0.66666669)
ret 
// Approximately 133 instruction slots used
