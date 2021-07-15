//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:22:45 2021
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
// SV_POSITION              0   xyzw        1      POS   float       
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
dcl_output o0.xyz
dcl_temps 4
sample_aoffimmi_indexable(2,0,0)(texture2d)(float,float,float,float) r0.xyz, v0.xyxx, t0.xyzw, s0
dp3 r1.x, r0.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r1.x, r1.x, l(1.000000)
iadd r1.x, -r1.x, l(0x7ef311c2)
mov r0.w, l(1.000000)
mul r0.xyzw, r0.xyzw, r1.xxxx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mad r0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
sample_aoffimmi_indexable(-2,0,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mad r0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
sample_aoffimmi_indexable(0,2,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mad r0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
sample_aoffimmi_indexable(0,-2,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mad r0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
mul r0.xyzw, r0.xyzw, l(0.07142857, 0.07142857, 0.07142857, 0.07142857)
sample_aoffimmi_indexable(-2,-2,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mul r1.xyzw, r1.xyzw, r2.xxxx
sample_aoffimmi_indexable(2,-2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
sample_aoffimmi_indexable(-2,2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
sample_aoffimmi_indexable(2,2,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
mad r0.xyzw, r1.xyzw, l(0.03571429, 0.03571429, 0.03571429, 0.03571429), r0.xyzw
sample_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
dp3 r2.x, r1.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r2.x, r2.x, l(1.000000)
iadd r2.x, -r2.x, l(0x7ef311c2)
mov r1.w, l(1.000000)
mul r1.xyzw, r1.xyzw, r2.xxxx
sample_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
sample_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
sample_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.xyz, v0.xyxx, t0.xyzw, s0
dp3 r3.x, r2.xyzx, l(0.212600, 0.715200, 0.072200, 0.000000)
add r3.x, r3.x, l(1.000000)
iadd r3.x, -r3.x, l(0x7ef311c2)
mov r2.w, l(1.000000)
mad r1.xyzw, r3.xxxx, r2.xyzw, r1.xyzw
mad r0.xyzw, r1.xyzw, l(0.125000, 0.125000, 0.125000, 0.125000), r0.xyzw
rcp r0.w, r0.w
mul o0.xyz, r0.wwww, r0.xyzx
ret 
// Approximately 84 instruction slots used