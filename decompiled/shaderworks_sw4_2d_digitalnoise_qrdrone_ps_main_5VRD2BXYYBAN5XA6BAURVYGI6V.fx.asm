//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:34 2021
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
//   float FPS;                         // Offset:  160 Size:     4 [unused]
//   float MinResolution;               // Offset:  164 Size:     4
//   float MaxResolution;               // Offset:  168 Size:     4
//   float NoisePower;                  // Offset:  172 Size:     4
//   float ColorAmount;                 // Offset:  176 Size:     4
//   float4 Color;                      // Offset:  192 Size:    16
//   float DarkenAmount;                // Offset:  208 Size:     4
//   float DarkenPower;                 // Offset:  212 Size:     4
//   float AngularVelocityScale;        // Offset:  216 Size:     4
//   float MinVelocityFraction;         // Offset:  220 Size:     4
//   float GradientMin;                 // Offset:  224 Size:     4
//   float GradientMax;                 // Offset:  228 Size:     4
//   float VelocityScale;               // Offset:  232 Size:     4
//
// }
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16 [unused]
//   float4 scriptVector2;              // Offset:   32 Size:    16 [unused]
//   float4 scriptVector3;              // Offset:   48 Size:    16 [unused]
//   float4 scriptVector4;              // Offset:   64 Size:    16 [unused]
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16 [unused]
//   float4 weaponParam0;               // Offset:  128 Size:    16 [unused]
//   float4 weaponParam1;               // Offset:  144 Size:    16 [unused]
//   float4 weaponParam2;               // Offset:  160 Size:    16 [unused]
//   float4 weaponParam3;               // Offset:  176 Size:    16 [unused]
//   float4 weaponParam4;               // Offset:  192 Size:    16 [unused]
//   float4 weaponParam5;               // Offset:  208 Size:    16 [unused]
//   float4 weaponParam6;               // Offset:  224 Size:    16 [unused]
//   float4 weaponParam7;               // Offset:  240 Size:    16 [unused]
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
//   float4 cameraVelocity;             // Offset:  800 Size:    16
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
// GridTexture_Sampler               sampler      NA          NA             s1      1 
// floatZSampler_C63_P0_sampler      sampler      NA          NA             s2      1 
// BlockNoise_Sampler                sampler      NA          NA             s3      1 
// Lookup2_Sampler                   sampler      NA          NA             s4      1 
// resolvedPostSun_C11_P0_sampler    sampler      NA          NA             s5      1 
// GridTexture                       texture  float4          2d             t0      1 
// floatZSampler_C63_P0              texture  float4          2d             t6      1 
// BlockNoise                        texture  float4          2d             t7      1 
// Lookup2                           texture  float4          2d             t9      1 
// resolvedPostSun_C11_P0            texture  float4          2d            t10      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 1     z         1     NONE   float     z 
// TEXCOORD                 2      w        1     NONE   float      w
// TEXCOORD                 3   x           2     NONE   float   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[15], immediateIndexed
dcl_constantbuffer CB3[1], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
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
dcl_input_ps linear v1.xy
dcl_input_ps linear v1.z
dcl_input_ps linear v1.w
dcl_input_ps linear v2.x
dcl_output o0.xyzw
dcl_temps 5
add r0.xy, v1.wzww, v1.xyxx
mul r0.xy, r0.xyxx, v2.xxxx
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t7.xyzw, s3
log r0.x, r0.x
max r0.y, cb0[10].w, l(0.000000)
mul r0.x, r0.x, r0.y
exp r0.y, r0.x
min r0.y, r0.y, l(1.000000)
dp3 r0.z, cb1[50].xyzx, cb1[50].xyzx
sqrt r0.z, r0.z
add r0.w, -cb1[50].w, l(1.000000)
mul r0.w, r0.w, cb0[13].z
mad_sat r0.z, r0.z, cb0[14].z, r0.w
max r0.z, r0.z, cb0[13].w
add r0.w, -cb0[10].z, cb0[10].y
mad r0.w, r0.z, r0.w, cb0[10].z
add r1.x, -r0.w, cb0[10].z
mad r0.y, r0.y, r1.x, r0.w
add r0.w, -r0.y, cb0[10].y
mul r1.x, cb3[0].y, l(0.250000)
max r1.x, r1.x, cb3[0].x
mul r1.xy, r1.xxxx, l(4.000000, 0.100000, 0.000000, 0.000000)
min r1.x, r1.x, l(1.000000)
mad r0.y, r1.x, r0.w, r0.y
add r0.yw, r0.yyyy, l(0.000000, 2.000000, 0.000000, -684.000000)
round_ni r0.y, r0.y
mul_sat r0.w, r0.w, l(0.02777778)
add r0.y, r0.y, r0.y
mul r1.xz, r0.yyyy, v1.xxyx
round_ni r1.xz, r1.xxzx
div r1.xz, r1.xxzx, r0.yyyy
div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
mad r2.zw, r0.yyyy, l(0.000000, 0.000000, 0.500000, 0.500000), r1.xxxz
add r0.y, cb1[69].w, l(0.500000)
ge r1.x, r0.y, -r0.y
frc r0.y, |r0.y|
movc r2.x, r1.x, r0.y, -r0.y
sample_indexable(texture2d)(float,float,float,float) r0.y, r2.xwxx, t9.yxzw, s4
mad r0.y, r0.y, l(2.000000), l(-1.000000)
mad r3.z, r0.y, r1.y, r2.z
mul r0.y, r1.y, r0.y
mad r3.xy, r0.yyyy, l(0.500000, -0.250000, 0.000000, 0.000000), r2.zzzz
mov r3.w, r2.w
sample_indexable(texture2d)(float,float,float,float) r1.xzw, r3.zwzz, t10.xwyz, s5
max r0.y, r1.z, r1.x
max r0.y, r1.w, r0.y
min r1.z, r1.z, r1.x
min r1.z, r1.w, r1.z
add r0.y, r0.y, r1.z
mul r0.y, r0.y, cb0[12].x
mad r1.x, -r0.y, l(0.500000), r1.x
mul r0.y, r0.y, l(0.500000)
mad r4.x, cb0[11].x, r1.x, r0.y
sample_indexable(texture2d)(float,float,float,float) r1.xzw, r3.xwxx, t10.xwyz, s5
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.ywyy, t10.xyzw, s5
max r0.y, r1.z, r1.x
max r0.y, r1.w, r0.y
min r1.x, r1.z, r1.x
min r1.x, r1.w, r1.x
add r0.y, r0.y, r1.x
mul r0.y, r0.y, cb0[12].y
mad r1.x, -r0.y, l(0.500000), r1.z
mul r0.y, r0.y, l(0.500000)
mad r4.y, cb0[11].x, r1.x, r0.y
max r0.y, r3.y, r3.x
max r0.y, r3.z, r0.y
min r1.x, r3.y, r3.x
min r1.x, r3.z, r1.x
add r0.y, r0.y, r1.x
mul r0.y, r0.y, cb0[12].z
mad r1.x, -r0.y, l(0.500000), r3.z
mul r0.y, r0.y, l(0.500000)
mad r4.z, cb0[11].x, r1.x, r0.y
mov r2.y, v1.y
sample_indexable(texture2d)(float,float,float,float) r0.y, r2.xyxx, t9.yxzw, s4
mad r0.y, r0.y, l(2.000000), l(-1.000000)
mad r2.x, r0.y, r1.y, v1.x
mul r0.y, r1.y, r0.y
mad r1.xy, r0.yyyy, l(0.500000, -0.250000, 0.000000, 0.000000), v1.xxxx
mov r2.y, v1.y
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t10.xyzw, s5
max r0.y, r2.y, r2.x
max r0.y, r2.z, r0.y
min r1.w, r2.y, r2.x
min r1.w, r2.z, r1.w
add r0.y, r0.y, r1.w
mul r0.y, r0.y, cb0[12].x
mad r1.w, -r0.y, l(0.500000), r2.x
mul r0.y, r0.y, l(0.500000)
mad r2.x, cb0[11].x, r1.w, r0.y
mov r1.z, v1.y
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xzxx, t10.xyzw, s5
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.yzyy, t10.xyzw, s5
max r0.y, r3.y, r3.x
max r0.y, r3.z, r0.y
min r1.w, r3.y, r3.x
min r1.w, r3.z, r1.w
add r0.y, r0.y, r1.w
mul r0.y, r0.y, cb0[12].y
mad r1.w, -r0.y, l(0.500000), r3.y
mul r0.y, r0.y, l(0.500000)
mad r2.y, cb0[11].x, r1.w, r0.y
max r0.y, r1.y, r1.x
max r0.y, r1.z, r0.y
min r1.x, r1.y, r1.x
min r1.x, r1.z, r1.x
add r0.y, r0.y, r1.x
mul r0.y, r0.y, cb0[12].z
mad r1.x, -r0.y, l(0.500000), r1.z
mul r0.y, r0.y, l(0.500000)
mad r2.z, cb0[11].x, r1.x, r0.y
add r1.xyz, -r4.xyzx, r2.xyzx
mad r1.xyz, r0.wwww, r1.xyzx, r4.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.xyxx, t6.yxzw, s2
ge r0.w, r0.y, l(0.984375)
mul r1.w, r0.y, l(1.01587307)
mad r0.y, r0.y, l(64.000000), l(-63.000000)
movc r0.y, r0.w, r0.y, r1.w
max r0.y, r0.y, l(0.00000001)
rcp r0.y, r0.y
mul r0.y, r0.y, l(0.001000)
mul r0.w, cb1[69].w, l(0.250000)
ge r1.w, r0.w, -r0.w
frc r0.w, |r0.w|
movc r0.w, r1.w, r0.w, -r0.w
mad r1.w, -r0.w, l(4.000000), r0.y
add r0.w, -r0.w, l(1.000000)
mul r0.w, r0.w, l(10.000000)
min r0.w, r0.w, l(1.000000)
min r1.w, |r1.w|, l(1.000000)
add r1.w, -r1.w, l(1.000000)
mul r1.w, r1.w, r1.w
mul r1.w, r1.w, r1.w
mul r1.w, r1.w, r1.w
mul r0.w, r0.w, r1.w
add r2.xy, v1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mul r3.x, r0.y, r2.x
mul r3.y, r0.y, -r2.y
mad r2.xy, r3.xyxx, l(167.555862, 94.250168, 0.000000, 0.000000), l(0.750000, 0.750000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t0.xyzw, s1
mul r2.xyz, r2.xyzx, l(0.184000, 0.698000, 0.588000, 0.000000)
mul r2.xyz, r0.wwww, r2.xyzx
max r0.y, cb0[13].y, l(0.000000)
mul r0.x, r0.x, r0.y
exp r0.x, r0.x
add r0.y, cb0[13].x, l(-1.000000)
mad r0.yzw, r0.zzzz, r0.yyyy, l(0.000000, 1.000000, 1.000000, 1.000000)
add r3.xyz, -r0.wwww, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r0.xyz, r0.xxxx, r3.xyzx, r0.yzwy
mad r0.xyz, r0.xyzx, r1.xyzx, r2.xyzx
ge r0.w, v1.y, -v1.y
frc r1.x, |v1.y|
movc r0.w, r0.w, r1.x, -r1.x
add r0.w, |r0.w|, l(-0.500000)
mad r0.w, -|r0.w|, l(2.000000), l(1.000000)
add r1.x, -cb0[14].x, cb0[14].y
mad_sat r0.w, r0.w, r1.x, cb0[14].x
mul o0.xyz, r0.xyzx, r0.wwww
mov o0.w, l(2.000000)
ret 
// Approximately 160 instruction slots used
