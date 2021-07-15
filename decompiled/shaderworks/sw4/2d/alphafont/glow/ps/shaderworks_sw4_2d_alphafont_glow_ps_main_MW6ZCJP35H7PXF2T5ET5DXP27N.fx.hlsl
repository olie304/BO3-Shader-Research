// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:30 2021

SamplerState FontTextutre_Sampler_s : register(s1);
Texture2D<float4> FontTextutre : register(t0);


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

  r0.y = FontTextutre.Sample(FontTextutre_Sampler_s, v2.xy).w;
  r0.x = 1;
  o0.xyzw = v1.xyzw * r0.xxxy;
  return;
}