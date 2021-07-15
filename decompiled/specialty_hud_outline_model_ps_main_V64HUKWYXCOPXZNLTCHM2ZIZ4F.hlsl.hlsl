// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:41:21 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float3 specColorTint : packoffset(c10);
  float baseNormalHeight : packoffset(c10.w);
  float2 glossRange : packoffset(c11);
  float4 Tint : packoffset(c12);
}

StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  nointerpolation uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  uint v7 : SV_IsFrontFace0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v2.x, l(4), t4.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.yzw, r0.x, l(80), t0.xxyz
r0.y = shaderConstantSetBuffer[]..swiz;
r0.z = shaderConstantSetBuffer[]..swiz;
r0.w = shaderConstantSetBuffer[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(112), t0.xxxx
r0.x = shaderConstantSetBuffer[]..swiz;
  r0.x = saturate(1 + -r0.x);
  r1.xyz = float3(0.0549999997,0.0549999997,0.0549999997) + r0.yzw;
  r1.xyz = float3(0.947867334,0.947867334,0.947867334) * r1.xyz;
  r1.xyz = log2(r1.xyz);
  r1.xyz = float3(2.4000001,2.4000001,2.4000001) * r1.xyz;
  r1.xyz = exp2(r1.xyz);
  r2.xyz = cmp(float3(0.0404499993,0.0404499993,0.0404499993) >= r0.yzw);
  r0.yzw = float3(0.0773993805,0.0773993805,0.0773993805) * r0.yzw;
  r0.yzw = r2.xyz ? r0.yzw : r1.xyz;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = Tint.w * r0.x;
  return;
}