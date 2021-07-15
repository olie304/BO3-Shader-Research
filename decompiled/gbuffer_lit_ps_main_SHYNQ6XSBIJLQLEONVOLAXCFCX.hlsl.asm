//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:29:30 2021
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
//   float alphaRevealSoftEdge;         // Offset:  160 Size:     4 [unused]
//   float alphaRevealRamp;             // Offset:  164 Size:     4 [unused]
//   float2 revealScale;                // Offset:  168 Size:     8 [unused]
//   float3 colorTint;                  // Offset:  176 Size:    12
//   float3 specColorTint;              // Offset:  192 Size:    12 [unused]
//   float baseNormalHeight;            // Offset:  204 Size:     4
//   float2 glossRange;                 // Offset:  208 Size:     8
//   float3 transColorTint;             // Offset:  224 Size:    12
//   float transNormalHeight;           // Offset:  236 Size:     4
//   float2 transGlossRange;            // Offset:  240 Size:     8
//   float transRevealSoftEdge;         // Offset:  248 Size:     4
//   float transRevealRamp;             // Offset:  252 Size:     4
//   float2 transScale;                 // Offset:  256 Size:     8
//   float scriptReplacement;           // Offset:  264 Size:     4 [unused]
//   float vertPush;                    // Offset:  268 Size:     4 [unused]
//   float scriptPush;                  // Offset:  272 Size:     4 [unused]
//
// }
//
// Resource bind info for shaderConstantSetBuffer
// {
//
//   struct GpuShaderConstantSet
//   {
//       
//       float4 scriptVector0;          // Offset:    0
//       float4 scriptVector1;          // Offset:   16
//       float4 scriptVector2;          // Offset:   32
//       float4 scriptVector3;          // Offset:   48
//       float4 scriptVector4;          // Offset:   64
//       float4 scriptVector5;          // Offset:   80
//       float4 scriptVector6;          // Offset:   96
//       float4 scriptVector7;          // Offset:  112
//       float4 weaponParam0;           // Offset:  128
//       float4 weaponParam1;           // Offset:  144
//       float4 weaponParam2;           // Offset:  160
//       float4 weaponParam3;           // Offset:  176
//       float4 weaponParam4;           // Offset:  192
//       float4 weaponParam5;           // Offset:  208
//       float4 weaponParam6;           // Offset:  224
//       float4 weaponParam7;           // Offset:  240
//       float4 characterParam0;        // Offset:  256
//       float4 characterParam1;        // Offset:  272
//       float4 characterParam2;        // Offset:  288
//       float4 characterParam3;        // Offset:  304
//       float4 characterParam4;        // Offset:  320
//       float4 characterParam5;        // Offset:  336
//       float4 characterParam6;        // Offset:  352
//       float4 characterParam7;        // Offset:  368
//
//   } $Element;                        // Offset:    0 Size:   384
//
// }
//
// Resource bind info for modelInstanceBuffer
// {
//
//   struct ModelInstanceData
//   {
//       
//       uint boneArrayIndex;           // Offset:    0
//       uint shaderConstantSet;        // Offset:    4
//       uint flagsAndPrevFrameIndex;   // Offset:    8
//       uint worldMatrix;              // Offset:   12
//       uint siegeAnimStateOffset;     // Offset:   16
//       uint prevFrameSiegeAnimStateOffset;// Offset:   20
//
//   } $Element;                        // Offset:    0 Size:    24
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
// transitionSampler                 sampler      NA          NA             s5      1 
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// colorMap                          texture  float4          2d             t6      1 
// specColorMap                      texture  float4          2d             t7      1 
// normalMap                         texture  float4          2d             t9      1 
// glossMap                          texture  float4          2d            t10      1 
// aoMap                             texture  float4          2d            t11      1 
// transColorMap                     texture  float4          2d            t12      1 
// transNormalMap                    texture  float4          2d            t14      1 
// transGlossMap                     texture  float4          2d            t15      1 
// transRevealMap                    texture  float4          2d            t16      1 
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
// TEXCOORD                 4   x           2     NONE    uint   x   
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
dcl_constantbuffer CB0[17], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_structured t0, 384
dcl_resource_structured t4, 24
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t12
dcl_resource_texture2d (float,float,float,float) t14
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t16
dcl_input_ps_siv linear noperspective v0.xy, position
dcl_input_ps linear v1.x
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.x
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 8
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(0), t0.xxxx
sample_indexable(texture2d)(float,float,float,float) r0.y, v1.yzyy, t16.yxzw, s5
mad_sat r0.x, r0.x, l(0.998000), l(0.001000)
add r0.z, -r0.x, l(1.000000)
mov_sat r0.w, cb0[15].w
log r0.x, r0.x
mul r0.x, r0.x, r0.w
exp r0.x, r0.x
mov r1.x, -r0.x
log r0.x, r0.z
mul r0.x, r0.x, r0.w
exp r1.y, r0.x
mad_sat r0.xz, cb0[15].zzzz, r1.xxyx, r0.zzzz
add r0.y, -r0.x, r0.y
add r0.x, -r0.x, r0.z
div_sat r0.x, r0.y, r0.x
mul r0.yz, v1.yyzy, cb0[16].xxyx
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, v1.yzyy, t6.xyzw, s1
add r2.xyz, cb0[11].xyzx, l(-1.000000, -1.000000, -1.000000, 0.000000)
mad r2.xyz, r1.wwww, r2.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r1.xyz, r1.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyz, v1.yzyy, t7.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r0.w, v1.yzyy, t11.yzwx, s4
sample_indexable(texture2d)(float,float,float,float) r1.w, v1.yzyy, t10.yzwx, s2
add r2.w, -cb0[13].x, cb0[13].y
mad r1.w, r1.w, r2.w, cb0[13].x
mul_sat r1.w, r1.w, l(0.05882353)
lt r2.w, l(0.000000), r0.x
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.yzyy, t12.xyzw, s5
sample_indexable(texture2d)(float,float,float,float) r4.x, r0.yzyy, t15.xyzw, s5
if_nz r2.w
  add r4.yzw, cb0[14].xxyz, l(0.000000, -1.000000, -1.000000, -1.000000)
  mad r4.yzw, r3.wwww, r4.yyzw, l(0.000000, 1.000000, 1.000000, 1.000000)
  mul r2.w, r3.w, v1.x
  add r3.w, -cb0[15].x, cb0[15].y
  mad r3.w, r4.x, r3.w, cb0[15].x
  mul_sat r3.w, r3.w, l(0.05882353)
  mul r0.x, r0.x, r2.w
  mad r3.xyz, r3.xyzx, r4.yzwy, -r1.xyzx
  mad r1.xyz, r0.xxxx, r3.xyzx, r1.xyzx
  mad r2.w, r3.w, l(2.000000), l(-1.000000)
  mad r2.w, r0.x, r2.w, l(1.000000)
  mul_sat r1.w, r1.w, r2.w
  add r3.xyz, -r2.xyzx, l(0.040000, 0.040000, 0.040000, 0.000000)
  mad r2.xyz, r0.xxxx, r3.xyzx, r2.xyzx
