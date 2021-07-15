//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:30 2021
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
//   float4 LightTextColor;             // Offset:  160 Size:    16
//   float4 LightRevealColor;           // Offset:  176 Size:    16
//   float Indent;                      // Offset:  192 Size:     4
//   float4 Background;                 // Offset:  208 Size:    16
//   float DebugTime;                   // Offset:  224 Size:     4
//   float LightOutlinePower;           // Offset:  228 Size:     4
//   float4 LightDisolveColor;          // Offset:  240 Size:    16
//   float BlurScale;                   // Offset:  256 Size:     4
//
// }
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16
//   float4 scriptVector2;              // Offset:   32 Size:    16
//   float4 scriptVector3;              // Offset:   48 Size:    16
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
//   float4 gameTime;                   // Offset: 1104 Size:    16
//   float4 gameTick;                   // Offset: 1120 Size:    16 [unused]
//   float4 subpixelOffset;             // Offset: 1136 Size:    16 [unused]
//   float4 viewportDimensions;         // Offset: 1152 Size:    16 [unused]
//   float4 viewSpaceScaleBias;         // Offset: 1168 Size:    16 [unused]
//   float4 ui3dUVSetup0;               // Offset: 1184 Size:    16 [unused]
//   float4 ui3dUVSetup1;               // Offset: 1200 Size:    16 [unused]
//   float4 ui3dUVSetup2;               // Offset: 1216 Size:    16 [unused]
//   float4 ui3dUVSetup3;               // Offset: 1232 Size:    16 [unused]
//   float4 ui3dUVSetup4;               // Offset: 1248 Size:    16
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
// FutureMap_Sampler                 sampler      NA          NA             s1      1 
// ui3dSampler_C1_P0_sampler         sampler      NA          NA             s2      1 
// FutureMap                         texture  float4          2d             t0      1 
// ui3dSampler_C1_P0                 texture  float4          2d             t6      1 
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
// TEXCOORD                 2   xyzw        2     NONE   float       
// TEXCOORD                 3   xyzw        3     NONE   float       
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
dcl_constantbuffer CB0[17], immediateIndexed
dcl_constantbuffer CB3[4], immediateIndexed
dcl_constantbuffer CB1[79], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 7
mul r0.x, cb0[12].x, cb3[3].x
mul r0.y, r0.x, l(0.500000)
mov r1.x, l(1.000000)
mul r0.xw, cb3[0].xxxy, l(0.00097656, 0.000000, 0.000000, 0.00195313)
mad r1.yz, cb3[0].wwzw, l(0.000000, 0.00195313, 0.00097656, 0.000000), -r0.wwxw
mul r2.xy, r1.yxyy, v1.yxyy
mad r2.z, cb3[0].y, l(0.00195313), r2.x
mad r1.xy, r2.yzyy, cb1[78].xyxx, cb1[78].zwzz
mov r0.z, l(0)
add r2.yz, -r0.zzyz, r1.yyxy
mad_sat r3.xyzw, cb0[16].xxxx, l(-0.008000, -0.007000, -0.006000, 0.001000), r2.zzzz
mov r4.xzw, r3.xxyz
mov_sat r5.xyzw, r2.yzzy
mov r4.y, r5.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r4.xyxx, t6.xwyz, s2
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.zyzz, t6.xywz, s2
sample_indexable(texture2d)(float,float,float,float) r0.w, r4.wyww, t6.xyzw, s2
mad r0.y, r0.z, l(2.000000), r0.y
mad r0.y, r0.w, l(3.000000), r0.y
mad_sat r6.xyzw, cb0[16].xxxx, l(-0.00500000, -0.004000, -0.003000, -0.002000), r2.zzzz
mov r4.xzw, r6.xxyz
mov r3.x, r6.w
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.xyxx, t6.xywz, s2
mad r0.y, r0.z, l(4.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.zyzz, t6.xywz, s2
sample_indexable(texture2d)(float,float,float,float) r0.w, r4.wyww, t6.xyzw, s2
mov r3.y, r4.y
mad r0.y, r0.z, l(5.000000), r0.y
mad r0.y, r0.w, l(6.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r3.xyxx, t6.xywz, s2
mad r0.y, r0.z, l(7.000000), r0.y
mad_sat r4.xyzw, cb0[16].xxxx, l(0.002000, -0.001000, 0.003000, 0.004000), r2.zzzz
mov r3.z, r4.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r3.zyzz, t6.xywz, s2
mad r0.y, r0.z, l(7.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r5.yxyy, t6.xywz, s2
sample_indexable(texture2d)(float,float,float,float) r0.w, r5.zwzz, t6.xyzw, s2
mad r0.y, r0.z, l(7.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r3.wyww, t6.xywz, s2
mov r4.y, r3.y
mad r0.y, r0.z, l(7.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.xyxx, t6.xywz, s2
mad r0.y, r0.z, l(7.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.zyzz, t6.xywz, s2
sample_indexable(texture2d)(float,float,float,float) r1.x, r4.wyww, t6.wxyz, s2
mad r0.y, r0.z, l(6.000000), r0.y
mad r0.y, r1.x, l(5.000000), r0.y
mad_sat r3.xyzw, cb0[16].xxxx, l(0.008000, 0.00500000, 0.006000, 0.007000), r2.zzzz
mov r4.xzw, r3.yyzw
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.xyxx, t6.xywz, s2
mad r0.y, r0.z, l(4.000000), r0.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r4.zyzz, t6.xywz, s2
sample_indexable(texture2d)(float,float,float,float) r1.x, r4.wyww, t6.wxyz, s2
mov r3.y, r4.y
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.xyxx, t6.xwyz, s2
mad r0.y, r0.z, l(3.000000), r0.y
mad r0.y, r1.x, l(2.000000), r0.y
add r0.y, r1.y, r0.y
mul r0.y, r0.y, l(0.01298701)
mov r1.x, l(0.500000)
mul r3.xy, cb1[69].wwww, l(0.100000, 0.01314385, 0.000000, 0.000000)
frc r3.xy, r3.xyxx
frc r0.z, r3.y
mul r1.w, r3.x, l(10.000000)
div r3.xy, v0.xyxx, cb1[44].xyxx
add r1.y, -r0.z, r3.y
sample_indexable(texture2d)(float,float,float,float) r0.z, r1.xyxx, t0.xywz, s1
add r1.x, -r0.z, l(1.000000)
mad r0.z, r1.x, l(0.800000), r0.z
mul r0.y, r0.z, r0.y
max r0.y, r0.y, r0.w
add r0.y, -r0.w, r0.y
mul r0.z, cb0[14].x, l(0.100000)
frc r0.z, r0.z
mul r0.z, r0.z, l(10.000000)
lt r1.x, l(0.000000), cb0[14].x
movc r0.z, r1.x, r0.z, r1.w
mul r1.y, r0.z, l(0.500000)
max r3.yzw, r0.zzzz, l(0.000000, 4.000000, 4.000000, 7.000000)
min r3.yzw, r3.yyzw, l(0.000000, 5.000000, 5.000000, 8.000000)
add r3.yzw, r3.yyzw, l(0.000000, -4.000000, -4.000000, -7.000000)
mul r0.z, cb3[2].x, l(4.000000)
movc r0.z, r1.x, r1.y, r0.z
mad r1.y, r0.z, r1.z, r0.x
lt r0.z, l(0.990000), r0.z
mad r0.x, cb3[1].x, l(0.00097656), -r0.x
add r1.zw, r1.yyyy, l(0.000000, 0.000000, -0.100000, -0.500000)
add r2.w, -r1.z, r1.y
add r1.yzw, -r1.yyzw, r3.xxxx
mul_sat r4.xy, r1.yyyy, l(50.000000, -10.000000, 0.000000, 0.000000)
div_sat r1.y, r1.z, r2.w
mul_sat r1.z, r1.w, l(5.00000048)
mul r1.y, r1.y, r1.y
mul r1.y, r1.y, r1.y
mad r1.w, r1.z, l(-2.000000), l(3.000000)
mul r1.z, r1.z, r1.z
mad r1.z, r1.w, r1.z, l(-0.500000)
mad r1.z, -|r1.z|, l(2.000000), l(1.000000)
max r1.y, r1.z, r1.y
mad r1.z, r4.y, l(-2.000000), l(3.000000)
mul r1.w, r4.y, r4.y
add r2.w, -r4.x, l(1.000000)
mad r1.z, r1.z, r1.w, l(-0.500000)
mad r1.z, -|r1.z|, l(2.000000), l(1.000000)
max r1.z, r1.z, r1.y
mad r1.z, r1.z, l(0.70000005), l(0.900000)
min r1.z, r1.z, l(1.000000)
mad r0.y, r1.z, r0.y, r0.w
mul r4.w, r2.w, r0.y
add r5.xyz, -cb0[10].xyzx, cb0[11].xyzx
mad r1.yzw, r1.yyyy, r5.xxyz, cb0[10].xxyz
add r5.xyz, -r1.yzwy, cb0[15].xyzx
mul r6.xyz, cb3[2].yzwy, cb3[2].yzwy
mul r6.xyz, r6.xyzx, r6.xyzx
movc r3.xyz, r1.xxxx, r3.yzwy, r6.xyzx
mad r5.xyz, r3.xxxx, r5.xyzx, r1.yzwy
movc r0.yzw, r0.zzzz, r5.xxyz, r1.yyzw
add r1.xyz, -r0.yzwy, cb0[15].xyzx
mad r4.xyz, r3.xxxx, r1.xyzx, r0.yzwy
add r1.xyzw, -r4.xyzw, l(0.500000, 0.500000, 0.500000, 0.000000)
mad r1.xyzw, r3.xxxx, r1.wxyz, r4.wxyz
log r0.y, r1.x
mul r0.y, r0.y, cb0[14].y
exp r0.y, r0.y
mul r0.yzw, r1.yyzw, r0.yyyy
mov_sat r1.x, r1.x
min r1.y, r3.y, l(1.000000)
mad r1.z, r1.y, l(-2.000000), l(3.000000)
mul r1.y, r1.y, r1.y
mul r1.y, r1.y, r1.z
mad r2.x, r1.y, r0.x, r2.z
mov_sat r2.xy, r2.xyxx
mul r1.yz, cb3[1].xxyx, l(0.000000, 0.00097656, 0.00097656, 0.000000)
lt r0.x, r1.y, r2.x
lt r1.y, r2.x, r1.z
sample_indexable(texture2d)(float,float,float,float) r1.z, r2.xyxx, t6.xywz, s2
mad r2.xyzw, cb0[10].xyzw, r1.zzzz, l(-0.500000, -0.500000, -0.500000, -0.000000)
and r0.x, r0.x, r1.y
and r0.x, r0.x, l(0x3f800000)
mad r2.xyzw, r0.xxxx, r2.xyzw, l(0.500000, 0.500000, 0.500000, 0.000000)
mov r4.xyz, cb0[15].xyzx
mov r4.w, l(0)
add r4.xyzw, -r2.xyzw, r4.xyzw
mad r2.xyzw, r3.zzzz, r4.xyzw, r2.xyzw
log r0.x, r3.x
mul r0.x, r0.x, l(0.250000)
exp r0.x, r0.x
mov r1.yzw, l(0,1.000000,1.000000,1.000000)
mad r1.yzw, r2.xxyz, r1.yyzw, -r0.yyzw
mul r2.x, r0.x, r2.w
mad_sat r3.w, r2.w, r0.x, r1.x
log r0.x, r2.x
mul r0.x, r0.x, cb0[14].y
exp r0.x, r0.x
mad r3.xyz, r0.xxxx, r1.yzwy, r0.yzwy
add r0.xyz, r3.xyzx, -cb0[13].xyzx
mad r0.xyz, r3.wwww, r0.xyzx, cb0[13].xyzx
lt r1.x, l(0.800000), cb0[13].w
mov r0.w, l(1.000000)
movc r0.xyzw, r1.xxxx, r0.xyzw, r3.xyzw
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret 
// Approximately 163 instruction slots used
