// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:40:33 2021

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
  float BloodIntensity : packoffset(c10);
  float BloodBrightness : packoffset(c10.y);
}

SamplerState Reveal_Map_Sampler_s : register(s1);
SamplerState Diffuse_Map_Sampler_s : register(s2);
Texture2D<float4> Reveal_Map : register(t0);
Texture2D<float4> Diffuse_Map : register(t6);


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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = Reveal_Map.Sample(Reveal_Map_Sampler_s, v2.xy).x;
  r0.x = BloodIntensity * r0.x;
  r0.x = saturate(BloodBrightness * v1.w + -r0.x);
  r1.xyzw = Diffuse_Map.Sample(Diffuse_Map_Sampler_s, v2.xy).xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = float4(8,8,8,1) * r0.xyzw;
  return;
}