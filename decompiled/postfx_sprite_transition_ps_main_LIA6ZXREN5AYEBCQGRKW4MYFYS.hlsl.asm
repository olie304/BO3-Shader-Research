//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:25 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float heightScale;                 // Offset:  168 Size:     4 [unused]
//   float2 sprites;                    // Offset:  176 Size:     8 [unused]
//   float2 source;                     // Offset:  184 Size:     8 [unused]
//   float count;                       // Offset:  192 Size:     4 [unused]
//   float seed;                        // Offset:  196 Size:     4 [unused]
//   float2 scaleMin;                   // Offset:  200 Size:     8 [unused]
//   float2 scaleMax;                   // Offset:  208 Size:     8 [unused]
//   float2 lifeMaxMin;                 // Offset:  216 Size:     8 [unused]
//   float2 fadeInMaxMin;               // Offset:  224 Size:     8 [unused]
//   float2 fadeOutMaxMin;              // Offset:  232 Size:     8 [unused]
//   float2 pauseMaxMin;                // Offset:  240 Size:     8 [unused]
//   float2 stretchMaxMin;              // Offset:  248 Size:     8 [unused]
//   float2 slideMaxMin;                // Offset:  256 Size:     8 [unused]
//   float2 heightMaxMin;               // Offset:  264 Size:     8 [unused]
//   float2 warpMaxMin;                 // Offset:  272 Size:     8 [unused]
//   float2 jitterMaxMin;               // Offset:  280 Size:     8 [unused]
//   float2 rotationMaxMin;             // Offset:  288 Size:     8 [unused]
//   float blurPixels;                  // Offset:  296 Size:     4
//   float prevFrameBoost;              // Offset:  300 Size:     4
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
// bilinearClampler                  sampler      NA          NA             s1      1 
// resolvedScene                     texture  float4          2d             t0      1 
// codeTexture0                      texture  float4          2d             t6      1 
// octogonMask                       texture  float4          2d             t7      1 
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
// SV_POSITION              0   xyzw        0      POS   float   xy  
// TEXCOORD                 0   xy          1     NONE   float   xy  
// TEXCOORD                 3     zw        1     NONE   float     zw
// TEXCOORD                 2   xyzw        2     NONE   float     z 
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
dcl_constantbuffer CB0[19], immediateIndexed
dcl_constantbuffer CB3[1], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_input_ps linear v1.zw
dcl_input_ps linear v2.z
dcl_output o0.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t7.xyzw, s1
mul r0.x, r0.x, v2.z
ge r0.x, l(0.000000), r0.x
discard_nz r0.x
mul r0.xy, v0.xyxx, cb1[44].zwzz
mad r0.zw, r0.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), l(0.000000, 0.000000, -1.000000, -1.000000)
mad r1.xy, v1.zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
add r0.zw, r0.zzzw, -r1.xxxy
dp2 r0.z, r0.zwzz, r0.zwzz
sqrt r0.z, r0.z
min r0.z, r0.z, l(1.000000)
log r0.z, r0.z
mul r0.z, r0.z, l(0.300000)
exp r0.z, r0.z
mul r0.w, cb0[18].z, cb1[44].z
mul r0.w, r0.w, cb3[0].y
mul r0.w, r0.z, r0.w
mad_sat r1.xyzw, r0.wwww, l(-0.56308931, -0.26805860, -0.10714890, -0.65222108), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(-0.29749349, 0.23678830, -0.94028169, 0.28764710), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(0.374713, -0.33693859, 0.45787710, -0.74987531), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(-0.44277370, -0.886701, 0.78879791, -0.427878), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(-0.02906443, -0.20072490, 0.42776331, 0.16513520), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(-0.23078820, 0.64043868, -0.65763211, 0.67459911), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(0.86913669, 0.00676916, 0.28367040, 0.93041968), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mad_sat r2.xyzw, r0.wwww, l(0.51202959, 0.59052241, -0.96844608, -0.18936320), v1.zwzw
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t6.xyzw, s1
add r1.xyz, r1.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t6.xyzw, s1
add r1.xyz, r1.xyzx, r2.xyzx
mul r1.xyz, r1.xyzx, l(0.00000191, 0.00000191, 0.00000191, 0.000000)
mul_sat r0.z, r0.z, cb3[0].z
add r0.w, cb0[18].w, l(-1.000000)
mad r0.z, r0.z, r0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t0.xyzw, s1
mul r0.xyw, r2.xyxz, l(0.00003052, 0.00003052, 0.000000, 0.00003052)
mov_sat r1.w, cb3[0].x
mul_sat r2.x, v2.z, l(0.03333334)
mul r1.w, r1.w, r2.x
mad r1.xyz, r1.xyzx, r0.zzzz, -r0.xywx
mad r0.xyz, r1.wwww, r1.xyzx, r0.xywx
mul o0.xyz, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
mov o0.w, r2.w
ret 
// Approximately 70 instruction slots used