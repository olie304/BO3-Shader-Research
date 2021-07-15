//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:52 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4
//   float alphaRevealRamp;             // Offset:  164 Size:     4
//   float2 revealScale;                // Offset:  168 Size:     8
//   float3 specColorTint;              // Offset:  176 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8 [unused]
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// revealSampler                     sampler      NA          NA             s1      1 
// normalSampler                     sampler      NA          NA             s2      1 
// resolvedNormal                    texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
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
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[12], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv constant v5.x, is_front_face
dcl_output o1.xyzw
dcl_temps 3
dp3 r0.x, v4.xyzx, v4.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v4.xyzx
movc r0.w, v5.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xy, v1.yzyy, t7.xyzw, s2
add r1.xy, r1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mad r1.xy, cb0[11].wwww, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.yyyy
dp3 r1.z, v3.xyzx, v3.xyzx
rsq r1.z, r1.z
mul r2.xyz, r1.zzzz, v3.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
dp2 r1.x, r1.xyxx, r1.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.x, r1.x
dp3 r1.y, v2.xyzx, v2.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, v2.xxyz
mul r1.yzw, r0.wwww, r1.yyzw
mad r0.xyz, r1.yzwy, r1.xxxx, r0.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
ftou r1.xy, v0.xyxx
mov r1.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyzw, t0.zwxy
mad r0.w, r1.y, l(3.000000), l(0.500000)
ftou r0.w, r0.w
and r2.xyzw, r0.wwww, l(2, 1, 2, 1)
movc r2.xyzw, r2.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.w, r2.w, r2.z
movc r2.z, r0.w, l(-0.57735026), l(0.57735026)
dp3 r0.w, r0.xyzx, r2.xyzx
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r1.yzw, r2.xxyz, l(0.000000, 0.70710677, -1.41421354, 0.70710677)
mul r2.xy, r2.xzxx, l(-1.22474492, 1.22474492, 0.000000, 0.000000)
dp2 r2.y, r0.xzxx, r2.xyxx
dp3 r2.x, r0.xyzx, r1.yzwy
mul r0.xy, r0.wwww, r2.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.w, r1.x, l(0.500000)
lt r1.x, l(0.000000), r1.x
movc r0.z, r0.w, l(0.500000), l(0.00146628)
and r0.xyz, r0.xyzx, r1.xxxx
mad_sat r0.w, v1.x, l(0.998000), l(0.001000)
log r1.x, r0.w
add r0.w, -r0.w, l(1.000000)
mov_sat r1.y, cb0[10].y
mul r1.x, r1.x, r1.y
exp r1.x, r1.x
mov r2.x, -r1.x
log r1.x, r0.w
mul r1.x, r1.x, r1.y
exp r2.y, r1.x
mad_sat r1.xy, cb0[10].xxxx, r2.xyxx, r0.wwww
mul r1.zw, v1.yyyz, cb0[10].zzzw
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.zwzz, t6.yzwx, s1
add r0.w, -r1.x, r0.w
add r1.x, -r1.x, r1.y
div_sat r0.w, r0.w, r1.x
mul o1.xyz, r0.wwww, r0.xyzx
mov o1.w, r0.w
ret 
// Approximately 68 instruction slots used
