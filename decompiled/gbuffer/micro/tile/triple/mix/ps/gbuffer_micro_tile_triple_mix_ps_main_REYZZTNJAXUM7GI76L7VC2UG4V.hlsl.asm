//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:27 2021
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
//   float2 mixScale;                   // Offset:  184 Size:     8
//   float detailScaleHeight1;          // Offset:  192 Size:     4
//   float detailScaleHeight2;          // Offset:  196 Size:     4
//   float4 colorTint;                  // Offset:  208 Size:    16
//   float4 colorTint1;                 // Offset:  224 Size:    16
//   float2 glossRange2;                // Offset:  240 Size:     8
//   float rotateUVs1;                  // Offset:  248 Size:     4
//   float rotateUVs2;                  // Offset:  252 Size:     4
//   bool useUVOffsets1;                // Offset:  256 Size:     4
//   bool useUVOffsets2;                // Offset:  260 Size:     4
//   float detailScaleHeight3;          // Offset:  264 Size:     4
//   float4 colorTint2;                 // Offset:  272 Size:    16
//   float2 glossRange3;                // Offset:  288 Size:     8
//   float rotateUVs3;                  // Offset:  296 Size:     4
//   bool useUVOffsets3;                // Offset:  300 Size:     4
//   float4 specColorTint1;             // Offset:  304 Size:    16
//   float4 specColorTint2;             // Offset:  320 Size:    16
//   float2 mixScale1;                  // Offset:  336 Size:     8
//   float alphaRevealSoftEdge1;        // Offset:  344 Size:     4
//   float alphaRevealRamp1;            // Offset:  348 Size:     4
//   float alphaRevealSoftEdge2;        // Offset:  352 Size:     4
//   float alphaRevealRamp2;            // Offset:  356 Size:     4
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
// mixMap1                           texture  float4          2d            t21      1 
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
// COLOR                    0   xyz         1     NONE   float   xy  
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// UVOFFSETS                0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyzw        7     NONE   float   xy w
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
dcl_constantbuffer CB0[23], immediateIndexed
dcl_constantbuffer CB1[65], immediateIndexed
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
dcl_resource_texture2d (float,float,float,float) t21
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xyw
dcl_input_ps_sgv constant v8.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 15
mul r0.xy, v2.xyxx, cb0[11].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t18.xyzw, s5
mad_sat r0.yz, v1.xxyx, l(0.000000, 0.998000, 0.998000, 0.000000), l(0.000000, 0.001000, 0.001000, 0.000000)
add r1.xy, -r0.yzyy, l(1.000000, 1.000000, 0.000000, 0.000000)
mov_sat r0.w, cb0[21].w
log r0.yz, r0.yyzy
mul r0.y, r0.y, r0.w
exp r0.y, r0.y
mov r2.x, -r0.y
log r1.zw, r1.xxxy
mul r0.y, r0.w, r1.z
exp r2.y, r0.y
mad_sat r0.yw, cb0[21].zzzz, r2.xxxy, r1.xxxx
add r0.x, -r0.y, r0.x
add r0.y, -r0.y, r0.w
div_sat r0.x, r0.x, r0.y
mul r0.yw, v2.xxxy, cb0[21].xxxy
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.ywyy, t21.yxzw, s5
mov_sat r0.w, cb0[22].y
mul r0.z, r0.z, r0.w
exp r0.z, r0.z
mov r2.x, -r0.z
mul r0.z, r1.w, r0.w
exp r2.y, r0.z
mad_sat r0.zw, cb0[22].xxxx, r2.xxxy, r1.yyyy
add r0.y, -r0.z, r0.y
add r0.z, -r0.z, r0.w
div_sat r0.y, r0.y, r0.z
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t7.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r1.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.x, r0.zwzz, r0.zwzz
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r2.z, r1.x
mul r1.x, r1.z, r1.z
mul r1.x, r1.x, l(0.33333334)
min r1.x, r1.x, l(1.000000)
sincos r3.x, r4.x, cb0[15].z
mov r5.x, -r3.x
add r1.yz, v2.xxyx, l(0.000000, -0.500000, -0.500000, 0.000000)
mov r5.y, r4.x
mov r5.z, r3.x
dp2 r3.x, r1.yzyy, r5.yzyy
dp2 r3.y, r1.yzyy, r5.xyxx
add r3.zw, r3.xxxy, v3.yyyx
add r1.w, v3.z, l(0.500000)
add r3.zw, r1.wwww, r3.zzzw
add r3.xy, r3.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xyzw, r3.xyzw, cb0[5].xyxy
movc r3.xy, cb0[16].xxxx, r3.zwzz, r3.xyxx
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r3.xyxx, t0.xyzw, s1
add r5.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r5.xyz, r4.wwww, r5.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r4.xyz, r4.xyzx, r5.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.w, r3.xyxx, t6.yzwx, s2
add r5.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r5.xyz, r2.wwww, r5.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.z, r3.xyxx, t9.yzxw, s2
sample_indexable(texture2d)(float,float,float,float) r3.xyw, r3.xyxx, t11.xywz, s3
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r3.w, r3.w, r3.w
mul r3.w, r3.w, l(0.33333334)
min r3.w, r3.w, l(1.000000)
sincos r6.x, r7.x, cb0[15].w
mov r8.x, -r6.x
mov r8.y, r7.x
mov r8.z, r6.x
dp2 r6.x, r1.yzyy, r8.yzyy
dp2 r6.y, r1.yzyy, r8.xyxx
add r6.zw, r6.xxxy, v3.yyyx
add r6.zw, r1.wwww, r6.zzzw
add r6.xy, r6.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r6.xyzw, r6.xyzw, cb0[6].xyxy
movc r6.xy, cb0[16].yyyy, r6.zwzz, r6.xyxx
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, r6.xyxx, t15.xyzw, s1
add r8.xyz, cb0[14].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r8.xyz, r7.wwww, r8.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r4.w, r6.xyxx, t19.yzwx, s2
add r9.xyz, cb0[19].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r9.xyz, r4.wwww, r9.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r10.xyz, r6.xyxx, t12.xyzw, s3
sincos r11.x, r12.x, cb0[18].z
mov r13.x, -r11.x
mov r13.y, r12.x
mov r13.z, r11.x
dp2 r11.x, r1.yzyy, r13.yzyy
dp2 r11.y, r1.yzyy, r13.xyxx
add r1.yz, r11.xxyx, v3.yyxy
add r1.yz, r1.wwww, r1.yyzy
mul r1.yz, r1.yyzy, cb0[7].xxyx
add r6.zw, r11.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r6.zw, r6.zzzw, cb0[7].xxxy
movc r1.yz, cb0[18].wwww, r1.yyzy, r6.zzwz
sample_indexable(texture2d)(float,float,float,float) r11.xyzw, r1.yzyy, t17.xyzw, s1
add r12.xyz, cb0[17].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r12.xyz, r11.wwww, r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r13.xyz, r1.yzyy, t16.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r1.y, r1.yzyy, t20.yxzw, s2
add r14.xyz, cb0[20].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r14.xyz, r1.yyyy, r14.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.z, r6.xyxx, t14.yzxw, s2
mad r6.xyz, r7.xyzx, r8.xyzx, -r4.xyzx
mad r4.xyz, r0.xxxx, r6.xyzx, r4.xyzx
mad r6.xyz, r11.xyzx, r12.xyzx, -r4.xyzx
mad r4.xyz, r0.yyyy, r6.xyzx, r4.xyzx
add r1.w, -r2.w, r4.w
mad r1.w, r0.x, r1.w, r2.w
add r6.xyz, -r5.xyzx, r9.xyzx
mad r5.xyz, r0.xxxx, r6.xyzx, r5.xyzx
add r6.xyz, -r5.xyzx, r14.xyzx
mad r5.xyz, r0.yyyy, r6.xyzx, r5.xyzx
add r1.y, -r1.w, r1.y
mad r1.y, r0.y, r1.y, r1.w
add r1.y, -r1.y, l(1.000000)
mul r4.xyz, r1.yyyy, r4.xyzx
add r1.y, -cb0[11].x, cb0[11].y
mad r1.w, r3.z, r1.y, cb0[11].x
add r2.w, -cb0[15].x, cb0[15].y
mad r1.z, r1.z, r2.w, cb0[15].x
mul_sat r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.05882353, 0.05882353)
mul_sat r2.w, cb0[18].y, l(0.05882353)
add r1.z, -r1.w, r1.z
mad r1.z, r0.x, r1.z, r1.w
add r1.w, -r1.z, r2.w
mad r1.z, r0.y, r1.w, r1.z
sample_indexable(texture2d)(float,float,float,float) r1.w, v2.xyxx, t10.yzwx, s4
mad r6.xy, r10.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r10.z, r10.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r2.xy, r3.xyxx, cb0[12].xxxx, r0.zwzz
dp3 r3.x, r2.xyzx, r2.xyzx
rsq r3.x, r3.x
mul r7.xyz, r2.xyzx, r3.xxxx
mad r7.w, r3.w, cb0[12].x, r1.x
mad r2.xy, r6.xyxx, cb0[12].yyyy, r0.zwzz
dp3 r3.x, r2.xyzx, r2.xyzx
rsq r3.x, r3.x
mul r3.xyz, r2.xyzx, r3.xxxx
mad r3.w, r2.w, cb0[12].y, r1.x
mad r6.xy, r13.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r13.z, r13.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r2.xy, r6.xyxx, cb0[16].zzzz, r0.zwzz
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r6.xyz, r0.zzzz, r2.xyzx
mad r6.w, r2.w, cb0[16].z, r1.x
add r2.xyzw, -r7.xyzw, r3.xyzw
mad r2.xyzw, r0.xxxx, r2.xyzw, r7.xyzw
add r3.xyzw, -r2.xyzw, r6.xyzw
mad r0.xyzw, r0.yyyy, r3.xyzw, r2.xyzw
movc r1.x, v8.x, l(1.000000), l(-1.000000)
dp3 r2.x, v4.xyzx, v4.xyzx
rsq r2.x, r2.x
mul r2.yzw, r2.xxxx, v4.xxyz
mul r3.xyz, r1.xxxx, r2.yzwy
dp3 r3.w, v5.xyzx, v5.xyzx
rsq r3.w, r3.w
mul r6.xyz, r3.wwww, v5.xyzx
mul r6.xyz, r1.xxxx, r6.xyzx
dp3 r3.w, v6.xyzx, v6.xyzx
rsq r3.w, r3.w
mul r7.xyz, r3.wwww, v6.xyzx
mul r7.xyz, r1.xxxx, r7.xyzx
mul r1.z, r1.z, l(-17.000000)
exp r1.z, r1.z
add r0.w, r0.w, r1.z
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mul r7.xyz, r0.yyyy, r7.xyzx
mad r6.xyz, r6.xyzx, r0.xxxx, r7.xyzx
mad r0.xyz, r3.xyzx, r0.zzzz, r6.xyzx
dp3 r1.z, r0.xyzx, r0.xyzx
rsq r1.z, r1.z
mul r0.xyz, r0.xyzx, r1.zzzz
mad r1.y, cb1[62].x, r1.y, cb0[11].x
mul_sat r1.y, r1.y, l(0.05882353)
lt r1.z, l(0.000000), cb1[64].w
if_nz r1.z
  ftoi r1.z, cb1[64].w
  lod r3.z, v2.xyxx, t0.y, s1
  lod r3.w, v2.xyxx, t0.x, s1
  lt r3.z, r3.z, r3.w
  lt r3.w, l(0.000000), r3.w
  and r6.xyz, r1.zzzz, l(1, 2, 4, 0)
  movc r7.xyz, r6.xxxx, l(1.000000,0,1.000000,0), r4.xyzx
  movc r6.xyw, r6.yyyy, l(0,1.000000,0,1.000000), r4.xyxz
  movc r6.xyw, r3.wwww, r7.xyxz, r6.xyxw
  movc r7.xyz, r6.zzzz, l(0,1.000000,0,0), r4.xyzx
  movc r4.xyz, r3.zzzz, r6.xywx, r7.xyzx
