//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021
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
// Resource bind info for HWork
// {
//
//   uint4 $Element;                    // Offset:    0 Size:    16
//
// }
//
// Resource bind info for VWork
// {
//
//   uint4 $Element;                    // Offset:    0 Size:    16
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// LinearSampler                     sampler      NA          NA             s0      1 
// Color                             texture  float3          2d             t0      1 
// Luma                              texture   float          2d             t1      1 
// HWork                                 UAV  struct     r/w+cnt             u0      1 
// VWork                                 UAV  struct     r/w+cnt             u1      1 
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
dcl_constantbuffer CB8[1], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_uav_structured_opc u0, 16
dcl_uav_structured_opc u1, 16
dcl_input vThreadIDInGroup.xy
dcl_input vThreadID.xy
dcl_temps 4
dcl_tgsm_structured g0, 4, 100
dcl_thread_group 8, 8, 1
umax r0.x, vThreadIDInGroup.y, vThreadIDInGroup.x
ult r0.x, r0.x, l(5)
if_nz r0.x
  iadd r0.xy, vThreadIDInGroup.xyxx, vThreadID.xyxx
  itof r0.xy, r0.xyxx
  mul r0.xy, r0.xyxx, cb8[0].xyxx
  gather4_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.xyxx, t1.xyzw, s0.x
  imad r1.x, vThreadIDInGroup.y, l(10), vThreadIDInGroup.x
  ishl r1.y, r1.x, l(1)
  store_structured g0.x, r1.y, l(0), r0.w
  imad r0.w, r1.x, l(2), l(1)
  store_structured g0.x, r0.w, l(0), r0.z
  iadd r0.z, r1.y, l(10)
  store_structured g0.x, r0.z, l(0), r0.x
  iadd r0.x, r0.z, l(1)
  store_structured g0.x, r0.x, l(0), r0.y
endif 
sync_g_t
iadd r0.x, vThreadIDInGroup.x, l(1)
imad r0.x, vThreadIDInGroup.y, l(10), r0.x
ld_structured r0.y, r0.x, l(0), g0.xxxx
iadd r1.xyzw, r0.xxxx, l(10, 9, 11, 20)
ld_structured r0.z, r1.y, l(0), g0.xxxx
ld_structured r0.w, r1.x, l(0), g0.xxxx
ld_structured r1.x, r1.z, l(0), g0.xxxx
ld_structured r1.y, r1.w, l(0), g0.xxxx
max r1.z, r0.z, r0.y
max r1.w, r0.w, r1.y
max r1.w, r1.w, r1.x
max r1.z, r1.w, r1.z
min r1.w, r0.z, r0.y
min r2.x, r0.w, r1.y
min r2.x, r1.x, r2.x
min r1.w, r1.w, r2.x
add r1.z, -r1.w, r1.z
lt r1.w, r1.z, cb8[0].z
if_nz r1.w
  ret 
endif 
iadd r2.xyzw, r0.xxxx, l(-1, 1, 19, 21)
ld_structured r0.x, r2.x, l(0), g0.xxxx
ld_structured r1.w, r2.y, l(0), g0.xxxx
ld_structured r2.x, r2.z, l(0), g0.xxxx
ld_structured r2.y, r2.w, l(0), g0.xxxx
add r2.zw, r0.yyyz, r1.yyyx
add r3.x, r0.x, r2.x
add r3.y, r1.w, r2.y
add r2.x, r2.y, r2.x
add r0.x, r0.x, r1.w
mad r1.w, -r0.z, l(2.000000), r3.x
mad r2.y, -r0.w, l(2.000000), r2.z
mad r1.w, |r2.y|, l(2.000000), |r1.w|
mad r2.y, -r1.x, l(2.000000), r3.y
add r1.w, r1.w, |r2.y|
mad r2.x, -r1.y, l(2.000000), r2.x
mad r2.y, -r0.w, l(2.000000), r2.w
mad r2.x, |r2.y|, l(2.000000), |r2.x|
mad r0.x, -r0.y, l(2.000000), r0.x
add r0.x, |r0.x|, r2.x
add r2.x, r2.w, r2.z
mad r2.x, r2.x, l(2.000000), r3.x
add r2.x, r3.y, r2.x
mad r2.x, r2.x, l(0.08333334), -r0.w
div_sat r1.z, |r2.x|, r1.z
mad r2.x, r1.z, l(-2.000000), l(3.000000)
mul r1.z, r1.z, r1.z
mul r1.z, r1.z, r2.x
mul r1.z, r1.z, r1.z
dp2_sat r1.z, r1.zzzz, cb8[0].wwww
ge r0.x, r1.w, r0.x
movc r0.y, r0.x, r0.y, r0.z
movc r0.z, r0.x, r1.y, r1.x
add r0.yz, -r0.wwww, r0.yyzy
ge r0.y, |r0.z|, |r0.y|
mul r0.z, r1.z, l(254.000000)
ftou r0.z, r0.z
and r0.z, r0.z, l(254)
ishl r1.xy, vThreadID.yxyy, l(20, 8, 0, 0)
or r0.w, r1.y, r1.x
iadd r0.z, r0.w, r0.z
bfi r1.x, l(1), l(0), r0.y, r0.z
mov r2.xy, vThreadID.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyzw, t0.xyzw
and r3.xyz, r2.xyzx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
ine r3.xyz, r3.xyzx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
f32tof16 r2.xyz, r2.xyzx
movc r2.xyz, r3.xyzx, r2.xyzx, l(0x00007bff,0x00007bff,0x00007bff,0)
if_nz r0.x
  bfi r0.x, l(1), l(1), r0.y, l(0)
  iadd r3.y, r0.x, vThreadID.y
  mov r3.x, vThreadID.x
  iadd r3.xy, r3.xyxx, l(0, -1, 0, 0)
  mov r3.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r0.xzw, r3.xyzw, t0.xwyz
  and r3.xyz, r0.xzwx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
  ine r3.xyz, r3.xyzx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
  f32tof16 r0.xzw, r0.xxzw
  movc r0.xzw, r3.xxyz, r0.xxzw, l(0x00007bff,0,0x00007bff,0x00007bff)
  imad r1.yzw, r0.xxzw, l(0, 0x00010000, 0x00010000, 0x00010000), r2.xxyz
  imm_atomic_alloc r3.x, u0
  store_structured u0.xyzw, r3.x, l(0), r1.xyzw
else 
  bfi r0.x, l(1), l(1), r0.y, l(0)
  iadd r0.x, r0.x, vThreadID.x
  mov r0.y, vThreadID.y
  iadd r0.xy, r0.xyxx, l(-1, 0, 0, 0)
  mov r0.zw, l(0,0,0,0)
  ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw
  and r3.xyz, r0.xyzx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
  ine r3.xyz, r3.xyzx, l(0x7f800000, 0x7f800000, 0x7f800000, 0)
  f32tof16 r0.xyz, r0.xyzx
  movc r0.xyz, r3.xyzx, r0.xyzx, l(0x00007bff,0x00007bff,0x00007bff,0)
  imad r1.yzw, r0.xxyz, l(0, 0x00010000, 0x00010000, 0x00010000), r2.xxyz
  imm_atomic_alloc r0.x, u1
  store_structured u1.xyzw, r0.x, l(0), r1.xyzw
endif 
ret 
// Approximately 118 instruction slots used
