// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:39 2021

SamplerState flowSampler_s : register(s1);
Texture2D<float4> flowMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  uint4 v2 : TEXCOORD4,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_TARGET0)
{
  o0.xyzw = flowMap.Sample(flowSampler_s, w1.xy).xyzw;
  return;
}