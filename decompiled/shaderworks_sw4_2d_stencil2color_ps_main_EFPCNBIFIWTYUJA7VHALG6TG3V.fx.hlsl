// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:40 2021

SamplerState postEffect0_C3_P0_sampler_s : register(s1);
Texture2D<float4> postEffect0_C3_P0 : register(t0);


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

  r0.x = postEffect0_C3_P0.Sample(postEffect0_C3_P0_sampler_s, v1.xy).z;
  r0.y = -0.0607843138 + r0.x;
  r1.x = saturate(1000 * r0.y);
  r0.x = -r1.x * 0.0607843138 + r0.x;
  r0.y = -0.0294117648 + r0.x;
  r1.y = saturate(1000 * r0.y);
  r0.x = -r1.y * 0.0294117648 + r0.x;
  r0.y = -0.0137254903 + r0.x;
  r1.z = saturate(1000 * r0.y);
  o0.xyz = r1.xyz;
  r0.x = -r1.z * 0.0137254903 + r0.x;
  r0.x = -0.00588235306 + r0.x;
  o0.w = saturate(1000 * r0.x);
  return;
}