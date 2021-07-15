//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:59 2021
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
// tintMask                          texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
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
dcl_constantbuffer CB0[12], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
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
mul r0.w, r0.w, v1.x
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t6.yzwx, s1
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul o0.xyz, r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t10.xyzw, s4
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.yzyy, t9.yxzw, s2
add r0.z, -cb0[11].x, cb0[11].y
mad r0.y, r0.y, r0.z, cb0[11].x
mul_sat r0.y, r0.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t7.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.zw, r1.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
dp2 r1.x, r0.zwzz, r0.zwzz
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.x, r1.x
mul r1.y, r1.z, r1.z
mul r1.y, r1.y, l(0.33333334)
min r1.y, r1.y, l(1.000000)
movc r1.z, v5.x, l(1.000000), l(-1.000000)
dp3 r1.w, v2.xyzx, v2.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v2.xyzx
mul r3.xyz, r1.zzzz, r2.xyzx
dp3 r1.w, v3.xyzx, v3.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, v3.xyzx
mul r4.xyz, r1.zzzz, r4.xyzx
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r5.xyz, r1.wwww, v4.xyzx
mul r5.xyz, r1.zzzz, r5.xyzx
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r1.y
log r0.y, r0.y
mul r0.y, r0.y, l(-0.05882353)
max r0.y, r0.y, l(0.000000)
mul r5.xyz, r0.wwww, r5.xyzx
mad r4.xyz, r4.xyzx, r0.zzzz, r5.xyzx
mad r1.xyw, r3.xyxz, r1.xxxx, r4.xyxz
dp3 r0.z, r1.xywx, r1.xywx
rsq r0.z, r0.z
mul r4.yzw, r0.zzzz, r1.xxyw
add r0.z, r3.y, r3.x
mad r0.z, r2.z, r1.z, r0.z
mul r0.z, r0.z, l(0.500000)
mad r1.xyz, r2.xyzx, r1.zzzz, -r0.zzzz
max r0.w, r1.z, r1.y
max r0.w, r0.w, r1.x
max r0.z, r0.w, r0.z
eq r0.w, r0.z, r1.x
mul r2.yzw, r4.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.x, r0.z, l(2.000000)
mov r2.x, l(1)
mov r4.x, l(0)
movc r2.xyzw, r0.wwww, r2.xyzw, r4.xyzw
movc r0.z, r0.w, r1.x, r0.z
eq r0.w, r0.z, r1.y
mul r3.yzw, r2.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.x, r0.z, l(2.000000)
mov r3.x, l(2)
movc r2.xyzw, r0.wwww, r3.xyzw, r2.xyzw
movc r0.z, r0.w, r1.x, r0.z
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
mul r0.zw, r0.zzzz, r1.yyyz
mad o1.xy, r0.zwzz, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.y, r1.x
mul o1.w, r0.y, l(0.33333334)
mov o0.w, l(1.000000)
mov o2.xyw, l(0.040000,0.500000,0,0.33333334)
mov o2.z, r0.x
ret 
// Approximately 89 instruction slots used
