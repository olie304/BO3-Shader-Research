//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:16 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// floatZSampler                     texture  float4          2d             t0      1 
// codeTexture0                      texture  float4          2d             t6      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
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
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_output o0.xyzw
dcl_temps 4
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.x, r0.xyww, t0.xyzw
lt r1.y, l(0.984375), r1.x
if_nz r1.y
  mov o0.xyzw, l(0,0,0,1.000000)
  ret 
endif 
ld_aoffimmi_indexable(-3,-3,0)(texture2d)(float,float,float,float) r1.y, r0.xyww, t6.yxzw
ld_aoffimmi_indexable(0,-3,0)(texture2d)(float,float,float,float) r1.z, r0.xyww, t6.yzxw
ld_aoffimmi_indexable(3,-3,0)(texture2d)(float,float,float,float) r1.w, r0.xyww, t6.yzwx
ld_aoffimmi_indexable(-3,0,0)(texture2d)(float,float,float,float) r2.x, r0.xyww, t6.xyzw
ld_aoffimmi_indexable(0,0,0)(texture2d)(float,float,float,float) r2.y, r0.xyww, t6.yxzw
ld_aoffimmi_indexable(3,0,0)(texture2d)(float,float,float,float) r2.z, r0.xyww, t6.yzxw
ld_aoffimmi_indexable(-3,3,0)(texture2d)(float,float,float,float) r2.w, r0.xyww, t6.yzwx
ld_aoffimmi_indexable(0,3,0)(texture2d)(float,float,float,float) r3.x, r0.xyww, t6.xyzw
ld_aoffimmi_indexable(3,3,0)(texture2d)(float,float,float,float) r0.x, r0.xyzw, t6.xyzw
max r0.y, r1.w, r1.z
max r0.y, r0.y, r1.y
max r0.z, r2.z, r2.y
max r0.w, r0.x, r3.x
max r0.zw, r0.zzzw, r2.xxxw
max r0.z, r0.w, r0.z
max r0.y, r0.z, r0.y
lt r0.z, l(0.000000), r0.y
lt r0.y, r0.y, r1.x
and r0.y, r0.y, r0.z
if_nz r0.y
  mov o0.xyzw, l(0,0,0,1.000000)
  ret 
endif 
mad r0.y, r2.x, l(-2.000000), -r1.y
add r0.y, -r2.w, r0.y
add r0.y, r1.w, r0.y
mad r0.y, r2.z, l(2.000000), r0.y
add r0.y, r0.x, r0.y
mad r0.z, r1.z, l(-2.000000), -r1.y
add r0.z, -r1.w, r0.z
add r0.z, r2.w, r0.z
mad r0.z, r3.x, l(2.000000), r0.z
add r0.x, r0.x, r0.z
mul r0.x, r0.x, r0.x
mad r0.x, r0.y, r0.y, r0.x
sqrt r0.z, r0.x
add r0.w, r0.z, l(1.000000)
mul r0.xy, r0.zzzz, r0.zwzz
mul o0.xyz, r0.xzyx, l(131072.000000, 131072.000000, 131072.000000, 0.000000)
mov o0.w, l(1.000000)
ret 
// Approximately 49 instruction slots used