else 
  mov r0.x, l(0)
endif 
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v1.yzyy, t9.xyzw, s3
add r3.xyz, r3.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r3.xyz, cb0[12].wwww, r3.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r3.xy, r3.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
dp2 r2.w, r3.xyxx, r3.xyxx
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r3.w, r2.w
mul r2.w, r3.z, r3.z
mul r2.w, r2.w, l(0.33333334)
min r2.w, r2.w, l(1.000000)
lt r3.z, l(0.000000), r0.x
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r0.yzyy, t14.xyzw, s5
if_nz r3.z
  add r4.xyz, r4.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
  mad r4.xyz, cb0[14].wwww, r4.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
  mad r0.yz, r4.xxyx, l(0.000000, 1.99218750, 1.99218750, 0.000000), l(0.000000, -1.000000, -1.000000, 0.000000)
  mul r3.z, r4.z, r4.z
  mul r3.z, r3.z, l(0.33333334)
  min r3.z, r3.z, l(1.000000)
  mad r3.xy, r0.yzyy, r0.xxxx, r3.xyxx
  dp3 r0.y, r3.xywx, r3.xywx
  rsq r0.y, r0.y
  mul r3.xyw, r0.yyyy, r3.xyxw
  mad r2.w, r3.z, r0.x, r2.w
