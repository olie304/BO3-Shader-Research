// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:15 2021

SamplerState samp0_s : register(s0);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(26,15) * v1.xy;
  r0.xy = frac(r0.xy);
  r0.xy = v1.xy * float2(26,15) + -r0.xy;
  r0.xy = float2(0.0384615399,0.0666666701) * r0.xy;
  o0.xyzw = colorMapSampler.Sample(samp0_s, r0.xy).xyzw;
  return;
}