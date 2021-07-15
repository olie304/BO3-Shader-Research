//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:47 2021
//
//
// Buffer Definitions: 
//
// cbuffer PostFxCBuffer
// {
//
//   float4 postFxControl0;             // Offset:    0 Size:    16
//   float4 postFxControl1;             // Offset:   16 Size:    16 [unused]
//   float4 postFxControl2;             // Offset:   32 Size:    16 [unused]
//   float4 postFxControl3;             // Offset:   48 Size:    16 [unused]
//   float4 postFxControl4;             // Offset:   64 Size:    16 [unused]
//   float4 postFxControl5;             // Offset:   80 Size:    16 [unused]
//   float4 postFxControl6;             // Offset:   96 Size:    16 [unused]
//   float4 postFxControl7;             // Offset:  112 Size:    16 [unused]
//   float4 postFxControl8;             // Offset:  128 Size:    16 [unused]
//   float4 postFxControl9;             // Offset:  144 Size:    16 [unused]
//   float4 postFxControlA;             // Offset:  160 Size:    16 [unused]
//   float4 postFxControlB;             // Offset:  176 Size:    16 [unused]
//   float4 postFxControlC;             // Offset:  192 Size:    16 [unused]
//   float4 postFxControlD;             // Offset:  208 Size:    16 [unused]
//   float4 postFxControlE;             // Offset:  224 Size:    16 [unused]
//   float4 postFxControlF;             // Offset:  240 Size:    16 [unused]
//   float4 postFxConst00;              // Offset:  256 Size:    16 [unused]
//   float4 postFxConst01;              // Offset:  272 Size:    16 [unused]
//   float4 postFxConst02;              // Offset:  288 Size:    16 [unused]
//   float4 postFxConst03;              // Offset:  304 Size:    16 [unused]
//   float4 postFxConst04;              // Offset:  320 Size:    16 [unused]
//   float4 postFxConst05;              // Offset:  336 Size:    16 [unused]
//   float4 postFxConst06;              // Offset:  352 Size:    16 [unused]
//   float4 postFxConst07;              // Offset:  368 Size:    16 [unused]
//   float4 postFxConst08;              // Offset:  384 Size:    16 [unused]
//   float4 postFxConst09;              // Offset:  400 Size:    16 [unused]
//   float4 postFxConst10;              // Offset:  416 Size:    16 [unused]
//   float4 postFxConst11;              // Offset:  432 Size:    16 [unused]
//   float4 postFxConst12;              // Offset:  448 Size:    16 [unused]
//   float4 postFxConst13;              // Offset:  464 Size:    16 [unused]
//   float4 postFxConst14;              // Offset:  480 Size:    16 [unused]
//   float4 postFxConst15;              // Offset:  496 Size:    16 [unused]
//   float4 postFxConst16;              // Offset:  512 Size:    16 [unused]
//   float4 postFxConst17;              // Offset:  528 Size:    16 [unused]
//   float4 postFxConst18;              // Offset:  544 Size:    16 [unused]
//   float4 postFxConst19;              // Offset:  560 Size:    16 [unused]
//   float4 postFxConst20;              // Offset:  576 Size:    16 [unused]
//   float4 postFxConst21;              // Offset:  592 Size:    16 [unused]
//   float4 postFxConst22;              // Offset:  608 Size:    16 [unused]
//   float4 postFxConst23;              // Offset:  624 Size:    16 [unused]
//   float4 postFxConst24;              // Offset:  640 Size:    16 [unused]
//   float4 postFxConst25;              // Offset:  656 Size:    16 [unused]
//   float4 postFxConst26;              // Offset:  672 Size:    16 [unused]
//   float4 postFxConst27;              // Offset:  688 Size:    16 [unused]
//   float4 postFxConst28;              // Offset:  704 Size:    16 [unused]
//   float4 postFxConst29;              // Offset:  720 Size:    16 [unused]
//   float4 postFxConst30;              // Offset:  736 Size:    16 [unused]
//   float4 postFxConst31;              // Offset:  752 Size:    16 [unused]
//   float4 postFxConst32;              // Offset:  768 Size:    16 [unused]
//   float4 postFxConst33;              // Offset:  784 Size:    16 [unused]
//   float4 postFxConst34;              // Offset:  800 Size:    16 [unused]
//   float4 postFxConst35;              // Offset:  816 Size:    16 [unused]
//   float4 postFxConst36;              // Offset:  832 Size:    16 [unused]
//   float4 postFxConst37;              // Offset:  848 Size:    16 [unused]
//   float4 postFxConst38;              // Offset:  864 Size:    16 [unused]
//   float4 postFxConst39;              // Offset:  880 Size:    16 [unused]
//   float4 postFxConst40;              // Offset:  896 Size:    16 [unused]
//   float4 postFxConst41;              // Offset:  912 Size:    16 [unused]
//   float4 postFxConst42;              // Offset:  928 Size:    16 [unused]
//   float4 postFxConst43;              // Offset:  944 Size:    16 [unused]
//   float4 postFxConst44;              // Offset:  960 Size:    16 [unused]
//   float4 postFxConst45;              // Offset:  976 Size:    16 [unused]
//   float4 postFxConst46;              // Offset:  992 Size:    16 [unused]
//   float4 postFxConst47;              // Offset: 1008 Size:    16 [unused]
//   float4 postFxConst48;              // Offset: 1024 Size:    16 [unused]
//   float4 postFxConst49;              // Offset: 1040 Size:    16 [unused]
//   float4 postFxConst50;              // Offset: 1056 Size:    16 [unused]
//   float4 postFxConst51;              // Offset: 1072 Size:    16 [unused]
//   float4 postFxConst52;              // Offset: 1088 Size:    16 [unused]
//   float4 postFxConst53;              // Offset: 1104 Size:    16 [unused]
//   float4 postFxConst54;              // Offset: 1120 Size:    16 [unused]
//   float4 postFxConst55;              // Offset: 1136 Size:    16 [unused]
//   float4 postFxConst56;              // Offset: 1152 Size:    16 [unused]
//   float4 postFxConst57;              // Offset: 1168 Size:    16 [unused]
//   float4 postFxConst58;              // Offset: 1184 Size:    16 [unused]
//   float4 postFxConst59;              // Offset: 1200 Size:    16 [unused]
//   float4 postFxConst60;              // Offset: 1216 Size:    16 [unused]
//   float4 postFxConst61;              // Offset: 1232 Size:    16 [unused]
//   float4 postFxConst62;              // Offset: 1248 Size:    16 [unused]
//   float4 postFxConst63;              // Offset: 1264 Size:    16 [unused]
//   float4 postFxBloom00;              // Offset: 1280 Size:    16 [unused]
//   float4 postFxBloom01;              // Offset: 1296 Size:    16 [unused]
//   float4 postFxBloom02;              // Offset: 1312 Size:    16 [unused]
//   float4 postFxBloom03;              // Offset: 1328 Size:    16 [unused]
//   float4 postFxBloom04;              // Offset: 1344 Size:    16 [unused]
//   float4 postFxBloom05;              // Offset: 1360 Size:    16 [unused]
//   float4 postFxBloom06;              // Offset: 1376 Size:    16 [unused]
//   float4 postFxBloom07;              // Offset: 1392 Size:    16 [unused]
//   float4 postFxBloom08;              // Offset: 1408 Size:    16 [unused]
//   float4 postFxBloom09;              // Offset: 1424 Size:    16 [unused]
//   float4 postFxBloom10;              // Offset: 1440 Size:    16 [unused]
//   float4 postFxBloom11;              // Offset: 1456 Size:    16 [unused]
//   float4 postFxBloom12;              // Offset: 1472 Size:    16 [unused]
//   float4 postFxBloom13;              // Offset: 1488 Size:    16 [unused]
//   float4 postFxBloom14;              // Offset: 1504 Size:    16 [unused]
//   float4 postFxBloom15;              // Offset: 1520 Size:    16 [unused]
//   float4 postFxBloom16;              // Offset: 1536 Size:    16 [unused]
//   float4 postFxBloom17;              // Offset: 1552 Size:    16 [unused]
//   float4 postFxBloom18;              // Offset: 1568 Size:    16 [unused]
//   float4 postFxBloom19;              // Offset: 1584 Size:    16 [unused]
//   float4 postFxBloom20;              // Offset: 1600 Size:    16 [unused]
//   float4 postFxBloom21;              // Offset: 1616 Size:    16 [unused]
//   float4 postFxBloom22;              // Offset: 1632 Size:    16 [unused]
//   float4 postFxBloom23;              // Offset: 1648 Size:    16 [unused]
//   float4 postFxBloom24;              // Offset: 1664 Size:    16 [unused]
//   float4 postFxBloom25;              // Offset: 1680 Size:    16 [unused]
//   float4 filterTap[8];               // Offset: 1696 Size:   128 [unused]
//   float4 postfxViewMatrix0;          // Offset: 1824 Size:    16 [unused]
//   float4 postfxViewMatrix1;          // Offset: 1840 Size:    16 [unused]
//   float4 postfxViewMatrix2;          // Offset: 1856 Size:    16 [unused]
//   float4 postfxViewMatrix3;          // Offset: 1872 Size:    16 [unused]
//   float4 postfxProjMatrix0;          // Offset: 1888 Size:    16 [unused]
//   float4 postfxProjMatrix1;          // Offset: 1904 Size:    16 [unused]
//   float4 postfxProjMatrix2;          // Offset: 1920 Size:    16 [unused]
//   float4 postfxProjMatrix3;          // Offset: 1936 Size:    16 [unused]
//   float4 postfxViewProjMatrix0;      // Offset: 1952 Size:    16 [unused]
//   float4 postfxViewProjMatrix1;      // Offset: 1968 Size:    16 [unused]
//   float4 postfxViewProjMatrix2;      // Offset: 1984 Size:    16 [unused]
//   float4 postfxViewProjMatrix3;      // Offset: 2000 Size:    16 [unused]
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
// bilinearSampler                   sampler      NA          NA             s0      1 
// colorTex                          texture  float4          2d             t0      1 
// temporalHistoryTex1               texture  float4          2d             t6      1 
// temporalHistoryLumaTex1           texture  float4          2d             t7      1 
// temporalHistoryLumaTex2           texture  float4          2d             t9      1 
// temporalHistoryLumaTex3           texture  float4          2d            t10      1 
// velocityTex0                      texture  float4          2d            t11      1 
// velocityTex1                      texture  float4          2d            t12      1 
// depthTex                          texture  float4          2d            t14      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// PostFxCBuffer                     cbuffer      NA          NA            cb8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
// SV_TARGET                1   x           1   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB8[1], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_output o1.x
dcl_temps 9
mad r0.xy, cb1[44].zwzz, l(2.000000, 2.000000, 0.000000, 0.000000), v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t14.xyzw, s0, l(0.000000)
mad r1.xyzw, cb1[44].zwzw, l(-2.000000, -2.000000, -2.000000, 2.000000), v1.xyxy
sample_l_indexable(texture2d)(float,float,float,float) r0.y, r1.xyxx, t14.yxzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.z, r1.zwzz, t14.yzxw, s0, l(0.000000)
max r0.x, r0.y, r0.x
max r0.x, r0.z, r0.x
mad r1.xyzw, cb1[44].zwzw, l(2.000000, -2.000000, -1.000000, 0.000000), v1.xyxy
sample_l_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t14.yzwx, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t0.xyzw, s0, l(0.000000)
max r0.x, r0.w, r0.x
sample_l_indexable(texture2d)(float,float,float,float) r1.w, v1.xyxx, t14.yzwx, s0, l(0.000000)
max r0.x, r0.x, r1.w
eq r1.w, r0.x, r1.w
eq r0.yz, r0.xxxx, r0.yyzy
movc r0.y, r0.y, l(-2.000000), l(2.000000)
eq r0.x, r0.x, r0.w
movc r0.yz, r0.zzzz, l(0,-2.000000,2.000000,0), r0.yyyy
movc r0.xy, r0.xxxx, l(2.000000,-2.000000,0,0), r0.yzyy
mul r0.xy, r0.xyxx, cb1[44].zwzz
movc r0.xy, r1.wwww, l(0,0,0,0), r0.xyxx
add r0.xy, r0.xyxx, v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyxx, t11.xyzw, s0, l(0.000000)
add r0.zw, |r0.xxxy|, |r0.xxxy|
min r0.zw, r0.zzzw, l(0.000000, 0.000000, 1.000000, 1.000000)
mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 10.000000, 10.000000)
add r2.xy, |r0.xyxx|, l(-0.500000, -0.500000, 0.000000, 0.000000)
ge r0.xy, r0.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
add_sat r2.xy, r2.xyxx, r2.xyxx
mad r0.zw, r2.xxxy, l(0.000000, 0.000000, 30.000000, 30.000000), r0.zzzw
movc r0.xy, r0.xyxx, r0.zwzz, -r0.zwzz
mul r0.zw, r0.xxxy, cb1[44].zzzw
mad r2.xy, -cb1[44].zwzz, r0.xyxx, v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r2.zw, r2.xyxx, t12.zwxy, s0, l(0.000000)
add r3.xy, |r2.zwzz|, |r2.zwzz|
min r3.xy, r3.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r3.xy, r3.xyxx, l(10.000000, 10.000000, 0.000000, 0.000000)
add r3.zw, |r2.zzzw|, l(0.000000, 0.000000, -0.500000, -0.500000)
ge r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
add_sat r3.zw, r3.zzzw, r3.zzzw
mad r3.xy, r3.zwzz, l(30.000000, 30.000000, 0.000000, 0.000000), r3.xyxx
movc r2.zw, r2.zzzw, r3.xxxy, -r3.xxxy
mad r3.xy, cb1[44].zwzz, r2.zwzz, -r0.zwzz
mad r0.zw, r3.xxxy, l(0.000000, 0.000000, 2.000000, 2.000000), r0.zzzw
mad r3.xy, -cb1[44].zwzz, r2.zwzz, r2.xyxx
add r0.zw, -r0.zzzw, r3.xxxy
sample_l_indexable(texture2d)(float,float,float,float) r1.w, r3.xyxx, t9.yzwx, s0, l(0.000000)
gather4_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r3.xyzw, r0.zwzz, t10.xyzw, s0.x
gather4_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t7.xyzw, s0.x
add r0.zw, r2.xxxy, cb8[0].zzzw
sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r0.zwzz, t6.xyzw, s0, l(0.000000)
add r3.xyzw, -r3.xyzw, r4.xyzw
dp4 r0.z, |r3.xyzw|, l(10.000000, 10.000000, 10.000000, 10.000000)
add r0.z, -r0.z, l(1.000000)
add r2.xy, v1.xyxx, cb8[0].xyxx
sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
mul r4.xyz, r3.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000)
ishr r4.xyz, r4.xyzx, l(1, 1, 1, 0)
iadd r4.xyz, r4.xyzx, l(0x1fbd1df5, 0x1fbd1df5, 0x1fbd1df5, 0)
dp3 r0.w, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, -r1.w, r0.w
mov o1.x, r0.w
mad r0.w, -|r1.w|, l(40.000000), l(1.000000)
max r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
min r0.z, r0.w, r0.z
mad r2.xy, cb1[44].zwzz, l(0.000000, -1.000000, 0.000000, 0.000000), v1.xyxx
sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
mad r6.xyzw, cb1[44].zwzw, l(1.000000, 0.000000, 0.000000, 1.000000), v1.xyxy
sample_l_indexable(texture2d)(float,float,float,float) r7.xyz, r6.zwzz, t0.xyzw, s0, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t0.xyzw, s0, l(0.000000)
min r8.xyz, r4.xyzx, r7.xyzx
max r4.xyz, r4.xyzx, r7.xyzx
max r4.xyz, r4.xyzx, r6.xyzx
min r6.xyz, r6.xyzx, r8.xyzx
min r6.xyz, r1.xyzx, r6.xyzx
max r1.xyz, r1.xyzx, r4.xyzx
max r1.xyz, r1.xyzx, r3.xyzx
min r4.xyz, r3.xyzx, r6.xyzx
max r6.xyz, r1.xyzx, r4.xyzx
max r4.xyz, r4.xyzx, r5.xyzx
max r1.xyz, r1.xyzx, r5.xyzx
min r1.xyz, r6.xyzx, r1.xyzx
min r1.xyz, r1.xyzx, r4.xyzx
add r4.xyz, -r1.xyzx, r5.xyzx
mad r1.xyz, r0.zzzz, r4.xyzx, r1.xyzx
add r1.xyz, -r3.xyzx, r1.xyzx
dp2 r0.z, r0.xyxx, r0.xyxx
add r0.xy, r0.xyxx, -r2.zwzz
dp2 r0.w, r2.zwzz, r2.zwzz
max r0.z, r0.w, r0.z
ishr r0.z, r0.z, l(1)
iadd r0.z, r0.z, l(0x1fbd1df5)
add_sat r0.z, -r0.z, l(40.000000)
dp2 r0.x, r0.xyxx, r0.xyxx
ishr r0.x, r0.x, l(1)
iadd r0.x, r0.x, l(0x1fbd1df5)
mad_sat r0.x, -r0.x, l(0.250000), l(1.000000)
mul r0.x, r0.x, r0.x
min r0.x, r0.z, r0.x
mul r0.x, r0.x, l(0.500000)
mad o0.xyz, r0.xxxx, r1.xyzx, r3.xyzx
ret 
// Approximately 102 instruction slots used
