// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:33 2021

SamplerState ColorMap_Sampler_s : register(s1);
SamplerState AddMap_Sampler_s : register(s2);
Texture2D<float4> ColorMap : register(t0);
Texture2D<float4> AddMap : register(t6);


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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = ColorMap.Sample(ColorMap_Sampler_s, v2.xy).w;
  r1.xyz = v1.xyz;
  r1.w = 1;
  r0.xyzw = r1.xyzw * r0.xxxx;
  r1.xyzw = AddMap.Sample(AddMap_Sampler_s, v2.xy).xyzw;
  r0.xyzw = r1.xyzw * float4(1,1,1,0) + r0.xyzw;
  o0.xyzw = v1.wwww * r0.xyzw;
  return;
}