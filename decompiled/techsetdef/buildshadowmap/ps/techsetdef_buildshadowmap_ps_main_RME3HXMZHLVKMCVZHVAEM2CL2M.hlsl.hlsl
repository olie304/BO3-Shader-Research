// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:05 2021

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = colorMap.Sample(colorSampler_s, v1.xy).w;
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  return;
}