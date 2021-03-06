//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:22:16 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// bilinearClamp                     sampler      NA          NA             s0      1 
// codeTexture0                      texture  float4          2d             t0      1 
// codeTexture1                      texture  float3          3d             t1      1 
// codeTexture2                      texture  float4          2d             t2      1 
// codeTexture4                      texture  float4          2d             t4      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy  
// TEXCOORD                 1   x           1     NONE   float   x   
// SV_POSITION              0   xyzw        2      POS   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyz         0   TARGET   float   xyz 
// SV_TARGET                1   x           1   TARGET   float   x   
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s0, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_input_ps linear v0.xy
dcl_input_ps constant v1.x
dcl_output o0.xyz
dcl_output o1.x
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v0.xyxx, t2.xyzw, s0
mad r0.xyz, r0.xyzx, v1.xxxx, l(0.008730, 0.008730, 0.008730, 0.000000)
log r0.xyz, r0.xyzx
mad_sat r0.xyz, r0.xyzx, l(0.07270296, 0.07270296, 0.07270296, 0.000000), l(0.598206, 0.598206, 0.598206, 0.000000)
mad r1.xyz, r0.xyzx, l(7.712947, 7.712947, 7.712947, 0.000000), l(-19.311527, -19.311527, -19.311527, 0.000000)
mad r1.xyz, r1.xyzx, r0.xyzx, l(14.275167, 14.275167, 14.275167, 0.000000)
mad r1.xyz, r1.xyzx, r0.xyzx, l(-2.49004531, -2.49004531, -2.49004531, 0.000000)
mad r1.xyz, r1.xyzx, r0.xyzx, l(0.87808305, 0.87808305, 0.87808305, 0.000000)
mad_sat r0.xyz, r1.xyzx, r0.xyzx, l(-0.06691028, -0.06691028, -0.06691028, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t0.xyzw, s0
mul_sat r1.xyz, r1.xyzx, l(0.00390625, 0.00390625, 0.00390625, 0.000000)
add r2.xyz, r0.xyzx, r1.xyzx
mad r0.xyz, -r0.xyzx, r1.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v0.xyxx, t4.xyzw, s0
mad_sat r0.xyz, r1.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000), r0.xyzx
mad r0.xyz, r0.xyzx, l(0.968750, 0.968750, 0.968750, 0.000000), l(0.015625, 0.015625, 0.015625, 0.000000)
sample_indexable(texture3d)(float,float,float,float) r0.xyz, r0.xyzx, t1.xyzw, s0
mov o0.xyz, r0.xyzx
dp3 r0.x, r0.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
log r0.y, r0.x
mul r0.y, r0.y, l(0.33333334)
exp r0.y, r0.y
lt r0.z, l(0.00885645), r0.x
mad r0.x, r0.x, l(7.787037), l(0.13793103)
movc r0.x, r0.z, r0.y, r0.x
mad o1.x, r0.x, l(1.160000), l(-0.160000)
ret 
// Approximately 27 instruction slots used
