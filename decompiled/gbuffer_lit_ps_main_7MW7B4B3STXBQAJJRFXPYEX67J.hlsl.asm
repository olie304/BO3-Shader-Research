//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:29:00 2021
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
//   float3 colorTint;                  // Offset:  160 Size:    12
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
//   float detailScaleHeight;           // Offset:  184 Size:     4
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
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 5
add r0.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
add r1.xy, v1.yzyy, v2.xyxx
add r1.xy, r1.xyxx, v2.zzzz
mul r1.xy, r1.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
mad r0.xyz, r2.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul o0.xyz, r0.xyzx, r2.xyzx
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, r1.xyxx, t7.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r0.yzw, r1.xyxx, t10.wxyz, s3
add r1.x, -cb0[11].x, cb0[11].y
mad r0.x, r0.x, r1.x, cb0[11].x
mul_sat r0.x, r0.x, l(0.05882353)
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
mul r0.w, r0.w, r0.w
mad r0.yz, r0.yyzy, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t6.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r1.z, r1.z, r1.z
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.z, r1.z, l(0.33333334)
min r1.z, r1.z, l(1.000000)
mad r0.w, r0.w, cb0[11].z, r1.z
add r0.x, r0.x, r0.w
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
mad r0.xy, r0.yzyy, cb0[11].zzzz, r1.xyxx
dp2 r0.w, r1.xyxx, r1.xyxx
add r0.w, -r0.w, l(1.000000)
max r0.w, r0.w, l(0.000000)
sqrt r0.z, r0.w
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r0.w, v5.xyzx, v5.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v5.xyzx
movc r0.w, v6.x, l(1.000000), l(-1.000000)
mul r1.xyz, r0.wwww, r1.xyzx
mul r1.xyz, r0.yyyy, r1.xyzx
dp3 r0.y, v4.xyzx, v4.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, v4.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
mad r1.xyz, r2.xyzx, r0.xxxx, r1.xyzx
dp3 r0.x, v3.xyzx, v3.xyzx
rsq r0.x, r0.x
mul r2.xyz, r0.xxxx, v3.xyzx
mul r3.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r3.xyzx, r0.zzzz, r1.xyzx
add r1.x, r3.y, r3.x
mad r1.x, r2.z, r0.w, r1.x
mul r1.x, r1.x, l(0.500000)
dp3 r1.y, r0.xyzx, r0.xyzx
rsq r1.y, r1.y
mul r3.yzw, r0.xxyz, r1.yyyy
mul r4.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r4.x, l(1)
mov r3.x, l(0)
mad r0.xyz, r2.xyzx, r0.wwww, -r1.xxxx
max r0.w, r0.z, r0.y
max r0.w, r0.w, r0.x
max r0.w, r0.w, r1.x
eq r0.x, r0.w, r0.x
movc r1.xyzw, r0.xxxx, r4.xyzw, r3.xyzw
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
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t9.xyzw, s4
mov o2.z, r0.x
mov o2.xyw, l(0.040000,0.500000,0,0.33333334)
ret 
// Approximately 97 instruction slots used
