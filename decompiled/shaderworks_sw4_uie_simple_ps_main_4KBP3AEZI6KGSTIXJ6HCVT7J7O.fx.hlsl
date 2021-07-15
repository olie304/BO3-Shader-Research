// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:41 2021

SamplerState codeTexture0_C6_P0_sampler_s : register(s1);
Texture2D<float4> codeTexture0_C6_P0 : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float2 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = codeTexture0_C6_P0.Sample(codeTexture0_C6_P0_sampler_s, v2.xy).xyzw;
  o0.xyzw = v1.xyzw * r0.xyzw;
  return;
}