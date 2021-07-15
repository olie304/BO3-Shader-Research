// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:37 2021

cbuffer _Globals : register(b0)
{
  float4 flagParams : packoffset(c0);
  float4 colorObjMin : packoffset(c1);
  float4 colorObjMax : packoffset(c2);
  float colorObjMinBaseBlend : packoffset(c3);
  float colorObjMaxBaseBlend : packoffset(c3.y);
  float2 uvScroll : packoffset(c3.z);
  float4 detailScale : packoffset(c4);
  float4 detailScale1 : packoffset(c5);
  float4 detailScale2 : packoffset(c6);
  float4 detailScale3 : packoffset(c7);
  float4 alphaRevealParms : packoffset(c8);
  float4 colorDetailScale : packoffset(c9);
  float Static_amount : packoffset(c10);
  float Static_Size : packoffset(c10.y);
}

SamplerState Static_Noise_Map_Sampler_s : register(s1);
Texture2D<float4> Static_Noise_Map : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  float4 v3 : TEXCOORD2,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v2.xy / Static_Size;
  r0.xy = v3.zw + r0.xy;
  r0.xyz = Static_Noise_Map.Sample(Static_Noise_Map_Sampler_s, r0.xy).xyz;
  o0.xyz = Static_amount * r0.xyz;
  o0.w = v1.w;
  return;
}