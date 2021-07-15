//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:38:39 2021
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float       
// TEXCOORD                 4   x           2     NONE    uint       
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float       
// TEXCOORD                 3   xyz         5     NONE   float       
// OFFPOSITION              0   xyz         6     NONE   float       
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
dcl_input_ps linear v3.xyz
dcl_output o0.xyzw
dcl_temps 4
mov r0.x, l(1)
mov r1.x, l(0)
dp3 r2.x, v3.xyzx, v3.xyzx
rsq r2.x, r2.x
mul r1.yzw, r2.xxxx, v3.xxyz
add r2.y, r1.z, r1.y
mad r2.y, v3.z, r2.x, r2.y
mul r2.y, r2.y, l(0.500000)
mad r2.xzw, v3.xxyz, r2.xxxx, -r2.yyyy
max r3.x, r2.w, r2.z
max r3.x, r2.x, r3.x
max r2.y, r2.y, r3.x
eq r2.x, r2.y, r2.x
mul r0.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
movc r0.xyzw, r2.xxxx, r0.xyzw, r1.xyzw
mul r1.yzw, r0.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r1.x, l(2)
add r3.x, r2.y, l(2.000000)
movc r2.x, r2.x, r3.x, r2.y
eq r2.y, r2.x, r2.z
movc r0.xyzw, r2.yyyy, r1.xyzw, r0.xyzw
mul r1.yzw, r0.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r2.z, r2.x, l(2.000000)
movc r2.x, r2.y, r2.z, r2.x
eq r2.x, r2.x, r2.w
mov r1.x, l(3)
movc r0.xyzw, r2.xxxx, r1.xyzw, r0.xyzw
add r1.x, r0.z, r0.y
add r1.z, r0.w, r1.x
mad r1.x, -r0.z, l(3.000000), r1.z
add r1.y, -r0.y, r0.w
utof r0.x, r0.x
mul o0.w, r0.x, l(0.33333334)
mul r0.xyz, r1.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r0.xy, r0.zzzz, r0.xyxx
mad o0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mov o0.z, l(0)
ret 
// Approximately 40 instruction slots used
