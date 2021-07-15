//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:26 2021
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
//   float3 colorTint;                  // Offset:  176 Size:    12
//   float3 specColorTint;              // Offset:  192 Size:    12
//   float baseNormalHeight;            // Offset:  204 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  208 Size:     8
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
// resolvedNormal                    texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// tintMask                          texture  float4          2d             t9      1 
// specColorMap                      texture  float4          2d            t10      1 
// glossMap                          texture  float4          2d            t11      1 
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
// COLOR                    1      w        1     NONE   float      w
// TEXCOORD                 0   xy          2     NONE   float   xy  
// TEXCOORD                 1   xyz         3     NONE   float       
// TEXCOORD                 2   xyz         4     NONE   float       
// TEXCOORD                 3   xyz         5     NONE   float       
// SV_IsFrontFace           0   x           6    FFACE    uint       
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
dcl_constantbuffer CB0[14], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t9.xyzw, s2
add r0.yzw, cb0[11].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r0.xyz, r0.xxxx, r0.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v2.xyxx, t7.xyzw, s2
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, v1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t10.yzwx, s3
add_sat r1.x, -r0.w, l(1.000000)
mul r0.xyz, r0.xyzx, r1.xxxx
mad_sat r1.x, v1.w, l(0.998000), l(0.001000)
log r1.y, r1.x
add r1.x, -r1.x, l(1.000000)
mov_sat r1.z, cb0[10].y
mul r1.y, r1.y, r1.z
exp r1.y, r1.y
mov r2.x, -r1.y
log r1.y, r1.x
mul r1.y, r1.y, r1.z
exp r2.y, r1.y
mad_sat r1.xy, cb0[10].xxxx, r2.xyxx, r1.xxxx
mul r1.zw, v2.xxxy, cb0[10].zzzw
sample_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t6.yzxw, s1
add r1.z, -r1.x, r1.z
add r1.x, -r1.x, r1.y
div_sat r1.x, r1.z, r1.x
mul o0.xyz, r0.xyzx, r1.xxxx
mov o0.w, r1.x
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t11.xyzw, s3
add r0.y, -cb0[13].x, cb0[13].y
mad r0.x, r0.x, r0.y, cb0[13].x
mul_sat r0.x, r0.x, l(0.05882353)
mov r2.zw, l(0,0,0,0)
ftou r2.xy, v0.xyxx
ld_indexable(texture2d)(float,float,float,float) r0.y, r2.xyzw, t0.xzyw
and r1.yz, r2.xxyx, l(0, 1, 1, 0)
ieq r0.z, r1.z, r1.y
ge r1.y, r0.y, l(0.500000)
lt r0.y, l(0.000000), r0.y
movc r1.y, r1.y, l(0.500000), l(0.00146628)
mad r2.z, r0.x, l(0.49755621), r1.y
mov r2.xy, l(0.500000,0.500000,0,0)
and r1.yzw, r0.yyyy, r2.xxyz
mul o1.xyz, r1.xxxx, r1.yzwy
mov o1.w, r1.x
add r1.yzw, cb0[12].xxyz, l(0.000000, -0.040000, -0.040000, -0.040000)
mad r0.xyw, r0.wwww, r1.yzyw, l(0.040000, 0.040000, 0.000000, 0.040000)
add r2.y, -r0.w, r0.x
mad r0.x, r2.y, l(0.500000), r0.w
add r2.z, -r0.x, r0.y
mad r2.x, r2.z, l(0.500000), r0.x
movc r0.xy, r0.zzzz, r2.xyxx, r2.xzxx
mad r0.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov r0.zw, l(0,0,0,1.000000)
mul o2.xyzw, r1.xxxx, r0.xyzw
ret 
// Approximately 55 instruction slots used
