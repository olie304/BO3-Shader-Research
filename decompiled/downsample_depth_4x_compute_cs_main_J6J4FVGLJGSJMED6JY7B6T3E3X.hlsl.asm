//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:29 2021
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
//   float4 postFxControl7;             // Offset:  112 Size:    16
//   float4 postFxControl8;             // Offset:  128 Size:    16 [unused]
//   float4 postFxControl9;             // Offset:  144 Size:    16 [unused]
//   float4 postFxControlA;             // Offset:  160 Size:    16 [unused]
//   float4 postFxControlB;             // Offset:  176 Size:    16 [unused]
//   float4 postFxControlC;             // Offset:  192 Size:    16 [unused]
//   float4 postFxControlD;             // Offset:  208 Size:    16 [unused]
//   float4 postFxControlE;             // Offset:  224 Size:    16 [unused]
//   float4 postFxControlF;             // Offset:  240 Size:    16 [unused]
//   float4 postFxConst00;              // Offset:  256 Size:    16
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
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// depthSampler                      sampler      NA          NA             s0      1 
// floatZSampler                     texture  float4          2d             t0      1 
// postEffect1                           UAV   float          2d             u0      1 
// postEffect2                           UAV    uint          2d             u1      1 
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
dcl_constantbuffer CB8[17], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_uav_typed_texture2d (float,float,float,float) u0
dcl_uav_typed_texture2d (uint,uint,uint,uint) u1
dcl_input vThreadID.xy
dcl_temps 6
dcl_thread_group 8, 8, 1
utof r0.x, vThreadID.x
ge r0.x, r0.x, cb8[16].z
ftou r0.y, cb8[16].w
uge r0.y, vThreadID.y, r0.y
or r0.x, r0.y, r0.x
if_nz r0.x
  ret 
