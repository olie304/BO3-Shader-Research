//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:19 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// aoSampler                         sampler      NA          NA             s1      1 
// aoMap                             texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    1   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 1   xyz         2     NONE   float       
// TEXCOORD                 2   xyz         3     NONE   float       
// TEXCOORD                 3   xyz         4     NONE   float       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_output o2.xyzw
dcl_temps 1
sample_indexable(texture2d)(float,float,float,float) r0.z, v1.yzyy, t0.yzxw, s1
mov r0.xyw, l(0,0.500000,0,1.000000)
mul o2.xyzw, r0.xyzw, v1.xxxx
ret 
// Approximately 4 instruction slots used