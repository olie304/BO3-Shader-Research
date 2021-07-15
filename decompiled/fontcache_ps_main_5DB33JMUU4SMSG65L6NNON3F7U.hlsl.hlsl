// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:26:01 2021

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
  float1 shadowDistance : packoffset(c10);
}

SamplerState fontSampler_s : register(s1);
Texture2D<float4> fontCacheSampler : register(t0);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : COLOR0,
  float2 v2 : TEXCOORD0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0 < shadowDistance);
  if (r0.x != 0) {
    r0.x = ddx_coarse(v2.x);
    r0.x = -r0.x * shadowDistance + v2.x;
    r0.z = ddy_coarse(v2.y);
    r0.y = -r0.z * shadowDistance + v2.y;
    r0.x = fontCacheSampler.Sample(fontSampler_s, r0.xy).w;
  } else {
    r0.x = 0;
  }
  r0.y = fontCacheSampler.Sample(fontSampler_s, v2.xy).w;
  r0.z = 1 + -r0.y;
  r0.x = r0.x * r0.z + r0.y;
  r0.yzw = v1.xyz * r0.yyy;
  o0.xyz = r0.yzw / r0.xxx;
  o0.w = v1.w * r0.x;
  return;
}