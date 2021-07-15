// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:27:24 2021

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
  float alphaRevealSoftEdge : packoffset(c10);
  float alphaRevealRamp : packoffset(c10.y);
  float2 revealScale : packoffset(c10.z);
  float3 colorTint : packoffset(c11);
  float3 specColorTint : packoffset(c12);
  float baseNormalHeight : packoffset(c12.w);
  float2 glossRange : packoffset(c13);
}

SamplerState revealSampler_s : register(s1);
SamplerState colorSampler_s : register(s2);
Texture2D<float4> revealMap : register(t0);
Texture2D<float4> colorMap : register(t6);
Texture2D<float4> tintMask : register(t7);


// 3Dmigoto declarations
#define cmp -
Texture1D<float4> IniParams : register(t120);
Texture2D<float4> StereoParams : register(t125);


void main( 
  float4 v0 : SV_POSITION0,
  float3 v1 : COLOR0,
  float w1 : COLOR1,
  float4 v2 : TEXCOORD0,
  float4 v3 : TEXCOORD1,
  float4 v4 : TEXCOORD2,
  float3 v5 : TEXCOORD3,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(w1.x * 0.998000026 + 0.00100000005);
  r0.y = log2(r0.x);
  r0.x = 1 + -r0.x;
  r0.z = saturate(alphaRevealRamp);
  r0.y = r0.z * r0.y;
  r0.y = exp2(r0.y);
  r1.x = -r0.y;
  r0.y = log2(r0.x);
  r0.y = r0.z * r0.y;
  r1.y = exp2(r0.y);
  r0.xy = saturate(alphaRevealSoftEdge * r1.xy + r0.xx);
  r0.zw = revealScale.xy * v2.xy;
  r0.z = revealMap.Sample(revealSampler_s, r0.zw).x;
  r0.z = r0.z + -r0.x;
  r0.x = r0.y + -r0.x;
  r0.x = saturate(r0.z / r0.x);
  r0.y = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r0.yzw = r0.yyy * r1.xyz + float3(1,1,1);
  r1.xyz = colorMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = v1.xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}