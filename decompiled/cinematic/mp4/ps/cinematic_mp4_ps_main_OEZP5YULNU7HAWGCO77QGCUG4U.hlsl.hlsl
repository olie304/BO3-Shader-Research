// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:22:47 2021

SamplerState ySampler_s : register(s1);
SamplerState cbcrSampler_s : register(s2);
Texture2D<float4> yTexture : register(t0);
Texture2D<float4> cbcrTexture : register(t6);


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

  o0.w = 1;
  r0.x = yTexture.Sample(ySampler_s, v1.xy).x;
  r0.x = -0.0625 + r0.x;
  r1.xy = cbcrTexture.Sample(cbcrSampler_s, v1.xy).xy;
  r0.yz = float2(-0.5,-0.5) + r1.xy;
  o0.x = dot(float2(1.16439998,1.79270005), r0.xz);
  o0.y = dot(float3(1.16439998,-0.213300005,-0.532899976), r0.xyz);
  o0.z = dot(float2(1.16439998,2.11240005), r0.xy);
  return;
}