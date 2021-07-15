// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:42 2021

SamplerState samp0_s : register(s0);
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

  r0.xyz = colorMapSampler.Sample(samp0_s, v2.xy).xyz;
  r0.xyz = v1.www * r0.xyz;
  o0.xyz = v1.xyz * float3(32768,32768,32768) + r0.xyz;
  o0.w = 1;
  return;
}