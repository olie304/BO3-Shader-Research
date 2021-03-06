//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:22:46 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// bilinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz 
// SV_POSITION              0   xyzw        2      POS   float       
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
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v0.ywyy, t0.xyzw, s0
mul r0.xyzw, r0.xyzw, l(0.234375, 0.234375, 0.234375, 0.234375)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.xwxx, t0.xyzw, s0
mad r0.xyzw, r1.xyzw, l(0.01953125, 0.01953125, 0.01953125, 0.01953125), r0.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.zwzz, t0.xyzw, s0
mad r0.xyzw, r1.xyzw, l(0.49218750, 0.49218750, 0.49218750, 0.49218750), r0.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xzxx, t0.xyzw, s0
mad r0.xyzw, r1.xyzw, l(0.234375, 0.234375, 0.234375, 0.234375), r0.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.yzyy, t0.xyzw, s0
mad o0.xyzw, r1.xyzw, l(0.01953125, 0.01953125, 0.01953125, 0.01953125), r0.xyzw
ret 
// Approximately 11 instruction slots used
