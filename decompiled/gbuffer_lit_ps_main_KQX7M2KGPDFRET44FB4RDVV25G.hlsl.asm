//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:29:19 2021
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
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float3 specColorTint;              // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float detailScaleHeight;           // Offset:  200 Size:     4
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
// colorMap                          texture  float4          2d             t0      1 
// tintMask                          texture  float4          2d             t6      1 
// specColorMap                      texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
// detailMap                         texture  float4          2d            t12      1 
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
// SV_TARGET                3   xy          3   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
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
dcl_resource_texture2d (float,float,float,float) t12
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyw
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.yzyy, t0.xyzw, s1
mul r0.w, r0.w, v1.x
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t6.yzwx, s1
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t7.yzwx, s2
add r1.xyz, cb0[11].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add_sat r0.w, -r0.w, l(1.000000)
mul o0.xyz, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t11.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.yzyy, t10.yxzw, s2
add r0.z, -cb0[12].x, cb0[12].y
mad r0.y, r0.y, r0.z, cb0[12].x
mul_sat r0.y, r0.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t9.xyzw, s3
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[11].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r2.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.w, r0.zwzz, r0.zwzz
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r3.z, r1.w
mul r1.w, r2.z, r2.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
mul r2.xy, v1.yzyy, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t12.xyzw, s3
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.z, r2.z, r2.z
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mad r3.xy, r2.xyxx, cb0[12].zzzz, r0.zwzz
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r2.xyw, r0.zzzz, r3.xyxz
mad r0.z, r2.z, cb0[12].z, r1.w
movc r0.w, v6.x, l(1.000000), l(-1.000000)
dp3 r1.w, v2.xyzx, v2.xyzx
rsq r1.w, r1.w
mul r3.xyz, r1.wwww, v2.xyzx
mul r4.xyz, r0.wwww, r3.xyzx
dp3 r1.w, v3.xyzx, v3.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, v3.xyzx
mul r5.xyz, r0.wwww, r5.xyzx
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r6.xyz, r1.wwww, v4.xyzx
mul r6.xyz, r0.wwww, r6.xyzx
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.z
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r6.xyz, r2.yyyy, r6.xyzx
mad r2.xyz, r5.xyzx, r2.xxxx, r6.xyzx
mad r2.xyz, r4.xyzx, r2.wwww, r2.xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.yzw, r0.zzzz, r2.xxyz
div r4.zw, v5.xxxy, v5.wwww
mul r5.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r6.x, r4.z, r5.x
mul r6.y, r4.w, -r5.y
mad r4.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000), r6.xxxy
add r4.zw, -r4.zzzw, v0.xxxy
add r0.z, r4.y, r4.x
mad r0.z, r3.z, r0.w, r0.z
mul r0.z, r0.z, l(0.500000)
mad r3.xyz, r3.xyzx, r0.wwww, -r0.zzzz
max r0.w, r3.z, r3.y
max r0.w, r0.w, r3.x
max r0.z, r0.w, r0.z
eq r0.w, r0.z, r3.x
mul r5.yzw, r2.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r5.x, l(1)
mov r2.x, l(0)
movc r2.xyzw, r0.wwww, r5.xyzw, r2.xyzw
movc r0.z, r0.w, r1.w, r0.z
eq r0.w, r0.z, r3.y
mul r5.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r5.x, l(2)
movc r2.xyzw, r0.wwww, r5.xyzw, r2.xyzw
movc r0.z, r0.w, r1.w, r0.z
eq r0.z, r0.z, r3.z
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r3.x, l(3)
movc r2.xyzw, r0.zzzz, r3.xyzw, r2.xyzw
add r0.z, r2.z, r2.y
add r3.z, r2.w, r0.z
add r3.y, -r2.y, r2.w
mad r3.x, -r2.z, l(3.000000), r3.z
mul r2.yzw, r3.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.z, |r2.w|, l(1.000000)
rsq r0.z, r0.z
mul r0.zw, r0.zzzz, r2.yyyz
mad o1.xy, r0.zwzz, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.y, r2.x
mul o1.w, r0.y, l(0.33333334)
ftou r0.yz, v0.xxyx
add r2.y, -r1.z, r1.x
mad r0.w, r2.y, l(0.500000), r1.z
add r2.z, -r0.w, r1.y
mad r2.x, r2.z, l(0.500000), r0.w
and r0.yz, r0.yyzy, l(0, 1, 1, 0)
ieq r0.y, r0.z, r0.y
movc r0.yz, r0.yyyy, r2.xxyx, r2.xxzx
mad o2.xy, r0.yzyy, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r0.yz, |r4.zzwz|, l(0.000000, -10.000000, -10.000000, 0.000000)
mul_sat r0.yz, r0.yyzy, l(0.000000, 0.03333334, 0.03333334, 0.000000)
mul r1.xy, |r4.zwzz|, l(0.100000, 0.100000, 0.000000, 0.000000)
min r1.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
add r1.xy, -r0.yzyy, r1.xyxx
mad r0.yz, r1.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000), r0.yyzy
ge r1.xy, r4.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r1.xyxx, r0.yzyy, -r0.yzyy
mov o0.w, l(1.000000)
mov o2.z, r0.x
mov o2.w, l(0.33333334)
ret 
// Approximately 127 instruction slots used
