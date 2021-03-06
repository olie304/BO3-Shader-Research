//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:15 2021
//
//
// Buffer Definitions: 
//
// cbuffer PostFxCBuffer
// {
//
//   float4 postFxControl0;             // Offset:    0 Size:    16
//   float4 postFxControl1;             // Offset:   16 Size:    16
//   float4 postFxControl2;             // Offset:   32 Size:    16
//   float4 postFxControl3;             // Offset:   48 Size:    16
//   float4 postFxControl4;             // Offset:   64 Size:    16 [unused]
//   float4 postFxControl5;             // Offset:   80 Size:    16 [unused]
//   float4 postFxControl6;             // Offset:   96 Size:    16 [unused]
//   float4 postFxControl7;             // Offset:  112 Size:    16 [unused]
//   float4 postFxControl8;             // Offset:  128 Size:    16 [unused]
//   float4 postFxControl9;             // Offset:  144 Size:    16 [unused]
//   float4 postFxControlA;             // Offset:  160 Size:    16 [unused]
//   float4 postFxControlB;             // Offset:  176 Size:    16 [unused]
//   float4 postFxControlC;             // Offset:  192 Size:    16 [unused]
//   float4 postFxControlD;             // Offset:  208 Size:    16
//   float4 postFxControlE;             // Offset:  224 Size:    16
//   float4 postFxControlF;             // Offset:  240 Size:    16
//   float4 postFxConst00;              // Offset:  256 Size:    16
//   float4 postFxConst01;              // Offset:  272 Size:    16
//   float4 postFxConst02;              // Offset:  288 Size:    16
//   float4 postFxConst03;              // Offset:  304 Size:    16
//   float4 postFxConst04;              // Offset:  320 Size:    16
//   float4 postFxConst05;              // Offset:  336 Size:    16
//   float4 postFxConst06;              // Offset:  352 Size:    16
//   float4 postFxConst07;              // Offset:  368 Size:    16
//   float4 postFxConst08;              // Offset:  384 Size:    16
//   float4 postFxConst09;              // Offset:  400 Size:    16
//   float4 postFxConst10;              // Offset:  416 Size:    16
//   float4 postFxConst11;              // Offset:  432 Size:    16
//   float4 postFxConst12;              // Offset:  448 Size:    16
//   float4 postFxConst13;              // Offset:  464 Size:    16
//   float4 postFxConst14;              // Offset:  480 Size:    16
//   float4 postFxConst15;              // Offset:  496 Size:    16
//   float4 postFxConst16;              // Offset:  512 Size:    16
//   float4 postFxConst17;              // Offset:  528 Size:    16
//   float4 postFxConst18;              // Offset:  544 Size:    16
//   float4 postFxConst19;              // Offset:  560 Size:    16
//   float4 postFxConst20;              // Offset:  576 Size:    16
//   float4 postFxConst21;              // Offset:  592 Size:    16
//   float4 postFxConst22;              // Offset:  608 Size:    16
//   float4 postFxConst23;              // Offset:  624 Size:    16
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
// samp0                             sampler      NA          NA             s0      1 
// samplerBilinearWrap               sampler      NA          NA             s1      1 
// floatZSampler                     texture  float4          2d             t0      1 
// colorMapSampler                   texture  float4          2d             t6      1 
// gridTextureA                      texture  float4          2d             t7      1 
// gridTextureB                      texture  float4          2d             t9      1 
// gridTextureC                      texture  float4          2d            t10      1 
// gridTextureD                      texture  float4          2d            t11      1 
// revealTexture                     texture  float4          2d            t12      1 
// codeTexture1                      texture  float4          2d            t14      1 
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
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_immediateConstantBuffer { { 0, 0, 0, 1.000000},
                              { 1.000000, 0, 0, 1.000000},
                              { 1.000000, 0, 0, 0.500000},
                              { 1.000000, 0, 0, 0.200000},
                              { 1.000000, 0, 0, 0.200000},
                              { 1.000000, 0, 0, 0.200000},
                              { 1.000000, 0, 0, 0.200000},
                              { 1.000000, 0, 0, 0.200000} }
