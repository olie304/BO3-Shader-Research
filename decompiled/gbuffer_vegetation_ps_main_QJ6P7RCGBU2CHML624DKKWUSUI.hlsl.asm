//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:40 2021
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
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float2 wind1Parms;                 // Offset:  184 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  192 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  200 Size:     8 [unused]
//   float2 vertexColorScale;           // Offset:  208 Size:     8 [unused]
//   float3 treeCanopyScatterColor;     // Offset:  224 Size:    12
//   float backsideGlossScale;          // Offset:  236 Size:     4
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
//   float4 debugColorOverride;         // Offset:  928 Size:    16
//   float4 debugAlphaOverride;         // Offset:  944 Size:    16 [unused]
//   float4 debugNormalOverride;        // Offset:  960 Size:    16
//   float4 debugSpecularOverride;      // Offset:  976 Size:    16 [unused]
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
// colorMap                          texture  float4          2d             t0      1 
// tintMask                          texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// specColorMapThick                 texture  float4          2d            t11      1 
// underFfuseMap                     texture  float4          2d            t12      1 
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
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float      w
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
dcl_constantbuffer CB1[65], immediateIndexed
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
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s1
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t9.yzwx, s2
add r1.w, -cb0[11].x, cb0[11].y
mad r0.w, r0.w, r1.w, cb0[11].x
mul_sat r0.w, r0.w, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v2.xyxx, t7.xyzw, s3
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r2.z, r2.z, r2.z
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r2.z
log r0.w, r0.w
mul r0.w, r0.w, l(-0.05882353)
max r0.w, r0.w, l(0.000000)
mad r1.w, cb1[62].x, r1.w, cb0[11].x
mul_sat r1.w, r1.w, l(0.05882353)
mul r1.w, r1.w, l(-17.000000)
exp r1.w, r1.w
add r1.w, r1.w, r2.z
log r1.w, r1.w
mul r1.w, r1.w, l(-0.05882353)
max r1.w, r1.w, l(0.000000)
lt r2.z, l(0.000000), cb1[64].w
if_nz r2.z
  ftoi r2.z, cb1[64].w
  lod r2.w, v2.xyxx, t0.y, s1
  lod r3.x, v2.xyxx, t0.x, s1
  lt r2.w, r2.w, r3.x
  lt r3.x, l(0.000000), r3.x
  and r3.yzw, r2.zzzz, l(0, 1, 2, 4)
  movc r4.xyz, r3.yyyy, l(1.000000,0,1.000000,0), r0.xyzx
  movc r5.xyz, r3.zzzz, l(0,1.000000,1.000000,0), r0.xyzx
  movc r3.xyz, r3.xxxx, r4.xyzx, r5.xyzx
  movc r4.xyz, r3.wwww, l(0,1.000000,0,0), r0.xyzx
  movc r0.xyz, r2.wwww, r3.xyzx, r4.xyzx
endif 
add r1.w, -r0.w, r1.w
mad r0.w, cb1[62].w, r1.w, r0.w
if_z v6.x
  max r1.w, cb0[14].w, l(0.000100)
  mul r0.w, r0.w, r1.w
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v2.xyxx, t12.xyzw, s1
  lt r1.w, r3.w, l(0.500000)
  discard_nz r1.w
  mul r1.xyz, r1.xyzx, r3.xyzx
else 
  add r3.xyz, -r0.xyzx, cb1[58].xyzx
  mad r1.xyz, cb1[58].wwww, r3.xyzx, r0.xyzx
endif 
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t10.xyzw, s4
mul r0.y, r0.x, v1.w
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r0.z, r2.xyxx, r2.xyxx
add r0.z, -r0.z, l(1.000000)
max r0.z, r0.z, l(0.000000)
sqrt r0.z, r0.z
movc r1.w, v6.x, l(1.000000), l(-1.000000)
dp3 r2.z, v3.xyzx, v3.xyzx
rsq r2.z, r2.z
mul r3.xyz, r2.zzzz, v3.xyzx
mul r4.xyz, r1.wwww, r3.xyzx
dp3 r2.z, v4.xyzx, v4.xyzx
rsq r2.z, r2.z
mul r5.xyz, r2.zzzz, v4.xyzx
mul r5.xyz, r1.wwww, r5.xyzx
dp3 r2.z, v5.xyzx, v5.xyzx
rsq r2.z, r2.z
mul r6.xyz, r2.zzzz, v5.xyzx
mul r6.xyz, r1.wwww, r6.xyzx
mul r2.yzw, r2.yyyy, r6.xxyz
mad r2.xyz, r5.xyzx, r2.xxxx, r2.yzwy
mad r2.xyz, r4.xyzx, r0.zzzz, r2.xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
mad r0.x, -r0.x, v1.w, cb1[63].x
mad o2.z, cb1[63].w, r0.x, r0.y
movc r0.xyz, v6.xxxx, v3.xyzx, -v3.xyzx
dp3 r2.w, r0.xyzx, r0.xyzx
rsq r2.w, r2.w
mad r0.xyz, r0.xyzx, r2.wwww, -r2.xyzx
mad r2.yzw, cb1[60].wwww, r0.xxyz, r2.xxyz
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t11.xyzw, s1
add r0.x, -r0.x, l(1.000000)
mul r5.xyz, r1.xyzx, cb0[14].xyzx
mul r0.y, r0.x, r5.z
add r0.z, r4.y, r4.x
mad r0.z, r3.z, r1.w, r0.z
mul r0.z, r0.z, l(0.500000)
mad r3.xyz, r3.xyzx, r1.wwww, -r0.zzzz
max r1.w, r3.z, r3.y
max r1.w, r1.w, r3.x
max r0.z, r0.z, r1.w
eq r1.w, r0.z, r3.x
mul r4.yzw, r2.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r3.x, r0.z, l(2.000000)
mov r4.x, l(1)
mov r2.x, l(0)
movc r2.xyzw, r1.wwww, r4.xyzw, r2.xyzw
movc r0.z, r1.w, r3.x, r0.z
eq r1.w, r0.z, r3.y
mul r4.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r3.x, r0.z, l(2.000000)
mov r4.x, l(2)
movc r2.xyzw, r1.wwww, r4.xyzw, r2.xyzw
movc r0.z, r1.w, r3.x, r0.z
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
mul r2.yz, r0.zzzz, r2.yyzy
mad o1.xy, r2.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.500000)
utof r0.z, r2.x
mul o1.w, r0.z, l(0.33333334)
ftou r0.zw, v0.xxxy
mad r2.y, r5.x, r0.x, -r0.y
mad r0.y, r2.y, l(0.500000), r0.y
mad r2.z, r5.y, r0.x, -r0.y
mad r2.x, r2.z, l(0.500000), r0.y
and r0.xy, r0.zwzz, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r2.xyxx, r2.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.xyz, r1.xyzx
mov o0.w, l(1.000000)
mov o2.w, l(0.66666669)
ret 
// Approximately 144 instruction slots used
