// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:03 2021

SamplerState bilinearTile_s : register(s1);
Texture2D<float4> controlMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float2 v2 : TEXCOORD0,
  float2 w2 : TEXCOORD6,
  float3 v3 : TEXCOORD1,
  float w3 : TEXCOORD9,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  float3 v6 : OFFPOSITION0,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = controlMap.Sample(bilinearTile_s, v2.xy).xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  return;
}