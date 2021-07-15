//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:39:45 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// colorMap                          texture  float4          2d             t0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyz         1     NONE   float       
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float       
// TEXCOORD                 4   x           3     NONE    uint       
// TEXCOORD                 1   xyz         4     NONE   float       
// TEXCOORD                 2   xyz         5     NONE   float       
// TEXCOORD                 3   xyz         6     NONE   float       
// OFFPOSITION              0   xyz         7     NONE   float       
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
dcl_output o0.xyzw
sample_indexable(texture2d)(float,float,float,float) o0.xyzw, l(0.000000, 0.000000, 0.000000, 0.000000), t0.xyzw, s1
ret 
// Approximately 2 instruction slots used
