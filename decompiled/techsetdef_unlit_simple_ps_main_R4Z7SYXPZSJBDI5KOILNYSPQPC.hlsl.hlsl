// ---- Created with 3Dmigoto v1.2.45 on Thu Jul 15 15:43:33 2021

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
  float3 colorTint : packoffset(c10);
  float alphaRevealSoftEdge : packoffset(c10.w);
  float alphaRevealRamp : packoffset(c11);
}

SamplerState colorSampler_s : register(s1);
SamplerState revealSampler_s : register(s2);
Texture2D<float4> colorMap : register(t0);
Texture2D<float4> tintMask : register(t6);
Texture2D<float4> revealMap : register(t7);


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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = saturate(v1.w * 0.998000026 + 0.00100000005);
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
  r0.z = revealMap.Sample(revealSampler_s, v2.xy).x;
  r0.z = r0.z + -r0.x;
  r0.x = r0.y + -r0.x;
  o0.w = saturate(r0.z / r0.x);
  r0.xyz = colorMap.Sample(colorSampler_s, v2.xy).xyz;
  r0.xyz = log2(abs(r0.xyz));
  r0.xyz = float3(0.454545468,0.454545468,0.454545468) * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r0.xyz = v1.xyz * r0.xyz;
  r0.w = tintMask.Sample(colorSampler_s, v2.xy).x;
  r1.xyz = float3(-1,-1,-1) + colorTint.xyz;
  r1.xyz = r0.www * r1.xyz + float3(1,1,1);
  o0.xyz = r1.xyz * r0.xyz;
  return;
}