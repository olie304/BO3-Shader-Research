//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:58 2021
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
// normalSampler                     sampler      NA          NA             s2      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// colorMap                          texture  float4          2d             t6      1 
// tintMask                          texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
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
dcl_constantbuffer CB0[12], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
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
dcl_temps 4
add r0.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
add r1.xy, v1.yzyy, v2.xyxx
add r1.xy, r1.xyxx, v2.zzzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t7.yzwx, s1
mad r0.xyz, r0.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t9.xyzw, s2
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mul r0.xyz, r0.xyzx, r2.xyzx
mul r0.w, r2.w, v1.x
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
mad r0.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.z, r1.z, r1.z
mul r0.z, r0.z, l(0.33333334)
min r0.z, r0.z, l(1.000000)
dp3 r1.x, v5.xyzx, v5.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v5.xyzx
movc r1.w, v6.x, l(1.000000), l(-1.000000)
mul r1.xyz, r1.wwww, r1.xyzx
mul r1.xyz, r0.yyyy, r1.xyzx
dp3 r2.x, v4.xyzx, v4.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, v4.xyzx
mul r2.xyz, r1.wwww, r2.xyzx
mad r1.xyz, r2.xyzx, r0.xxxx, r1.xyzx
dp2 r0.x, r0.xyxx, r0.xyxx
add r0.x, -r0.x, l(1.000000)
max r0.x, r0.x, l(0.000000)
sqrt r0.x, r0.x
dp3 r0.y, v3.xyzx, v3.xyzx
rsq r0.y, r0.y
mul r2.xyz, r0.yyyy, v3.xyzx
mul r2.xyz, r1.wwww, r2.xyzx
mad r1.xyz, r2.xyzx, r0.xxxx, r1.xyzx
dp3 r0.x, r1.xyzx, r1.xyzx
rsq r0.x, r0.x
mul r1.xyz, r0.xxxx, r1.xyzx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.xy, r2.xyzw, t0.zwxy
mad r0.y, r0.y, l(3.000000), l(0.500000)
ftou r0.y, r0.y
and r2.xyzw, r0.yyyy, l(2, 1, 2, 1)
movc r2.xyzw, r2.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.y, r2.w, r2.z
movc r2.z, r0.y, l(-0.57735026), l(0.57735026)
dp3 r0.y, r1.xyzx, r2.xyzx
add r0.y, |r0.y|, l(1.000000)
rsq r0.y, r0.y
mul r3.xyz, r2.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
mul r2.xy, r2.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
dp2 r2.y, r1.xzxx, r2.xyxx
dp3 r2.x, r1.xyzx, r3.xyzx
mul r1.xy, r0.yyyy, r2.xyxx
mad r1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mul_sat r0.y, cb0[11].y, l(0.05882353)
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.z
log r0.y, r0.y
mul r0.y, r0.y, l(-0.05882353)
max r0.y, r0.y, l(0.000000)
ge r0.z, r0.x, l(0.500000)
lt r0.x, l(0.000000), r0.x
movc r0.z, r0.z, l(0.500000), l(0.00146628)
mad r1.z, r0.y, l(0.49755621), r0.z
and r0.xyz, r0.xxxx, r1.xyzx
mul o1.xyz, r0.wwww, r0.xyzx
mov o1.w, r0.w
mul o2.xyzw, r0.wwww, l(0.040000, 0.500000, 1.000000, 1.000000)
ret 
// Approximately 74 instruction slots used