endif 
add r6.xyz, -r4.xyzx, cb1[58].xyzx
mad o0.xyz, cb1[58].wwww, r6.xyzx, r4.xyzx
add r4.xyz, -r5.xyzx, cb1[61].xyzx
mad r4.xyz, cb1[61].wwww, r4.xyzx, r5.xyzx
mad r1.y, r1.y, l(1.000000), -r0.w
mad r0.w, cb1[62].w, r1.y, r0.w
add r1.y, -r1.w, cb1[63].x
mad o2.z, cb1[63].w, r1.y, r1.w
mad r1.yzw, v4.xxyz, r2.xxxx, -r0.xxyz
mad r5.yzw, cb1[60].wwww, r1.yyzw, r0.xxyz
div r0.xy, v7.xyxx, v7.wwww
mul r1.yz, cb1[44].xxyx, l(0.000000, 0.500000, 0.500000, 0.000000)
mul r6.x, r0.x, r1.y
mul r6.y, r0.y, -r1.z
mad r0.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), r6.xyxx
add r0.xy, -r0.xyxx, v0.xyxx
add r0.z, r3.y, r3.x
mad r0.z, r2.w, r1.x, r0.z
mul r0.z, r0.z, l(0.500000)
mad r1.xyz, r2.yzwy, r1.xxxx, -r0.zzzz
max r1.w, r1.z, r1.y
max r1.w, r1.w, r1.x
max r0.z, r0.z, r1.w
eq r1.x, r0.z, r1.x
mul r2.yzw, r5.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r2.x, l(1)
mov r5.x, l(0)
movc r2.xyzw, r1.xxxx, r2.xyzw, r5.xyzw
movc r0.z, r1.x, r1.w, r0.z
eq r1.x, r0.z, r1.y
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.y, r0.z, l(2.000000)
mov r3.x, l(2)
movc r2.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
movc r0.z, r1.x, r1.y, r0.z
eq r0.z, r0.z, r1.z
mul r1.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r1.x, l(3)
movc r1.xyzw, r0.zzzz, r1.xyzw, r2.xyzw
add r0.z, r1.z, r1.y
add r2.z, r1.w, r0.z
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.z, |r1.w|, l(1.000000)
rsq r0.z, r0.z
mul r1.yz, r0.zzzz, r1.yyzy
mad o1.xy, r1.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.00146628)
utof r0.z, r1.x
mul o1.w, r0.z, l(0.33333334)
ftou r0.zw, v0.xxxy
add r1.y, -r4.z, r4.x
mad r1.w, r1.y, l(0.500000), r4.z
add r1.z, -r1.w, r4.y
mad r1.x, r1.z, l(0.500000), r1.w
and r0.zw, r0.zzzw, l(0, 0, 1, 1)
ieq r0.z, r0.w, r0.z
movc r0.zw, r0.zzzz, r1.xxxy, r1.xxxz
mad o2.xy, r0.zwzz, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r0.zw, |r0.xxxy|, l(0.000000, 0.000000, -10.000000, -10.000000)
mul_sat r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.03333334, 0.03333334)
mul r1.xy, |r0.xyxx|, l(0.100000, 0.100000, 0.000000, 0.000000)
min r1.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
add r1.xy, -r0.zwzz, r1.xyxx
mad r0.zw, r1.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000), r0.zzzw
ge r0.xy, r0.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r0.xyxx, r0.zwzz, -r0.zwzz
mov o0.w, l(1.000000)
mov o2.w, l(0.33333334)
ret 
// Approximately 267 instruction slots used
