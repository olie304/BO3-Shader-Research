//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:29:24 2021
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
//   float3 specColorTint;              // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
//   float detailScaleHeight;           // Offset:  200 Size:     4
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
// specColorMap                      texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// glossMap                          texture  float4          2d             t9      1 
// aoMap                             texture  float4          2d            t10      1 
// detailMap                         texture  float4          2d            t11      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    0   xyz         1     NONE   float   xyz 
// COLOR                    1      w        1     NONE   float       
// TEXCOORD                 0   xy          2     NONE   float   xy  
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
dcl_constantbuffer CB0[13], immediateIndexed
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
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 4
add r0.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
mad r0.xyz, r1.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, v1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s2
add_sat r1.x, -r0.w, l(1.000000)
mul o0.xyz, r0.xyzx, r1.xxxx
mov o0.w, l(1.000000)
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v2.xyxx, t7.xyzw, s3
add r0.xyz, r0.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r0.xyz, cb0[11].wwww, r0.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r0.xy, r0.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r0.z, r0.z
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
dp2 r1.x, r0.xyxx, r0.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.z, r1.x
mul r2.xy, v2.xyxx, cb0[4].xyxx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t11.xyzw, s3
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r1.w, r2.z, r2.z
mul r1.w, r1.w, l(0.33333334)
min r1.w, r1.w, l(1.000000)
mad r0.z, r1.w, cb0[12].z, r0.z
mad r1.xy, r2.xyxx, cb0[12].zzzz, r0.xyxx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r1.xyz, r0.xxxx, r1.xyzx
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r2.xyz, r0.xxxx, v5.xyzx
movc r0.x, v6.x, l(1.000000), l(-1.000000)
mul r2.xyz, r0.xxxx, r2.xyzx
mul r2.xyz, r1.yyyy, r2.xyzx
dp3 r0.y, v4.xyzx, v4.xyzx
rsq r0.y, r0.y
mul r3.xyz, r0.yyyy, v4.xyzx
mul r3.xyz, r0.xxxx, r3.xyzx
mad r1.xyw, r3.xyxz, r1.xxxx, r2.xyxz
dp3 r0.y, v3.xyzx, v3.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, v3.xyzx
mul r3.xyz, r0.xxxx, r2.xyzx
mad r1.xyz, r3.xyzx, r1.zzzz, r1.xywx
add r0.y, r3.y, r3.x
mad r0.y, r2.z, r0.x, r0.y
mul r0.y, r0.y, l(0.500000)
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.yzw, r1.wwww, r1.xxyz
mul r3.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
mov r3.x, l(1)
mov r1.x, l(0)
mad r2.xyz, r2.xyzx, r0.xxxx, -r0.yyyy
max r0.x, r2.z, r2.y
max r0.x, r0.x, r2.x
max r0.x, r0.x, r0.y
eq r0.y, r0.x, r2.x
movc r1.xyzw, r0.yyyy, r3.xyzw, r1.xyzw
mul r3.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
mov r3.x, l(2)
add r2.x, r0.x, l(2.000000)
movc r0.x, r0.y, r2.x, r0.x
eq r0.y, r0.x, r2.y
movc r1.xyzw, r0.yyyy, r3.xyzw, r1.xyzw
mul r3.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
add r2.x, r0.x, l(2.000000)
movc r0.x, r0.y, r2.x, r0.x
eq r0.x, r0.x, r2.z
mov r3.x, l(3)
movc r1.xyzw, r0.xxxx, r3.xyzw, r1.xyzw
add r0.x, r1.z, r1.y
add r2.z, r1.w, r0.x
mad r2.x, -r1.z, l(3.000000), r2.z
add r2.y, -r1.y, r1.w
utof r0.x, r1.x
mul o1.w, r0.x, l(0.33333334)
mul r1.xyz, r2.xyzx, l(0.40824831, 0.70710677, 0.57735026, 0.000000)
add r0.x, |r1.z|, l(1.000000)
rsq r0.x, r0.x
mul r0.xy, r0.xxxx, r1.xyxx
mad o1.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t9.xyzw, s2
add r0.y, -cb0[12].x, cb0[12].y
mad r0.x, r0.x, r0.y, cb0[12].x
mul_sat r0.x, r0.x, l(0.05882353)
mul r0.x, r0.x, l(-17.000000)
exp r0.x, r0.x
add r0.x, r0.x, r0.z
log r0.x, r0.x
mul_sat r0.x, r0.x, l(-0.05882353)
mad o1.z, r0.x, l(0.49755621), l(0.00146628)
add r0.xyz, cb0[11].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r0.xyz, r0.wwww, r0.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.y, -r0.z, r0.x
mad r0.x, r1.y, l(0.500000), r0.z
add r1.z, -r0.x, r0.y
mad r1.x, r1.z, l(0.500000), r0.x
ftou r0.xy, v0.xyxx
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r1.xyxx, r1.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t10.xyzw, s4
mov o2.z, r0.x
mov o2.w, l(0.33333334)
ret 
// Approximately 110 instruction slots used