endif 
movc r0.x, v6.x, l(1.000000), l(-1.000000)
dp3 r0.y, v3.xyzx, v3.xyzx
rsq r0.y, r0.y
mul r4.xyz, r0.yyyy, v3.xyzx
mul r5.xyz, r0.xxxx, r4.xyzx
dp3 r0.y, v4.xyzx, v4.xyzx
rsq r0.y, r0.y
mul r6.xyz, r0.yyyy, v4.xyzx
mul r6.xyz, r0.xxxx, r6.xyzx
dp3 r0.y, v5.xyzx, v5.xyzx
rsq r0.y, r0.y
mul r7.xyz, r0.yyyy, v5.xyzx
mul r7.xyz, r0.xxxx, r7.xyzx
mul r0.y, r1.w, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r2.w
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r7.xyz, r3.yyyy, r7.xyzx
mad r3.xyz, r6.xyzx, r3.xxxx, r7.xyzx
mad r3.xyz, r5.xyzx, r3.wwww, r3.xyzx
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.yzw, r0.zzzz, r3.xxyz
add r0.z, r5.y, r5.x
mad r0.z, r4.z, r0.x, r0.z
mul r0.z, r0.z, l(0.500000)
mad r4.xyz, r4.xyzx, r0.xxxx, -r0.zzzz
max r0.x, r4.z, r4.y
max r0.x, r0.x, r4.x
max r0.x, r0.x, r0.z
eq r0.z, r0.x, r4.x
mul r5.yzw, r3.yyzw, l(0.000000, 1.000000, -1.000000, -1.000000)
add r1.w, r0.x, l(2.000000)
mov r5.x, l(1)
mov r3.x, l(0)
movc r3.xyzw, r0.zzzz, r5.xyzw, r3.xyzw
movc r0.x, r0.z, r1.w, r0.x
eq r0.z, r0.x, r4.y
mul r5.yzw, r3.yyzw, l(0.000000, -1.000000, 1.000000, -1.000000)
add r1.w, r0.x, l(2.000000)
mov r5.x, l(2)
movc r3.xyzw, r0.zzzz, r5.xyzw, r3.xyzw
movc r0.x, r0.z, r1.w, r0.x
eq r0.x, r0.x, r4.z
mul r4.yzw, r3.yyzw, l(0.000000, -1.000000, -1.000000, 1.000000)
mov r4.x, l(3)
movc r3.xyzw, r0.xxxx, r4.xyzw, r3.xyzw
add r0.x, r3.z, r3.y
add r4.z, r3.w, r0.x
add r4.y, -r3.y, r3.w
mad r4.x, -r3.z, l(3.000000), r4.z
mul r3.yzw, r4.xxyz, l(0.000000, 0.40824831, 0.70710677, 0.57735026)
add r0.x, |r3.w|, l(1.000000)
rsq r0.x, r0.x
mul r0.xz, r0.xxxx, r3.yyzy
mad o1.xy, r0.xzxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
mad o1.z, r0.y, l(0.49755621), l(0.00146628)
utof r0.x, r3.x
mul o1.w, r0.x, l(0.33333334)
ftou r0.xy, v0.xyxx
add r3.y, -r2.z, r2.x
mad r0.z, r3.y, l(0.500000), r2.z
add r3.z, -r0.z, r2.y
mad r3.x, r3.z, l(0.500000), r0.z
and r0.xy, r0.xyxx, l(1, 1, 0, 0)
ieq r0.x, r0.y, r0.x
movc r0.xy, r0.xxxx, r3.xyxx, r3.xzxx
mad o2.xy, r0.xyxx, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov o0.xyz, r1.xyzx
mov o0.w, l(1.000000)
mov o2.z, r0.w
mov o2.w, l(0.33333334)
ret 
// Approximately 149 instruction slots used