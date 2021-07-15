//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:47 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// biLinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// SV_POSITION              0   xyzw        2      POS   float       
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xy
dcl_input_ps constant v1.xyzw
dcl_output o0.xyz
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v0.xyxx, t0.xyzw, s0
mov r1.xz, v0.xxxx
add r2.xyzw, v0.yyyy, v1.xzyw
mov r1.yw, r2.xxxz
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t0.xyzw, s0
mul r3.xyz, r3.xyzx, l(0.234375, 0.234375, 0.234375, 0.000000)
mad r0.xyz, r0.xyzx, l(0.01953125, 0.01953125, 0.01953125, 0.000000), r3.xyzx
mad r0.xyz, r1.xyzx, l(0.49218750, 0.49218750, 0.49218750, 0.000000), r0.xyzx
mov r2.xz, v0.xxxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r2.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t0.xyzw, s0
mad r0.xyz, r1.xyzx, l(0.234375, 0.234375, 0.234375, 0.000000), r0.xyzx
mad o0.xyz, r2.xyzx, l(0.01953125, 0.01953125, 0.01953125, 0.000000), r0.xyzx
ret 
// Approximately 15 instruction slots used
