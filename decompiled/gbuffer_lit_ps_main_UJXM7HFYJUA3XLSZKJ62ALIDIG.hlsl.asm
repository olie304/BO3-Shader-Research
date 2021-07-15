//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:29:34 2021
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
//   float4 detailScale;                // Offset:   64 Size:    16
//   float4 detailScale1;               // Offset:   80 Size:    16
//   float4 detailScale2;               // Offset:   96 Size:    16
//   float4 detailScale3;               // Offset:  112 Size:    16
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 specColorTint;              // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float detailScaleHeight;           // Offset:  184 Size:     4
//   float detailScaleHeight1;          // Offset:  188 Size:     4
//   float detailScaleHeight2;          // Offset:  192 Size:     4
//   float detailScaleHeight3;          // Offset:  196 Size:     4
//
// }
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
// Resource bind info for modelInstanceBuffer
// {
//
//   struct ModelInstanceData
//   {
//       
//       uint boneArrayIndex;           // Offset:    0
//       uint shaderConstantSet;        // Offset:    4
//       uint flagsAndPrevFrameIndex;   // Offset:    8
//       uint worldMatrix;              // Offset:   12
//       uint siegeAnimStateOffset;     // Offset:   16
//       uint prevFrameSiegeAnimStateOffset;// Offset:   20
//
//   } $Element;                        // Offset:    0 Size:    24
//
// }
//
// Resource bind info for shaderConstantSetBuffer
// {
//
//   struct GpuShaderConstantSet
//   {
//       
//       float4 scriptVector0;          // Offset:    0
//       float4 scriptVector1;          // Offset:   16
//       float4 scriptVector2;          // Offset:   32
//       float4 scriptVector3;          // Offset:   48
//       float4 scriptVector4;          // Offset:   64
//       float4 scriptVector5;          // Offset:   80
//       float4 scriptVector6;          // Offset:   96
//       float4 scriptVector7;          // Offset:  112
//       float4 weaponParam0;           // Offset:  128
//       float4 weaponParam1;           // Offset:  144
//       float4 weaponParam2;           // Offset:  160
//       float4 weaponParam3;           // Offset:  176
//       float4 weaponParam4;           // Offset:  192
//       float4 weaponParam5;           // Offset:  208
//       float4 weaponParam6;           // Offset:  224
//       float4 weaponParam7;           // Offset:  240
//       float4 characterParam0;        // Offset:  256
//       float4 characterParam1;        // Offset:  272
//       float4 characterParam2;        // Offset:  288
//       float4 characterParam3;        // Offset:  304
//       float4 characterParam4;        // Offset:  320
//       float4 characterParam5;        // Offset:  336
//       float4 characterParam6;        // Offset:  352
//       float4 characterParam7;        // Offset:  368
//
//   } $Element;                        // Offset:    0 Size:   384
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
// detailMaskSampler                 sampler      NA          NA             s5      1 
// customizeMask                     texture  float4          2d             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// shaderConstantSetBuffer           texture  struct         r/o             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// specColorMap                      texture  float4          2d             t9      1 
// normalMap                         texture  float4          2d            t10      1 
// glossMap                          texture  float4          2d            t11      1 
// aoMap                             texture  float4          2d            t12      1 
// detailNormal1                     texture  float4          2d            t14      1 
// detailNormal2                     texture  float4          2d            t15      1 
// detailNormal3                     texture  float4          2d            t16      1 
// detailNormal4                     texture  float4          2d            t17      1 
// detailNormalMask                  texture  float4          2d            t18      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PerSceneConsts                    cbuffer      NA          NA            cb1      1 
// PostFxCBuffer                     cbuffer      NA          NA            cb8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 4   x           3     NONE    uint   x   
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// TEXCOORD                 7   xyzw        7     NONE   float   xy w
// SV_IsFrontFace           0   x           8    FFACE    uint   x   
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
// SV_TARGET                3   xy          3   TARGET   float   xy  
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[13], immediateIndexed
dcl_constantbuffer CB8[1], immediateIndexed
dcl_constantbuffer CB1[45], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_structured t4, 24
dcl_resource_structured t6, 384
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t16
dcl_resource_texture2d (float,float,float,float) t17
dcl_resource_texture2d (float,float,float,float) t18
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.x
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xyw
dcl_input_ps_sgv constant v8.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xy
dcl_temps 8
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v3.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(256), t6.xyzw
lt r0.y, l(0.000000), r1.w
if_nz r0.y
  ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(288), t6.xxyz
  ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(320), t6.xyzx
  sample_indexable(texture2d)(float,float,float,float) r3.xyz, v2.xyxx, t0.xyzw, s1
  add r0.x, r3.y, r3.x
  add_sat r0.x, r3.z, r0.x
  mul r0.yzw, r0.yyzw, r3.yyyy
  mad r0.yzw, r3.xxxx, r1.xxyz, r0.yyzw
  mad r0.yzw, r3.zzzz, r2.xxyz, r0.yyzw
  add r0.x, -r0.x, l(1.000000)
  add r1.xyz, -r0.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
  mad r0.xyz, r0.xxxx, r1.xyzx, r0.yzwy
else 
  mov r0.xyz, l(1.000000,1.000000,1.000000,0)
