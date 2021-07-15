// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:39:57 2021

SamplerState samp0_s : register(s0);
Texture3D<float4> lut3D : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float3 v0 : TEXCOORD0,
  float4 v1 : SV_POSITION0,
  out float3 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = lut3D.Sample(samp0_s, v0.xyz).xyz;
  o0.xyz = r0.xyz;
  return;
}