// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:21 2021

SamplerState pointClamp_s : register(s1);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float oDepth : SV_DEPTH)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = colorMapSampler.Sample(pointClamp_s, v1.xy).x;
  oDepth = r0.x;
  return;
}