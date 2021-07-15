// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:36 2021

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
  float Grain_Amount : packoffset(c10);
  float4 Grain_Color : packoffset(c11);
  float4 Overlay_Color : packoffset(c12);
}

SamplerState Overlay_Map_Sampler_s : register(s1);
SamplerState Grain_Map_Sampler_s : register(s2);
Texture2D<float4> Overlay_Map : register(t0);
Texture2D<float4> Grain_Map : register(t6);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float4 v1 : TEXCOORD0,
  float4 v2 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = Grain_Amount * v2.zw + v1.xy;
  r0.xyzw = Grain_Map.Sample(Grain_Map_Sampler_s, r0.xy).xyzw;
  r1.xyzw = Grain_Color.xyzw * r0.xyzw;
  r0.x = -Grain_Color.w * r0.w + 1;
  r0.yzw = r1.xyz * r1.www;
  r1.xyzw = Overlay_Map.Sample(Overlay_Map_Sampler_s, v1.xy).xyzw;
  r1.xyz = r1.xyz * Overlay_Color.xyz + -r0.yzw;
  r2.x = Overlay_Color.w * r1.w;
  r1.w = -r1.w * Overlay_Color.w + 1;
  o0.w = r1.w * r0.x;
  o0.xyz = r2.xxx * r1.xyz + r0.yzw;
  return;
}