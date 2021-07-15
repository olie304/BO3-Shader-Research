//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:37 2021
//
//
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   float4 flagParams;                 // Offset:    0 Size:    16 [unused]
//   float4 colorObjMin;                // Offset:   16 Size:    16 [unused]
//   float4 colorObjMax;                // Offset:   32 Size:    16 [unused]
//   float colorObjMinBaseBlend;        // Offset:   48 Size:     4 [unused]
//   float colorObjMaxBaseBlend;        // Offset:   52 Size:     4 [unused]
//   float2 uvScroll;                   // Offset:   56 Size:     8 [unused]
//   float4 detailScale;                // Offset:   64 Size:    16 [unused]
//   float4 detailScale1;               // Offset:   80 Size:    16 [unused]
//   float4 detailScale2;               // Offset:   96 Size:    16 [unused]
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float3 treeCanopyScatterColor;     // Offset:  192 Size:    12
//   float backsideGlossScale;          // Offset:  204 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// normalSampler                     sampler      NA          NA             s2      1 
// colorMap                          texture  float4          2d             t0      1 
// tintMask                          texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// specColorMapThick                 texture  float4          2d             t9      1 
// underFfuseMap                     texture  float4          2d            t10      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float   x   
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 1   xyz         2     NONE   float   xyz 
// TEXCOORD                 2   xyz         3     NONE   float   xyz 
// TEXCOORD                 3   xyz         4     NONE   float   xyz 
// SV_IsFrontFace           0   x           5    FFACE    uint   x   
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
dcl_constantbuffer CB0[13], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v1.yzyy, t0.xyzw, s1
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t6.yzwx, s1
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul_sat r0.w, cb0[11].y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t7.xyzw, s2
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.w, r2.z, r2.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r1.w
log r0.w, r0.w
mul r0.w, r0.w, l(-0.05882353)
max r0.w, r0.w, l(0.000000)
if_z v5.x
  max r1.w, cb0[12].w, l(0.000100)
  mul r0.w, r0.w, r1.w
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v1.yzyy, t10.xyzw, s1
  lt r1.w, r3.w, l(0.500000)
  discard_nz r1.w
  mul r3.xyz, r1.xyzx, r3.xyzx
else 
  mul r3.xyz, r0.xyzx, r1.xyzx
endif 
mad r0.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r0.z, r0.xyxx, r0.xyxx
add r0.z, -r0.z, l(1.000000)
max r0.z, r0.z, l(0.000000)
sqrt r0.z, r0.z
movc r1.x, v5.x, l(1.000000), l(-1.000000)
dp3 r1.y, v2.xyzx, v2.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, v2.xxyz
mul r2.xyz, r1.xxxx, r1.yzwy
dp3 r2.w, v3.xyzx, v3.xyzx
rsq r2.w, r2.w
mul r4.xyz, r2.wwww, v3.xyzx
mul r4.xyz, r1.xxxx, r4.xyzx
dp3 r2.w, v4.xyzx, v4.xyzx
rsq r2.w, r2.w
mul r5.xyz, r2.wwww, v4.xyzx
mul r5.xyz, r1.xxxx, r5.xyzx
mul r5.xyz, r0.yyyy, r5.xyzx
mad r4.xyz, r4.xyzx, r0.xxxx, r5.xyzx
mad r0.xyz, r2.xyzx, r0.zzzz, r4.xyzx
dp3 r2.z, r0.xyzx, r0.xyzx
rsq r2.z, r2.z
mul r4.yzw, r0.xxyz, r2.zzzz
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t9.xyzw, s1
add r0.x, -r0.x, l(1.000000)
mul r5.xyz, r3.xyzx, cb0[12].xyzx
mul r0.y, r0.x, r5.z
add r0.z, r2.y, r2.x
mad r0.z, r1.w, r1.x, r0.z
mul r0.z, r0.z, l(0.500000)
mad r1.xyz, r1.yzwy, r1.xxxx, -r0.zzzz
max r1.w, r1.z, r1.y
max r1.w, r1.w, r1.x
max r0.z, r0.z, r1.w
eq r1.x, r0.z, r1.x
mul r2.yzw, r4.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.w, r0.z, l(2.000000)
mov r2.x, l(1)
mov r4.x, l(0)
movc r2.xyzw, r1.xxxx, r2.xyzw, r4.xyzw
movc r0.z, r1.x, r1.w, r0.z
eq r1.x, r0.z, r1.y
mul r4.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.y, r0.z, l(2.000000)
mov r4.x, l(2)
movc r2.xyzw, r1.xxxx, r4.xyzw, r2.xyzw
movc r0.z, r1.x, r1.y, r0.z
eq r0.z, r0.z, r1.z
mul r1.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r1.x, l(3)
movc r1.xyzw, r0.zzzz, r1.xyzw, r2.xyzw
add r0.z, r1.z, r1.y
add r2.z, r1.w, r0.z
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.z, |r1.w|, l(1.000000)
rsq r0.z, r0.z
mul r1.yz, r0.zzzz, r1.yyzy
mad o1.xy, r1.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.500000)
utof r0.z, r1.x
mul o1.w, r0.z, l(0.33333334)
ftou r0.zw, v0.xxxy
mad r1.y, r5.x, r0.x, -r0.y
mad r0.y, r1.y, l(0.500000), r0.y
mad r1.z, r5.y, r0.x, -r0.y
mad r1.x, r1.z, l(0.500000), r0.y
and r0.xy, r0.zwzz, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.xyz, r3.xyzx
mov o0.w, l(1.000000)
mov o2.z, v1.x
mov o2.w, l(0.66666669)
ret 
// Approximately 107 instruction slots used
