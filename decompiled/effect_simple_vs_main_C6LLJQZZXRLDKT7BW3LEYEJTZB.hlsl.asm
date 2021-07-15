//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:25:25 2021
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
//   float2 falloffParms;               // Offset:  240 Size:     8
//   uint zFeatherComputeSprites;       // Offset:  248 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  252 Size:     4 [unused]
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
//   row_major float4x4 inverseViewMatrix;// Offset:  256 Size:    64 [unused]
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
// POSITION                 0   xyzw        0     NONE   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy  
// NORMAL                   0   xyzw        3     NONE   float      w
// TANGENT                  0   xyzw        4     NONE   float   xyzw
// SV_VertexID              0   x           5   VERTID    uint       
// TEXCOORD                15   x           6     NONE    uint       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xyz         2     NONE   float   xyz 
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
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xy
dcl_input v3.w
dcl_input v4.xyzw
dcl_output_siv o0.xyzw, position
dcl_output o1.xyzw
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyz
dcl_output o6.xy
dcl_output o6.zw
dcl_output o7.x
dcl_temps 2
mul r0.xyzw, cb1[9].xyzw, -cb1[24].yyyy
mad r0.xyzw, -cb1[24].xxxx, cb1[8].xyzw, r0.xyzw
mad r0.xyzw, -cb1[24].zzzz, cb1[10].xyzw, r0.xyzw
add r0.xyzw, r0.xyzw, cb1[11].xyzw
mul r1.xyzw, v0.yyyy, cb1[9].xyzw
mad r1.xyzw, v0.xxxx, cb1[8].xyzw, r1.xyzw
mad r1.xyzw, v0.zzzz, cb1[10].xyzw, r1.xyzw
add r0.xyzw, r0.xyzw, r1.xyzw
mov o0.xyzw, r0.xyzw
max r1.z, cb0[17].w, l(0.000000)
max r0.x, r1.z, l(0.100000)
div r0.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
mul_sat r0.y, r0.x, r0.w
ge r0.x, l(1.000000), r0.x
mul r0.y, r0.y, v1.w
movc o1.w, r0.x, r0.y, v1.w
mov o1.xyz, v1.xyzx
mul r0.xyzw, v4.xyzw, l(1023.000000, 1023.000000, 1023.000000, 3.000000)
ftou r0.xyzw, r0.xyzw
ishl r0.yzw, r0.yyzw, l(0, 10, 20, 30)
or r0.x, r0.y, r0.x
or r0.x, r0.z, r0.x
or r0.z, r0.w, r0.x
and r0.w, v0.w, l(0x0000ffff)
utof r0.w, r0.w
mul r0.x, r0.w, l(0.00390625)
eq r0.w, v3.w, l(0.000000)
mov r0.y, l(1.000000)
movc r1.xy, r0.wwww, r0.xyxx, r0.xzxx
mul o2.xy, r1.yyyy, v2.xyxx
mov o2.z, r1.y
ushr r0.x, v0.w, l(16)
f16tof32 o3.w, r0.x
add o3.xyz, v0.xyzx, -cb1[24].xyzx
mov r1.w, l(0)
mov o4.xyzw, r1.wxzw
mov o5.xyz, l(0,0,0,0)
mul r0.xy, cb0[15].xyxx, l(0.01745329, 0.01745329, 0.000000, 0.000000)
sincos null, r0.xy, r0.xyxx
mul r0.yz, r0.xxyx, r0.xxyx
mad r0.x, r0.x, r0.x, -r0.z
div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r0.x
mad r1.y, -r0.y, r1.x, l(1.000000)
eq r0.xy, cb0[15].xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r0.x, r0.y, r0.x
movc o6.xy, r0.xxxx, l(0,1.000000,0,0), r1.xyxx
mov o6.zw, v2.xxxy
mov o7.x, l(0)
ret 
// Approximately 49 instruction slots used
