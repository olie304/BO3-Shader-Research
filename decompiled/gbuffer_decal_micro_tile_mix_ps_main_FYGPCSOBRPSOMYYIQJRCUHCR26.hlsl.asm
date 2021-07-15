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
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float2 mixScale;                   // Offset:  184 Size:     8
//   float detailScaleHeight1;          // Offset:  192 Size:     4
//   float detailScaleHeight2;          // Offset:  196 Size:     4
//   float4 colorTint1;                 // Offset:  208 Size:    16
//   float2 glossRange2;                // Offset:  224 Size:     8
//   float rotateUVs1;                  // Offset:  232 Size:     4
//   float rotateUVs2;                  // Offset:  236 Size:     4
//   bool useUVOffsets1;                // Offset:  240 Size:     4
//   bool useUVOffsets2;                // Offset:  244 Size:     4
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
// mixSampler                        sampler      NA          NA             s3      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d             t6      1 
// tintMask                          texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// detailMap1                        texture  float4          2d            t10      1 
// tintMask2                         texture  float4          2d            t11      1 
// detailMap2                        texture  float4          2d            t12      1 
// colorMapDetail2                   texture  float4          2d            t14      1 
// mixMap                            texture  float4          2d            t15      1 
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
dcl_constantbuffer CB0[16], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 6
sincos r0.x, r1.x, cb0[14].w
mov r2.z, r0.x
mov r2.y, r1.x
mov r2.x, -r0.x
add r0.xy, v1.yzyy, l(-0.500000, -0.500000, 0.000000, 0.000000)
dp2 r1.x, r0.xyxx, r2.yzyy
dp2 r1.y, r0.xyxx, r2.xyxx
add r0.zw, r1.xxxy, v2.yyyx
add r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.xy, r1.xyxx, cb0[6].xyxx
add r1.z, v2.z, l(0.500000)
add r0.zw, r0.zzzw, r1.zzzz
mul r0.zw, r0.zzzw, cb0[6].xxxy
movc r0.zw, cb0[15].yyyy, r0.zzzw, r1.xxxy
sample_indexable(texture2d)(float,float,float,float) r1.x, r0.zwzz, t11.xyzw, s1
add r2.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyw, r1.xxxx, r2.xyxz, l(1.000000, 1.000000, 0.000000, 1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.zwzz, t14.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r0.zwzz, t12.xyzw, s2
mul r2.xyz, r1.xywx, r2.xyzx
sincos r1.x, r4.x, cb0[14].z
mov r5.z, r1.x
mov r5.y, r4.x
mov r5.x, -r1.x
dp2 r1.y, r0.xyxx, r5.xyxx
dp2 r1.x, r0.xyxx, r5.yzyy
add r0.xy, r1.xyxx, v2.yxyy
add r0.zw, r1.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
add r0.xy, r1.zzzz, r0.xyxx
mul r0.xyzw, r0.xyzw, cb0[5].xyxy
movc r0.xy, cb0[15].xxxx, r0.xyxx, r0.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.z, r0.xyxx, t7.yzxw, s1
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, r0.zzzz, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r0.xyxx, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t10.xyzw, s2
mul r4.xyz, r1.xyzx, r4.xyzx
add r1.xyzw, r2.xyzw, -r4.xyzw
mul r2.xy, v1.yzyy, cb0[11].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r2.xyxx, t15.yzwx, s3
mad r1.xyzw, r0.wwww, r1.xyzw, r4.xyzw
mul o0.xyz, r1.wwww, r1.xyzx
mov o0.w, r1.w
mov o1.w, r1.w
mul r1.x, r3.z, r3.z
mad r1.yz, r3.xxyx, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r1.x, r1.x, l(0.33333334)
min r1.x, r1.x, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t9.xyzw, s2
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r2.z, r2.z, r2.z
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mad r3.w, r1.x, cb0[12].y, r2.z
mul r0.z, r0.z, r0.z
mad r0.xy, r0.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r4.xy, r0.xyxx, cb0[12].xxxx, r2.xyxx
mul r0.x, r0.z, l(0.33333334)
min r0.x, r0.x, l(1.000000)
mad r5.w, r0.x, cb0[12].x, r2.z
mad r0.xy, r1.yzyy, cb0[12].yyyy, r2.xyxx
dp2 r1.x, r2.xyxx, r2.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r4.z, r1.x
mov r0.z, r4.z
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul r3.xyz, r0.xyzx, r1.xxxx
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul r5.xyz, r0.xxxx, r4.xyzx
add r2.xyzw, r3.xyzw, -r5.xyzw
mad r2.xyzw, r0.wwww, r2.xyzw, r5.xyzw
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v5.xyzx
movc r1.x, v6.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.xyzx, r1.xxxx
mul r0.xyz, r2.yyyy, r0.xyzx
dp3 r1.y, v4.xyzx, v4.xyzx
rsq r1.y, r1.y
mul r3.xyz, r1.yyyy, v4.xyzx
mul r3.xyz, r1.xxxx, r3.xyzx
mad r0.xyz, r3.xyzx, r2.xxxx, r0.xyzx
dp3 r1.y, v3.xyzx, v3.xyzx
rsq r1.y, r1.y
mul r3.xyz, r1.yyyy, v3.xyzx
mul r1.xyz, r1.xxxx, r3.xyzx
mad r0.xyz, r1.xyzx, r2.zzzz, r0.xyzx
dp3 r1.x, r0.xyzx, r0.xyzx
rsq r1.x, r1.x
mul r0.xyz, r0.xyzx, r1.xxxx
ftou r3.xy, v0.xyxx
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r3.xyzw, t0.zwxy
mad r1.y, r1.y, l(3.000000), l(0.500000)
ftou r1.y, r1.y
and r3.xyzw, r1.yyyy, l(2, 1, 2, 1)
movc r3.xyzw, r3.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r1.y, r3.w, r3.z
movc r3.z, r1.y, l(-0.57735026), l(0.57735026)
dp3 r1.y, r0.xyzx, r3.xyzx
add r1.y, |r1.y|, l(1.000000)
rsq r1.y, r1.y
mul r2.xyz, r3.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
mul r3.xy, r3.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
dp2 r3.y, r0.xzxx, r3.xyxx
dp3 r3.x, r0.xyzx, r2.xyzx
mul r0.xy, r1.yyyy, r3.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mul_sat r1.y, cb0[14].y, l(0.05882353)
mul_sat r1.z, cb0[11].y, l(0.05882353)
add r1.y, -r1.z, r1.y
mad r0.w, r0.w, r1.y, r1.z
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r2.w
log r0.w, r0.w
mul_sat r0.w, r0.w, l(-0.05882353)
ge r1.y, r1.x, l(0.500000)
lt r1.x, l(0.000000), r1.x
movc r1.y, r1.y, l(0.500000), l(0.00146628)
mad r0.z, r0.w, l(0.49755621), r1.y
and r0.xyz, r0.xyzx, r1.xxxx
mul o1.xyz, r1.wwww, r0.xyzx
mul o2.xyzw, r1.wwww, l(0.040000, 0.500000, 1.000000, 1.000000)
ret 
// Approximately 130 instruction slots used
