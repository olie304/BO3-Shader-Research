//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:14 2021
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
//   float4 postFxControlD;             // Offset:  208 Size:    16 [unused]
//   float4 postFxControlE;             // Offset:  224 Size:    16 [unused]
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
// floatZSampler                     texture  float4          2d             t0      1 
// colorMapSampler                   texture  float4          2d             t6      1 
// gridTexture                       texture  float4          2d             t7      1 
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
dcl_constantbuffer CB8[28], immediateIndexed
dcl_constantbuffer CB1[70], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t6.xyzw, s0
mul r1.xy, v1.xyxx, cb1[44].xyxx
ftoi r1.xy, r1.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.w, r1.xyzw, t0.yzwx
ge r1.x, r0.w, l(0.984375)
mul r1.y, r0.w, l(1.01587307)
mad r0.w, r0.w, l(64.000000), l(-63.000000)
movc r0.w, r1.x, r0.w, r1.y
max r0.w, r0.w, l(0.00000001)
rcp r0.w, r0.w
add r1.xyzw, v1.xyxy, l(-0.500000, -0.500000, 0.000000, -0.00138889)
mul r1.x, r0.w, r1.x
mul r1.y, r0.w, -r1.y
mul r1.xy, r1.xyxx, cb8[15].zwzz
mul r2.xyz, r1.yyyy, cb8[1].xyzx
mad r2.xyz, r1.xxxx, cb8[0].xyzx, r2.xyzx
mad r2.xyz, r0.wwww, cb8[2].xyzx, r2.xyzx
add r2.xyz, r2.xyzx, cb8[3].xyzx
lt r0.w, l(0.000000), cb8[17].w
if_nz r0.w
  add r3.xyz, r2.xyzx, -cb8[16].xyzx
  dp3 r0.w, r3.xyzx, r3.xyzx
  sqrt r0.w, r0.w
  ge r0.w, cb8[18].x, r0.w
  add r1.x, cb8[18].x, cb8[18].x
  div r1.xy, r3.xyxx, r1.xxxx
  mul r1.xy, r1.xyxx, l(1.100000, 1.100000, 0.000000, 0.000000)
  mul r2.w, cb8[18].y, cb1[69].w
  sincos r3.x, r4.x, r2.w
  mul r3.yz, r1.xxyx, r4.xxxx
  mad r4.x, r1.y, r3.x, r3.y
  mad r4.y, -r1.x, r3.x, r3.z
  add_sat r1.xy, r4.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r3.yw, r1.xyxx, t7.xyzw, s0
  if_nz r0.w
    mul r0.w, cb8[18].z, cb1[69].w
    sincos null, r0.w, r0.w
    mad r0.w, r0.w, l(0.500000), l(0.500000)
    mul r4.xyz, r0.wwww, cb8[17].xyzx
    mul r3.xyz, r3.yyyy, r4.xyzx
  else 
    mov r3.xyzw, l(0,0,0,0)
  endif 
else 
  mov r3.xyzw, l(0,0,0,0)
endif 
lt r0.w, l(0.000000), cb8[20].w
if_nz r0.w
  add r4.xyz, r2.xyzx, -cb8[19].xyzx
  dp3 r0.w, r4.xyzx, r4.xyzx
  sqrt r0.w, r0.w
  ge r0.w, cb8[21].x, r0.w
  add r1.x, cb8[21].x, cb8[21].x
  div r1.xy, r4.xyxx, r1.xxxx
  mul r1.xy, r1.xyxx, l(1.100000, 1.100000, 0.000000, 0.000000)
  mul r2.w, cb8[21].y, cb1[69].w
  sincos r4.x, r5.x, r2.w
  mul r4.yz, r1.xxyx, r5.xxxx
  mad r5.x, r1.y, r4.x, r4.y
  mad r5.y, -r1.x, r4.x, r4.z
  add_sat r1.xy, r5.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r4.yw, r1.xyxx, t7.xyzw, s0
  if_nz r0.w
    mul r0.w, cb8[21].z, cb1[69].w
    sincos null, r0.w, r0.w
    mad r0.w, r0.w, l(0.500000), l(0.500000)
    mul r5.xyz, r0.wwww, cb8[20].xyzx
    mul r4.xyz, r4.yyyy, r5.xyzx
  else 
    mov r4.xyzw, l(0,0,0,0)
  endif 
  add r3.xyzw, r3.xyzw, r4.xyzw
