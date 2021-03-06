//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:47 2021
//
//
// Buffer Definitions: 
//
// cbuffer PostFxCBuffer
// {
//
//   float4 postFxControl0;             // Offset:    0 Size:    16 [unused]
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
//   float4 postFxConst00;              // Offset:  256 Size:    16
//   float4 postFxConst01;              // Offset:  272 Size:    16
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
// codeTexture0                      texture  float4          2d             t0      1 
// bloomDownsample                       UAV  float4          2d             u0      1 
// exposureOut                           UAV   float          2d             u1      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// PostFxCBuffer                     cbuffer      NA          NA            cb8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB8[18], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_resource_texture2d (float,float,float,float) t0
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_typed_texture2d (float,float,float,float) u1
dcl_input vThreadIDInGroupFlattened
dcl_input vThreadGroupID.xy
dcl_input vThreadID.xy
dcl_temps 15
dcl_tgsm_structured g0, 4, 64
dcl_tgsm_structured g1, 4, 64
dcl_thread_group 8, 8, 1
ishl r0.xy, vThreadID.xyxx, l(1, 1, 0, 0)
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyzw, t0.xyzw
iadd r2.xyzw, r0.xyxy, l(-2, 0, 2, 0)
mov r3.xy, r2.zwzz
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyzw, t0.xyzw
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyzw, t0.xyzw
iadd r4.xyzw, r0.xyxy, l(0, -2, 0, 2)
mov r5.xy, r4.zwzz
mov r5.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyzw, t0.xyzw
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyzw, t0.xyzw
iadd r6.xyzw, r0.xyxy, l(-2, -2, 2, -2)
mov r7.xy, r6.zwzz
mov r7.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r7.xyz, r7.xyzw, t0.xyzw
mov r6.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyzw, t0.xyzw
iadd r8.xyzw, r0.xyxy, l(2, 2, -2, 2)
mov r9.xy, r8.zwzz
mov r9.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r9.xyz, r9.xyzw, t0.xyzw
mov r8.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r8.xyz, r8.xyzw, t0.xyzw
iadd r10.xyzw, r0.xyxy, l(-1, -1, 1, -1)
mov r11.xy, r10.zwzz
mov r11.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r11.xyz, r11.xyzw, t0.xyzw
mov r10.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r10.xyz, r10.xyzw, t0.xyzw
iadd r0.xy, r0.xyxx, l(-1, 1, 0, 0)
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw
imad r12.xy, vThreadID.xyxx, l(2, 2, 0, 0), l(1, 1, 0, 0)
mov r12.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r12.xyz, r12.xyzw, t0.xyzw
dp3 r0.w, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.w, r0.w, l(1.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
dp3 r1.w, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, r1.w, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
dp3 r2.w, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.w, r2.w, l(1.000000)
div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w
dp3 r3.w, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.w, r3.w, l(1.000000)
div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w
dp3 r4.w, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r4.w, r4.w, l(1.000000)
div r4.w, l(1.000000, 1.000000, 1.000000, 1.000000), r4.w
dp3 r5.w, r7.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r5.w, r5.w, l(1.000000)
div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w
dp3 r6.w, r6.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r6.w, r6.w, l(1.000000)
div r6.w, l(1.000000, 1.000000, 1.000000, 1.000000), r6.w
dp3 r7.w, r9.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r7.w, r7.w, l(1.000000)
div r7.w, l(1.000000, 1.000000, 1.000000, 1.000000), r7.w
dp3 r8.w, r8.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r8.w, r8.w, l(1.000000)
div r8.w, l(1.000000, 1.000000, 1.000000, 1.000000), r8.w
dp3 r9.w, r11.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r9.w, r9.w, l(1.000000)
div r9.w, l(1.000000, 1.000000, 1.000000, 1.000000), r9.w
dp3 r10.w, r10.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r10.w, r10.w, l(1.000000)
div r10.w, l(1.000000, 1.000000, 1.000000, 1.000000), r10.w
dp3 r11.w, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r11.w, r11.w, l(1.000000)
div r11.w, l(1.000000, 1.000000, 1.000000, 1.000000), r11.w
dp3 r12.w, r12.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r12.w, r12.w, l(1.000000)
div r12.w, l(1.000000, 1.000000, 1.000000, 1.000000), r12.w
mul r13.xyz, r0.wwww, r1.xyzx
mul r14.xyz, r2.wwww, r2.xyzx
mad r1.xyz, r1.xyzx, r0.wwww, r14.xyzx
mad r1.xyz, r6.xyzx, r6.wwww, r1.xyzx
mad r1.xyz, r4.xyzx, r4.wwww, r1.xyzx
add r6.x, r0.w, r2.w
add r6.x, r6.w, r6.x
add r6.x, r4.w, r6.x
div r1.xyz, r1.xyzx, r6.xxxx
mad r4.xyz, r4.xyzx, r4.wwww, r13.xyzx
mad r4.xyz, r7.xyzx, r5.wwww, r4.xyzx
mad r4.xyz, r3.xyzx, r1.wwww, r4.xyzx
add r4.w, r0.w, r4.w
add r4.w, r5.w, r4.w
add r4.w, r1.w, r4.w
div r4.xyz, r4.xyzx, r4.wwww
mul r4.xyz, r4.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000)
mad r1.xyz, r1.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r4.xyzx
mad r3.xyz, r3.xyzx, r1.wwww, r13.xyzx
mad r3.xyz, r8.xyzx, r8.wwww, r3.xyzx
mad r3.xyz, r5.xyzx, r3.wwww, r3.xyzx
add r1.w, r0.w, r1.w
add r1.w, r8.w, r1.w
add r1.w, r3.w, r1.w
div r3.xyz, r3.xyzx, r1.wwww
mad r1.xyz, r3.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r1.xyzx
mad r3.xyz, r5.xyzx, r3.wwww, r13.xyzx
mad r3.xyz, r9.xyzx, r7.wwww, r3.xyzx
mad r2.xyz, r2.xyzx, r2.wwww, r3.xyzx
add r0.w, r0.w, r3.w
add r0.w, r7.w, r0.w
add r0.w, r2.w, r0.w
div r2.xyz, r2.xyzx, r0.wwww
mad r1.xyz, r2.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r1.xyzx
mul r2.xyz, r10.wwww, r10.xyzx
mad r2.xyz, r11.xyzx, r9.wwww, r2.xyzx
mad r0.xyz, r0.xyzx, r11.wwww, r2.xyzx
mad r0.xyz, r12.xyzx, r12.wwww, r0.xyzx
add r0.w, r9.w, r10.w
add r0.w, r11.w, r0.w
add r0.w, r12.w, r0.w
div r0.xyz, r0.xyzx, r0.wwww
mad r0.xyz, r0.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r1.xyzx
utof r1.xy, vThreadID.xyxx
lt r1.xy, r1.xyxx, cb1[44].xyxx
and r0.w, r1.y, r1.x
if_nz r0.w
  dp3 r1.x, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
  max r1.x, r1.x, l(0.001000)
  log r1.x, r1.x
  mul r1.x, r1.x, l(0.69314718)
  mov r1.y, l(1.000000)
