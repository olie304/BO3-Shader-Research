//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:30:57 2021
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
// normalSampler                     sampler      NA          NA             s2      1 
// mixSampler                        sampler      NA          NA             s3      1 
// colorMap                          texture  float4          2d             t0      1 
// normalMap                         texture  float4          2d             t6      1 
// detailMap1                        texture  float4          2d             t7      1 
// tintMask1                         texture  float4          2d             t9      1 
// tintMask2                         texture  float4          2d            t10      1 
// detailMap2                        texture  float4          2d            t11      1 
// colorMapDetail2                   texture  float4          2d            t12      1 
// mixMap                            texture  float4          2d            t14      1 
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
dcl_constantbuffer CB0[16], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
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
dcl_input_ps linear v1.xyz
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
dcl_temps 6
mul r0.xy, v2.xyxx, cb0[11].xyxx
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t14.xyzw, s3
sincos r1.x, r2.x, cb0[14].z
mov r3.x, -r1.x
add r0.yz, v2.xxyx, l(0.000000, -0.500000, -0.500000, 0.000000)
mov r3.y, r2.x
mov r3.z, r1.x
dp2 r1.x, r0.yzyy, r3.yzyy
dp2 r1.y, r0.yzyy, r3.xyxx
add r1.zw, r1.xxxy, v3.yyyx
add r0.w, v3.z, l(0.500000)
add r1.zw, r0.wwww, r1.zzzw
add r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.xyzw, r1.xyzw, cb0[5].xyxy
movc r1.xy, cb0[15].xxxx, r1.zwzz, r1.xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.z, r1.xyxx, t9.yzxw, s1
add r3.xyz, cb0[12].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r3.xyz, r1.zzzz, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.xyz, r2.xyzx, r3.xyzx
sincos r3.x, r4.x, cb0[14].w
mov r5.x, -r3.x
mov r5.y, r4.x
mov r5.z, r3.x
dp2 r3.x, r0.yzyy, r5.yzyy
dp2 r3.y, r0.yzyy, r5.xyxx
add r0.yz, r3.xxyx, v3.yyxy
add r0.yz, r0.wwww, r0.yyzy
mul r0.yz, r0.yyzy, cb0[6].xxyx
add r1.zw, r3.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r1.zw, r1.zzzw, cb0[6].xxxy
movc r0.yz, cb0[15].yyyy, r0.yyzy, r1.zzwz
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.yzyy, t12.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.w, r0.yzyy, t10.yzwx, s1
add r4.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r0.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.xyz, r3.xyzx, r4.xyzx
add r3.xyzw, -r2.xyzw, r3.xyzw
mad r2.xyzw, r0.xxxx, r3.xyzw, r2.xyzw
lt r0.w, r2.w, l(0.500000)
discard_nz r0.w
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v2.xyxx, t6.xyzw, s2
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r3.xyz, cb0[10].xxxx, r3.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.zw, r3.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r0.w, r1.zwzz, r1.zwzz
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r4.z, r0.w
mul r0.w, r3.z, r3.z
mul r0.w, r0.w, l(0.33333334)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t7.xyzw, s2
mad r1.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r0.yzyy, t11.xyzw, s2
mul o0.xyz, r2.xyzx, v1.xyzx
mul_sat r0.y, cb0[10].z, l(0.05882353)
mul_sat r0.z, cb0[14].y, l(0.05882353)
add r0.z, -r0.y, r0.z
mad r0.y, r0.x, r0.z, r0.y
mad r2.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r3.z, r3.z
mul r0.yz, r0.yyzy, l(0.000000, -17.000000, 0.33333334, 0.000000)
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
mad r4.xy, r1.xyxx, cb0[11].zzzz, r1.zwzz
dp3 r1.x, r4.xyzx, r4.xyzx
rsq r1.x, r1.x
mul r3.xyz, r1.xxxx, r4.xyzx
mad r3.w, r2.w, cb0[11].z, r0.w
mad r4.xy, r2.xyxx, cb0[11].wwww, r1.zwzz
dp3 r1.x, r4.xyzx, r4.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r4.xyzx
mad r1.w, r0.z, cb0[11].w, r0.w
add r1.xyzw, -r3.xyzw, r1.xyzw
mad r1.xyzw, r0.xxxx, r1.xyzw, r3.xyzw
movc r0.x, v8.x, l(1.000000), l(-1.000000)
dp3 r0.z, v4.xyzx, v4.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, v4.xyzx
mul r3.xyz, r0.xxxx, r2.xyzx
dp3 r0.z, v5.xyzx, v5.xyzx
rsq r0.z, r0.z
mul r4.xyz, r0.zzzz, v5.xyzx
mul r4.xyz, r0.xxxx, r4.xyzx
dp3 r0.z, v6.xyzx, v6.xyzx
rsq r0.z, r0.z
mul r5.xyz, r0.zzzz, v6.xyzx
mul r5.xyz, r0.xxxx, r5.xyzx
exp r0.y, r0.y
add r0.y, r0.y, r1.w
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r5.xyz, r1.yyyy, r5.xyzx
mad r1.xyw, r4.xyxz, r1.xxxx, r5.xyxz
mad r1.xyz, r3.xyzx, r1.zzzz, r1.xywx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.yzw, r0.zzzz, r1.xxyz
div r0.zw, v7.xxxy, v7.wwww
mul r3.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
mul r4.x, r0.z, r3.z
mul r4.y, r0.w, -r3.w
mad r0.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000), r4.xxxy
add r0.zw, -r0.zzzw, v0.xxxy
add r2.w, r3.y, r3.x
mad r2.w, r2.z, r0.x, r2.w
mul r2.w, r2.w, l(0.500000)
mad r2.xyz, r2.xyzx, r0.xxxx, -r2.wwww
max r0.x, r2.z, r2.y
max r0.x, r0.x, r2.x
max r0.x, r0.x, r2.w
eq r2.x, r0.x, r2.x
mul r3.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r2.w, r0.x, l(2.000000)
mov r3.x, l(1)
mov r1.x, l(0)
movc r1.xyzw, r2.xxxx, r3.xyzw, r1.xyzw
movc r0.x, r2.x, r2.w, r0.x
eq r2.x, r0.x, r2.y
mul r3.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.y, r0.x, l(2.000000)
mov r3.x, l(2)
movc r1.xyzw, r2.xxxx, r3.xyzw, r1.xyzw
movc r0.x, r2.x, r2.y, r0.x
eq r0.x, r0.x, r2.z
mul r2.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r1.xyzw, r0.xxxx, r2.xyzw, r1.xyzw
add r0.x, r1.z, r1.y
add r2.z, r1.w, r0.x
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.x, |r1.w|, l(1.000000)
rsq r0.x, r0.x
mul r1.yz, r0.xxxx, r1.yyzy
mad o1.xy, r1.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.x, r1.x
mul o1.w, r0.x, l(0.33333334)
add r0.xy, |r0.zwzz|, l(-10.000000, -10.000000, 0.000000, 0.000000)
mul_sat r0.xy, r0.xyxx, l(0.03333334, 0.03333334, 0.000000, 0.000000)
mul r1.xy, |r0.zwzz|, l(0.100000, 0.100000, 0.000000, 0.000000)
min r1.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
add r1.xy, -r0.xyxx, r1.xyxx
mad r0.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), r0.xyxx
ge r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r0.zwzz, r0.xyxx, -r0.xyxx
mov o0.w, l(1.000000)
mov o2.xyzw, l(0.040000,0.500000,1.000000,0.33333334)
ret 
// Approximately 154 instruction slots used
