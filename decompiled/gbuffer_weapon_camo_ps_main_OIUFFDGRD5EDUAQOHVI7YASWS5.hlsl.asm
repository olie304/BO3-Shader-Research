//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.16384
//
//   using 3Dmigoto v1.2.45 on Thu Jul 15 15:31:58 2021
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
//   float baseNormalHeight;            // Offset:  172 Size:     4
//   float2 glossRange;                 // Offset:  176 Size:     8
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
// shaderConstantSetBuffer           texture  struct         r/o             t0      1 
// modelInstanceBuffer               texture  struct         r/o             t4      1 
// resolvedNormal                    texture  float4          2d             t6      1 
// colorMap                          texture  float4          2d             t7      1 
// specColorMap                      texture  float4          2d             t9      1 
// normalMap                         texture  float4          2d            t10      1 
// glossMap                          texture  float4          2d            t11      1 
// aoMap                             texture  float4          2d            t12      1 
// camoMaskMap                       texture  float4          2d            t14      1 
// normalBodyMap                     texture  float4          2d            t15      1 
// glossBodyMap                      texture  float4          2d            t16      1 
// $Globals                          cbuffer      NA          NA            cb0      1 
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xy  
// COLOR                    1   x           1     NONE   float       
// TEXCOORD                 0    yz         1     NONE   float    yz 
// TEXCOORD                 4   x           2     NONE    uint   x   
// TEXCOORD                 1   xyz         3     NONE   float   xyz 
// TEXCOORD                 2   xyz         4     NONE   float   xyz 
// TEXCOORD                 3   xyz         5     NONE   float   xyz 
// TEXCOORD                 7   xyzw        6     NONE   float       
// SV_IsFrontFace           0   x           7    FFACE    uint   x   
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
dcl_input_ps linear v1.yz
dcl_input_ps constant v2.x
dcl_input_ps linear v3.xyz
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_sgv constant v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 8
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(208), t0.xxyz
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t14.xyzw, s1
dp3_sat r0.y, r1.xyzx, r0.yzwy
eq r0.z, r0.y, l(0.000000)
discard_nz r0.z
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.zw, r0.x, l(192), t0.xxxy
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r1.xyzw, r0.x, l(224), t0.xyzw
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r2.xyz, r0.x, l(240), t0.xyzx
mov r3.xy, v1.yzyy
mov r3.z, l(1.000000)
dp3 r1.x, r1.xyzx, r3.xyzx
dp3 r1.y, r2.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t7.xyzw, s1
mul r0.x, r0.y, r2.w
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r1.xyxx, t9.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r4.z, r1.xyxx, t12.yzxw, s4
sample_indexable(texture2d)(float,float,float,float) r0.y, r1.xyxx, t11.yxzw, s2
ftoi r1.z, r1.w
and r1.zw, r1.zzzz, l(0, 0, 8, 2)
if_nz r1.z
  sample_indexable(texture2d)(float,float,float,float) r1.z, v1.yzyy, t16.yzxw, s2
  add r2.w, r0.y, -r1.z
  mad r0.y, r0.w, r2.w, r1.z
endif 
add r0.w, -cb0[11].x, cb0[11].y
mad r0.y, r0.y, r0.w, cb0[11].x
mul_sat r0.y, r0.y, l(0.05882353)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t10.xyzw, s3
add r1.xyz, r1.xyzx, l(-0.500000, -0.500000, -0.000000, 0.000000)
mad r1.xyz, cb0[10].wwww, r1.xyzx, l(0.500000, 0.500000, 0.000000, 0.000000)
mad r5.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
mul r0.w, r1.z, r1.z
mul r0.w, r0.w, l(0.33333334)
min r0.w, r0.w, l(1.000000)
if_nz r1.w
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, v1.yzyy, t15.xyzw, s3
  mad r1.xy, r1.xyxx, l(1.99218750, 1.99218750, 0.000000, 0.000000), l(-1.000000, -1.000000, 0.000000, 0.000000)
  dp2 r1.w, r1.xyxx, r1.xyxx
  add r1.w, -r1.w, l(1.000000)
  max r1.w, r1.w, l(0.000000)
  sqrt r6.z, r1.w
  mul r1.z, r1.z, r1.z
  mul r1.z, r1.z, l(0.33333334)
  min r1.z, r1.z, l(1.000000)
  mad r6.xy, r5.xyxx, r0.zzzz, r1.xyxx
  dp3 r1.x, r6.xyzx, r6.xyzx
  rsq r1.x, r1.x
  mul r5.xyz, r1.xxxx, r6.xyzx
  mad r0.w, r0.w, r0.z, r1.z
