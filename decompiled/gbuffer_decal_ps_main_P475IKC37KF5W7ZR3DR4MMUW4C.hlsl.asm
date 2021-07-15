//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:07 2021
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
//   float3 specColorTint;              // Offset:  176 Size:    12
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8
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
// resolvedNormal                    texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d             t6      1 
// tintMask                          texture  float4          2d             t7      1 
// specColorMap                      texture  float4          2d             t9      1 
// normalMap                         texture  float4          2d            t10      1 
// glossMap                          texture  float4          2d            t11      1 
// aoMap                             texture  float4          2d            t12      1 
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
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
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
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v1.yzyy, t7.xyzw, s1
add r0.yzw, cb0[10].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r0.xyz, r0.xxxx, r0.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.yzyy, t6.xyzw, s1
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.w, r1.w, v1.x
sample_indexable(texture2d)(float,float,float,float) r1.x, v1.yzyy, t9.xyzw, s2
add_sat r1.y, -r1.x, l(1.000000)
mul r0.xyz, r0.xyzx, r1.yyyy
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
dp3 r0.x, v3.xyzx, v3.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v3.xyzx
movc r1.y, v5.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.xyzx, r1.yyyy
dp3 r1.z, v4.xyzx, v4.xyzx
rsq r1.z, r1.z
mul r2.xyz, r1.zzzz, v4.xyzx
mul r2.xyz, r1.yyyy, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.yzyy, t10.xyzw, s3
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r3.xyz, cb0[11].wwww, r3.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.zw, r3.xxxy, l(0.000000, 0.000000, 1.99218750, 1.99218750), l(0.000000, 0.000000, -1.000000, -1.000000)
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
mul r2.xyz, r1.wwww, r2.xyzx
mad r0.xyz, r0.xyzx, r1.zzzz, r2.xyzx
dp2 r1.z, r1.zwzz, r1.zwzz
add r1.z, -r1.z, l(1.000000)
max r1.z, r1.z, l(0.000000)
sqrt r1.z, r1.z
dp3 r1.w, v2.xyzx, v2.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v2.xyzx
mul r2.xyz, r1.yyyy, r2.xyzx
mad r0.xyz, r2.xyzx, r1.zzzz, r0.xyzx
dp3 r1.y, r0.xyzx, r0.xyzx
rsq r1.y, r1.y
mul r0.xyz, r0.xyzx, r1.yyyy
mov r3.zw, l(0,0,0,0)
ftou r3.xy, v0.xyxx
ld_indexable(texture2d)(float,float,float,float) r1.yz, r3.xyzw, t0.xzwy
and r2.xy, r3.xyxx, l(1, 1, 0, 0)
ieq r1.w, r2.y, r2.x
mad r1.z, r1.z, l(3.000000), l(0.500000)
ftou r1.z, r1.z
and r3.xyzw, r1.zzzz, l(2, 1, 2, 1)
movc r3.xyzw, r3.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r1.z, r3.w, r3.z
movc r3.z, r1.z, l(-0.57735026), l(0.57735026)
dp3 r1.z, r0.xyzx, r3.xyzx
add r1.z, |r1.z|, l(1.000000)
rsq r1.z, r1.z
mul r2.xyz, r3.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
mul r3.xy, r3.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
dp2 r3.y, r0.xzxx, r3.xyxx
dp3 r3.x, r0.xyzx, r2.xyzx
mul r0.xy, r1.zzzz, r3.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.z, v1.yzyy, t11.yzxw, s2
add r2.x, -cb0[12].x, cb0[12].y
mad r1.z, r1.z, r2.x, cb0[12].x
mul_sat r1.z, r1.z, l(0.05882353)
mul r1.z, r1.z, l(-17.000000)
exp r1.z, r1.z
add r1.z, r1.z, r2.w
log r1.z, r1.z
mul r1.z, r1.z, l(-0.05882353)
max r1.z, r1.z, l(0.000000)
ge r2.x, r1.y, l(0.500000)
lt r1.y, l(0.000000), r1.y
movc r2.x, r2.x, l(0.500000), l(0.00146628)
mad r0.z, r1.z, l(0.49755621), r2.x
and r0.xyz, r0.xyzx, r1.yyyy
mul o1.xyz, r0.wwww, r0.xyzx
mov o1.w, r0.w
add r0.xyz, cb0[11].xyzx, l(-0.040000, -0.040000, -0.040000, 0.000000)
mad r0.xyz, r1.xxxx, r0.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
add r1.y, -r0.z, r0.x
mad r0.x, r1.y, l(0.500000), r0.z
add r1.z, -r0.x, r0.y
mad r1.x, r1.z, l(0.500000), r0.x
movc r0.xy, r1.wwww, r1.xyxx, r1.xzxx
mad r1.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.z, v1.yzyy, t12.yzxw, s4
mov r1.w, l(1.000000)
mul o2.xyzw, r0.wwww, r1.xyzw
ret 
// Approximately 90 instruction slots used
