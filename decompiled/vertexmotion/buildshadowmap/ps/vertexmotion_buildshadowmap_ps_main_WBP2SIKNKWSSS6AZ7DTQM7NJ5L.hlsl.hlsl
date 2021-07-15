// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:50 2021

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
  float2 wind1Parms : packoffset(c10);
  float2 wind2Parms : packoffset(c10.z);
  float2 wind3Parms : packoffset(c11);
  float2 vertexColorScale : packoffset(c11.z);
}

SamplerState colorSampler_s : register(s1);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> colorMap00 : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float2 v1 : TEXCOORD0,
  float2 w1 : COLOR0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = colorMap.Sample(colorSampler_s, v1.xy).w;
  r0.x = w1.y * r0.x;
  r0.yz = colorDetailScale.xy * v1.xy;
  r0.y = colorMap00.Sample(colorSampler_s, r0.yz).w;
  r0.z = w1.x * w1.x;
  r0.y = r0.y * r0.x + -r0.x;
  r0.x = r0.z * r0.y + r0.x;
  r0.x = cmp(r0.x < 0.5);
  if (r0.x != 0) discard;
  return;
}