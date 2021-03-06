//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:26 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// bilinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
// codeTexture1                      texture  float4          2d             t1      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// SV_POSITION              0   xyzw        1      POS   float       
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v0.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 4
mov o0.w, l(1.000000)
gather4_indexable(texture2d)(float,float,float,float) r0.xyzw, v0.xyxx, t1.xyzw, s0.x
ge r1.xyzw, r0.xyzw, l(0.08376963, 0.08376963, 0.08376963, 0.08376963)
and r1.xyzw, r1.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
add r2.x, r1.y, r1.x
add r2.x, r1.z, r2.x
add r2.x, r1.w, r2.x
lt r2.y, l(0.000000), r2.x
rcp r2.z, r2.x
and r2.y, r2.z, r2.y
gather4_indexable(texture2d)(float,float,float,float) r3.xyzw, v0.xyxx, t0.xyzw, s0.x
dp4 r2.z, r3.xyzw, r1.xyzw
mul o0.x, r2.y, r2.z
gather4_indexable(texture2d)(float,float,float,float) r3.xyzw, v0.xyxx, t0.xyzw, s0.y
dp4 r2.z, r3.xyzw, r1.xyzw
mul o0.y, r2.y, r2.z
gather4_indexable(texture2d)(float,float,float,float) r3.xyzw, v0.xyxx, t0.xyzw, s0.z
dp4 r2.z, r3.xyzw, r1.xyzw
dp4 r0.x, r0.xyzw, r1.xyzw
mul o1.x, r2.y, r0.x
mul o0.z, r2.y, r2.z
mul o1.y, r2.y, r2.x
mov o1.zw, l(0,0,1.000000,1.000000)
ret 
// Approximately 24 instruction slots used
