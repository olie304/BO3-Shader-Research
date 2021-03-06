//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:26:14 2021
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
//   float2 wind1Parms;                 // Offset:  184 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  192 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  200 Size:     8 [unused]
//   float2 vertexColorScale;           // Offset:  208 Size:     8 [unused]
//   float3 backlightScatterColor;      // Offset:  224 Size:    12
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
// colorMap                          texture  float4          2d             t0      1 
// tintMask                          texture  float4          2d             t6      1 
// normalMap                         texture  float4          2d             t7      1 
// thicknessMap                      texture  float4          2d             t9      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    0   xyz         1     NONE   float       
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
dcl_constantbuffer CB0[15], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 6
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, v2.xyxx, t0.xyzw, s1
lt r0.w, r0.w, l(0.500000)
discard_nz r0.w
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t6.yzwx, s1
add r1.xyz, cb0[10].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r1.xyz, r0.wwww, r1.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.xyzx
mul_sat r0.w, cb0[11].y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t7.xyzw, s2
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r1.w, r1.xyxx, r1.xyxx
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r1.w, r1.w
mul r1.z, r1.z, r1.z
mul r1.z, r1.z, l(0.33333334)
min r1.z, r1.z, l(1.000000)
movc r2.x, v6.x, l(1.000000), l(-1.000000)
dp3 r2.y, v3.xyzx, v3.xyzx
rsq r2.y, r2.y
mul r2.yzw, r2.yyyy, v3.xxyz
mul r3.xyz, r2.xxxx, r2.yzwy
dp3 r3.w, v4.xyzx, v4.xyzx
rsq r3.w, r3.w
mul r4.xyz, r3.wwww, v4.xyzx
mul r4.xyz, r2.xxxx, r4.xyzx
dp3 r3.w, v5.xyzx, v5.xyzx
rsq r3.w, r3.w
mul r5.xyz, r3.wwww, v5.xyzx
mul r5.xyz, r2.xxxx, r5.xyzx
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r1.z
log r0.w, r0.w
mul r0.w, r0.w, l(-0.05882353)
max r0.w, r0.w, l(0.000000)
mul r5.xyz, r1.yyyy, r5.xyzx
mad r1.xyz, r4.xyzx, r1.xxxx, r5.xyzx
mad r1.xyz, r3.xyzx, r1.wwww, r1.xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r1.w, r1.w
mul r1.yzw, r1.wwww, r1.xxyz
sample_indexable(texture2d)(float,float,float,float) r3.z, v2.xyxx, t9.yzxw, s1
mul r4.xyz, r0.xyzx, cb0[14].xyzx
add r3.z, -r3.z, l(1.000000)
mul r3.w, r3.z, r4.z
add r3.x, r3.y, r3.x
mad r3.x, r2.w, r2.x, r3.x
mul r3.x, r3.x, l(0.500000)
mad r2.xyz, r2.yzwy, r2.xxxx, -r3.xxxx
max r2.w, r2.z, r2.y
max r2.w, r2.w, r2.x
max r2.w, r2.w, r3.x
eq r2.x, r2.w, r2.x
mul r5.yzw, r1.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r3.x, r2.w, l(2.000000)
mov r5.x, l(1)
mov r1.x, l(0)
movc r1.xyzw, r2.xxxx, r5.xyzw, r1.xyzw
movc r2.x, r2.x, r3.x, r2.w
eq r2.y, r2.x, r2.y
mul r5.yzw, r1.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r2.w, r2.x, l(2.000000)
mov r5.x, l(2)
movc r1.xyzw, r2.yyyy, r5.xyzw, r1.xyzw
movc r2.x, r2.y, r2.w, r2.x
eq r2.x, r2.x, r2.z
mul r5.yzw, r1.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r5.x, l(3)
movc r1.xyzw, r2.xxxx, r5.xyzw, r1.xyzw
add r2.x, r1.z, r1.y
add r2.z, r1.w, r2.x
add r2.y, -r1.y, r1.w
mad r2.x, -r1.z, l(3.000000), r2.z
mul r1.yzw, r2.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r1.w, |r1.w|, l(1.000000)
rsq r1.w, r1.w
mul r1.yz, r1.wwww, r1.yyzy
mad o1.xy, r1.yzyy, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.w, l(0.49755621), l(0.500000)
utof r0.w, r1.x
mul o1.w, r0.w, l(0.33333334)
ftou r1.xy, v0.xyxx
mad r2.y, r4.x, r3.z, -r3.w
mad r0.w, r2.y, l(0.500000), r3.w
mad r2.z, r4.y, r3.z, -r0.w
mad r2.x, r2.z, l(0.500000), r0.w
and r1.xy, r1.xyxx, l(1, 1, 0, 0)
ieq r0.w, r1.y, r1.x
movc r1.xy, r0.wwww, r2.xyxx, r2.xzxx
mad o2.xy, r1.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.xyz, r0.xyzx
mov o0.w, l(1.000000)
mov o2.zw, l(0,0,1.000000,0.66666669)
ret 
// Approximately 97 instruction slots used