dcl_constantbuffer CB8[40], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s0, mode_default
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 9
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t0.xyzw, s0
add r1.xyzw, v1.xyxy, l(0.000000, -0.00138889, -0.500000, -0.500000)
sample_indexable(texture2d)(float,float,float,float) r0.y, r1.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t6.xyzw, s0
mul r2.xyz, r2.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000)
ge r0.z, r0.x, l(0.984375)
mul r0.w, r0.x, l(1.01587307)
mad r1.x, r0.x, l(64.000000), l(-63.000000)
movc r0.z, r0.z, r1.x, r0.w
max r0.z, r0.z, l(0.00000001)
rcp r3.z, r0.z
mul r0.z, r1.z, r3.z
mul r3.x, r0.z, cb8[15].z
mul r0.z, -r1.w, r3.z
mul r3.y, r0.z, cb8[15].w
add r1.x, v1.x, cb1[44].z
mov r1.y, v1.y
mul r0.zw, r1.xxxy, cb1[44].xxxy
ftoi r4.xy, r0.zwzz
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.z, r4.xyzw, t0.yzxw
ge r0.w, r0.z, l(0.984375)
mul r1.y, r0.z, l(1.01587307)
mad r0.z, r0.z, l(64.000000), l(-63.000000)
movc r0.z, r0.w, r0.z, r1.y
max r0.z, r0.z, l(0.00000001)
rcp r4.y, r0.z
add r0.z, r1.x, l(-0.500000)
mul r0.z, r3.z, r0.z
mul r4.x, r0.z, cb8[15].z
add r0.z, v1.y, -cb1[44].w
ge r0.w, r0.y, l(0.984375)
mul r1.x, r0.y, l(1.01587307)
mad r0.y, r0.y, l(64.000000), l(-63.000000)
movc r0.y, r0.w, r0.y, r1.x
max r0.y, r0.y, l(0.00000001)
rcp r1.y, r0.y
add r0.y, r0.z, l(-0.500000)
mul r0.y, r3.z, -r0.y
mul r1.x, r0.y, cb8[15].w
min r0.y, r1.y, r4.y
min r0.y, r0.y, r3.z
eq r0.y, r0.y, l(0.000000)
add r0.z, r3.z, -r4.y
add r0.w, -r1.y, r3.z
max r0.z, |r0.w|, |r0.z|
lt r0.xz, l(0.900000, 0.000000, 100.000000, 0.000000), r0.xxzx
or r0.y, r0.z, r0.y
mul r5.xyz, r3.yyyy, cb8[1].xyzx
mad r5.xyz, r3.xxxx, cb8[0].xyzx, r5.xyzx
mad r5.xyz, r3.zzzz, cb8[2].xyzx, r5.xyzx
add r5.xyz, r5.xyzx, cb8[3].xyzx
add r0.zw, -r3.xxxz, r4.xxxy
mul r4.xyz, r0.wwww, cb8[2].zxyz
mad r4.xyz, r0.zzzz, cb8[0].zxyz, r4.xyzx
add r0.zw, -r3.yyyz, r1.xxxy
mul r3.xyw, r0.wwww, cb8[2].yzyx
mad r3.xyw, r0.zzzz, cb8[1].yzyx, r3.xyxw
mul r6.xyz, r3.xywx, r4.xyzx
mad r3.xyw, r4.zxzy, r3.ywyx, -r6.xyxz
dp3 r0.z, r3.xywx, r3.xywx
rsq r0.z, r0.z
add r1.xy, cb8[13].xyxx, l(50.000000, -100.000000, 0.000000, 0.000000)
add r4.xyz, r5.xyzx, -cb8[16].xyzx
dp3 r0.w, r4.xyzx, r4.xyzx
sqrt r0.w, r0.w
mad r2.w, r0.w, cb8[17].w, cb8[16].z
add r2.w, r2.w, cb8[14].y
add r2.w, -r5.z, r2.w
mul_sat r2.w, r2.w, l(0.050000)
lt r3.x, r0.w, r1.x
add r3.y, r0.w, -cb8[13].x
mul r3.y, r2.w, r3.y
mul r3.y, r3.y, l(0.020000)
max r3.y, r3.y, l(0.000000)
movc r2.w, r3.x, r3.y, r2.w
lt r3.x, r1.y, r0.w
add r0.w, -r0.w, cb8[13].y
mul r0.w, r0.w, r2.w
add r3.y, -r1.y, cb8[13].y
div r0.w, r0.w, r3.y
max r0.w, r0.w, l(0.000000)
movc r0.w, r3.x, r0.w, r2.w
eq r2.w, r0.w, l(0.000000)
if_nz r2.w
  mov r3.x, l(0)
