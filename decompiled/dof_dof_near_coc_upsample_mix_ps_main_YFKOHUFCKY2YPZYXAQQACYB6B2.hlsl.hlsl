// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:24:28 2021

SamplerState bilinearClamp_s : register(s0);
Texture2D<float4> codeTexture0 : register(t0);
Texture2D<float4> codeTexture1 : register(t1);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  out float o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = codeTexture1.Sample(bilinearClamp_s, v1.xy).x;
  r0.y = codeTexture0.Sample(bilinearClamp_s, v1.xy).x;
  r0.x = max(r0.x, r0.y);
  o0.x = saturate(r0.x * 2 + -r0.y);
  return;
}