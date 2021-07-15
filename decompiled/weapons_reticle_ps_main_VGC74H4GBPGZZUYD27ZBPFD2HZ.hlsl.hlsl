// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:27 2021

SamplerState Color_Map_Sampler_s : register(s1);
StructuredBuffer<shaderConstantSetBuffer> shaderConstantSetBuffer : register(t0);
StructuredBuffer<modelInstanceBuffer> modelInstanceBuffer : register(t4);
Texture2D<float4> Color_Map : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : TEXCOORD0,
  nointerpolation uint v1 : TEXCOORD1,
  float4 v2 : SV_POSITION0,
  out float4 o0 : SV_TARGET0)
{
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t0, 384
// Needs manual fix for instruction: 
// unknown dcl_: dcl_resource_structured t4, 24
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=24)(mixed,mixed,mixed,mixed) r0.x, v1.x, l(4), t4.xxxx
r0.x = Color_Map_Sampler[]..swiz;
// Known bad code for instruction (needs manual fix):
ld_structured_indexable(structured_buffer, stride=384)(mixed,mixed,mixed,mixed) r0.x, r0.x, l(140), t0.xxxx
r0.x = Color_Map_Sampler[]..swiz;
  r0.x = saturate(r0.x + r0.x);
  r0.yzw = Color_Map.Sample(Color_Map_Sampler_s, v0.xy).xyz;
  r0.xyz = r0.yzw * r0.xxx;
  o0.xyz = float3(32768,32768,32768) * r0.xyz;
  o0.w = 1;
  return;
}