endif 
add r4.xy, cb8[16].yxyy, -cb8[17].yxyy
mul r4.y, r5.y, r4.y
mad r4.x, r4.x, r5.x, -r4.y
mad r4.x, cb8[16].x, cb8[17].y, r4.x
mad r4.x, -cb8[16].y, cb8[17].x, r4.x
add r4.yz, cb8[17].yyxy, -cb8[18].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[17].x, cb8[18].y, r4.y
mad r4.y, -cb8[17].y, cb8[18].x, r4.y
add r4.zw, -cb8[16].yyyx, cb8[18].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[18].x, cb8[16].y, r4.z
mad r4.z, -cb8[18].y, cb8[16].x, r4.z
lt r4.yw, l(0.000000, 0.000000, 0.000000, 0.000000), r4.yyyx
and r4.y, r4.y, r4.w
lt r4.w, l(0.000000), r4.z
and r4.y, r4.w, r4.y
mul_sat r4.x, r4.x, l(0.000010)
mul r0.w, r0.w, r4.x
mul_sat r4.x, r4.z, l(0.000010)
mul r0.w, r0.w, r4.x
and r0.w, r0.w, r4.y
movc r0.w, r2.w, r3.x, r0.w
add r4.xyz, r5.xyzx, -cb8[19].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[20].w, cb8[19].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[19].yyxy, -cb8[20].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[19].x, cb8[20].y, r4.y
mad r4.y, -cb8[19].y, cb8[20].x, r4.y
add r4.zw, cb8[20].yyyx, -cb8[21].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[20].x, cb8[21].y, r4.z
mad r4.z, -cb8[20].y, cb8[21].x, r4.z
add r6.xy, -cb8[19].yxyy, cb8[21].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[21].x, cb8[19].y, r4.w
mad r4.w, -cb8[21].y, cb8[19].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mul r2.w, r2.w, cb8[19].w
mad r0.w, cb8[16].w, r0.w, r2.w
add r4.xyz, r5.xyzx, -cb8[22].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[23].w, cb8[22].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[22].yyxy, -cb8[23].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[22].x, cb8[23].y, r4.y
mad r4.y, -cb8[22].y, cb8[23].x, r4.y
add r4.zw, cb8[23].yyyx, -cb8[24].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[23].x, cb8[24].y, r4.z
mad r4.z, -cb8[23].y, cb8[24].x, r4.z
add r6.xy, -cb8[22].yxyy, cb8[24].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[24].x, cb8[22].y, r4.w
mad r4.w, -cb8[24].y, cb8[22].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mad r0.w, cb8[22].w, r2.w, r0.w
add r4.xyz, r5.xyzx, -cb8[25].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[26].w, cb8[25].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[25].yyxy, -cb8[26].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[25].x, cb8[26].y, r4.y
mad r4.y, -cb8[25].y, cb8[26].x, r4.y
add r4.zw, cb8[26].yyyx, -cb8[27].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[26].x, cb8[27].y, r4.z
mad r4.z, -cb8[26].y, cb8[27].x, r4.z
add r6.xy, -cb8[25].yxyy, cb8[27].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[27].x, cb8[25].y, r4.w
mad r4.w, -cb8[27].y, cb8[25].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mad r0.w, cb8[25].w, r2.w, r0.w
add r4.xyz, r5.xyzx, -cb8[28].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[29].w, cb8[28].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[28].yyxy, -cb8[29].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[28].x, cb8[29].y, r4.y
mad r4.y, -cb8[28].y, cb8[29].x, r4.y
add r4.zw, cb8[29].yyyx, -cb8[30].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[29].x, cb8[30].y, r4.z
mad r4.z, -cb8[29].y, cb8[30].x, r4.z
add r6.xy, -cb8[28].yxyy, cb8[30].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[30].x, cb8[28].y, r4.w
mad r4.w, -cb8[30].y, cb8[28].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mad r0.w, cb8[28].w, r2.w, r0.w
add r4.xyz, r5.xyzx, -cb8[31].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[32].w, cb8[31].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[31].yyxy, -cb8[32].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[31].x, cb8[32].y, r4.y
mad r4.y, -cb8[31].y, cb8[32].x, r4.y
add r4.zw, cb8[32].yyyx, -cb8[33].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[32].x, cb8[33].y, r4.z
mad r4.z, -cb8[32].y, cb8[33].x, r4.z
add r6.xy, -cb8[31].yxyy, cb8[33].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[33].x, cb8[31].y, r4.w
mad r4.w, -cb8[33].y, cb8[31].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mad r0.w, cb8[31].w, r2.w, r0.w
add r4.xyz, r5.xyzx, -cb8[34].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[35].w, cb8[34].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r4.x, r2.w, r1.x
add r4.y, r2.w, -cb8[13].x
mul r4.y, r3.x, r4.y
mul r4.y, r4.y, l(0.020000)
max r4.y, r4.y, l(0.000000)
movc r3.x, r4.x, r4.y, r3.x
lt r4.x, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r2.w, r3.x
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r2.w, r4.x, r2.w, r3.x
eq r3.x, r2.w, l(0.000000)
if_nz r3.x
  mov r4.x, l(0)