else 
  dp2 r0.z, r5.xyxx, r5.xyxx
  add r0.z, -r0.z, l(1.000000)
  max r0.z, r0.z, l(0.000000)
  sqrt r5.z, r0.z
endif 
movc r0.z, v7.x, l(1.000000), l(-1.000000)
dp3 r1.x, v3.xyzx, v3.xyzx
rsq r1.x, r1.x
mul r1.xyz, r1.xxxx, v3.xyzx
mul r1.xyz, r0.zzzz, r1.xyzx
dp3 r1.w, v4.xyzx, v4.xyzx
rsq r1.w, r1.w
mul r6.xyz, r1.wwww, v4.xyzx
mul r6.xyz, r0.zzzz, r6.xyzx
dp3 r1.w, v5.xyzx, v5.xyzx
rsq r1.w, r1.w
mul r7.xyz, r1.wwww, v5.xyzx
mul r7.xyz, r0.zzzz, r7.xyzx
mul r0.y, r0.y, l(-17.000000)
exp r0.y, r0.y
add r0.y, r0.y, r0.w
log r0.y, r0.y
mul_sat r0.y, r0.y, l(-0.05882353)
mul r7.xyz, r5.yyyy, r7.xyzx
mad r5.xyw, r6.xyxz, r5.xxxx, r7.xyxz
mad r1.xyz, r1.xyzx, r5.zzzz, r5.xywx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mul o0.xyz, r0.xxxx, r2.xyzx
ftou r2.xy, v0.xyxx
mov r2.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.zw, r2.xyzw, t6.xyzw
lt r1.w, l(0.000000), r0.z
mad r0.w, r0.w, l(3.000000), l(0.500000)
ftou r0.w, r0.w
and r5.xyzw, r0.wwww, l(2, 1, 2, 1)
movc r5.xyzw, r5.zwxy, l(-0.57735026,-0.57735026,1,1), l(0.57735026,0.57735026,0,0)
xor r0.w, r5.w, r5.z
movc r5.z, r0.w, l(-0.57735026), l(0.57735026)
mul r2.zw, r5.xxxz, l(0.000000, 0.000000, -1.22474492, 1.22474492)
mul r6.xyz, r5.xyzx, l(0.70710677, -1.41421354, 0.70710677, 0.000000)
dp3 r6.x, r1.xyzx, r6.xyzx
dp2 r6.y, r1.xzxx, r2.zwzz
dp3 r0.w, r1.xyzx, r5.xyzx
add r0.w, |r0.w|, l(1.000000)
rsq r0.w, r0.w
mul r1.xy, r0.wwww, r6.xyxx
mad r1.xy, r1.xyxx, l(0.58823532, 0.58823532, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
ge r0.z, r0.z, l(0.500000)
movc r0.z, r0.z, l(0.500000), l(0.00146628)
mad r1.z, r0.y, l(0.49755621), r0.z
and r0.yzw, r1.xxyz, r1.wwww
mul o1.xyz, r0.xxxx, r0.yzwy
add r1.y, -r3.z, r3.x
mad r0.y, r1.y, l(0.500000), r3.z
add r1.z, -r0.y, r3.y
mad r1.x, r1.z, l(0.500000), r0.y
and r0.yz, r2.xxyx, l(0, 1, 1, 0)
ieq r0.y, r0.z, r0.y
movc r0.yz, r0.yyyy, r1.xxyx, r1.xxzx
mad r4.xy, r0.yzyy, l(1.000000, 0.500000, 0.000000, 0.000000), l(0.000000, 0.500000, 0.000000, 0.000000)
mov r4.w, l(1.000000)
mul o2.xyzw, r0.xxxx, r4.xyzw
mov o0.w, r0.x
mov o1.w, r0.x
ret 
// Approximately 118 instruction slots used