endif 
lt r0.w, l(0.000000), cb8[23].w
if_nz r0.w
  add r4.xyz, r2.xyzx, -cb8[22].xyzx
  dp3 r0.w, r4.xyzx, r4.xyzx
  sqrt r0.w, r0.w
  ge r0.w, cb8[24].x, r0.w
  add r1.x, cb8[24].x, cb8[24].x
  div r1.xy, r4.xyxx, r1.xxxx
  mul r1.xy, r1.xyxx, l(1.100000, 1.100000, 0.000000, 0.000000)
  mul r2.w, cb8[24].y, cb1[69].w
  sincos r4.x, r5.x, r2.w
  mul r4.yz, r1.xxyx, r5.xxxx
  mad r5.x, r1.y, r4.x, r4.y
  mad r5.y, -r1.x, r4.x, r4.z
  add_sat r1.xy, r5.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r4.yw, r1.xyxx, t7.xyzw, s0
  if_nz r0.w
    mul r0.w, cb8[24].z, cb1[69].w
    sincos null, r0.w, r0.w
    mad r0.w, r0.w, l(0.500000), l(0.500000)
    mul r5.xyz, r0.wwww, cb8[23].xyzx
    mul r4.xyz, r4.yyyy, r5.xyzx
  else 
    mov r4.xyzw, l(0,0,0,0)
  endif 
  add r3.xyzw, r3.xyzw, r4.xyzw
endif 
lt r0.w, l(0.000000), cb8[26].w
if_nz r0.w
  add r2.xyz, r2.xyzx, -cb8[25].xyzx
  dp3 r0.w, r2.xyzx, r2.xyzx
  sqrt r0.w, r0.w
  ge r0.w, cb8[27].x, r0.w
  add r1.x, cb8[27].x, cb8[27].x
  div r1.xy, r2.xyxx, r1.xxxx
  mul r1.xy, r1.xyxx, l(1.100000, 1.100000, 0.000000, 0.000000)
  mul r2.x, cb8[27].y, cb1[69].w
  sincos r2.x, r4.x, r2.x
  mul r2.yz, r1.xxyx, r4.xxxx
  mad r4.x, r1.y, r2.x, r2.y
  mad r4.y, -r1.x, r2.x, r2.z
  add_sat r1.xy, r4.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  sample_indexable(texture2d)(float,float,float,float) r2.yw, r1.xyxx, t7.xyzw, s0
  if_nz r0.w
    mul r0.w, cb8[27].z, cb1[69].w
    sincos null, r0.w, r0.w
    mad r0.w, r0.w, l(0.500000), l(0.500000)
    mul r4.xyz, r0.wwww, cb8[26].xyzx
    mul r2.xyz, r2.yyyy, r4.xyzx
  else 
    mov r2.xyzw, l(0,0,0,0)
  endif 
  add r3.xyzw, r2.xyzw, r3.xyzw
endif 
eq r0.w, r3.w, l(0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.zwzz, t0.xyzw, s0
add r1.yz, v1.xxyx, l(0.000000, 0.000000, 0.00138889, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.y, r1.yzyy, t0.yxzw, s0
if_nz r0.w
  mov o0.xyz, r0.xyzx
  mov o0.w, l(1.000000)
  ret 
endif 
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.xyxx, t0.yzwx, s0
add r1.x, -r1.x, r0.w
add r0.w, -r0.w, r1.y
max r0.w, r1.x, r0.w
lt r1.x, r0.w, l(0.000000)
movc r0.w, r1.x, l(0), r0.w
lt r1.x, r0.w, l(0.000010)
mul r0.w, r0.w, r3.w
mul r0.w, r0.w, l(100000.000000)
movc r0.w, r1.x, r0.w, r3.w
mul r1.xyz, r3.xyzx, r0.wwww
mad o0.xyz, r1.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000), r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 151 instruction slots used