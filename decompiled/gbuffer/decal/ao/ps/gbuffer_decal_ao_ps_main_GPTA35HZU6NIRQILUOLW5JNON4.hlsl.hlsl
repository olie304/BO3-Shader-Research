// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:19 2021

SamplerState aoSampler_s : register(s1);
Texture2D<float4> aoMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float v1 : COLOR1,
  float2 w1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  float3 v4 : TEXCOORD3,
  out float4 o2 : SV_TARGET2)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = aoMap.Sample(aoSampler_s, w1.xy).x;
  r0.xyw = float3(0,0.5,1);
  o2.xyzw = v1.xxxx * r0.xyzw;
  return;
}