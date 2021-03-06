//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:29 2021
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
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
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
dcl_resource_texture2d (float,float,float,float) t1
dcl_input_ps linear v0.xy
dcl_input_ps constant v1.xyzw
dcl_output o0.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.x, v0.xyxx, t0.xyzw, s0
mul r0.xyzw, r0.xxxx, v1.zxwy
mov r1.xz, r0.yywy
mov r1.yw, l(0,0,0,0)
add r1.xyzw, -r1.xyzw, v0.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t1.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t1.xyzw, s0
add r3.xyzw, r1.xyzw, r2.xyzw
mov r0.yw, l(0,0,0,0)
add r4.xyzw, -r0.xyzw, v0.xyxy
add r0.xyzw, r0.zwxw, v0.xyxy
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t1.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r4.zwzz, t1.xyzw, s0
add r3.xyzw, r3.xyzw, r5.xyzw
add r3.xyzw, r4.xyzw, r3.xyzw
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, v0.xyxx, t1.xyzw, s0
add r3.xyzw, r3.xyzw, r4.xyzw
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r0.xyxx, t1.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t1.xyzw, s0
add r3.xyzw, r3.xyzw, r4.xyzw
add r0.xyzw, r0.xyzw, r3.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
add r0.xyzw, r2.xyzw, r0.xyzw
lt r1.x, l(0.000000), r0.w
rcp r1.y, r0.w
and r1.x, r1.y, r1.x
mul o0.xyzw, r0.xyzw, r1.xxxx
ret 
// Approximately 28 instruction slots used
