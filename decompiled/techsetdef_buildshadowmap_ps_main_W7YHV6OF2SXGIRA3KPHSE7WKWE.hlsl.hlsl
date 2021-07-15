// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:05 2021

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
  float2 commonScale : packoffset(c10);
}

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float w1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = commonScale.xy * v1.xy;
  r0.x = colorMap.Sample(colorSampler_s, r0.xy).w;
  r0.x = w1.x * r0.x;
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  return;
}