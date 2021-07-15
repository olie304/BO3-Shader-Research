// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:21 2021

SamplerState bilinearClamp_s : register(s1);
Texture2D<float4> blurTextureMips : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  o0.xyzw = blurTextureMips.Sample(bilinearClamp_s, v1.xy).xyzw;
  return;
}