endif 
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t7.xyzw, s1
add r0.xyz, r0.xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r0.xyz, r1.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t9.yzwx, s2
add r1.xyz, cb0[10].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add_sat r0.w, -r0.w, l(1.000000)
mul o0.xyz, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t12.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r0.y, v2.xyxx, t11.yxzw, s2
add r0.z, -cb0[11].x, cb0[11].y
mad r0.y, r0.y, r0.z, cb0[11].x
mul_sat r0.y, r0.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v2.xyxx, t10.xyzw, s3
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r2.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.w, r0.zwzz, r0.zwzz
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r3.z, r1.w
mul r1.w, r2.z, r2.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, v2.xyxx, t18.xyzw, s5
lt r3.w, l(0.000000), r2.x
mul r4.xy, v2.xyxx, cb0[7].xyxx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t14.xyzw, s3
mul r5.xy, v2.xyxx, cb0[6].xyxx
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r5.xyxx, t15.xyzw, s3
mul r6.xy, v2.xyxx, cb0[5].xyxx
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t16.xyzw, s3
mul r7.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r7.xyxx, t17.xyzw, s3
if_nz r3.w
  mul r2.x, r2.x, cb0[12].y
  mov r7.xyz, r4.xyzx
else 
  lt r3.w, l(0.000000), r2.y
  if_nz r3.w
    mul r2.x, r2.y, cb0[12].x
    mov r7.xyz, r5.xyzx
  else 
    lt r2.y, l(0.000000), r2.z
    if_nz r2.y
      mul r2.x, r2.z, cb0[11].w
      mov r7.xyz, r6.xyzx
    else 
      lt r2.y, l(0.000000), r2.w
      if_nz r2.y
        mul r2.x, r2.w, cb0[11].z
      else 
        mov r7.xyz, l(0,0,0,0)
        mov r2.x, l(0)
      endif 
    endif 
  endif 
endif 
mad r2.yz, r7.xxyx, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r2.w, r7.z, r7.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r3.xy, r2.yzyy, r2.xxxx, r0.zwzz
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r3.xyzx
mad r0.z, r2.w, r2.x, r1.w
movc r0.w, v8.x, l(1.000000), l(-1.000000)
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v4.xyzx
mul r4.xyz, r0.wwww, r2.xyzx
dp3 r1.w, v5.xyzx, v5.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, v5.xyzx
mul r5.xyz, r0.wwww, r5.xyzx
dp3 r1.w, v6.xyzx, v6.xyzx
rsq r1.w, r1.w
mul r6.xyz, r1.wwww, v6.xyzx
mul r6.xyz, r0.wwww, r6.xyzx
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.z
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r6.xyz, r3.yyyy, r6.xyzx
mad r3.xyw, r5.xyxz, r3.xxxx, r6.xyxz
mad r3.xyz, r4.xyzx, r3.zzzz, r3.xywx
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.yzw, r0.zzzz, r3.xxyz
div r4.zw, v7.xxxy, v7.wwww
mul r5.xy, cb1[44].xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r6.x, r4.z, r5.x
mul r6.y, r4.w, -r5.y
mad r4.zw, cb1[44].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000), r6.xxxy
add r4.zw, -r4.zzzw, v0.xxxy
add r0.z, r4.y, r4.x
mad r0.z, r2.z, r0.w, r0.z
mul r0.z, r0.z, l(0.500000)
mad r2.xyz, r2.xyzx, r0.wwww, -r0.zzzz
max r0.w, r2.z, r2.y
max r0.w, r0.w, r2.x
max r0.z, r0.w, r0.z
eq r0.w, r0.z, r2.x
mul r5.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r5.x, l(1)
mov r3.x, l(0)
movc r3.xyzw, r0.wwww, r5.xyzw, r3.xyzw
movc r0.z, r0.w, r1.w, r0.z
eq r0.w, r0.z, r2.y
mul r5.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r5.x, l(2)
movc r3.xyzw, r0.wwww, r5.xyzw, r3.xyzw
movc r0.z, r0.w, r1.w, r0.z
eq r0.z, r0.z, r2.z
mul r2.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r2.xyzw, r0.zzzz, r2.xyzw, r3.xyzw
add r0.z, r2.z, r2.y
add r3.z, r2.w, r0.z
add r3.y, -r2.y, r2.w
mad r3.x, -r2.z, l(3.000000), r3.z
mul r2.yzw, r3.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.z, |r2.w|, l(1.000000)
rsq r0.z, r0.z
mul r0.zw, r0.zzzz, r2.yyyz
mad o1.xy, r0.zwzz, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.y, r2.x
mul o1.w, r0.y, l(0.33333334)
ftou r0.yz, v0.xxyx
add r2.y, -r1.z, r1.x
mad r0.w, r2.y, l(0.500000), r1.z
add r2.z, -r0.w, r1.y
mad r2.x, r2.z, l(0.500000), r0.w
and r0.yz, r0.yyzy, l(0, 1, 1, 0)
ieq r0.y, r0.z, r0.y
movc r0.yz, r0.yyyy, r2.xxyx, r2.xxzx
mad o2.xy, r0.yzyy, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
add r0.yz, |r4.zzwz|, l(0.000000, -10.000000, -10.000000, 0.000000)
mul_sat r0.yz, r0.yyzy, l(0.000000, 0.03333334, 0.03333334, 0.000000)
mul r1.xy, |r4.zwzz|, l(0.100000, 0.100000, 0.000000, 0.000000)
min r1.xy, r1.xyxx, l(1.000000, 1.000000, 0.000000, 0.000000)
add r1.xy, -r0.yzyy, r1.xyxx
mad r0.yz, r1.xxyx, l(0.000000, 0.500000, 0.500000, 0.000000), r0.yyzy
ge r1.xy, r4.zwzz, l(0.000000, 0.000000, 0.000000, 0.000000)
movc o3.xy, r1.xyxx, r0.yzyy, -r0.yzyy
mov o0.w, l(1.000000)
mov o2.z, r0.x
mov o2.w, l(0.33333334)
ret 
// Approximately 173 instruction slots used
