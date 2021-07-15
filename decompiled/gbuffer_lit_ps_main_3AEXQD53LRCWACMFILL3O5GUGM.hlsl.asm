//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:53 2021
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
//   float baseNormalHeight;            // Offset:  160 Size:     4
//   float2 glossRange;                 // Offset:  164 Size:     8
//   float detailScaleHeight;           // Offset:  172 Size:     4
//   float detailScaleHeight1;          // Offset:  176 Size:     4
//   float detailScaleHeight2;          // Offset:  180 Size:     4
//   float detailScaleHeight3;          // Offset:  184 Size:     4
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
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
// detailNormal1                     texture  float4          2d            t12      1 
// detailNormal2                     texture  float4          2d            t14      1 
// detailNormal3                     texture  float4          2d            t15      1 
// detailNormal4                     texture  float4          2d            t16      1 
// detailNormalMask                  texture  float4          2d            t17      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
// PostFxCBuffer                     cbuffer      NA          NA            cb8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 4   x           3     NONE    uint   x   
// TEXCOORD                 1   xyz         4     NONE   float   xyz 
// TEXCOORD                 2   xyz         5     NONE   float   xyz 
// TEXCOORD                 3   xyz         6     NONE   float   xyz 
// SV_IsFrontFace           0   x           7    FFACE    uint   x   
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
dcl_constantbuffer CB0[12], immediateIndexed
dcl_constantbuffer CB8[1], immediateIndexed
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
dcl_input_ps linear v2.xy
dcl_input_ps constant v3.x
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
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
mul o0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t11.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r0.y, v2.xyxx, t10.yxzw, s2
add r0.z, -cb0[10].y, cb0[10].z
mad r0.y, r0.y, r0.z, cb0[10].y
mul_sat r0.y, r0.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t9.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].xxxx, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r1.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.x, r0.zwzz, r0.zwzz
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r2.z, r1.x
mul r1.x, r1.z, r1.z
mul r1.x, r1.x, l(0.33333334)
min r1.x, r1.x, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v2.xyxx, t17.xyzw, s5
lt r1.y, l(0.000000), r3.x
mul r1.zw, v2.xxxy, cb0[7].xxxy
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r1.zwzz, t12.xyzw, s3
mul r1.zw, v2.xxxy, cb0[6].xxxy
sample_indexable(texture2d)(float,float,float,float) r5.xyz, r1.zwzz, t14.xyzw, s3
mul r1.zw, v2.xxxy, cb0[5].xxxy
sample_indexable(texture2d)(float,float,float,float) r6.xyz, r1.zwzz, t15.xyzw, s3
mul r1.zw, v2.xxxy, cb0[4].xxxy
sample_indexable(texture2d)(float,float,float,float) r7.xyz, r1.zwzz, t16.xyzw, s3
if_nz r1.y
  mul r1.y, r3.x, cb0[11].z
  mov r7.xyz, r4.xyzx
else 
  lt r1.z, l(0.000000), r3.y
  if_nz r1.z
    mul r1.y, r3.y, cb0[11].y
    mov r7.xyz, r5.xyzx
  else 
    lt r1.z, l(0.000000), r3.z
    if_nz r1.z
      mul r1.y, r3.z, cb0[11].x
      mov r7.xyz, r6.xyzx
    else 
      lt r1.z, l(0.000000), r3.w
      if_nz r1.z
        mul r1.y, r3.w, cb0[10].w
      else 
        mov r7.xyz, l(0,0,0,0)
        mov r1.y, l(0)
      endif 
    endif 
  endif 
endif 
mad r1.zw, r7.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mul r2.w, r7.z, r7.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r2.xy, r1.zwzz, r1.yyyy, r0.zwzz
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
mad r0.z, r2.w, r1.y, r1.x
movc r0.w, v7.x, l(1.000000), l(-1.000000)
dp3 r1.x, v4.xyzx, v4.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v4.xyzx
mul r3.xyz, r0.wwww, r1.xyzx
dp3 r1.w, v5.xyzx, v5.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, v5.xyzx
mul r4.xyz, r0.wwww, r4.xyzx
dp3 r1.w, v6.xyzx, v6.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, v6.xyzx
mul r5.xyz, r0.wwww, r5.xyzx
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.z
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r5.xyz, r2.yyyy, r5.xyzx
mad r2.xyw, r4.xyxz, r2.xxxx, r5.xyxz
mad r2.xyz, r3.xyzx, r2.zzzz, r2.xywx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.yzw, r0.zzzz, r2.xxyz
add r0.z, r3.y, r3.x
mad r0.z, r1.z, r0.w, r0.z
mul r0.z, r0.z, l(0.500000)
mad r1.xyz, r1.xyzx, r0.wwww, -r0.zzzz
max r0.w, r1.z, r1.y
max r0.w, r0.w, r1.x
max r0.z, r0.w, r0.z
eq r0.w, r0.z, r1.x
mul r3.yzw, r2.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.x, r0.z, l(2.000000)
mov r3.x, l(1)
mov r2.x, l(0)
movc r2.xyzw, r0.wwww, r3.xyzw, r2.xyzw
movc r0.z, r0.w, r1.x, r0.z
eq r0.w, r0.z, r1.y
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.x, r0.z, l(2.000000)
mov r3.x, l(2)
movc r2.xyzw, r0.wwww, r3.xyzw, r2.xyzw
movc r0.z, r0.w, r1.x, r0.z
eq r0.z, r0.z, r1.z
mul r1.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r1.x, l(3)
movc r1.xyzw, r0.zzzz, r1.xyzw, r2.xyzw
add r0.z, r1.z, r1.y
add r2.z, r1.w, r0.z
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.z, |r1.w|, l(1.000000)
rsq r0.z, r0.z
mul r0.zw, r0.zzzz, r1.yyyz
mad o1.xy, r0.zwzz, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.y, r1.x
mul o1.w, r0.y, l(0.33333334)
mov o0.w, l(1.000000)
mov o2.xyw, l(0.040000,0.500000,0,0.33333334)
mov o2.z, r0.x
ret 
// Approximately 145 instruction slots used
