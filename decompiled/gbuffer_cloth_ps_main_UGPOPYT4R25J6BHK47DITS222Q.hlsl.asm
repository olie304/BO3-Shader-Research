//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:01 2021
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
//   float3 specColorTint;              // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float detailScaleHeight;           // Offset:  184 Size:     4
//   float waterRefractionAmount;       // Offset:  188 Size:     4
//   float2 tintScale;                  // Offset:  192 Size:     8
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
// velveteenSampler                  sampler      NA          NA             s5      1 
// tintBlendSampler                  sampler      NA          NA             s6      1 
// colorMap                          texture  float4          2d             t0      1 
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailMap                         texture  float4          2d            t11      1 
// velveteenMask                     texture  float4          2d            t12      1 
// tintBlendMask                     texture  float4          2d            t14      1 
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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB1[44], immediateIndexed
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 8
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t9.xyzw, s2
add r0.y, -cb0[11].x, cb0[11].y
mad r0.x, r0.x, r0.y, cb0[11].x
mul_sat r0.x, r0.x, l(0.05882353)
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v2.xyxx, t7.wxyz, s3
add r0.yzw, r0.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r0.yzw, cb0[10].wwww, r0.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mul r0.w, r0.w, r0.w
mad r0.yz, r0.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r0.w, r0.w, l(0.33333334)
mul r1.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t11.xyzw, s3
mul r1.z, r1.z, r1.z
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r2.xy, r1.xyxx, cb0[11].zzzz, r0.yzyy
dp2 r0.y, r0.yzyy, r0.yzyy
add r0.y, -r0.y, l(1.000000)
max r0.y, r0.y, l(0.000000)
sqrt r2.z, r0.y
mul r0.y, r1.z, l(0.33333334)
min r0.yw, r0.yyyw, l(0.000000, 1.000000, 0.000000, 1.000000)
mad r0.y, r0.y, cb0[11].z, r0.w
add r0.x, r0.x, r0.y
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mul r0.y, r0.x, l(17.000000)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
exp r0.x, r0.y
add r0.x, r0.x, l(2.000000)
div r0.x, l(2.000000), r0.x
sqrt r0.x, r0.x
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
dp3 r0.y, r2.xyzx, r2.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, r2.xxyz
dp3 r1.x, v5.xyzx, v5.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v5.xyzx
movc r1.w, v7.x, l(1.000000), l(-1.000000)
mul r1.xyz, r1.wwww, r1.xyzx
mul r1.xyz, r0.zzzz, r1.xyzx
dp3 r0.z, v4.xyzx, v4.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, v4.xyzx
mul r2.xyz, r1.wwww, r2.xyzx
mad r1.xyz, r2.xyzx, r0.yyyy, r1.xyzx
dp3 r0.y, v3.xyzx, v3.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, v3.xyzx
mul r3.xyz, r1.wwww, r2.xyzx
mad r0.yzw, r3.xxyz, r0.wwww, r1.xxyz
add r1.x, r3.y, r3.x
mad r1.x, r2.z, r1.w, r1.x
mul r1.x, r1.x, l(0.500000)
dp3 r1.y, r0.yzwy, r0.yzwy
rsq r1.y, r1.y
mul r3.yzw, r0.yyzw, r1.yyyy
dp3 r0.y, -v6.xyzx, -v6.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, -v6.xxyz
dp3_sat r0.y, r3.yzwy, r0.yzwy
add r0.y, -r0.y, l(1.000000)
log r0.y, r0.y
mul r0.x, r0.y, r0.x
exp r0.x, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, v2.xyxx, t12.yxzw, s5
mad_sat r0.z, -r0.y, cb0[11].w, l(1.000000)
mul r0.y, r0.y, cb0[11].w
lt r0.y, l(0.000000), r0.y
add r0.z, r0.x, r0.z
min r0.z, r0.z, l(1.000000)
add r4.xyz, cb1[42].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r1.yz, v2.xxyx, cb0[12].xxyx
sample_indexable(texture2d)(float,float,float,float) r1.yz, r1.yzyy, t14.zxyw, s6
mad r4.xyz, r1.yyyy, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
add r5.xyz, -r4.xyzx, cb1[43].xyzx
mad r4.xyz, r1.zzzz, r5.xyzx, r4.xyzx
add r4.xyz, r4.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, v2.xyxx, t0.xyzw, s1
mul r5.xyzw, r5.wxyz, v1.wxyz
mov_sat r5.x, r5.x
mad r4.xyz, r5.xxxx, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s2
add_sat r1.y, -r0.w, l(1.000000)
mul r5.xyz, r1.yyyy, r5.yzwy
mul r6.xyz, r4.xyzx, r5.xyzx
mul r7.xyz, r0.zzzz, r6.xyzx
movc o0.xyz, r0.yyyy, r7.xyzx, r6.xyzx
mov o0.w, l(1.000000)
mad r1.yzw, r2.xxyz, r1.wwww, -r1.xxxx
max r0.z, r1.w, r1.z
max r0.z, r0.z, r1.y
max r0.z, r0.z, r1.x
eq r1.x, r0.z, r1.y
add r1.y, r0.z, l(2.000000)
movc r0.z, r1.x, r1.y, r0.z
eq r1.y, r0.z, r1.z
add r1.z, r0.z, l(2.000000)
movc r0.z, r1.y, r1.z, r0.z
eq r0.z, r0.z, r1.w
mul r2.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r2.x, l(1)
mov r3.x, l(0)
movc r2.xyzw, r1.xxxx, r2.xyzw, r3.xyzw
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r3.x, l(2)
movc r1.xyzw, r1.yyyy, r3.xyzw, r2.xyzw
mul r2.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r1.xyzw, r0.zzzz, r2.xyzw, r1.xyzw
add r0.z, r1.z, r1.y
add r2.z, r1.w, r0.z
mad r2.x, -r1.z, l(3.000000), r2.z
add r2.y, -r1.y, r1.w
utof r0.z, r1.x
mul o1.w, r0.z, l(0.33333334)
mul r1.xyz, r2.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r1.z|, l(1.000000)
rsq r0.z, r0.z
mul r1.xy, r0.zzzz, r1.xyxx
mad o1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
add r1.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
mad r2.xyz, r5.xyzx, r4.xyzx, -r1.xyzx
mad r0.xzw, r0.xxxx, r2.xxyz, r1.xxyz
movc r0.xyz, r0.yyyy, r0.xzwx, r1.xyzx
add r1.y, -r0.z, r0.x
mad r0.x, r1.y, l(0.500000), r0.z
add r1.z, -r0.x, r0.y
mad r1.x, r1.z, l(0.500000), r0.x
ftou r0.xy, v0.xyxx
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t10.xyzw, s4
mov o2.z, r0.x
mov o2.w, l(0.33333334)
ret 
// Approximately 141 instruction slots used
