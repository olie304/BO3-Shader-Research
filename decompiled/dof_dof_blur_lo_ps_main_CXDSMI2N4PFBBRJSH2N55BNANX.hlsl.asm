//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:22 2021
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// bilinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
// codeTexture1                      texture  float4          2d             t1      1 
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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB8[40], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 7
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.xyxx, t1.xyzw, s0
lt r0.y, l(0.000000), r0.x
if_nz r0.y
  mad r1.xyzw, r0.xxxx, cb8[16].xyzw, v1.xyxy
  mad r2.xyzw, r0.xxxx, cb8[17].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r0.yzw, r1.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r3.xyz, r1.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.y, r1.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.z, r2.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r1.w, r2.zwzz, t1.yzwx, s0, l(0.000000)
  mul r1.x, r0.x, r1.x
  mad r1.x, r0.x, r0.x, r1.x
  mad r1.x, r1.y, r0.x, r1.x
  mul r2.xyz, r0.xxxx, r3.xyzx
  mad r0.yzw, r0.yyzw, r0.xxxx, r2.xxyz
  mad r1.x, r1.z, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r1.w, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[18].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[19].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[20].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[21].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[22].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[23].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[24].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[25].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[26].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[27].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[28].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[29].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[30].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[31].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[32].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[33].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[34].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[35].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[36].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[37].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.yzw, r6.xxyz, r0.xxxx, r0.yyzw
  mad r2.xyzw, r0.xxxx, cb8[38].xyzw, v1.xyxy
  mad r3.xyzw, r0.xxxx, cb8[39].xyzw, v1.xyxy
  sample_l_indexable(texture2d)(float,float,float,float) r1.yzw, r2.xyxx, t0.wxyz, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.x, r2.xyxx, t1.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.y, r2.zwzz, t1.yxzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r5.xyz, r3.xyxx, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.z, r3.xyxx, t1.yzxw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r6.xyz, r3.zwzz, t0.xyzw, s0, l(0.000000)
  sample_l_indexable(texture2d)(float,float,float,float) r2.w, r3.zwzz, t1.yzwx, s0, l(0.000000)
  mad r1.x, r2.x, r0.x, r1.x
  mad r0.yzw, r1.yyzw, r0.xxxx, r0.yyzw
  mad r1.x, r2.y, r0.x, r1.x
  mad r0.yzw, r4.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.z, r0.x, r1.x
  mad r0.yzw, r5.xxyz, r0.xxxx, r0.yyzw
  mad r1.x, r2.w, r0.x, r1.x
  mad r0.xyz, r6.xyzx, r0.xxxx, r0.yzwy
  lt r0.w, l(0.000000), r1.x
  div r1.x, l(1.000000, 1.000000, 1.000000, 1.000000), r1.x
  mul r0.xyz, r0.xyzx, r1.xxxx
  and o0.xyz, r0.xyzx, r0.wwww
else 
  mov o0.xyz, l(0,0,0,0)
endif 
ret 
// Approximately 228 instruction slots used