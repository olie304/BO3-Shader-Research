// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:42 2021

SamplerState PointSampler_s : register(s1);
Texture2D<float4> GBufferDiffuseColor : register(t0);
Texture2D<float4> diffuseLighting : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = diffuseLighting.Sample(PointSampler_s, v1.xy).xyz;
  r1.xyz = GBufferDiffuseColor.Sample(PointSampler_s, v1.xy).xyz;
  o0.xyz = r1.xyz * r0.xyz;
  o0.w = 1;
  return;
}