endif 
utof r0.xy, vThreadID.xyxx
mul r0.xy, r0.xyxx, cb8[7].xxxx
ftou r0.xy, r0.xyxx
utof r0.xy, r0.xyxx
mad r0.xy, r0.xyxx, cb8[16].xyxx, cb8[16].xyxx
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t0.zxwy, s0.x
gather4_aoffimmi_indexable(0,2,0)(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t0.zxwy, s0.x
gather4_aoffimmi_indexable(2,0,0)(texture2d)(float,float,float,float) r3.xyzw, r0.xyxx, t0.zxwy, s0.x
gather4_aoffimmi_indexable(2,2,0)(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t0.zxwy, s0.x
and r4.xy, vThreadID.xyxx, l(1, 1, 0, 0)
ieq r4.x, r4.y, r4.x
if_nz r4.x
  lt r4.x, r1.w, r1.y
  mov r5.xz, r1.wwyw
  mov r5.yw, l(0,1,0,0)
  movc r4.xy, r4.xxxx, r5.xyxx, r5.zwzz
  lt r4.z, r1.x, r4.x
  mov r1.yw, l(0,2,0,3)
  movc r4.xy, r4.zzzz, r1.xyxx, r4.xyxx
  lt r4.z, r1.z, r4.x
  movc r4.xy, r4.zzzz, r1.zwzz, r4.xyxx
  lt r4.z, r2.y, r4.x
  mov r5.xz, r2.yywy
  mov r5.yw, l(0,4,0,5)
  movc r4.xy, r4.zzzz, r5.xyxx, r4.xyxx
  lt r4.z, r2.w, r4.x
  movc r4.xy, r4.zzzz, r5.zwzz, r4.xyxx
  lt r4.z, r2.x, r4.x
  mov r2.yw, l(0,6,0,7)
  movc r4.xy, r4.zzzz, r2.xyxx, r4.xyxx
  lt r4.z, r2.z, r4.x
  movc r4.xy, r4.zzzz, r2.zwzz, r4.xyxx
  lt r4.z, r3.y, r4.x
  mov r5.xz, r3.yywy
  mov r5.yw, l(0,8,0,9)
  movc r4.xy, r4.zzzz, r5.xyxx, r4.xyxx
  lt r4.z, r3.w, r4.x
  movc r4.xy, r4.zzzz, r5.zwzz, r4.xyxx
  lt r4.z, r3.x, r4.x
  mov r3.yw, l(0,10,0,11)
  movc r4.xy, r4.zzzz, r3.xyxx, r4.xyxx
  lt r4.z, r3.z, r4.x
  movc r4.xy, r4.zzzz, r3.zwzz, r4.xyxx
  lt r4.z, r0.y, r4.x
  mov r5.xz, r0.yywy
  mov r5.yw, l(0,12,0,13)
  movc r4.xy, r4.zzzz, r5.xyxx, r4.xyxx
  lt r4.z, r0.w, r4.x
  movc r4.xy, r4.zzzz, r5.zwzz, r4.xyxx
  lt r4.z, r0.x, r4.x
  mov r0.yw, l(0,14,0,15)
  movc r4.xy, r4.zzzz, r0.xyxx, r4.xyxx
  lt r4.z, r0.z, r4.x
  movc r4.xy, r4.zzzz, r0.zwzz, r4.xyxx
else 
  lt r4.z, r1.y, r1.w
  mov r5.xz, r1.wwyw
  mov r5.yw, l(0,1,0,0)
  movc r4.zw, r4.zzzz, r5.xxxy, r5.zzzw
  lt r5.x, r4.z, r1.x
  mov r1.yw, l(0,2,0,3)
  movc r1.xy, r5.xxxx, r1.xyxx, r4.zwzz
  lt r4.z, r1.x, r1.z
  movc r1.xy, r4.zzzz, r1.zwzz, r1.xyxx
  lt r1.z, r1.x, r2.y
  mov r5.xz, r2.yywy
  mov r5.yw, l(0,4,0,5)
  movc r1.xy, r1.zzzz, r5.xyxx, r1.xyxx
  lt r1.z, r1.x, r2.w
  movc r1.xy, r1.zzzz, r5.zwzz, r1.xyxx
  lt r1.z, r1.x, r2.x
  mov r2.yw, l(0,6,0,7)
  movc r1.xy, r1.zzzz, r2.xyxx, r1.xyxx
  lt r1.z, r1.x, r2.z
  movc r1.xy, r1.zzzz, r2.zwzz, r1.xyxx
  lt r1.z, r1.x, r3.y
  mov r2.xz, r3.yywy
  mov r2.yw, l(0,8,0,9)
  movc r1.xy, r1.zzzz, r2.xyxx, r1.xyxx
  lt r1.z, r1.x, r3.w
  movc r1.xy, r1.zzzz, r2.zwzz, r1.xyxx
  lt r1.z, r1.x, r3.x
  mov r3.yw, l(0,10,0,11)
  movc r1.xy, r1.zzzz, r3.xyxx, r1.xyxx
  lt r1.z, r1.x, r3.z
  movc r1.xy, r1.zzzz, r3.zwzz, r1.xyxx
  lt r1.z, r1.x, r0.y
  mov r2.xz, r0.yywy
  mov r2.yw, l(0,12,0,13)
  movc r1.xy, r1.zzzz, r2.xyxx, r1.xyxx
  lt r1.z, r1.x, r0.w
  movc r1.xy, r1.zzzz, r2.zwzz, r1.xyxx
  lt r1.z, r1.x, r0.x
  mov r0.yw, l(0,14,0,15)
  movc r0.xy, r1.zzzz, r0.xyxx, r1.xyxx
  lt r1.x, r0.x, r0.z
  movc r4.xy, r1.xxxx, r0.zwzz, r0.xyxx
endif 
ishl r0.x, r4.y, l(1)
ushr r0.xy, l(0xbebe1414, 0xaf05af05, 0, 0), r0.xxxx
bfi r0.x, l(2), l(2), r0.x, l(0)
bfi r0.x, l(2), l(0), r0.y, r0.x
ge r0.y, r4.x, l(0.984375)
mul r0.z, r4.x, l(1.01587307)
mad r0.w, r4.x, l(64.000000), l(-63.000000)
movc r0.z, r0.y, r0.w, r0.z
max r0.z, r0.z, l(0.00000001)
rcp r0.z, r0.z
movc r0.y, r0.y, -r0.z, r0.z
store_uav_typed u0.xyzw, vThreadID.xyyy, r0.yyyy
store_uav_typed u1.xyzw, vThreadID.xyyy, r0.xxxx
ret 
// Approximately 120 instruction slots used
