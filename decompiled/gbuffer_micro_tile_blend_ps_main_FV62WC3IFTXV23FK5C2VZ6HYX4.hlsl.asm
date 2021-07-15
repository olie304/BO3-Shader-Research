//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:30:49 2021
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
//   float baseNormalHeight;            // Offset:  160 Size:     4
//   float2 glossRange;                 // Offset:  164 Size:     8
//   float2 mixScale;                   // Offset:  176 Size:     8
//   float detailScaleHeight1;          // Offset:  184 Size:     4
//   float detailScaleHeight2;          // Offset:  188 Size:     4
//   float4 colorTint;                  // Offset:  192 Size:    16
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
// colorMap                          texture  float4          2d             t0      1 
// normalMap                         texture  float4          2d             t6      1 
// detailMap1                        texture  float4          2d             t7      1 
// baseTintMap                       texture  float4          2d             t9      1 
// detailMap2                        texture  float4          2d            t10      1 
// colorMapDetail2                   texture  float4          2d            t11      1 
// mixMap                            texture  float4          2d            t12      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
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
sincos r0.x, r1.x, cb0[14].z
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
movc r0.zw, cb0[15].xxxx, r0.zzzw, r1.xxxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.zwzz, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyw, r0.zwzz, t7.xywz, s2
add r3.xyz, cb0[12].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r3.xyz, r2.wwww, r3.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.xyz, r2.xyzx, r3.xyzx
sincos r3.x, r4.x, cb0[14].w
mov r5.z, r3.x
mov r5.y, r4.x
mov r5.x, -r3.x
dp2 r3.y, r0.xyxx, r5.xyxx
dp2 r3.x, r0.xyxx, r5.yzyy
add r0.xy, r3.xyxx, v2.yxyy
add r0.zw, r3.xxxy, l(0.000000, 0.000000, 0.500000, 0.500000)
add r0.xy, r1.zzzz, r0.xyxx
mul r0.xyzw, r0.xyzw, cb0[6].xyxy
movc r0.xy, cb0[15].yyyy, r0.xyxx, r0.zwzz
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.xyxx, t11.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t10.xyzw, s2
add r4.xyz, cb0[13].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r4.xyz, r3.wwww, r4.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mad r3.xyz, r3.xyzx, r4.xyzx, -r2.xyzx
mul r4.xy, v1.yzyy, cb0[11].xyxx
sample_indexable(texture2d)(float,float,float,float) r0.w, r4.xyxx, t12.yzwx, s3
mad r2.xyz, r0.wwww, r3.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.yzyy, t9.xyzw, s1
mul o0.xyz, r2.xyzx, r3.xyzx
mov o0.w, l(1.000000)
mul r0.z, r0.z, r0.z
mad r0.xy, r0.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t6.xyzw, s2
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].xxxx, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.z, r2.z, r2.z
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.z, r1.z, l(0.33333334)
min r1.z, r1.z, l(1.000000)
mad r3.w, r0.z, cb0[11].w, r1.z
mul r0.z, r1.w, r1.w
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mad r4.xy, r1.xyxx, cb0[11].zzzz, r2.xyxx
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
mad r1.w, r0.z, cb0[11].z, r1.z
mad r0.xy, r0.xyxx, cb0[11].wwww, r2.xyxx
dp2 r2.x, r2.xyxx, r2.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r4.z, r2.x
mov r0.z, r4.z
dp3 r2.x, r0.xyzx, r0.xyzx
rsq r2.x, r2.x
mul r3.xyz, r0.xyzx, r2.xxxx
dp3 r0.x, r4.xyzx, r4.xyzx
rsq r0.x, r0.x
mul r1.xyz, r0.xxxx, r4.xyzx
add r2.xyzw, -r1.xyzw, r3.xyzw
mad r1.xyzw, r0.wwww, r2.xyzw, r1.xyzw
mul_sat r0.x, cb0[14].y, l(0.05882353)
mul_sat r0.y, cb0[10].z, l(0.05882353)
add r0.x, -r0.y, r0.x
mad r0.x, r0.w, r0.x, r0.y
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
add r0.x, r0.x, r1.w
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v5.xyzx
movc r0.w, v6.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
mul r0.xyz, r1.yyyy, r0.xyzx
dp3 r1.y, v4.xyzx, v4.xyzx
rsq r1.y, r1.y
mul r2.xyz, r1.yyyy, v4.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
dp3 r1.x, v3.xyzx, v3.xyzx
rsq r1.x, r1.x
mul r1.xyw, r1.xxxx, v3.xyxz
mul r2.xyz, r0.wwww, r1.xywx
mad r0.xyz, r2.xyzx, r1.zzzz, r0.xyzx
add r1.z, r2.y, r2.x
mad r1.z, r1.w, r0.w, r1.z
mul r1.z, r1.z, l(0.500000)
dp3 r2.x, r0.xyzx, r0.xyzx
rsq r2.x, r2.x
mul r2.yzw, r0.xxyz, r2.xxxx
mul r3.yzw, r2.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r3.x, l(1)
mov r2.x, l(0)
mad r0.xyz, r1.xywx, r0.wwww, -r1.zzzz
max r0.w, r0.z, r0.y
max r0.w, r0.w, r0.x
max r0.w, r0.w, r1.z
eq r0.x, r0.w, r0.x
movc r1.xyzw, r0.xxxx, r3.xyzw, r2.xyzw
mul r2.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r2.x, l(2)
add r3.x, r0.w, l(2.000000)
movc r0.x, r0.x, r3.x, r0.w
eq r0.y, r0.x, r0.y
movc r1.xyzw, r0.yyyy, r2.xyzw, r1.xyzw
mul r2.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r0.w, r0.x, l(2.000000)
movc r0.x, r0.y, r0.w, r0.x
eq r0.x, r0.x, r0.z
mov r2.x, l(3)
movc r0.xyzw, r0.xxxx, r2.xyzw, r1.xyzw
add r1.x, r0.z, r0.y
add r1.z, r0.w, r1.x
mad r1.x, -r0.z, l(3.000000), r1.z
add r1.y, -r0.y, r0.w
utof r0.x, r0.x
mul o1.w, r0.x, l(0.33333334)
mul r0.xyz, r1.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.z, |r0.z|, l(1.000000)
rsq r0.z, r0.z
mul r0.xy, r0.zzzz, r0.xyxx
mad o1.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mov o2.xyzw, l(0.040000,0.500000,1.000000,0.33333334)
ret 
// Approximately 139 instruction slots used
