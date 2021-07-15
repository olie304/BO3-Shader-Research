//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:34 2021
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
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
// TEXCOORD                 2   xyz         3     NONE   float       
// TEXCOORD                 3   xyz         4     NONE   float       
// SV_IsFrontFace           0   x           5    FFACE    uint       
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t0.xyzw, s1
lt r0.y, r0.x, l(0.500000)
discard_nz r0.y
dp3 r0.y, v2.xyzx, v2.xyzx
rsq r0.y, r0.y
mul r1.yzw, r0.yyyy, v2.xxyz
add r0.z, r1.z, r1.y
mad r0.z, v2.z, r0.y, r0.z
mul r0.z, r0.z, l(0.500000)
mad r2.xyz, v2.xyzx, r0.yyyy, -r0.zzzz
max r0.y, r2.z, r2.y
max r0.y, r0.y, r2.x
max r0.y, r0.y, r0.z
eq r0.z, r0.y, r2.x
mul r3.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r0.w, r0.y, l(2.000000)
mov r3.x, l(1)
mov r1.x, l(0)
movc r1.xyzw, r0.zzzz, r3.xyzw, r1.xyzw
movc r0.y, r0.z, r0.w, r0.y
eq r0.z, r0.y, r2.y
mul r3.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r0.w, r0.y, l(2.000000)
mov r3.x, l(2)
movc r1.xyzw, r0.zzzz, r3.xyzw, r1.xyzw
movc r0.y, r0.z, r0.w, r0.y
eq r0.y, r0.y, r2.z
mul r2.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r2.x, l(3)
movc r1.xyzw, r0.yyyy, r2.xyzw, r1.xyzw
add r0.y, r1.z, r1.y
add r2.z, r1.w, r0.y
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r0.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r0.yz, r0.wwww, r0.yyzy
mad o1.xy, r0.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
utof r0.y, r1.x
mul o1.w, r0.y, l(0.33333334)
mov o0.xyz, r0.xxxx
mov o0.w, l(1.000000)
mov o1.z, l(0.49902248)
mov o2.xyzw, l(0.040000,0.500000,1.000000,0.33333334)
ret 
// Approximately 46 instruction slots used