else 
  mov r1.xy, l(0,0,0,0)
endif 
store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.y
store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
sync_g_t
ult r1.xyzw, vThreadIDInGroupFlattened.xxxx, l(32, 16, 8, 4)
if_nz r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  iadd r2.x, vThreadIDInGroupFlattened.x, l(32)
  ld_structured r2.y, r2.x, l(0), g1.xxxx
  add r1.x, r1.x, r2.y
  store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  ld_structured r2.x, r2.x, l(0), g0.xxxx
  add r1.x, r1.x, r2.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
endif 
sync_g_t
if_nz r1.y
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  iadd r1.y, vThreadIDInGroupFlattened.x, l(16)
  ld_structured r2.x, r1.y, l(0), g1.xxxx
  add r1.x, r1.x, r2.x
  store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  ld_structured r1.y, r1.y, l(0), g0.xxxx
  add r1.x, r1.y, r1.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
endif 
sync_g_t
if_nz r1.z
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  iadd r1.y, vThreadIDInGroupFlattened.x, l(8)
  ld_structured r1.z, r1.y, l(0), g1.xxxx
  add r1.x, r1.z, r1.x
  store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  ld_structured r1.y, r1.y, l(0), g0.xxxx
  add r1.x, r1.y, r1.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
endif 
sync_g_t
if_nz r1.w
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  iadd r1.y, vThreadIDInGroupFlattened.x, l(4)
  ld_structured r1.z, r1.y, l(0), g1.xxxx
  add r1.x, r1.z, r1.x
  store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  ld_structured r1.y, r1.y, l(0), g0.xxxx
  add r1.x, r1.y, r1.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
endif 
sync_g_t
ult r1.xy, vThreadIDInGroupFlattened.xxxx, l(2, 1, 0, 0)
if_nz r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g1.xxxx
  iadd r1.z, vThreadIDInGroupFlattened.x, l(2)
  ld_structured r1.w, r1.z, l(0), g1.xxxx
  add r1.x, r1.w, r1.x
  store_structured g1.x, vThreadIDInGroupFlattened.x, l(0), r1.x
  ld_structured r1.x, vThreadIDInGroupFlattened.x, l(0), g0.xxxx
  ld_structured r1.z, r1.z, l(0), g0.xxxx
  add r1.x, r1.z, r1.x
  store_structured g0.x, vThreadIDInGroupFlattened.x, l(0), r1.x
endif 
sync_g_t
if_nz r1.y
  ld_structured r1.x, l(0), l(0), g1.xxxx
  ld_structured r1.y, l(1), l(0), g1.xxxx
  add r1.x, r1.y, r1.x
  store_structured g1.x, l(0), l(0), r1.x
  ld_structured r1.x, l(0), l(0), g0.xxxx
  ld_structured r1.y, l(1), l(0), g0.xxxx
  add r1.x, r1.y, r1.x
  store_structured g0.x, l(0), l(0), r1.x
endif 
sync_g_t
if_z vThreadIDInGroupFlattened.x
  ld_structured r1.x, l(0), l(0), g0.xxxx
  ld_structured r1.y, l(0), l(0), g1.xxxx
  max r1.y, r1.y, l(1.000000)
  div r1.x, r1.x, r1.y
  mul r1.x, r1.x, l(1.442695)
  exp r1.x, r1.x
  store_uav_typed u1.xyzw, vThreadGroupID.xyyy, r1.xxxx
endif 
if_nz r0.w
  mul r1.xyz, r0.xyzx, cb8[16].xxxx
  dp3 r1.w, r0.xyzx, cb8[16].yzwy
  mul r0.xyzw, r1.xyzw, l(5.55555534, 5.55555534, 5.55555534, 5.55555534)
  log r0.xyzw, r0.xyzw
  lt r1.xyzw, r0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
  mul r2.xyzw, r0.xyzw, cb8[17].xxxy
  mul r0.xyzw, r0.xyzw, cb8[17].zzzw
  movc r0.xyzw, r1.xyzw, r2.xyzw, r0.xyzw
  exp r0.xyzw, r0.xyzw
  mul r0.xyzw, r0.xyzw, l(0.180000, 0.180000, 0.180000, 0.180000)
  store_uav_typed u0.xyzw, vThreadID.xyyy, r0.xyzw
endif 
ret 
// Approximately 232 instruction slots used
