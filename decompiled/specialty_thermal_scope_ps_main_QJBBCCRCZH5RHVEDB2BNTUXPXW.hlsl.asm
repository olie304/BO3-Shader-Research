//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:42:56 2021
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// heatLookupSampler                 sampler      NA          NA             s1      1 
// sceneTexture                      texture  float4          2d             t0      1 
// sceneDepthTexture                 texture  float4          2d            t21      1 
// sonarTexture                      texture  float4          2d            t22      1 
// sonarDepthTexture                 texture  float4          2d            t24      1 
// heatLookup                        texture  float4          2d            t25      1 
// sceneLookup                       texture  float4          2d            t26      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float       
// TEXCOORD                 1   xyz         2     NONE   float       
// TEXCOORD                 2   xyz         3     NONE   float       
// TEXCOORD                 3   xyz         4     NONE   float       
// OFFPOSITION              0   xyz         5     NONE   float       
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
dcl_resource_texture2d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t22
dcl_resource_texture2d (float,float,float,float) t24
dcl_resource_texture2d (float,float,float,float) t25
dcl_resource_texture2d (float,float,float,float) t26
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_output o0.xyzw
dcl_temps 4
ftoi r0.xy, v0.xyxx
mov r0.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r0.xyww, t22.xyzw
lt r2.x, l(0.000000), r1.y
if_nz r2.x
  ld_indexable(texture2d)(float,float,float,float) r2.x, r0.xyww, t21.xyzw
  ld_indexable(texture2d)(float,float,float,float) r2.y, r0.xyww, t24.yxzw
  lt r2.x, r2.y, r2.x
  movc r2.x, r2.x, l(0), r1.y
else 
  mov r2.x, r1.y
endif 
lt r2.y, l(0.000000), r2.x
mov r1.yw, l(0,0.500000,0,0.500000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t25.xyzw, s1
if_z r2.y
  mov r3.xyz, l(0,0,0,0)
endif 
lt r1.x, r2.x, l(1.000000)
ld_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyzw, t0.xyzw
dp3 r1.z, r0.xyzx, l(0.299000, 0.587000, 0.114000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r1.zwzz, t26.xyzw, s1
if_z r1.x
  mov r0.xyz, l(0,0,0,0)
endif 
add r1.xyz, -r0.xyzx, r3.xyzx
mad o0.xyz, r2.xxxx, r1.xyzx, r0.xyzx
mov o0.w, l(1.000000)
ret 
// Approximately 29 instruction slots used