endif 
add r4.yz, cb8[34].yyxy, -cb8[35].yyxy
mul r4.z, r5.y, r4.z
mad r4.y, r4.y, r5.x, -r4.z
mad r4.y, cb8[34].x, cb8[35].y, r4.y
mad r4.y, -cb8[34].y, cb8[35].x, r4.y
add r4.zw, cb8[35].yyyx, -cb8[36].yyyx
mul r4.w, r5.y, r4.w
mad r4.z, r4.z, r5.x, -r4.w
mad r4.z, cb8[35].x, cb8[36].y, r4.z
mad r4.z, -cb8[35].y, cb8[36].x, r4.z
add r6.xy, -cb8[34].yxyy, cb8[36].yxyy
mul r4.w, r5.y, r6.y
mad r4.w, r6.x, r5.x, -r4.w
mad r4.w, cb8[36].x, cb8[34].y, r4.w
mad r4.w, -cb8[36].y, cb8[34].x, r4.w
lt r5.w, l(0.000000), r4.y
lt r4.z, l(0.000000), r4.z
and r4.z, r4.z, r5.w
lt r5.w, l(0.000000), r4.w
and r4.z, r4.z, r5.w
mul_sat r4.y, r4.y, l(0.000010)
mul r2.w, r2.w, r4.y
mul_sat r4.y, r4.w, l(0.000010)
mul r2.w, r2.w, r4.y
and r2.w, r2.w, r4.z
movc r2.w, r3.x, r4.x, r2.w
mad r0.w, cb8[34].w, r2.w, r0.w
add r4.xyz, r5.xyzx, -cb8[37].xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
sqrt r2.w, r2.w
mad r3.x, r2.w, cb8[38].w, cb8[37].z
add r3.x, r3.x, cb8[14].y
add r3.x, -r5.z, r3.x
mul_sat r3.x, r3.x, l(0.050000)
lt r1.x, r2.w, r1.x
add r4.x, r2.w, -cb8[13].x
mul r4.x, r3.x, r4.x
mul r4.x, r4.x, l(0.020000)
max r4.x, r4.x, l(0.000000)
movc r1.x, r1.x, r4.x, r3.x
lt r1.y, r1.y, r2.w
add r2.w, -r2.w, cb8[13].y
mul r2.w, r1.x, r2.w
div r2.w, r2.w, r3.y
max r2.w, r2.w, l(0.000000)
movc r1.x, r1.y, r2.w, r1.x
eq r1.y, r1.x, l(0.000000)
if_nz r1.y
  mov r2.w, l(0)
