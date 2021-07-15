//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:31 2021
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
//   float4 detailScale;                // Offset:   64 Size:    16
//   float4 detailScale1;               // Offset:   80 Size:    16 [unused]
//   float4 detailScale2;               // Offset:   96 Size:    16 [unused]
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float baseNormalHeight;            // Offset:  160 Size:     4
//   float2 glossRange;                 // Offset:  164 Size:     8
//   float detailScaleHeight;           // Offset:  172 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// specColorSampler                  sampler      NA          NA             s2      1 
// normalSampler                     sampler      NA          NA             s3      1 
// aoSampler                         sampler      NA          NA             s4      1 
// colorMap                          texture  float4          2d             t0      1 
// normalMap                         texture  float4          2d             t6      1 
// glossMap                          texture  float4          2d             t7      1 
// aoMap                             texture  float4          2d             t9      1 
// detailMap                         texture  float4          2d            t10      1 
// thicknessMap                      texture  float4          2d            t11      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float       
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
dcl_constantbuffer CB0[11], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 6
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v1.yzyy, t0.xyzw, s1
mov o0.xyz, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t6.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].xxxx, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.w, r1.z, r1.z
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
dp2 r1.z, r1.xyxx, r1.xyxx
add r1.z, -r1.z, l(1.000000)
max r1.z, r1.z, l(0.000000)
sqrt r2.z, r1.z
mul r1.zw, v1.yyyz, cb0[4].xxxy
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.zwzz, t10.xyzw, s3
mad r1.zw, r3.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r0.w, r2.w, cb0[10].w, r0.w
mad r2.xy, r1.zwzz, cb0[10].wwww, r1.xyxx
dp3 r1.x, r2.xyzx, r2.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, r2.xyzx
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v4.xyzx
movc r1.w, v5.x, l(1.000000), l(-1.000000)
mul r2.xyz, r1.wwww, r2.xyzx
mul r2.xyz, r1.yyyy, r2.xyzx
dp3 r1.y, v3.xyzx, v3.xyzx
rsq r1.y, r1.y
mul r3.xyz, r1.yyyy, v3.xyzx
mul r3.xyz, r1.wwww, r3.xyzx
mad r2.xyz, r3.xyzx, r1.xxxx, r2.xyzx
dp3 r1.x, v2.xyzx, v2.xyzx
rsq r1.x, r1.x
mul r3.xyz, r1.xxxx, v2.xyzx
mul r4.xyz, r1.wwww, r3.xyzx
mad r1.xyz, r4.xyzx, r1.zzzz, r2.xyzx
add r2.x, r4.y, r4.x
mad r2.x, r3.z, r1.w, r2.x
mul r2.x, r2.x, l(0.500000)
dp3 r2.y, r1.xyzx, r1.xyzx
rsq r2.y, r2.y
mul r4.yzw, r1.xxyz, r2.yyyy
mul r5.yzw, r4.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r5.x, l(1)
mov r4.x, l(0)
mad r1.xyz, r3.xyzx, r1.wwww, -r2.xxxx
max r1.w, r1.z, r1.y
max r1.w, r1.w, r1.x
max r1.w, r1.w, r2.x
eq r1.x, r1.w, r1.x
movc r2.xyzw, r1.xxxx, r5.xyzw, r4.xyzw
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r3.x, l(2)
add r4.x, r1.w, l(2.000000)
movc r1.x, r1.x, r4.x, r1.w
eq r1.y, r1.x, r1.y
movc r2.xyzw, r1.yyyy, r3.xyzw, r2.xyzw
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r1.w, r1.x, l(2.000000)
movc r1.x, r1.y, r1.w, r1.x
eq r1.x, r1.x, r1.z
mov r3.x, l(3)
movc r1.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
add r2.x, r1.z, r1.y
add r2.z, r1.w, r2.x
mad r2.x, -r1.z, l(3.000000), r2.z
add r2.y, -r1.y, r1.w
utof r1.x, r1.x
mul o1.w, r1.x, l(0.33333334)
mul r1.xyz, r2.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r1.z, |r1.z|, l(1.000000)
rsq r1.z, r1.z
mul r1.xy, r1.zzzz, r1.xyxx
mad o1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.yzyy, t7.xyzw, s2
add r1.y, -cb0[10].y, cb0[10].z
mad r1.x, r1.x, r1.y, cb0[10].y
mul_sat r1.x, r1.x, l(0.05882353)
mul r1.x, r1.x, l(-17.000000)
exp r1.x, r1.x
add r0.w, r0.w, r1.x
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
mad o1.z, r0.w, l(0.49755621), l(0.500000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t11.yzwx, s1
mov_sat r0.w, r0.w
add r0.w, -r0.w, l(1.000000)
mul r1.xyz, r0.wwww, l(1.000000, 0.500000, 0.500000, 0.000000)
mul r0.z, r0.z, r1.z
mad r2.y, r1.x, r0.x, -r0.z
mad r0.x, r2.y, l(0.500000), r0.z
mad r2.z, r1.y, r0.y, -r0.x
mad r2.x, r2.z, l(0.500000), r0.x
ftou r0.xy, v0.xyxx
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r2.xyxx, r2.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t9.xyzw, s4
mov o2.z, r0.x
mov o2.w, l(0.66666669)
ret 
// Approximately 107 instruction slots used
