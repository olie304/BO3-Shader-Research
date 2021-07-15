//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:22:45 2021
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
//   float4 postFxBloom00;              // Offset: 1280 Size:    16
//   float4 postFxBloom01;              // Offset: 1296 Size:    16
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
// biLinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
// codeTexture1                      texture  float4          2d             t1      1 
// codeTexture2                      texture   uint2          2d             t2      1 
// PostFxCBuffer                     cbuffer      NA          NA            cb8      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// SV_POSITION              0   xyzw        1      POS   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB8[82], immediateIndexed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (uint,uint,uint,uint) t2
dcl_input_ps linear v0.xy
dcl_input_ps_siv linear noperspective v1.xy, position
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 6
sample_aoffimmi_indexable(-2,-2,0)(texture2d)(float,float,float,float) r0.xyz, v0.xyxx, t0.xyzw, s0
dp3 r0.w, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.w, r0.w, l(1.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
sample_aoffimmi_indexable(-2,0,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r1.w, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, r1.w, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mul r2.xyz, r1.wwww, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.w, r3.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.w, r2.w, l(1.000000)
div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w
mad r2.xyz, r3.xyzx, r2.wwww, r2.xyzx
mad r0.xyz, r0.xyzx, r0.wwww, r2.xyzx
sample_aoffimmi_indexable(0,-2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.w, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.w, r3.w, l(1.000000)
div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w
mad r0.xyz, r2.xyzx, r3.wwww, r0.xyzx
add r4.x, r1.w, r2.w
add r0.w, r0.w, r4.x
add r0.w, r3.w, r0.w
div r0.xyz, r0.xyzx, r0.wwww
mul r4.xyz, r2.wwww, r3.xyzx
mad r2.xyz, r2.xyzx, r3.wwww, r4.xyzx
add r0.w, r2.w, r3.w
sample_aoffimmi_indexable(2,-2,0)(texture2d)(float,float,float,float) r5.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.w, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.w, r3.w, l(1.000000)
div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w
mad r2.xyz, r5.xyzx, r3.wwww, r2.xyzx
add r0.w, r0.w, r3.w
sample_aoffimmi_indexable(2,0,0)(texture2d)(float,float,float,float) r5.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.w, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.w, r3.w, l(1.000000)
div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w
mad r2.xyz, r5.xyzx, r3.wwww, r2.xyzx
mad r5.xyz, r5.xyzx, r3.wwww, r4.xyzx
add r0.w, r0.w, r3.w
add r3.w, r2.w, r3.w
div r2.xyz, r2.xyzx, r0.wwww
mul r2.xyz, r2.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000)
mad r0.xyz, r0.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r2.xyzx
sample_aoffimmi_indexable(2,2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r0.w, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.w, r0.w, l(1.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mad r2.xyz, r2.xyzx, r0.wwww, r5.xyzx
add r0.w, r0.w, r3.w
sample_aoffimmi_indexable(0,2,0)(texture2d)(float,float,float,float) r5.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.w, r5.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.w, r3.w, l(1.000000)
div r3.w, l(1.000000, 1.000000, 1.000000, 1.000000), r3.w
mad r2.xyz, r5.xyzx, r3.wwww, r2.xyzx
mad r4.xyz, r5.xyzx, r3.wwww, r4.xyzx
add r0.w, r0.w, r3.w
add r2.w, r2.w, r3.w
div r2.xyz, r2.xyzx, r0.wwww
mad r0.xyz, r2.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r0.xyzx
sample_aoffimmi_indexable(-2,2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r0.w, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.w, r0.w, l(1.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mad r2.xyz, r2.xyzx, r0.wwww, r4.xyzx
add r0.w, r0.w, r2.w
add r0.w, r1.w, r0.w
mad r1.xyz, r1.xyzx, r1.wwww, r2.xyzx
div r1.xyz, r1.xyzx, r0.wwww
mad r0.xyz, r1.xyzx, l(0.125000, 0.125000, 0.125000, 0.000000), r0.xyzx
sample_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r0.w, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r0.w, r0.w, l(1.000000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mul r2.xyz, r0.wwww, r1.xyzx
sample_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r4.xyz, v0.xyxx, t0.xyzw, s0
dp3 r1.w, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, r1.w, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mad r2.xyz, r4.xyzx, r1.wwww, r2.xyzx
add r0.w, r0.w, r1.w
add r1.xyz, r1.xyzx, r4.xyzx
sample_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r4.xyz, v0.xyxx, t0.xyzw, s0
dp3 r1.w, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, r1.w, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mad r2.xyz, r4.xyzx, r1.wwww, r2.xyzx
add r0.w, r0.w, r1.w
add r1.xyz, r1.xyzx, r4.xyzx
sample_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r4.xyz, v0.xyxx, t0.xyzw, s0
dp3 r1.w, r4.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.w, r1.w, l(1.000000)
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mad r2.xyz, r4.xyzx, r1.wwww, r2.xyzx
add r0.w, r0.w, r1.w
div r2.xyz, r2.xyzx, r0.wwww
mad r0.xyz, r2.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r0.xyzx
add r1.xyz, r1.xyzx, r4.xyzx
mad r1.xyz, r1.xyzx, l(0.250000, 0.250000, 0.250000, 0.000000), -r3.xyzx
mad o1.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r3.xyzx
mul r1.xyz, r0.xyzx, cb8[80].xxxx
dp3 r1.w, r0.xyzx, cb8[80].yzwy
mul r0.xyzw, r1.xyzw, l(5.55555534, 5.55555534, 5.55555534, 5.55555534)
log r0.xyzw, r0.xyzw
lt r1.xyzw, r0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r2.xyzw, r0.xyzw, cb8[81].xxxy
mul r0.xyzw, r0.xyzw, cb8[81].zzzw
movc r0.xyzw, r1.xyzw, r2.xyzw, r0.xyzw
exp r0.xyzw, r0.xyzw
mul o0.xyzw, r0.xyzw, l(0.180000, 0.180000, 0.180000, 0.180000)
round_z r0.xy, v1.xyxx
mul r0.xy, r0.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
ftoi r0.xy, r0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(uint,uint,uint,uint) r0.x, r0.xyzw, t2.yxzw
ine r0.x, r0.x, l(128)
and r0.x, r0.x, cb8[0].z
ftoi r1.xy, v1.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.y, r1.xyzw, t1.yxzw
rcp r0.z, |r0.y|
mad r0.z, r0.z, l(0.015625), l(0.984375)
rcp r0.w, r0.y
lt r0.y, r0.y, l(0.000000)
mul r0.w, r0.w, l(0.984375)
movc r0.z, r0.y, r0.z, r0.w
mad_sat r0.z, r0.z, cb8[0].x, cb8[0].y
movc o1.w, r0.y, r0.z, r0.x
ret 
// Approximately 129 instruction slots used