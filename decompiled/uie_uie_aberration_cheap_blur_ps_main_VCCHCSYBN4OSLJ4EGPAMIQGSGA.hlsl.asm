//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:39 2021
//
//
// Buffer Definitions: 
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16
//   float4 scriptVector2;              // Offset:   32 Size:    16
//   float4 scriptVector3;              // Offset:   48 Size:    16
//   float4 scriptVector4;              // Offset:   64 Size:    16
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16
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
// tileMipBilinearSampler            sampler      NA          NA             s1      1 
// colorMapSampler                   texture  float4          2d             t0      1 
// colorMapSampler1                  texture  float4          2d             t6      1 
// colorMapSampler2                  texture  float4          2d             t7      1 
// colorMapSampler3                  texture  float4          2d             t9      1 
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
// COLOR                    0   xyzw        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
dcl_immediateConstantBuffer { { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.073269, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.058669, 0, 0, 0},
                              { 0.046979, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.030122, 0, 0, 0},
                              { 0.024120, 0, 0, 0},
                              { 0.012383, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.009916, 0, 0, 0},
                              { 0.007940, 0, 0, 0},
                              { 0.004077, 0, 0, 0},
                              { 0.001342, 0, 0, 0} }
dcl_constantbuffer CB3[8], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 7
mul r0.xy, cb3[2].xyxx, cb1[44].zwzz
resinfo_indexable(texture2d)(float,float,float,float)_uint r0.zw, l(0), t0.zwxy
utof r0.zw, r0.zzzw
div r0.zw, l(0.000000, 0.000000, 0.500000, 0.500000), r0.zzzw
mul r1.xy, v0.xyxx, cb1[44].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.x, v2.xyxx, t0.xyzw, s1
mul r1.z, cb3[0].y, l(0.200000)
mad r3.xyzw, cb3[0].xxxx, l(-0.00400000, -0.00400000, -0.01066667, -0.01066667), v2.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.y, r3.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t0.xywz, s1
mad r3.xy, cb3[0].xxxx, l(-0.00133333, -0.00133333, 0.000000, 0.000000), v2.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t0.xyzw, s1
dp3 r2.w, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.w, r2.w, l(0.200000)
max r2.z, r1.w, r2.w
frc r3.xy, v2.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t6.xyzw, s1
dp3 r1.w, r2.xyzx, l(0.350000, 0.500000, 0.150000, 0.000000)
max r1.w, r1.w, r2.x
mov_sat r2.w, r1.w
add r4.x, -r2.w, l(1.000000)
mov r4.y, l(0)
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t7.xyzw, s1
add r4.xyz, -r2.xyzx, r4.xyzx
mad r2.xyz, r1.zzzz, r4.xyzx, r2.xyzx
mul r0.xy, r0.xyxx, l(1.33333337, 1.33333337, 0.000000, 0.000000)
lt r1.x, l(0.500000), r1.x
movc r4.x, r1.x, -r0.x, r0.x
lt r0.x, r1.y, l(0.500000)
movc r4.y, r0.x, -r0.y, r0.y
mul r0.xy, r0.zwzz, cb3[3].xyxx
mul r0.xy, r0.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
mov r1.xyz, l(0,0,0,0)
mov r0.zw, l(0,0,0,-3.000000)
loop 
  lt r2.w, l(3.000000), r0.w
  breakc_nz r2.w
  mul r5.y, r0.y, r0.w
  mov r6.xyz, r1.xyzx
  mov r2.w, r0.z
  mov r4.z, l(-3.000000)
  loop 
    lt r4.w, l(3.000000), r4.z
    breakc_nz r4.w
    mul r5.x, r0.x, r4.z
    add r5.xz, r5.xxyx, v2.xxyx
    add r5.xz, r4.xxyx, r5.xxzx
    max r5.xz, r5.xxzx, cb3[7].xxyx
    min r5.xz, r5.xxzx, cb3[7].zzwz
    sample_indexable(texture2d)(float,float,float,float) r5.xzw, r5.xzxx, t0.xwyz, s1
    mad r6.xyz, icb[r2.w + 0].xxxx, r5.xzwx, r6.xyzx
    iadd r2.w, r2.w, l(1)
    add r4.z, r4.z, l(1.000000)
  endloop 
  mov r1.xyz, r6.xyzx
  mov r0.z, r2.w
  add r0.w, r0.w, l(1.000000)
endloop 
mul r0.xyz, r1.xyzx, cb3[1].xxxx
dp3 r0.w, r0.xyzx, l(0.350000, 0.500000, 0.150000, 0.000000)
add r1.x, r1.w, r1.w
max_sat r0.w, r0.w, r1.x
mad r0.xyz, r0.xyzx, l(0.700000, 0.700000, 1.000000, 0.000000), r2.xyzx
mul r1.xyz, r3.xyzx, l(0.000002, 0.000002, 0.000002, 0.000000)
add_sat r1.w, r3.w, r3.w
mad r0.xyz, r1.xyzx, r1.wwww, r0.xyzx
mul o0.w, r0.w, v1.w
dp2 r0.w, cb1[69].zzzz, l(81.239487, 17.348024, 0.000000, 0.000000)
frc r1.y, r0.w
mov r1.z, cb1[69].z
dp2 r0.w, r1.yzyy, l(81.239487, 17.348024, 0.000000, 0.000000)
frc r1.w, r0.w
dp2 r0.w, r1.ywyy, l(81.239487, 17.348024, 0.000000, 0.000000)
frc r1.x, r0.w
dp2 r0.w, r1.xwxx, l(81.239487, 17.348024, 0.000000, 0.000000)
frc r1.y, r0.w
resinfo_indexable(texture2d)(float,float,float,float)_uint r1.zw, l(0), t9.zwxy
div r2.xy, v0.xyxx, cb3[4].yyyy
utof r1.zw, r1.zzzw
mad r1.xy, r1.xyxx, r1.zwzz, r2.xyxx
mul r2.xy, r1.zwzz, r1.xyxx
ge r2.xy, r2.xyxx, -r2.xyxx
movc r1.zw, r2.xxxy, r1.zzzw, -r1.zzzw
div r2.xy, l(1.000000, 1.000000, 1.000000, 1.000000), r1.zwzz
mul r1.xy, r1.xyxx, r2.xyxx
frc r1.xy, r1.xyxx
mul r1.xy, r1.xyxx, r1.zwzz
ftoi r1.xy, r1.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t9.xyzw
mad r1.xyz, r1.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
mul r1.xyz, r1.xyzx, cb3[4].xxxx
mad_sat o0.xyz, r1.xyzx, r0.xyzx, r0.xyzx
ret 
// Approximately 94 instruction slots used
