//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:43:33 2021
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
//   float alphaRevealSoftEdge;         // Offset:  172 Size:     4
//   float alphaRevealRamp;             // Offset:  176 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// revealSampler                     sampler      NA          NA             s2      1 
// colorMap                          texture  float4          2d             t0      1 
// revealMap                         texture  float4          2d             t6      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float   xyzw
// TEXCOORD                 0   xy          2     NONE   float   xy  
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer CB0[12], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v1.xyzw
dcl_input_ps linear v2.xy
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t6.xyzw, s2
mad_sat r0.y, v1.w, l(0.998000), l(0.001000)
add r0.z, -r0.y, l(1.000000)
mov_sat r0.w, cb0[11].x
log r0.y, r0.y
mul r0.y, r0.y, r0.w
exp r0.y, r0.y
mov r1.x, -r0.y
log r0.y, r0.z
mul r0.y, r0.y, r0.w
exp r1.y, r0.y
mad_sat r0.yz, cb0[10].wwww, r1.xxyx, r0.zzzz
add r0.x, -r0.y, r0.x
add r0.y, -r0.y, r0.z
div_sat r0.x, r0.x, r0.y
lt r0.y, r0.x, l(0.500000)
discard_nz r0.y
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t0.xyzw, s1
log r0.yzw, |r1.xxyz|
mul r0.yzw, r0.yyzw, l(0.000000, 0.45454547, 0.45454547, 0.45454547)
exp r1.xyz, r0.yzwy
mul r1.xyzw, r1.xyzw, v1.xyzw
add r0.yzw, cb0[10].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r0.yzw, r1.wwww, r0.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
mul o0.xyz, r0.yzwy, r1.xyzx
mov o0.w, r0.x
ret 
// Approximately 27 instruction slots used
