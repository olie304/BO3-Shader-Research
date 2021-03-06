//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:22 2021
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
dcl_temps 6
add r0.xyzw, v1.xyxy, l(0.00088388, -0.00157135, -0.001875, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t0.xyzw, s0
add r2.xyzw, v1.xyxy, l(-0.00088388, -0.00157135, 0.000000, -0.00333333)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.zwzz, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, v1.xyxx, t0.xyzw, s0
mul r2.w, r2.w, r4.w
mul r2.xyz, r2.wwww, r2.xyzx
mad r2.w, r4.w, r4.w, r2.w
mad r2.w, r3.w, r4.w, r2.w
mad r2.w, r1.w, r4.w, r2.w
mad r2.w, r0.w, r4.w, r2.w
mul r5.x, r4.w, r4.w
mad r2.xyz, r4.xyzx, r5.xxxx, r2.xyzx
mul r3.w, r3.w, r4.w
mad r2.xyz, r3.xyzx, r3.wwww, r2.xyzx
mul r1.w, r1.w, r4.w
mad r1.xyz, r1.xyzx, r1.wwww, r2.xyzx
mul r0.w, r0.w, r4.w
mad r0.xyz, r0.xyzx, r0.wwww, r1.xyzx
add r1.xyzw, v1.xyxy, l(0.001875, 0.000000, -0.00088388, 0.00157135)
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s0
mul r0.w, r4.w, r3.w
mad r0.xyz, r3.xyzx, r0.wwww, r0.xyzx
mad r0.w, r3.w, r4.w, r2.w
mad r0.w, r1.w, r4.w, r0.w
mul r1.w, r4.w, r1.w
mad r0.xyz, r1.xyzx, r1.wwww, r0.xyzx
add r1.xyzw, v1.xyxy, l(0.000000, 0.00333333, 0.00088388, 0.00157135)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s0
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s0
mul r3.x, r4.w, r2.w
mad r0.xyz, r2.xyzx, r3.xxxx, r0.xyzx
mad r0.w, r2.w, r4.w, r0.w
mad r0.w, r1.w, r4.w, r0.w
mul r1.w, r4.w, r1.w
mad r0.xyz, r1.xyzx, r1.wwww, r0.xyzx
div r1.xyz, r0.xyzx, r0.wwww
lt r0.w, l(0.000000), r0.w
movc r0.xyz, r0.wwww, r1.xyzx, r0.xyzx
min o0.xyz, r0.xyzx, r4.xyzx
ret 
// Approximately 44 instruction slots used