endif 
add r3.xy, cb8[37].yxyy, -cb8[38].yxyy
mul r3.y, r5.y, r3.y
mad r3.x, r3.x, r5.x, -r3.y
mad r3.x, cb8[37].x, cb8[38].y, r3.x
mad r3.x, -cb8[37].y, cb8[38].x, r3.x
add r4.xy, cb8[38].yxyy, -cb8[39].yxyy
mul r3.y, r5.y, r4.y
mad r3.y, r4.x, r5.x, -r3.y
mad r3.y, cb8[38].x, cb8[39].y, r3.y
mad r3.y, -cb8[38].y, cb8[39].x, r3.y
add r4.xy, -cb8[37].yxyy, cb8[39].yxyy
mul r4.y, r5.y, r4.y
mad r4.x, r4.x, r5.x, -r4.y
mad r4.x, cb8[39].x, cb8[37].y, r4.x
mad r4.x, -cb8[39].y, cb8[37].x, r4.x
lt r4.y, l(0.000000), r3.x
lt r3.y, l(0.000000), r3.y
and r3.y, r3.y, r4.y
lt r4.y, l(0.000000), r4.x
and r3.y, r3.y, r4.y
mul_sat r3.x, r3.x, l(0.000010)
mul r1.x, r1.x, r3.x
mul_sat r3.x, r4.x, l(0.000010)
mul r1.x, r1.x, r3.x
and r1.x, r1.x, r3.y
movc r1.x, r1.y, r2.w, r1.x
mad r0.w, cb8[37].w, r1.x, r0.w
add r0.w, r0.w, l(-1.000000)
max r0.w, r0.w, l(0.000000)
add r0.w, r0.w, l(0.010000)
ftoi r1.x, r0.w
frc r1.y, r0.w
imax r1.x, r1.x, l(0)
imin r3.xy, r1.xxxx, l(6, 4, 0, 0)
add r1.x, -icb[r3.x + 0].w, icb[r3.x + 1].w
mad r1.x, r1.y, r1.x, icb[r3.x + 0].w
mul r4.xy, cb1[69].wwww, l(20.000000, 0.250000, 0.000000, 0.000000)
frc r2.w, r4.x
mad r2.w, cb1[69].w, l(20.000000), -r2.w
mul r6.z, r2.w, l(0.050000)
mul r4.xz, v1.xxyx, cb1[44].xxyx
ftoi r7.xy, r4.xzxx
mov r7.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.w, r7.xyzw, t0.yzwx
ge r3.x, r2.w, l(0.984375)
mul r4.x, r2.w, l(1.01587307)
mad r2.w, r2.w, l(64.000000), l(-63.000000)
movc r2.w, r3.x, r2.w, r4.x
max r2.w, r2.w, l(0.00000001)
rcp r2.w, r2.w
mul r1.z, r1.z, r2.w
mul r1.w, -r1.w, r2.w
mul r1.zw, r1.zzzw, cb8[15].zzzw
mul r4.xz, r1.wwww, cb8[1].xxyx
mad r1.zw, r1.zzzz, cb8[0].xxxy, r4.xxxz
mad r1.zw, r2.wwww, cb8[2].xxxy, r1.zzzw
add r1.zw, r1.zzzw, cb8[3].xxxy
mul r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.025000, 0.025000)
deriv_rtx_coarse r4.xz, r1.zzwz
deriv_rty_coarse r5.zw, r1.zzzw
if_z r3.y
  sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t7.xyzw, s1, r4.xzxx, r5.zwzz
  mov r8.xyz, l(0,0,0,0)
