//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:27 2021
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
// TEXCOORD                 2   xy          2     NONE   float   xy  
// SV_POSITION              0   xyzw        3      POS   float       
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
dcl_input_ps constant v1.xyzw
dcl_input_ps constant v2.xy
dcl_output o0.x
dcl_temps 5
mov r0.xz, v1.xxyx
mov r0.yw, l(0,0,0,0)
add r1.xyzw, -r0.xyzw, v0.xyxy
add r0.xyzw, r0.zwxw, v0.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.y, r1.zwzz, t0.yxzw, s0
add r1.x, r1.y, r1.x
mov r2.xz, v1.zzwz
mov r2.yw, l(0,0,0,0)
add r3.xyzw, -r2.xyzw, v0.xyxy
add r2.xyzw, r2.zwxw, v0.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t0.yzxw, s0
add r1.x, r1.y, r1.x
add r1.x, r1.z, r1.x
mov r3.xz, v2.xxyx
mov r3.yw, l(0,0,0,0)
add r4.xyzw, -r3.xyzw, v0.xyxy
add r3.xyzw, r3.zwxw, v0.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.y, r4.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.z, r4.zwzz, t0.yzxw, s0
add r1.x, r1.y, r1.x
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, v0.xyxx, t0.yxzw, s0
add r1.x, r1.y, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, r3.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.z, r3.zwzz, t0.yzxw, s0
add r1.x, r1.y, r1.x
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t0.yxzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.z, r2.zwzz, t0.yzxw, s0
add r1.x, r1.y, r1.x
add r1.x, r1.z, r1.x
sample_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t0.yxzw, s0
add r0.x, r0.x, r1.x
add r0.x, r0.y, r0.x
mul o0.x, r0.x, l(0.07692308)
ret 
// Approximately 39 instruction slots used
