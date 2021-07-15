// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:44:09 2021

SamplerState bilinearTile_s : register(s1);
Texture2D<float4> controlMap : register(t0);


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
  float3 v5 : OFFPOSITION0,
  float2 v6 : TEXCOORD6,
  float w6 : TEXCOORD9,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD10,
  float4 v10 : TEXCOORD11,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = controlMap.Sample(bilinearTile_s, w1.xy).xyz;
  o0.xyz = r0.xyz;
  o0.w = 1;
  return;
}