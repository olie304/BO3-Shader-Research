//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:48 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// samp0                             sampler      NA          NA             s0      1 
// colorMapSampler                   texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xyzw        1     NONE   float   xyzw
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
dcl_input_ps linear v1.xyzw
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.xzxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.yzyy, t0.xyzw, s0
add r0.xyzw, r0.xyzw, r1.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.xwxx, t0.xyzw, s0
add r0.xyzw, r0.xyzw, r1.xyzw
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.ywyy, t0.xyzw, s0
add r0.xyzw, r0.xyzw, r1.xyzw
mul o0.xyzw, r0.xyzw, l(0.250000, 0.250000, 0.250000, 0.250000)
ret 
// Approximately 9 instruction slots used
