//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:24 2021
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
// TEXCOORD                 0   xy          0     NONE   float   xy  
// TEXCOORD                 1   xy          1     NONE   float   xy  
// SV_POSITION              0   xyzw        2      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   x           0   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v0.xy
dcl_input_ps constant v1.xy
dcl_output o0.x
dcl_temps 3
mov r0.xw, v0.xxxy
mad r1.xyzw, v1.xyxy, l(-1.000000, -1.000000, 1.000000, 1.000000), v0.xyxy
mov r0.yz, r1.yyxy
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t0.yxzw, s0
mul r0.x, r0.x, l(0.11718750)
sample_indexable(texture2d)(float,float,float,float) r0.z, r1.xyxx, t0.yzxw, s0
mad r0.x, r0.z, l(0.03515625), r0.x
sample_indexable(texture2d)(float,float,float,float) r0.z, r1.zyzz, t0.yzxw, s0
mad r0.x, r0.z, l(0.03515625), r0.x
mad r0.x, r0.y, l(0.11718750), r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, v0.xyxx, t0.yxzw, s0
mad r0.x, r0.y, l(0.390625), r0.x
mov r2.xw, r1.zzzw
mov r2.yz, v0.yyxy
sample_indexable(texture2d)(float,float,float,float) r0.y, r2.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.z, r2.zwzz, t0.yzxw, s0
mad r0.x, r0.y, l(0.11718750), r0.x
sample_indexable(texture2d)(float,float,float,float) r0.y, r1.xwxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.zwzz, t0.yzwx, s0
mad r0.x, r0.y, l(0.03515625), r0.x
mad r0.x, r0.z, l(0.11718750), r0.x
mad r0.x, r0.w, l(0.03515625), r0.x
gather4_indexable(texture2d)(float,float,float,float) r1.xyzw, v0.xyxx, t0.xyzw, s0.x
max r0.yz, r1.yywy, r1.xxzx
max r0.y, r0.z, r0.y
max r0.x, r0.x, r0.y
mad_sat o0.x, r0.x, l(2.000000), -r0.y
ret 
// Approximately 29 instruction slots used
