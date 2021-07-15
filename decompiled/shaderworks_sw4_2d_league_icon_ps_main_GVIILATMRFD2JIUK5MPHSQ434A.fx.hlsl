// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:38 2021

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
  float4 BackgroundColor : packoffset(c10);
  float4 OuterGlowColor : packoffset(c11);
}

SamplerState ColorMap_Sampler_s : register(s1);
SamplerState BackgroundGlow_Sampler_s : register(s2);
SamplerState AddMap_Sampler_s : register(s3);
Texture2D<float4> ColorMap : register(t0);
Texture2D<float4> BackgroundGlow : register(t6);
Texture2D<float4> AddMap : register(t7);


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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = BackgroundGlow.Sample(BackgroundGlow_Sampler_s, v2.xy).w;
  r0.w = BackgroundColor.w * r0.x;
  r1.xyzw = ColorMap.Sample(ColorMap_Sampler_s, v2.xy).xyzw;
  r0.xyz = BackgroundColor.xyz;
  r2.xyzw = r1.xyzw + -r0.xyzw;
  r0.xyzw = r1.wwww * r2.xyzw + r0.xyzw;
  r1.xy = float2(-0.5,-0.5) + v2.xy;
  r1.xy = r1.xy * float2(2,1) + float2(0.5,0.5);
  r1.x = AddMap.Sample(AddMap_Sampler_s, r1.xy).w;
  r1.x = OuterGlowColor.w * r1.x;
  r2.xyz = OuterGlowColor.xyz * r1.xxx + r0.xyz;
  r2.w = max(r1.x, r0.w);
  o0.xyzw = v1.xyzw * r2.xyzw;
  return;
}