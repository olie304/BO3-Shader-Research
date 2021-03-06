//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:28 2021
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
// SV_POSITION              0   xyzw        0      POS   float   xy  
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xy
dcl_output o0.xyz
dcl_temps 4
mul r0.xyzw, v0.xyxy, l(0.07692308, 0.07692308, 0.14285715, 0.14285715)
frc r1.xyzw, r0.xyzw
mad r1.xyzw, r1.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
dp2 r1.x, r1.xyxx, r1.xyxx
dp2 r1.y, r1.zwzz, r1.zwzz
sqrt r1.xy, r1.xyxx
deriv_rtx_coarse r2.x, r1.x
deriv_rty_coarse r2.y, r1.x
dp2 r1.z, r2.xyxx, r2.xyxx
sqrt r1.z, r1.z
mad r1.w, r1.z, l(0.750000), l(1.000000)
mad r1.z, -r1.z, l(0.750000), l(1.000000)
add r1.xw, -r1.zzzz, r1.xxxw
div r1.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mul_sat r1.x, r1.z, r1.x
mad r1.z, r1.x, l(-2.000000), l(3.000000)
mul r1.x, r1.x, r1.x
mad r1.x, -r1.z, r1.x, l(1.000000)
ge r2.xyzw, r0.xyzw, -r0.xyzw
frc r0.xyzw, |r0.xyzw|
movc r0.xyzw, r2.xyzw, r0.xyzw, -r0.xyzw
mad r0.xyzw, -r0.xyzw, l(13.000000, 13.000000, 7.000000, 7.000000), v0.xyxy
add r0.xyzw, r0.xyzw, l(6.500000, 6.500000, 3.500000, 3.500000)
ftoi r0.xyzw, r0.zwxy
mov r2.xy, r0.zwzz
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyzw, t0.xyzw
add r2.xyz, r2.xyzx, l(-32768.000000, -32768.000000, -32768.000000, 0.000000)
mad r1.xzw, r1.xxxx, r2.xxyz, l(32768.000000, 0.000000, 32768.000000, 32768.000000)
min r1.xzw, r1.xxzw, l(32768.000000, 0.000000, 32768.000000, 32768.000000)
deriv_rtx_coarse r2.x, r1.y
deriv_rty_coarse r2.y, r1.y
dp2 r2.x, r2.xyxx, r2.xyxx
sqrt r2.x, r2.x
mad r2.y, -r2.x, l(0.750000), l(1.000000)
mad r2.x, r2.x, l(0.750000), l(1.000000)
add r2.x, -r2.y, r2.x
add r1.y, r1.y, -r2.y
div r2.x, l(1.000000, 1.000000, 1.000000, 1.000000), r2.x
mul_sat r1.y, r1.y, r2.x
mad r2.x, r1.y, l(-2.000000), l(3.000000)
mul r1.y, r1.y, r1.y
mad r1.y, -r2.x, r1.y, l(1.000000)
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw
add r0.xyz, r0.xyzx, l(-32768.000000, -32768.000000, -32768.000000, 0.000000)
mad r0.xyz, r1.yyyy, r0.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
min r0.xyz, r0.xyzx, r1.xzwx
mul r1.xyzw, v0.xyxy, l(0.09090909, 0.09090909, 0.200000, 0.200000)
frc r2.xyzw, r1.xyzw
mad r2.xyzw, r2.xyzw, l(2.000000, 2.000000, 2.000000, 2.000000), l(-1.000000, -1.000000, -1.000000, -1.000000)
dp2 r0.w, r2.xyxx, r2.xyxx
dp2 r2.x, r2.zwzz, r2.zwzz
sqrt r0.w, r0.w
deriv_rtx_coarse r3.x, r0.w
deriv_rty_coarse r3.y, r0.w
dp2 r2.y, r3.xyxx, r3.xyxx
sqrt r2.xy, r2.xyxx
mad r2.z, r2.y, l(0.750000), l(1.000000)
mad r2.y, -r2.y, l(0.750000), l(1.000000)
add r2.z, -r2.y, r2.z
add r0.w, r0.w, -r2.y
div r2.y, l(1.000000, 1.000000, 1.000000, 1.000000), r2.z
mul_sat r0.w, r0.w, r2.y
mad r2.y, r0.w, l(-2.000000), l(3.000000)
mul r0.w, r0.w, r0.w
mad r0.w, -r2.y, r0.w, l(1.000000)
ge r3.xyzw, r1.xyzw, -r1.xyzw
frc r1.xyzw, |r1.xyzw|
movc r1.xyzw, r3.xyzw, r1.xyzw, -r1.xyzw
mad r1.xyzw, -r1.xyzw, l(11.000000, 11.000000, 5.000000, 5.000000), v0.xyxy
add r1.xyzw, r1.xyzw, l(5.500000, 5.500000, 2.500000, 2.500000)
ftoi r1.xyzw, r1.zwxy
mov r3.xy, r1.zwzz
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r2.yzw, r3.xyzw, t0.wxyz
add r2.yzw, r2.yyzw, l(0.000000, -32768.000000, -32768.000000, -32768.000000)
mad r2.yzw, r0.wwww, r2.yyzw, l(0.000000, 32768.000000, 32768.000000, 32768.000000)
min r0.xyz, r0.xyzx, r2.yzwy
deriv_rtx_coarse r3.x, r2.x
deriv_rty_coarse r3.y, r2.x
dp2 r0.w, r3.xyxx, r3.xyxx
sqrt r0.w, r0.w
mad r2.y, -r0.w, l(0.750000), l(1.000000)
mad r0.w, r0.w, l(0.750000), l(1.000000)
add r0.w, -r2.y, r0.w
add r2.x, -r2.y, r2.x
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mul_sat r0.w, r0.w, r2.x
mad r2.x, r0.w, l(-2.000000), l(3.000000)
mul r0.w, r0.w, r0.w
mad r0.w, -r2.x, r0.w, l(1.000000)
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyzw, t0.xyzw
add r1.xyz, r1.xyzx, l(-32768.000000, -32768.000000, -32768.000000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(32768.000000, 32768.000000, 32768.000000, 0.000000)
min r0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
min r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, l(0.00003052, 0.00003052, 0.00003052, 0.000000)
sample_aoffimmi_indexable(0,1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
dp3 r0.w, r1.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
sample_aoffimmi_indexable(0,-1,0)(texture2d)(float,float,float,float) r1.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.x, r1.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
sample_aoffimmi_indexable(-1,-1,0)(texture2d)(float,float,float,float) r1.yzw, v1.xyxx, t0.wxyz, s0
dp3 r1.y, r1.yzwy, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
mad r1.x, r1.x, l(2.000000), r1.y
sample_aoffimmi_indexable(1,-1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.z, r2.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
add r1.x, r1.z, r1.x
add r1.y, r1.z, -r1.y
sample_aoffimmi_indexable(-1,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.z, r2.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
add r1.x, -r1.z, r1.x
mad r0.w, r0.w, l(-2.000000), r1.x
sample_aoffimmi_indexable(1,1,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.x, r2.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
add r0.w, r0.w, -r1.x
mul r0.w, r0.w, r0.w
sample_aoffimmi_indexable(-1,0,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.w, r2.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
mad r1.y, r1.w, l(-2.000000), r1.y
sample_aoffimmi_indexable(1,0,0)(texture2d)(float,float,float,float) r2.xyz, v1.xyxx, t0.xyzw, s0
dp3 r1.w, r2.xyzx, l(0.00000649, 0.00002183, 0.00000220, 0.000000)
mad r1.y, r1.w, l(2.000000), r1.y
add r1.y, -r1.z, r1.y
add r1.x, r1.x, r1.y
mad r0.w, r1.x, r1.x, r0.w
sqrt r0.xyzw, r0.xyzw
add r0.w, r0.w, l(-0.125000)
mul_sat r0.w, r0.w, l(8.000000)
mad r1.x, r0.w, l(-2.000000), l(3.000000)
mul r0.w, r0.w, r0.w
mad r0.w, -r1.x, r0.w, l(1.000000)
sqrt r0.w, r0.w
mul o0.xyz, r0.wwww, r0.xyzx
ret 
// Approximately 137 instruction slots used
