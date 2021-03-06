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
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 3
sample_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r0.xyz, v1.xyxx, t0.xyzw, s0
sample_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r1.xyzx
sample_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r1.xyzx
sample_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r1.xyzx
sample_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r1.xyzx
sample_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r2.xyzx
sample_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r2.xyzx
sample_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r2.xyzx
sample_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
add r0.xyz, r0.xyzx, r2.xyzx
mul r0.xyz, r0.xyzx, l(0.11111111, 0.11111111, 0.11111111, 0.000000)
min o0.xyz, r1.xyzx, r0.xyzx
ret 
// Approximately 20 instruction slots used
