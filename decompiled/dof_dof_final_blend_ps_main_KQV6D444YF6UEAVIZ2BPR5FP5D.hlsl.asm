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
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v0.xy
dcl_output o0.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.x, v0.xyxx, t0.xyzw, s0
mul r0.x, r0.x, l(23.875000)
log_sat r0.x, r0.x
lt r0.y, l(0.000000), r0.x
if_nz r0.y
  sample_l_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.xyxx, t1.xyzw, s0, l(0.000000)
  mul r0.x, r0.x, r1.w
  lt r2.x, l(0.000000), r0.x
  div r2.yzw, r1.xxyz, r1.wwww
  add r2.yzw, r2.yyzw, l(0.000000, -0.598206, -0.598206, -0.598206)
  mul r2.yzw, r2.yyzw, l(0.000000, 13.754599, 13.754599, 13.754599)
  exp r2.yzw, r2.yyzw
  add r2.yzw, r2.yyzw, l(0.000000, -0.008730, -0.008730, -0.008730)
  movc r0.yzw, r2.xxxx, r2.yyzw, r1.xxyz
  mov r1.xyzw, r0.yzwx
else 
  mov r1.xyzw, l(0,0,0,0)
  mov r0.x, l(0)
endif 
eq r0.x, r0.x, l(0.000000)
movc o0.xyzw, r0.xxxx, l(1.000000,0,0,0.500000), r1.xyzw
ret 
// Approximately 22 instruction slots used