//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:41 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// colorMapSampler                   texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float   xyzw
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
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
deriv_rty_coarse r0.x, v2.y
add r0.y, -r0.x, v2.y
add r0.x, r0.x, v2.y
add r0.x, r0.x, l(-1.000000)
resinfo_indexable(texture2d)(float,float,float,float) r0.z, l(0), t0.xzyw
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.z
add r0.y, r0.w, r0.y
mul_sat r0.xy, r0.zzzz, r0.xyxx
mad r0.z, r0.y, l(-2.000000), l(3.000000)
mul r0.y, r0.y, r0.y
mad r0.y, -r0.z, r0.y, l(1.000000)
mad r0.z, r0.x, l(-2.000000), l(3.000000)
mul r0.x, r0.x, r0.x
mul r0.x, r0.x, r0.z
max r0.x, r0.y, r0.x
mul r0.x, r0.x, l(0.500000)
sqrt r0.x, r0.x
add r0.x, -r0.x, l(1.000000)
max r0.x, r0.x, l(0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
mul r1.w, r0.x, r1.w
mul o0.xyzw, r1.xyzw, v1.xyzw
ret 
// Approximately 23 instruction slots used
