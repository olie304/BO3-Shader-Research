//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:41:13 2021
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
//   float4 detailScale3;               // Offset:  112 Size:    16
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 specColorTint;              // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float2 rotateUVs;                  // Offset:  184 Size:     8 [unused]
//   float2 scrollUVs;                  // Offset:  192 Size:     8 [unused]
//   float2 scaleUVs;                   // Offset:  200 Size:     8 [unused]
//   float2 offsetUVs;                  // Offset:  208 Size:     8 [unused]
//   float2 zoomUVs;                    // Offset:  216 Size:     8 [unused]
//   float zoomRate;                    // Offset:  224 Size:     4 [unused]
//   float layerDepth;                  // Offset:  228 Size:     4 [unused]
//   bool clampU;                       // Offset:  232 Size:     4 [unused]
//   bool clampV;                       // Offset:  236 Size:     4 [unused]
//   float treadDepth;                  // Offset:  240 Size:     4 [unused]
//   float reverseTread;                // Offset:  244 Size:     4 [unused]
//   float2 mixScale;                   // Offset:  248 Size:     8
//   float detailScaleHeight1;          // Offset:  256 Size:     4
//   float detailScaleHeight2;          // Offset:  260 Size:     4
//   float4 colorTint;                  // Offset:  272 Size:    16
//   float4 colorTint1;                 // Offset:  288 Size:    16
//   float2 glossRange2;                // Offset:  304 Size:     8
//   float rotateUVs1;                  // Offset:  312 Size:     4
//   float rotateUVs2;                  // Offset:  316 Size:     4
//   bool useUVOffsets1;                // Offset:  320 Size:     4
//   bool useUVOffsets2;                // Offset:  324 Size:     4
//   float detailScaleHeight3;          // Offset:  328 Size:     4
//   float4 colorTint2;                 // Offset:  336 Size:    16
//   float2 glossRange3;                // Offset:  352 Size:     8
//   float rotateUVs3;                  // Offset:  360 Size:     4
//   bool useUVOffsets3;                // Offset:  364 Size:     4
//   float4 specColorTint1;             // Offset:  368 Size:    16
//   float4 specColorTint2;             // Offset:  384 Size:    16
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
// mixSampler                        sampler      NA          NA             s5      1 
// colorMap                          texture  float4          2d             t0      1 
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailMap1                        texture  float4          2d            t11      1 
// detailMap2                        texture  float4          2d            t12      1 
// glossMapDetail2                   texture  float4          2d            t14      1 
// colorMapDetail2                   texture  float4          2d            t15      1 
// detailMap3                        texture  float4          2d            t16      1 
// colorMapDetail3                   texture  float4          2d            t17      1 
// mixMap                            texture  float4          2d            t18      1 
// specularMapDetail2                texture  float4          2d            t19      1 
// specularMapDetail3                texture  float4          2d            t20      1 
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
// TEXCOORD                 7   xyzw        6     NONE   float   xy w
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
dcl_constantbuffer CB0[25], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyw
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 8
add r0.xyz, cb0[17].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
sincos r1.x, r2.x, cb0[19].z
mov r3.z, r1.x
mov r3.y, r2.x
mov r3.x, -r1.x
add r1.xy, v1.yzyy, l(-0.500000, -0.500000, 0.000000, 0.000000)
dp2 r2.x, r1.xyxx, r3.yzyy
dp2 r2.y, r1.xyxx, r3.xyxx
add r1.zw, r2.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
add r2.xy, r2.xyxx, v2.yxyy
mul r1.zw, r1.zzzw, cb0[5].xxxy
add r0.w, v2.z, l(0.500000)
add r2.xy, r0.wwww, r2.xyxx
mul r2.xy, r2.xyxx, cb0[5].xyxx
movc r1.zw, cb0[20].xxxx, r2.xxxy, r1.zzzw
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.zwzz, t0.xyzw, s1
mad r0.xyz, r2.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r2.xyzx
sincos r2.x, r3.x, cb0[19].w
mov r4.z, r2.x
mov r4.y, r3.x
mov r4.x, -r2.x
dp2 r2.y, r1.xyxx, r4.xyxx
dp2 r2.x, r1.xyxx, r4.yzyy
add r2.zw, r2.xxxy, v2.yyyx
add r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
add r2.zw, r0.wwww, r2.zzzw
mul r2.xyzw, r2.xyzw, cb0[6].xyxy
movc r2.xy, cb0[20].yyyy, r2.zwzz, r2.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t15.xyzw, s1
add r4.xyz, cb0[18].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xyz, r3.xyzx, r4.xyzx, -r0.xyzx
mul r2.zw, v1.yyyz, cb0[15].zzzw
sample_indexable(texture2d)(float,float,float,float) r2.zw, r2.zwzz, t18.zwxy, s5
mad r0.xyz, r2.zzzz, r3.xyzx, r0.xyzx
sincos r3.x, r4.x, cb0[22].z
mov r5.z, r3.x
mov r5.y, r4.x
mov r5.x, -r3.x
dp2 r3.y, r1.xyxx, r5.xyxx
dp2 r3.x, r1.xyxx, r5.yzyy
add r1.xy, r3.xyxx, v2.yxyy
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, cb0[7].xyxx
add r1.xy, r0.wwww, r1.xyxx
mul r1.xy, r1.xyxx, cb0[7].xyxx
movc r1.xy, cb0[22].wwww, r1.xyxx, r3.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t17.xyzw, s1
add r4.xyz, cb0[21].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xyz, r3.xyzx, r4.xyzx, -r0.xyzx
mad r0.xyz, r2.wwww, r3.xyzx, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t20.yzwx, s2
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t16.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r1.x, r2.xyxx, t19.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r1.y, r1.zwzz, t6.yxzw, s2
add r3.w, -r1.y, r1.x
mad r3.w, r2.z, r3.w, r1.y
add r4.x, r0.w, -r3.w
mad r3.w, r2.w, r4.x, r3.w
add r3.w, -r3.w, l(1.000000)
mul o0.xyz, r0.xyzx, r3.wwww
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r2.xyxx, t12.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t14.xyzw, s2
mul r0.z, r0.z, r0.z
mad r0.xy, r0.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r4.xyz, v1.yzyy, t7.xyzw, s3
add r4.xyz, r4.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r4.xyz, cb0[10].wwww, r4.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r2.y, r4.z, r4.z
mad r4.xy, r4.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.y, r2.y, l(0.33333334)
min r2.y, r2.y, l(1.000000)
mad r5.w, r0.z, cb0[16].y, r2.y
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r1.zwzz, t11.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r0.z, r1.zwzz, t9.yzxw, s2
mul r1.z, r6.z, r6.z
mad r4.zw, r6.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mad r6.xy, r4.zwzz, cb0[16].xxxx, r4.xyxx
mul r1.z, r1.z, l(0.33333334)
min r1.z, r1.z, l(1.000000)
mad r7.w, r1.z, cb0[16].x, r2.y
dp2 r1.z, r4.xyxx, r4.xyxx
add r1.z, -r1.z, l(1.000000)
max r1.z, r1.z, l(0.000000)
sqrt r6.z, r1.z
dp3 r1.z, r6.xyzx, r6.xyzx
rsq r1.z, r1.z
mul r7.xyz, r1.zzzz, r6.xyzx
mad r6.xy, r0.xyxx, cb0[16].yyyy, r4.xyxx
dp3 r0.x, r6.xyzx, r6.xyzx
rsq r0.x, r0.x
mul r5.xyz, r0.xxxx, r6.xyzx
add r5.xyzw, r5.xyzw, -r7.xyzw
mad r5.xyzw, r2.zzzz, r5.xyzw, r7.xyzw
mul r0.x, r3.z, r3.z
mad r1.zw, r3.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mad r6.xy, r1.zwzz, cb0[20].zzzz, r4.xyxx
mul r0.x, r0.x, l(0.33333334)
min r0.x, r0.x, l(1.000000)
mad r3.w, r0.x, cb0[20].z, r2.y
dp3 r0.x, r6.xyzx, r6.xyzx
rsq r0.x, r0.x
mul r3.xyz, r0.xxxx, r6.xyzx
add r3.xyzw, -r5.xyzw, r3.xyzw
mad r3.xyzw, r2.wwww, r3.xyzw, r5.xyzw
add r0.x, -cb0[19].x, cb0[19].y
mad r0.x, r2.x, r0.x, cb0[19].x
add r0.y, -cb0[11].x, cb0[11].y
mad r0.y, r0.z, r0.y, cb0[11].x
mul_sat r0.xy, r0.xyxx, l(0.05882353, 0.05882353, 0.000000, 0.000000)
add r0.x, -r0.y, r0.x
mad r0.x, r2.z, r0.x, r0.y
mul_sat r0.y, cb0[22].y, l(0.05882353)
add r0.y, -r0.x, r0.y
mad r0.x, r2.w, r0.y, r0.x
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
add r0.x, r0.x, r3.w
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v5.xyzx
movc r1.z, v7.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.xyzx, r1.zzzz
mul r0.xyz, r3.yyyy, r0.xyzx
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, v4.xyzx
mul r4.xyz, r1.zzzz, r4.xyzx
mad r0.xyz, r4.xyzx, r3.xxxx, r0.xyzx
dp3 r1.w, v3.xyzx, v3.xyzx
rsq r1.w, r1.w
mul r3.xyw, r1.wwww, v3.xyxz
mul r4.xyz, r1.zzzz, r3.xywx
mad r0.xyz, r4.xyzx, r3.zzzz, r0.xyzx
add r1.w, r4.y, r4.x
mad r1.w, r3.w, r1.z, r1.w
mul r1.w, r1.w, l(0.500000)
dp3 r2.x, r0.xyzx, r0.xyzx
rsq r2.x, r2.x
mul r4.yzw, r0.xxyz, r2.xxxx
mul r5.yzw, r4.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r5.x, l(1)
mov r4.x, l(0)
mad r0.xyz, r3.xywx, r1.zzzz, -r1.wwww
max r1.z, r0.z, r0.y
max r1.z, r0.x, r1.z
max r1.z, r1.z, r1.w
eq r0.x, r0.x, r1.z
movc r3.xyzw, r0.xxxx, r5.xyzw, r4.xyzw
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r4.x, l(2)
add r1.w, r1.z, l(2.000000)
movc r0.x, r0.x, r1.w, r1.z
eq r0.y, r0.x, r0.y
movc r3.xyzw, r0.yyyy, r4.xyzw, r3.xyzw
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r1.z, r0.x, l(2.000000)
movc r0.x, r0.y, r1.z, r0.x
eq r0.x, r0.x, r0.z
mov r4.x, l(3)
movc r3.xyzw, r0.xxxx, r4.xyzw, r3.xyzw
add r0.x, r3.z, r3.y
add r0.z, r3.w, r0.x
mad r0.x, -r3.z, l(3.000000), r0.z
add r0.y, -r3.y, r3.w
utof r1.z, r3.x
mul o1.w, r1.z, l(0.33333334)
mul r0.xyz, r0.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r0.xy, r0.zzzz, r0.xyxx
mad o1.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
add r0.xyz, cb0[24].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r0.xyz, r0.wwww, r0.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r3.xyz, cb0[23].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xzw, r1.xxxx, r3.xxyz, l(0.040000, 0.000000, 0.040000, 0.040000)
add r3.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r3.xyz, r1.yyyy, r3.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.xyz, r1.xzwx, -r3.xyzx
mad r1.xyz, r2.zzzz, r1.xyzx, r3.xyzx
add r0.xyz, r0.xyzx, -r1.xyzx
mad r0.xyz, r2.wwww, r0.xyzx, r1.xyzx
add r1.y, -r0.z, r0.x
mad r0.x, r1.y, l(0.500000), r0.z
add r1.z, -r0.x, r0.y
mad r1.x, r1.z, l(0.500000), r0.x
ftou r0.xy, v0.xyxx
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t10.xyzw, s4
mov o2.z, r0.x
mov o2.w, l(0.33333334)
div r0.xy, v6.xyxx, v6.wwww
mul r0.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r1.x, r0.z, r0.x
mul r1.y, -r0.w, r0.y
mad r0.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), r1.xyxx
add r0.xy, -r0.xyxx, v0.xyxx
mul r0.zw, |r0.xxxy|, l(0.000000, 0.000000, 0.100000, 0.100000)
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
add r1.xy, |r0.xyxx|, l(-10.000000, -10.000000, 0.000000, 0.000000)
ge r0.xy, r0.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul_sat r1.xy, r1.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
add r0.zw, r0.zzzw, -r1.xxxy
mad r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000), r1.xxxy
movc o3.xy, r0.xyxx, r0.zwzz, -r0.zwzz
ret 
// Approximately 217 instruction slots used
