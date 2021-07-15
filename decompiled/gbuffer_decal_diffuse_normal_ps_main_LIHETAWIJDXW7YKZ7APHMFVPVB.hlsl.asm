//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:27:21 2021
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
//   float3 specColorTint;              // Offset:  176 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  188 Size:     4
//   float2 glossRange;                 // Offset:  192 Size:     8 [unused]
//   float2 wind1Parms;                 // Offset:  200 Size:     8 [unused]
//   float2 wind2Parms;                 // Offset:  208 Size:     8 [unused]
//   float2 wind3Parms;                 // Offset:  216 Size:     8 [unused]
//   float2 vertexColorScale;           // Offset:  224 Size:     8 [unused]
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
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t7.xyzw, s1
add r0.yzw, cb0[10].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r0.xyz, r0.xxxx, r0.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t6.xyzw, s1
mul r0.xyz, r0.xyzx, r1.xyzx
mul o0.xyz, r1.wwww, r0.xyzx
mov o0.w, r1.w
mov o1.w, r1.w
dp3 r0.x, v5.xyzx, v5.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v5.xyzx
movc r0.w, v6.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xy, v2.xyxx, t9.xyzw, s2
add r1.xy, r1.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mad r1.xy, cb0[11].wwww, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.xyz, r0.xyzx, r1.yyyy
dp3 r1.z, v4.xyzx, v4.xyzx
rsq r1.z, r1.z
mul r2.xyz, r1.zzzz, v4.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
dp2 r1.x, r1.xyxx, r1.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.x, r1.x
dp3 r1.y, v3.xyzx, v3.xyzx
rsq r1.y, r1.y
mul r2.xyz, r1.yyyy, v3.xyzx
mul r2.xyz, r0.wwww, r2.xyzx
mad r0.xyz, r2.xyzx, r1.xxxx, r0.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r2.xyzw, t0.zwxy
mad r0.w, r1.y, l(3.000000), l(0.500000)
ftou r0.w, r0.w
and r2.xyzw, r0.wwww, l(2, 1, 2, 1)
movc r2.xyzw, r2.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.w, r2.w, r2.z
movc r2.z, r0.w, l(-0.57735026), l(0.57735026)
dp3 r0.w, r0.xyzx, r2.xyzx
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r3.xyz, r2.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
mul r1.yz, r2.xxzx, l(0.000000, -1.22474492, 1.22474492, 0.000000)
dp2 r2.y, r0.xzxx, r1.yzyy
dp3 r2.x, r0.xyzx, r3.xyzx
mul r0.xy, r0.wwww, r2.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.w, r1.x, l(0.500000)
lt r1.x, l(0.000000), r1.x
movc r0.z, r0.w, l(0.500000), l(0.00146628)
and r0.xyz, r0.xyzx, r1.xxxx
mul o1.xyz, r1.wwww, r0.xyzx
ret 
// Approximately 59 instruction slots used
