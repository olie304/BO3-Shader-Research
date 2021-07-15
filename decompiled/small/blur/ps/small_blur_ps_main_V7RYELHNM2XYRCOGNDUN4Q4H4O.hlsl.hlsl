// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:48 2021

SamplerState samp0_s : register(s0);
Texture2D<float4> colorMapSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = colorMapSampler.Sample(samp0_s, v1.xz).xyzw;
  r1.xyzw = colorMapSampler.Sample(samp0_s, v1.yz).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = colorMapSampler.Sample(samp0_s, v1.xw).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyzw = colorMapSampler.Sample(samp0_s, v1.yw).xyzw;
  r0.xyzw = r1.xyzw + r0.xyzw;
  o0.xyzw = float4(0.25,0.25,0.25,0.25) * r0.xyzw;
  return;
}