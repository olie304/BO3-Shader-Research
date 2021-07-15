//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:24:45 2021
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
//   float3 specColorTint;              // Offset:  160 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  172 Size:     4 [unused]
//   float2 glossRange;                 // Offset:  176 Size:     8 [unused]
//   uint zFeatherComputeSprites;       // Offset:  184 Size:     4 [unused]
//   float desaturationAmount;          // Offset:  188 Size:     4 [unused]
//   float4 levelsControls;             // Offset:  192 Size:    16 [unused]
//   bool useOldHDRScale;               // Offset:  208 Size:     4 [unused]
//   float translucentShadowOpacity;    // Offset:  212 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// colorSampler                      sampler      NA          NA             s1      1 
// colorMap                          texture  float4          2d             t0      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// COLOR                    0   xyzw        1     NONE   float      w
// TEXCOORD                 0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 1   xyzw        3     NONE   float       
// TEXCOORD                 2   xyzw        4     NONE   float   xy  
// TEXCOORD                 3   xyz         5     NONE   float       
// TEXCOORD                 4   xy          6     NONE   float       
// TEXCOORD                 5     zw        6     NONE   float       
// TEXCOORD                 6   x           7     NONE    uint       
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
dcl_constantbuffer CB0[14], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xyzw
dcl_input_ps constant v4.xy
dcl_output o0.xyzw
dcl_temps 2
deriv_rtx_coarse r0.xy, v2.xyxx
deriv_rty_coarse r0.zw, v2.xxxy
sample_d_indexable(texture2d)(float,float,float,float) r1.x, v2.xyxx, t0.wxyz, s1, r0.xyxx, r0.zwzz
ne r1.zw, v4.xxxy, l(0.000000, 0.000000, 0.000000, 1.000000)
if_nz r1.z
  sample_d_indexable(texture2d)(float,float,float,float) r0.x, v2.zwzz, t0.wxyz, s1, r0.xyxx, r0.zwzz
  add r0.x, -r1.x, r0.x
  mad r1.x, v4.x, r0.x, r1.x
endif 
add r0.x, r1.x, v1.w
mad_sat r0.x, r0.x, v4.y, -v4.y
mov r0.y, l(1.000000)
mov r1.y, v1.w
movc r0.xy, r1.wwww, r0.xyxx, r1.xyxx
mul r0.x, r0.y, r0.x
mul r0.y, r0.x, cb0[13].y
lt r0.y, r0.y, l(0.00392157)
discard_nz r0.y
mad r0.x, -r0.x, cb0[13].y, l(1.000000)
mov_sat o0.xyz, r0.xxxx
mov o0.w, l(1.000000)
ret 
// Approximately 22 instruction slots used
