//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:40:41 2021
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
//   float BlurAmount;                  // Offset:  160 Size:     4
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim      HLSL Bind  Count
// ------------------------------ ---------- ------- ----------- -------------- ------
// sonarColorSampler_C1_P0_sampler    sampler      NA          NA             s1      1 
// sonarColorSampler_C1_P0           texture  float4          2d             t0      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float       
// TEXCOORD                 0   xy          1     NONE   float   xy  
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
dcl_constantbuffer CB0[11], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_input_ps linear v1.xy
dcl_output o0.xyzw
dcl_temps 3
mad r0.xyzw, cb0[10].xxxx, l(-0.00326212, -0.00405810, -0.00840144, -0.00073580), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r0.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r1.xyzw
mad r1.xyzw, cb0[10].xxxx, l(-0.00695914, 0.00457137, -0.00203345, 0.00620716), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r2.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
mad r1.xyzw, cb0[10].xxxx, l(0.00962340, -0.00194983, 0.00473434, -0.00480026), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r2.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
mad r1.xyzw, cb0[10].xxxx, l(0.00519456, 0.00767022, 0.00185461, -0.00893124), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r2.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
mad r1.xyzw, cb0[10].xxxx, l(0.00507431, 0.00064425, 0.00896420, 0.00412458), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r2.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
mad r1.xyzw, cb0[10].xxxx, l(-0.00321940, -0.00932615, -0.00791559, -0.00597710), v1.xyxy
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t0.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.zwzz, t0.xyzw, s1
add r0.xyzw, r0.xyzw, r2.xyzw
add r0.xyzw, r1.xyzw, r0.xyzw
mul r0.xyzw, r0.xyzw, l(0.08333334, 0.08333334, 0.08333334, 0.08333334)
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret 
// Approximately 33 instruction slots used
