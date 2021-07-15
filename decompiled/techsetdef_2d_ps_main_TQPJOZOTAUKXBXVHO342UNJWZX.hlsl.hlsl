// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:03 2021

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMapSampler.Sample(colorSampler_s, v2.xy).xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}