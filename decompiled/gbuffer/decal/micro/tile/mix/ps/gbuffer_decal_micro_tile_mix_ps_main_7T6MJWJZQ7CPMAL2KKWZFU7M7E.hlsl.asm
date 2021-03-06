//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:38 2021
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
//   float4 detailScale1;               // Offset:   80 Size:    16
//   float4 detailScale2;               // Offset:   96 Size:    16
//   float4 detailScale3;               // Offset:  112 Size:    16 [unused]
//   float4 alphaRevealParms;           // Offset:  128 Size:    16 [unused]
//   float4 colorDetailScale;           // Offset:  144 Size:    16 [unused]
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4
//   float alphaRevealRamp;             // Offset:  164 Size:     4
//   float2 revealScale;                // Offset:  168 Size:     8
//   float3 colorTint;                  // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float2 mixScale;                   // Offset:  200 Size:     8
//   float detailScaleHeight1;          // Offset:  208 Size:     4
//   float detailScaleHeight2;          // Offset:  212 Size:     4
//   float4 colorTint1;                 // Offset:  224 Size:    16
//   float2 glossRange2;                // Offset:  240 Size:     8
//   float rotateUVs1;                  // Offset:  248 Size:     4
//   float rotateUVs2;                  // Offset:  252 Size:     4
//   bool useUVOffsets1;                // Offset:  256 Size:     4
//   bool useUVOffsets2;                // Offset:  260 Size:     4
//   float2 revealTiling;               // Offset:  264 Size:     8
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// revealSampler                     sampler      NA          NA             s1      1 
// colorSampler                      sampler      NA          NA             s2      1 
// specColorSampler                  sampler      NA          NA             s3      1 
// normalSampler                     sampler      NA          NA             s4      1 
// aoSampler                         sampler      NA          NA             s5      1 
// mixSampler                        sampler      NA          NA             s6      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// tintMask                          texture  float4          2d             t9      1 
// normalMap                         texture  float4          2d            t10      1 
// glossMap                          texture  float4          2d            t11      1 
// aoMap                             texture  float4          2d            t12      1 
// detailMap1                        texture  float4          2d            t14      1 
// tintMask2                         texture  float4          2d            t15      1 
// detailMap2                        texture  float4          2d            t16      1 
// glossMapDetail2                   texture  float4          2d            t17      1 
// colorMapDetail2                   texture  float4          2d            t18      1 
// mixMap                            texture  float4          2d            t19      1 
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
// UVOFFSETS                0   xyz         2     NONE   float   xyz 
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// SV_IsFrontFace           0   x           6    FFACE    uint   x   
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
dcl_constantbuffer CB0[17], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t16
dcl_resource_texture2d (float,float,float,float) t17
dcl_resource_texture2d (float,float,float,float) t18
dcl_resource_texture2d (float,float,float,float) t19
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 7
sincos r0.x, r1.x, cb0[15].z
mov r2.z, r0.x
mov r2.y, r1.x
mov r2.x, -r0.x
add r0.xy, v1.yzyy, l(-0.500000, -0.500000, 0.000000, 0.000000)
dp2 r1.x, r0.xyxx, r2.yzyy
dp2 r1.y, r0.xyxx, r2.xyxx
add r0.zw, r1.xxxy, v2.yyyx
add r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.xy, r1.xyxx, cb0[5].xyxx
add r1.z, v2.z, l(0.500000)
add r0.zw, r0.zzzw, r1.zzzz
mul r0.zw, r0.zzzw, cb0[5].xxxy
movc r0.zw, cb0[16].xxxx, r0.zzzw, r1.xxxy
sample_indexable(texture2d)(float,float,float,float) r1.x, r0.zwzz, t9.xyzw, s2
add r2.xyz, cb0[11].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyw, r1.xxxx, r2.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r0.zwzz, t7.xyzw, s2
mul r1.xyw, r1.xyxw, r2.xyxz
sincos r2.x, r3.x, cb0[15].w
mov r4.z, r2.x
mov r4.y, r3.x
mov r4.x, -r2.x
dp2 r2.y, r0.xyxx, r4.xyxx
dp2 r2.x, r0.xyxx, r4.yzyy
add r0.xy, r2.xyxx, v2.yxyy
add r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r2.xy, r2.xyxx, cb0[6].xyxx
add r0.xy, r1.zzzz, r0.xyxx
mul r0.xy, r0.xyxx, cb0[6].xyxx
movc r0.xy, cb0[16].yyyy, r0.xyxx, r2.xyxx
sample_indexable(texture2d)(float,float,float,float) r1.z, r0.xyxx, t15.yzxw, s2
add r2.xyz, cb0[14].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r2.xyz, r1.zzzz, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r0.xyxx, t18.xyzw, s2
mad r2.xyz, r3.xyzx, r2.xyzx, -r1.xywx
mul r3.xy, v1.yzyy, cb0[12].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.z, r3.xyxx, t19.yzxw, s6
mad r1.xyw, r1.zzzz, r2.xyxz, r1.xyxw
mad_sat r2.x, v1.x, l(0.998000), l(0.001000)
log r2.y, r2.x
add r2.x, -r2.x, l(1.000000)
mov_sat r2.z, cb0[10].y
mul r2.y, r2.y, r2.z
exp r2.y, r2.y
mov r3.x, -r2.y
log r2.y, r2.x
mul r2.y, r2.y, r2.z
exp r3.y, r2.y
mad_sat r2.xy, cb0[10].xxxx, r3.xyxx, r2.xxxx
mul r2.zw, v1.yyyz, cb0[16].zzzw
mul r2.zw, r2.zzzw, cb0[10].zzzw
sample_indexable(texture2d)(float,float,float,float) r2.z, r2.zwzz, t6.yzxw, s1
add r2.z, -r2.x, r2.z
add r2.x, -r2.x, r2.y
div_sat r2.x, r2.z, r2.x
mul o0.xyz, r1.xywx, r2.xxxx
mov o0.w, r2.x
sample_indexable(texture2d)(float,float,float,float) r1.x, r0.xyxx, t17.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r2.yzw, r0.xyxx, t16.wxyz, s4
add r0.x, -cb0[15].x, cb0[15].y
mad r0.x, r1.x, r0.x, cb0[15].x
mul_sat r0.x, r0.x, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.zwzz, t11.yxzw, s3
sample_indexable(texture2d)(float,float,float,float) r1.xyw, r0.zwzz, t14.xywz, s4
add r0.z, -cb0[12].x, cb0[12].y
mad r0.y, r0.y, r0.z, cb0[12].x
mul_sat r0.y, r0.y, l(0.05882353)
add r0.x, -r0.y, r0.x
mad r0.x, r1.z, r0.x, r0.y
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
mul r0.y, r2.w, r2.w
mad r0.zw, r2.yyyz, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mul r0.y, r0.y, l(0.33333334)
min r0.y, r0.y, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.yzw, v1.yzyy, t10.wxyz, s4
add r2.yzw, r2.yyzw, l(0.000000, -0.500000, -0.500000, -0.000000)
mad r2.yzw, cb0[11].wwww, r2.yyzw, l(0.000000, 0.500000, 0.500000, 0.000000)
mul r2.w, r2.w, r2.w
mad r2.yz, r2.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mad r3.w, r0.y, cb0[13].y, r2.w
mul r0.y, r1.w, r1.w
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r4.xy, r1.xyxx, cb0[13].xxxx, r2.yzyy
mul r0.y, r0.y, l(0.33333334)
min r0.y, r0.y, l(1.000000)
mad r5.w, r0.y, cb0[13].x, r2.w
mad r6.xy, r0.zwzz, cb0[13].yyyy, r2.yzyy
dp2 r0.y, r2.yzyy, r2.yzyy
add r0.y, -r0.y, l(1.000000)
max r0.y, r0.y, l(0.000000)
sqrt r4.z, r0.y
mov r6.z, r4.z
dp3 r0.y, r6.xyzx, r6.xyzx
rsq r0.y, r0.y
mul r3.xyz, r0.yyyy, r6.xyzx
dp3 r0.y, r4.xyzx, r4.xyzx
rsq r0.y, r0.y
mul r5.xyz, r0.yyyy, r4.xyzx
add r3.xyzw, r3.xyzw, -r5.xyzw
mad r1.xyzw, r1.zzzz, r3.xyzw, r5.xyzw
add r0.x, r0.x, r1.w
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
ftou r3.xy, v0.xyxx
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.yz, r3.xyzw, t0.xzwy
ge r0.w, r0.y, l(0.500000)
movc r0.w, r0.w, l(0.500000), l(0.00146628)
mad r3.z, r0.x, l(0.49755621), r0.w
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r2.yzw, r0.xxxx, v5.xxyz
movc r0.x, v6.x, l(1.000000), l(-1.000000)
mul r2.yzw, r0.xxxx, r2.yyzw
mul r2.yzw, r1.yyyy, r2.yyzw
dp3 r0.w, v4.xyzx, v4.xyzx
rsq r0.w, r0.w
mul r4.xyz, r0.wwww, v4.xyzx
mul r4.xyz, r0.xxxx, r4.xyzx
mad r1.xyw, r4.xyxz, r1.xxxx, r2.yzyw
dp3 r0.w, v3.xyzx, v3.xyzx
rsq r0.w, r0.w
mul r2.yzw, r0.wwww, v3.xxyz
mul r2.yzw, r0.xxxx, r2.yyzw
mad r1.xyz, r2.yzwy, r1.zzzz, r1.xywx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r1.xyz, r0.xxxx, r1.xyzx
mad r0.x, r0.z, l(3.000000), l(0.500000)
lt r0.y, l(0.000000), r0.y
ftou r0.x, r0.x
and r4.xyzw, r0.xxxx, l(2, 1, 2, 1)
movc r4.xyzw, r4.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.x, r4.w, r4.z
movc r4.z, r0.x, l(-0.57735026), l(0.57735026)
dp3 r0.x, r1.xyzx, r4.xyzx
add r0.x, |r0.x|, l(1.000000)
rsq r0.x, r0.x
mul r2.yzw, r4.xxyz, l(0.000000, 0.70710677, -1.41421354, 0.70710677)
mul r0.zw, r4.xxxz, l(0.000000, 0.000000, -1.22474492, 1.22474492)
dp2 r4.y, r1.xzxx, r0.zwzz
dp3 r4.x, r1.xyzx, r2.yzwy
mul r0.xz, r0.xxxx, r4.xxyx
mad r3.xy, r0.xzxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
and r0.xyz, r3.xyzx, r0.yyyy
mul o1.xyz, r2.xxxx, r0.xyzx
mov o1.w, r2.x
sample_indexable(texture2d)(float,float,float,float) r0.z, v1.yzyy, t12.yzxw, s5
mov r0.xyw, l(0.040000,0.500000,0,1.000000)
mul o2.xyzw, r2.xxxx, r0.xyzw
ret 
// Approximately 155 instruction slots used