else 
  ieq r2.w, r3.y, l(1)
  if_nz r2.w
    sample_d_indexable(texture2d)(float,float,float,float) r8.xyz, r1.zwzz, t7.xyzw, s1, r4.xzxx, r5.zwzz
    sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t9.xyzw, s1, r4.xzxx, r5.zwzz
  else 
    ieq r2.w, r3.y, l(2)
    if_nz r2.w
      sample_d_indexable(texture2d)(float,float,float,float) r8.xyz, r1.zwzz, t9.xyzw, s1, r4.xzxx, r5.zwzz
      sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t10.xyzw, s1, r4.xzxx, r5.zwzz
    else 
      ieq r2.w, r3.y, l(3)
      if_nz r2.w
        sample_d_indexable(texture2d)(float,float,float,float) r8.xyz, r1.zwzz, t10.xyzw, s1, r4.xzxx, r5.zwzz
        sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t11.xyzw, s1, r4.xzxx, r5.zwzz
      else 
        sample_d_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t11.xyzw, s1, r4.xzxx, r5.zwzz
        mov r8.xyz, r7.xyzx
      endif 
    endif 
  endif 
endif 
add r4.xzw, -r8.xxyz, r7.xxyz
mad r1.yzw, r1.yyyy, r4.xxzw, r8.xxyz
mad r3.xy, r5.xyxx, l(0.003125, 0.003125, 0.000000, 0.000000), r4.yyyy
sample_indexable(texture2d)(float,float,float,float) r2.w, r3.xyxx, t12.yzwx, s1
mul r1.yzw, r1.yyzw, r2.wwww
mul r4.xyz, r1.yzwy, r1.yzwy
mul r4.xyz, r2.wwww, r4.xyzx
mad r1.yzw, r4.xxyz, l(0.000000, 3.000000, 3.000000, 3.000000), r1.yyzw
mov r6.w, v1.y
dp2 r2.w, r6.zwzz, l(37.349838, 59.394840, 0.000000, 0.000000)
frc r6.x, r2.w
dp3 r2.w, r6.xzwx, l(81.239487, 37.349838, 59.394840, 0.000000)
frc r6.y, r2.w
dp4 r2.w, r6.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r6.z, r2.w
dp4 r2.w, r6.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r6.w, r2.w
dp4 r2.w, r6.xyzw, l(81.239487, 17.348024, 37.349838, 59.394840)
frc r2.w, r2.w
frc r2.w, r2.w
mad r2.w, r2.w, l(0.600000), l(0.400000)
min r0.w, r0.w, l(0.500000)
lt r3.x, r3.z, l(10.000000)
mad r0.z, r3.w, r0.z, -cb8[14].x
add r3.y, -cb8[14].x, l(1.000000)
div_sat r0.z, r0.z, r3.y
or r0.x, r0.x, r0.y
movc r0.x, r0.x, l(0), r0.z
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, v1.xyxx, t14.xyzw, s0
dp4_sat r0.y, r4.xyzw, l(1.000000, 1.000000, 1.000000, 1.000000)
add r0.y, -r0.y, l(1.000000)
mul r0.y, r0.y, r0.w
movc r0.y, r3.x, l(0), r0.y
mul r1.yzw, r1.yyzw, r2.wwww
mul r0.yzw, r0.yyyy, r1.yyzw
mul r0.xyz, r0.xxxx, r0.yzwy
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
mul o0.xyz, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
mov o0.w, l(1.000000)
ret 
// Approximately 561 instruction slots used
