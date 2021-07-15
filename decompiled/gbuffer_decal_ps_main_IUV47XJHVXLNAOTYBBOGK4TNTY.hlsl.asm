//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:28:03 2021
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
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
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
dcl_constantbuffer CB0[12], immediateIndexed
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
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v2.xy
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 4
sample_indexable(texture2d)(float,float,float,float) r0.x, v2.xyxx, t7.xyzw, s1
add r0.yzw, cb0[10].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
mad r0.xyz, r0.xxxx, r0.yzwy, l(1.000000, 1.000000, 1.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v2.xyxx, t6.xyzw, s1
mul r0.xyz, r0.xyzx, r1.xyzx
mul o0.xyz, r1.wwww, r0.xyzx
mov o0.w, r1.w
mov o1.w, r1.w
dp3 r0.x, v4.xyzx, v4.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v4.xyzx
movc r0.w, v6.x, l(1.000000), l(-1.000000)
mul r0.xyz, r0.wwww, r0.xyzx
dp3 r1.x, v5.xyzx, v5.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v5.xyzx
mul r1.xyz, r0.wwww, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v2.xyxx, t9.xyzw, s3
add r2.xyz, r2.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r2.xyz, cb0[10].wwww, r2.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r2.xy, r2.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r2.z, r2.z, r2.z
mul r2.z, r2.z, l(0.33333334)
min r2.z, r2.z, l(1.000000)
mul r1.xyz, r1.xyzx, r2.yyyy
mad r0.xyz, r0.xyzx, r2.xxxx, r1.xyzx
dp2 r1.x, r2.xyxx, r2.xyxx
add r1.x, -r1.x, l(1.000000)
max r1.x, r1.x, l(0.000000)
sqrt r1.x, r1.x
dp3 r1.y, v3.xyzx, v3.xyzx
rsq r1.y, r1.y
mul r2.xyw, r1.yyyy, v3.xyxz
mul r2.xyw, r0.wwww, r2.xyxw
mad r0.xyz, r2.xywx, r1.xxxx, r0.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r0.w, r0.w
mul r0.xyz, r0.wwww, r0.xyzx
ftou r3.xy, v0.xyxx
mov r3.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r1.xy, r3.xyzw, t0.zwxy
mad r0.w, r1.y, l(3.000000), l(0.500000)
ftou r0.w, r0.w
and r3.xyzw, r0.wwww, l(2, 1, 2, 1)
movc r3.xyzw, r3.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.w, r3.w, r3.z
movc r3.z, r0.w, l(-0.57735026), l(0.57735026)
dp3 r0.w, r0.xyzx, r3.xyzx
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r2.xyw, r3.xyxz, l(0.70710677, -1.41421354, 0.000000, 0.70710677)
mul r1.yz, r3.xxzx, l(0.000000, -1.22474492, 1.22474492, 0.000000)
dp2 r3.y, r0.xzxx, r1.yzyy
dp3 r3.x, r0.xyzx, r2.xywx
mul r0.xy, r0.wwww, r3.xyxx
mad r0.xy, r0.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r0.w, v2.xyxx, t10.yzwx, s2
add r1.y, -cb0[11].x, cb0[11].y
mad r0.w, r0.w, r1.y, cb0[11].x
mul_sat r0.w, r0.w, l(0.05882353)
mul r0.w, r0.w, l(-17.000000)
exp r0.w, r0.w
add r0.w, r0.w, r2.z
log r0.w, r0.w
mul r0.w, r0.w, l(-0.05882353)
max r0.w, r0.w, l(0.000000)
ge r1.y, r1.x, l(0.500000)
lt r1.x, l(0.000000), r1.x
movc r1.y, r1.y, l(0.500000), l(0.00146628)
mad r0.z, r0.w, l(0.49755621), r1.y
and r0.xyz, r0.xyzx, r1.xxxx
mul o1.xyz, r1.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.z, v2.xyxx, t11.yzxw, s4
mov r0.xyw, l(0.040000,0.500000,0,1.000000)
mul o2.xyzw, r1.wwww, r0.xyzw
ret 
// Approximately 76 instruction slots used
