//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:38 2021
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
//   float3 specColorTint;              // Offset:  160 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  172 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  176 Size:     8 [unused]
//   float2 rotateUVs;                  // Offset:  184 Size:     8 [unused]
//   float2 scrollUVs;                  // Offset:  192 Size:     8 [unused]
//   float2 scaleUVs;                   // Offset:  200 Size:     8 [unused]
//   float2 offsetUVs;                  // Offset:  208 Size:     8 [unused]
//   float2 zoomUVs;                    // Offset:  216 Size:     8 [unused]
//   float zoomRate;                    // Offset:  224 Size:     4 [unused]
//   float layerDepth;                  // Offset:  228 Size:     4 [unused]
//   bool clampU;                       // Offset:  232 Size:     4 [unused]
//   bool clampV;                       // Offset:  236 Size:     4 [unused]
//   uint zFeatherComputeSprites;       // Offset:  240 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  244 Size:     4 [unused]
//   float4 levelsControls;             // Offset:  256 Size:    16 [unused]
//   bool useOldHDRScale;               // Offset:  272 Size:     4 [unused]
//   float2 scaleUVsAlpha;              // Offset:  276 Size:     8 [unused]
//   float zFeatherOverride;            // Offset:  284 Size:     4
//   float2 scaleUVsColor;              // Offset:  288 Size:     8 [unused]
//   float2 offsetUVsColor;             // Offset:  296 Size:     8 [unused]
//   float2 rotateUVsColor;             // Offset:  304 Size:     8 [unused]
//   float2 scrollUVsColor;             // Offset:  312 Size:     8 [unused]
//   float2 scaleUVsEmissive;           // Offset:  320 Size:     8 [unused]
//   float2 offsetUVsEmissive;          // Offset:  328 Size:     8 [unused]
//   float2 rotateUVsEmissive;          // Offset:  336 Size:     8 [unused]
//   float2 scrollUVsEmissive;          // Offset:  344 Size:     8 [unused]
//   float translucentShadowOpacity;    // Offset:  352 Size:     4 [unused]
//
// }
//
// cbuffer PerSceneConsts
// {
//
//   row_major float4x4 projectionMatrix;// Offset:    0 Size:    64 [unused]
//   row_major float4x4 viewMatrix;     // Offset:   64 Size:    64 [unused]
//   row_major float4x4 viewProjectionMatrix;// Offset:  128 Size:    64
//   row_major float4x4 inverseProjectionMatrix;// Offset:  192 Size:    64 [unused]
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64
//   row_major float4x4 inverseViewProjectionMatrix;// Offset:  320 Size:    64 [unused]
//   float4 eyeOffset;                  // Offset:  384 Size:    16
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
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyz 
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyz         2     NONE    uint   xyz 
// NORMAL                   0   xyz         3     NONE   float   xyz 
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyzw        5     NONE   float   xyzw
// TEXCOORD                 3   xyzw        6     NONE    uint   xyzw
// SV_VertexID              0   x           7   VERTID    uint   x   
// TEXCOORD                15   x           8     NONE    uint       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
// TEXCOORD                 2   xyzw        4     NONE   float   xyzw
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 4   xy          6     NONE   float   xy  
// TEXCOORD                 5     zw        6     NONE   float     zw
// TEXCOORD                 6   x           7     NONE    uint   x   
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[18], immediateIndexed
dcl_constantbuffer CB1[25], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyz
dcl_input v3.xyz
dcl_input v4.xyz
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input_sgv v7.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyz
dcl_output o6.xy
dcl_output o6.zw
dcl_output o7.x
dcl_temps 5
mov r0.z, l(0)
add r1.xyz, -v0.yzxy, cb1[24].yzxy
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
mul r2.xyz, r1.xyzx, cb1[17].zxyz
mad r2.xyz, cb1[17].yzxy, r1.yzxy, -r2.xyzx
dp3 r0.w, r2.xyzx, r2.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r2.xyzx
and r3.xyz, v6.zzzz, l(4, 1, 2, 0)
movc r2.xyz, r3.yyyy, r2.xyzx, cb1[16].xyzx
movc r1.xy, r3.yyyy, r1.zxzz, -cb1[18].xyxx
mov r1.zw, -r1.yyyy
dp2 r0.w, r1.xzxx, r1.xwxx
rsq r0.w, r0.w
mul r0.x, r0.w, -r1.y
mul r0.y, r0.w, r1.x
movc r0.xyz, r3.zzzz, r0.xyzx, r2.xyzx
mad r1.xyz, v4.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
movc r0.xyz, r3.xxxx, r1.xyzx, r0.xyzx
movc r1.xyz, r3.zzzz, l(0,0,1.000000,0), cb1[17].xyzx
mad r2.xyz, v3.xyzx, l(2.001957, 2.001957, 2.001957, 0.000000), l(-1.00195694, -1.00195694, -1.00195694, 0.000000)
movc r1.xyz, r3.xxxx, r2.xyzx, r1.xyzx
utof r2.xyz, v6.wxyw
mul r2.xyz, r2.xyzx, l(0.00009587, 0.00390625, 0.062500, 0.000000)
sincos r2.x, r3.x, r2.x
mul r3.yzw, r1.xxyz, r2.xxxx
mul r1.xyz, r1.xyzx, r3.xxxx
mad r1.xyz, r0.xyzx, r2.xxxx, -r1.xyzx
mad r0.xyz, r0.xyzx, r3.xxxx, r3.yzwy
mul r0.xyz, r0.xyzx, v5.zzzz
mul r1.xyz, r1.xyzx, v5.wwww
mad r3.xyz, r0.xyzx, v5.xxxx, v0.xyzx
mad r3.xyz, r1.xyzx, v5.yyyy, r3.xyzx
bfi r0.w, l(2), l(1), v7.x, l(0)
and r2.xw, v7.xxxx, l(3, 0, 0, 2)
xor r0.w, r0.w, r2.x
utof r4.z, r2.w
and r0.w, r0.w, l(2)
utof r0.w, r0.w
add r0.w, r0.w, l(-1.000000)
mul r1.xyz, r0.wwww, r1.xyzx
mov r4.w, -r0.w
add r2.xw, r4.zzzw, l(0.000000, 0.000000, 0.000000, 1.000000)
add r0.w, r4.z, l(-1.000000)
mad r0.xyz, r0.xyzx, r0.wwww, -r1.xyzx
add r0.xyz, r0.xyzx, r3.xyzx
mul r1.xy, r2.xwxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r3.xyzw, r0.yyyy, cb1[9].xyzw
mad r3.xyzw, r0.xxxx, cb1[8].xyzw, r3.xyzw
mad r3.xyzw, r0.zzzz, cb1[10].xyzw, r3.xyzw
add o3.xyz, r0.xyzx, -cb1[24].xyzx
mul r0.xyzw, cb1[9].xyzw, -cb1[24].yyyy
mad r0.xyzw, -cb1[24].xxxx, cb1[8].xyzw, r0.xyzw
mad r0.xyzw, -cb1[24].zzzz, cb1[10].xyzw, r0.xyzw
add r0.xyzw, r0.xyzw, cb1[11].xyzw
add r0.xyzw, r0.xyzw, r3.xyzw
mov o0.xyzw, r0.xyzw
lt r0.x, l(0.000000), cb0[17].w
movc r0.x, r0.x, cb0[17].w, r2.z
mov o4.y, r2.y
max r0.y, r0.x, l(0.100000)
mov o4.z, r0.x
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
mul_sat r0.y, r0.x, r0.w
ge r0.x, l(1.000000), r0.x
mul r0.y, r0.y, v1.w
movc o1.w, r0.x, r0.y, v1.w
mov o1.xyz, v1.xyzx
ushr r0.xy, v2.xyxx, l(28, 16, 0, 0)
mov r2.w, r0.x
ubfe r2.xyz, l(8, 4, 8, 0), l(8, 24, 16, 0), v2.xxxx
ishl r0.zw, r2.yyyw, l(0, 0, 23, 23)
iadd r0.zw, -r0.zzzw, l(0, 0, 0x3f800000, 0x3f800000)
mul r1.zw, r1.xxxy, r0.zzzw
ubfe r2.w, r2.y, l(0), r2.x
ubfe r2.x, r0.x, r2.y, r2.x
utof r3.zw, r2.wwwx
mad r3.zw, r3.zzzw, r0.zzzw, r1.zzzw
and r2.xw, v2.xxxy, l(255, 0, 0, 0x0000ffff)
ubfe r0.x, r0.x, r2.y, r2.x
utof r0.y, r0.y
utof r4.y, r0.x
ubfe r0.x, r2.y, l(0), r2.x
utof r2.xy, r2.wzww
mul r2.y, r2.y, l(0.00390625)
movc o4.x, v2.x, r2.y, l(0)
utof r4.x, r0.x
mad r3.xy, r4.xyxx, r0.zwzz, r1.zwzz
movc o2.xyzw, v2.xxxx, r3.xyzw, r1.xyxy
mov o6.zw, r1.xxxy
f16tof32 o3.w, v2.z
mov o4.w, l(0)
mov o5.xyz, l(0,0,0,0)
eq r0.x, r2.x, l(0.000000)
mul r0.z, r2.x, l(0.01745329)
sincos null, r0.z, r0.z
mul r0.z, r0.z, r0.z
eq r0.w, r0.y, l(0.000000)
mul r0.y, r0.y, l(0.01745329)
sincos null, r0.y, r0.y
mad r0.y, -r0.y, r0.y, r0.z
div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
and r0.x, r0.w, r0.x
mad r1.y, -r0.z, r1.x, l(1.000000)
movc o6.xy, r0.xxxx, l(0,1.000000,0,0), r1.xyxx
mov o7.x, l(0)
ret 
// Approximately 109 instruction slots used
