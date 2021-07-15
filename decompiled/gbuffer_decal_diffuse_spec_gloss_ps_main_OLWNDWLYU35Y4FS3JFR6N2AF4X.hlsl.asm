//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:28 2021
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
//   float baseNormalHeight;            // Offset:  188 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  192 Size:     8
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
// glossMap                          texture  float4          2d            t10      1 
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
dcl_constantbuffer CB0[13], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 3
add r0.xyz, cb0[11].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
add r1.xy, v1.yzyy, v2.xyxx
add r1.xy, r1.xyxx, v2.zzzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t9.yzwx, s2
mad r0.xyz, r0.wwww, r0.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r2.xyz, r1.xyxx, t7.xyzw, s2
mul r0.xyz, r0.xyzx, r2.xyzx
mad_sat r0.w, v1.x, l(0.998000), l(0.001000)
log r1.z, r0.w
add r0.w, -r0.w, l(1.000000)
mov_sat r1.w, cb0[10].y
mul r1.z, r1.z, r1.w
exp r1.z, r1.z
mov r2.x, -r1.z
log r1.z, r0.w
mul r1.z, r1.z, r1.w
exp r2.y, r1.z
mad_sat r1.zw, cb0[10].xxxx, r2.xxxy, r0.wwww
mul r2.xy, r1.xyxx, cb0[10].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t10.yzwx, s3
sample_indexable(texture2d)(float,float,float,float) r1.x, r2.xyxx, t6.xyzw, s1
add r1.x, -r1.z, r1.x
add r1.y, -r1.z, r1.w
div_sat r1.x, r1.x, r1.y
mul o0.xyz, r0.xyzx, r1.xxxx
mov o0.w, r1.x
add r0.x, -cb0[12].x, cb0[12].y
mad r0.x, r0.w, r0.x, cb0[12].x
mul_sat r0.x, r0.x, l(0.05882353)
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.y, r2.xyzw, t0.xzyw
ge r0.z, r0.y, l(0.500000)
lt r0.y, l(0.000000), r0.y
movc r0.z, r0.z, l(0.500000), l(0.00146628)
mad r2.z, r0.x, l(0.49755621), r0.z
mov r2.xy, l(0.500000,0.500000,0,0)
and r0.xyz, r0.yyyy, r2.xyzx
mul o1.xyz, r1.xxxx, r0.xyzx
mov o1.w, r1.x
mul o2.xyzw, r1.xxxx, l(0.040000, 0.500000, 0.000000, 1.000000)
ret 
// Approximately 42 instruction slots used
