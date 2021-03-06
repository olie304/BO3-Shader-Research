//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:44 2021
//
//
// Buffer Definitions: 
//
// cbuffer GenericsCBuffer
// {
//
//   float4 scriptVector0;              // Offset:    0 Size:    16
//   float4 scriptVector1;              // Offset:   16 Size:    16 [unused]
//   float4 scriptVector2;              // Offset:   32 Size:    16 [unused]
//   float4 scriptVector3;              // Offset:   48 Size:    16 [unused]
//   float4 scriptVector4;              // Offset:   64 Size:    16 [unused]
//   float4 scriptVector5;              // Offset:   80 Size:    16 [unused]
//   float4 scriptVector6;              // Offset:   96 Size:    16 [unused]
//   float4 scriptVector7;              // Offset:  112 Size:    16
//   float4 weaponParam0;               // Offset:  128 Size:    16 [unused]
//   float4 weaponParam1;               // Offset:  144 Size:    16 [unused]
//   float4 weaponParam2;               // Offset:  160 Size:    16 [unused]
//   float4 weaponParam3;               // Offset:  176 Size:    16 [unused]
//   float4 weaponParam4;               // Offset:  192 Size:    16 [unused]
//   float4 weaponParam5;               // Offset:  208 Size:    16 [unused]
//   float4 weaponParam6;               // Offset:  224 Size:    16 [unused]
//   float4 weaponParam7;               // Offset:  240 Size:    16 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// tileNoMipNearest                  sampler      NA          NA             s1      1 
// colorMapSampler                   texture  float4          2d             t0      1 
// GenericsCBuffer                   cbuffer      NA          NA            cb3      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
dcl_constantbuffer CB3[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 4
resinfo_indexable(texture2d)(float,float,float,float) r0.xy, l(0), t0.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
mul r0.zw, cb3[0].xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
div r0.xy, r0.zwzz, r0.xyxx
mov r2.xyz, r1.xyzx
mov r0.z, l(-3)
loop 
  ilt r0.w, l(3), r0.z
  breakc_nz r0.w
  if_z r0.z
    mov r0.z, l(1)
    continue 
  endif 
  itof r0.w, r0.z
  mul r0.w, r0.w, l(0.33333334)
  mad r3.xy, r0.wwww, r0.xyxx, v2.xyxx
  max r3.xy, r3.xyxx, cb3[7].xyxx
  min r3.xy, r3.xyxx, cb3[7].zwzz
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t0.xyzw, s1
  add r3.xyz, -r1.xyzx, r3.xyzx
  mad r3.xyz, r3.wwww, r3.xyzx, r1.xyzx
  add r2.xyz, r2.xyzx, r3.xyzx
  iadd r0.z, r0.z, l(1)
endloop 
mul o0.xyz, r2.xyzx, l(0.14285715, 0.14285715, 0.14285715, 0.000000)
mov o0.w, r1.w
ret 
// Approximately 27 instruction slots used
